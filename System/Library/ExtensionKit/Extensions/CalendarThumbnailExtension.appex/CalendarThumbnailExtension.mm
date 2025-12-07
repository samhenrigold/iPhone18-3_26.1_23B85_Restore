Swift::Int sub_100001CFC()
{
  v1 = *v0;
  sub_100008534();
  sub_100008544(v1);
  return sub_100008554();
}

Swift::Int sub_100001D70(uint64_t a1)
{
  v2 = *v1;
  sub_100008534();
  sub_100008544(v2);
  return sub_100008554();
}

uint64_t sub_100001DC0(uint64_t a1)
{
  v2 = sub_1000073DC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001DFC(uint64_t a1)
{
  v2 = sub_1000073DC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001E40(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = sub_100005504(&qword_100010438, &qword_100008DA8);
  v2[13] = swift_task_alloc();
  v3 = sub_1000080B4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_100007E74();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100005504(&qword_100010440, &qword_100008DB0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for TodoView(0);
  v2[25] = swift_task_alloc();
  v5 = sub_100007EB4();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[28] = v6;
  v2[29] = sub_1000084C4();
  v2[30] = sub_1000084B4();
  v7 = swift_task_alloc();
  v2[31] = v7;
  *v7 = v2;
  v7[1] = sub_1000020E4;

  return ThumbnailRequest.fileURL.getter(v6);
}

uint64_t sub_1000020E4()
{
  *(*v1 + 256) = v0;

  v3 = sub_1000084A4();
  if (v0)
  {
    v4 = sub_1000028F8;
  }

  else
  {
    v4 = sub_100002240;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100002240()
{

  v1 = objc_allocWithZone(QLIcalParser);
  sub_100007EA4(v2);
  v4 = v3;
  v5 = [v1 initWithURL:v3];

  if (!v5)
  {
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[26];
    sub_1000055A4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    goto LABEL_23;
  }

  if ([v5 isTodo])
  {
    v6 = [v5 dueDate];
    if (v6)
    {
      v7 = v6;
      sub_100007E44();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    (*(v0[18] + 56))(v0[23], v8, 1, v0[17]);
    v23 = [v5 isDone];
    v24 = [v5 summary];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100008494();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v34 = v0[24];
    v33 = v0[25];
    sub_100006DB0(v0[23], v33, &qword_100010440, &qword_100008DB0);
    *(v33 + *(v34 + 20)) = v23;
    v35 = (v33 + *(v34 + 24));
    *v35 = v26;
    v35[1] = v28;
    sub_1000054BC(&qword_100010468, type metadata accessor for TodoView, &unk_100008F24);
    v36 = sub_100008424();
  }

  else
  {
    v13 = [v5 startDate];
    if (!v13)
    {
      v30 = v0[27];
      v29 = v0[28];
      v31 = v0[26];
      sub_1000055A4();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();

      (*(v30 + 8))(v29, v31);
      goto LABEL_23;
    }

    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    v19 = v13;
    sub_100007E44();

    (*(v17 + 32))(v14, v15, v18);
    (*(v17 + 16))(v16, v14, v18);
    v20 = [v5 endDate];
    if (v20)
    {
      v21 = v20;
      sub_100007E44();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    (*(v0[18] + 56))(v0[22], v22, 1, v0[17]);
    v37 = [v5 summary];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100008494();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = v0[21];
    v43 = v0[18];
    v44 = v0[17];
    sub_100005760(v0[19], v0[22], v39, v41, [v5 fullDay], v0 + 2);
    sub_100006C10();
    v36 = sub_100008424();
    (*(v43 + 8))(v42, v44);
  }

  v46 = v0[15];
  v45 = v0[16];
  v47 = v0[13];
  v48 = v0[14];
  v49 = v0[12];
  v60 = v5;

  sub_1000080D4();
  sub_100008094();
  v50 = v36;
  v51 = *(v46 + 8);
  v51(v45, v48);
  sub_1000080D4();
  sub_1000080A4();
  v51(v45, v48);
  KeyPath = swift_getKeyPath();
  v53 = (v47 + *(v49 + 36));
  sub_100005504(&qword_100010458, &qword_100008DE8);
  sub_100007FF4();
  *v53 = KeyPath;
  *v47 = v50;
  sub_100005504(&qword_100010460, &qword_100008DF0);
  swift_allocObject();
  sub_100008194();
  sub_100008174();
  sub_1000081A4();

  sub_100008084();

  v54 = [v60 isTodo];
  v56 = v0[27];
  v55 = v0[28];
  v57 = v0[26];
  if (v54)
  {
    sub_100008074();
    sub_100008064();

    (*(v56 + 8))(v55, v57);
  }

  else
  {
    (*(v56 + 8))(v0[28], v0[26]);
  }

LABEL_23:

  v58 = v0[1];

  return v58();
}

uint64_t sub_1000028F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002A00(uint64_t a1)
{
  v2 = sub_100008004();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100008234();
}

uint64_t sub_100002AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000080F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100002B30(uint64_t a1)
{
  v2 = sub_1000054BC(&qword_100010430, type metadata accessor for CalendarThumbnailExtension, "e9");

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002BAC()
{
  v0 = sub_100008124();
  __chkstk_darwin(v0 - 8);
  sub_100008114();
  return sub_1000080E4();
}

uint64_t sub_100002C40()
{
  v0 = sub_1000083C4();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.displayP3(_:));
  result = sub_100008404();
  qword_100010AD0 = result;
  return result;
}

uint64_t sub_100002D24()
{
  v0 = sub_100005504(&qword_100010570, &qword_1000090A8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_100008314();
  v3 = enum case for Font.Design.default(_:);
  v4 = sub_1000082E4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_100008324();
  result = sub_100007954(v2, &qword_100010570, &qword_1000090A8);
  qword_100010AD8 = v6;
  return result;
}

uint64_t sub_100002E70()
{
  v0 = sub_100008484();
  CTFontCreateWithNameAndOptions(v0, 490.0, 0, 0x400uLL);

  result = sub_100008334();
  qword_100010AE0 = result;
  return result;
}

uint64_t sub_100002EDC()
{
  v0 = sub_100005504(&qword_100010570, &qword_1000090A8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  sub_100008304();
  v3 = sub_1000082E4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_100008324();
  result = sub_100007954(v2, &qword_100010570, &qword_1000090A8);
  qword_100010AE8 = v4;
  return result;
}

uint64_t sub_100002FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = sub_1000083C4();
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000083F4();
  sub_100008444();
  sub_100008154();
  v85 = v104;
  v86 = v106;
  v81 = v107;
  v82 = v105;
  v87 = v108;
  v88 = v109;
  v6 = qword_100010668;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_100008354();
  v9 = v8;
  v11 = v10;

  if (qword_100010660 != -1)
  {
    swift_once();
  }

  v132[0] = qword_100010AD0;

  v12 = sub_100008344();
  v89 = v13;
  v90 = v12;
  v79 = v14;
  v91 = v15;
  sub_1000075B0(v7, v9, v11 & 1);

  v16 = qword_100010670;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_100008354();
  v19 = v18;
  v21 = v20;

  v132[0] = sub_1000083E4();
  v80 = sub_100008344();
  v83 = v22;
  v84 = v23;
  v76 = v24;
  sub_1000075B0(v17, v19, v21 & 1);

  v71 = sub_100008294();
  v100 = 1;
  v26 = a1[4];
  v25 = a1[5];
  v28 = a1[6];
  v27 = a1[7];

  sub_1000075C0(v26, v25, 0);

  sub_1000075C0(v28, v27, 0);

  v78 = v27;
  sub_1000075B0(v28, v27, 0);

  v75 = v25;
  sub_1000075B0(v26, v25, 0);

  v113 = 0;
  v111 = 0;
  v72 = v100;
  v73 = sub_1000082B4();
  sub_100008134();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v101 = 0;
  KeyPath = swift_getKeyPath();
  v102 = 0;
  if (qword_100010678 != -1)
  {
    swift_once();
  }

  v37 = qword_100010AE8;
  v69 = swift_getKeyPath();
  (*(v74 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v77);

  v38 = sub_100008414();
  v39 = swift_getKeyPath();
  v40 = sub_1000083E4();
  DWORD1(v126) = *&v116[3];
  *(&v126 + 1) = *v116;
  HIDWORD(v127) = *&v117[3];
  *(&v127 + 9) = *v117;
  DWORD1(v130) = *(v103 + 3);
  *(&v130 + 1) = v103[0];
  *v134 = *v114;
  *v138 = v112[0];
  *&v143[3] = *(v110 + 3);
  *v143 = v110[0];
  *&v146[3] = *&v115[3];
  *v146 = *v115;
  *v152 = *v116;
  *v156 = *v117;
  *v162 = v103[0];
  v97 = v82;
  v96 = v81;
  *(&v119 + 1) = *v114;
  DWORD1(v119) = *&v114[3];
  HIDWORD(v120) = *(v112 + 3);
  *(&v120 + 9) = v112[0];
  HIDWORD(v122) = *(v110 + 3);
  *(&v122 + 9) = v110[0];
  HIDWORD(v123) = *&v115[3];
  *(&v123 + 9) = *v115;
  *(a2 + 8) = v85;
  *(a2 + 16) = v97;
  *(a2 + 24) = v86;
  *(a2 + 32) = v96;
  *(a2 + 40) = v87;
  v41 = v79 & 1;
  v42 = v76 & 1;
  v95 = v79 & 1;
  v94 = v76 & 1;
  *&v125 = v34;
  *(&v125 + 1) = v36;
  LOBYTE(v126) = 0;
  v44 = v69;
  v43 = KeyPath;
  *(&v126 + 1) = KeyPath;
  *&v127 = 1;
  BYTE8(v127) = 0;
  *&v128 = v69;
  v45 = v37;
  *(&v128 + 1) = v37;
  v46 = v38;
  *&v129 = v38;
  *(&v129 + 1) = v39;
  LOBYTE(v130) = 1;
  *(&v130 + 1) = v40;
  v131 = xmmword_100008CD0;
  *(a2 + 48) = v88;
  *(a2 + 72) = v95;
  *(a2 + 120) = v94;
  v47 = v128;
  v48 = v130;
  v49 = v131;
  *(a2 + 328) = v129;
  *(a2 + 344) = v48;
  *(a2 + 360) = v49;
  v50 = v126;
  v51 = v127;
  *(a2 + 264) = v125;
  *(a2 + 280) = v50;
  *(a2 + 296) = v51;
  *(a2 + 312) = v47;
  *a2 = v92;
  *&v124 = v30;
  *(&v124 + 1) = v32;
  v52 = v124;
  *(a2 + 88) = xmmword_100008CE0;
  v53 = v71;
  v118 = v71;
  v54 = v72;
  v55 = v73;
  LOBYTE(v119) = v72;
  *(&v119 + 1) = v26;
  v56 = v75;
  *&v120 = v75;
  BYTE8(v120) = 0;
  *&v121 = &_swiftEmptyArrayStorage;
  *(&v121 + 1) = v28;
  v57 = v78;
  *&v122 = v78;
  BYTE8(v122) = 0;
  *&v123 = &_swiftEmptyArrayStorage;
  BYTE8(v123) = v73;
  *(a2 + 136) = xmmword_100008CF0;
  *(a2 + 248) = v52;
  v58 = v121;
  *(a2 + 184) = v120;
  *(a2 + 200) = v58;
  v59 = v123;
  *(a2 + 216) = v122;
  *(a2 + 232) = v59;
  v60 = v119;
  *(a2 + 152) = v118;
  v61 = v26;
  v62 = v89;
  v63 = v90;
  *(a2 + 56) = v90;
  *(a2 + 64) = v62;
  *(a2 + 80) = v91;
  v64 = v80;
  v65 = v83;
  *(a2 + 104) = v80;
  *(a2 + 112) = v65;
  v66 = v64;
  *(a2 + 128) = v84;
  *(a2 + 168) = v60;
  v133 = v54;
  *&v134[3] = *&v114[3];
  v135 = v61;
  v136 = v56;
  *&v138[3] = *(v112 + 3);
  v140 = v28;
  v141 = v57;
  v139 = &_swiftEmptyArrayStorage;
  v144 = &_swiftEmptyArrayStorage;
  v145 = v55;
  *&v152[3] = *&v116[3];
  *&v156[3] = *&v117[3];
  v157 = v44;
  v158 = v45;
  v159 = v46;
  v160 = v39;
  v153 = v43;
  v154 = 1;
  v161 = 1;
  *&v162[3] = *(v103 + 3);
  v163 = v40;
  v132[0] = v53;
  v99 = v41;
  v98 = v42;
  v132[1] = 0;
  v137 = 0;
  v142 = 0;
  v147 = v30;
  v148 = v32;
  v149 = v34;
  v150 = v36;
  v151 = 0;
  v155 = 0;
  v164 = xmmword_100008CD0;

  sub_1000075C0(v63, v62, v41);

  sub_1000075C0(v66, v65, v42);

  sub_1000078EC(&v118, &v93, &qword_100010568, &qword_1000090A0);
  sub_100007954(v132, &qword_100010568, &qword_1000090A0);
  sub_1000075B0(v66, v65, v98);

  sub_1000075B0(v63, v62, v99);
}

uint64_t sub_100003860@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  *a1 = sub_100007480;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  return sub_100007578(v10, &v9);
}

double sub_1000038E8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000083C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodoView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_1000075D0(v2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_100007764(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_1000083D4();
  sub_100005504(&qword_100010578, &qword_1000090B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100008D00;
  *(v14 + 32) = sub_1000083F4();
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  *(v14 + 40) = sub_100008414();
  sub_100008454();
  sub_100008464();
  sub_100008434();
  sub_1000081B4();
  v15 = v19[1];
  v16 = sub_1000082C4();
  *a1 = sub_1000077C8;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  result = *&v20;
  v18 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v18;
  *(a1 + 64) = v16;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_100003B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v99 = sub_1000083C4();
  v102 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100005504(&qword_100010590, &qword_1000090C8);
  v5 = __chkstk_darwin(v96);
  v106 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v88 - v7;
  v8 = sub_100005504(&qword_100010570, &qword_1000090A8);
  __chkstk_darwin(v8 - 8);
  v97 = &v88 - v9;
  *&v10 = COERCE_DOUBLE(sub_100008444());
  v104 = v11;
  v105 = *&v10;
  v12 = 0;
  sub_100008144();
  v13 = *&v118;
  v14 = DWORD2(v118);
  v15 = HIDWORD(v118);
  v16 = v119;
  v17 = v120;
  v18 = sub_100008444();
  v20 = v19;
  v21 = 0;
  v22 = *(type metadata accessor for TodoView(0) + 20);
  v100 = a1;
  v23 = *(a1 + v22);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v23 == 1)
  {
    v27 = sub_1000082C4();
    sub_100008134();
    v12 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v21 = v27;
  }

  *&v158 = v13 * 0.5;
  *(&v158 + 1) = v13;
  *v159 = v14;
  *&v159[4] = v15;
  *&v159[8] = v16;
  *&v159[24] = v17;
  *&v159[32] = 256;
  *&v159[40] = v18;
  *&v159[48] = v20;
  LOBYTE(v110) = v23 ^ 1;
  v141 = v158;
  *&v145 = v20;
  v144 = *&v159[32];
  v143 = *&v159[16];
  v142 = *v159;
  v175 = v13 * 0.5;
  v176 = v13;
  *v177 = __PAIR64__(v15, v14);
  *&v177[8] = v16;
  *&v177[24] = v17;
  LOWORD(v178) = 256;
  *(&v178 + 1) = v18;
  *&v179 = v20;
  sub_1000078EC(&v158, v150, &qword_1000105D8, &qword_100009128);
  sub_100007954(&v175, &qword_1000105D8, &qword_100009128);
  v111 = v142;
  v112 = v143;
  v113 = v144;
  v110 = v141;
  *&v114 = v145;
  *(&v114 + 1) = v21;
  *&v115 = v12;
  *(&v115 + 1) = v24;
  *&v116 = v25;
  *(&v116 + 1) = v26;
  LOBYTE(v117) = 0;
  HIBYTE(v117) = v23 ^ 1;
  v120 = v143;
  v121 = v144;
  v118 = v141;
  v119 = v142;
  v122 = v145;
  v123 = v21;
  v124 = v12;
  v125 = v24;
  v126 = v25;
  v127 = v26;
  v128 = 0;
  v129 = v23 ^ 1;
  sub_1000078EC(&v110, &v175, &qword_100010598, &qword_1000090D0);
  sub_100007954(&v118, &qword_100010598, &qword_1000090D0);
  v134 = v114;
  v135 = v115;
  v136 = v116;
  v137 = v117;
  v130 = v110;
  v131 = v111;
  v132 = v112;
  v133 = v113;
  sub_100008444();
  sub_100008154();
  *&v109[3] = *&v109[27];
  *&v109[11] = *&v109[35];
  *&v109[19] = *&v109[43];
  sub_100008274();
  v32 = sub_100008374();
  v34 = v33;
  v36 = v35;
  sub_1000082F4();
  v90 = sub_1000082E4();
  v37 = *(v90 - 8);
  v89 = *(v37 + 56);
  v91 = v37 + 56;
  v38 = v97;
  v89(v97, 1, 1, v90);
  sub_100008324();
  sub_100007954(v38, &qword_100010570, &qword_1000090A8);
  v93 = sub_100008354();
  v101 = v39;
  v94 = v40;
  v95 = v41;

  sub_1000075B0(v32, v34, v36 & 1);

  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = sub_100008284();
  v44 = v103;
  (*(*(v43 - 8) + 104))(v103, v42, v43);
  sub_100008444();
  sub_100008154();
  v45 = (v44 + *(sub_100005504(&qword_1000105A0, &qword_1000090D8) + 36));
  v46 = *&v109[59];
  *v45 = *&v109[51];
  v45[1] = v46;
  v45[2] = *&v109[67];
  v47 = enum case for Color.RGBColorSpace.sRGB(_:);
  v48 = *(v102 + 104);
  v50 = v98;
  v49 = v99;
  v48(v98, enum case for Color.RGBColorSpace.sRGB(_:), v99);
  v51 = sub_100008414();
  KeyPath = swift_getKeyPath();
  v53 = (v44 + *(v96 + 36));
  *v53 = KeyPath;
  v53[1] = v51;
  v102 = sub_1000082A4();
  LOBYTE(v175) = 1;
  sub_1000047A4(v100, v138);
  *&v107[7] = v138[0];
  *&v107[23] = v138[1];
  *&v107[39] = v138[2];
  *&v107[55] = v138[3];
  LODWORD(v100) = LOBYTE(v175);
  LODWORD(v96) = sub_1000082D4();
  sub_100008134();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v158) = 0;
  v88 = swift_getKeyPath();
  LOBYTE(v175) = 0;
  sub_100008304();
  v89(v38, 1, 1, v90);
  v91 = sub_100008324();
  sub_100007954(v38, &qword_100010570, &qword_1000090A8);
  v97 = swift_getKeyPath();
  v48(v50, v47, v49);
  v99 = sub_100008414();
  v62 = v106;
  sub_1000078EC(v44, v106, &qword_100010590, &qword_1000090C8);
  *&v141 = v105;
  *(&v141 + 1) = v104;
  v146 = v134;
  v147 = v135;
  v148 = v136;
  *v149 = v137;
  v142 = v130;
  v143 = v131;
  v144 = v132;
  v145 = v133;
  *&v149[2] = *v109;
  *&v149[18] = *&v109[8];
  *&v149[34] = *&v109[16];
  *&v149[48] = *&v109[23];
  v63 = v134;
  v64 = v92;
  *(v92 + 64) = v133;
  *(v64 + 80) = v63;
  v65 = v148;
  *(v64 + 96) = v147;
  *(v64 + 112) = v65;
  v66 = v142;
  *v64 = v141;
  *(v64 + 16) = v66;
  v67 = v144;
  *(v64 + 32) = v143;
  *(v64 + 48) = v67;
  v68 = *&v149[16];
  *(v64 + 128) = *v149;
  *(v64 + 144) = v68;
  *(v64 + 160) = *&v149[32];
  v69 = v93;
  *(v64 + 176) = *&v149[48];
  *(v64 + 184) = v69;
  v70 = v101;
  *(v64 + 192) = v101;
  LODWORD(v98) = v94 & 1;
  *(v64 + 200) = v94 & 1;
  *(v64 + 208) = v95;
  v71 = sub_100005504(&qword_1000105A8, &qword_100009110);
  sub_1000078EC(v62, v64 + *(v71 + 64), &qword_100010590, &qword_1000090C8);
  v72 = v64 + *(v71 + 80);
  v150[0] = v102;
  v150[1] = 0;
  LOBYTE(v151[0]) = v100;
  *(&v151[3] + 1) = *&v107[48];
  *&v151[4] = *&v107[63];
  *(&v151[1] + 1) = *&v107[16];
  *(&v151[2] + 1) = *&v107[32];
  *(v151 + 1) = *v107;
  LOBYTE(v71) = v96;
  BYTE8(v151[4]) = v96;
  *(&v151[4] + 9) = *v139;
  HIDWORD(v151[4]) = *&v139[3];
  *&v152 = v55;
  *(&v152 + 1) = v57;
  *&v153 = v59;
  *(&v153 + 1) = v61;
  LOBYTE(v154) = 0;
  DWORD1(v154) = *&v140[3];
  *(&v154 + 1) = *v140;
  v73 = v88;
  *(&v154 + 1) = v88;
  *&v155 = 1;
  BYTE8(v155) = 0;
  *(&v155 + 9) = v108[0];
  HIDWORD(v155) = *(v108 + 3);
  v74 = v97;
  *&v156 = v97;
  v75 = v91;
  *(&v156 + 1) = v91;
  v76 = v99;
  v157 = v99;
  v77 = v102;
  v78 = v151[0];
  v79 = v151[2];
  *(v72 + 32) = v151[1];
  *(v72 + 48) = v79;
  *v72 = v77;
  *(v72 + 16) = v78;
  v80 = v151[3];
  v81 = v151[4];
  v82 = v153;
  *(v72 + 96) = v152;
  *(v72 + 112) = v82;
  *(v72 + 64) = v80;
  *(v72 + 80) = v81;
  v83 = v154;
  v84 = v155;
  v85 = v156;
  *(v72 + 176) = v76;
  *(v72 + 144) = v84;
  *(v72 + 160) = v85;
  *(v72 + 128) = v83;
  sub_1000078EC(&v141, &v175, &qword_1000105B0, &qword_100009118);
  v86 = v70;
  LOBYTE(v70) = v98;
  sub_1000075C0(v69, v86, v98);

  sub_1000078EC(v150, &v175, &qword_1000105B8, &qword_100009120);
  sub_100007954(v103, &qword_100010590, &qword_1000090C8);
  *&v159[17] = *&v107[16];
  *&v159[33] = *&v107[32];
  *&v159[49] = *&v107[48];
  v158 = v102;
  v159[0] = v100;
  *&v159[64] = *&v107[63];
  *&v159[1] = *v107;
  v160 = v71;
  *v161 = *v139;
  *&v161[3] = *&v139[3];
  v162 = v55;
  v163 = v57;
  v164 = v59;
  v165 = v61;
  v166 = 0;
  *&v167[3] = *&v140[3];
  *v167 = *v140;
  v168 = v73;
  v169 = 1;
  v170 = 0;
  *v171 = v108[0];
  *&v171[3] = *(v108 + 3);
  v172 = v74;
  v173 = v75;
  v174 = v99;
  sub_100007954(&v158, &qword_1000105B8, &qword_100009120);
  sub_100007954(v106, &qword_100010590, &qword_1000090C8);
  sub_1000075B0(v69, v101, v70);

  v175 = v105;
  v176 = v104;
  v180 = v134;
  v181 = v135;
  v182 = v136;
  v183 = v137;
  *v177 = v130;
  *&v177[16] = v131;
  v178 = v132;
  v179 = v133;
  *(v186 + 14) = *&v109[23];
  v186[0] = *&v109[16];
  v185 = *&v109[8];
  v184 = *v109;
  return sub_100007954(&v175, &qword_1000105B0, &qword_100009118);
}

uint64_t sub_1000047A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v90 = a2;
  v3 = sub_100007E94();
  __chkstk_darwin(v3 - 8);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008044();
  __chkstk_darwin(v6 - 8);
  v83 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008004();
  __chkstk_darwin(v8 - 8);
  v82 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005504(&qword_100010480, &qword_100008E08);
  __chkstk_darwin(v10 - 8);
  v80 = v76 - v11;
  v12 = sub_100005504(&qword_100010488, &qword_100008E10);
  __chkstk_darwin(v12 - 8);
  v78 = v76 - v13;
  v81 = sub_100007FA4();
  __chkstk_darwin(v81);
  v79 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005504(&qword_100010490, &qword_100008E18);
  __chkstk_darwin(v15 - 8);
  v87 = v76 - v16;
  v89 = sub_100008024();
  v17 = *(v89 - 8);
  v18 = __chkstk_darwin(v89);
  v77 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v85 = v76 - v20;
  v21 = sub_100005504(&qword_100010440, &qword_100008DB0);
  v22 = __chkstk_darwin(v21 - 8);
  v86 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v76 - v24;
  v26 = sub_100005504(&qword_100010498, &qword_100008E20);
  __chkstk_darwin(v26 - 8);
  v28 = v76 - v27;
  v95 = sub_100007FE4();
  v29 = *(v95 - 8);
  v30 = __chkstk_darwin(v95);
  v84 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = v76 - v32;
  v34 = (a1 + *(type metadata accessor for TodoView(0) + 24));
  v35 = v34[1];
  v88 = v17;
  if (v35)
  {
    v36 = *v34;
    v37 = v35;
  }

  else
  {
    v37 = 0xE100000000000000;
    v36 = 32;
  }

  v96 = v36;
  v97 = v37;
  sub_1000079B4();

  v38 = sub_100008384();
  v92 = v39;
  v93 = v38;
  v91 = v40;
  v94 = v41;
  v42 = a1;
  sub_1000078EC(a1, v25, &qword_100010440, &qword_100008DB0);
  v43 = sub_100007E74();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v25, 1, v43) == 1)
  {
    sub_100007954(v25, &qword_100010440, &qword_100008DB0);
    (*(v29 + 56))(v28, 1, 1, v95);
LABEL_7:
    v48 = &qword_100010498;
    v49 = &qword_100008E20;
    v50 = v28;
    goto LABEL_8;
  }

  v76[1] = v5;
  sub_100007E54();
  v46 = *(v44 + 8);
  v46(v25, v43);
  v47 = v95;
  if ((*(v29 + 48))(v28, 1, v95) == 1)
  {
    goto LABEL_7;
  }

  (*(v29 + 32))(v33, v28, v47);
  v61 = v86;
  sub_1000078EC(v42, v86, &qword_100010440, &qword_100008DB0);
  if (v45(v61, 1, v43) == 1)
  {
    (*(v29 + 8))(v33, v47);
    sub_100007954(v61, &qword_100010440, &qword_100008DB0);
    v62 = v87;
    (*(v88 + 56))(v87, 1, 1, v89);
  }

  else
  {
    v63 = v33;
    v62 = v87;
    sub_100007E64();
    v46(v61, v43);
    v65 = v88;
    v64 = v89;
    if ((*(v88 + 48))(v62, 1, v89) != 1)
    {
      v66 = v85;
      (*(v65 + 32))(v85, v62, v64);
      v67 = v29;
      v68 = *(v29 + 16);
      v76[0] = v63;
      v68(v84, v63, v95);
      v69 = v78;
      sub_100007EF4();
      v70 = sub_100007F14();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      v71 = v80;
      sub_100007EC4();
      v72 = sub_100007EE4();
      (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
      (*(v65 + 16))(v77, v66, v64);
      sub_100007FF4();
      sub_100008034();
      sub_100007E84();
      sub_100007F34();
      sub_1000054BC(&qword_1000105C8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
      sub_1000054BC(&qword_1000105D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v51 = sub_100008364();
      v52 = v73;
      LOBYTE(v69) = v74;
      v54 = v75;
      (*(v65 + 8))(v85, v64);
      (*(v67 + 8))(v76[0], v95);
      v53 = v69 & 1;
      sub_1000075C0(v51, v52, v53);

      goto LABEL_9;
    }

    (*(v29 + 8))(v63, v95);
  }

  v48 = &qword_100010490;
  v49 = &qword_100008E18;
  v50 = v62;
LABEL_8:
  sub_100007954(v50, v48, v49);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
LABEL_9:
  v55 = v91 & 1;
  v57 = v92;
  v56 = v93;
  sub_1000075C0(v93, v92, v91 & 1);
  v58 = v94;

  sub_100007A08(v51, v52, v53, v54);
  sub_100007A4C(v51, v52, v53, v54);
  LOBYTE(v96) = v55;
  v59 = v90;
  *v90 = v56;
  v59[1] = v57;
  *(v59 + 16) = v55;
  v59[3] = v58;
  v59[4] = v51;
  v59[5] = v52;
  v59[6] = v53;
  v59[7] = v54;
  sub_100007A4C(v51, v52, v53, v54);
  sub_1000075B0(v56, v57, v55);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CalendarThumbnailExtension(0);
  sub_1000054BC(&qword_1000103A8, type metadata accessor for CalendarThumbnailExtension, &unk_100008D5C);
  sub_100008054();
  return 0;
}

uint64_t sub_100005298(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000080F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100005318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000080F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100005388(uint64_t a1)
{
  result = sub_1000080F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000054BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005504(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000556C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000055A4()
{
  result = qword_100010448;
  if (!qword_100010448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010448);
  }

  return result;
}

uint64_t sub_1000055F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100008244();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000565C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008204();
  *a1 = result;
  return result;
}

uint64_t sub_1000056B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000081E4();
  *a1 = result;
  return result;
}

uint64_t sub_100005708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000081C4();
  *a1 = result;
  return result;
}

uint64_t sub_100005760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v153) = a5;
  v164 = a4;
  v165 = a2;
  v157 = a3;
  v163 = a6;
  v139 = sub_100005504(&qword_100010470, &qword_100008DF8);
  v7 = __chkstk_darwin(v139);
  v138 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v134 = v116 - v9;
  v133 = sub_100005504(&qword_100010478, &qword_100008E00);
  __chkstk_darwin(v133);
  v136 = v116 - v10;
  v137 = sub_100007FD4();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v140 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005504(&qword_100010440, &qword_100008DB0);
  __chkstk_darwin(v12 - 8);
  v144 = v116 - v13;
  v151 = sub_100007F54();
  v150 = *(v151 - 1);
  __chkstk_darwin(v151);
  v149 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100007F74();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007E94();
  __chkstk_darwin(v16 - 8);
  v156 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100008044();
  __chkstk_darwin(v18 - 8);
  v161 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100008004();
  __chkstk_darwin(v20 - 8);
  v160 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005504(&qword_100010480, &qword_100008E08);
  __chkstk_darwin(v22 - 8);
  v159 = v116 - v23;
  v24 = sub_100005504(&qword_100010488, &qword_100008E10);
  __chkstk_darwin(v24 - 8);
  v26 = v116 - v25;
  v155 = sub_100007FA4();
  v154 = *(v155 - 8);
  v27 = __chkstk_darwin(v155);
  v145 = v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v152 = v116 - v29;
  v30 = sub_100005504(&qword_100010490, &qword_100008E18);
  __chkstk_darwin(v30 - 8);
  v32 = v116 - v31;
  v33 = sub_100008024();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v158 = v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v162 = v116 - v37;
  v38 = sub_100005504(&qword_100010498, &qword_100008E20);
  v39 = __chkstk_darwin(v38 - 8);
  v143 = v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = v116 - v41;
  v43 = sub_100007FE4();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v141 = v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v116 - v47;
  sub_100007E54();
  v142 = *(v44 + 48);
  if (v142(v42, 1, v43) == 1)
  {
    sub_100007954(v42, &qword_100010498, &qword_100008E20);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53 = 0xE000000000000000;
    v54 = 0xE000000000000000;
    v55 = a1;
    v56 = v164;
    if (!v164)
    {
      goto LABEL_16;
    }

LABEL_9:
    v170 = v157;
    v171 = v56;
    v153 = v50;
    v168 = 13;
    v169 = 0xE100000000000000;
    v166 = 32;
    v167 = 0xE100000000000000;
    sub_100006D08();
    sub_100006D5C();
    v161 = v54;
    v162 = v51;
    sub_1000084D4();

    v170 = v172;
    v171 = v173;
    v168 = 10;
    v169 = 0xE100000000000000;
    v166 = 32;
    v167 = 0xE100000000000000;
    v50 = v153;
    v54 = v161;
    v51 = v162;
    sub_1000084D4();

    v78 = v174;
    v79 = v175;
LABEL_17:
    sub_100007954(v165, &qword_100010440, &qword_100008DB0);
    v95 = sub_100007E74();
    result = (*(*(v95 - 8) + 8))(v55, v95);
    v97 = v163;
    *v163 = v49;
    v97[1] = v52;
    v97[2] = v50;
    v97[3] = v53;
    v97[4] = v78;
    v97[5] = v79;
    v97[6] = v51;
    v97[7] = v54;
    return result;
  }

  v57 = *(v44 + 32);
  v120 = v44 + 32;
  v119 = v57;
  v57(v48, v42, v43);
  sub_100007E64();
  v55 = a1;
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    (*(v44 + 8))(v48, v43);
    sub_100007954(v32, &qword_100010490, &qword_100008E18);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53 = 0xE000000000000000;
    v54 = 0xE000000000000000;
    v56 = v164;
    if (!v164)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v116[1] = v44 + 48;
  v118 = v44;
  v121 = v43;
  v117 = a1;
  v122 = v34;
  v58 = *(v34 + 32);
  v59 = v162;
  v60 = v33;
  v132 = v33;
  v58(v162, v32, v33);
  v125 = sub_100007F14();
  v61 = *(v125 - 8);
  v124 = *(v61 + 56);
  v123 = v61 + 56;
  v124(v26, 1, 1, v125);
  v129 = sub_100007EE4();
  v62 = *(v129 - 8);
  v127 = *(v62 + 56);
  v126 = v62 + 56;
  v63 = v26;
  v127(v159, 1, 1, v129);
  v64 = v34 + 16;
  v128 = *(v34 + 16);
  v128(v158, v59, v60);
  sub_100007FF4();
  sub_100008034();
  sub_100007E84();
  v65 = v145;
  v130 = v26;
  sub_100007F34();
  v66 = v146;
  sub_100007F64();
  v67 = v152;
  sub_100007F94();
  (*(v147 + 8))(v66, v148);
  v69 = v154 + 8;
  v68 = *(v154 + 8);
  v70 = v155;
  v68(v65, v155);
  v49 = sub_100007F84();
  v148 = v71;
  v68(v67, v70);
  v124(v63, 1, 1, v125);
  v127(v159, 1, 1, v129);
  v147 = v64;
  v128(v158, v162, v132);
  v131 = v48;
  sub_100007FF4();
  sub_100008034();
  sub_100007E84();
  v72 = v131;
  sub_100007F34();
  v73 = v149;
  sub_100007F44();
  sub_100007F24();
  (*(v150 + 8))(v73, v151);
  v74 = v65;
  v75 = v155;
  v68(v74, v155);
  v76 = sub_100007F84();
  v53 = v77;
  v154 = v69;
  v151 = v68;
  v68(v67, v75);
  if (v153)
  {
    (*(v122 + 8))(v162, v132);
    (*(v118 + 8))(v72, v121);
    v50 = v76;
    v51 = 0;
    v54 = 0xE000000000000000;
    v55 = v117;
    v52 = v148;
    v56 = v164;
    if (v164)
    {
      goto LABEL_9;
    }

LABEL_16:
    v78 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_17;
  }

  v149 = v53;
  v153 = v76;
  v150 = v49;
  v80 = v132;
  v81 = v144;
  sub_1000078EC(v165, v144, &qword_100010440, &qword_100008DB0);
  v82 = sub_100007E74();
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v81, 1, v82) == 1)
  {
    sub_100007954(v81, &qword_100010440, &qword_100008DB0);
    v84 = v118;
    v85 = v143;
    (*(v118 + 56))(v143, 1, 1, v121);
    v86 = v130;
LABEL_13:
    sub_100007954(v85, &qword_100010498, &qword_100008E20);
    v89 = v80;
    v90 = v162;
LABEL_14:
    sub_100007F04();
    v124(v86, 0, 1, v125);
    v91 = v159;
    sub_100007ED4();
    v127(v91, 0, 1, v129);
    v128(v158, v90, v89);
    sub_100007FF4();
    sub_100008034();
    sub_100007E84();
    v92 = v152;
    sub_100007F34();
    v93 = v131;
    v51 = sub_100007F84();
    v54 = v94;
    v151(v92, v155);
    (*(v122 + 8))(v90, v89);
    (*(v84 + 8))(v93, v121);
    goto LABEL_15;
  }

  v85 = v143;
  sub_100007E54();
  (*(v83 + 8))(v81, v82);
  v87 = v121;
  v88 = v142(v85, 1, v121);
  v84 = v118;
  v86 = v130;
  if (v88 == 1)
  {
    goto LABEL_13;
  }

  v98 = v141;
  v119(v141, v85, v87);
  v99 = v131;
  v90 = v162;
  v89 = v80;
  if ((sub_100008014() & 1) == 0)
  {
    (*(v84 + 8))(v98, v87);
    goto LABEL_14;
  }

  sub_100007F04();
  v124(v86, 0, 1, v125);
  v100 = v159;
  sub_100007ED4();
  v127(v100, 0, 1, v129);
  v101 = v87;
  v128(v158, v90, v89);
  sub_100007FF4();
  sub_100008034();
  sub_100007FB4();
  sub_1000054BC(&qword_1000104B0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_100008474();
  if (result)
  {
    v102 = v98;
    v103 = v87;
    v104 = *(v84 + 16);
    v105 = v134;
    v104(v134, v99, v101);
    v106 = v139;
    v104((v105 + *(v139 + 48)), v102, v103);
    v107 = v138;
    sub_1000078EC(v105, v138, &qword_100010470, &qword_100008DF8);
    v108 = *(v106 + 48);
    v109 = v136;
    v110 = v119;
    v119(v136, v107, v103);
    v111 = *(v84 + 8);
    v111(v107 + v108, v103);
    sub_100006DB0(v105, v107, &qword_100010470, &qword_100008DF8);
    v110(v109 + *(v133 + 36), v107 + *(v106 + 48), v103);
    v111(v107, v103);
    v112 = v140;
    v51 = sub_100007FC4();
    v114 = v113;
    sub_100007954(v109, &qword_100010478, &qword_100008E00);
    (*(v135 + 8))(v112, v137);
    v111(v141, v103);
    (*(v122 + 8))(v162, v132);
    v115 = v103;
    v54 = v114;
    v111(v131, v115);
LABEL_15:
    v55 = v117;
    v49 = v150;
    v52 = v148;
    v50 = v153;
    v53 = v149;
    v56 = v164;
    if (v164)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_100006C10()
{
  result = qword_100010450;
  if (!qword_100010450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010450);
  }

  return result;
}

void sub_100006CA4(void (*a1)(void))
{
  v3 = (*(v1 + 16))();
  a1();
}

unint64_t sub_100006D08()
{
  result = qword_1000104A0;
  if (!qword_1000104A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104A0);
  }

  return result;
}

unint64_t sub_100006D5C()
{
  result = qword_1000104A8;
  if (!qword_1000104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104A8);
  }

  return result;
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005504(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 sub_100006E18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarThumbnailExtension.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarThumbnailExtension.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005504(&qword_100010440, &qword_100008DB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000714C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005504(&qword_100010440, &qword_100008DB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_100007214(uint64_t a1)
{
  sub_1000072A0(319);
  if (v1 <= 0x3F)
  {
    sub_1000072F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000072A0(uint64_t a1)
{
  if (!qword_100010510)
  {
    sub_100007E74();
    v1 = sub_1000084E4();
    if (!v2)
    {
      atomic_store(v1, &qword_100010510);
    }
  }
}

void sub_1000072F8()
{
  if (!qword_100010518)
  {
    v0 = sub_1000084E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100010518);
    }
  }
}

unint64_t sub_100007350()
{
  result = qword_100010550;
  if (!qword_100010550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010550);
  }

  return result;
}

unint64_t sub_1000073DC()
{
  result = qword_100010558;
  if (!qword_100010558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010558);
  }

  return result;
}

uint64_t sub_100007430()
{

  return _swift_deallocObject(v0, 80, 7);
}

void *sub_100007480@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_100008294();
  v5 = sub_100008264();
  sub_100002FD4((v2 + 16), __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_1000078EC(__dst, &v9, &qword_100010560, &qword_100009008);
  sub_100007954(v11, &qword_100010560, &qword_100009008);
  memcpy(__src, __dst, sizeof(__src));
  sub_100008164();
  v7 = v6 * 0.0009765625;
  *a2 = v4;
  *(a2 + 8) = v5;
  result = memcpy((a2 + 16), __src, 0x178uLL);
  *(a2 + 392) = v7;
  return result;
}

uint64_t sub_1000075B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1000075C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodoView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007634()
{
  v1 = *(type metadata accessor for TodoView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100007E74();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100007764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000077C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodoView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_100008164();
  v6 = v5 / 400.0;
  *a1 = sub_1000082A4();
  *(a1 + 8) = v6 * 20.0;
  *(a1 + 16) = 0;
  v7 = sub_100005504(&qword_100010580, &qword_1000090B8);
  sub_100003B4C(v1 + v4, a1 + *(v7 + 44));
  v8 = sub_1000082C4();
  sub_100008134();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_100005504(&qword_100010588, &qword_1000090C0);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1000078EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005504(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000079B4()
{
  result = qword_1000105C0;
  if (!qword_1000105C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105C0);
  }

  return result;
}

uint64_t sub_100007A08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000075C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000075B0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100007A94()
{
  result = qword_1000105E0;
  if (!qword_1000105E0)
  {
    sub_100007B4C(&qword_1000105E8, &qword_100009130);
    sub_100007DC0(&qword_1000105F0, &qword_1000105F8, &qword_100009138, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105E0);
  }

  return result;
}

uint64_t sub_100007B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007B98()
{
  result = qword_100010600;
  if (!qword_100010600)
  {
    sub_100007B4C(&qword_100010608, &qword_100009140);
    sub_100007C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010600);
  }

  return result;
}

unint64_t sub_100007C24()
{
  result = qword_100010610;
  if (!qword_100010610)
  {
    sub_100007B4C(&qword_100010618, &qword_100009148);
    sub_100007CDC();
    sub_100007DC0(&qword_100010650, &qword_100010658, &qword_100009168, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010610);
  }

  return result;
}

unint64_t sub_100007CDC()
{
  result = qword_100010620;
  if (!qword_100010620)
  {
    sub_100007B4C(&qword_100010628, &qword_100009150);
    sub_100007DC0(&qword_100010630, &qword_100010638, &qword_100009158, &protocol conformance descriptor for GeometryReader<A>);
    sub_100007DC0(&qword_100010640, &qword_100010648, &qword_100009160, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010620);
  }

  return result;
}

uint64_t sub_100007DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100007B4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}