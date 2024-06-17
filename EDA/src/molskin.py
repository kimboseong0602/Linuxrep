import json
import datetime
import urllib.request
import pandas as pd

def gen_search_url(api_node, search_text, start_num, disp_num):
    base = "https://openapi.naver.com/v1/search"
    node = "/" + api_node + ".json"
    param_query = "?query=" + urllib.parse.quote(search_text)
    param_start = "&start=" + str(start_num)
    param_disp = "&display=" + str(disp_num)

    return base + node + param_query + param_start + param_disp

def get_result_onpage(url, client_id, client_secret):
    request = urllib.request.Request(url)
    request.add_header("X-Naver-Client-Id", client_id)
    request.add_header("X-Naver-Client-Secret", client_secret)

    response = urllib.request.urlopen(request)

    print("[%s] Url Request Success" %datetime.datetime.now())

    return json.loads(response.read().decode('utf-8'))

def get_fields(json_data):
    title = [delete_tag(each['title']) for each in json_data['items']]
    link = [each['link'] for each in json_data['items']]
    lprice = [each['lprice'] for each in json_data['items']]
    hprice = [each['hprice'] for each in json_data['items']]
    mall_Name = [each['mallName'] for each in json_data['items']]

    result_pd = pd.DataFrame({'title' : title, 'lprice' : lprice,\
                          'hprice' : hprice, 'link': link, \
                            'mall' : mall_Name},\
                         columns= ['title', 'lprice', 'hprice', \
                                'link', 'mall'])
    
    return result_pd

def delete_tag(input_str):
    input_str = input_str.replace("<b>", "")
    input_str = input_str.replace("</b>", "")

    return input_str

client_id = "LPQlri4iul5RmfzUELvv"
client_secret = "fk2nbpUsxC"
url = gen_search_url('shop', '몰스킨', 1, 2)
one_result = get_result_onpage(url, client_id, client_secret)

#print(one_result)
#print(one_result['items'][0]['link'])
#print(one_result['items'][0]['lprice'])
#print(one_result['items'][0]['mallName'])

#print(get_fields(one_result))

json_result = get_result_onpage(url, client_id, client_secret)
pd_result = get_fields(json_result)

pd_result

result_mol=[]

for n in range(1, 1000, 100):
    url = gen_search_url('shop', "몰스킨", n, 100)
    json_result = get_result_onpage(url, client_id, client_secret)
    pd_result = get_fields(json_result)

    result_mol.append(pd_result)

result_mol = pd.concat(result_mol )
