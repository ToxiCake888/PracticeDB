--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: classroom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom (
    id character(4) NOT NULL
);


ALTER TABLE public.classroom OWNER TO postgres;

--
-- Name: group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."group" (
    id character(8) NOT NULL
);


ALTER TABLE public."group" OWNER TO postgres;

--
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    id integer NOT NULL,
    date date,
    "time" time without time zone,
    class_number character(4),
    group_id character(8),
    teacher_id integer
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- Name: lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lesson_id_seq OWNER TO postgres;

--
-- Name: lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_id_seq OWNED BY public.lesson.id;


--
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- Name: teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teacher_id_seq OWNER TO postgres;

--
-- Name: teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_id_seq OWNED BY public.teacher.id;


--
-- Name: lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson ALTER COLUMN id SET DEFAULT nextval('public.lesson_id_seq'::regclass);


--
-- Name: teacher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq'::regclass);


--
-- Data for Name: classroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom (id) FROM stdin;
1   
2   
3   
4   
5   
6   
7   
8   
9   
10  
11  
12  
13  
14  
15  
16  
17  
18  
19  
20  
21  
22  
23  
24  
25  
26  
27  
28  
29  
30  
31  
32  
33  
34  
35  
36  
37  
38  
39  
40  
41  
42  
43  
44  
45  
46  
47  
48  
49  
50  
51  
52  
53  
54  
55  
56  
57  
58  
59  
60  
61  
62  
63  
64  
65  
66  
67  
68  
69  
70  
71  
72  
73  
74  
75  
76  
77  
78  
79  
80  
81  
82  
83  
84  
85  
86  
87  
88  
89  
90  
91  
92  
93  
94  
95  
96  
97  
98  
99  
100 
101 
102 
103 
104 
105 
106 
107 
108 
109 
110 
111 
112 
113 
114 
115 
116 
117 
118 
119 
120 
121 
122 
123 
124 
125 
126 
127 
128 
129 
130 
131 
132 
133 
134 
135 
136 
137 
138 
139 
140 
141 
142 
143 
144 
145 
146 
147 
148 
149 
150 
151 
152 
153 
154 
155 
156 
157 
158 
159 
160 
161 
162 
163 
164 
165 
166 
167 
168 
169 
170 
171 
172 
173 
174 
175 
176 
177 
178 
179 
180 
181 
182 
183 
184 
185 
186 
187 
188 
189 
190 
191 
192 
193 
194 
195 
196 
197 
198 
199 
200 
201 
202 
203 
204 
205 
206 
207 
208 
209 
210 
211 
212 
213 
214 
215 
216 
217 
218 
219 
220 
221 
222 
223 
224 
225 
226 
227 
228 
229 
230 
231 
232 
233 
234 
235 
236 
237 
238 
239 
240 
241 
242 
243 
244 
245 
246 
247 
248 
249 
250 
251 
252 
253 
254 
255 
256 
257 
258 
259 
260 
261 
262 
263 
264 
265 
266 
267 
268 
269 
270 
271 
272 
273 
274 
275 
276 
277 
278 
279 
280 
281 
282 
283 
284 
285 
286 
287 
288 
289 
290 
291 
292 
293 
294 
295 
296 
297 
298 
299 
300 
301 
302 
303 
304 
305 
306 
307 
308 
309 
310 
311 
312 
313 
314 
315 
316 
317 
318 
319 
320 
321 
322 
323 
324 
325 
326 
327 
328 
329 
330 
331 
332 
333 
334 
335 
336 
337 
338 
339 
340 
341 
342 
343 
344 
345 
346 
347 
348 
349 
350 
351 
352 
353 
354 
355 
356 
357 
358 
359 
360 
361 
362 
363 
364 
365 
366 
367 
368 
369 
370 
371 
372 
373 
374 
375 
376 
377 
378 
379 
380 
381 
382 
383 
384 
385 
386 
387 
388 
389 
390 
391 
392 
393 
394 
395 
396 
397 
398 
399 
400 
401 
402 
403 
404 
405 
406 
407 
408 
409 
410 
411 
412 
413 
414 
415 
416 
417 
418 
419 
420 
421 
422 
423 
424 
425 
426 
427 
428 
429 
430 
431 
432 
433 
434 
435 
436 
437 
438 
439 
440 
441 
442 
443 
444 
445 
446 
447 
448 
449 
450 
451 
452 
453 
454 
455 
456 
457 
458 
459 
460 
461 
462 
463 
464 
465 
466 
467 
468 
469 
470 
471 
472 
473 
474 
475 
476 
477 
478 
479 
480 
481 
482 
483 
484 
485 
486 
487 
488 
489 
490 
491 
492 
493 
494 
495 
496 
497 
498 
499 
500 
501 
502 
503 
504 
505 
506 
507 
508 
509 
510 
511 
512 
513 
514 
515 
516 
517 
518 
519 
520 
521 
522 
523 
524 
525 
526 
527 
528 
529 
530 
531 
532 
533 
534 
535 
536 
537 
538 
539 
540 
541 
542 
543 
544 
545 
546 
547 
548 
549 
550 
551 
552 
553 
554 
555 
556 
557 
558 
559 
560 
561 
562 
563 
564 
565 
566 
567 
568 
569 
570 
571 
572 
573 
574 
575 
576 
577 
578 
579 
580 
581 
582 
583 
584 
585 
586 
587 
588 
589 
590 
591 
592 
593 
594 
595 
596 
597 
598 
599 
600 
601 
602 
603 
604 
605 
606 
607 
608 
609 
610 
611 
612 
613 
614 
615 
616 
617 
618 
619 
620 
621 
622 
623 
624 
625 
626 
627 
628 
629 
630 
631 
632 
633 
634 
635 
636 
637 
638 
639 
640 
641 
642 
643 
644 
645 
646 
647 
648 
649 
650 
651 
652 
653 
654 
655 
656 
657 
658 
659 
660 
661 
662 
663 
664 
665 
666 
667 
668 
669 
670 
671 
672 
673 
674 
675 
676 
677 
678 
679 
680 
681 
682 
683 
684 
685 
686 
687 
688 
689 
690 
691 
692 
693 
694 
695 
696 
697 
698 
699 
700 
701 
702 
703 
704 
705 
706 
707 
708 
709 
710 
711 
712 
713 
714 
715 
716 
717 
718 
719 
720 
721 
722 
723 
724 
725 
726 
727 
728 
729 
730 
731 
732 
733 
734 
735 
736 
737 
738 
739 
740 
741 
742 
743 
744 
745 
746 
747 
748 
749 
750 
751 
752 
753 
754 
755 
756 
757 
758 
759 
760 
761 
762 
763 
764 
765 
766 
767 
768 
769 
770 
771 
772 
773 
774 
775 
776 
777 
778 
779 
780 
781 
782 
783 
784 
785 
786 
787 
788 
789 
790 
791 
792 
793 
794 
795 
796 
797 
798 
799 
800 
801 
802 
803 
804 
805 
806 
807 
808 
809 
810 
811 
812 
813 
814 
815 
816 
817 
818 
819 
820 
821 
822 
823 
824 
825 
826 
827 
828 
829 
830 
831 
832 
833 
834 
835 
836 
837 
838 
839 
840 
841 
842 
843 
844 
845 
846 
847 
848 
849 
850 
851 
852 
853 
854 
855 
856 
857 
858 
859 
860 
861 
862 
863 
864 
865 
866 
867 
868 
869 
870 
871 
872 
873 
874 
875 
876 
877 
878 
879 
880 
881 
882 
883 
884 
885 
886 
887 
888 
889 
890 
891 
892 
893 
894 
895 
896 
897 
898 
899 
900 
901 
902 
903 
904 
905 
906 
907 
908 
909 
910 
911 
912 
913 
914 
915 
916 
917 
918 
919 
920 
921 
922 
923 
924 
925 
926 
927 
928 
929 
930 
931 
932 
933 
934 
935 
936 
937 
938 
939 
940 
941 
942 
943 
944 
945 
946 
947 
948 
949 
950 
951 
952 
953 
954 
955 
956 
957 
958 
959 
960 
961 
962 
963 
964 
965 
966 
967 
968 
969 
970 
971 
972 
973 
974 
975 
976 
977 
978 
979 
980 
981 
982 
983 
984 
985 
986 
987 
988 
989 
990 
991 
992 
993 
994 
995 
996 
997 
998 
999 
\.


--
-- Data for Name: group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."group" (id) FROM stdin;
ПРИ-321 
ИСТ-311 
ПМИ-2311
ЗБИН-421
ФИЗ-101 
МАТ-202 
ХИМ-115 
БИО-307 
ЛИТ-512 
ИНФ-409 
ИТ-101  
ИТ-102  
РОБ-201 
АВТ-202 
ИСТ-301 
ФИЛ-302 
ПСИ-401 
ЛИН-402 
ФИЗ-501 
ХИМ-502 
БИО-601 
ЭКО-602 
ДИЗ-701 
МУЗ-702 
АРХ-801 
МЕД-802 
СПЕ-901 
БЕЗ-902 
КРИ-1001
КИБ-1002
\.


--
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson (id, date, "time", class_number, group_id, teacher_id) FROM stdin;
1404	2025-07-01	08:00:00	529 	ХИМ-502 	10
1411	2025-08-15	08:00:00	229 	ФИЛ-302 	10
1412	2025-07-04	15:00:00	619 	ФИЛ-302 	4
1413	2025-05-23	08:00:00	230 	ФИЛ-302 	9
1415	2025-07-07	17:00:00	136 	ЛИТ-512 	7
1416	2025-05-26	09:00:00	559 	ЛИТ-512 	6
1417	2025-08-19	14:00:00	551 	МУЗ-702 	5
1418	2025-07-08	10:00:00	813 	МУЗ-702 	8
1419	2025-05-27	13:00:00	852 	МУЗ-702 	1
1421	2025-05-28	09:00:00	891 	КРИ-1001	11
1422	2025-07-10	14:00:00	818 	БИО-601 	6
1423	2025-05-29	09:00:00	394 	БИО-601 	2
1424	2025-07-11	08:00:00	917 	ИСТ-311 	1
1425	2025-05-30	13:00:00	465 	ИСТ-311 	10
1426	2025-07-14	11:00:00	877 	МЕД-802 	11
1427	2025-06-02	11:00:00	383 	МЕД-802 	3
1428	2025-07-15	12:00:00	359 	РОБ-201 	2
1429	2025-06-03	11:00:00	691 	РОБ-201 	5
1430	2025-07-16	10:00:00	746 	ИСТ-301 	10
1431	2025-06-04	13:00:00	832 	ИСТ-301 	4
1432	2025-07-17	12:00:00	647 	ДИЗ-701 	3
1433	2025-06-05	11:00:00	668 	ДИЗ-701 	7
1434	2025-07-18	11:00:00	522 	БЕЗ-902 	5
1435	2025-06-06	15:00:00	382 	БЕЗ-902 	8
1436	2025-07-21	10:00:00	144 	БИО-307 	4
1437	2025-06-09	11:00:00	254 	БИО-307 	9
1438	2025-07-22	12:00:00	541 	ПМИ-2311	7
1439	2025-06-10	15:00:00	312 	ПМИ-2311	6
1440	2025-07-23	16:00:00	731 	МАТ-202 	8
1441	2025-06-11	14:00:00	240 	МАТ-202 	1
1442	2025-07-24	11:00:00	198 	КИБ-1002	9
1443	2025-06-12	08:00:00	581 	КИБ-1002	11
1444	2025-07-25	10:00:00	788 	ИТ-101  	6
1445	2025-06-13	16:00:00	32  	ИТ-101  	2
1446	2025-07-28	13:00:00	704 	ЛИН-402 	1
1447	2025-06-16	13:00:00	290 	ЛИН-402 	10
1448	2025-07-29	10:00:00	324 	АРХ-801 	11
1449	2025-06-17	15:00:00	941 	АРХ-801 	3
1450	2025-07-30	09:00:00	537 	ПСИ-401 	2
1451	2025-06-18	10:00:00	109 	ПСИ-401 	5
1452	2025-07-31	12:00:00	951 	ФИЗ-501 	10
1453	2025-06-19	14:00:00	414 	ФИЗ-501 	4
1454	2025-08-01	11:00:00	41  	ФИЗ-101 	3
1455	2025-06-20	12:00:00	689 	ФИЗ-101 	7
1456	2025-08-04	11:00:00	733 	ИТ-102  	5
1457	2025-06-23	12:00:00	716 	ИТ-102  	8
1458	2025-08-05	16:00:00	381 	ЭКО-602 	4
1459	2025-06-24	13:00:00	265 	ЭКО-602 	9
1461	2025-06-25	08:00:00	681 	ПРИ-321 	6
1462	2025-08-07	14:00:00	463 	СПЕ-901 	8
1463	2025-06-26	11:00:00	552 	СПЕ-901 	1
1464	2025-08-08	13:00:00	607 	АВТ-202 	9
1465	2025-06-27	11:00:00	30  	АВТ-202 	11
1466	2025-08-11	10:00:00	672 	ЗБИН-421	6
1467	2025-06-30	09:00:00	11  	ЗБИН-421	2
1403	2025-01-06	14:00:00	212 	ХИМ-502 	1
1405	2025-01-20	09:00:00	212 	ИНФ-409 	11
1410	2025-01-20	16:00:00	674 	ИСТ-311 	8
1409	2025-01-06	17:00:00	456 	ИСТ-311 	5
1408	2025-01-06	17:00:00	533 	ИСТ-311 	2
1406	2025-07-02	17:00:00	212 	ИНФ-409 	3
1460	2025-08-06	15:00:00	212 	ПРИ-321 	7
1407	2025-04-21	15:00:00	426 	ИСТ-311 	7
1414	2025-04-22	17:00:00	504 	ИСТ-311 	3
1420	2025-04-14	15:00:00	477 	ИСТ-311 	9
\.


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (id, first_name, last_name) FROM stdin;
2	Петр	Петров
3	Алексей	Сидоров
4	Ольга	Смирнова
5	Елена	Кузнецова
6	Сергей	Васильев
7	Анна	Попова
8	Дмитрий	Соколов
9	Мария	Михайлова
10	Андрей	Новиков
11	Сергей	Щербаков
1	Алексей	Долженко
\.


--
-- Name: lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_id_seq', 1467, true);


--
-- Name: teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_id_seq', 11, true);


--
-- Name: classroom classroom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom
    ADD CONSTRAINT classroom_pkey PRIMARY KEY (id);


--
-- Name: group group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (id);


--
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);


--
-- Name: lesson lesson_class_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_class_number_fkey FOREIGN KEY (class_number) REFERENCES public.classroom(id);


--
-- Name: lesson lesson_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_group_id_fkey FOREIGN KEY (group_id) REFERENCES public."group"(id);


--
-- Name: lesson lesson_teacher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teacher(id);


--
-- PostgreSQL database dump complete
--

