CREATE TABLE refueling
(
  ID int,
  이름 varchar(16),
  주유소 varchar(16),
  주유일 date,
  금액 int
);

퀴즈 데이터 생성
INSERT INTO refueling VALUES (1, '유재석', '뉴서울(강남)', '2021-10-01', 50000);
INSERT INTO refueling VALUES (2, '이미주', '뉴서울(강남)', '2021-10-01', 120000);
INSERT INTO refueling VALUES (3, '이효리', '제주주유소', '2021-10-03', 80000);
INSERT INTO refueling VALUES (4, '아이유', '타이거주유소', '2021-10-03', 80000);
INSERT INTO refueling VALUES (5, '유재석', '뉴서울(강남)', '2021-10-03', 60000);
INSERT INTO refueling VALUES (6, '강동원', '타이거주유소', '2021-10-10', 50000);
INSERT INTO refueling VALUES (7, '유재석', '쌍문주유소', '2021-10-10', 60000);
INSERT INTO refueling VALUES (8, '이미주', '타이거주유소', '2021-10-10', 50000);
INSERT INTO refueling VALUES (9, '아이유', '뉴서울(강남)', '2021-10-14', 150000);
INSERT INTO refueling VALUES (10, '아이유', '뉴서울(강남)', '2021-10-14', 120000);
INSERT INTO refueling VALUES (11, '유재석', '쌍문주유소', '2021-10-14', 80000);
INSERT INTO refueling VALUES (12, '유재석', '뉴서울(강남)', '2021-10-16', 110000);
INSERT INTO refueling VALUES (13, '이미주', '타이거주유소', '2021-10-16', 50000);
INSERT INTO refueling VALUES (14, '이효리', '제주주유소', '2021-10-20', 80000);
INSERT INTO refueling VALUES (15, '이상순', '제주주유소', '2021-10-20', 50000);
INSERT INTO refueling VALUES (16, '이상순', '타이거주유소', '2021-10-20', 140000);

CREATE TABLE oil_price 


( 


    ID int, 


    상호 varchar(16), 


    주소 varchar(255), 


    가격 int, 


    셀프 char, 


    상표 varchar(16), 


    구 varchar(8) 


);

INSERT INTO oil_price VALUES 

(1, '타이거주유소', '서울 은평구 수색로 188(중산동)', 1484, 'N', 'SK에너지', '은평구'), 

(2, '(주)명연에너지', '서울 은평구 수색로 236(수색동)', 1485, 'Y', '현대오일뱅크', '은평구'), 

(3, '성락주유소', '서울 영등포구 가마산로 414(신길동)', 1498, 'Y', 'S-OIL', '영등포구'), 

(4, '(주)MS주유소', '서울특별시 영등포구 대림로 230(대림동)', 1498, 'N', '현대오일뱅크', '영등포구'), 

(5, '쌍문주유소', '서울특별시 도봉구 도봉로 547(쌍문동)', 1509, 'Y', 'S-OIL', '도봉구'), 

(6, '21세기주유소', '서울 동작구 시흥대로 616(신대방동)', 1598, 'Y', 'SK에너지', '동작구'), 

(7, '살피재주유소', '서울 동작구 상도로 334(상도동)', 1635, 'N', 'SK에너지', '동작구'), 

(8, '뉴서울(강남)', '서울 강남구 언주로 716(논현동)', 2160, 'N', 'SK에너지', '강남구'), 

(9, '신길주유소', '서울특별시 영등포구 신길로 74(신길동)', 1498, 'Y', 'GS칼텍스', '영등포구');