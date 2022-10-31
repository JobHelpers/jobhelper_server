INSERT INTO public.cities (id, name) VALUES (1, 'Львів');
INSERT INTO public.cities (id, name) VALUES (2, 'Київ');


--
-- TOC entry 3401 (class 0 OID 16808)
-- Dependencies: 224
-- Data for Name: coefficients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (2, 0.35, 130, 1, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (3, 0.4, 145, 14, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (4, 0.25, 130, 3, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (5, 0.25, 130, 6, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (6, 0.25, 130, 18, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (7, 0.25, 130, 19, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (8, 0.25, 130, 21, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (9, 0.25, 130, 22, 826173);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (10, 0.2, 100, 29, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (11, 0.2, 115, 14, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (12, 0.6, 124, 999, 810096);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (13, 0.35, 100, 1, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (14, 0.4, 115, 14, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (15, 0.25, 100, 3, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (16, 0.25, 100, 6, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (17, 0.25, 100, 18, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (18, 0.25, 100, 19, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (19, 0.25, 100, 21, 833553);
INSERT INTO public.coefficients (id, coefficient, min_grade, subject_id, faculty_id) VALUES (20, 0.25, 100, 22, 833553);


--
-- TOC entry 3388 (class 0 OID 16711)
-- Dependencies: 211
-- Data for Name: collaborators; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.collaborators (id, name, email, role) VALUES (1, 'Stanislav Denysenko', 'lohopusik67@gmail.com', 'Frontend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (2, 'Vitaliy Sevastyanov', 'vetal.sevastyanov@gmail.com', 'Frontend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (3, 'Nazar Bylen', 'nazar.bylen.ir.2021@lpnu.ua', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (4, 'Orest Borshovskiy', 'oborshovskiy@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (5, 'Ihor Patko', 'patkoihor2004@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (6, 'Maksym Morochenets', 'maksmorroo@gmail.com', 'Backend dev');
INSERT INTO public.collaborators (id, name, email, role) VALUES (7, 'Ihor Byra', 'ihorbyra@gmail.com', 'Mentor');


--
-- TOC entry 3390 (class 0 OID 16715)
-- Dependencies: 213
-- Data for Name: faculties; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (826173, 'Інститут комп''ютерних технологій, автоматики та метрології', 97, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (826494, 'Факультет міжнародних економічних відносин та інформаційних технологій', 16, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833553, 'Інститут комп''ютерних технологій, автоматики та метрології', 97, '125', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (834453, 'Інститут комп''ютерних наук та інформаційних технологій', 97, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (835497, 'Факультет прикладної математики та інформатики', 282, '125', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (842107, 'Факультет прикладної математики та інформатики', 282, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (842578, 'Факультет електроніки та комп`ютерних технологій', 282, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855074, 'Інститут деревообробних та комп''ютерних технологій і дизайну', 160, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856008, 'Факультет видавничо-поліграфічних та інформаційних технологій', 167, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (860317, 'Факультет прикладних наук', 244, '122', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (869029, 'Філософський факультет', 282, '033', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (810096, 'Інститут архітектури та дизайну', 97, '022', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855732, 'Інститут економіки і менеджменту', 97, '075', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833097, '
Інститут права, психології та інноваційної освіти', 97, '061', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856581, 'Інститут економіки і менеджменту', 97, '051', '', '');
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856624, 'Інститут економіки і менеджменту', 97, '073', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (827395, 'Інститут права, психології та інноваційної освіти', 97, '053', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (877889, '
Інститут гуманітарних та соціальних наук', 97, '054', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (838766, 'Інститут геодезії', 97, '103', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (855964, 'Інститут комп''ютерних наук та інформаційних технологій', 97, '124', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (836893, 'Інститут телекомунікацій, радіоелектроніки та електронної техніки', 97, '171', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (853127, '
Інститут хімії та хімічних технологій', 97, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856872, 'Інститут будівництва та інженерних систем', 97, '192', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (833638, 'Інститут гуманітарних та соціальних наук', 97, '291', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851657, 'Інститут прикладної математики та фундаментальних наук', 97, '291', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (856873, 'Інститут механічної інженерії та транспорту', 97, '274', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (828804, 'Інститут сталого розвитку імені В`ячеслава', 97, '242', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (883189, 'Інститут прикладної математики та фундаментальних наук', 97, '113', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (857860, 'Інститут права, психології та інноваційної освіти', 97, '081', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (861629, 'Інститут адміністрування та післядипломної освіти', 97, '281', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851933, 'Економічний факультет', 282, '073', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851995, 'Факультет міжнародних відносин', 282, '292', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (839187, 'Географічний факультет', 282, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (853825, 'Філософський факультет', 282, '053', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (924217, '
Факультет електроніки та комп`ютерних технологій', 282, '171', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (857382, 'Факультет педагогічної освіти', 282, '231', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (828645, 'Факультет прикладної математики та інформатики', 282, '113', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (852793, '
Історичний факультет', 282, '032', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (861425, '
Факультет міжнародних економічних відносин та інформаційних технологій', 16, '292', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (892873, 'Факультет товарознавства, управління та сфери обслуговування', 16, '181', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (849976, 'Навчально-науковий інститут журналістики', 41, '061', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (846210, '
Історичний факультет', 41, '032', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851759, 'Географічний факультет', 41, '242', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (839896, 'Навчально-науковий інститут міжнародних відносин', 41, '293', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (816072, 'Навчально-науковий інститут філології', 41, '035', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (851193, 'Навчально-науковий інститут права', 41, '081', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (864837, 'Філософський факультет', 41, '033', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (814348, 'Навчально-науковий інститут філології', 41, '014', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (815450, 'Філософський факультет', 41, '031', NULL, NULL);
INSERT INTO public.faculties (id, name, university_id, speciality_code, short_description, url) VALUES (862064, 'Факультет психології', 41, '231', NULL, NULL);


--
-- TOC entry 3403 (class 0 OID 24610)
-- Dependencies: 226
-- Data for Name: max_min_grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (1, 2021, 826173, '122', 193.443, 151.062);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (2, 2021, 810096, '022', 180.234, 136.68);
INSERT INTO public.max_min_grades (id, year, faculty_id, speciality_code, max_min_budget, max_min_contract) VALUES (9, 2021, 833553, '125', 185.283, 123.063);


--
-- TOC entry 3392 (class 0 OID 16721)
-- Dependencies: 215
-- Data for Name: specialities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.specialities (id, code, name, parent) VALUES (1, '011', 'Освітні, педагогічні науки', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (2, '014', 'Середня освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (3, '014.01', 'Українська мова і література', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (4, '014.021', 'Англійська мова і література', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (5, '014.022', 'Німецька мова і література', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (6, '014.025', 'Російська мова і література', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (7, '014.028', 'Польська мова і література', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (8, '014.03', 'Історія', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (9, '014.04', 'Математика', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (10, '014.05', 'Біологія та здоров''я людини', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (11, '014.06', 'Хімія', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (12, '014.07', 'Географія', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (13, '014.08', 'Фізика', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (14, '014.09', 'Інформатика', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (15, '014.10', 'Трудове навчання та технології', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (16, '014.11', 'Фізична культура', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (17, '014.12', 'Образотворче мистецтво', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (18, '014.13', 'Музичне мистецтво', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (19, '014.15', 'Природничі науки', 2);
INSERT INTO public.specialities (id, code, name, parent) VALUES (20, '012', 'Дошкільна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (21, '013', 'Початкова освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (22, '015', 'Професійна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (23, '015.31', 'Будівництво та зварювання', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (24, '015.34', 'Машинобудування', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (25, '015.36', 'Технологія виробів легкої промисловості', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (26, '015.37', 'Аграрне виробництво, переробка сільськогосподарської продукції та харчові технології', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (27, '015.38', 'Транспорт', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (28, '015.39', 'Цифрові технології', 22);
INSERT INTO public.specialities (id, code, name, parent) VALUES (29, '016', 'Спеціальна освіта', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (30, '016.01', 'Логопедія', 29);
INSERT INTO public.specialities (id, code, name, parent) VALUES (31, '016.02', 'Олігофренопедагогіка', 29);
INSERT INTO public.specialities (id, code, name, parent) VALUES (32, '017', 'Фізична культура і спорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (33, '021', 'Аудіовізуальне мистецтво та виробництво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (34, '022', 'Дизайн', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (35, '022.01', 'Графічний дизайн', 34);
INSERT INTO public.specialities (id, code, name, parent) VALUES (36, '022.02', 'Дизайн одягу (взуття)', 34);
INSERT INTO public.specialities (id, code, name, parent) VALUES (37, '022.03', 'Дизайн середовища', 34);
INSERT INTO public.specialities (id, code, name, parent) VALUES (38, '022.04', 'Промисловий дизайн', 34);
INSERT INTO public.specialities (id, code, name, parent) VALUES (39, '022.05', 'Перукарське мистецтво та декоративна косметика', 34);
INSERT INTO public.specialities (id, code, name, parent) VALUES (40, '023', 'Образотворче мистецтво, декоративне мистецтво, реставрація', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (41, '024', 'Хореографія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (42, '025', 'Музичне мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (43, '026', 'Сценічне мистецтво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (44, '027', 'Музеєзнавство, пам''яткознавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (45, '028', 'Менеджмент соціокультурної діяльності', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (46, '029', 'Інформаційна, бібліотечна та архівна справа', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (47, '031', 'Релігієзнавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (48, '032', 'Історія та археологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (49, '033', 'Філософія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (50, '034', 'Культурологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (51, '035', 'Філологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (52, '035.01', 'Українська мова та література', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (53, '035.032', 'Слов''янські мови та літератури(переклад включно), перша-болгарська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (54, '035.033', 'Слов''янські мови та літератури(переклад включно), перша-польська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (55, '035.034', 'Слов''янські мови та літератури(переклад включно), перша-російська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (56, '035.037', 'Слов''янські мови та літератури(переклад включно), перша-хорватська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (57, '035.038', 'Слов''янські мови та літератури(переклад включно), перша-чеська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (58, '035.041', 'Германські мови та літератури(переклад включно), перша-англійська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (59, '035.043', 'Германські мови та літератури(переклад включно), перша-німецька', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (60, '035.051', 'Романські мови та літератури(переклад включно), перша-іспанська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (61, '035.055', 'Романські мови та літератури(переклад включно), перша-французька', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (62, '035.060', 'Східні мови та літератури(переклад включно), перша-арабська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (63, '035.065', 'Східні мови та літератури(переклад включно), перша-китайська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (64, '035.067', 'Східні мови та літератури(переклад включно), перша-перська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (65, '035.069', 'Східні мови та літератури(переклад включно), перша-японська', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (66, '035.08', 'Класичні мови та літератури(переклад включно)', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (67, '035.09', 'Фольклористика', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (68, '035.10', 'Прикладна лінгвістика', 51);
INSERT INTO public.specialities (id, code, name, parent) VALUES (69, '041', 'Богослов''я', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (70, '051', 'Економіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (71, '052', 'Політологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (72, '053', 'Психологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (73, '054', 'Соціологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (74, '061', 'Журналістика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (75, '071', 'Облік і оподаткування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (76, '072', 'Фінанси, банківська справа та страхування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (77, '073', 'Менеджмент', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (78, '075', 'Маркетинг', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (79, '076', 'Підприємництво, торгівля та біржова діяльність', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (80, '081', 'Право', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (81, '091', 'Біолгоія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (82, '101', 'Екологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (83, '102', 'Хімія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (84, '103', 'Науки про Землю', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (85, '104', 'Фізика та астрономія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (86, '105', 'Прикладна фізика та наноматеріали', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (87, '106', 'Географія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (88, '111', 'Математика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (89, '112', 'Статистика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (90, '113', 'Прикладна математика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (91, '121', 'Інженерія програмного забезпечення', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (92, '122', 'Комп''ютерні науки', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (93, '123', 'Комп''ютерна інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (94, '124', 'Системний аналіз', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (95, '125', 'Кібербезпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (96, '126', 'Інформаційні системи та технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (97, '131', 'Прикладна механіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (98, '132', 'Матеріалознавство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (99, '133', 'Галузеве машинобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (100, '134', 'Авіаційна та ракетно-космічна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (101, '135', 'Суднобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (102, '136', 'Металургія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (103, '141', 'Електроенергетика, електротехніка та електромеханіка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (104, '142', 'Енергетичне машинобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (105, '143', 'Атомна енергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (106, '144', 'Теплоенергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (107, '145', 'Гідроенергетика', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (108, '151', 'Автоматизація та комп''ютерно-інтегровані технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (109, '152', 'Метрологія та інформаційно-вимірювальна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (110, '153', 'Мікро та наносистемна техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (111, '161', 'Хімічні технології та інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (112, '162', 'Біотехнології та біоінженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (113, '163', 'Біомедична інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (114, '171', 'Електроніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (115, '172', 'Телекомунікації та радіотехніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (116, '173', 'Авіоніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (117, '181', 'Харчові технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (118, '182', 'Технології легкої промисловості', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (119, '183', 'Технології захисту навколишнього середовища', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (120, '184', 'Гірництво', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (121, '185', 'Нафтогазова інженерія та технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (122, '186', 'Видавництво та поліграфія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (123, '187', 'Деревообробні та меблеві технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (124, '191', 'Архітектура та містобудування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (125, '192', 'Будівництво та цивільна інженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (126, '193', 'Геодезія та землеустрій', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (127, '194', 'Гідротехнічне будівництво, водна інженерія та водні технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (128, '201', 'Агрономія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (129, '202', 'Захист і карантин рослин', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (130, '203', 'Садівництво та виноградарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (131, '204', 'Технологія виробництва і переробки продукції тваринництва', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (132, '205', 'Лісове господарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (133, '206', 'Садово-паркове господарство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (134, '207', 'Водні біоресурси та аквакультура', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (135, '208', 'Агроінженерія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (136, '211', 'Ветеринарна медицина', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (137, '212', 'Ветеринарна гігієна, санітарія і експертиза', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (138, '221', 'Стоматологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (139, '222', 'Медицина', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (140, '223', 'Медсестринство', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (141, '224', 'Технології медичної діагностики та лікування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (142, '225', 'Медична психологія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (143, '226', 'Фармація, промислова фармація', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (144, '227', 'Фізична терапія, ерготерапія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (145, '228', 'Педіатрія', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (146, '229', 'Громадське здоров''я', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (147, '231', 'Соціальна робота', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (148, '232', 'Соціальне забезпечення', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (149, '241', 'Готельно-ресторанна справа', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (150, '242', 'Туризм', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (151, '251', 'Державна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (152, '252', 'Безпека державного кордону', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (153, '253', 'Військове управління', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (154, '254', 'Забезпечення військ(сил)', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (155, '255', 'Озброєння та військова техніка', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (156, '256', 'Національна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (157, '261', 'Пожежна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (158, '262', 'Правоохоронна діяльність', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (159, '263', 'Цивільна безпека', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (160, '271', 'Річковий та морський транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (161, '272', 'Авіаційний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (162, '273', 'Залізничний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (163, '274', 'Автомобільний транспорт', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (164, '275', 'Транспортні технології', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (165, '275.03', 'На автомобільному транспорті', 164);
INSERT INTO public.specialities (id, code, name, parent) VALUES (166, '275.04', 'На повітряному транспорті', 164);
INSERT INTO public.specialities (id, code, name, parent) VALUES (167, '281', 'Публічне управління та адміністрування', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (168, '291', 'Міжнародні відносини, суспільні комунікації та регіональні студії', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (169, '292', 'Міжнародні економічні відносини', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (170, '293', 'Міжнародне право', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (171, '014.023', 'Французька мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (172, '014.024', 'Іспанська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (173, '014.026', 'Угорська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (174, '014.027', 'Румунська/молдовська мова і література', 0);
INSERT INTO public.specialities (id, code, name, parent) VALUES (175, '014.029', 'Інші мови (із зазначенням мови)', 0);


--
-- TOC entry 3394 (class 0 OID 16727)
-- Dependencies: 217
-- Data for Name: specialities_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1, '011', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (2, '011', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (3, '011', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (4, '011', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (5, '011', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (6, '011', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (7, '011', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (8, '011', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (9, '012', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (10, '012', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (11, '012', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (12, '012', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (13, '012', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (14, '012', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (15, '012', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (16, '012', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (17, '013', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (18, '013', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (19, '013', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (20, '013', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (21, '013', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (22, '013', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (23, '013', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (24, '013', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (25, '014.01', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (26, '014.01', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (27, '014.01', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (28, '014.01', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (29, '014.01', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (30, '014.01', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (31, '014.01', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (32, '014.01', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (33, '014.021', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (34, '014.021', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (35, '014.021', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (36, '014.021', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (37, '014.021', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (38, '014.021', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (39, '014.021', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (40, '014.021', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (41, '014.022', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (42, '014.022', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (43, '014.022', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (44, '014.022', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (45, '014.022', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (46, '014.022', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (47, '014.022', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (48, '014.022', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (49, '014.023', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (50, '014.023', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (51, '014.023', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (52, '014.023', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (53, '014.023', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (54, '014.023', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (55, '014.023', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (56, '014.023', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (57, '014.024', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (58, '014.024', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (59, '014.024', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (60, '014.024', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (61, '014.024', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (62, '014.024', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (63, '014.024', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (64, '014.024', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (65, '014.025', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (66, '014.025', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (67, '014.025', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (68, '014.025', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (69, '014.025', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (70, '014.025', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (71, '014.025', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (72, '014.025', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (73, '014.026', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (74, '014.026', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (75, '014.026', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (76, '014.026', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (77, '014.026', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (78, '014.026', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (79, '014.026', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (80, '014.026', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (81, '014.027', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (82, '014.027', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (83, '014.027', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (84, '014.027', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (85, '014.027', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (86, '014.027', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (87, '014.027', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (88, '014.027', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (89, '014.028', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (90, '014.028', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (91, '014.028', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (92, '014.028', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (93, '014.028', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (94, '014.028', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (95, '014.028', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (96, '014.028', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (97, '014.029', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (98, '014.029', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (99, '014.029', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (100, '014.029', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (101, '014.029', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (102, '014.029', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (103, '014.029', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (104, '014.029', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (105, '014.03', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (106, '014.03', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (107, '014.03', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (108, '014.03', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (109, '014.03', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (110, '014.03', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (111, '014.03', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (112, '014.03', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (113, '014.04', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (114, '014.04', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (115, '014.04', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (116, '014.04', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (117, '014.04', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (118, '014.04', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (119, '014.04', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (120, '014.04', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (121, '014.05', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (122, '014.05', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (123, '014.05', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (124, '014.05', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (125, '014.05', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (126, '014.05', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (127, '014.05', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (128, '014.05', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (129, '014.06', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (130, '014.06', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (131, '014.06', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (132, '014.06', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (133, '014.06', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (134, '014.06', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (135, '014.06', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (136, '014.06', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (137, '014.07', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (138, '014.07', 19, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (139, '014.07', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (140, '014.07', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (141, '014.07', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (142, '014.07', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (143, '014.07', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (144, '014.07', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (145, '014.08', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (146, '014.08', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (147, '014.08', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (148, '014.08', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (149, '014.08', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (150, '014.08', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (151, '014.08', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (152, '014.08', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (153, '014.09', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (154, '014.09', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (155, '014.09', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (156, '014.09', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (157, '014.09', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (158, '014.09', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (159, '014.09', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (160, '014.09', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (161, '014.10', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (162, '014.10', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (163, '014.10', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (164, '014.10', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (165, '014.10', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (166, '014.10', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (167, '014.10', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (168, '014.10', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (169, '014.11', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (170, '014.11', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (171, '014.11', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (172, '014.11', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (173, '014.11', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (174, '014.11', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (175, '014.11', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (176, '014.11', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (177, '014.12', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (178, '014.12', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (179, '014.12', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (180, '014.12', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (181, '014.12', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (182, '014.12', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (183, '014.12', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (184, '014.12', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (185, '014.13', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (186, '014.13', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (187, '014.13', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (188, '014.13', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (189, '014.13', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (190, '014.13', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (191, '014.13', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (192, '014.13', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (193, '014.15', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (194, '014.15', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (195, '014.15', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (196, '014.15', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (197, '014.15', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (198, '014.15', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (199, '014.15', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (200, '014.15', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (201, '015', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (202, '015', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (203, '015', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (204, '015', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (205, '015', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (206, '015', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (207, '015', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (208, '015', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (209, '016', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (210, '016', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (211, '016', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (212, '016', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (213, '016', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (214, '016', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (215, '016', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (216, '016', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (217, '017', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (218, '017', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (219, '017', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (220, '021', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (221, '021', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (222, '021', 21, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (223, '021', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (224, '022.01', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (225, '022.01', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (226, '022.01', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (227, '022.02', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (228, '022.02', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (229, '022.02', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (230, '022.03', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (231, '022.03', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (232, '022.03', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (233, '022.04', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (234, '022.04', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (235, '022.04', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (236, '022.05', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (237, '022.05', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (238, '022.05', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (239, '022.05', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (240, '022.05', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (241, '022.05', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (242, '022.05', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (243, '022.05', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (244, '023', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (245, '023', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (246, '023', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (247, '023', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (248, '024', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (249, '024', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (250, '024', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (251, '024', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (252, '025', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (253, '025', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (254, '025', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (255, '025', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (256, '025', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (257, '026', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (258, '026', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (259, '026', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (260, '026', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (261, '027', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (262, '027', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (263, '027', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (264, '027', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (265, '027', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (266, '027', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (267, '027', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (268, '027', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (269, '028', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (270, '028', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (271, '028', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (272, '028', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (273, '028', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (274, '028', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (275, '028', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (276, '028', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (277, '029', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (278, '029', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (279, '029', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (280, '029', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (281, '029', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (282, '029', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (283, '029', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (284, '029', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (285, '031', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (286, '031', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (287, '031', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (288, '031', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (289, '031', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (290, '031', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (291, '031', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (292, '031', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (293, '032', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (294, '032', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (295, '032', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (296, '032', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (297, '032', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (298, '032', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (299, '032', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (300, '032', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (301, '033', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (302, '033', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (303, '033', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (304, '033', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (305, '033', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (306, '033', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (307, '033', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (308, '033', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (309, '034', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (310, '034', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (311, '034', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (312, '034', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (313, '034', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (314, '034', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (315, '034', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (316, '034', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (317, '035', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (318, '035', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (319, '035', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (320, '035', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (321, '035', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (322, '035', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (323, '035', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (324, '035', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (325, '041', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (326, '041', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (327, '041', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (328, '041', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (329, '041', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (330, '041', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (331, '041', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (332, '041', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (333, '051', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (334, '051', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (335, '051', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (336, '051', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (337, '051', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (338, '051', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (339, '051', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (340, '051', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (341, '052', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (342, '052', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (343, '052', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (344, '052', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (345, '052', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (346, '052', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (347, '052', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (348, '052', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (349, '053', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (350, '053', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (351, '053', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (352, '053', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (353, '053', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (354, '053', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (355, '053', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (356, '053', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (357, '054', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (358, '054', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (359, '054', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (360, '054', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (361, '054', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (362, '054', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (363, '054', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (364, '054', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (365, '061', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (366, '061', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (367, '061', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (368, '061', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (369, '061', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (370, '061', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (371, '061', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (372, '061', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (373, '071', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (374, '071', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (375, '071', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (376, '071', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (377, '071', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (378, '071', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (379, '071', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (380, '071', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (381, '072', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (382, '072', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (383, '072', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (384, '072', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (385, '072', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (386, '072', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (387, '072', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (388, '072', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (389, '073', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (390, '073', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (391, '073', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (392, '073', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (393, '073', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (394, '073', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (395, '073', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (396, '073', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (397, '075', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (398, '075', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (399, '075', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (400, '075', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (401, '075', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (402, '075', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (403, '075', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (404, '075', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (405, '076', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (406, '076', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (407, '076', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (408, '076', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (409, '076', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (410, '076', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (411, '076', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (412, '076', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (413, '081', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (414, '081', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (415, '081', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (416, '081', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (417, '091', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (418, '091', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (419, '091', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (420, '091', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (421, '091', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (422, '091', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (423, '091', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (424, '091', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (425, '101', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (426, '101', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (427, '101', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (428, '101', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (429, '101', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (430, '101', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (431, '101', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (432, '101', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (433, '102', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (434, '102', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (435, '102', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (436, '102', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (437, '102', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (438, '102', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (439, '102', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (440, '102', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (441, '103', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (442, '103', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (443, '103', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (444, '103', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (445, '103', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (446, '103', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (447, '103', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (448, '103', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (449, '104', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (450, '104', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (451, '104', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (452, '104', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (453, '104', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (454, '104', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (455, '104', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (456, '104', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (457, '105', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (458, '105', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (459, '105', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (460, '105', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (461, '105', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (462, '105', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (463, '105', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (464, '105', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (465, '106', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (466, '106', 19, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (467, '106', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (468, '106', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (469, '106', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (470, '106', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (471, '106', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (472, '106', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (473, '111', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (474, '111', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (475, '111', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (476, '111', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (477, '111', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (478, '111', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (479, '111', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (480, '111', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (481, '112', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (482, '112', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (483, '112', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (484, '112', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (485, '112', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (486, '112', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (487, '112', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (488, '112', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (489, '113', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (490, '113', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (491, '113', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (492, '113', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (493, '113', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (494, '113', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (495, '113', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (496, '113', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (497, '121', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (498, '121', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (499, '121', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (500, '121', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (501, '121', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (502, '121', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (503, '121', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (504, '121', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (505, '122', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (506, '122', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (507, '122', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (508, '122', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (509, '122', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (510, '122', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (511, '122', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (512, '122', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (513, '123', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (514, '123', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (515, '123', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (516, '123', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (517, '123', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (518, '123', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (519, '123', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (520, '123', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (521, '124', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (522, '124', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (523, '124', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (524, '124', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (525, '124', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (526, '124', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (527, '124', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (528, '124', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (529, '125', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (530, '125', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (531, '125', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (532, '125', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (533, '125', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (534, '125', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (535, '125', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (536, '125', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (537, '126', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (538, '126', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (539, '126', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (540, '126', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (541, '126', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (542, '126', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (543, '126', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (544, '126', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (545, '131', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (546, '131', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (547, '131', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (548, '131', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (549, '131', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (550, '131', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (551, '131', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (552, '131', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (553, '132', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (554, '132', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (555, '132', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (556, '132', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (557, '132', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (558, '132', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (559, '132', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (560, '132', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (561, '133', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (562, '133', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (563, '133', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (564, '133', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (565, '133', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (566, '133', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (567, '133', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (568, '133', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (569, '134', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (570, '134', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (571, '134', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (572, '134', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (573, '134', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (574, '134', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (575, '134', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (576, '134', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (577, '135', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (578, '135', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (579, '135', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (580, '135', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (581, '135', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (582, '135', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (583, '135', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (584, '135', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (585, '136', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (586, '136', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (587, '136', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (588, '136', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (589, '136', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (590, '136', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (591, '136', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (592, '136', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (593, '141', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (594, '141', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (595, '141', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (596, '141', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (597, '141', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (598, '141', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (599, '141', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (600, '141', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (601, '142', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (602, '142', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (603, '142', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (604, '142', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (605, '142', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (606, '142', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (607, '142', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (608, '142', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (609, '143', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (610, '143', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (611, '143', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (612, '143', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (613, '143', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (614, '143', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (615, '143', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (616, '143', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (617, '144', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (618, '144', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (619, '144', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (620, '144', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (621, '144', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (622, '144', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (623, '144', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (624, '144', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (625, '145', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (626, '145', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (627, '145', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (628, '145', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (629, '145', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (630, '145', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (631, '145', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (632, '145', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (633, '151', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (634, '151', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (635, '151', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (636, '151', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (637, '151', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (638, '151', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (639, '151', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (640, '151', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (641, '152', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (642, '152', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (643, '152', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (644, '152', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (645, '152', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (646, '152', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (647, '152', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (648, '152', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (649, '153', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (650, '153', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (651, '153', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (652, '153', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (653, '153', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (654, '153', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (655, '153', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (656, '153', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (657, '161', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (658, '161', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (659, '161', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (660, '161', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (661, '161', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (662, '161', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (663, '161', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (664, '161', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (665, '162', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (666, '162', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (667, '162', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (668, '162', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (669, '162', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (670, '162', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (671, '162', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (672, '162', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (673, '163', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (674, '163', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (675, '163', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (676, '163', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (677, '163', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (678, '163', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (679, '163', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (680, '163', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (681, '171', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (682, '171', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (683, '171', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (684, '171', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (685, '171', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (686, '171', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (687, '171', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (688, '171', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (689, '172', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (690, '172', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (691, '172', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (692, '172', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (693, '172', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (694, '172', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (695, '172', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (696, '172', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (697, '173', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (698, '173', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (699, '173', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (700, '173', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (701, '173', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (702, '173', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (703, '173', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (704, '173', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (705, '181', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (706, '181', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (707, '181', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (708, '181', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (709, '181', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (710, '181', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (711, '181', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (712, '181', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (713, '182', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (714, '182', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (715, '182', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (716, '182', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (717, '182', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (718, '182', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (719, '182', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (720, '182', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (721, '183', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (722, '183', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (723, '183', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (724, '183', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (725, '183', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (726, '183', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (727, '183', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (728, '183', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (729, '184', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (730, '184', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (731, '184', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (732, '184', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (733, '184', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (734, '184', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (735, '184', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (736, '184', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (737, '185', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (738, '185', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (739, '185', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (740, '185', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (741, '185', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (742, '185', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (743, '185', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (744, '185', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (745, '186', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (746, '186', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (747, '186', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (748, '186', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (749, '186', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (750, '186', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (751, '186', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (752, '186', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (753, '187', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (754, '187', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (755, '187', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (756, '187', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (757, '187', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (758, '187', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (759, '187', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (760, '187', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (761, '191', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (762, '191', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (763, '191', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (764, '192', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (765, '192', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (766, '192', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (767, '192', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (768, '192', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (769, '192', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (770, '192', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (771, '192', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (772, '193', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (773, '193', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (774, '193', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (775, '193', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (776, '193', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (777, '193', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (778, '193', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (779, '193', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (780, '194', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (781, '194', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (782, '194', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (783, '194', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (784, '194', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (785, '194', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (786, '194', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (787, '194', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (788, '201', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (789, '201', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (790, '201', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (791, '201', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (792, '201', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (793, '201', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (794, '201', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (795, '201', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (796, '202', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (797, '202', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (798, '202', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (799, '202', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (800, '202', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (801, '202', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (802, '202', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (803, '202', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (804, '203', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (805, '203', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (806, '203', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (807, '203', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (808, '203', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (809, '203', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (810, '203', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (811, '203', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (812, '204', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (813, '204', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (814, '204', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (815, '204', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (816, '204', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (817, '204', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (818, '204', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (819, '204', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (820, '205', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (821, '205', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (822, '205', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (823, '205', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (824, '205', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (825, '205', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (826, '205', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (827, '205', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (828, '206', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (829, '206', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (830, '206', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (831, '206', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (832, '206', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (833, '206', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (834, '206', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (835, '206', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (836, '207', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (837, '207', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (838, '207', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (839, '207', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (840, '207', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (841, '207', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (842, '207', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (843, '207', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (844, '208', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (845, '208', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (846, '208', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (847, '208', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (848, '208', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (849, '208', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (850, '208', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (851, '208', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (852, '211', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (853, '211', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (854, '211', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (855, '211', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (856, '211', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (857, '212', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (858, '212', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (859, '212', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (860, '212', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (861, '212', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (862, '221', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (863, '221', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (864, '221', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (865, '221', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (866, '221', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (867, '222', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (868, '222', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (869, '222', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (870, '222', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (871, '222', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (872, '223', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (873, '223', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (874, '223', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (875, '223', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (876, '223', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (877, '224', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (878, '224', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (879, '224', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (880, '224', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (881, '224', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (882, '225', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (883, '225', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (884, '225', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (885, '225', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (886, '225', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (887, '226', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (888, '226', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (889, '226', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (890, '226', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (891, '226', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (892, '227', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (893, '227', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (894, '227', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (895, '227', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (896, '227', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (897, '228', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (898, '228', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (899, '228', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (900, '228', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (901, '228', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (902, '229', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (903, '229', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (904, '229', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (905, '229', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (906, '229', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (907, '231', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (908, '231', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (909, '231', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (910, '231', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (911, '231', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (912, '231', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (913, '231', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (914, '231', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (915, '232', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (916, '232', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (917, '232', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (918, '232', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (919, '232', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (920, '232', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (921, '232', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (922, '232', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (923, '241', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (924, '241', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (925, '241', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (926, '241', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (927, '241', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (928, '241', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (929, '241', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (930, '241', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (931, '242', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (932, '242', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (933, '242', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (934, '242', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (935, '242', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (936, '242', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (937, '242', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (938, '242', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (939, '251', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (940, '251', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (941, '251', 18, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (942, '251', 19, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (943, '251', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (944, '251', 6, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (945, '251', 22, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (946, '251', 21, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (947, '251', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (948, '251', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (949, '251', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (950, '251', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (951, '251', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (952, '251', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (953, '251', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (954, '252', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (955, '253', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (956, '254', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (957, '255', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (958, '255', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (959, '255', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (960, '255', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (961, '256', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (962, '256', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (963, '256', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (964, '256', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (965, '261', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (966, '261', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (967, '261', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (968, '261', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (969, '261', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (970, '261', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (971, '262', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (972, '262', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (973, '262', 999, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (974, '262', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (975, '262', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (976, '263', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (977, '263', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (978, '263', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (979, '263', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (980, '263', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (981, '263', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (982, '271', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (983, '272', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (984, '272', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (985, '272', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (986, '272', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (987, '273', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (988, '273', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (989, '273', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (990, '273', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (991, '273', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (992, '273', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (993, '273', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (994, '273', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (995, '274', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (996, '274', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (997, '274', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (998, '274', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (999, '274', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1000, '274', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1001, '274', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1002, '274', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1003, '275', 1, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1004, '275', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1005, '275', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1006, '275', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1007, '275', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1008, '275', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1009, '275', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1010, '275', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1011, '281', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1012, '281', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1013, '281', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1014, '281', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1015, '281', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1016, '281', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1017, '281', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1018, '281', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1019, '291', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1020, '291', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1021, '291', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1022, '291', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1023, '291', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1024, '291', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1025, '291', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1026, '291', 14, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1027, '292', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1028, '292', 14, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1029, '292', 22, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1030, '292', 21, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1031, '292', 3, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1032, '292', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1033, '292', 18, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1034, '292', 19, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1035, '293', 29, 'main');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1036, '293', 3, 'mandatory');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1037, '293', 6, 'optional');
INSERT INTO public.specialities_subjects (id, speciality_code, subject_id, subject_status) VALUES (1038, '293', 14, 'optional');


--
-- TOC entry 3396 (class 0 OID 16731)
-- Dependencies: 219
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subjects (id, name) VALUES (1, 'Українська мова');
INSERT INTO public.subjects (id, name) VALUES (3, 'Іноземні мови');
INSERT INTO public.subjects (id, name) VALUES (6, 'Істроія України');
INSERT INTO public.subjects (id, name) VALUES (14, 'Математика');
INSERT INTO public.subjects (id, name) VALUES (18, 'Біологія');
INSERT INTO public.subjects (id, name) VALUES (19, 'Географія');
INSERT INTO public.subjects (id, name) VALUES (21, 'Фізика');
INSERT INTO public.subjects (id, name) VALUES (22, 'Хімія');
INSERT INTO public.subjects (id, name) VALUES (29, 'Українська мова та література');
INSERT INTO public.subjects (id, name) VALUES (999, 'Творчий конкурс');


--
-- TOC entry 3398 (class 0 OID 16735)
-- Dependencies: 221
-- Data for Name: universities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.universities (id, name, city_id) VALUES (16, 'Львівський торговельно-економічний університет', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (97, 'Національний університет "Львівська політехніка"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (160, 'Державний вищий навчальний заклад "Національний лісотехнічний університет України"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (167, 'Українська академія друкарства', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (244, 'Заклад вищої освіти "Український католицький університет"', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (282, 'Львівський національний університет імені Івана Франка', 1);
INSERT INTO public.universities (id, name, city_id) VALUES (41, 'Київський національний університет імені Тараса Шевченка', 2);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 210
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, true);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 223
-- Name: coefficients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coefficients_id_seq', 23, true);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 212
-- Name: collaborators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.collaborators_id_seq', 1, false);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 214
-- Name: faculties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculties_id_seq', 1, false);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 225
-- Name: max_min_grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.max_min_grades_id_seq', 10, true);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 216
-- Name: specialities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.specialities_id_seq', 1, false);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 218
-- Name: specialities_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.specialities_subjects_id_seq', 1, false);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 220
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 1, false);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 222
-- Name: universities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.universities_id_seq', 1, true);


-- Completed on 2022-10-30 01:07:55

--
-- PostgreSQL database dump complete
--

