uint64_t sub_134A58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v69 = a6;
  v66 = a5;
  v67 = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  v70 = &v64 - v10;
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v11 - 8);
  v71 = &v64 - v12;
  v13 = sub_16BF5C();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = __chkstk_darwin(v15 - 8);
  v68 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v64 - v22;
  __chkstk_darwin(v21);
  v25 = &v64 - v24;
  v26 = type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(0);
  v27 = v26[9];

  *(a1 + v27) = a2;
  v28 = a1;
  v29 = v66;
  [a3 systolic];
  v31 = v30;
  v32 = sub_83A4C(a3);
  v33 = *(v67 + 312);
  v35 = sub_99F0C(v32, v34, v33, v31);

  v36 = v28 + v26[8];
  *v36 = v35;
  *(v36 + 8) = 0;
  [a3 diastolic];
  v38 = v37;
  v39 = sub_83A4C(a3);
  v41 = sub_99F0C(v39, v40, v33, v38);

  v42 = v28 + v26[7];
  *v42 = v41;
  *(v42 + 8) = 0;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v43 = [v29 startDate];
  if (v43)
  {
    v44 = v43;
    sub_16BF3C();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  sub_214C(v23, v45, 1, v13);
  sub_86FC(v23, v25, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v25, 1, v13))
  {
    sub_8748(v25, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v46 = v29;
    v47 = v28;
    v48 = v64;
    v49 = v65;
    (*(v65 + 16))(v64, v25, v13);
    sub_8748(v25, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v50 = v49;
    v28 = v47;
    v29 = v46;
    (*(v50 + 8))(v48, v13);
  }

  sub_16D35C();

  v51 = [v29 endDate];
  if (v51)
  {
    v52 = v51;
    v53 = v68;
    sub_16BF3C();

    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v68;
  }

  sub_214C(v53, v54, 1, v13);
  sub_86FC(v53, v20, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v20, 1, v13))
  {
    sub_8748(v20, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v55 = v64;
    v56 = v65;
    (*(v65 + 16))(v64, v20, v13);
    sub_8748(v20, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v56 + 8))(v55, v13);
  }

  v57 = v70;
  sub_16D34C();

  v58 = sub_16D36C();

  v59 = v26[6];

  *(v28 + v59) = v58;
  sub_86B0(v69, v57, &qword_1C57F8, &unk_172510);
  v60 = sub_16BE9C();
  if (sub_369C(v57, 1, v60) == 1)
  {
    sub_8748(v57, &qword_1C57F8, &unk_172510);
    v61 = sub_16D5CC();
    v62 = v71;
    sub_214C(v71, 1, 1, v61);
  }

  else
  {
    v62 = v71;
    sub_61120(v71);
    (*(*(v60 - 8) + 8))(v57, v60);
  }

  return sub_1E634(v62, v28, &qword_1C5800, &unk_16F510);
}

uint64_t sub_1350BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_12E6B0();
}

uint64_t sub_1351A0(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  (*(*(Model - 8) + 32))(a2, a1, Model);
  return a2;
}

uint64_t sub_135204(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  v4 = sub_8B9C();
  v5(v4);
  return a2;
}

uint64_t sub_135260(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1352B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_135300()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_135338()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_135504()
{
  v3 = v0[89];
  *(v1 - 128) = v0[90];
  *(v1 - 120) = v3;
  v4 = v0[87];
  *(v1 - 112) = v0[88];
  *(v1 - 104) = v4;
}

uint64_t sub_135534()
{
}

void sub_135554()
{
}

uint64_t sub_1355B0()
{
  sub_2D64(v0);
}

void sub_1355E8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1355F4()
{

  return sub_16C75C();
}

void sub_13563C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_13565C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id sub_13569C@<X0>(void *a1@<X8>)
{

  return a1;
}

BOOL sub_1356CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_135718@<X0>(void *a1@<X8>)
{
  *(v1 + 1136) = a1;

  return a1;
}

uint64_t sub_135740()
{
  sub_2D20((v0 + 80), *(v0 + 104));

  return sub_16C2FC();
}

uint64_t sub_1357D4()
{

  return sub_16BE9C();
}

uint64_t sub_13586C()
{
}

uint64_t sub_13588C()
{
}

BOOL LogHealthKitQuantityFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_16C89C();
  sub_42F0();
  v87 = v6;
  __chkstk_darwin(v7);
  sub_4304();
  v86 = v9 - v8;
  sub_CA04();
  sub_16C80C();
  sub_42F0();
  v89 = v11;
  v90 = v10;
  __chkstk_darwin(v10);
  sub_4304();
  v88 = v13 - v12;
  sub_CA04();
  sub_16C83C();
  sub_42F0();
  v84 = v15;
  v85 = v14;
  __chkstk_darwin(v14);
  sub_4304();
  v83 = v17 - v16;
  sub_CA04();
  v18 = sub_16C7DC();
  sub_42F0();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_4304();
  v24 = v23 - v22;
  v25 = sub_16DBEC();
  sub_42F0();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_38634();
  v93 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  v32 = &v76 - v31;
  v33 = sub_16DBBC();
  sub_8B48(v33, v96);
  v92 = v27;
  v34 = *(v27 + 16);
  v81 = v27 + 16;
  v82 = v33;
  v80 = v34;
  v34(v32, v33, v25);
  v35 = *(v20 + 16);
  v91 = a1;
  v35(v24, a1, v18);
  v36 = sub_16DBDC();
  v37 = sub_16E37C();
  v38 = os_log_type_enabled(v36, v37);
  v79 = v4;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v78 = v5;
    v40 = v39;
    v77 = swift_slowAlloc();
    v95[0] = v77;
    *v40 = 136315394;
    v41 = sub_16E7AC();
    v43 = sub_3AB7C(v41, v42, v95);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;
    sub_13A1F4(&qword_1C5998, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    sub_16E68C();
    (*(v20 + 8))(v24, v18);
    v44 = sub_4B364();
    v47 = sub_3AB7C(v44, v45, v46);

    *(v40 + 14) = v47;
    _os_log_impl(&def_259DC, v36, v37, "%s received input:%s", v40, 0x16u);
    v48 = v77;
    swift_arrayDestroy();
    sub_8A2C(v48);
    v49 = v40;
    v5 = v78;
    sub_8A2C(v49);
  }

  else
  {

    (*(v20 + 8))(v24, v18);
  }

  v50 = *(v92 + 8);
  v50(v32, v25);
  v51 = v25;
  v52 = v88;
  sub_16C7CC();
  v53 = sub_13298();
  v55 = v54(v53);
  v56 = enum case for Parse.uso(_:);
  v57 = v93;
  if (v55 == enum case for Parse.uso(_:))
  {
    v58 = sub_13298();
    v59(v58);
    v61 = v83;
    v60 = v84;
    v62 = v85;
    (*(v84 + 32))(v83, v52, v85);
    v63 = v86;
    sub_16C82C();
    sub_10E3DC();

    (*(v87 + 8))(v63, v5);
    (*(v60 + 8))(v61, v62);
  }

  else
  {
    v64 = sub_13298();
    v65(v64);
    v66 = v82;
    sub_8B48(v82, v95);
    v80(v57, v66, v51);
    v67 = sub_16DBDC();
    v68 = sub_16E37C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = sub_8BD8();
      v70 = sub_CA30();
      v94 = v70;
      *v69 = 136315138;
      v71 = sub_16E7AC();
      v73 = sub_3AB7C(v71, v72, &v94);

      *(v69 + 4) = v73;
      _os_log_impl(&def_259DC, v67, v68, "%s rejecting unsupported input", v69, 0xCu);
      sub_2D64(v70);
      sub_8A2C(v70);
      sub_8A2C(v69);

      v74 = v93;
    }

    else
    {

      v74 = v57;
    }

    v50(v74, v51);
  }

  return v55 == v56;
}

uint64_t LogHealthKitQuantityFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LogHealthKitQuantityFlow();
  sub_13A1F4(&qword_1C6C20, v2, type metadata accessor for LogHealthKitQuantityFlow, &protocol conformance descriptor for LogHealthKitQuantityFlow);
  return sub_16C33C();
}

uint64_t LogHealthKitQuantityFlow.execute()()
{
  sub_8A88();
  v1[199] = v0;
  v1[198] = v2;
  v1[200] = *v0;
  v3 = sub_16D63C();
  sub_4348(v3);
  v1[201] = sub_8BC0();
  v4 = sub_16C0BC();
  v1[202] = v4;
  sub_888C(v4);
  v1[203] = v5;
  v1[204] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v1[205] = sub_8C38();
  v1[206] = swift_task_alloc();
  v7 = sub_16BF5C();
  v1[207] = v7;
  sub_888C(v7);
  v1[208] = v8;
  v1[209] = sub_8C38();
  v1[210] = swift_task_alloc();
  v1[211] = swift_task_alloc();
  v1[212] = swift_task_alloc();
  v9 = sub_16DBEC();
  v1[213] = v9;
  sub_888C(v9);
  v1[214] = v10;
  v1[215] = sub_8C38();
  v1[216] = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_1361AC()
{
  v129 = v0;
  v1 = *(v0 + 1712);
  v2 = *(*(v0 + 1592) + 336);
  *(v0 + 1808) = v2;
  v127 = v2;
  sub_16D78C();
  v3 = sub_16DBBC();
  sub_8B48(v3, v0 + 1528);
  v4 = *(v1 + 16);
  v5 = sub_4B364();
  v4(v5);

  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1728);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1704);
  if (v8)
  {
    v120 = *(v0 + 1704);
    v12 = *(v0 + 1592);
    v124 = v3;
    v13 = swift_slowAlloc();
    v121 = v4;
    v14 = swift_slowAlloc();
    v128 = v14;
    *v13 = 136315394;
    v15 = sub_16E7AC();
    v119 = v9;
    v17 = sub_3AB7C(v15, v16, &v128);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_208C0(*(v12 + 16));
    v20 = sub_3AB7C(v18, v19, &v128);

    *(v13 + 14) = v20;
    _os_log_impl(&def_259DC, v6, v7, "Executing %s for datatype: %s", v13, 0x16u);
    swift_arrayDestroy();
    v21 = v14;
    v4 = v121;
    sub_8A2C(v21);
    v22 = v13;
    v3 = v124;
    sub_8A2C(v22);

    v23 = *(v10 + 8);
    v23(v119, v120);
  }

  else
  {

    v23 = *(v10 + 8);
    v23(v9, v11);
  }

  v24 = *(*(v0 + 1592) + 16);
  *(v0 + 1809) = v24;
  if (sub_C1BA4(v24, &off_1B8158))
  {
    v125 = v23;
    v25 = v0 + 608;
    sub_8B48(v3, v0 + 1552);
    v26 = sub_4B364();
    v4(v26);

    v27 = sub_16DBDC();
    v28 = sub_16E36C();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1720);
    v31 = *(v0 + 1704);
    if (v29)
    {
      v32 = sub_8BD8();
      v121 = v30;
      v33 = sub_CA30();
      v128 = v33;
      *v32 = 136315138;
      v34 = sub_208C0(v24);
      v36 = sub_3AB7C(v34, v35, &v128);

      *(v32 + 4) = v36;
      v25 = v0 + 608;
      _os_log_impl(&def_259DC, v27, v28, "Manual logging is not supported for %s. Returning UnsupportedLoggingFlow.", v32, 0xCu);
      sub_2D64(v33);
      sub_8A2C(v33);
      sub_8A2C(v32);

      v37 = v121;
    }

    else
    {

      v37 = v30;
    }

    v43 = (v125)(v37, v31);
    sub_13A3CC(v43, v44, v45, v46, v47, v48, v49, v50, v118, v119, v120, v121, v125, v126, v127);
    sub_C9294(&v27[3], v25);
    sub_C9294(&v27[8], v0 + 648);
    sub_8284(&v27[13], v0 + 688);
    v51 = sub_16C58C();
    sub_8D14(v51);
    v52 = sub_16C57C();
    *(v0 + 872) = v51;
    *(v0 + 880) = &protocol witness table for ResponseFactory;
    *(v0 + 848) = v52;
    type metadata accessor for WellnessLoggingCATsSimple(0);
    sub_16D62C();
    v53 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v54 = sub_16D58C();
    *(v0 + 888) = v53;
    *(v0 + 896) = v54;
    sub_17858();
    sub_16C4EC();
    goto LABEL_23;
  }

  v38 = *(v0 + 1648);
  v39 = *(v0 + 1592);
  v40 = v39[6];
  v41 = v39[7];
  sub_2D20(v39 + 3, v40);
  (*(v41 + 32))(v40, v41);
  v42 = sub_16BD9C();
  if (sub_369C(v38, 1, v42) == 1)
  {
    sub_5CFC8(*(v0 + 1648), &qword_1C5690, &dword_16F320);
  }

  else
  {
    LODWORD(v124) = v24;
    v55 = *(v0 + 1696);
    v56 = *(v0 + 1688);
    v57 = *(v0 + 1664);
    v58 = *(v0 + 1656);
    v59 = *(v0 + 1648);
    v60 = *(v0 + 1632);
    v61 = *(v0 + 1624);
    v122 = *(v0 + 1616);
    sub_16BD7C();
    sub_5DE54();
    (*(v62 + 8))(v59, v42);
    (*(v57 + 32))(v55, v56, v58);
    sub_16C08C();
    v63 = sub_16C03C();
    v64 = (*(v61 + 8))(v60, v122);
    if ((v63 & 1) == 0)
    {
      sub_13A3CC(v64, v65, v66, v67, v68, v69, v70, v71, v118, v119, v120, v122, v124, v126, v127);
      v100 = (v39 + 3);
      v25 = v0 + 312;
      sub_C9294(v100, v0 + 312);
      sub_C9294(v63 + 64, v0 + 352);
      sub_8284(v63 + 104, v0 + 392);
      v101 = sub_16C58C();
      sub_8D14(v101);
      v102 = sub_16C57C();
      *(v0 + 576) = v101;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v102;
      v103 = type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_13A440(v103);
      sub_13A3E8();
      v104 = sub_16D5FC();
      v105 = type metadata accessor for WellnessCATs(0);
      sub_13A440(v105);
      sub_13A3E8();
      v106 = sub_16D58C();
      *(v0 + 592) = v104;
      *(v0 + 600) = v106;
      goto LABEL_22;
    }

    v72 = sub_4B4EC();
    v73(v72);
    v24 = v124;
  }

  v74 = *(v0 + 1640);
  sub_2D20(v39 + 3, v39[6]);
  v75 = sub_4B4EC();
  v76(v75);
  if (sub_369C(v74, 1, v42) != 1)
  {
    LODWORD(v124) = v24;
    v77 = *(v0 + 1680);
    v78 = *(v0 + 1672);
    v79 = *(v0 + 1664);
    v80 = *(v0 + 1656);
    v81 = *(v0 + 1640);
    v82 = *(v0 + 1632);
    v83 = *(v0 + 1624);
    v123 = *(v0 + 1616);
    sub_16BD4C();
    sub_5DE54();
    (*(v84 + 8))(v81, v42);
    (*(v79 + 32))(v77, v78, v80);
    sub_16C08C();
    v85 = sub_16C03C();
    v86 = (*(v83 + 8))(v82, v123);
    if (v85)
    {
      v94 = sub_4B4EC();
      v95(v94);
      LOBYTE(v24) = v124;
      goto LABEL_17;
    }

    sub_13A3CC(v86, v87, v88, v89, v90, v91, v92, v93, v118, v119, v120, v123, v124, v126, v127);
    v107 = (v39 + 3);
    v25 = v0 + 16;
    sub_C9294(v107, v0 + 16);
    sub_C9294(v85 + 64, v0 + 56);
    sub_8284(v85 + 104, v0 + 96);
    v108 = sub_16C58C();
    sub_8D14(v108);
    v109 = sub_16C57C();
    *(v0 + 280) = v108;
    *(v0 + 288) = &protocol witness table for ResponseFactory;
    *(v0 + 256) = v109;
    v110 = type metadata accessor for WellnessLoggingCATsSimple(0);
    sub_13A440(v110);
    sub_13A3E8();
    v111 = sub_16D5FC();
    v112 = type metadata accessor for WellnessCATs(0);
    sub_13A440(v112);
    sub_13A3E8();
    v113 = sub_16D58C();
    *(v0 + 296) = v111;
    *(v0 + 304) = v113;
LABEL_22:
    sub_17858();
    sub_16C4EC();
    v114 = sub_4B4EC();
    v115(v114);
LABEL_23:
    sub_83B2C(v25);
    sub_13A334();

    sub_C9BC();

    return v116();
  }

  sub_5CFC8(*(v0 + 1640), &qword_1C5690, &dword_16F320);
LABEL_17:
  v96 = sub_16D8DC();
  *(v0 + 1736) = v96;
  sub_2440(&qword_1C6828, &qword_1767D0);
  v97 = swift_allocObject();
  *(v0 + 1744) = v97;
  *(v97 + 16) = xmmword_16F530;
  *(v97 + 32) = sub_208C0(v24);
  *(v97 + 40) = v98;
  v99 = swift_task_alloc();
  *(v0 + 1752) = v99;
  *v99 = v0;
  v99[1] = sub_136AC8;

  return HealthKitPersistor.isLoggingAuthorized(for:)(v97, v96);
}

uint64_t sub_136AC8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 1736);
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 1810) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_136BE0()
{
  if ((*(v0 + 1810) & 1) == 0)
  {
    v13 = *(v0 + 1809);
    v14 = *(v0 + 1592);
    sub_16D76C();
    sub_C9294(v14 + 64, v0 + 912);
    sub_8284(v14 + 104, v0 + 952);
    v15 = sub_16C58C();
    sub_8D14(v15);
    v16 = sub_16C57C();
    *(v0 + 1136) = v15;
    *(v0 + 1144) = &protocol witness table for ResponseFactory;
    *(v0 + 1112) = v16;
    type metadata accessor for WellnessCATsSimple(0);
    sub_16D62C();
    v17 = sub_16D5FC();
    type metadata accessor for WellnessCATs(0);
    sub_16D62C();
    v18 = sub_16D58C();
    *(v0 + 904) = v13;
    *(v0 + 1152) = v17;
    *(v0 + 1160) = v18;
    sub_84F0();
    sub_16C4EC();
    sub_8544(v0 + 904);
LABEL_6:
    sub_13A334();

    sub_C9BC();
    sub_13A3AC();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 1592);
  v2 = v1[41];
  *(v0 + 1760) = v2;
  switch(v2)
  {
    case 1:
      sub_2D20(v1 + 3, v1[6]);
      v3 = sub_C9E0();
      v5 = v4(v3);
      if (v6)
      {
        v7 = v1[39];
        v8 = v1[40];
        v9 = v1[41];
        v1[39] = 0;
        v1[40] = 0;
        v1[41] = 2;
        sub_139C6C(v7, v8, v9);
        swift_task_alloc();
        sub_179E8();
        *(v0 + 1800) = v10;
        *v10 = v11;
        v12 = sub_1375FC;
      }

      else
      {
        v34 = v5;
        v35 = *(v0 + 1592);
        v36 = v35[6];
        v37 = v35[7];
        sub_2D20(v35 + 3, v36);
        v38 = (*(v37 + 48))(v36, v37);
        if (v38 == 61)
        {
          v39 = 0;
          v40 = 0;
        }

        else
        {
          v39 = sub_38F88(v38);
        }

        v41 = v1[39];
        v42 = v1[40];
        v43 = v1[41];
        v1[39] = v34;
        v1[40] = v39;
        v1[41] = v40;
        sub_139C6C(v41, v42, v43);
        swift_task_alloc();
        sub_179E8();
        *(v0 + 1792) = v10;
        *v10 = v44;
        v12 = sub_137400;
      }

      v10[1] = v12;
      sub_13A3AC();

      return LogHealthKitQuantityFlow.execute()();
    case 2:
      v21 = *(v0 + 1809);
      sub_8284((v1 + 13), v0 + 1328);
      v22 = sub_16C58C();
      sub_8D14(v22);
      v23 = sub_16C57C();
      type metadata accessor for LogQuantityPromptStrategy();
      v24 = swift_allocObject();
      *(v0 + 1512) = v22;
      *(v0 + 1520) = &protocol witness table for ResponseFactory;
      *(v0 + 1488) = v23;
      *(v24 + 16) = v21;
      memcpy((v24 + 24), (v0 + 1328), 0xA0uLL);
      sub_17464((v0 + 1488), v24 + 184);

      sub_16C73C();
      v25 = sub_2440(&qword_1CAF98, qword_177F10);
      sub_8D14(v25);
      sub_13A1F4(&qword_1CAFA0, 255, type metadata accessor for LogQuantityPromptStrategy, &unk_16F6E8);
      v26 = sub_16C21C();
      v27 = v1[39];
      v28 = v1[40];
      v29 = v1[41];
      v1[39] = 0;
      v1[40] = 0;
      v1[41] = 3;
      sub_139C6C(v27, v28, v29);
      sub_16D75C();
      *(v0 + 1576) = v26;
      sub_98C8(&qword_1CAFA8, &qword_1CAF98, qword_177F10, &protocol conformance descriptor for PromptForValueFlowAsync<A>);

      sub_16C4CC();

      goto LABEL_6;
    case 3:
      sub_16C4BC();
      goto LABEL_6;
    case 4:
      sub_16D6FC();
      sub_8284((v1 + 13), v0 + 1168);
      sub_82E0();
      sub_16C4EC();
      sub_8334(v0 + 1168);
      goto LABEL_6;
    default:
      *(v0 + 1768) = v1[40];
      *(v0 + 1776) = v1[39];

      swift_task_alloc();
      sub_179E8();
      *(v0 + 1784) = v30;
      *v30 = v31;
      v30[1] = sub_1371BC;
      sub_13A3AC();

      return sub_1377F8();
  }
}

uint64_t sub_1371BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *(*v12 + 1760);
  v15 = *v12;
  sub_C990();
  *v16 = v15;

  v17 = sub_C9E0();
  sub_139C6C(v17, v18, v14);
  sub_38A38();
  v28 = *(v13 + 1632);
  sub_38A38();

  sub_841FC();
  sub_8CC0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_137400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *v12;
  sub_C990();
  *v15 = v14;

  sub_38A38();
  v25 = *(v13 + 1632);
  sub_38A38();

  sub_841FC();
  sub_8CC0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1375FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *v12;
  v14 = *v12;
  sub_C990();
  *v15 = v14;

  sub_38A38();
  v25 = *(v13 + 1632);
  sub_38A38();

  sub_841FC();
  sub_8CC0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1377F8()
{
  sub_8A88();
  v1[95] = v0;
  v1[94] = v2;
  v1[93] = v3;
  v1[92] = v4;
  v1[91] = v5;
  v6 = sub_2440(&qword_1CB0E0, &qword_178058);
  sub_4348(v6);
  v1[96] = sub_8BC0();
  v7 = sub_16D63C();
  sub_4348(v7);
  v1[97] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[98] = v8;
  sub_888C(v8);
  v1[99] = v9;
  v1[100] = sub_8C38();
  v1[101] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_137904()
{
  sub_3868C();
  sub_38664();
  v1 = *(v0 + 792);
  v2 = sub_1388A4(*(v0 + 744), *(v0 + 752), *(v0 + 736));
  *(v0 + 816) = v2;
  v3 = sub_16DBBC();
  *(v0 + 824) = v3;
  sub_8B48(v3, v0 + 672);
  *(v0 + 832) = *(v1 + 16);
  *(v0 + 840) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = sub_C9E0();
  v5(v4);
  v6 = v2;
  v7 = sub_16DBDC();
  v8 = sub_16E36C();

  if (os_log_type_enabled(v7, v8))
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v3 = 138412290;
    *(v3 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    sub_88FC(&def_259DC, v11, v12, "Executing intent: %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_38604();
  }

  v13 = *(v0 + 792);
  v14 = *(v0 + 760);

  *(v0 + 848) = *(v13 + 8);
  *(v0 + 856) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15 = sub_4B4EC();
  v16(v15);
  v17 = *(v14 + 264);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 720;
  *(v0 + 24) = sub_137B48;
  v18 = swift_continuation_init();
  *(v0 + 664) = sub_2440(&qword_1CB100, &qword_178080);
  *(v0 + 640) = v18;
  *(v0 + 608) = _NSConcreteStackBlock;
  *(v0 + 616) = 1107296256;
  *(v0 + 624) = sub_53C4;
  *(v0 + 632) = &unk_1BCF88;
  [v17 handleLogQuantity:v6 completion:v0 + 608];
  sub_8CC0();

  return _swift_continuation_await(v19);
}

uint64_t sub_137B48()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_137C1C);
}

uint64_t sub_137C1C()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 800);
  v5 = *(v0 + 784);
  v6 = *(v0 + 720);
  *(v0 + 864) = v6;
  sub_8B48(v3, v0 + 696);
  v2(v4, v3, v5);
  v7 = v6;
  v8 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v8, v4))
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Received intent response: %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v9);
    sub_38604();
  }

  v13 = (*(v0 + 848))(*(v0 + 800), *(v0 + 784));
  v14 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v13);
  if (v14 == 4)
  {
    v29 = [v7 uuidOfLastSavedSample];
    if (v29)
    {
      v30 = v29;
      sub_16BF8C();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v36 = *(v0 + 768);
    v37 = *(v0 + 760);
    v38 = sub_16BFAC();
    sub_214C(v36, v31, 1, v38);
    sub_1394A8(v36, *(v37 + 16), v37 + 24);
    sub_5CFC8(v36, &qword_1CB0E0, &qword_178058);
    sub_16D77C();
    v39 = swift_task_alloc();
    *(v0 + 872) = v39;
    *v39 = v0;
    v39[1] = sub_13807C;

    return sub_138954();
  }

  else
  {
    if (v14 == 102)
    {
      sub_13A394();
      sub_16D70C();
      v22 = v7[16];
      sub_C9294((v7 + 64), v0 + 512);
      v23 = sub_16C58C();
      sub_8D14(v23);
      v24 = sub_16C57C();
      *(v0 + 576) = v23;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v24;
      v25 = type metadata accessor for WellnessLoggingCATsSimple(0);
      sub_8D2C(v25);
      sub_8CB4();
      v26 = sub_16D5FC();
      v27 = type metadata accessor for WellnessCATs(0);
      sub_8D2C(v27);
      sub_8CB4();
      v28 = sub_16D58C();
      *(v0 + 504) = v22;
      *(v0 + 592) = v26;
      *(v0 + 600) = v28;
      sub_83FC8();
      sub_16C4EC();

      sub_8401C(v0 + 504);
    }

    else if (v14 == 101)
    {
      sub_13A394();
      sub_16D76C();
      v15 = v7[16];
      sub_C9294((v7 + 64), v0 + 88);
      sub_8284((v7 + 104), v0 + 128);
      v16 = sub_16C58C();
      sub_8D14(v16);
      v17 = sub_16C57C();
      *(v0 + 312) = v16;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v17;
      v18 = type metadata accessor for WellnessCATsSimple(0);
      sub_8D2C(v18);
      sub_8CB4();
      v19 = sub_16D5FC();
      v20 = type metadata accessor for WellnessCATs(0);
      sub_8D2C(v20);
      sub_8CB4();
      v21 = sub_16D58C();
      *(v0 + 80) = v15;
      *(v0 + 328) = v19;
      *(v0 + 336) = v21;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v32 = *(v0 + 816);
      v33 = *(v0 + 760);
      sub_16D71C();
      sub_8284(v33 + 104, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_13A400();

    sub_C9BC();

    return v34();
  }
}

uint64_t sub_13807C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 880) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_138164()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 816);
  sub_16C4FC();

  sub_13A400();

  sub_C9BC();

  return v3();
}

uint64_t sub_138204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2440(&qword_1CB0F0, &qword_178078);
  sub_42F0();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_38634();
  v94 = v8;
  sub_89B4();
  v10 = __chkstk_darwin(v9);
  v12 = (&v82 - v11);
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = sub_16DBEC();
  sub_42F0();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_38634();
  v84 = v19;
  sub_89B4();
  __chkstk_darwin(v20);
  v86 = &v82 - v21;
  sub_89B4();
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  v25 = sub_16DBBC();
  sub_8B48(v25, v100);
  v26 = *(v17 + 16);
  v91 = v17 + 16;
  v92 = v25;
  v90 = v26;
  v26(v24, v25, v15);
  v96 = v6;
  v97 = v4;
  v27 = *(v6 + 16);
  v93 = a1;
  v88 = v27;
  v27(v14, a1, v4);
  v28 = sub_16DBDC();
  v29 = sub_16E36C();
  v30 = os_log_type_enabled(v28, v29);
  v95 = v17;
  if (v30)
  {
    v31 = sub_8BD8();
    v85 = v15;
    v32 = v31;
    v33 = sub_CA30();
    v83 = v2;
    v87 = v33;
    v99[0] = v33;
    *v32 = 136315138;
    sub_38940(&qword_1CB0F8, &qword_1CB0F0, &qword_178078);
    v34 = v97;
    sub_16E68C();
    v89 = *(v96 + 8);
    v89(v14, v34);
    v35 = sub_4B364();
    v38 = sub_3AB7C(v35, v36, v37);

    *(v32 + 4) = v38;
    v39 = v34;
    _os_log_impl(&def_259DC, v28, v29, "Received response from PromptForValueFlowAsync: %s", v32, 0xCu);
    v40 = v87;
    sub_2D64(v87);
    v2 = v83;
    sub_8A2C(v40);
    v41 = v32;
    v15 = v85;
    sub_8A2C(v41);
  }

  else
  {

    v39 = v97;
    v89 = *(v96 + 8);
    v89(v14, v97);
  }

  v42 = sub_13298();
  v87 = v43;
  (v43)(v42);
  v44 = v93;
  v45 = v88;
  v88(v12, v93, v39);
  v46 = sub_13A3F4();
  v48 = v47(v46);
  v49 = v94;
  if (v48 == enum case for PromptResult.answered<A>(_:))
  {
    v50 = sub_13A3F4();
    v51(v50);
    v52 = v12[1];
    v96 = *v12;
    v84 = v52;
    v83 = v12[2];
    v53 = v92;
    sub_8B48(v92, v99);
    v54 = v86;
    v90(v86, v53, v15);
    v45(v49, v44, v39);
    v55 = v54;
    v56 = sub_16DBDC();
    v57 = sub_16E36C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_8BD8();
      v85 = v15;
      v59 = v58;
      v60 = sub_CA30();
      v98 = v60;
      *v59 = 136315138;
      sub_38940(&qword_1CB0F8, &qword_1CB0F0, &qword_178078);
      v61 = v97;
      v62 = sub_16E68C();
      v63 = v2;
      v65 = v64;
      v89(v49, v61);
      v66 = sub_3AB7C(v62, v65, &v98);
      v2 = v63;

      *(v59 + 4) = v66;
      _os_log_impl(&def_259DC, v56, v57, "PromptForValueFlowAsync returned: %s", v59, 0xCu);
      sub_2D64(v60);
      sub_8A2C(v60);
      sub_8A2C(v59);

      v68 = v85;
      v67 = v86;
    }

    else
    {

      v89(v49, v97);
      v67 = v55;
      v68 = v15;
    }

    (v87)(v67, v68);
    v76 = v2[39];
    v77 = v2[40];
    v78 = v2[41];
    v80 = v84;
    v2[39] = v96;
    v2[40] = v80;
    v79 = v83;
  }

  else
  {
    v69 = sub_13A3F4();
    (v89)(v69);
    v70 = v92;
    sub_8B48(v92, v99);
    v71 = v84;
    v72 = v15;
    v90(v84, v70, v15);
    v73 = sub_16DBDC();
    v74 = sub_16E37C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = sub_1BA38();
      *v75 = 0;
      _os_log_impl(&def_259DC, v73, v74, "PromptForValueFlowAsync did not return the needed values, erroring out", v75, 2u);
      sub_8A2C(v75);
    }

    (v87)(v71, v72);
    v76 = v2[39];
    v77 = v2[40];
    v78 = v2[41];
    v2[39] = 0;
    v2[40] = 0;
    v79 = 4;
  }

  v2[41] = v79;
  return sub_139C6C(v76, v77, v78);
}

id sub_1388A4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_allocWithZone(sub_16D8BC()) init];
  v7 = sub_208C0(*(v3 + 16));
  sub_1260F0(v7, v8, v6);
  [v6 setValue:a3];
  if (a2)
  {
    v9 = sub_16E1AC();
  }

  else
  {
    v9 = 0;
  }

  [v6 setUnits:v9];

  return v6;
}

uint64_t sub_138954()
{
  sub_8A88();
  v1[79] = v0;
  v1[78] = v2;
  v3 = sub_16C46C();
  v1[80] = v3;
  sub_888C(v3);
  v1[81] = v4;
  v1[82] = sub_8C38();
  v1[83] = swift_task_alloc();
  v5 = sub_16C7BC();
  v1[84] = v5;
  sub_888C(v5);
  v1[85] = v6;
  v1[86] = sub_8BC0();
  v7 = sub_16DBEC();
  v1[87] = v7;
  sub_888C(v7);
  v1[88] = v8;
  v1[89] = sub_8C38();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_138AB8()
{
  sub_8A88();
  *(v0 + 360) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 368) = sub_3736C();
  *(v0 + 336) = 4;
  v1 = sub_16C86C();
  sub_2D64((v0 + 336));
  if (v1)
  {
    *(v0 + 760) = *(*(v0 + 632) + 16);
    swift_task_alloc();
    sub_179E8();
    *(v0 + 736) = v2;
    *v2 = v3;
    v2[1] = sub_138C04;

    return sub_5E270();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 744) = v5;
    *v5 = v0;
    v5[1] = sub_1391C4;

    return sub_154788();
  }
}

uint64_t sub_138C04()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_138CE8(uint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 728);
  v3 = *(v1 + 704);
  v4 = *(v1 + 696);
  v5 = *(v1 + 624);
  v6 = sub_16DBBC();
  sub_8B48(v6, v1 + 536);
  v7 = *(v3 + 16);
  v47 = v6;
  v7(v2, v6, v4);
  v8 = v5;
  v9 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v9, v4))
  {
    v10 = *(v1 + 624);
    sub_8BD8();
    v11 = sub_8A44();
    *v8 = 138412290;
    *(v8 + 1) = v10;
    *v11 = v10;
    v12 = v10;
    sub_88FC(&def_259DC, v13, v14, "#LogHealthKitQuantityFlow: In successfulResponse intent response is %@");
    sub_5CFC8(v11, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v11);
    sub_38604();
  }

  v15 = *(v1 + 728);
  v16 = *(v1 + 720);
  v17 = *(v1 + 704);
  v18 = *(v1 + 696);

  v19 = *(v17 + 8);
  v19(v15, v18);
  sub_8B48(v47, v1 + 560);
  v7(v16, v47, v18);

  v20 = sub_16DBDC();
  v21 = sub_16E36C();

  if (os_log_type_enabled(v20, v21))
  {
    v44 = *(v1 + 696);
    v45 = *(v1 + 720);
    v22 = *(v1 + 760);
    v23 = sub_8BD8();
    v46 = v7;
    v24 = sub_CA30();
    v48[0] = v24;
    *v23 = 136315138;
    v25 = sub_208C0(v22);
    v27 = sub_3AB7C(v25, v26, v48);

    *(v23 + 4) = v27;
    _os_log_impl(&def_259DC, v20, v21, "#LogHealthKitQuantityFlow: In successfulResponse identifier is %s", v23, 0xCu);
    sub_2D64(v24);
    v28 = v24;
    v7 = v46;
    sub_8A2C(v28);
    sub_8A2C(v23);

    v19(v45, v44);
  }

  else
  {

    v29 = sub_C9E0();
    (v19)(v29);
  }

  v30 = v19;
  sub_7B09C(v1 + 376, v1 + 456, &qword_1C5ED0, &qword_171090);
  if (*(v1 + 480))
  {
    sub_17464((v1 + 456), v1 + 416);
    sub_C9294(v1 + 416, v1 + 496);
    v31 = swift_allocObject();
    sub_17464((v1 + 496), v31 + 16);
    sub_16C73C();
    v32 = sub_16C1DC();
    sub_8D14(v32);
    *(v1 + 616) = sub_16C1CC();
    v33 = sub_16C32C();
    sub_2D64((v1 + 416));
    sub_5CFC8(v1 + 376, &qword_1C5ED0, &qword_171090);
  }

  else
  {
    v34 = *(v1 + 712);
    v35 = *(v1 + 696);
    sub_5CFC8(v1 + 456, &qword_1C5ED0, &qword_171090);
    sub_8B48(v47, v1 + 584);
    v7(v34, v47, v35);
    v36 = sub_16DBDC();
    v37 = sub_16E37C();
    if (sub_4B3A8(v37))
    {
      v38 = sub_1BA38();
      *v38 = 0;
      _os_log_impl(&def_259DC, v36, v37, "#LogHealthKitQuantityFlow: Invalid response output", v38, 2u);
      sub_8A2C(v38);
    }

    v39 = *(v1 + 712);
    v40 = *(v1 + 696);
    v41 = *(v1 + 632);

    v30(v39, v40);
    sub_16D71C();
    sub_8284(v41 + 104, v1 + 176);
    sub_82E0();
    v33 = sub_16C32C();
    sub_8334(v1 + 176);
    sub_5CFC8(v1 + 376, &qword_1C5ED0, &qword_171090);
  }

  sub_13A36C();

  v42 = *(v1 + 8);

  return v42(v33);
}

uint64_t sub_1391C4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 752) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_1392AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[94];
  if (v13)
  {
    v14 = v12[83];
    v15 = v12[82];
    v16 = v12[81];
    v17 = v12[80];
    v18 = v12[79];
    sub_16C43C();
    (*(v16 + 16))(v15, v14, v17);
    sub_16C75C();
    (*(v16 + 8))(v14, v17);
    v19 = [v13 patternId];
    sub_16E1BC();

    sub_4B4EC();
    sub_16C76C();
    sub_2D20((v18 + 104), *(v18 + 128));
    v12[76] = sub_16C2FC();
    sub_16C28C();
    sub_16C32C();

    v20 = sub_C9E0();
    v21(v20);
  }

  else
  {
    v22 = v12[79];
    sub_16D71C();
    sub_8284(v22 + 104, (v12 + 2));
    sub_82E0();
    sub_16C32C();
    sub_8334((v12 + 2));
  }

  sub_13A36C();

  sub_8CC0();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1394A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v58 = a3;
  v60 = a1;
  v4 = sub_16DBEC();
  sub_42F0();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v54[-v12];
  __chkstk_darwin(v11);
  v15 = &v54[-v14];
  v16 = sub_2440(&qword_1CB0E0, &qword_178058);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  v19 = &v54[-v18];
  v61 = sub_16BFAC();
  sub_42F0();
  v59 = v20;
  __chkstk_darwin(v21);
  sub_38634();
  v56 = v22;
  sub_89B4();
  __chkstk_darwin(v23);
  v25 = &v54[-v24];
  sub_CA04();
  sub_16D21C();
  if (sub_16D20C())
  {
    v55 = a2;
    sub_16D1EC();

    sub_16C31C();

    if (*(&v66 + 1))
    {
      sub_17464(&v65, v71);
      sub_7B09C(v60, v19, &qword_1CB0E0, &qword_178058);
      v26 = v61;
      if (sub_369C(v19, 1, v61) == 1)
      {
        sub_5CFC8(v19, &qword_1CB0E0, &qword_178058);
        v27 = sub_16DBBC();
        sub_8B48(v27, &v65);
        (*(v6 + 16))(v13, v27, v4);
        v28 = sub_16DBDC();
        v29 = sub_16E37C();
        if (sub_4B3A8(v29))
        {
          *sub_1BA38() = 0;
          sub_13A420(&def_259DC, v30, v31, "LogHealthKitQuantityFlow: No uuidOfLastSavedSample. Continuing without registering corrections flow.");
          sub_38604();
        }

        (*(v6 + 8))(v13, v4);
      }

      else
      {
        v38 = v59;
        (*(v59 + 32))(v25, v19, v26);
        v39 = sub_16DBBC();
        sub_8B48(v39, v70);
        v40 = sub_13A3F4();
        v41(v40);
        v42 = sub_16DBDC();
        v43 = sub_16E36C();
        if (sub_4B3A8(v43))
        {
          v44 = sub_1BA38();
          *v44 = 0;
          _os_log_impl(&def_259DC, v42, v43, "LogHealthKitQuantityFlow: Registering corrections flow", v44, 2u);
          v45 = v44;
          v26 = v61;
          sub_8A2C(v45);
        }

        (*(v6 + 8))(v15, v4);
        v46 = sub_2D20((v57 + 272), *(v57 + 296));
        v47 = v56;
        (*(v38 + 16))(v56, v25, v26);
        sub_C9294(v58, v69);
        sub_C9294(v46, v68);
        sub_8284((v46 + 5), &v65);
        v48 = sub_16DAFC();
        v62 = 0u;
        v63 = 0u;
        v64 = 0;
        v49 = objc_allocWithZone(v48);
        v50 = sub_16DAEC();
        v51 = type metadata accessor for LoggingCorrectionsFlow(0);
        v52 = sub_8D14(v51);
        v53 = sub_139DB8(v47, v55, v69, v68, &v65, v50, v52);
        *(&v66 + 1) = v51;
        v67 = sub_13A1F4(&qword_1CB0E8, 255, type metadata accessor for LoggingCorrectionsFlow, &unk_172850);
        *&v65 = v53;
        sub_2D20(v71, v71[3]);
        sub_16C30C();
        (*(v38 + 8))(v25, v26);
        sub_2D64(&v65);
      }

      return sub_2D64(v71);
    }
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
  }

  sub_5CFC8(&v65, &qword_1C6790, &qword_171C70);
  v32 = sub_16DBBC();
  sub_8B48(v32, &v65);
  (*(v6 + 16))(v10, v32, v4);
  v33 = sub_16DBDC();
  v34 = sub_16E37C();
  if (sub_4B3A8(v34))
  {
    *sub_1BA38() = 0;
    sub_13A420(&def_259DC, v35, v36, "LogHealthKitQuantityFlow: No corrections client available. Continuing without registering corrections flow.");
    sub_38604();
  }

  return (*(v6 + 8))(v10, v4);
}

void *LogHealthKitQuantityFlow.deinit()
{
  sub_2D64(v0 + 3);
  sub_2D64(v0 + 8);
  sub_C938((v0 + 13));
  swift_unknownObjectRelease();
  sub_2D64(v0 + 34);
  sub_139C6C(v0[39], v0[40], v0[41]);
  return v0;
}

uint64_t LogHealthKitQuantityFlow.__deallocating_deinit()
{
  LogHealthKitQuantityFlow.deinit();

  return _swift_deallocClassInstance(v0, 337, 7);
}

uint64_t sub_139B38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return LogHealthKitQuantityFlow.execute()();
}

uint64_t sub_139BD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LogHealthKitQuantityFlow();

  return sub_16C37C();
}

uint64_t sub_139C0C(uint64_t (*a1)(void))
{
  a1();

  return sub_16E7AC();
}

uint64_t sub_139C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_139C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_139CAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_139CC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_139D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

void *sub_139D78(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_139DB8(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a6;
  v36 = a5;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v9 = sub_16DBEC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = (a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_kWellnessFlowPluginIdentifier);
  *v15 = 0xD000000000000021;
  v15[1] = 0x800000000017F4D0;
  v16 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
  v17 = sub_16C7DC();
  sub_214C(a7 + v16, 1, 1, v17);
  v18 = sub_16DBBC();
  swift_beginAccess();
  v32 = *(v10 + 16);
  v32(v14, v18, v9);
  v19 = sub_16DBDC();
  v20 = sub_16E36C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&def_259DC, v19, v20, "Initializing LoggingCorrectionsFlow", v21, 2u);
  }

  v33 = *(v10 + 8);
  v33(v14, v9);
  v22 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_uuidOfLastSavedSample;
  v23 = sub_16BFAC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a7 + v22, v39, v23);
  *(a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleHKIdentifier) = a2;
  sub_C9294(v38, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent);
  sub_C9294(v37, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig);
  sub_8284(v36, a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider);
  *(a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler) = v35;
  *(a7 + 64) = 0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 16) = 0u;
  v25 = a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  strcpy((a7 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue), "initial value");
  *(v25 + 14) = -4864;
  v26 = enum case for CorrectionsExitValue.failure(_:);
  v27 = sub_16C71C();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  swift_beginAccess();
  v32(v34, v18, v9);
  swift_unknownObjectRetain();
  v28 = sub_16DBDC();
  v29 = sub_16E36C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&def_259DC, v28, v29, "Initialized LoggingCorrectionsFlow", v30, 2u);
  }

  sub_C938(v36);
  sub_2D64(v37);
  sub_2D64(v38);
  (*(v24 + 8))(v39, v23);
  v33(v34, v9);
  return a7;
}

uint64_t sub_13A1F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_13A23C()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_13A274()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

uint64_t sub_13A334()
{
}

uint64_t sub_13A36C()
{
}

void sub_13A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{

  sub_16D70C();
}

uint64_t sub_13A400()
{
}

void sub_13A420(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_13A440(uint64_t a1)
{

  return sub_16D62C();
}

uint64_t sub_13A458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16E20C();
    v5 = v4;
    v6 = v3 == 1667720548 && v4 == 0xE400000000000000;
    if (v6 || (a1 = v3, (sub_13A768(1667720548, 0xE400000000000000) & 1) != 0) || (a1 == 6533314 ? (v7 = v5 == 0xA300000000000000) : (v7 = 0), v7 || (sub_13A768(6533314, 0xA300000000000000) & 1) != 0))
    {
      a1 = 0x737569736C6563;
    }

    else
    {
      v9 = a1 == 1718052196 && v5 == 0xE400000000000000;
      if (v9 || (sub_13A768(1718052196, 0xE400000000000000) & 1) != 0 || (a1 == 6729922 ? (v10 = v5 == 0xA300000000000000) : (v10 = 0), v10 || (sub_13A768(6729922, 0xA300000000000000) & 1) != 0))
      {
        a1 = 0x65686E6572686166;
      }

      else
      {
        v11 = a1 == 107 && v5 == 0xE100000000000000;
        if (v11 || (sub_13A768(107, 0xE100000000000000) & 1) != 0)
        {
          a1 = 0x6E69766C656BLL;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_13A5C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = 1952802150;
  v5 = a1 == 29798 && a2 == 0xE200000000000000;
  if (!v5 && (sub_13A748(29798) & 1) == 0)
  {
    v4 = 0x736568636E69;
    v6 = a1 == 28265 && a2 == 0xE200000000000000;
    if (!v6 && (sub_13A748(28265) & 1) == 0)
    {
      v4 = 0x7364726179;
      v7 = a1 == 25721 && a2 == 0xE200000000000000;
      if (!v7 && (sub_13A748(25721) & 1) == 0)
      {
        v4 = 0x73656C696DLL;
        v8 = a1 == 26989 && a2 == 0xE200000000000000;
        if (!v8 && (sub_13A748(26989) & 1) == 0)
        {
          v4 = 0x73726574656DLL;
          v10 = a1 == 109 && a2 == 0xE100000000000000;
          if (!v10 && (sub_16E6BC() & 1) == 0)
          {
            v4 = 0x74656D69746E6563;
            v11 = a1 == 28003 && a2 == 0xE200000000000000;
            if (!v11 && (sub_13A748(28003) & 1) == 0)
            {

              return a1;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_13A748(uint64_t a1)
{

  return sub_16E6BC();
}

uint64_t sub_13A768(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

Swift::OpaquePointer *commonWellnessGuards.unsafeMutableAddressor()
{
  if (qword_1C55F0 != -1)
  {
    swift_once();
  }

  return &commonWellnessGuards;
}

uint64_t sub_13A7D4()
{
  v0 = sub_16C70C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440(&qword_1CB108, &qword_178088);
  sub_16C2CC();
  v4 = swift_allocObject();
  v4[1] = xmmword_1712E0;
  sub_16C6FC();
  sub_16C2BC();
  (*(v1 + 8))(v3, v0);
  result = sub_16C2AC();
  commonWellnessGuards._rawValue = v4;
  return result;
}

__n128 sub_13A960(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13A974(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13A9B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_13AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v22;
  a20 = v23;
  v169 = v24;
  v170 = v20;
  v26 = v25;
  v168 = v27;
  v29 = v28;
  v30 = sub_2440(&qword_1CB128, &qword_178128);
  v31 = sub_4348(v30);
  __chkstk_darwin(v31);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v32);
  sub_458D8();
  sub_45590(v33);
  v34 = sub_16CFBC();
  v35 = sub_12F4C(v34, &a18);
  v167 = v36;
  __chkstk_darwin(v35);
  sub_12FD4();
  sub_130A0(v37);
  v38 = sub_2440(&qword_1C5690, &dword_16F320);
  v39 = sub_4348(v38);
  __chkstk_darwin(v39);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v40);
  sub_458D8();
  sub_45590(v41);
  v42 = sub_16BF5C();
  sub_42F0();
  v178 = v43;
  __chkstk_darwin(v44);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v45);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v46);
  sub_458D8();
  v179 = v47;
  sub_CA04();
  v48 = sub_16DBEC();
  sub_42F0();
  v50 = v49;
  __chkstk_darwin(v51);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v52);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v53);
  sub_8AC0();
  v171 = v54;
  sub_89B4();
  __chkstk_darwin(v55);
  v57 = &v154 - v56;
  v58 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v59 = *(v50 + 16);
  v176 = v50 + 16;
  v177 = v58;
  v175 = v59;
  v59(v57, v58, v48);

  v60 = sub_16DBDC();
  sub_16E36C();
  sub_140608();
  v61 = os_log_type_enabled(v60, v21);
  v172 = v48;
  v173 = v29;
  v164 = v50;
  v163 = v26;
  if (v61)
  {
    sub_8BD8();
    v62 = sub_4B33C();
    v181 = v62;
    *v50 = 136315138;
    v180 = v29;
    sub_16D1DC();
    v63 = v42;
    sub_140078();
    sub_13FFD0(v64, v65, &protocol conformance descriptor for DateTime);
    v66 = sub_16E68C();
    v68 = sub_3AB7C(v66, v67, &v181);

    *(v50 + 4) = v68;
    v42 = v63;
    v29 = v173;
    _os_log_impl(&def_259DC, v60, v21, "given date before conversion: %s", v50, 0xCu);
    sub_2D64(v62);
    sub_8A2C(v62);
    v48 = v172;
    sub_8A2C(v50);
  }

  v174 = *(v50 + 8);
  v174(v57, v48);
  v69 = v179;
  sub_13B45C();
  v70 = v177;
  sub_385D8();
  swift_beginAccess();
  v71 = v171;
  v175(v171, v70, v48);
  v72 = *(v178 + 16);
  v73 = v161;
  sub_140590();
  v72();
  v74 = v162;
  (v72)(v162, v69, v42);
  v75 = v71;
  v76 = sub_16DBDC();
  v77 = sub_16E36C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = sub_CA60();
    v156 = swift_slowAlloc();
    v180 = v156;
    *v78 = 136315394;
    sub_13FFD0(&qword_1C96B0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    HIDWORD(v155) = v77;
    v79 = sub_16E68C();
    v80 = v42;
    v82 = v81;
    v83 = *(v178 + 8);
    v83(v73, v80);
    sub_3AB7C(v79, v82, &v180);
    sub_1403CC();

    *(v78 + 4) = v79;
    *(v78 + 12) = 2080;
    sub_8427C();
    sub_16E68C();
    v83(v74, v80);
    v84 = sub_38B40();
    v87 = sub_3AB7C(v84, v85, v86);
    v29 = v173;

    *(v78 + 14) = v87;
    _os_log_impl(&def_259DC, v76, BYTE4(v155), "now date: %s , given date: %s", v78, 0x16u);
    v88 = v156;
    swift_arrayDestroy();
    sub_8A2C(v88);
    v89 = v83;
    sub_8A2C(v78);

    v90 = v164;
    v91 = v171;
  }

  else
  {

    v92 = *(v178 + 8);
    v92(v74, v42);
    v89 = v92;
    v92(v73, v42);
    v90 = v164;
    v91 = v75;
  }

  v93 = v172;
  v174(v91, v172);
  if ((sub_16BEFC() & 1) == 0)
  {
    sub_385D8();
    swift_beginAccess();
    v119 = sub_1403A8(&v183);
    v120(v119);
    v121 = sub_16DBDC();
    v122 = sub_16E36C();
    if (sub_387B0(v122))
    {
      v123 = sub_1BA38();
      sub_1BA50(v123);
      sub_4593C(&def_259DC, v124, v125, "using .future strategy");
      v126 = v29;
      v29 = v173;
      sub_8A2C(v126);
    }

    v127 = sub_140520();
    v128(v127);
    v129 = sub_1401E8();
    v131 = v130(v129);
    sub_1404CC(v131, v168 & 1, v132, v133, v134, v135, v136, v137, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    (*(v90 + 8))(v76, v93);
    if (sub_16D16C())
    {
      sub_1403FC();
      sub_16D11C();

      sub_16D10C();
      v138 = sub_C98CC();
      sub_8B20(v138, v139, v140);
      if (!v116)
      {
        v141 = sub_14023C();
        v89(v141);
        sub_8748(v29, &qword_1CB128, &qword_178128);
        v118 = &a15;
        goto LABEL_17;
      }
    }

    else
    {
      sub_16D10C();
      sub_1402D0(&a9);
      sub_8AB4();
      sub_214C(v148, v149, v150, v151);
    }

    sub_8748(v29, &qword_1CB128, &qword_178128);
    v152 = v166;
    sub_13F864(v166, v169);
    sub_8748(v152, &qword_1C5690, &dword_16F320);
    v153 = sub_14023C();
    v89(v153);
    goto LABEL_22;
  }

  sub_385D8();
  swift_beginAccess();
  v94 = sub_1403A8(&v182);
  v95(v94);
  v96 = sub_16DBDC();
  v97 = sub_16E36C();
  if (sub_387B0(v97))
  {
    v98 = sub_1BA38();
    sub_1BA50(v98);
    sub_4593C(&def_259DC, v99, v100, "using .past strategy");
    v101 = v29;
    v29 = v173;
    sub_8A2C(v101);
  }

  v102 = sub_140520();
  v103(v102);
  v104 = sub_1401E8();
  v106 = v105(v104);
  sub_1404CC(v106, v168 & 1, v107, v108, v109, v110, v111, v112, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
  (*(v90 + 8))(v76, v93);
  if (!sub_16D16C())
  {
    sub_16D10C();
    sub_1402D0(&v184);
    sub_8AB4();
    sub_214C(v142, v143, v144, v145);
    goto LABEL_19;
  }

  sub_1403FC();
  sub_16D11C();

  sub_16D10C();
  v113 = sub_C98CC();
  sub_8B20(v113, v114, v115);
  if (v116)
  {
LABEL_19:
    sub_8748(v29, &qword_1CB128, &qword_178128);
    v146 = v165;
    sub_13F864(v165, v169);
    sub_8748(v146, &qword_1C5690, &dword_16F320);
    v147 = sub_14023C();
    v89(v147);
    goto LABEL_22;
  }

  v117 = sub_14023C();
  v89(v117);
  sub_8748(v29, &qword_1CB128, &qword_178128);
  v118 = &a14;
LABEL_17:
  sub_125F78(*(v118 - 32), v169);
LABEL_22:
  sub_45924();
}

void sub_13B45C()
{
  sub_4597C();
  v112 = v0;
  v115 = v1;
  v105 = v2;
  sub_16BF5C();
  sub_42F0();
  v113 = v4;
  v114 = v3;
  __chkstk_darwin(v3);
  sub_12FD4();
  v111 = v5;
  sub_CA04();
  v6 = sub_16C0BC();
  sub_42F0();
  v109 = v7;
  __chkstk_darwin(v8);
  sub_38634();
  v106 = v9;
  sub_89B4();
  __chkstk_darwin(v10);
  sub_458D8();
  v107 = v11;
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v12);
  sub_433C();
  __chkstk_darwin(v13);
  v108 = &v99 - v14;
  sub_CA04();
  v15 = sub_16D0CC();
  sub_42F0();
  v117 = v16;
  __chkstk_darwin(v17);
  sub_12FD4();
  v99 = v18;
  v102 = sub_2440(&qword_1CB140, &qword_178140);
  sub_8B38();
  sub_433C();
  __chkstk_darwin(v19);
  v21 = &v99 - v20;
  v22 = sub_2440(&qword_1CB148, &qword_178148);
  v23 = sub_4348(v22);
  __chkstk_darwin(v23);
  sub_38634();
  v101 = v24;
  sub_89B4();
  v26 = __chkstk_darwin(v25);
  v28 = &v99 - v27;
  __chkstk_darwin(v26);
  sub_458D8();
  v116 = v29;
  v30 = sub_2440(&qword_1CB128, &qword_178128);
  v31 = sub_4348(v30);
  __chkstk_darwin(v31);
  sub_887C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  v38 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v38);
  sub_433C();
  __chkstk_darwin(v39);
  v40 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v40);
  sub_433C();
  __chkstk_darwin(v41);
  sub_140318();
  sub_16BE2C();
  sub_42F0();
  v103 = v43;
  v104 = v42;
  __chkstk_darwin(v42);
  sub_4304();
  v46 = v45 - v44;
  sub_8AB4();
  v110 = v6;
  sub_214C(v47, v48, v49, v6);
  sub_16C0EC();
  sub_8AB4();
  sub_214C(v50, v51, v52, v53);
  sub_16BE1C();
  if (!sub_16D16C())
  {
    sub_16D10C();
    sub_8AB4();
    sub_214C(v59, v60, v61, v62);
    goto LABEL_6;
  }

  sub_16D11C();

  v54 = sub_16D10C();
  v55 = sub_C98CC();
  sub_8B20(v55, v56, v54);
  if (v77)
  {
LABEL_6:
    if (sub_16D1BC() && (v63 = sub_16D09C(), v65 = v64, , (v65 & 1) == 0))
    {
      if (v63 == 12)
      {
        v66 = 0;
      }

      else
      {
        v66 = v63;
      }

      v100 = v66;
    }

    else
    {
      v100 = 0;
    }

    v67 = sub_16D1BC();
    v68 = v116;
    if (v67)
    {
      sub_16D0DC();
    }

    else
    {
      sub_8AB4();
      sub_214C(v69, v70, v71, v15);
    }

    (*(v117 + 104))(v28, enum case for DateTime.Time.Meridiem.pm(_:), v15);
    sub_388E4();
    sub_214C(v72, v73, v74, v15);
    v75 = *(v102 + 48);
    sub_74678(v68, v21, &qword_1CB148, &qword_178148);
    sub_74678(v28, &v21[v75], &qword_1CB148, &qword_178148);
    sub_8B20(v21, 1, v15);
    if (v77)
    {
      sub_140620(v28);
      sub_140620(v68);
      sub_8B20(&v21[v75], 1, v15);
      if (v77)
      {
        sub_8748(v21, &qword_1CB148, &qword_178148);
        goto LABEL_27;
      }
    }

    else
    {
      v76 = v101;
      sub_74678(v21, v101, &qword_1CB148, &qword_178148);
      sub_8B20(&v21[v75], 1, v15);
      if (!v77)
      {
        v78 = v117;
        (*(v117 + 32))(v99, &v21[v75], v15);
        sub_13FFD0(&qword_1CB150, &type metadata accessor for DateTime.Time.Meridiem, &protocol conformance descriptor for DateTime.Time.Meridiem);
        LODWORD(v102) = sub_16E19C();
        v79 = *(v78 + 8);
        v80 = sub_1403C0();
        v79(v80);
        sub_140590();
        sub_8748(v81, v82, v83);
        sub_140590();
        sub_8748(v84, v85, v86);
        (v79)(v101, v15);
        sub_140590();
        sub_8748(v87, v88, v89);
        if ((v102 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_27:
        if (__OFADD__(v100, 12))
        {
          __break(1u);
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      sub_140620(v28);
      sub_140620(v116);
      (*(v117 + 8))(v76, v15);
    }

    sub_8748(v21, &qword_1CB140, &qword_178140);
    goto LABEL_28;
  }

  sub_74678(v37, v34, &qword_1CB128, &qword_178128);
  v57 = *(v54 - 8);
  v58 = (*(v57 + 88))(v34, v54);
  if (v58 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.afternoon(_:))
  {
    goto LABEL_28;
  }

  if (v58 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.evening(_:))
  {
    if (v58 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.morning(_:))
    {
LABEL_28:
      sub_14059C();
      sub_16BDCC();
      sub_8748(v37, &qword_1CB128, &qword_178128);
      goto LABEL_29;
    }

    if (v58 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.night(_:))
    {
      (*(v57 + 8))(v34, v54);
      goto LABEL_6;
    }
  }

  sub_8748(v37, &qword_1CB128, &qword_178128);
  sub_14059C();
  sub_16BDCC();
LABEL_29:
  v90 = sub_16D1BC();
  v91 = v108;
  if (v90)
  {
    sub_16D0AC();
  }

  sub_14059C();
  sub_16BDFC();
  if (sub_16D1BC())
  {
    sub_16D0BC();
  }

  sub_14059C();
  sub_16BE0C();
  v92 = v107;
  sub_16C08C();
  v93 = v106;
  sub_16C08C();
  v94 = v111;
  sub_16C02C();
  v95 = v110;
  v96 = *(v109 + 8);
  v96(v93, v110);
  sub_16C05C();
  v98 = v113;
  v97 = v114;
  (*(v113 + 8))(v94, v114);
  v96(v92, v95);
  sub_8B20(v91, 1, v97);
  if (!v77)
  {
    (*(v103 + 8))(v46, v104);
    (*(v98 + 32))(v105, v91, v97);
    sub_45924();
    return;
  }

LABEL_41:
  __break(1u);
}

void sub_13BE60()
{
  sub_4597C();
  v2 = sub_2440(&qword_1CB120, &qword_178120);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v58 = &v57 - v4;
  v5 = sub_2440(&qword_1CB128, &qword_178128);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v57 - v7;
  v9 = sub_2440(&qword_1CB130, &qword_178130);
  sub_4348(v9);
  sub_433C();
  __chkstk_darwin(v10);
  v59 = &v57 - v11;
  v12 = sub_2440(&qword_1CB138, &qword_178138);
  sub_4348(v12);
  sub_433C();
  __chkstk_darwin(v13);
  v14 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_4348(v14);
  sub_433C();
  __chkstk_darwin(v15);
  sub_140318();
  v16 = sub_16CC6C();
  sub_42F0();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_887C();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_14057C();
  v60 = sub_16CB5C();
  if (sub_16CB9C())
  {
    v24 = sub_16CA2C();

    if (v24)
    {
LABEL_3:

      goto LABEL_12;
    }
  }

  if (sub_16CB9C())
  {
    v25 = sub_16CA5C();

    if (v25)
    {

      v26 = sub_16C9FC();

      if (v26)
      {
        sub_16CC5C();

        sub_8B20(v1, 1, v16);
        if (!v27)
        {
          (*(v18 + 32))(v0, v1, v16);
          (*(v18 + 104))(v22, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:), v16);
          v31 = sub_1403C0();
          v33 = sub_121754(v31, v32);
          v34 = *(v18 + 8);
          v34(v22, v16);
          if (v33)
          {
            sub_16D05C();
            sub_8AB4();
            sub_214C(v35, v36, v37, v38);
            sub_16D17C();
            sub_8AB4();
            sub_214C(v39, v40, v41, v42);
            v43 = enum case for DateTime.DateTimeRange.DefinedDateTimeRange.entireYear(_:);
            v44 = sub_16D10C();
            sub_8B38();
            (*(v45 + 104))(v8, v43, v44);
            sub_388E4();
            sub_214C(v46, v47, v48, v44);
            v49 = enum case for DateTime.Qualifier.last(_:);
            v50 = sub_16D1CC();
            sub_8B38();
            (*(v51 + 104))(v58, v49, v50);
            sub_388E4();
            sub_214C(v52, v53, v54, v50);
            v55 = sub_16D14C();
            sub_8D14(v55);
            sub_385D8();
            sub_16D13C();
            v56 = sub_16D1DC();
            sub_8D14(v56);
            sub_16D03C();

            v34(v0, v16);
            goto LABEL_12;
          }

          v34(v0, v16);
          goto LABEL_3;
        }
      }

      else
      {

        sub_8AB4();
        sub_214C(v28, v29, v30, v16);
      }

      sub_8748(v1, &qword_1C5680, &unk_16F310);
    }
  }

LABEL_12:
  sub_45924();
}

void sub_13C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v21;
  a20 = v22;
  v187 = v23;
  LODWORD(v186) = v24;
  v192 = v26;
  v193 = v25;
  v168 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_8B38();
  __chkstk_darwin(v27);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v28);
  sub_458D8();
  sub_45590(v29);
  sub_16DBEC();
  sub_42F0();
  v197 = v31;
  v198 = v30;
  __chkstk_darwin(v30);
  sub_38634();
  v194 = v32;
  sub_89B4();
  __chkstk_darwin(v33);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v34);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v35);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v36);
  sub_458D8();
  sub_130A0(v37);
  v38 = sub_2440(&qword_1CB110, &unk_178110);
  v39 = sub_12F4C(v38, &v201);
  v173 = v40;
  __chkstk_darwin(v39);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v41);
  sub_458D8();
  v196 = v42;
  sub_CA04();
  v43 = sub_16CFBC();
  v44 = sub_12F4C(v43, &a15);
  v184 = v45;
  __chkstk_darwin(v44);
  sub_12FD4();
  sub_45590(v46);
  v47 = sub_16CFCC();
  v48 = sub_12F4C(v47, &a12);
  v182 = v49;
  __chkstk_darwin(v48);
  sub_12FD4();
  sub_45590(v50);
  sub_16CFEC();
  sub_42F0();
  v190 = v52;
  v191 = v51;
  __chkstk_darwin(v51);
  sub_12FD4();
  v195 = v53;
  sub_CA04();
  v54 = sub_16BF5C();
  v55 = sub_4348(v54);
  __chkstk_darwin(v55);
  sub_12FD4();
  sub_45590(v56);
  v57 = sub_16C0BC();
  v58 = sub_4348(v57);
  __chkstk_darwin(v58);
  sub_12FD4();
  sub_45590(v59);
  v60 = sub_16CFFC();
  v61 = sub_12F4C(v60, &v202);
  v178 = v62;
  __chkstk_darwin(v61);
  sub_12FD4();
  sub_45590(v63);
  v64 = sub_16C0EC();
  v65 = sub_4348(v64);
  __chkstk_darwin(v65);
  sub_4304();
  sub_140318();
  v66 = sub_16BFFC();
  v67 = sub_4348(v66);
  __chkstk_darwin(v67);
  sub_887C();
  v69 = __chkstk_darwin(v68);
  v176 = &v166 - v70;
  __chkstk_darwin(v69);
  v189 = sub_16CFAC();
  sub_42F0();
  v188 = v71;
  __chkstk_darwin(v72);
  sub_4304();
  v75 = v74 - v73;
  sub_16CF9C();
  v76 = sub_1402DC();
  sub_2D20(v76, v77);
  sub_140534();
  sub_16C3DC();
  sub_2D20(v20, v20[3]);
  sub_16C3DC();
  sub_2D20(v20, v20[3]);
  v78 = v196;
  sub_16C3DC();
  sub_16C0DC();
  (*(v178 + 104))(v177, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v179);
  sub_16C08C();
  sub_14024C();
  sub_16BF4C();
  v79 = sub_16D01C();
  sub_8D14(v79);
  v80 = v78;
  v81 = v195;
  v82 = sub_16D00C();
  sub_140554();
  v83(v181);
  (*(v184 + 16))(v183, v187, v185);
  sub_16D10C();
  sub_16D1DC();
  sub_1401C4();
  sub_13FFD0(v84, v85, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  sub_16E14C();
  sub_16CFDC();
  sub_16CF8C();
  v86 = v172;
  v87 = v173;
  v88 = v175;
  v89 = v174;
  (*(v173 + 16))(v175, v80, v174);
  v90 = (*(v87 + 88))(v88, v89);
  v180 = v82;
  if (v90 == enum case for Recommendation.confident<A>(_:))
  {
    v186 = v75;
    v91 = v175;
    v92 = sub_38B40();
    v93(v92);
    v94 = *v91;
    v95 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v96 = v198;
    v97 = *(v197 + 16);
    v98 = v86;
    v193 = v197 + 16;
    v187 = v97;
    (v97)(v86, v95, v198);

    v99 = sub_16DBDC();
    v100 = sub_16E36C();
    v194 = v94;

    if (os_log_type_enabled(v99, v100))
    {
      v101 = sub_8BD8();
      v102 = sub_CA30();
      v200 = v102;
      *v101 = 136315138;
      v199[1] = v194;
      sub_140078();
      sub_13FFD0(v103, v104, &protocol conformance descriptor for DateTime);
      v105 = sub_16E68C();
      v107 = sub_3AB7C(v105, v106, &v200);

      *(v101 + 4) = v107;
      _os_log_impl(&def_259DC, v99, v100, "Recommendation: %s", v101, 0xCu);
      sub_2D64(v102);
      v108 = v102;
      v96 = v198;
      sub_8A2C(v108);
      sub_8A2C(v101);
    }

    v109 = *(v197 + 8);
    v109(v98, v96);
    sub_385D8();
    swift_beginAccess();
    v110 = v170;
    v111 = sub_1402DC();
    v187(v111);

    v112 = sub_16DBDC();
    v113 = sub_16E36C();

    v114 = os_log_type_enabled(v112, v113);
    v115 = v171;
    if (v114)
    {
      v116 = sub_8BD8();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      v118.super.isa = sub_16D19C().super.isa;
      *(v116 + 4) = v118;
      v117->super.isa = v118.super.isa;
      _os_log_impl(&def_259DC, v112, v113, "Recommended INDateComponentsRange: %@", v116, 0xCu);
      sub_8748(v117, &qword_1C57B8, &qword_1715A0);
      sub_8A2C(v117);
      v110 = v170;
      sub_8A2C(v116);
    }

    v119 = v198;
    v109(v110, v198);
    sub_385D8();
    swift_beginAccess();
    (v187)(v115, v95, v119);

    v120 = sub_16DBDC();
    sub_16E36C();
    sub_140608();
    if (sub_1404F0())
    {
      v121 = v109;
      sub_8BD8();
      v122 = sub_4B33C();
      v199[0] = v122;
      *v119 = 136315138;
      isa = sub_16D19C().super.isa;
      v124 = [(objc_class *)isa dateInterval];

      v125 = v173;
      if (v124)
      {
        v126 = v167;
        sub_16BD3C();

        v127 = 0;
      }

      else
      {
        v127 = 1;
        v126 = v167;
      }

      v147 = sub_16BD9C();
      sub_214C(v126, v127, 1, v147);
      v148 = sub_16E3DC();
      v150 = v149;
      sub_8748(v126, &qword_1C5690, &dword_16F320);
      v151 = sub_3AB7C(v148, v150, v199);

      *(v119 + 4) = v151;
      sub_1401A4(&def_259DC, v152, v153, "Recommended dateInterval: %s");
      sub_2D64(v122);
      sub_89F4();
      sub_38604();

      v121(v171, v198);
    }

    else
    {

      v109(v115, v119);
      v125 = v173;
    }

    v154 = sub_16D19C().super.isa;
    v155 = [(objc_class *)v154 dateInterval];

    v156 = v196;
    v158 = v190;
    v157 = v191;
    v159 = v169;
    v160 = v189;
    if (v155)
    {
      sub_16BD3C();
    }

    else
    {
    }

    v161 = v174;
    v162 = v188;

    (*(v125 + 8))(v156, v161);
    (*(v158 + 8))(v195, v157);
    (*(v162 + 8))(v186, v160);
    sub_16BD9C();
    v163 = sub_5DB18();
    sub_214C(v163, v164, 1, v165);
    sub_125F78(v159, v192);
  }

  else
  {
    v194 = *(v87 + 8);
    v194(v175, v89);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v128 = sub_C9C8();
    v129(v128);

    v130 = sub_16DBDC();
    v131 = sub_16E37C();

    if (os_log_type_enabled(v130, v131))
    {
      v133 = sub_8BD8();
      v134 = sub_CA30();
      v200 = v134;
      *v133 = 136315138;
      v135 = sub_16D15C();
      sub_140508(v135, v136);
      sub_1403F0();

      *(v133 + 4) = v75;
      sub_1404B0(&def_259DC, v137, v131, "Not confident about the inferred DateTime: %s");
      sub_2D64(v134);
      sub_38604();
      sub_8A2C(v133);

      v138 = sub_140568();
      v139(v138);
      v194(v196, v89);
      (*(v190 + 8))(v195, v191);
    }

    else
    {

      v140 = sub_140568();
      v141(v140);
      v194(v80, v89);
      (*(v190 + 8))(v81, v191);
    }

    sub_13094();
    v142(v75, v189);
    sub_16BD9C();
    sub_8AB4();
    sub_214C(v143, v144, v145, v146);
  }

  sub_45924();
}

void sub_13D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v432 = v24;
  LODWORD(v431) = v25;
  v442 = v26;
  v437 = v27;
  sub_2440(&qword_1C5690, &dword_16F320);
  sub_8B38();
  __chkstk_darwin(v28);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v29);
  sub_458D8();
  sub_45590(v30);
  v439 = sub_16BD9C();
  sub_42F0();
  __chkstk_darwin(v31);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v32);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v33);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v34);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v35);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v36);
  sub_458D8();
  sub_45590(v37);
  v38 = sub_16D0CC();
  v39 = sub_12F4C(v38, &v439);
  v417 = v40;
  __chkstk_darwin(v39);
  sub_12FD4();
  sub_130A0(v41);
  v42 = sub_2440(&qword_1CB128, &qword_178128);
  v43 = sub_4348(v42);
  __chkstk_darwin(v43);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v44);
  sub_458D8();
  sub_45590(v45);
  v443 = sub_16DBEC();
  sub_42F0();
  v441 = v46;
  __chkstk_darwin(v47);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v48);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v49);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v50);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v51);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v52);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v53);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v54);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v55);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v56);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v57);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v58);
  sub_458D8();
  sub_130A0(v59);
  v60 = sub_2440(&qword_1CB110, &unk_178110);
  v61 = sub_12F4C(v60, &v449);
  v425 = v62;
  __chkstk_darwin(v61);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v63);
  sub_458D8();
  v445 = v64;
  sub_CA04();
  v65 = sub_16CFBC();
  v66 = sub_12F4C(v65, &a13);
  v428 = v67;
  __chkstk_darwin(v66);
  sub_12FD4();
  sub_45590(v68);
  v69 = sub_16CFCC();
  v70 = sub_12F4C(v69, &a10);
  __chkstk_darwin(v70);
  sub_12FD4();
  sub_45590(v71);
  v72 = sub_16CFEC();
  v73 = sub_12F4C(v72, &a18);
  v436 = v74;
  __chkstk_darwin(v73);
  sub_12FD4();
  v444 = v75;
  sub_CA04();
  v76 = sub_16BF5C();
  v77 = sub_12F4C(v76, &v431);
  __chkstk_darwin(v77);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v78);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v79);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v80);
  sub_458D8();
  v438 = v81;
  sub_CA04();
  v82 = sub_16C0BC();
  v83 = sub_12F4C(v82, &v438);
  v416 = v84;
  __chkstk_darwin(v83);
  sub_12FD4();
  v440 = v85;
  sub_CA04();
  v86 = sub_16CFFC();
  v87 = sub_12F4C(v86, v450);
  v89 = v88;
  __chkstk_darwin(v87);
  sub_12FD4();
  sub_45590(v90);
  v91 = sub_16C0EC();
  v92 = sub_12F4C(v91, &v437);
  v421 = v93;
  __chkstk_darwin(v92);
  sub_4304();
  v94 = sub_16BFFC();
  v95 = sub_4348(v94);
  __chkstk_darwin(v95);
  sub_887C();
  v97 = __chkstk_darwin(v96);
  __chkstk_darwin(v97);
  sub_14057C();
  v98 = sub_16CFAC();
  v99 = sub_12F4C(v98, &a16);
  v434 = v100;
  __chkstk_darwin(v99);
  sub_4304();
  v103 = v102 - v101;
  sub_16CF9C();
  v104 = sub_C9C8();
  sub_2D20(v104, v105);
  sub_C9F8();
  sub_16C3DC();
  sub_2D20(v23, v23[3]);
  sub_C9F8();
  sub_16C3DC();
  sub_2D20(v23, v23[3]);
  sub_C9F8();
  sub_16C3DC();
  sub_16C0DC();
  (*(v89 + 104))(v426, enum case for DateTimeResolutionContext.Hemisphere.north(_:));
  sub_16C08C();
  sub_16BF4C();
  v106 = sub_16D01C();
  sub_8D14(v106);
  sub_4B310();
  v107 = v103;
  v108 = sub_16D00C();
  sub_140554();
  v109();
  (*(v428 + 16))(v427, v432);
  v110 = sub_16D10C();
  sub_16D1DC();
  sub_1401C4();
  sub_13FFD0(v111, v112, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  sub_16E14C();
  sub_16CFDC();
  sub_16CF8C();
  v429 = v110;
  v432 = v108;
  (*(v425 + 16))(v423, v445);
  v113 = sub_C9F8();
  if (v114(v113) != enum case for Recommendation.confident<A>(_:))
  {
    v134 = v445;
    v135 = sub_C9F8();
    v440 = v136;
    v136(v135);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v137 = v441;
    v138 = sub_C9C8();
    v139 = v443;
    v140(v138);

    v141 = sub_16DBDC();
    v142 = sub_16E37C();

    v143 = os_log_type_enabled(v141, v142);
    v144 = v444;
    if (v143)
    {
      v145 = sub_8BD8();
      v146 = sub_CA30();
      v448 = v146;
      *v145 = 136315138;
      v147 = sub_16D15C();
      sub_140508(v147, v148);
      sub_1403F0();

      *(v145 + 4) = v144;
      sub_1404B0(&def_259DC, v149, v142, "Not confident about the inferred DateTime: %s");
      sub_2D64(v146);
      sub_38604();
      sub_8A2C(v145);

      sub_1402B8();
      (*(v137 + 8))(v424, v139);
      v440(v445);
    }

    else
    {

      sub_1402B8();
      (*(v137 + 8))(v424, v139);
      v440(v134);
    }

    sub_1401DC();
    sub_140214();
    v194();
    sub_140034();
LABEL_18:
    sub_1402AC();
    v204();
    goto LABEL_19;
  }

  v115 = sub_C9F8();
  v116(v115);
  v117 = *v423;
  v118 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v119 = v441;
  (*(v441 + 16))(v422, v118, v443);

  v120 = sub_16DBDC();
  sub_16E36C();
  sub_140608();
  v121 = sub_1404F0();
  v122 = v444;
  v431 = v117;
  v123 = v445;
  if (v121)
  {
    sub_8BD8();
    v124 = sub_4B33C();
    v448 = v124;
    *v107 = 136315138;
    v447 = v117;
    sub_140078();
    sub_13FFD0(v125, v126, &protocol conformance descriptor for DateTime);
    v127 = sub_16E68C();
    v129 = sub_140508(v127, v128);

    *(v107 + 4) = v129;
    v117 = v431;
    sub_1401A4(&def_259DC, v130, v131, "Initial Recommendation: %s");
    sub_2D64(v124);
    v132 = v124;
    v122 = v444;
    sub_8A2C(v132);
    v123 = v445;
    sub_8A2C(v107);
  }

  v133 = *(v119 + 8);
  v133(v422, v443);
  v150 = v421;
  if (!sub_16D1AC())
  {
    sub_1400A8();
    sub_140338(&v442);
    v195 = v443;
    sub_14004C();
    v196();
    v197 = sub_16DBDC();
    v198 = sub_16E37C();
    if (sub_387B0(v198))
    {
      v199 = sub_1BA38();
      sub_1BA50(v199);
      sub_4593C(&def_259DC, v200, v201, "there was no date in resultDateTime, returning nil");
      sub_8A2C(v117);
    }

    sub_1402B8();
    v133(v421, v195);
    sub_13094();
    v202(v123);
    sub_1401DC();
    sub_140214();
    v203();
    sub_13094();
    goto LABEL_18;
  }

  if (!sub_16D16C())
  {
    sub_8AB4();
    sub_214C(v209, v210, v211, v429);
    goto LABEL_23;
  }

  sub_1403FC();
  sub_16D11C();

  v151 = sub_C98CC();
  sub_8B20(v151, v152, v429);
  if (v153)
  {
LABEL_23:
    sub_1400A8();
    sub_140338(&v444);
    sub_14004C();
    v212();
    sub_1402D0(&a14);

    v213 = sub_16DBDC();
    sub_16E36C();
    sub_140608();
    if (sub_1404F0())
    {
      v214 = sub_8BD8();
      v215 = swift_slowAlloc();
      *v214 = 138412290;
      v216.super.isa = sub_16D19C().super.isa;
      *(v214 + 4) = v216;
      v215->super.isa = v216.super.isa;
      sub_1401A4(&def_259DC, v217, v218, "Recommended INDateComponentsRange: %@");
      sub_8748(v215, &qword_1C57B8, &qword_1715A0);
      v219 = v215;
      v122 = v444;
      sub_8A2C(v219);
      sub_38604();
    }

    v220 = v443;
    v133(v150, v443);
    sub_385D8();
    swift_beginAccess();
    sub_140338(&v446);
    sub_14004C();
    v221();

    v222 = sub_16DBDC();
    v223 = sub_16E36C();

    if (os_log_type_enabled(v222, v223))
    {
      v224 = sub_8BD8();
      v225 = sub_CA30();
      v446 = v225;
      *v224 = 136315138;
      isa = sub_16D19C().super.isa;
      v227 = [(objc_class *)isa dateInterval];

      if (v227)
      {
        v228 = v414;
        sub_16BD3C();

        v229 = 0;
        v230 = v439;
      }

      else
      {
        v229 = 1;
        v230 = v439;
        v228 = v414;
      }

      sub_214C(v228, v229, 1, v230);
      v275 = sub_16E3DC();
      v276 = v228;
      v278 = v277;
      sub_8748(v276, &qword_1C5690, &dword_16F320);
      v279 = sub_3AB7C(v275, v278, &v446);

      *(v224 + 4) = v279;
      sub_1404B0(&def_259DC, v280, v223, "Recommended dateInterval: %s");
      sub_2D64(v225);
      sub_38604();
      sub_8A2C(v224);

      v133(v419, v443);
      v122 = v444;
    }

    else
    {

      v133(v150, v220);
      v230 = v439;
    }

    v281 = sub_16D19C().super.isa;
    v282 = [(objc_class *)v281 dateInterval];

    v283 = v435;
    v284 = v433;
    if (v282)
    {
      v285 = v418;
      sub_16BD3C();

      v286 = 0;
      v287 = v436;
    }

    else
    {

      v286 = 1;
      v287 = v436;
      v285 = v418;
    }

    sub_140638();
    sub_1402B8();
    (*(v425 + 8))(v445);
    (*(v287 + 8))(v122, v283);
    v288 = sub_140034();
    v289(v288, v284);
    sub_214C(v285, v286, 1, v230);
    sub_125F78(v285, v437);
    goto LABEL_50;
  }

  sub_74678(v117, v413, &qword_1CB128, &qword_178128);
  v154 = *(v429 - 8);
  v155 = sub_1402DC();
  v157 = v156(v155);
  if (v157 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.afternoon(_:))
  {
    v158 = *(v417 + 104);
    (v158)(v415, enum case for DateTime.Time.Meridiem.pm(_:));
    v159 = sub_16D0FC();
    sub_8D14(v159);
    sub_1402D0(v450);

    sub_16D0EC();
    sub_140154();
    sub_8427C();
    v160 = sub_16D04C();
    v161 = sub_140220(v160);
    sub_140424(v161);
    sub_16D18C();
    sub_1403F0();

    v162 = sub_140124(v421);
    v421(v162);
    v163 = *(v416 + 8);
    v164 = sub_1400F4();
    v163(v164);
    v165 = [v122 startDate];

    if (v165)
    {
      v430 = v158;
      sub_16BF3C();

      sub_140174();
      sub_140328();
      v166();
      sub_14024C();
      sub_16BD6C();
      sub_385D8();
      swift_beginAccess();
      sub_14004C();
      v167();
      sub_140308();
      v168(v408, v165, v439);

      v169 = sub_16DBDC();
      v170 = sub_16E36C();

      v442 = v169;
      v171 = sub_5DB18();
      if (os_log_type_enabled(v171, v172))
      {
        sub_CA60();
        v173 = sub_140494();
        v447 = v173;
        *v411 = 136315394;
        LODWORD(v438) = v170;
        v174 = sub_1400D0();
        v430(v174);
        sub_14045C();

        sub_16D0EC();
        sub_140154();
        v175 = sub_16D04C();
        v176 = sub_140220(v175);
        sub_140408(v176);
        v177 = sub_16D18C();

        v178 = sub_14018C();
        v421(v178);
        v179 = sub_1400F4();
        v163(v179);
        v180 = [v177 description];
        sub_16E1BC();

        sub_140440();
        sub_4B310();

        sub_1402F8();
        sub_140090();
        sub_13FFD0(v181, v182, &protocol conformance descriptor for DateInterval);
        v183 = v439;
        v184 = sub_16E68C();
        sub_140140();
        v185(v408, v183);
        v186 = sub_1402DC();
        sub_3AB7C(v186, v187, v188);
        sub_140534();

        *(v411 + 14) = v184;
        v189 = v442;
        _os_log_impl(&def_259DC, v442, v438, "Got a defined value of afternoon, got a new start date (%s) with new Recommendation: %s", v411, 0x16u);
        sub_140478();
        sub_8A2C(v173);
        sub_89F4();
        sub_140368();

        sub_1402B8();
        sub_1402A0();
        sub_140114();
        v190();
        sub_140104();
        v191 = sub_1402E8();
      }

      else
      {
        sub_140368();

        sub_1402B8();
        sub_140140();
        v183 = v439;
        v351(v408, v439);
        sub_1402A0();
        sub_140114();
        v352();
        sub_140104();
        v191 = v411;
        v192 = v411;
      }

      v193(v191, v192);
      v353 = sub_140018();
      v354(v353);
      v355 = sub_140060();
      v356(v355);
      sub_140034();
      sub_1402AC();
      v357();
      v358 = sub_140348();
      v359(v358, v412, v183);
      sub_388E4();
      v350 = v183;
      goto LABEL_49;
    }

    sub_1400A8();
    sub_1403C0();
    v334 = v443;
    sub_14004C();
    v335();
    v336 = sub_16DBDC();
    v337 = sub_16E37C();
    sub_387B0(v337);
    sub_140358();
    if (v338)
    {
      v339 = sub_1BA38();
      sub_1BA50(v339);
      sub_4593C(&def_259DC, v340, v341, "couldn't create modifiedStartDate, returning nil");
      sub_8A2C(v117);
    }

    sub_140368();
    sub_140638();

    sub_1402B8();
    v133(v406, v334);
LABEL_46:
    v342 = sub_140018();
    v343(v342);
    sub_1401DC();
    sub_140214();
    v344();
    v345 = sub_1403D8();
    v346(v345);
    sub_8AB4();
    v350 = v439;
LABEL_49:
    sub_214C(v347, v348, v349, v350);
LABEL_50:
    sub_8748(v420, &qword_1CB128, &qword_178128);
    goto LABEL_21;
  }

  v150 = v415;
  if (v157 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.evening(_:))
  {
    if (v157 == enum case for DateTime.DateTimeRange.DefinedDateTimeRange.morning(_:))
    {
      v290 = sub_14027C();
      v291(v290);
      v292 = sub_16D0FC();
      sub_8D14(v292);
      sub_1405A8();
      sub_16D0EC();
      sub_140154();
      sub_1403CC();
      v293 = sub_16D04C();
      v294 = sub_140220(v293);
      sub_140424(v294);
      sub_16D18C();
      sub_1403F0();

      v295 = sub_140124(v421);
      v415(v295);
      v296 = *(v416 + 8);
      v297 = sub_1400F4();
      v296(v297);
      v298 = [v122 startDate];

      if (v298)
      {
        sub_140540();
        sub_1403FC();
        sub_16BF3C();

        sub_140174();
        sub_140328();
        v299();
        sub_14024C();
        sub_16BD6C();
        sub_1402D0(&a9);
        sub_385D8();
        swift_beginAccess();
        sub_38B40();
        sub_14004C();
        v300();
        sub_140308();
        v301 = sub_8427C();
        v302(v301);

        v303 = sub_16DBDC();
        v304 = sub_16E36C();

        v438 = v303;
        v305 = sub_5DB18();
        if (os_log_type_enabled(v305, v306))
        {
          sub_CA60();
          v307 = sub_140494();
          v447 = v307;
          *v122 = 136315394;
          v308 = sub_1400D0();
          (v442)(v308);
          sub_14045C();
          sub_1403CC();

          sub_16D0EC();
          sub_140154();
          v309 = sub_1405C8();
          v310 = sub_140220(v309);
          sub_140408(v310);
          v311 = sub_16D18C();

          v312 = sub_14018C();
          v415(v312);
          v313 = sub_1400F4();
          v296(v313);
          v314 = [v311 description];
          sub_16E1BC();

          sub_140440();
          sub_4B310();

          sub_1402F8();
          sub_140090();
          v317 = sub_13FFD0(v315, v316, &protocol conformance descriptor for DateInterval);
          sub_1405E8(v317);
          v318 = sub_140258();
          v319(v318);
          v320 = sub_1402DC();
          sub_3AB7C(v320, v321, v322);
          sub_140534();

          *(v122 + 14) = v314;
          sub_140380(&def_259DC, v323, v324, "Got a defined value of morning, got a new start date (%s) with new Recommendation: %s");
          sub_140478();
          sub_8A2C(v307);
          sub_89F4();
          sub_140368();

          sub_1402B8();
          sub_1402A0();
          sub_140114();
          v325();
          sub_140104();
          v326 = sub_1402E8();
          v327(v326);
          v328 = sub_140018();
          v329(v328);
          v330 = sub_140060();
          v331(v330);
          sub_140034();
          sub_1402AC();
          v332();
          v333 = v304;
        }

        else
        {
          sub_140368();

          sub_1402B8();
          sub_140140();
          v333 = v439;
          v391(v402, v439);
          sub_1402A0();
          sub_140114();
          v392();
          sub_140104();
          v393(v404, v122);
          v394 = sub_140018();
          v395(v394);
          v396 = sub_140060();
          v397(v396);
          sub_140034();
          sub_1402AC();
          v398();
        }

        v399 = sub_140348();
        v400(v399, v405, v333);
        sub_388E4();
        v350 = v333;
        goto LABEL_49;
      }

      sub_1400A8();
      sub_1403C0();
      v383 = v443;
      sub_14004C();
      v384();
      v385 = sub_16DBDC();
      v386 = sub_16E37C();
      sub_387B0(v386);
      sub_140358();
      if (v387)
      {
        v388 = sub_1BA38();
        sub_1BA50(v388);
        sub_4593C(&def_259DC, v389, v390, "couldn't create modifiedStartDate, returning nil");
        sub_8A2C(v117);
      }

      sub_140368();
      sub_140638();

      sub_1402B8();
      sub_1402A0();
      v133(v401, v383);
      goto LABEL_46;
    }

    if (v157 != enum case for DateTime.DateTimeRange.DefinedDateTimeRange.night(_:))
    {
      (*(v154 + 8))(v413, v429);
      goto LABEL_23;
    }
  }

  sub_8748(v117, &qword_1CB128, &qword_178128);
  v231 = sub_14027C();
  v232(v231);
  v233 = sub_16D0FC();
  sub_8D14(v233);
  sub_1405A8();
  sub_16D0EC();
  sub_140154();
  sub_1403CC();
  v234 = sub_16D04C();
  v235 = sub_140220(v234);
  sub_140424(v235);
  sub_16D18C();
  sub_1403F0();

  v236 = sub_140124(v421);
  v415(v236);
  v237 = *(v416 + 8);
  v238 = sub_1400F4();
  v237(v238);
  v239 = [v122 startDate];

  if (v239)
  {
    sub_140540();
    sub_1403FC();
    sub_16BF3C();

    sub_140174();
    sub_140328();
    v240();
    sub_14024C();
    sub_16BD6C();
    sub_1402D0(&a9);
    sub_385D8();
    swift_beginAccess();
    sub_38B40();
    sub_14004C();
    v241();
    sub_140308();
    v242 = sub_8427C();
    v243(v242);

    v244 = sub_16DBDC();
    v245 = sub_16E36C();

    v438 = v244;
    v246 = sub_5DB18();
    if (os_log_type_enabled(v246, v247))
    {
      sub_CA60();
      v248 = sub_140494();
      v447 = v248;
      *v122 = 136315394;
      v249 = sub_1400D0();
      (v442)(v249);
      sub_14045C();
      sub_1403CC();

      sub_16D0EC();
      sub_140154();
      v250 = sub_1405C8();
      v251 = sub_140220(v250);
      sub_140408(v251);
      v252 = sub_16D18C();

      v253 = sub_14018C();
      v415(v253);
      v254 = sub_1400F4();
      v237(v254);
      v255 = [v252 description];
      sub_16E1BC();

      sub_140440();
      sub_4B310();

      sub_1402F8();
      sub_140090();
      v258 = sub_13FFD0(v256, v257, &protocol conformance descriptor for DateInterval);
      sub_1405E8(v258);
      v259 = sub_140258();
      v260(v259);
      v261 = sub_1402DC();
      sub_3AB7C(v261, v262, v263);
      sub_140534();

      *(v122 + 14) = v255;
      sub_140380(&def_259DC, v264, v265, "Got a defined value of evening/night, got a new start date (%s) with new Recommendation: %s");
      sub_140478();
      sub_8A2C(v248);
      sub_89F4();
      sub_140368();

      sub_1402B8();
      sub_1402A0();
      sub_140114();
      v266();
      sub_140104();
      v267 = sub_1402E8();
      v268(v267);
      v269 = sub_140018();
      v270(v269);
      v271 = sub_140060();
      v272(v271);
      sub_140034();
      sub_1402AC();
      v273();
      v274 = v245;
    }

    else
    {
      sub_140368();

      sub_1402B8();
      sub_140140();
      v274 = v439;
      v373(v407, v439);
      sub_1402A0();
      sub_140114();
      v374();
      sub_140104();
      v375(v409, v122);
      v376 = sub_140018();
      v377(v376);
      v378 = sub_140060();
      v379(v378);
      sub_140034();
      sub_1402AC();
      v380();
    }

    v381 = sub_140348();
    v382(v381, v410, v274);
    sub_388E4();
    v208 = v274;
    goto LABEL_20;
  }

  sub_1400A8();
  sub_1403C0();
  v360 = v443;
  sub_14004C();
  v361();
  v362 = sub_16DBDC();
  v363 = sub_16E37C();
  sub_387B0(v363);
  sub_140358();
  if (v364)
  {
    v365 = sub_1BA38();
    sub_1BA50(v365);
    sub_4593C(&def_259DC, v366, v367, "couldn't create modifiedStartDate, returning nil");
    sub_8A2C(v117);
  }

  sub_140368();
  sub_140638();

  sub_1402B8();
  sub_1402A0();
  v133(v403, v360);
  v368 = sub_140018();
  v369(v368);
  sub_1401DC();
  sub_140214();
  v370();
  v371 = sub_1403D8();
  v372(v371);
LABEL_19:
  sub_8AB4();
  v208 = v439;
LABEL_20:
  sub_214C(v205, v206, v207, v208);
LABEL_21:
  sub_45924();
}

uint64_t sub_13F864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_16DBEC();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = __chkstk_darwin(v2);
  v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v53 - v5;
  v58 = sub_16C09C();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_16C0BC();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_16BF5C();
  v60 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - v19;
  __chkstk_darwin(v18);
  v53 = &v53 - v21;
  v22 = sub_2440(&qword_1C5690, &dword_16F320);
  __chkstk_darwin(v22 - 8);
  v24 = &v53 - v23;
  v25 = sub_16BD9C();
  v63 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  sub_74678(v64, v24, &qword_1C5690, &dword_16F320);
  if (sub_369C(v24, 1, v29) == 1)
  {
    sub_8748(v24, &qword_1C5690, &dword_16F320);
    v30 = sub_16DBBC();
    swift_beginAccess();
    v32 = v61;
    v31 = v62;
    v33 = v59;
    (*(v61 + 16))(v59, v30, v62);
    v34 = sub_16DBDC();
    v35 = sub_16E37C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&def_259DC, v34, v35, "nil interval passed into getFirstMinuteOfInterval, returning nil", v36, 2u);
    }

    (*(v32 + 8))(v33, v31);
    v37 = 1;
    v38 = v65;
  }

  else
  {
    (*(v63 + 32))(v27, v24, v29);
    sub_16C08C();
    v39 = v58;
    (*(v6 + 104))(v8, enum case for Calendar.Component.second(_:), v58);
    v64 = v29;
    sub_16BD7C();
    sub_16C06C();
    v40 = *(v60 + 8);
    v40(v20, v15);
    (*(v6 + 8))(v8, v39);
    (*(v56 + 8))(v11, v57);
    if (sub_369C(v14, 1, v15) == 1)
    {
      v42 = v63;
      v41 = v64;
      sub_8748(v14, &qword_1C57E0, &unk_171C60);
      v43 = sub_16DBBC();
      swift_beginAccess();
      v45 = v61;
      v44 = v62;
      v46 = v55;
      (*(v61 + 16))(v55, v43, v62);
      v47 = sub_16DBDC();
      v48 = sub_16E37C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&def_259DC, v47, v48, "couldn't create newEnd in getFirstMinuteOfInterval, returning nil", v49, 2u);
      }

      (*(v45 + 8))(v46, v44);
      v29 = v41;
      (*(v42 + 8))(v27, v41);
      v37 = 1;
      v38 = v65;
    }

    else
    {
      v50 = v60;
      v51 = v53;
      (*(v60 + 32))(v53, v14, v15);
      sub_16BD7C();
      (*(v50 + 16))(v54, v51, v15);
      v38 = v65;
      sub_16BD5C();
      v40(v51, v15);
      v29 = v64;
      (*(v63 + 8))(v27, v64);
      v37 = 0;
    }
  }

  return sub_214C(v38, v37, 1, v29);
}

uint64_t sub_13FFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1400A8()
{

  return swift_beginAccess();
}

uint64_t sub_140124@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 416) = a1 + 8;
  return result;
}

uint64_t sub_140154()
{

  return swift_allocObject();
}

void sub_1401A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_140220(uint64_t a1)
{

  return sub_16C08C();
}

uint64_t sub_14027C()
{
  result = v0;
  *(v1 - 208) = *(*(v1 - 456) + 104);
  return result;
}

uint64_t sub_1402B8()
{
}

uint64_t sub_140368()
{
}

void sub_140380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 240);
  v8 = *(v5 - 312);

  _os_log_impl(a1, v7, v8, a4, v4, 0x16u);
}

uint64_t sub_140408(uint64_t a1)
{

  return sub_16C0DC();
}

uint64_t sub_140424(uint64_t a1)
{

  return sub_16C0DC();
}

unint64_t sub_140440()
{

  return sub_3AB7C(v0, v1, (v2 - 168));
}

uint64_t sub_14045C()
{

  return swift_allocObject();
}

uint64_t sub_140478()
{

  return swift_arrayDestroy();
}

uint64_t sub_140494()
{

  return swift_slowAlloc();
}

void sub_1404B0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_1404CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_13D344(v20, a2, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

BOOL sub_1404F0()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_140508(uint64_t a1, unint64_t a2)
{

  return sub_3AB7C(a1, a2, (v2 - 144));
}

uint64_t sub_1405A8()
{
}

uint64_t sub_1405C8()
{

  return sub_16D04C();
}

uint64_t sub_1405E8(uint64_t a1)
{

  return sub_16E68C();
}

uint64_t sub_140608()
{
}

uint64_t sub_140620(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

uint64_t sub_140638()
{
}

void sub_140650(__int16 a1)
{
  switch(a1)
  {
    case 7:
    case 13:
    case 16:
    case 19:
    case 20:
    case 23:
    case 24:
    case 31:
    case 32:
    case 36:
    case 45:
    case 48:
    case 49:
    case 52:
    case 58:
    case 59:
    case 63:
    case 68:
    case 69:
    case 78:
    case 82:
    case 88:
    case 92:
    case 93:
    case 94:
    case 95:
    case 100:
    case 103:
    case 109:
    case 123:
    case 125:
    case 127:
    case 129:
    case 130:
    case 139:
    case 141:
    case 147:
    case 148:
    case 156:
    case 157:
    case 160:
    case 161:
    case 169:
    case 181:
    case 184:
    case 201:
    case 204:
    case 205:
    case 216:
    case 217:
    case 218:
    case 221:
    case 224:
    case 228:
    case 232:
    case 233:
    case 236:
    case 246:
    case 259:
    case 262:
      sub_39A14();
      break;
    case 97:
    case 162:
      sub_143FEC();
      break;
    case 207:
    case 210:
    case 211:
    case 212:
    case 213:
      sub_143FD0();
      break;
    default:
      return;
  }
}

uint64_t sub_142388(uint64_t a1, void *a2)
{
  sub_2440(&qword_1C6558, qword_178150);
  swift_allocObject();
  sub_61090();
  *v3 = "abdominal_cramps";
  *(v3 + 8) = 16;
  *(v3 + 16) = 2;
  *(v3 + 24) = "acne";
  *(v3 + 32) = 4;
  *(v3 + 40) = 2;
  *(v3 + 48) = "afib_history";
  *(v3 + 56) = 12;
  *(v3 + 64) = 2;
  *(v3 + 72) = "alcohol_log";
  *(v3 + 80) = 11;
  *(v3 + 88) = 2;
  *(v3 + 96) = "allergies";
  *(v3 + 104) = 9;
  *(v3 + 112) = 2;
  *(v3 + 120) = "anxiety_risk";
  *(v3 + 128) = 12;
  *(v3 + 136) = 2;
  *(v3 + 144) = "appetite_changes";
  *(v3 + 152) = 16;
  *(v3 + 160) = 2;
  *(v3 + 168) = "atrial_fibrillation";
  *(v3 + 176) = 19;
  *(v3 + 184) = 2;
  *(v3 + 192) = "audio_exposure";
  *(v3 + 200) = 14;
  *(v3 + 208) = 2;
  *(v3 + 216) = "audiogram";
  *(v3 + 224) = 9;
  *(v3 + 232) = 2;
  *(v3 + 240) = "beryllium";
  *(v3 + 248) = 9;
  *(v3 + 256) = 2;
  *(v3 + 264) = "biological_sex";
  *(v3 + 272) = 14;
  *(v3 + 280) = 2;
  *(v3 + 288) = "biotin";
  *(v3 + 296) = 6;
  *(v3 + 304) = 2;
  *(v3 + 312) = "bladder_incontinence";
  *(v3 + 320) = 20;
  *(v3 + 328) = 2;
  *(v3 + 336) = "bloating";
  *(v3 + 344) = 8;
  *(v3 + 352) = 2;
  *(v3 + 360) = "blood_alcohol_content";
  *(v3 + 368) = 21;
  *(v3 + 376) = 2;
  *(v3 + 384) = "blood_cholesterol";
  *(v3 + 392) = 17;
  *(v3 + 400) = 2;
  *(v3 + 408) = "blood_glucose";
  *(v3 + 416) = 13;
  *(v3 + 424) = 2;
  *(v3 + 432) = "blood_pressure";
  *(v3 + 440) = 14;
  *(v3 + 448) = 2;
  *(v3 + 456) = "blood_pressure_diastolic";
  *(v3 + 464) = 24;
  *(v3 + 472) = 2;
  *(v3 + 480) = "blood_pressure_systolic";
  *(v3 + 488) = 23;
  *(v3 + 496) = 2;
  *(v3 + 504) = "blood_type";
  *(v3 + 512) = 10;
  *(v3 + 520) = 2;
  *(v3 + 528) = "blurred_vision";
  *(v3 + 536) = 14;
  *(v3 + 544) = 2;
  *(v3 + 552) = "body_and_muscle_ache";
  *(v3 + 560) = 20;
  *(v3 + 568) = 2;
  *(v3 + 576) = "body_fat_percentage";
  *(v3 + 584) = 19;
  *(v3 + 592) = 2;
  *(v3 + 600) = "breast_general";
  *(v3 + 608) = 14;
  *(v3 + 616) = 2;
  *(v3 + 624) = "breast_pain";
  *(v3 + 632) = 11;
  *(v3 + 640) = 2;
  *(v3 + 648) = "caffeine";
  *(v3 + 656) = 8;
  *(v3 + 664) = 2;
  *(v3 + 672) = "calcium";
  *(v3 + 680) = 7;
  *(v3 + 688) = 2;
  *(v3 + 696) = "carbohydrates";
  *(v3 + 704) = 13;
  *(v3 + 712) = 2;
  *(v3 + 720) = "cardio_fitness";
  *(v3 + 728) = 14;
  *(v3 + 736) = 2;
  *(v3 + 744) = "cervical_mucus_quality";
  *(v3 + 752) = 22;
  *(v3 + 760) = 2;
  *(v3 + 768) = "chest_tightness_or_pain";
  *(v3 + 776) = 23;
  *(v3 + 784) = 2;
  *(v3 + 792) = "chills";
  *(v3 + 800) = 6;
  *(v3 + 808) = 2;
  *(v3 + 816) = "chloride";
  *(v3 + 824) = 8;
  *(v3 + 832) = 2;
  *(v3 + 840) = "chromium";
  *(v3 + 848) = 8;
  *(v3 + 856) = 2;
  *(v3 + 864) = "clinical_documents";
  *(v3 + 872) = 18;
  *(v3 + 880) = 2;
  *(v3 + 888) = "clinical_vitals";
  *(v3 + 896) = 15;
  *(v3 + 904) = 2;
  *(v3 + 912) = "condition_record";
  *(v3 + 920) = 16;
  *(v3 + 928) = 2;
  *(v3 + 936) = "congestion";
  *(v3 + 944) = 10;
  *(v3 + 952) = 2;
  *(v3 + 960) = "constipation";
  *(v3 + 968) = 12;
  *(v3 + 976) = 2;
  *(v3 + 984) = "contraceptives";
  *(v3 + 992) = 14;
  *(v3 + 1000) = 2;
  *(v3 + 1008) = "copper";
  *(v3 + 1016) = 6;
  *(v3 + 1024) = 2;
  *(v3 + 1032) = "coughing";
  *(v3 + 1040) = 8;
  *(v3 + 1048) = 2;
  *(v3 + 1056) = "cycling_cadence";
  *(v3 + 1064) = 15;
  *(v3 + 1072) = 2;
  *(v3 + 1080) = "cycling_functional_threshold_power";
  *(v3 + 1088) = 34;
  *(v3 + 1096) = 2;
  *(v3 + 1104) = "cycling_pace";
  *(v3 + 1112) = 12;
  *(v3 + 1120) = 2;
  *(v3 + 1128) = "depression_risk";
  *(v3 + 1136) = 15;
  *(v3 + 1144) = 2;
  *(v3 + 1152) = "diagnostic_test_report";
  *(v3 + 1160) = 22;
  *(v3 + 1168) = 2;
  *(v3 + 1176) = "diagnostic_test_result";
  *(v3 + 1184) = 22;
  *(v3 + 1192) = 2;
  *(v3 + 1200) = "diarrhea";
  *(v3 + 1208) = 8;
  *(v3 + 1216) = 2;
  *(v3 + 1224) = "dietary_calories";
  *(v3 + 1232) = 16;
  *(v3 + 1240) = 2;
  *(v3 + 1248) = "dietary_cholesterol";
  *(v3 + 1256) = 19;
  *(v3 + 1264) = 2;
  *(v3 + 1272) = "dietary_energy";
  *(v3 + 1280) = 14;
  *(v3 + 1288) = 2;
  *(v3 + 1296) = "dietary_sugar";
  *(v3 + 1304) = 13;
  *(v3 + 1312) = 2;
  *(v3 + 1320) = "dizziness";
  *(v3 + 1328) = 9;
  *(v3 + 1336) = 2;
  *(v3 + 1344) = "double_support";
  *(v3 + 1352) = 14;
  *(v3 + 1360) = 2;
  *(v3 + 1368) = "dry_skin";
  *(v3 + 1376) = 8;
  *(v3 + 1384) = 2;
  *(v3 + 1392) = "electrocardiogram";
  *(v3 + 1400) = 17;
  *(v3 + 1408) = 2;
  *(v3 + 1416) = "electrodermal_activity";
  *(v3 + 1424) = 22;
  *(v3 + 1432) = 2;
  *(v3 + 1440) = "elevation";
  *(v3 + 1448) = 9;
  *(v3 + 1456) = 2;
  *(v3 + 1464) = "elevation_gain";
  *(v3 + 1472) = 14;
  *(v3 + 1480) = 2;
  *(v3 + 1488) = "energy_consumed";
  *(v3 + 1496) = 15;
  *(v3 + 1504) = 2;
  *(v3 + 1512) = "environment_noise";
  *(v3 + 1520) = 17;
  *(v3 + 1528) = 2;
  *(v3 + 1536) = "environmental_sound_reduction";
  *(v3 + 1544) = 29;
  *(v3 + 1552) = 2;
  *(v3 + 1560) = "eye_prescription";
  *(v3 + 1584) = "fainting";
  *(v3 + 1608) = "fat";
  *(v3 + 1632) = "fat_monounsaturated";
  *(v3 + 1656) = "fat_polyunsaturated";
  *(v3 + 1680) = "fat_saturated";
  *(v3 + 1704) = "fatigue";
  *(v3 + 1728) = "fertile_window";
  *(v3 + 1752) = "fever";
  *(v3 + 1776) = "fiber";
  *(v3 + 1800) = "fitzpatrick_skin_type";
  *(v3 + 1824) = "flights_climbed";
  *(v3 + 1848) = "folate";
  *(v3 + 1872) = "forced_expiratory_volume";
  *(v3 + 1896) = "forced_vital_capacity";
  *(v3 + 1920) = "general_symptom";
  *(v3 + 1944) = "genomes";
  *(v3 + 1968) = "ground_contact_time";
  *(v3 + 1992) = "hair";
  *(v3 + 2256) = "heartbeat_rapid_pounding_or_fluttering";
  *(v3 + 2424) = "immunizations";
  *(v3 + 2520) = "insulin_delivery";
  *(v3 + 2616) = "irregular_heart_beat";
  *(v3 + 2712) = "lean_body_mass";
  *(v3 + 2808) = "lower_back_pain";
  *(v3 + 2904) = "medication_dose_event";
  *(v3 + 2952) = "medications_that_affect_heart_rate";
  *(v3 + 2976) = "memory_lapse";
  *(v3 + 3048) = "menstrual_period_length";
  *(v3 + 3072) = "menstruation";
  *(v3 + 3096) = "menstruation_prediction";
  *(v3 + 3120) = "menstruation_product";
  *(v3 + 3144) = "menstruation_symptoms";
  *(v3 + 3168) = "mindful";
  *(v3 + 3192) = "molybdenum";
  *(v3 + 3216) = "mood_change";
  *(v3 + 3240) = "nausea";
  *(v3 + 3264) = "niacin";
  *(v3 + 3288) = "night_sweats";
  *(v3 + 3312) = "nikeFuel";
  *(v3 + 3336) = "number_of_times_fallen";
  *(v3 + 3360) = "ovulation";
  *(v3 + 3384) = "ovulation_estimate";
  *(v3 + 3408) = "ovulation_test_result";
  *(v3 + 3432) = "pantothenic_acid";
  *(v3 + 3456) = "peak_expiratory_flow_rate";
  *(v3 + 3464) = 25;
  *(v3 + 3480) = "pelvic_pain";
  *(v3 + 3504) = "peripheral_perfusion_index";
  *(v3 + 3576) = "phosphorus";
  *(v3 + 3672) = "pregnancy_factor";
  *(v3 + 3768) = "prologned_periods";
  *(v3 + 3864) = "resting_heart_rate";
  *(v3 + 3960) = "running_stride_length";
  *(v3 + 4056) = "shortness_of_breath";
  *(v3 + 4416) = "sleep_stage_light";
  *(v3 + 4400) = 16;
  *(v3 + 4408) = 2;
  *(v3 + 4368) = "sleep_stage_core";
  *(v3 + 4376) = 16;
  *(v3 + 4384) = 2;
  *(v3 + 4392) = "sleep_stage_deep";
  *(v3 + 4336) = 2;
  *(v3 + 4344) = "sleep_stage_awake";
  *(v3 + 4352) = 17;
  *(v3 + 4360) = 2;
  *(v3 + 4304) = 14;
  *(v3 + 4312) = 2;
  *(v3 + 4320) = "sleep_score";
  *(v3 + 4328) = 11;
  *(v3 + 4296) = "sleep_schedule";
  *(v3 + 4280) = 13;
  *(v3 + 4288) = 2;
  *(v3 + 4088) = 27;
  *(v3 + 4256) = 9;
  *(v3 + 4264) = 2;
  *(v3 + 4272) = "sleep_quality";
  *(v3 + 4224) = "sleep_changes";
  *(v3 + 4232) = 13;
  *(v3 + 4240) = 2;
  *(v3 + 4248) = "sleep_end";
  *(v3 + 4208) = 11;
  *(v3 + 4216) = 2;
  *(v3 + 4176) = "sleep";
  *(v3 + 4184) = 5;
  *(v3 + 4192) = 2;
  *(v3 + 4200) = "sleep_apnea";
  *(v3 + 4152) = "skin";
  *(v3 + 4160) = 4;
  *(v3 + 4168) = 2;
  *(v3 + 4128) = "sit";
  *(v3 + 4120) = 2;
  *(v3 + 4136) = 3;
  *(v3 + 4144) = 2;
  *(v3 + 1568) = 16;
  *(v3 + 4104) = "sinus_congestion";
  *(v3 + 4096) = 2;
  *(v3 + 4112) = 16;
  *(v3 + 1576) = 2;
  *(v3 + 4080) = "signed_clinical_data_record";
  *(v3 + 4064) = 19;
  *(v3 + 4072) = 2;
  *(v3 + 4032) = "sexual_activity";
  *(v3 + 4024) = 2;
  *(v3 + 4040) = 15;
  *(v3 + 4048) = 2;
  *(v3 + 4008) = "selenium";
  *(v3 + 3992) = 10;
  *(v3 + 4000) = 2;
  *(v3 + 4016) = 8;
  *(v3 + 1592) = 8;
  *(v3 + 3984) = "runny_nose";
  *(v3 + 3968) = 21;
  *(v3 + 3976) = 2;
  *(v3 + 3936) = "running_power";
  *(v3 + 3928) = 2;
  *(v3 + 3944) = 13;
  *(v3 + 3952) = 2;
  *(v3 + 3912) = "running_pace";
  *(v3 + 3896) = 10;
  *(v3 + 3904) = 2;
  *(v3 + 3920) = 12;
  *(v3 + 1600) = 2;
  *(v3 + 3888) = "riboflavin";
  *(v3 + 3872) = 18;
  *(v3 + 3880) = 2;
  *(v3 + 3840) = "resting_energy_level";
  *(v3 + 3832) = 2;
  *(v3 + 3848) = 20;
  *(v3 + 3856) = 2;
  *(v3 + 3816) = "respiratory_rate";
  *(v3 + 3800) = 7;
  *(v3 + 3808) = 2;
  *(v3 + 3824) = 16;
  *(v3 + 1616) = 3;
  *(v3 + 3792) = "protein";
  *(v3 + 3776) = 17;
  *(v3 + 3784) = 2;
  *(v3 + 3744) = "progesterone_test_result";
  *(v3 + 3736) = 2;
  *(v3 + 3752) = 24;
  *(v3 + 3760) = 2;
  *(v3 + 3720) = "procedure_record";
  *(v3 + 3704) = 21;
  *(v3 + 3712) = 2;
  *(v3 + 3728) = 16;
  *(v3 + 1624) = 2;
  *(v3 + 3696) = "pregnancy_test_result";
  *(v3 + 3680) = 16;
  *(v3 + 3688) = 2;
  *(v3 + 3648) = "pregnancy";
  *(v3 + 3640) = 2;
  *(v3 + 3656) = 9;
  *(v3 + 3664) = 2;
  *(v3 + 3624) = "potassium";
  *(v3 + 3608) = 15;
  *(v3 + 3616) = 2;
  *(v3 + 3632) = 9;
  *(v3 + 1640) = 19;
  *(v3 + 3600) = "physical_effort";
  *(v3 + 3584) = 10;
  *(v3 + 3592) = 2;
  *(v3 + 3552) = "persistent_spotting";
  *(v3 + 3544) = 2;
  *(v3 + 3560) = 19;
  *(v3 + 3568) = 2;
  *(v3 + 3496) = 2;
  *(v3 + 3528) = "persistent_intermenstrual_bleeding";
  *(v3 + 3512) = 26;
  *(v3 + 3520) = 2;
  *(v3 + 3536) = 34;
  *(v3 + 1648) = 2;
  *(v3 + 1664) = 19;
  *(v3 + 1672) = 2;
  *(v3 + 3448) = 2;
  *(v3 + 3472) = 2;
  *(v3 + 3488) = 11;
  *(v3 + 1688) = 13;
  *(v3 + 1696) = 2;
  *(v3 + 3400) = 2;
  *(v3 + 3416) = 21;
  *(v3 + 3424) = 2;
  *(v3 + 3440) = 16;
  *(v3 + 1712) = 7;
  *(v3 + 1720) = 2;
  *(v3 + 3352) = 2;
  *(v3 + 3368) = 9;
  *(v3 + 3376) = 2;
  *(v3 + 3392) = 18;
  *(v3 + 1736) = 14;
  *(v3 + 1744) = 2;
  *(v3 + 3304) = 2;
  *(v3 + 3320) = 8;
  *(v3 + 3328) = 2;
  *(v3 + 3344) = 22;
  *(v3 + 1760) = 5;
  *(v3 + 1768) = 2;
  *(v3 + 3256) = 2;
  *(v3 + 3272) = 6;
  *(v3 + 3280) = 2;
  *(v3 + 3296) = 12;
  *(v3 + 1784) = 5;
  *(v3 + 1792) = 2;
  *(v3 + 3208) = 2;
  *(v3 + 3224) = 11;
  *(v3 + 3232) = 2;
  *(v3 + 3248) = 6;
  *(v3 + 1808) = 21;
  *(v3 + 1816) = 2;
  *(v3 + 3160) = 2;
  *(v3 + 3176) = 7;
  *(v3 + 3184) = 2;
  *(v3 + 3200) = 10;
  *(v3 + 1832) = 15;
  *(v3 + 1840) = 2;
  *(v3 + 3112) = 2;
  *(v3 + 3128) = 20;
  *(v3 + 3136) = 2;
  *(v3 + 3152) = 21;
  *(v3 + 1856) = 6;
  *(v3 + 1864) = 2;
  *(v3 + 1880) = 24;
  *(v3 + 3080) = 12;
  *(v3 + 3088) = 2;
  *(v3 + 3104) = 23;
  *(v3 + 1888) = 2;
  *(v3 + 3056) = 23;
  *(v3 + 3040) = 2;
  *(v3 + 3064) = 2;
  *(v3 + 3024) = "menstrual_pain";
  *(v3 + 3008) = 22;
  *(v3 + 3016) = 2;
  *(v3 + 3032) = 14;
  *(v3 + 3000) = "menstrual_cycle_length";
  *(v3 + 2968) = 2;
  *(v3 + 2984) = 12;
  *(v3 + 2992) = 2;
  *(v3 + 1904) = 21;
  *(v3 + 2960) = 34;
  *(v3 + 2936) = 11;
  *(v3 + 2944) = 2;
  *(v3 + 1912) = 2;
  *(v3 + 2928) = "medications";
  *(v3 + 2912) = 21;
  *(v3 + 2920) = 2;
  *(v3 + 2880) = "manganese";
  *(v3 + 2872) = 2;
  *(v3 + 2888) = 9;
  *(v3 + 2896) = 2;
  *(v3 + 2856) = "magnesium";
  *(v3 + 2840) = 4;
  *(v3 + 2848) = 2;
  *(v3 + 2864) = 9;
  *(v3 + 1928) = 15;
  *(v3 + 2832) = "lynx";
  *(v3 + 2816) = 15;
  *(v3 + 2824) = 2;
  *(v3 + 2784) = "low_heart_rate";
  *(v3 + 2776) = 2;
  *(v3 + 2792) = 14;
  *(v3 + 2800) = 2;
  *(v3 + 2760) = "loss_of_taste";
  *(v3 + 2744) = 13;
  *(v3 + 2752) = 2;
  *(v3 + 2768) = 13;
  *(v3 + 1936) = 2;
  *(v3 + 2736) = "loss_of_smell";
  *(v3 + 2720) = 14;
  *(v3 + 2728) = 2;
  *(v3 + 2688) = "lactation";
  *(v3 + 2680) = 2;
  *(v3 + 2696) = 9;
  *(v3 + 2704) = 2;
  *(v3 + 2664) = "lab_results";
  *(v3 + 2648) = 16;
  *(v3 + 2656) = 2;
  *(v3 + 2672) = 11;
  *(v3 + 1952) = 7;
  *(v3 + 2640) = "irregular_period";
  *(v3 + 2624) = 20;
  *(v3 + 2632) = 2;
  *(v3 + 2592) = "iron";
  *(v3 + 2584) = 2;
  *(v3 + 2600) = 4;
  *(v3 + 2608) = 2;
  *(v3 + 2568) = "iodine";
  *(v3 + 2552) = 9;
  *(v3 + 2560) = 2;
  *(v3 + 2576) = 6;
  *(v3 + 1960) = 2;
  *(v3 + 2544) = "insurance";
  *(v3 + 2528) = 16;
  *(v3 + 2536) = 2;
  *(v3 + 2496) = "inhaler_usage";
  *(v3 + 2488) = 2;
  *(v3 + 2504) = 13;
  *(v3 + 2512) = 2;
  *(v3 + 2472) = "infrequent_period";
  *(v3 + 2456) = 6;
  *(v3 + 2464) = 2;
  *(v3 + 2480) = 17;
  *(v3 + 1976) = 19;
  *(v3 + 2448) = "in_bed";
  *(v3 + 2432) = 13;
  *(v3 + 2440) = 2;
  *(v3 + 2400) = "hypertension_event";
  *(v3 + 2392) = 2;
  *(v3 + 2408) = 18;
  *(v3 + 2416) = 2;
  *(v3 + 2376) = "hot_flashes";
  *(v3 + 2360) = 15;
  *(v3 + 2368) = 2;
  *(v3 + 2384) = 11;
  *(v3 + 1984) = 2;
  *(v3 + 2352) = "high_heart_rate";
  *(v3 + 2336) = 10;
  *(v3 + 2344) = 2;
  *(v3 + 2304) = "heartburn";
  *(v3 + 2312) = 9;
  *(v3 + 2320) = 2;
  *(v3 + 2328) = "hemoglobin";
  *(v3 + 2272) = 2;
  *(v3 + 2280) = "heartbeat_skipped";
  *(v3 + 2288) = 17;
  *(v3 + 2296) = 2;
  *(v3 + 2264) = 38;
  *(v3 + 2240) = 22;
  *(v3 + 2248) = 2;
  *(v3 + 2000) = 4;
  *(v3 + 2232) = "heart_rate_variability";
  *(v3 + 2216) = 19;
  *(v3 + 2224) = 2;
  *(v3 + 2184) = "heart_rate_range";
  *(v3 + 2192) = 16;
  *(v3 + 2200) = 2;
  *(v3 + 2208) = "heart_rate_recovery";
  *(v3 + 2152) = 2;
  *(v3 + 2160) = "hearing";
  *(v3 + 2168) = 7;
  *(v3 + 2176) = 2;
  *(v3 + 2120) = 24;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = "health_trends";
  *(v3 + 2144) = 13;
  *(v3 + 2008) = 2;
  *(v3 + 2096) = 15;
  *(v3 + 2104) = 2;
  *(v3 + 2112) = "headphone_audio_exposure";
  *(v3 + 2064) = "headache";
  *(v3 + 2072) = 8;
  *(v3 + 2080) = 2;
  *(v3 + 2088) = "headphone_audio";
  *(v3 + 2032) = 2;
  *(v3 + 2040) = "handwash";
  *(v3 + 2048) = 8;
  *(v3 + 2056) = 2;
  *(v3 + 2016) = "hair_loss";
  *(v3 + 2024) = 9;
  *(v3 + 4424) = 17;
  *(v3 + 4432) = 2;
  *(v3 + 4440) = "sleep_stage_rem";
  *(v3 + 4448) = 15;
  *(v3 + 4456) = 2;
  *(v3 + 4464) = "sleep_start";
  *(v3 + 4472) = 11;
  *(v3 + 4480) = 2;
  *(v3 + 4488) = "sleeping_wrist_temperature";
  *(v3 + 4496) = 26;
  *(v3 + 4504) = 2;
  *(v3 + 4512) = "snoring";
  *(v3 + 4520) = 7;
  *(v3 + 4528) = 2;
  *(v3 + 4536) = "sodium";
  *(v3 + 4544) = 6;
  *(v3 + 4552) = 2;
  *(v3 + 4560) = "sore_throat";
  *(v3 + 4568) = 11;
  *(v3 + 4576) = 2;
  *(v3 + 4584) = "spotting";
  *(v3 + 4592) = 8;
  *(v3 + 4600) = 2;
  *(v3 + 4608) = "stair_speed_down";
  *(v3 + 4616) = 16;
  *(v3 + 4624) = 2;
  *(v3 + 4632) = "stair_speed_up";
  *(v3 + 4640) = 14;
  *(v3 + 4648) = 2;
  *(v3 + 4656) = "step_length";
  *(v3 + 4664) = 11;
  *(v3 + 4672) = 2;
  *(v3 + 4680) = "stress";
  *(v3 + 4688) = 6;
  *(v3 + 4696) = 2;
  *(v3 + 4704) = "thiamin";
  *(v3 + 4712) = 7;
  *(v3 + 4720) = 2;
  *(v3 + 4728) = "time_in_daylight";
  *(v3 + 4736) = 16;
  *(v3 + 4744) = 2;
  *(v3 + 4752) = "toothbrushing";
  *(v3 + 4760) = 13;
  *(v3 + 4768) = 2;
  *(v3 + 4776) = "underwater_depth";
  *(v3 + 4784) = 16;
  *(v3 + 4792) = 2;
  *(v3 + 4800) = "uv_index";
  *(v3 + 4808) = 8;
  *(v3 + 4816) = 2;
  *(v3 + 4824) = "vaccination_record";
  *(v3 + 4832) = 18;
  *(v3 + 4840) = 2;
  *(v3 + 4848) = "vaginal_dryness";
  *(v3 + 4856) = 15;
  *(v3 + 4864) = 2;
  *(v3 + 4872) = "verifiable_clinical_record";
  *(v3 + 4880) = 26;
  *(v3 + 4888) = 2;
  *(v3 + 4896) = "vertical_oscillation";
  *(v3 + 4904) = 20;
  *(v3 + 4912) = 2;
  *(v3 + 4920) = "vital_sign_record";
  *(v3 + 4928) = 17;
  *(v3 + 4936) = 2;
  *(v3 + 4944) = "vitamin";
  *(v3 + 4952) = 7;
  *(v3 + 4960) = 2;
  *(v3 + 4968) = "vitamin_a";
  *(v3 + 4976) = 9;
  *(v3 + 4984) = 2;
  *(v3 + 4992) = "vitamin_b12";
  *(v3 + 5000) = 11;
  *(v3 + 5008) = 2;
  *(v3 + 5016) = "vitamin_b6";
  *(v3 + 5024) = 10;
  *(v3 + 5032) = 2;
  *(v3 + 5040) = "vitamin_c";
  *(v3 + 5048) = 9;
  *(v3 + 5056) = 2;
  *(v3 + 5064) = "vitamin_d";
  *(v3 + 5072) = 9;
  *(v3 + 5080) = 2;
  *(v3 + 5088) = "vitamin_e";
  *(v3 + 5096) = 9;
  *(v3 + 5104) = 2;
  *(v3 + 5112) = "vitamin_k";
  *(v3 + 5120) = 9;
  *(v3 + 5128) = 2;
  *(v3 + 5136) = "vo2_max";
  *(v3 + 5144) = 7;
  *(v3 + 5152) = 2;
  *(v3 + 5160) = "vomiting";
  *(v3 + 5168) = 8;
  *(v3 + 5176) = 2;
  *(v3 + 5184) = "waist_circumference";
  *(v3 + 5192) = 19;
  *(v3 + 5200) = 2;
  *(v3 + 5208) = "walking_asymmetry";
  *(v3 + 5216) = 17;
  *(v3 + 5224) = 2;
  *(v3 + 5232) = "walking_double_support_percentage";
  *(v3 + 5240) = 33;
  *(v3 + 5248) = 2;
  *(v3 + 5256) = "walking_heart_rate_average";
  *(v3 + 5264) = 26;
  *(v3 + 5272) = 2;
  *(v3 + 5280) = "walking_pace";
  *(v3 + 5288) = 12;
  *(v3 + 5296) = 2;
  *(v3 + 5304) = "walking_steadiness";
  *(v3 + 5312) = 18;
  *(v3 + 5320) = 2;
  *(v3 + 5328) = "walking_stride_length";
  *(v3 + 5336) = 21;
  *(v3 + 5344) = 2;
  *(v3 + 5352) = "water";
  *(v3 + 5360) = 5;
  *(v3 + 5368) = 2;
  *(v3 + 5376) = "water_temperature";
  *(v3 + 5384) = 17;
  *(v3 + 5392) = 2;
  *(v3 + 5400) = "wheelchair_pace";
  *(v3 + 5408) = 15;
  *(v3 + 5416) = 2;
  *(v3 + 5424) = "wheelchair_use";
  *(v3 + 5432) = 14;
  *(v3 + 5440) = 2;
  *(v3 + 5448) = "wheezing";
  *(v3 + 5456) = 8;
  *(v3 + 5464) = 2;
  *(v3 + 5472) = "wrist_temperature";
  *(v3 + 5480) = 17;
  *(v3 + 5488) = 2;
  *(v3 + 5496) = "zinc";
  *(v3 + 5504) = 4;
  *(v3 + 5512) = 2;
  *(v3 + 5520) = "active_energy";
  *(v3 + 5528) = 13;
  *(v3 + 5536) = 2;
  *(v3 + 5544) = "activity";
  *(v3 + 5552) = 8;
  *(v3 + 5560) = 2;
  *(v3 + 5568) = "basal_body_temperature";
  *(v3 + 5576) = 22;
  *(v3 + 5584) = 2;
  *(v3 + 5592) = "basal_energy_burned";
  *(v3 + 5600) = 19;
  *(v3 + 5608) = 2;
  *(v3 + 5616) = "body_mass_index";
  *(v3 + 5624) = 15;
  *(v3 + 5632) = 2;
  *(v3 + 5640) = "body_temperature";
  *(v3 + 5648) = 16;
  *(v3 + 5656) = 2;
  *(v3 + 5664) = "brisk_minute_goal";
  *(v3 + 5672) = 17;
  *(v3 + 5680) = 2;
  *(v3 + 5688) = "burned_generic";
  *(v3 + 5696) = 14;
  *(v3 + 5704) = 2;
  *(v3 + 5712) = "exercise_goal";
  *(v3 + 5720) = 13;
  *(v3 + 5728) = 2;
  *(v3 + 5736) = "exercise_minutes";
  *(v3 + 5744) = 16;
  *(v3 + 5752) = 2;
  *(v3 + 5760) = "exercise_ring";
  *(v3 + 5768) = 13;
  *(v3 + 5776) = 2;
  *(v3 + 5784) = "heart_rate";
  *(v3 + 5792) = 10;
  *(v3 + 5800) = 2;
  *(v3 + 5808) = "height";
  *(v3 + 5816) = 6;
  *(v3 + 5824) = 2;
  *(v3 + 5832) = "move";
  *(v3 + 5840) = 4;
  *(v3 + 5848) = 2;
  *(v3 + 5856) = "move_goal";
  *(v3 + 5864) = 9;
  *(v3 + 5872) = 2;
  *(v3 + 5880) = "move_ring";
  *(v3 + 5888) = 9;
  *(v3 + 5896) = 2;
  *(v3 + 5904) = "oxygen_saturation";
  *(v3 + 5912) = 17;
  *(v3 + 5920) = 2;
  *(v3 + 5928) = "push_count";
  *(v3 + 5936) = 10;
  *(v3 + 5944) = 2;
  *(v3 + 5952) = "resting_energy";
  *(v3 + 5960) = 14;
  *(v3 + 5968) = 2;
  *(v3 + 5976) = "ring_general";
  *(v3 + 5984) = 12;
  *(v3 + 5992) = 2;
  *(v3 + 6000) = "roll_goal";
  *(v3 + 6008) = 9;
  *(v3 + 6016) = 2;
  *(v3 + 6024) = "roll_ring";
  *(v3 + 6032) = 9;
  *(v3 + 6040) = 2;
  *(v3 + 6048) = "sex";
  *(v3 + 6056) = 3;
  *(v3 + 6064) = 2;
  *(v3 + 6072) = "six_minute_walk";
  *(v3 + 6080) = 15;
  *(v3 + 6088) = 2;
  *(v3 + 6096) = "stand";
  *(v3 + 6104) = 5;
  *(v3 + 6112) = 2;
  *(v3 + 6120) = "stand_goal";
  *(v3 + 6128) = 10;
  *(v3 + 6136) = 2;
  *(v3 + 6144) = "stand_ring";
  *(v3 + 6152) = 10;
  *(v3 + 6160) = 2;
  *(v3 + 6168) = "step_goal";
  *(v3 + 6176) = 9;
  *(v3 + 6184) = 2;
  *(v3 + 6192) = "swimming_stroke";
  *(v3 + 6200) = 15;
  *(v3 + 6208) = 2;
  *(v3 + 6216) = "walk_run_distance";
  *(v3 + 6224) = 17;
  *(v3 + 6232) = 2;
  *(v3 + 6240) = "walking_speed";
  *(v3 + 6248) = 13;
  *(v3 + 6256) = 2;
  *(v3 + 6264) = "weight";
  *(v3 + 6272) = 6;
  *(v3 + 6280) = 2;
  *(v3 + 6288) = "wheelchair_distance";
  *(v3 + 6296) = 19;
  *(v3 + 6304) = 2;
  *(v3 + 6312) = "bicycling";
  *(v3 + 6320) = 9;
  *(v3 + 6328) = 2;
  *(v3 + 6336) = "run";
  *(v3 + 6344) = 3;
  *(v3 + 6352) = 2;
  *(v3 + 6360) = "stairs_climbing";
  *(v3 + 6368) = 15;
  *(v3 + 6376) = 2;
  *(v3 + 6384) = "swim";
  *(v3 + 6392) = 4;
  *(v3 + 6400) = 2;
  *(v3 + 6408) = "walk";
  *(v3 + 6416) = 4;
  *(v3 + 6424) = 2;
  *(v3 + 6432) = "wheelchair";
  *(v3 + 6440) = 10;
  *(v3 + 6448) = 2;
  *(v3 + 6456) = "stepCount";
  *(v3 + 6464) = 9;
  *(v3 + 6472) = 2;
  HKActivityRingUIViewRepresentable.updateUIView(_:context:)();
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v4 = sub_16E55C(v8, v9);

  v5 = v4 - 128;
  if (v4 < 0x80)
  {
    return v4;
  }

  result = 183;
  v4 = 128;
  switch(v5)
  {
    case 0uLL:
      return v4;
    case 1uLL:
      return 129;
    case 2uLL:
      return 130;
    case 3uLL:
      return 131;
    case 4uLL:
      return 132;
    case 5uLL:
      return 133;
    case 6uLL:
      return 134;
    case 7uLL:
      return 135;
    case 8uLL:
      return 136;
    case 9uLL:
      return 137;
    case 0xAuLL:
      return 138;
    case 0xBuLL:
      return 139;
    case 0xCuLL:
      return 140;
    case 0xDuLL:
      return 141;
    case 0xEuLL:
      return 142;
    case 0xFuLL:
      return 143;
    case 0x10uLL:
      return 144;
    case 0x11uLL:
      return 145;
    case 0x12uLL:
      return 146;
    case 0x13uLL:
      return 147;
    case 0x14uLL:
      return 148;
    case 0x15uLL:
      return 149;
    case 0x16uLL:
      return 150;
    case 0x17uLL:
      return 151;
    case 0x18uLL:
      return 152;
    case 0x19uLL:
      return 153;
    case 0x1AuLL:
      return 154;
    case 0x1BuLL:
      return 155;
    case 0x1CuLL:
      return 156;
    case 0x1DuLL:
      return 157;
    case 0x1EuLL:
      return 158;
    case 0x1FuLL:
      return 159;
    case 0x20uLL:
      return 160;
    case 0x21uLL:
      return 161;
    case 0x22uLL:
      return 162;
    case 0x23uLL:
      return 163;
    case 0x24uLL:
      return 164;
    case 0x25uLL:
      return 165;
    case 0x26uLL:
      return 166;
    case 0x27uLL:
      return 167;
    case 0x28uLL:
      return 168;
    case 0x29uLL:
      return 169;
    case 0x2AuLL:
      return 170;
    case 0x2BuLL:
      return 171;
    case 0x2CuLL:
      return 172;
    case 0x2DuLL:
      return 173;
    case 0x2EuLL:
      return 174;
    case 0x2FuLL:
      return 175;
    case 0x30uLL:
      return 176;
    case 0x31uLL:
      return 177;
    case 0x32uLL:
      return 178;
    case 0x33uLL:
      return 179;
    case 0x34uLL:
      return 180;
    case 0x35uLL:
      return 181;
    case 0x36uLL:
      return 182;
    case 0x37uLL:
      return result;
    case 0x38uLL:
      result = 184;
      break;
    case 0x39uLL:
      result = 185;
      break;
    case 0x3AuLL:
      result = 186;
      break;
    case 0x3BuLL:
      result = 187;
      break;
    case 0x3CuLL:
      result = 188;
      break;
    case 0x3DuLL:
      result = 189;
      break;
    case 0x3EuLL:
      result = 190;
      break;
    case 0x3FuLL:
      result = 191;
      break;
    default:
      result = 270;
      break;
  }

  return result;
}

uint64_t sub_143CF4@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_142388(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_143D24(uint64_t *a1@<X8>)
{
  sub_140650(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t getEnumTagSinglePayload for HealthDataType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFEF3)
  {
    if (a2 + 269 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 269 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 270;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10E;
  v5 = v6 - 270;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthDataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 269 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 269 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEF2)
  {
    v6 = ((a2 - 65267) >> 16) + 1;
    *result = a2 + 269;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x143EC8);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 269;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_143F14()
{
  result = qword_1CB158;
  if (!qword_1CB158)
  {
    sub_9790(&qword_1CB160, qword_178188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB158);
  }

  return result;
}

unint64_t sub_143F7C()
{
  result = qword_1CB168;
  if (!qword_1CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB168);
  }

  return result;
}

void *sub_143FF8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  memcpy(v10 + 3, a2, 0xA0uLL);
  v10[23] = a3;
  v10[24] = a4;
  sub_1E1A8(a5, (v10 + 25));
  return v10;
}

void *sub_144074(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  memcpy(v5 + 3, a2, 0xA0uLL);
  v5[23] = a3;
  v5[24] = a4;
  sub_1E1A8(a5, (v5 + 25));
  return v5;
}

uint64_t sub_1440C8()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v1[20] = sub_8BC0();
  v5 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v5);
  v1[21] = sub_8BC0();
  v6 = sub_16C89C();
  v1[22] = v6;
  sub_888C(v6);
  v1[23] = v7;
  v1[24] = sub_8BC0();
  v8 = sub_16C8FC();
  v1[25] = v8;
  sub_888C(v8);
  v1[26] = v9;
  v1[27] = sub_8BC0();
  v10 = sub_16C80C();
  v1[28] = v10;
  sub_888C(v10);
  v1[29] = v11;
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v12 = sub_16C83C();
  v1[32] = v12;
  sub_888C(v12);
  v1[33] = v13;
  v1[34] = sub_8BC0();
  v14 = sub_16C7DC();
  v1[35] = v14;
  sub_888C(v14);
  v1[36] = v15;
  v1[37] = sub_8BC0();
  v16 = sub_16DBEC();
  v1[38] = v16;
  sub_888C(v16);
  v1[39] = v17;
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_1443AC()
{
  v92 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBAC();
  sub_8B48(v8, v0 + 48);
  v88 = *(v3 + 16);
  v88(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 280);
  if (v11)
  {
    v85 = *(v0 + 304);
    v83 = *(v0 + 336);
    v16 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v91 = v81;
    *v16 = 136315394;
    v17 = sub_16E7AC();
    v19 = sub_3AB7C(v17, v18, &v91);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v20, v21, &protocol conformance descriptor for Input);
    v22 = sub_16E68C();
    v24 = v23;
    v25 = sub_146E70();
    v26(v25, v15);
    v27 = sub_3AB7C(v22, v24, &v91);

    *(v16 + 14) = v27;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v81);
    sub_8A2C(v16);

    v28 = *(v13 + 8);
    v28(v83, v85);
  }

  else
  {

    v29 = sub_146E70();
    v30(v29, v15);
    v28 = *(v13 + 8);
    v28(v12, v14);
  }

  v31 = *(v0 + 232);
  sub_16C7CC();
  v32 = *(v31 + 88);
  v33 = sub_C9F8();
  if (v32(v33) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_8:
    sub_16C7CC();
    v41 = sub_C9F8();
    if (v32(v41) != enum case for Parse.directInvocation(_:))
    {
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      v48 = sub_16DBBC();
      sub_8B48(v48, v0 + 72);
      v49 = sub_6B5B8();
      (v88)(v49);
      v50 = sub_16DBDC();
      v51 = sub_16E37C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&def_259DC, v50, v51, "Received unsupported type of input", v52, 2u);
        sub_8A2C(v52);
      }

      v53 = sub_C9F8();
      (v28)(v53);
      goto LABEL_25;
    }

    v42 = *(v0 + 240);
    v44 = *(v0 + 152);
    v43 = *(v0 + 160);
    v45 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v42, *(v0 + 224));
    (*(v44 + 32))(v43, v42, v45);
    v46 = sub_16C7EC();
    if (v46)
    {
      sub_17400(v46, (v0 + 16), 0xD000000000000012, 0x800000000017A960);

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v47 = *(v0 + 128);
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v89 = *(v0 + 344);
          v90 = *(v47 + 16);

          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_21:
    v58 = sub_16DBBC();
    sub_8B48(v58, v0 + 96);
    v59 = sub_6B5B8();
    (v88)(v59);
    v60 = sub_16DBDC();
    v61 = sub_16E37C();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 328);
    v64 = *(v0 + 304);
    if (v62)
    {
      v87 = v28;
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&def_259DC, v60, v61, "MedUpdateLogStatusStrategy failed to unpack directInvocation, returning nil", v65, 2u);
      sub_8A2C(v65);

      v87(v63, v64);
    }

    else
    {

      v28(v63, v64);
    }

    v66 = sub_C9C8();
    v67(v66);
LABEL_25:
    v89 = 0;
    v90 = 1;
    goto LABEL_26;
  }

  v34 = *(v0 + 192);
  v84 = *(v0 + 200);
  v86 = v28;
  v35 = *(v0 + 184);
  v82 = *(v0 + 176);
  v36 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(*(v0 + 248), *(v0 + 224));
  v37 = sub_6B5B8();
  v38(v37);
  sub_16C82C();
  v39 = sub_16C88C();
  (*(v35 + 8))(v34, v82);
  sub_9AD9C(v39, v36);

  if (sub_369C(v36, 1, v84) == 1)
  {
    v40 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v40, &qword_1C6FF0, &unk_1730A0);
    v28 = v86;
    goto LABEL_8;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if (sub_16C8CC())
  {
    v54 = *(v0 + 128);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v55 = sub_C9C8();
    v56(v55);
    v90 = *(v54 + 16);

    v57 = 1;
LABEL_18:
    v89 = v57;
    goto LABEL_26;
  }

  v70 = sub_16C8DC();
  v71 = *(v0 + 200);
  if (v70)
  {
    v72 = sub_146E70();
    v73(v72, v71);
    v74 = sub_C9F8();
    v75(v74);
  }

  else
  {
    v76 = sub_16C8EC();
    v77 = sub_146E70();
    v78(v77, v71);
    v79 = sub_C9F8();
    v80(v79);
    if ((v76 & 1) == 0)
    {
      v90 = *(*(v0 + 128) + 16);

      v57 = 2;
      goto LABEL_18;
    }
  }

  v90 = *(*(v0 + 128) + 16);

  v89 = 0;
LABEL_26:

  v68 = *(v0 + 8);

  return v68(v89, v90);
}

uint64_t sub_144BE8(uint64_t a1)
{
  v2 = sub_16C7DC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_4304();
  v15 = v14 - v13;
  v16 = sub_16DBAC();
  sub_8B48(v16, v33);
  v31 = v9;
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_16DBDC();
  v18 = sub_16E36C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v4 + 8))(v8, v2);
    v28 = sub_3AB7C(v25, v27, &v32);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v17, v18, "%s Handling Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v30);
    sub_8A2C(v19);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v11 + 8))(v15, v31);
  return sub_16C47C();
}

uint64_t sub_144F0C()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_145080(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 64), *(v1[12] + 88));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_1452D0;

  return sub_7AA38();
}

uint64_t sub_1452D0()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_145424(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 200, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_1455AC;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_1455AC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_1456AC()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v1[24] = sub_8BC0();
  v5 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v5);
  v1[25] = sub_8BC0();
  v6 = sub_16C46C();
  sub_4348(v6);
  v1[26] = sub_8BC0();
  v7 = sub_16C7BC();
  v1[27] = v7;
  sub_888C(v7);
  v1[28] = v8;
  v1[29] = sub_8BC0();
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_145820()
{
  sub_C9EC();
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (!sub_3B35C(v2))
  {
    goto LABEL_6;
  }

  sub_3B360();
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_16E48C();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  sub_16BA08(v3);
  if (v4)
  {
    sub_16E23C();

    v5 = 0;
  }

  else
  {
LABEL_6:
    v5 = 1;
  }

  v6 = v0[31];
  v7 = sub_16D5CC();
  v8 = 1;
  sub_214C(v6, v5, 1, v7);
  v9 = *(v1 + 16);
  if (sub_3B35C(v9))
  {
    sub_3B360();
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = sub_16E48C();
    }

    else
    {
      v10 = *(v9 + 32);
    }

    sub_146C80(v10);
    if (v11)
    {
      sub_16E23C();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  v12 = v0[21];
  sub_214C(v0[30], v8, 1, v7);
  v0[32] = *(v12 + 184);

  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_145A1C;
  sub_38F74();

  return sub_166F98();
}

uint64_t sub_145A1C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  if (v0)
  {

    sub_8ACC();
    sub_38F74();

    return _swift_task_switch(v7);
  }

  else
  {

    *(v4 + 272) = v3;
    v9 = swift_task_alloc();
    *(v4 + 280) = v9;
    *v9 = v6;
    v9[1] = sub_145BC8;
    sub_38F74();

    return sub_66A84(v10, v11);
  }
}

uint64_t sub_145BC8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[36] = v5;
  v2[37] = v6;

  v7 = swift_task_alloc();
  v2[38] = v7;
  *v7 = v4;
  v7[1] = sub_145CFC;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_145CFC()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 312) = v0;
  *(v2 + 320) = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_145DEC()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v24 = v3;
  v8 = 0x6C65636E6143;
  if (!v7)
  {
    v8 = v0[36];
  }

  v23 = v8;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v22 = v2;
  if (v1)
  {
    v9 = v0[40];
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v10 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_1466DC();
  v11 = sub_16C55C();
  sub_214C(v5, 0, 1, v11);
  sub_16C78C();
  sub_16C79C();
  sub_16C77C();
  v12 = [v4 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();
  sub_8388(v6 + 200, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  sub_2D20(v0 + 7, v13);
  v0[15] = type metadata accessor for WellnessSnippets(0);
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  v15 = sub_9910(v0 + 12);
  *v15 = 0xD000000000000031;
  v15[1] = 0x800000000017DF40;
  v15[2] = v23;
  v15[3] = v24;
  v15[4] = v22;
  v15[5] = v9;
  *(v15 + 48) = v10 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = swift_allocObject();
  v0[41] = v16;
  *(v16 + 16) = xmmword_170F70;
  *(v16 + 32) = v4;
  v17 = v4;
  v18 = swift_task_alloc();
  v0[42] = v18;
  *v18 = v0;
  v18[1] = sub_1460D4;
  v19 = v0[29];
  v20 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 12, v16, v19, v13, v14);
}

uint64_t sub_1460D4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 96));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

void sub_1461D4()
{
  sub_C9EC();
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v2, v4);
  v5 = sub_C9F8();
  sub_C878(v5, v6, &unk_16F510);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_6B5E8();

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1462C0(uint64_t a1)
{
  v2 = sub_16DBBC();
  sub_8B48(v2, v1 + 136);
  v3 = sub_6B5B8();
  v4(v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Couldn't create logMedUpdateToStatusConfirmation_Dialog, returning generic error output.", v7, 2u);
    sub_8A2C(v7);
  }

  v8 = sub_C9F8();
  v9(v8);
  sub_146CF0();
  *(v1 + 344) = swift_allocError();
  v10 = swift_task_alloc();
  *(v1 + 352) = v10;
  *v10 = v1;
  v10[1] = sub_146430;

  return sub_144F0C();
}

uint64_t sub_146430()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

void sub_146530()
{
  sub_C9EC();
  sub_C878(*(v0 + 240), &qword_1C5800, &unk_16F510);
  v1 = sub_C9C8();
  sub_C878(v1, v2, &unk_16F510);
  sub_6B5E8();

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1465E8()
{
  v1 = *(v0 + 248);
  sub_C878(*(v0 + 240), &qword_1C5800, &unk_16F510);
  sub_C878(v1, &qword_1C5800, &unk_16F510);

  sub_C9BC();

  return v2();
}

uint64_t sub_1466DC()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_4304();
  v4 = v3 - v2;
  v5 = sub_16C8BC();
  sub_42F0();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_16C8AC();
  sub_16C95C();
  (*(v7 + 16))(v11, v13, v5);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_16F530;
  (*(v1 + 16))(v15 + v14, v4, v0);
  sub_16C53C();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_14690C()
{

  sub_C938(v0 + 24);

  sub_2D64((v0 + 200));
  return v0;
}

uint64_t sub_14694C()
{
  sub_14690C();

  return _swift_deallocClassInstance(v0, 240, 7);
}

uint64_t sub_1469A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_146A40;

  return sub_1440C8();
}

void sub_146A40()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_38388();
  *v8 = v7;
  v9 = *v1;
  sub_C990();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_146B40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_1456AC();
}

uint64_t sub_146BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_144F0C();
}

uint64_t sub_146C80(void *a1)
{
  v2 = [a1 loggedTime];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_16E1BC();

  return v3;
}

unint64_t sub_146CF0()
{
  result = qword_1CB2D8;
  if (!qword_1CB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MedUpdateLogStatusStrategyError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x146DE0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_146E1C()
{
  result = qword_1CB2E0;
  if (!qword_1CB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2E0);
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTime:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v76 = a8;
  v74 = a4;
  v75 = a7;
  v91 = a22;
  v92 = a23;
  v89 = a20;
  v90 = a21;
  v87 = a18;
  v88 = a19;
  v86 = a17;
  v84 = a15;
  v85 = a16;
  v82 = a13;
  v83 = a14;
  v78 = a12;
  v30 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v30);
  sub_433C();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  v34 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v35 = v34[8];
  sub_16C11C();
  v79 = v35;
  sub_8AB4();
  v77 = v36;
  sub_214C(v37, v38, v39, v36);
  v40 = v34[19];
  type metadata accessor for SnippetHeaderModel(0);
  v80 = v40;
  sub_8AB4();
  sub_214C(v41, v42, v43, v44);
  *a9 = a1;
  v81 = a2;
  *(a9 + 8) = sub_BA66C();
  *(a9 + 16) = v45;
  v46 = v74;
  v47 = v75;
  *(a9 + 24) = a3;
  *(a9 + 32) = v46;
  v48 = a5;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  if (a6)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v50 = (a6 != 0) | v76;
  v51 = a9 + v34[9];
  v52 = (a9 + v34[10]);
  v53 = v34[11];
  *v51 = v49;
  v54 = v50 & 1;
  *(v51 + 8) = v50 & 1;

  *v52 = sub_147C94(v49, v54);
  v52[1] = v55;
  if (a6)
  {

    v56 = 0;
    a11 = 0;
    v57 = v48;
  }

  else
  {
    v56 = a10;
    a6 = 0xE900000000000064;
    v57 = 0x656465654E207341;
  }

  v58 = (a9 + v53);
  *v58 = v56;
  v58[1] = a11;
  v59 = (a9 + v34[12]);
  v60 = (a9 + v34[13]);
  v62 = v34[14];
  v61 = v34[15];
  v63 = (a9 + v34[16]);
  v64 = (a9 + v34[17]);
  v65 = (a9 + v34[18]);
  *v59 = v57;
  v59[1] = a6;
  v66 = v78;
  sub_147DA8(v78);
  sub_8748(v66, &qword_1C57F8, &unk_172510);
  sub_16BF5C();
  sub_8B38();
  (*(v67 + 8))(v81);
  sub_214C(v33, 0, 1, v77);
  sub_1E634(v33, a9 + v79, &qword_1C63F0, &unk_1717F0);
  v68 = v83;
  *v60 = v82;
  v60[1] = v68;
  *(a9 + v62) = v84 & 1;
  *(a9 + v61) = v85 & 1;
  v69 = v87;
  *v63 = v86;
  v63[1] = v69;
  v70 = v89;
  *v64 = v88;
  v64[1] = v70;
  v71 = v91;
  *v65 = v90;
  v65[1] = v71;
  return sub_1E634(v92, a9 + v80, &dword_1C63F8, &qword_171800);
}

uint64_t type metadata accessor for SpecificMedCompletedLogModel(uint64_t a1)
{
  result = qword_1CB358;
  if (!qword_1CB358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTimeString:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v73 = a5;
  v74 = a8;
  v71 = a4;
  v72 = a10;
  v88 = a23;
  v89 = a24;
  v86 = a21;
  v87 = a22;
  v84 = a19;
  v85 = a20;
  v83 = a18;
  v81 = a16;
  v82 = a17;
  v79 = a14;
  v80 = a15;
  v78 = a13;
  v31 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v31);
  sub_433C();
  __chkstk_darwin(v32);
  v34 = &v70 - v33;
  v35 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v36 = v35[8];
  v75 = sub_16C11C();
  v76 = v36;
  sub_8AB4();
  sub_214C(v37, v38, v39, v40);
  v41 = v35[19];
  type metadata accessor for SnippetHeaderModel(0);
  v77 = v41;
  sub_8AB4();
  sub_214C(v42, v43, v44, v45);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v46 = v73;
  *(a9 + 24) = v71;
  *(a9 + 32) = v46;
  v47 = a6;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if (a7)
  {
    v48 = 0;
  }

  else
  {
    v48 = v74;
  }

  v49 = (a7 != 0) | v72;
  v50 = a9 + v35[9];
  v51 = (a9 + v35[10]);
  v52 = v35[11];
  *v50 = v48;
  v53 = v49 & 1;
  *(v50 + 8) = v49 & 1;

  *v51 = sub_147C94(v48, v53);
  v51[1] = v54;
  if (a7)
  {

    v55 = 0;
    a12 = 0;
  }

  else
  {
    v55 = a11;
    a7 = 0xE900000000000064;
    v47 = 0x656465654E207341;
  }

  v56 = (a9 + v52);
  *v56 = v55;
  v56[1] = a12;
  v57 = (a9 + v35[12]);
  v58 = (a9 + v35[13]);
  v59 = v35[14];
  v60 = v35[15];
  v61 = (a9 + v35[16]);
  v62 = (a9 + v35[17]);
  v63 = (a9 + v35[18]);
  *v57 = v47;
  v57[1] = a7;
  v64 = v78;
  sub_147DA8(v78);
  sub_8748(v64, &qword_1C57F8, &unk_172510);
  sub_214C(v34, 0, 1, v75);
  sub_1E634(v34, a9 + v76, &qword_1C63F0, &unk_1717F0);
  v65 = v80;
  *v58 = v79;
  v58[1] = v65;
  *(a9 + v59) = v81 & 1;
  *(a9 + v60) = v82 & 1;
  v66 = v84;
  *v61 = v83;
  v61[1] = v66;
  v67 = v86;
  *v62 = v85;
  v62[1] = v67;
  v68 = v88;
  *v63 = v87;
  v63[1] = v68;
  return sub_1E634(v89, a9 + v77, &dword_1C63F8, &qword_171800);
}

uint64_t SpecificMedCompletedLogModel.requestedMedName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedSchedule.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosage.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageString.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.dosageString.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.medType.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.medType.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpecificMedCompletedLogModel.takenLabel.getter()
{
  type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t SpecificMedCompletedLogModel.takenLabel.setter()
{
  sub_149A7C();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_147C94(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_12;
  }

  v2 = result;
  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_12:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_147DA8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_147F50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000000017AE00 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000000017E660 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656761736F64 && a2 == 0xE600000000000000;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7453656761736F64 && a2 == 0xEC000000676E6972;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E55656761736F64 && a2 == 0xEA00000000007469;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6570795464656DLL && a2 == 0xE700000000000000;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x800000000017F3D0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_16E6BC();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_148430(char a1)
{
  result = 0x757461745364656DLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x68636E7550707061;
      break;
    case 5:
      result = 0x656761736F64;
      break;
    case 6:
      result = 0x7453656761736F64;
      break;
    case 7:
      result = 0x6E55656761736F64;
      break;
    case 8:
      result = 0x6570795464656DLL;
      break;
    case 9:
      result = 0x646E754268736173;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x457472616D537369;
      break;
    case 12:
      result = 0x614C646567676F6CLL;
      break;
    case 13:
      result = 0x4C64657070696B73;
      break;
    case 14:
      result = 0x62614C6E656B6174;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_148670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_147F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_148698(uint64_t a1)
{
  v2 = sub_148A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1486D4(uint64_t a1)
{
  v2 = sub_148A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SpecificMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CB2E8, &qword_178458);
  sub_42F0();
  v5 = v4;
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_2D20(a1, a1[3]);
  sub_148A70();
  sub_16E77C();
  v16 = 0;
  sub_149AD0();
  sub_BC0B8();
  sub_16E65C();
  if (!v1)
  {
    sub_153FC(1);
    sub_16E64C();
    sub_153FC(2);
    sub_16E61C();
    sub_153FC(3);
    sub_16E61C();
    v9 = type metadata accessor for SpecificMedCompletedLogModel(0);
    v16 = 4;
    sub_16C11C();
    sub_149A4C();
    sub_149418(v10, v11, &protocol conformance descriptor for AppPunchout);
    sub_149AD0();
    sub_BC0B8();
    sub_16E63C();
    sub_153FC(5);
    sub_16E62C();
    sub_66A40(v9[10]);
    sub_153FC(6);
    sub_16E64C();
    sub_66A40(v9[11]);
    sub_153FC(7);
    sub_16E61C();
    sub_66A40(v9[12]);
    sub_153FC(8);
    sub_16E64C();
    sub_66A40(v9[13]);
    sub_153FC(9);
    sub_16E64C();
    v16 = 10;
    sub_149AD0();
    sub_BC0B8();
    sub_16E65C();
    v16 = 11;
    sub_149AD0();
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v9[16]);
    sub_153FC(12);
    sub_16E61C();
    sub_66A40(v9[17]);
    sub_153FC(13);
    sub_16E61C();
    sub_66A40(v9[18]);
    sub_153FC(14);
    sub_16E61C();
    v16 = 15;
    type metadata accessor for SnippetHeaderModel(0);
    sub_149A64();
    sub_149418(v12, v13, &protocol conformance descriptor for SnippetHeaderModel);
    sub_149AD0();
    sub_BC0B8();
    sub_16E63C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_148A70()
{
  result = qword_1CB2F0;
  if (!qword_1CB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2F0);
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v90 = &v81 - v5;
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v9 = &v81 - v8;
  v93 = sub_2440(&qword_1CB2F8, &qword_178460);
  sub_42F0();
  v91 = v10;
  sub_433C();
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = type metadata accessor for SpecificMedCompletedLogModel(0);
  sub_8B38();
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 32);
  v20 = sub_16C11C();
  v99 = v19;
  sub_8AB4();
  sub_214C(v21, v22, v23, v20);
  v24 = v14[19];
  v101 = v18;
  v25 = &v18[v24];
  v26 = type metadata accessor for SnippetHeaderModel(0);
  v94 = v25;
  sub_8AB4();
  sub_214C(v27, v28, v29, v26);
  v30 = a1[3];
  v95 = a1;
  sub_2D20(a1, v30);
  sub_148A70();
  v92 = v13;
  v31 = v100;
  sub_16E76C();
  if (v31)
  {
    v100 = v31;
    sub_1499E0();
    v32 = v99;
    v35 = v101;
LABEL_4:
    sub_2D64(v95);

    sub_8748(&v35[v32], &qword_1C63F0, &unk_1717F0);

    return sub_8748(v94, &dword_1C63F8, &qword_171800);
  }

  v87 = v26;
  v88 = 0x800000000017A2C0;
  v102 = 0;
  v33 = sub_16E5CC();
  v34 = v99;
  v37 = v101;
  *v101 = v33 & 1;
  v102 = 1;
  v37[1] = sub_16E5BC();
  v37[2] = v38;
  v86 = v38;
  v102 = 2;
  v37[3] = sub_16E58C();
  v37[4] = v39;
  v85 = v39;
  sub_149A0C(3);
  v37[5] = sub_16E58C();
  v37[6] = v40;
  v84 = v40;
  v102 = 4;
  sub_149A4C();
  sub_149418(v41, v42, &protocol conformance descriptor for AppPunchout);
  sub_16E5AC();
  sub_1E634(v9, v37 + v34, &qword_1C63F0, &unk_1717F0);
  sub_149A0C(5);
  v43 = sub_16E59C();
  v44 = v37 + v14[9];
  *v44 = v43;
  v44[8] = v45 & 1;
  sub_149A0C(6);
  v46 = sub_16E5BC();
  v47 = (v37 + v14[10]);
  *v47 = v46;
  v47[1] = v48;
  sub_149A0C(7);
  v49 = sub_16E58C();
  v50 = &v101[v14[11]];
  *v50 = v49;
  v50[1] = v51;
  v83 = v51;
  sub_149A0C(8);
  sub_16E5BC();
  v100 = 0;
  sub_149ADC();
  *v54 = v52;
  v54[1] = v53;
  sub_149A0C(9);
  sub_16E5BC();
  v82 = v55;
  v100 = 0;
  sub_149ADC();
  v56 = v82;
  *v58 = v57;
  v58[1] = v56;
  sub_149A2C(10);
  v59 = sub_16E5CC();
  v100 = 0;
  v101[v14[14]] = v59 & 1;
  sub_149A2C(11);
  v60 = sub_16E5CC();
  v100 = 0;
  v101[v14[15]] = v60 & 1;
  sub_149A2C(12);
  sub_16E58C();
  v98 = v61;
  v100 = 0;
  sub_149ADC();
  v62 = v98;
  *v64 = v63;
  v64[1] = v62;
  sub_149A2C(13);
  sub_16E58C();
  v97 = v65;
  v100 = 0;
  sub_149ADC();
  v66 = v97;
  *v68 = v67;
  v68[1] = v66;
  sub_149A2C(14);
  v69 = sub_16E58C();
  v96 = v70;
  v100 = 0;
  v71 = &v101[v14[18]];
  v72 = v96;
  *v71 = v69;
  v71[1] = v72;
  v102 = 15;
  sub_149A64();
  sub_149418(v73, v74, &protocol conformance descriptor for SnippetHeaderModel);
  v75 = v100;
  sub_16E5AC();
  v100 = v75;
  if (v75)
  {
    v76 = sub_149A1C();
    v77(v76);
    v32 = v99;
    v35 = v101;
    goto LABEL_4;
  }

  v78 = sub_149A1C();
  v79(v78);
  sub_1E634(v90, v94, &dword_1C63F8, &qword_171800);
  v80 = v101;
  sub_1492C8(v101, v89);
  sub_2D64(v95);
  return sub_14932C(v80);
}

uint64_t sub_1492C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14932C(uint64_t a1)
{
  v2 = type metadata accessor for SpecificMedCompletedLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_149418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1494A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a3 + 76);
    }

    return sub_369C(a1 + v10, a2, v9);
  }
}

uint64_t sub_14959C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a4 + 76);
    }

    return sub_214C(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_14967C(uint64_t a1)
{
  sub_3A10(319, &qword_1C64C8, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for SpecificMedCompletedLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1498A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1498DC()
{
  result = qword_1CB3C8;
  if (!qword_1CB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3C8);
  }

  return result;
}

unint64_t sub_149934()
{
  result = qword_1CB3D0;
  if (!qword_1CB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3D0);
  }

  return result;
}

unint64_t sub_14998C()
{
  result = qword_1CB3D8;
  if (!qword_1CB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3D8);
  }

  return result;
}

void sub_1499E0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void sub_1499FC()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t sub_149A7C()
{

  return type metadata accessor for SpecificMedCompletedLogModel(0);
}

uint64_t sub_149A98()
{

  return type metadata accessor for SpecificMedCompletedLogModel(0);
}

uint64_t HealthDataLogModel.init(snippetHeaderModel:date:unitLabel:dataValue:url:loggedButtonLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a7;
  v59 = a6;
  v60 = a5;
  v57 = a3;
  v58 = a4;
  v65 = a10;
  v66 = a8;
  v13 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v13);
  sub_433C();
  __chkstk_darwin(v14);
  sub_13088();
  v62 = v15;
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  v17 = sub_4348(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  type metadata accessor for SnippetHeaderModel(0);
  sub_8AB4();
  sub_214C(v23, v24, v25, v26);
  v27 = type metadata accessor for HealthDataLogModel(0);
  v28 = v27[5];
  v29 = (a9 + v27[8]);
  v30 = (a9 + v27[9]);
  v31 = v27[10];
  v32 = sub_16C11C();
  v61 = v31;
  v33 = v32;
  sub_8AB4();
  sub_214C(v34, v35, v36, v33);
  v64 = a1;
  sub_5FF8C(a1, a9);
  *(a9 + v28) = a2;
  v37 = v58;
  *v29 = v57;
  v29[1] = v37;
  *v30 = sub_94294(v60, v59 & 1);
  v30[1] = v38;
  if (a2)
  {
    sub_16D45C();
    v39 = sub_16D5CC();
    if (sub_369C(v22, 1, v39) == 1)
    {
      sub_8748(v22, &qword_1C5800, &unk_16F510);
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v45 = sub_16D5BC();
      v47 = v46;
      (*(*(v39 - 8) + 8))(v22, v39);
      v67 = v45;
      v68 = v47;
      sub_9854();
      v40 = sub_16E3FC();
      v41 = v48;
    }

    v49 = (a9 + v27[6]);
    *v49 = v40;
    v49[1] = v41;
    sub_16D46C();
    if (sub_369C(v20, 1, v39) == 1)
    {
      sub_8748(v20, &qword_1C5800, &unk_16F510);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v42 = sub_16D5BC();
      v43 = v50;
      (*(*(v39 - 8) + 8))(v20, v39);
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = (a9 + v27[6]);
    *v44 = 0;
    v44[1] = 0;
  }

  v51 = (a9 + v27[7]);
  v52 = (a9 + v27[11]);
  *v51 = v42;
  v51[1] = v43;
  v54 = v62;
  v53 = v63;
  sub_14A3C8(v63);
  sub_8748(v53, &qword_1C57F8, &unk_172510);
  sub_8748(v64, &dword_1C63F8, &qword_171800);
  sub_214C(v54, 0, 1, v33);
  result = sub_1E634(v54, a9 + v61, &qword_1C63F0, &unk_1717F0);
  v56 = v65;
  *v52 = v66;
  v52[1] = v56;
  return result;
}

uint64_t type metadata accessor for HealthDataLogModel(uint64_t a1)
{
  result = qword_1CB450;
  if (!qword_1CB450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthDataLogModel.date.getter()
{
  type metadata accessor for HealthDataLogModel(0);
}

uint64_t HealthDataLogModel.date.setter()
{
  v2 = *(sub_14B93C() + 20);

  *(v1 + v2) = v0;
  return result;
}

uint64_t HealthDataLogModel.dateLabel.getter()
{
  type metadata accessor for HealthDataLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HealthDataLogModel.dateLabel.setter()
{
  sub_14B910();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.timeLabel.getter()
{
  type metadata accessor for HealthDataLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HealthDataLogModel.timeLabel.setter()
{
  sub_14B910();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.unitLabel.getter()
{
  type metadata accessor for HealthDataLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HealthDataLogModel.unitLabel.setter()
{
  sub_14B910();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.dataLabel.getter()
{
  type metadata accessor for HealthDataLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HealthDataLogModel.dataLabel.setter()
{
  sub_14B910();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.loggedLabel.getter()
{
  type metadata accessor for HealthDataLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HealthDataLogModel.loggedLabel.setter()
{
  sub_14B910();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_14A3C8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_14A570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562)
              {

                return 7;
              }

              else
              {
                v13 = sub_16E6BC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_14A808(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 1702125924;
      goto LABEL_8;
    case 3:
      v3 = 1701669236;
      goto LABEL_8;
    case 4:
      v3 = 1953066613;
      goto LABEL_8;
    case 5:
      v3 = 1635017060;
LABEL_8:
      result = v3 | 0x6562614C00000000;
      break;
    case 6:
      result = 0x68636E7550707061;
      break;
    case 7:
      result = 0x614C646567676F6CLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_14A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14A570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14A928(uint64_t a1)
{
  v2 = sub_14AC28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14A964(uint64_t a1)
{
  v2 = sub_14AC28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HealthDataLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB3E0, &qword_178640);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  sub_2D20(a1, a1[3]);
  sub_14AC28();
  sub_16E77C();
  LOBYTE(v21) = 0;
  type metadata accessor for SnippetHeaderModel(0);
  sub_14B8C8();
  sub_14B284(v11, v12, &protocol conformance descriptor for SnippetHeaderModel);
  sub_12C630(v3);
  if (!v2)
  {
    v13 = type metadata accessor for HealthDataLogModel(0);
    v21 = *(v3 + v13[5]);
    v20[7] = 1;
    sub_16D4EC();
    sub_14B8F8();
    sub_14B284(v14, v15, &protocol conformance descriptor for DialogCalendar);
    sub_12C630(&v21);
    sub_66A40(v13[6]);
    sub_14B884(2);
    sub_66A40(v13[7]);
    sub_14B884(3);
    sub_66A40(v13[8]);
    sub_14B884(4);
    sub_66A40(v13[9]);
    sub_14B884(5);
    v16 = v13[10];
    LOBYTE(v21) = 6;
    sub_16C11C();
    sub_14B8E0();
    sub_14B284(v17, v18, &protocol conformance descriptor for AppPunchout);
    sub_12C630(v3 + v16);
    sub_66A40(v13[11]);
    sub_14B884(7);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_14AC28()
{
  result = qword_1CB3E8;
  if (!qword_1CB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3E8);
  }

  return result;
}

uint64_t HealthDataLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  sub_13088();
  v70 = v5;
  v6 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  sub_13088();
  v74 = v8;
  v75 = sub_2440(&qword_1CB3F0, &qword_178648);
  sub_42F0();
  v73 = v9;
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v79 = v11;
  v12 = type metadata accessor for HealthDataLogModel(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SnippetHeaderModel(0);
  sub_8AB4();
  v72 = v16;
  sub_214C(v17, v18, v19, v16);
  v71 = v13[7];
  *&v15[v71] = 0;
  v20 = &v15[v13[8]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v15[v13[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v15[v13[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v15[v13[11]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = v13[12];
  v25 = sub_16C11C();
  v69 = v24;
  sub_8AB4();
  sub_214C(v26, v27, v28, v25);
  v29 = v13[13];
  v77 = v15;
  v30 = &v15[v29];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = a1;
  v32 = a1[3];
  v78 = v31;
  sub_2D20(v31, v32);
  sub_14AC28();
  v33 = v76;
  sub_16E76C();
  if (v33)
  {
    v39 = v77;
  }

  else
  {
    v34 = v71;
    v76 = v20;
    v66 = v22;
    v67 = v21;
    v64 = v30;
    v65 = v23;
    LOBYTE(v81) = 0;
    sub_14B8C8();
    sub_14B284(v35, v36, &protocol conformance descriptor for SnippetHeaderModel);
    v37 = v74;
    sub_16E5AC();
    v39 = v77;
    sub_1E634(v37, v77, &dword_1C63F8, &qword_171800);
    sub_16D4EC();
    v80 = 1;
    sub_14B8F8();
    sub_14B284(v40, v41, &protocol conformance descriptor for DialogCalendar);
    sub_16E5AC();
    *(v39 + v34) = v81;
    v42 = sub_14B8A8(2);
    v43 = v76;
    *v76 = v42;
    v43[1] = v44;
    v45 = sub_14B8A8(3);
    v46 = v67;
    *v67 = v45;
    v46[1] = v47;
    v48 = sub_14B8A8(4);
    v49 = v66;
    *v66 = v48;
    v49[1] = v50;
    v51 = sub_14B8A8(5);
    v52 = v65;
    *v65 = v51;
    v52[1] = v53;
    LOBYTE(v81) = 6;
    sub_14B8E0();
    sub_14B284(v54, v55, &protocol conformance descriptor for AppPunchout);
    v56 = v70;
    sub_16E5AC();
    sub_1E634(v56, v39 + v69, &qword_1C63F0, &unk_1717F0);
    v57 = sub_14B8A8(7);
    v59 = v58;
    v60 = sub_14B92C();
    v61(v60);
    v62 = v64;
    *v64 = v57;
    v62[1] = v59;
    sub_14B190(v39, v68);
  }

  sub_2D64(v78);
  return sub_14B134(v39);
}

uint64_t sub_14B134(uint64_t a1)
{
  v2 = type metadata accessor for HealthDataLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14B190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDataLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14B310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&dword_1C63F8, &qword_171800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_369C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_14B418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&dword_1C63F8, &qword_171800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
    v10 = a1 + *(a4 + 40);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_14B4FC(uint64_t a1)
{
  sub_14B624(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_14B624(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_BBD1C();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_14B624(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_14B624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HealthDataLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14B744);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_14B780()
{
  result = qword_1CB4A0;
  if (!qword_1CB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4A0);
  }

  return result;
}

unint64_t sub_14B7D8()
{
  result = qword_1CB4A8;
  if (!qword_1CB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4A8);
  }

  return result;
}

unint64_t sub_14B830()
{
  result = qword_1CB4B0;
  if (!qword_1CB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4B0);
  }

  return result;
}

uint64_t sub_14B884@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_16E61C();
}

uint64_t sub_14B8A8@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_16E58C();
}

uint64_t sub_14B910()
{

  return type metadata accessor for HealthDataLogModel(0);
}

uint64_t sub_14B93C()
{

  return type metadata accessor for HealthDataLogModel(0);
}

uint64_t sub_14B964(uint64_t a1, uint64_t a2)
{
  sub_3BC6C();

  return sub_16C33C();
}

uint64_t sub_14B9B8(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v3 = sub_16DBEC();
  v2[79] = v3;
  v2[80] = *(v3 - 8);
  v2[81] = swift_task_alloc();

  return _swift_task_switch(sub_14BA7C);
}

uint64_t sub_14BA7C()
{
  v34 = v0;
  sub_16D78C();
  sub_14D2EC();
  v1 = sub_17970();
  v2(v1);
  sub_2D20(v0 + 54, v0[57]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 54);
LABEL_4:
    sub_14BDE4();
    goto LABEL_5;
  }

  sub_14D2EC();
  v3 = sub_17970();
  v4(v3);
  sub_2D20(v0 + 59, v0[62]);
  sub_17970();
  v5 = sub_16C3FC();
  sub_2D64(v0 + 59);
  sub_2D64(v0 + 54);
  if (v5)
  {
    goto LABEL_4;
  }

  sub_14D2EC();
  v8 = sub_17970();
  v9(v8);
  sub_2D20(v0 + 64, v0[67]);
  sub_17970();
  v10 = sub_16C41C();
  sub_2D64(v0 + 64);
  if ((v10 & 1) == 0)
  {
    v11 = v0[81];
    v12 = v0[80];
    v13 = v0[79];
    v14 = v0[78];
    v15 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v17(v11, v15, v13);
    sub_14D1D8(v14, (v0 + 2));
    v18 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[81];
    v22 = v0[80];
    v23 = v0[79];
    if (v20)
    {
      v24 = sub_8BD8();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = v0[6];
      v27 = v0[7];
      sub_2D20(v0 + 3, v26);
      v32 = v21;
      (*(v27 + 8))(v26, v27);
      sub_2440(&qword_1C8B08, &unk_1744B0);
      v28 = sub_16E1EC();
      v30 = v29;
      sub_3BCC0((v0 + 2));
      v31 = sub_3AB7C(v28, v30, &v33);

      *(v24 + 4) = v31;
      _os_log_impl(&def_259DC, v18, v16, "Failed to execute PunchoutFlow (unsupported device: %s.", v24, 0xCu);
      sub_2D64(v25);
      sub_8A2C(v25);
      sub_8A2C(v24);

      (*(v22 + 8))(v32, v23);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
      sub_3BCC0((v0 + 2));
    }

    sub_8284(v0[78] + 88, (v0 + 34));
    sub_82E0();
    sub_16C4EC();
    sub_8334((v0 + 34));
    goto LABEL_6;
  }

  sub_14C6E8();
LABEL_5:
  sub_16C4FC();

LABEL_6:

  v6 = v0[1];

  return v6();
}

uint64_t sub_14BDE4()
{
  v1 = v0;
  v2 = sub_16DBEC();
  sub_42F0();
  v94 = v3;
  __chkstk_darwin(v4);
  sub_887C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v90 = &v84 - v9;
  v89 = sub_16D7AC();
  sub_8B38();
  __chkstk_darwin(v10);
  sub_4304();
  v88 = v12 - v11;
  v87 = sub_16D6BC();
  sub_8B38();
  __chkstk_darwin(v13);
  sub_4304();
  v86 = v15 - v14;
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  v17 = sub_4348(v16);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = sub_2440(&qword_1C6850, &unk_172440);
  v21 = sub_4348(v20);
  __chkstk_darwin(v21);
  sub_887C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v91 = &v84 - v26;
  v27 = sub_2440(&qword_1C57F8, &unk_172510);
  v28 = sub_4348(v27);
  __chkstk_darwin(v28);
  v30 = &v84 - v29;
  v31 = sub_16BE9C();
  sub_42F0();
  v93 = v32;
  __chkstk_darwin(v33);
  sub_887C();
  v85 = v34 - v35;
  __chkstk_darwin(v36);
  v38 = &v84 - v37;
  v39 = *v1;
  sub_160744(v39, v30);
  if (sub_369C(v30, 1, v31) == 1)
  {
    sub_8748(v30, &qword_1C57F8, &unk_172510);
LABEL_5:
    v41 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v94 + 16))(v7, v41, v2);
    sub_14D1D8(v1, v97);
    v42 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    if (os_log_type_enabled(v42, v43))
    {
      sub_8BD8();
      v44 = sub_4B33C();
      v96 = v44;
      *v30 = 136315138;
      sub_140650(v97[0]);
      v46 = v45;
      v92 = v2;
      v48 = v47;
      sub_3BCC0(v97);
      v49 = sub_3AB7C(v46, v48, &v96);

      *(v30 + 4) = v49;
      sub_14D344(&def_259DC, v42, v24, "Failed to create deepLink for dataType: %s.", v84);
      sub_2D64(v44);
      sub_8A2C(v44);
      sub_8A2C(v30);

      v50 = sub_14D314();
      v52 = v92;
    }

    else
    {

      sub_3BCC0(v97);
      v50 = sub_14D314();
      v52 = v2;
    }

    v51(v50, v52);
    sub_8284((v1 + 11), v97);
    sub_82E0();
    v53 = sub_16C32C();
    sub_8334(v97);
    return v53;
  }

  v92 = v2;
  (*(v93 + 32))(v38, v30, v31);
  sub_16D74();
  v40 = sub_16E14C();
  v30 = sub_1730C(v39, v40);

  if (v30 == 205)
  {
    (*(v93 + 8))(v38, v31);
    v2 = v92;
    goto LABEL_5;
  }

  v54 = sub_2D20(v1 + 6, v1[9]);
  sub_15081C(*v54);
  sub_208C0(v30);
  sub_16E23C();

  v55 = sub_16D5CC();
  sub_214C(v19, 0, 1, v55);
  v56 = sub_16D66C();
  v57 = v91;
  sub_1913C(v19, v56);

  sub_8748(v19, &qword_1C5800, &unk_16F510);
  v58 = v1[4];
  v59 = v1[5];
  sub_2D20(v1 + 1, v58);
  (*(v59 + 16))(v97, v58, v59);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_172320;
  sub_3DE54(v57, v24);
  sub_8388((v1 + 1), v95);
  v61 = v86;
  sub_16D6AC();
  sub_AABBC(&qword_1C6860, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
  v62 = sub_16C32C();
  sub_AAB64(v61, &type metadata accessor for OutputFlow);
  *(v60 + 32) = v62;
  v63 = v1[4];
  v64 = v1[5];
  sub_2D20(v1 + 1, v63);
  (*(v64 + 16))(v95, v63, v64);
  v65 = v93;
  v66 = *(v93 + 16);
  v87 = v38;
  v66(v85, v38, v31);
  v67 = v88;
  sub_385D8();
  sub_16D79C();
  sub_AABBC(&qword_1C6858, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
  v68 = sub_16C32C();
  sub_AAB64(v67, &type metadata accessor for AppPunchOutFlow);
  *(v60 + 40) = v68;
  v69 = sub_16D6DC();
  swift_allocObject();
  v70 = sub_16D6CC();
  v71 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v72 = v94;
  sub_14D338();
  v73 = v90;
  v74 = v92;
  v75(v90, v71, v92);
  v76 = sub_16DBDC();
  v77 = sub_16E36C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v89 = v69;
    v79 = v70;
    v80 = v65;
    v81 = v78;
    *v78 = 0;
    _os_log_impl(&def_259DC, v76, v77, "Preparing SequenceFlow for Output and AppPunchOut.", v78, 2u);
    v82 = v81;
    v65 = v80;
    v70 = v79;
    sub_8A2C(v82);
  }

  (*(v72 + 8))(v73, v74);
  v95[0] = v70;
  sub_AABBC(&qword_1C6868, &type metadata accessor for SequenceFlow, &protocol conformance descriptor for SequenceFlow);
  v53 = sub_16C32C();
  sub_8748(v91, &qword_1C6850, &unk_172440);
  (*(v65 + 8))(v87, v31);

  return v53;
}

uint64_t *sub_14C6E8()
{
  v1 = v0;
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  __chkstk_darwin(v3);
  sub_4304();
  v91 = v5 - v4;
  v6 = sub_16DBEC();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_887C();
  v12 = v10 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v17 = __chkstk_darwin(v14);
  v90 = &v88 - v18;
  __chkstk_darwin(v17);
  v20 = &v88 - v19;
  v21 = *v1;
  sub_16D74();
  v22 = sub_16E14C();
  LODWORD(v92) = v21;
  v23 = sub_1730C(v21, v22);

  if (v23 == 205)
  {
    v24 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_14D338();
    v25(v12, v24, v6);
    sub_14D1D8(v1, &v95);
    v26 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    v28 = v8;
    if (os_log_type_enabled(v26, v27))
    {
      sub_8BD8();
      v29 = sub_4B33C();
      v89 = v6;
      v94[0] = v29;
      *v1 = 136315138;
      sub_140650(v95);
      v31 = v30;
      v33 = v32;
      sub_3BCC0(&v95);
      v34 = sub_3AB7C(v31, v33, v94);

      *(v1 + 2) = v34;
      sub_14D344(&def_259DC, v26, v16, "%s does not have a HealthKitIdentifier - cannot launch Watch app.", v88);
      sub_14D2B8();
      sub_8A2C(v1);

      (*(v28 + 8))(v12, v89);
    }

    else
    {

      sub_3BCC0(&v95);
      (*(v8 + 8))(v12, v6);
    }

    sub_8284((v1 + 44), &v95);
    sub_82E0();
    sub_16C32C();
    v48 = sub_14D320();
    sub_8334(v48);
  }

  else
  {
    v35 = v6;
    if (sub_14CEE4(v23) == 14)
    {
      v36 = sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      v37 = v8;
      sub_14D338();
      v38(v16, v36, v6);
      sub_14D1D8(v1, &v95);
      v39 = sub_16DBDC();
      v40 = sub_16E37C();
      if (os_log_type_enabled(v39, v40))
      {
        sub_8BD8();
        v41 = sub_4B33C();
        v89 = v6;
        v94[0] = v41;
        *v1 = 136315138;
        sub_140650(v95);
        v43 = v42;
        v44 = v37;
        v46 = v45;
        sub_3BCC0(&v95);
        v47 = sub_3AB7C(v43, v46, v94);

        *(v1 + 2) = v47;
        sub_14D344(&def_259DC, v39, v40, "Failed to determine watch app for dataType: %s - it's an unsupported datatype on Watch. Returning DataTypePunchoutFlow.", v88);
        sub_14D2B8();
        sub_8A2C(v1);

        (*(v44 + 8))(v16, v89);
      }

      else
      {

        sub_3BCC0(&v95);
        (*(v8 + 8))(v16, v6);
      }

      sub_8388((v1 + 4), v96);
      sub_8388((v1 + 24), v97);
      sub_8284((v1 + 44), v98);
      LOWORD(v95) = v92;
      v99 = 0;
      sub_3DF60();
      sub_16C32C();
      v61 = sub_14D320();
      sub_92798(v61);
    }

    else
    {
      v49 = sub_16D67C();
      v50 = sub_16DBBC();
      v51 = v8;
      v52 = (v8 + 16);
      if (v49)
      {
        sub_385D8();
        swift_beginAccess();
        (*v52)(v20, v50, v35);
        v53 = sub_16DBDC();
        sub_16E36C();
        sub_14D32C();
        if (os_log_type_enabled(v53, v54))
        {
          sub_8BD8();
          v92 = v1;
          v55 = sub_4B33C();
          v89 = v35;
          v95 = v55;
          *v1 = 136315138;
          v56 = sub_16D69C();
          v58 = v51;
          v59 = sub_3AB7C(v56, v57, &v95);

          *(v1 + 2) = v59;
          sub_14D344(&def_259DC, v53, v50, "Will punch out to app: %s.", v88);
          sub_14D2B8();
          v60 = v1;
          v1 = v92;
          sub_8A2C(v60);

          (*(v58 + 8))(v20, v89);
        }

        else
        {

          v74 = sub_14D314();
          v75(v74, v35);
        }

        v76 = v1;
        v77 = *(v1 + 4);
        v78 = *(v1 + 5);
        sub_2D20(v76 + 1, v77);
        (*(v78 + 24))(v93, v77, v78);
        sub_16D6EC();
        sub_14D210();
        sub_16C32C();
        v79 = sub_14D320();
        sub_14D264(v79);
      }

      else
      {
        sub_385D8();
        swift_beginAccess();
        v62 = v90;
        (*v52)(v90, v50, v35);
        sub_14D1D8(v1, &v95);
        v63 = sub_16DBDC();
        v64 = sub_16E37C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = sub_8BD8();
          v66 = swift_slowAlloc();
          v89 = v35;
          v67 = v62;
          v94[0] = v66;
          *v65 = 136315138;
          sub_140650(v95);
          v69 = v68;
          v70 = v51;
          v72 = v71;
          sub_3BCC0(&v95);
          v73 = sub_3AB7C(v69, v72, v94);

          *(v65 + 4) = v73;
          _os_log_impl(&def_259DC, v63, v64, "%s doesn't have the appropriate Watch app installed.", v65, 0xCu);
          sub_14D2B8();
          sub_8A2C(v65);

          (*(v70 + 8))(v67, v89);
        }

        else
        {

          sub_3BCC0(&v95);
          v80 = sub_14D314();
          v81(v80, v35);
        }

        sub_8388((v1 + 4), &v95);
        v82 = sub_16C58C();
        swift_allocObject();
        v83 = sub_16C57C();
        v97[2] = v82;
        v97[3] = &protocol witness table for ResponseFactory;
        v96[4] = v83;
        type metadata accessor for WellnessCATsSimple(0);
        sub_16D62C();
        v84 = sub_16D5FC();
        type metadata accessor for WellnessCATs(0);
        sub_16D62C();
        v85 = sub_16D58C();
        v97[4] = v84;
        v98[0] = v85;
        sub_89600();
        sub_16C32C();
        v86 = sub_14D320();
        sub_9256C(v86);
      }
    }
  }

  return &v95;
}

uint64_t sub_14CEE4(char a1)
{
  v2 = sub_16DBEC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  if (a1 - 69 <= 0x18)
  {
    v11 = 1 << (a1 - 69);
    if ((v11 & 0x1700000) != 0)
    {
      return 6;
    }

    if ((v11 & 0x80401) != 0)
    {
      return 9;
    }
  }

  v9 = a1 - 155;
  if (v9 > 0x2C)
  {
    goto LABEL_11;
  }

  if (((1 << (a1 + 101)) & 0x100020000001) != 0)
  {
    return 6;
  }

  if (((1 << (a1 + 101)) & 0x100010) != 0)
  {
    return 2;
  }

  if (v9 == 15)
  {
    return 0;
  }

LABEL_11:
  if (!a1 || a1 == 4)
  {
    return 6;
  }

  if (a1 == 60)
  {
    return 4;
  }

  v12 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_14D338();
  v13(v8, v12, v2);
  v14 = sub_16DBDC();
  v15 = sub_16E37C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_8BD8();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_208C0(a1);
    v20 = sub_3AB7C(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&def_259DC, v14, v15, "No known watch app for dataType: %s.", v16, 0xCu);
    sub_2D64(v17);
    sub_8A2C(v17);
    sub_8A2C(v16);
  }

  (*(v4 + 8))(v8, v2);
  return 14;
}

uint64_t sub_14D140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_14B9B8(a1);
}

unint64_t sub_14D210()
{
  result = qword_1CB4B8;
  if (!qword_1CB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4B8);
  }

  return result;
}

uint64_t sub_14D2B8()
{
  sub_2D64(v0);
}

void sub_14D344(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_14D35C()
{
  v2[3] = &type metadata for WellnessFeatureFlagsKey;
  v2[4] = sub_3736C();
  LOBYTE(v2[0]) = 4;
  v0 = sub_16C86C();
  sub_2D64(v2);
  return v0 & 1;
}

_BYTE *storeEnumTagSinglePayload for WellnessFeatureFlagsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14D480);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}