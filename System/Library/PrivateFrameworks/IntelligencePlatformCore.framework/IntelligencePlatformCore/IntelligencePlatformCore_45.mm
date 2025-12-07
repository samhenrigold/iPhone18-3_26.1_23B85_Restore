uint64_t sub_1C4828B7C()
{
  v0 = sub_1C4F00DD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C4F00DC8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C4F01188();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4F01178();
  v11 = sub_1C4F01148();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    sub_1C4829B88(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    sub_1C44344B8(v11, v13);
    sub_1C4498FD8(v11, v13, v3);
    sub_1C441DFEC(v11, v13);
    sub_1C4F00DA8();
    (*(v1 + 8))(v3, v0);
    v14 = sub_1C44D5F88(v6);
    sub_1C441DFEC(v11, v13);
    return v14;
  }

  return v11;
}

uint64_t sub_1C4828E1C()
{
  v0 = sub_1C4F00DD8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C4F00DC8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C4F01188();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4F01178();
  v11 = sub_1C4F01148();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    sub_1C4829B88(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    sub_1C44344B8(v11, v13);
    sub_1C4498FD8(v11, v13, v3);
    sub_1C441DFEC(v11, v13);
    sub_1C4F00DA8();
    (*(v1 + 8))(v3, v0);
    v14 = sub_1C44D5F88(v6);
    sub_1C441DFEC(v11, v13);
    return v14;
  }

  return v11;
}

void sub_1C48290BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v24 = sub_1C43FBD18(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  v27 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  sub_1C4EFBDD8();
  sub_1C4EFBE38();
  sub_1C4425BA4();
  sub_1C4EFB498();
  sub_1C446F170(v30, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v31 = sub_1C4EFBF38();
  sub_1C43FC3D8(v26, 1);
  sub_1C4EFB538();

  sub_1C4403250();
  (*(*(v31 - 8) + 104))(v26, *MEMORY[0x1E69A00D0], v31);
  sub_1C43FC3D8(v26, 0);
  sub_1C4EFB4F8();

  sub_1C4403250();
  sub_1C4EFBDB8();
  sub_1C4425BA4();
  sub_1C4EFB498();
  sub_1C446F170(v30, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FC3D8(v26, 1);
  sub_1C4EFB538();

  sub_1C4403250();
  sub_1C43FBC80();
}

void sub_1C48292D0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v35 = a1;
  v5 = *v1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  v10 = sub_1C442B738(v9, qword_1EDE2E088);

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  v13 = os_log_type_enabled(v11, v12);
  v33 = v5;
  v34 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v31[1] = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v2;
    v17 = v16;
    v38 = v16;
    *v15 = 136315138;
    v37 = v4;

    v18 = sub_1C4F01198();
    v20 = sub_1C441D828(v18, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C43F8000, v11, v12, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: starting.", v15, 0xCu);
    sub_1C440962C(v17);
    v21 = v17;
    v3 = v32;
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  v22 = v36;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v3)
  {
    (*(v7 + 8))(v22, v6);
  }

  else
  {
    (*(v7 + 8))(v22, v6);
    v23 = v34;

    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v37 = v23;

      v28 = sub_1C4F01198();
      v30 = sub_1C441D828(v28, v29, &v38);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1C43F8000, v24, v25, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: completed.", v26, 0xCu);
      sub_1C440962C(v27);
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v26, -1, -1);
    }
  }
}

void sub_1C482967C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v35 = a1;
  v5 = *v1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  v10 = sub_1C442B738(v9, qword_1EDE2E088);

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  v13 = os_log_type_enabled(v11, v12);
  v33 = v5;
  v34 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v31[1] = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v2;
    v17 = v16;
    v38 = v16;
    *v15 = 136315138;
    v37 = v4;

    v18 = sub_1C4F01198();
    v20 = sub_1C441D828(v18, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C43F8000, v11, v12, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: starting.", v15, 0xCu);
    sub_1C440962C(v17);
    v21 = v17;
    v3 = v32;
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  v22 = v36;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v3)
  {
    (*(v7 + 8))(v22, v6);
  }

  else
  {
    (*(v7 + 8))(v22, v6);
    v23 = v34;

    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v37 = v23;

      v28 = sub_1C4F01198();
      v30 = sub_1C441D828(v28, v29, &v38);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1C43F8000, v24, v25, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: completed.", v26, 0xCu);
      sub_1C440962C(v27);
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v26, -1, -1);
    }
  }
}

uint64_t type metadata accessor for GlobalKnowledgeDatabase(uint64_t a1)
{
  result = qword_1EDDFEE08;
  if (!qword_1EDDFEE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4829B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4829BD0()
{
  result = qword_1EDDFA5B8;
  if (!qword_1EDDFA5B8)
  {
    sub_1C4572308(&unk_1EC0BCA80, &unk_1C4F111B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5B8);
  }

  return result;
}

uint64_t sub_1C4829C68(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4829CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C4829D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v180 = a2;
  v163 = sub_1C4EFF3B8();
  sub_1C43FCDF8();
  v162 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v161 = v9;
  v10 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = &v156 - v11;
  sub_1C43FBE44();
  v12 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v175 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v172 = v15;
  sub_1C43FBE44();
  sub_1C4EFD648();
  sub_1C43FCDF8();
  v169 = v17;
  v170 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v168 = v18;
  v19 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v171 = &v156 - v20;
  sub_1C43FBE44();
  v21 = sub_1C4EFF8F8();
  sub_1C43FCDF8();
  v174 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v164 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v156 - v27;
  sub_1C43FBE44();
  sub_1C4EFCE78();
  sub_1C43FCDF8();
  v178 = v29;
  v179 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v166 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v156 - v33;
  sub_1C43FBE44();
  v182 = sub_1C4EFCE88();
  sub_1C43FCDF8();
  v185 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBD08();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v156 - v40;
  sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v156 - v48;
  if (!a3)
  {
    sub_1C4EFCE58();
    sub_1C44197E0();
    v71 = sub_1C482AD80(v69, v70, MEMORY[0x1E69A9248]);
    sub_1C43FFC70(v71);
    *v72 = 0xD000000000000025;
    v72[1] = 0x80000001C4FA2AA0;
    sub_1C4402A78();
    (*(v73 + 104))();
    return swift_willThrow();
  }

  v160 = v12;
  v167 = v47;
  v50 = v46;

  v181 = a3;
  sub_1C4EFDB18();
  LODWORD(v51) = (*(v43 + 88))(v49, v50);
  if (v51 == *MEMORY[0x1E69A97C8] || v51 == *MEMORY[0x1E69A9798] || v51 == *MEMORY[0x1E69A97B0] || v51 == *MEMORY[0x1E69A9788] || v51 == *MEMORY[0x1E69A97C0] || v51 == *MEMORY[0x1E69A97B8] || v51 == *MEMORY[0x1E69A9790])
  {
    sub_1C4EFCE58();
    sub_1C44197E0();
    v60 = sub_1C482AD80(v58, v59, MEMORY[0x1E69A9248]);
    sub_1C43FFC70(v60);
    v62 = v61;
    sub_1C441FB2C();
    sub_1C440D48C();
    sub_1C4432374();
    sub_1C4417244();
    sub_1C4406F60();
    sub_1C482AD80(v63, v64, MEMORY[0x1E69A97E8]);
    v65 = sub_1C4F02858();
    MEMORY[0x1C6940010](v65);

    (*(v43 + 8))(v41, v50);
    v66 = v184;
    *v62 = v183;
    v62[1] = v66;
    sub_1C4402A78();
    (*(v67 + 104))(v62);
    swift_willThrow();
  }

  v157 = v43;
  v158 = v50;
  v159 = a1;
  if (v51 == *MEMORY[0x1E69A97A8])
  {
    sub_1C4EFCE98();
    v74 = v185;
    v75 = v182;
    if ((*(v185 + 88))(v41, v182) != *MEMORY[0x1E69A9258])
    {
LABEL_35:
      sub_1C4EFCE58();
      sub_1C44197E0();
      v86 = sub_1C482AD80(v84, v85, MEMORY[0x1E69A9248]);
      sub_1C43FFC70(v86);
      v88 = v87;
      v89 = (v157 + 8);
      sub_1C441FB2C();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FA2B10);
      v90 = v167;
      sub_1C4EFDB18();
      sub_1C4406F60();
      sub_1C482AD80(v91, v92, MEMORY[0x1E69A97E8]);
      v93 = v158;
      v94 = sub_1C4F02858();
      MEMORY[0x1C6940010](v94);

      (*v89)(v90, v93);
      v95 = v184;
      *v88 = v183;
      v88[1] = v95;
      sub_1C4402A78();
      (*(v96 + 104))(v88);
      swift_willThrow();

      return (*(v185 + 8))(v41, v182);
    }

    v156 = a4;
    v76 = *(v74 + 96);
    v38 = v74 + 96;
    v76(v41, v75);
    (*(v178 + 32))(v177, v41, v179);
    v49 = sub_1C4EFDB08();
    if (v49 < 0 || (v51 = sub_1C4EFDB08(), a4 = v176, (v51 & 0x8000000000000000) == 0))
    {
      sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1C4F0CE60;
      *(v113 + 56) = &type metadata for FusedTripleColumn;
      v114 = sub_1C4505DC4();
      *(v113 + 64) = v114;
      *(v113 + 32) = 6;
      *(v113 + 96) = &type metadata for FusedTripleColumn;
      *(v113 + 104) = v114;
      *(v113 + 72) = 0;
      (*(v169 + 104))(v168, *MEMORY[0x1E69A9338], v170);
      sub_1C4EFD668();
      sub_1C4EFD678();
      sub_1C43FBD94();
      sub_1C440BAA8(v115, v116, v117, v118);
      v119 = v165;
      sub_1C4EFF8C8();
      v120 = v172;
      sub_1C4EFCE68();
      v122 = v173;
      v121 = v174;
      (*(v174 + 16))(v173, v119, v21);
      sub_1C43FBD94();
      sub_1C440BAA8(v123, v124, v125, v21);
      sub_1C498DB4C(v120, v122);
      sub_1C482ADC8(v122);
      (*(v175 + 8))(v120, v160);
      sub_1C48124D4();
      v127 = v126;

      sub_1C4B87460(v127);

      sub_1C4EFD5B8();

      (*(v121 + 8))(v119, v21);
      return (*(v178 + 8))(v177, v179);
    }

    __break(1u);
  }

  v77 = v159;
  if (v51 != *MEMORY[0x1E69A97A0])
  {
    v97 = sub_1C4EFCE58();
    sub_1C44197E0();
    sub_1C482AD80(v98, v99, MEMORY[0x1E69A9248]);
    swift_allocError();
    v101 = v100;
    sub_1C441FB2C();
    sub_1C440D48C();
    sub_1C4432374();
    sub_1C4417244();
    sub_1C4406F60();
    v104 = sub_1C482AD80(v102, v103, MEMORY[0x1E69A97E8]);
    v105 = sub_1C440326C(v104);
    MEMORY[0x1C6940010](v105);

    v106 = *(v157 + 8);
    v106(v41, v77);
    v107 = v184;
    *v101 = v183;
    v101[1] = v107;
    (*(*(v97 - 8) + 104))(v101, *MEMORY[0x1E69A9238], v97);
    swift_willThrow();

    return (v106)(v49, v77);
  }

  v78 = a4;
  v79 = v21;
  sub_1C4EFCE98();
  v80 = v185;
  v81 = v182;
  v82 = (*(v185 + 88))(v38, v182);
  if (v82 != *MEMORY[0x1E69A9258])
  {
    if (v82 != *MEMORY[0x1E69A9250])
    {
      sub_1C4EFCE58();
      sub_1C44197E0();
      v130 = sub_1C482AD80(v128, v129, MEMORY[0x1E69A9248]);
      sub_1C43FFC70(v130);
      v132 = v131;
      sub_1C441FB2C();
      sub_1C440D48C();
      sub_1C4432374();
      sub_1C4417244();
      sub_1C4406F60();
      v135 = sub_1C482AD80(v133, v134, MEMORY[0x1E69A97E8]);
      v136 = sub_1C440326C(v135);
      MEMORY[0x1C6940010](v136);

      (*(v157 + 8))(v41, v77);
      v137 = v184;
      *v132 = v183;
      v132[1] = v137;
      sub_1C4402A78();
      (*(v138 + 104))(v132);
      swift_willThrow();

      return (*(v185 + 8))(v38, v81);
    }

    (*(v185 + 96))(v38, v81);
    v108 = v162;
    v109 = v161;
    v110 = v38;
    v111 = v163;
    (*(v162 + 32))(v161, v110, v163);
    v112 = v176;
    GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v109, 1, 1, 700);
    if (!v112)
    {
      sub_1C4812624();
      v155 = v154;

      sub_1C4B87460(v155);

      sub_1C4EFD5B8();

      return (*(v108 + 8))(v109, v111);
    }

    (*(v108 + 8))(v109, v111);
  }

  (*(v80 + 96))(v38, v81);
  (*(v178 + 32))(v166, v38, v179);
  v83 = sub_1C4EFDB08();
  v156 = v78;
  if ((v83 & 0x8000000000000000) == 0 && sub_1C4EFDB08() < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1C4F0D130;
  *(v139 + 56) = &type metadata for FusedTripleColumn;
  *(v139 + 64) = sub_1C4505DC4();
  *(v139 + 32) = 0;
  (*(v169 + 104))(v168, *MEMORY[0x1E69A9338], v170);
  sub_1C4EFD668();
  sub_1C4EFD678();
  sub_1C43FBD94();
  sub_1C440BAA8(v140, v141, v142, v143);
  v144 = v164;
  sub_1C4EFF8C8();
  v145 = v172;
  v146 = v166;
  sub_1C4EFCE68();
  v148 = v173;
  v147 = v174;
  (*(v174 + 16))(v173, v144, v79);
  sub_1C43FBD94();
  sub_1C440BAA8(v149, v150, v151, v79);
  sub_1C498DBB4(v145, v148);
  sub_1C482ADC8(v148);
  (*(v175 + 8))(v145, v160);
  sub_1C4812624();
  v153 = v152;

  sub_1C4B87460(v153);

  sub_1C4EFD5B8();

  (*(v147 + 8))(v144, v79);
  return (*(v178 + 8))(v146, v179);
}

uint64_t sub_1C482AD80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C482ADC8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C482AE40(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1C4EF98F8();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for Configuration(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C482AF30, 0, 0);
}

uint64_t sub_1C482AF30()
{
  v29 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28[0] = v5;
    *v4 = 136315138;
    v6 = sub_1C4852274();
    v8 = sub_1C441D828(v6, v7, v28);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Pipeline: %s: triggering check and load global asset...", v4, 0xCu);
    sub_1C440962C(v5);
    MEMORY[0x1C6942830](v5, -1, -1);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v27[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v27[1] = xmmword_1EDDFFA48;
  do
  {
    v13 = v11;
    v14 = &v27[v12];
    v16 = *v14;
    v15 = v14[1];
    if ((v16 & ~v9) != 0 || (v15 & v10) != v15)
    {
      v9 |= v16;
      v10 |= v15;
    }

    v11 = 1;
    v12 = 1;
  }

  while ((v13 & 1) == 0);
  v19 = v0[6];
  v18 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  sub_1C4F001A8();
  (*(v21 + 16))(v18, v20, v22);
  static Features.optionsForEnabledFeatures.getter(v28);
  (*(v21 + 8))(v20, v22);
  v23 = v28[1] | v10;
  v24 = (v18 + *(v19 + 20));
  *v24 = v28[0] | v9;
  v24[1] = v23;
  type metadata accessor for GlobalKnowledgeDatabase(0);
  swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  GlobalKnowledgeDatabase.checkAndLoadAssets()();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1C482B270()
{
  v2 = *(v0 + 8);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C482AE40(v3, v2);
}

unint64_t sub_1C482B308(uint64_t a1)
{
  result = sub_1C482B330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C482B330()
{
  result = qword_1EC0BDD40;
  if (!qword_1EC0BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD40);
  }

  return result;
}

uint64_t sub_1C482B384()
{
  v0 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C4830FF0(0x6C6542726F697250, 0xEC00000073666569);
  if (sub_1C44157D4(v2, 1, v3) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0BD2F8, &qword_1C4F31970);
    return 0;
  }

  else
  {
    sub_1C482B9A4(v2, v6, type metadata accessor for StaticKnowledgeAssetMetadata);
    v7 = *v6;
    sub_1C482BA04(v6, type metadata accessor for StaticKnowledgeAssetMetadata);
  }

  return v7;
}

uint64_t sub_1C482B4DC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple(0);
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a2;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4420C3C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482B95C(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482B95C(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F552E8);
  v10 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C482B6F8(uint64_t a1, void *a2)
{
  v3 = (a1 + *(type metadata accessor for StaticKnowledgeTriple(0) + 36));
  if (*v3 == *a2 && v3[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

_BYTE *sub_1C482B764@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t sub_1C482B7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482B898(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C482B8F8()
{
  result = qword_1EDDFA2A0;
  if (!qword_1EDDFA2A0)
  {
    sub_1C4572308(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA2A0);
  }

  return result;
}

uint64_t sub_1C482B95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C482B9A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C482BA04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C482BA74@<X0>(uint64_t a1@<X8>)
{
  v240 = a1;
  v1 = sub_1C4F00978();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v239 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BDD60, &qword_1C4F31E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v239 - v8;
  v10 = sub_1C456902C(&qword_1EC0BDD68, &qword_1C4F31E48);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v272 = v15;
  v285 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v266 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v279 = v18 - v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v249 = v22;
  v23 = sub_1C456902C(&qword_1EC0BDD70, &qword_1C4F31E50);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v248 = v25;
  v258 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v255 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v278 = v30;
  v259 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v277 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v282 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v239 - v39;
  v283 = type metadata accessor for StaticKnowledgeTriple(0);
  sub_1C43FCDF8();
  v281 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v275 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v284 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v276 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v239 - v51;
  v53 = sub_1C482B384();
  if (v54)
  {
    sub_1C4F00148();
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C43F8000, v55, v56, "ConfidenceTrie: Prior Beliefs unavailable", v57, 2u);
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    (*(v3 + 8))(v6, v1);
    v58 = 1;
    v59 = v240;
    goto LABEL_5;
  }

  v271 = v13;
  v268 = v9;
  v280 = 0;
  MEMORY[0x1EEE9AC00](v53);
  v238 = v62;

  v63 = sub_1C49A52B4(sub_1C482D644, (&v239 - 4));

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C482D660();
  v274 = MEMORY[0x1E69E7CC0];
  v273 = sub_1C4F00F28();
  v64 = 0;
  v65 = *(v63 + 16);
  ++v277;
  v262 = v35;
  v257 = v63;
  while (v65 != v64)
  {
    if (v64 >= *(v63 + 16))
    {
      goto LABEL_123;
    }

    v66 = (*(v281 + 80) + 32) & ~*(v281 + 80);
    v67 = *(v281 + 72);
    sub_1C482D6DC(v63 + v66 + v67 * v64, v52);
    sub_1C4EFEBF8();
    sub_1C441FB64();
    v69 = sub_1C482D8A8(&off_1EDDFCCA8, v68, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    v70 = sub_1C4411D68();
    v73 = v73 && v69 == v40;
    if (v73)
    {
      v77 = sub_1C43FF0AC();
      v78(v77);
    }

    else
    {
      v74 = sub_1C43FF090(v70, v71, v72);
      v75 = sub_1C43FF0AC();
      v76(v75);

      if ((v74 & 1) == 0)
      {
        sub_1C482D740(v52);
        ++v64;
        goto LABEL_15;
      }
    }

    sub_1C482D79C(v52, v270);
    v79 = v274;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v289 = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C4417260();
      v79 = v289;
    }

    v81 = *(v79 + 16);
    if (v81 >= *(v79 + 24) >> 1)
    {
      sub_1C43FD810();
      v79 = v289;
    }

    ++v64;
    *(v79 + 16) = v81 + 1;
    v274 = v79;
    sub_1C482D79C(v270, v79 + v66 + v81 * v67);
LABEL_15:
    v63 = v257;
  }

  v270 = *(v274 + 16);
  if (!v270)
  {
    v86 = MEMORY[0x1E69E7CC8];
    v109 = v259;
LABEL_36:

    v110 = 0;
    v111 = v86 + 64;
    sub_1C44131FC();
    v114 = v113 & v112;
    v116 = (v115 + 63) >> 6;
    v242 = v255 + 16;
    v252 = v255 + 32;
    v265 = (v266 + 16);
    v269 = v266 + 8;
    v276 = (v266 + 32);
    v243 = v255 + 8;
    v241 = xmmword_1C4F0D130;
    v260 = xmmword_1C4F0CE60;
    v117 = v256;
    v246 = v86;
    v245 = v86 + 64;
    v244 = v116;
    if (!v114)
    {
      goto LABEL_38;
    }

LABEL_37:
    v251 = v110;
    v118 = v110;
LABEL_42:
    v250 = (v114 - 1) & v114;
    v119 = __clz(__rbit64(v114)) | (v118 << 6);
    v120 = v255;
    v121 = *(v86 + 48) + *(v255 + 72) * v119;
    v122 = v247;
    v123 = v86;
    v124 = v258;
    (*(v255 + 16))(v247, v121, v258);
    v125 = (*(v123 + 56) + 16 * v119);
    v126 = *v125;
    v127 = v125[1];
    v128 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
    v129 = (v256 + *(v128 + 48));
    (*(v120 + 32))(v256, v122, v124);
    *v129 = v126;
    v129[1] = v127;
    v117 = v256;
    sub_1C440BAA8(v256, 0, 1, v128);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v130 = v117;
    v131 = v248;
    sub_1C482D820(v130, v248, &qword_1EC0BDD70, &qword_1C4F31E50);
    v132 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
    if (sub_1C44157D4(v131, 1, v132) == 1)
    {
LABEL_118:

      v238 = MEMORY[0x1E69E63E0];
      v59 = v240;
      sub_1C4EFC7A8();
      v58 = 0;
LABEL_5:
      v60 = sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
      return sub_1C440BAA8(v59, v58, 1, v60);
    }

    v133 = (v131 + *(v132 + 48));
    v135 = *v133;
    v134 = v133[1];
    v261 = v135;
    v263 = v134;
    sub_1C4402C08();
    v137 = v136(v254, v131, v258);
    MEMORY[0x1EEE9AC00](v137);
    sub_1C4408AE0();
    v138 = v257;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v139 = v138;
    v140 = v280;
    sub_1C4B347B8(sub_1C482D800, v132, v139);
    v142 = v141;
    v280 = v140;
    v143 = 0;
    v274 = *(v141 + 16);
    v270 = MEMORY[0x1E69E7CC0];
    v278 = v141;
    while (1)
    {
      while (1)
      {
        if (v274 == v143)
        {
          v163 = *(v270 + 16);
          if (!v163)
          {
            v169 = MEMORY[0x1E69E7CC8];
            v165 = v283;
LABEL_96:

            v274 = 0;
            v197 = 0;
            v267 = v169;
            sub_1C44131FC();
            v201 = v200 & v199;
            v203 = (v202 + 63) >> 6;
            v204 = 0.0;
            v270 = v198;
            if ((v200 & v199) == 0)
            {
              goto LABEL_98;
            }

            while (1)
            {
              v205 = v197;
LABEL_102:
              v206 = __clz(__rbit64(v201));
              v201 &= v201 - 1;
              v207 = v206 | (v205 << 6);
              v208 = v267;
              v209 = v266;
              v210 = v264;
              v211 = v285;
              (*(v266 + 16))(v264, *(v267 + 6) + *(v266 + 72) * v207, v285);
              v212 = *(*(v208 + 7) + 8 * v207);
              v213 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
              v214 = *(v213 + 48);
              v215 = *(v209 + 32);
              v216 = v271;
              v215(v271, v210, v211);
              *(v216 + v214) = v212;
              sub_1C440BAA8(v216, 0, 1, v213);
              v165 = v283;
              v142 = v278;
LABEL_103:
              v217 = v272;
              sub_1C482D820(v216, v272, &qword_1EC0BDD68, &qword_1C4F31E48);
              v218 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
              if (sub_1C44157D4(v217, 1, v218) == 1)
              {
                break;
              }

              v219 = *(v217 + *(v218 + 48));
              v220 = (*v276)(v279, v217, v285);
              MEMORY[0x1EEE9AC00](v220);
              sub_1C4408AE0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v221 = v280;
              sub_1C4B347B8(sub_1C482D888, v218, v142);
              v280 = v221;
              v222 = v268;
              sub_1C4868578(v223, v268);

              if (sub_1C44157D4(v222, 1, v165) == 1)
              {
                sub_1C4423A0C(v222, &qword_1EC0BDD60, &qword_1C4F31E40);
              }

              else
              {
                v224 = (v222 + *(v165 + 36));
                v225 = *v224;
                v226 = v224[1];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C482D740(v222);
                v107 = __OFADD__(v274++, 1);
                if (v107)
                {
                  goto LABEL_121;
                }

                v204 = v204 + v219;
                sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                v227 = swift_allocObject();
                *(v227 + 16) = v260;
                *(v227 + 32) = v261;
                *(v227 + 40) = v263;
                *(v227 + 48) = v225;
                *(v227 + 56) = v226;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v228 = swift_isUniquelyReferenced_nonNull_native();
                sub_1C440E310(v228, v229);

                v273 = v287;
              }

              sub_1C4402C08();
              v230(v279, v285);
              v198 = v270;
              if (!v201)
              {
LABEL_98:
                while (1)
                {
                  v205 = v197 + 1;
                  if (__OFADD__(v197, 1))
                  {
                    break;
                  }

                  if (v205 >= v203)
                  {
                    v231 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
                    v216 = v271;
                    sub_1C440BAA8(v271, 1, 1, v231);
                    v201 = 0;
                    goto LABEL_103;
                  }

                  v201 = *(v198 + 8 * v205);
                  ++v197;
                  if (v201)
                  {
                    v197 = v205;
                    goto LABEL_102;
                  }
                }

                __break(1u);
                goto LABEL_118;
              }
            }

            v109 = v259;
            if (v274 < 1)
            {
            }

            else
            {
              sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
              v232 = swift_allocObject();
              *(v232 + 16) = v241;
              v233 = v263;
              *(v232 + 32) = v261;
              *(v232 + 40) = v233;
              v234 = swift_isUniquelyReferenced_nonNull_native();
              sub_1C440E310(v234, v235);

              v273 = v287;
            }

            v117 = v256;
            v86 = v246;
            v111 = v245;
            v110 = v251;
            v114 = v250;
            sub_1C4402C08();
            v236(v254, v258);
            v116 = v244;
            if (v114)
            {
              goto LABEL_37;
            }

LABEL_38:
            while (1)
            {
              v118 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
                goto LABEL_122;
              }

              if (v118 >= v116)
              {
                v251 = v110;
                v237 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
                sub_1C440BAA8(v117, 1, 1, v237);
                v250 = 0;
                goto LABEL_43;
              }

              v114 = *(v111 + 8 * v118);
              ++v110;
              if (v114)
              {
                v251 = v118;
                goto LABEL_42;
              }
            }
          }

          v164 = 0;
          v165 = v283;
          sub_1C4410D14();
          v168 = v167 + v166;
          v169 = MEMORY[0x1E69E7CC8];
          while (2)
          {
            if (v164 >= *(v270 + 16))
            {
              goto LABEL_120;
            }

            v170 = sub_1C482D6DC(v168 + *(v281 + 72) * v164, v275);
            v286 = 0;
            MEMORY[0x1EEE9AC00](v170);
            v238 = &v286;
            if ((v172 & 0x1000000000000000) != 0)
            {
              goto LABEL_93;
            }

            if ((v172 & 0x2000000000000000) != 0)
            {
              v287 = v171;
              v288 = v172 & 0xFFFFFFFFFFFFFFLL;
              if (v171 <= 0x20u && ((1 << v171) & 0x100003E01) != 0)
              {
                goto LABEL_80;
              }

              goto LABEL_82;
            }

            if ((v171 & 0x1000000000000000) == 0)
            {
LABEL_93:
              v196 = v280;
              sub_1C4F02218();
              v280 = v196;
              if ((v289 & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v173 = *((v172 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v174 = v173 > 0x20;
              v175 = (1 << v173) & 0x100003E01;
              if (!v174 && v175 != 0)
              {
LABEL_80:
                ++v164;
                sub_1C482D740(v275);
                if (v163 == v164)
                {
                  goto LABEL_96;
                }

                continue;
              }

LABEL_82:
              v177 = _swift_stdlib_strtod_clocale();
              if (!v177 || *v177)
              {
                goto LABEL_80;
              }
            }

            break;
          }

          v178 = v286;
          v179 = *v265;
          (*v265)(v249, v275 + *(v165 + 28), v285);
          swift_isUniquelyReferenced_nonNull_native();
          v287 = v169;
          sub_1C457AC78();
          if (__OFADD__(*(v169 + 2), (v181 & 1) == 0))
          {
            goto LABEL_127;
          }

          v182 = v181;
          v274 = v180;
          sub_1C456902C(&qword_1EC0BDD58, &qword_1C4F31E38);
          if (sub_1C4F02458())
          {
            sub_1C457AC78();
            v142 = v278;
            if ((v182 & 1) != (v184 & 1))
            {
              goto LABEL_129;
            }
          }

          else
          {
            v142 = v278;
            v183 = v274;
          }

          v185 = v182;
          v169 = v287;
          if (v185)
          {
            *(*(v287 + 56) + 8 * v183) = v178;
            sub_1C4402C08();
            v186(v249, v285);
          }

          else
          {
            *(v287 + 8 * (v183 >> 6) + 64) |= 1 << v183;
            v187 = v183;
            v188 = *(v169 + 6) + *(v266 + 72) * v183;
            v189 = v179;
            v190 = v169;
            v191 = v249;
            v192 = v285;
            v189(v188, v249, v285);
            *(*(v190 + 7) + 8 * v187) = v178;
            v193 = v191;
            v169 = v190;
            (*(v266 + 8))(v193, v192);
            v194 = *(v190 + 2);
            v107 = __OFADD__(v194, 1);
            v195 = v194 + 1;
            if (v107)
            {
              goto LABEL_128;
            }

            *(v190 + 2) = v195;
          }

          goto LABEL_80;
        }

        if (v143 >= *(v142 + 16))
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v144 = (*(v281 + 80) + 32) & ~*(v281 + 80);
        v145 = *(v281 + 72);
        sub_1C482D6DC(v142 + v144 + v145 * v143, v284);
        v146 = v282;
        sub_1C4EFE5C8();
        sub_1C441FB64();
        sub_1C482D8A8(&off_1EDDFCCA8, v147, MEMORY[0x1E69A9770]);
        sub_1C440D498();
        sub_1C440D498();
        v148 = sub_1C4411D68();
        v151 = v73;
        v152 = v151 ? 1 : sub_1C43FF090(v148, v149, v150);
        v153 = *v277;
        (*v277)(v282, v109);

        if (v152)
        {
          break;
        }

LABEL_59:
        sub_1C482D740(v284);
        ++v143;
        v142 = v278;
      }

      v154 = v262;
      sub_1C4EFE2A8();
      sub_1C440D498();
      sub_1C440D498();
      v155 = sub_1C4411D68();
      if (v73 && v146 == v154)
      {
        v153(v154, v109);
      }

      else
      {
        v159 = sub_1C43FF090(v155, v156, v157);
        v153(v154, v109);

        if ((v159 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      sub_1C482D79C(v284, v253);
      v160 = v270;
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v289 = v160;
      if ((v161 & 1) == 0)
      {
        sub_1C4417260();
        v160 = v289;
      }

      v142 = v278;
      v162 = *(v160 + 16);
      if (v162 >= *(v160 + 24) >> 1)
      {
        sub_1C43FD810();
        v160 = v289;
      }

      ++v143;
      *(v160 + 16) = v162 + 1;
      v270 = v160;
      sub_1C482D79C(v253, v160 + v144 + v162 * v145);
    }
  }

  v82 = 0;
  v269 = *(v283 + 20);
  v267 = &v276[*(v283 + 36)];
  sub_1C4410D14();
  v265 = (v83 + v84);
  v85 = (v255 + 16);
  v86 = MEMORY[0x1E69E7CC8];
  v263 = v255 + 8;
  while (1)
  {
    if (v82 >= *(v83 + 16))
    {
      goto LABEL_124;
    }

    v87 = v276;
    sub_1C482D6DC(v265 + *(v281 + 72) * v82, v276);
    v88 = *v85;
    (*v85)(v278, &v87[v269], v258);
    v89 = *v267;
    v90 = *(v267 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v287 = v86;
    sub_1C44E3664();
    if (__OFADD__(*(v86 + 16), (v92 & 1) == 0))
    {
      break;
    }

    v93 = v91;
    v94 = v92;
    sub_1C456902C(&qword_1EC0BDD48, &qword_1C4F31E28);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_129;
      }

      v93 = v95;
    }

    v86 = v287;
    if (v94)
    {
      v97 = (*(v287 + 56) + 16 * v93);
      *v97 = v89;
      v97[1] = v90;

      sub_1C4402C08();
      v98(v278, v258);
      sub_1C482D740(v276);
    }

    else
    {
      *(v287 + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v99 = *(v86 + 48);
      v100 = v86;
      v101 = v255;
      v102 = v278;
      v103 = v258;
      v88(v99 + *(v255 + 72) * v93, v278, v258);
      v104 = (*(v100 + 56) + 16 * v93);
      *v104 = v89;
      v104[1] = v90;
      v105 = *(v101 + 8);
      v86 = v100;
      v105(v102, v103);
      sub_1C482D740(v276);
      v106 = *(v100 + 16);
      v107 = __OFADD__(v106, 1);
      v108 = v106 + 1;
      if (v107)
      {
        goto LABEL_126;
      }

      *(v100 + 16) = v108;
    }

    ++v82;
    v109 = v259;
    v83 = v274;
    if (v270 == v82)
    {
      goto LABEL_36;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C482D27C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple(0);
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a2;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4423A0C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482D8A8(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482D8A8(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F552E8);
  v10 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C482D4E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticKnowledgeTriple(0);
  v8 = *(v7 + 24);
  sub_1C4EFE5C8();
  LOBYTE(v8) = sub_1C44DBB50(a1 + v8, v6);
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v8 & 1) != 0 && (v10 = *(v7 + 32), sub_1C4EFED88(), LOBYTE(v10) = sub_1C44DBB50(a1 + v10, v6), v9(v6, v3), (v10))
  {
    v11 = sub_1C4EFF878();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1C482D660()
{
  result = qword_1EDDDBC18;
  if (!qword_1EDDDBC18)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC18);
  }

  return result;
}

uint64_t sub_1C482D6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482D740(uint64_t a1)
{
  v2 = type metadata accessor for StaticKnowledgeTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C482D79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482D820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C482D8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C482D8F0()
{
  v0 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C4830FF0(0xD00000000000001BLL, 0x80000001C4FA2B50);
  if (sub_1C44157D4(v2, 1, v3) == 1)
  {
    sub_1C4420C3C(v2, &qword_1EC0BD2F8, &qword_1C4F31970);
    return 0;
  }

  else
  {
    sub_1C482E538(v2, v5, type metadata accessor for StaticKnowledgeAssetMetadata);
    v6 = *v5;
    sub_1C482E598(v5, type metadata accessor for StaticKnowledgeAssetMetadata);
  }

  return v6;
}

uint64_t sub_1C482DA4C()
{
  v0 = sub_1C4F00978();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for StaticKnowledgeTriple(0);
  sub_1C43FCDF8();
  v73 = v11;
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = sub_1C482D8F0();
  if (v22)
  {
    sub_1C4F00148();
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v24, "LocalizedRelationshipTopicMap: LocalizedRelationshipTopics not available", v25, 2u);
      MEMORY[0x1C6942830](v25, -1, -1);
    }

    (*(v2 + 8))(v5, v0);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    return sub_1C4F00F28();
  }

  v70 = v6;
  MEMORY[0x1EEE9AC00](v21);
  *(&v63 - 2) = v27;

  v28 = sub_1C49A52B4(sub_1C482E4FC, (&v63 - 4));

  v30 = 0;
  v71 = *(v28 + 16);
  v69 = v8 + 8;
  v68 = MEMORY[0x1E69E7CC0];
  v72 = v28;
  while (v71 != v30)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1C482D6DC(v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v30, v20);
    sub_1C4EFEBC8();
    sub_1C482D8A8(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v77 == v75 && v78 == v76)
    {
      v36 = sub_1C44004A8();
      v37(v36);

LABEL_15:
      sub_1C4406F90();
      sub_1C482E538(v20, v67, v38);
      v39 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DB00();
        v39 = v79;
      }

      v41 = *(v39 + 16);
      if (v41 >= *(v39 + 24) >> 1)
      {
        sub_1C459DB00();
        v39 = v79;
      }

      ++v30;
      *(v39 + 16) = v41 + 1;
      v68 = v39;
      sub_1C4406F90();
      result = sub_1C482E538(v67, v42, v43);
      v28 = v72;
    }

    else
    {
      v32 = sub_1C4F02938();
      v33 = sub_1C44004A8();
      v34(v33);

      if (v32)
      {
        goto LABEL_15;
      }

      sub_1C4419810();
      result = sub_1C482E598(v20, v35);
      ++v30;
      v28 = v72;
    }
  }

  v67 = *(v68 + 16);
  if (!v67)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v44 = 0;
  v45 = 0;
  v46 = v64;
  v66 = &v64[*(v74 + 36)];
  v63 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v65 = v68 + v63;
  v26 = MEMORY[0x1E69E7CC8];
  while (v44 < *(v68 + 16))
  {
    v70 = v26;
    v71 = v44;
    v47 = *(v73 + 72);
    v48 = sub_1C482D6DC(v65 + v47 * v44, v46);
    MEMORY[0x1EEE9AC00](v48);
    *(&v63 - 2) = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4B347B8(sub_1C482E518, (&v63 - 4), v28);
    v50 = v49;
    v51 = *(v49 + 16);
    if (v51)
    {
      v69 = v45;
      v77 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v51, 0);
      v52 = v77;
      v53 = v50 + v63;
      do
      {
        sub_1C482D6DC(v53, v13);
        v54 = &v13[*(v74 + 36)];
        v56 = *v54;
        v55 = *(v54 + 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4419810();
        sub_1C482E598(v13, v57);
        v77 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1C44CD9C0(v58 > 1, v59 + 1, 1);
          v52 = v77;
        }

        *(v52 + 16) = v59 + 1;
        v60 = v52 + 16 * v59;
        *(v60 + 32) = v56;
        *(v60 + 40) = v55;
        v53 += v47;
        --v51;
      }

      while (v51);

      v46 = v64;
      v45 = v69;
    }

    else
    {
    }

    v44 = v71 + 1;
    sub_1C4499940();
    v61 = v70;
    swift_isUniquelyReferenced_nonNull_native();
    v77 = v61;
    sub_1C4486BA8();
    v26 = v77;
    sub_1C4419810();
    result = sub_1C482E598(v46, v62);
    v28 = v72;
    if (v44 == v67)
    {

      return v26;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C482E1C0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple(0);
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a2;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4420C3C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482D8A8(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482D8A8(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F552E8);
  v10 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C482E3DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for StaticKnowledgeTriple(0) + 32);
  sub_1C4EFEBF8();
  LOBYTE(v7) = sub_1C44DBB50(a1 + v7, v6);
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = sub_1C4EFF088();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C482E538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C482E598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C482E5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v219 = a4;
  v210 = a3;
  v215 = sub_1C4F00978();
  sub_1C43FCDF8();
  v214 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2C8(&v202[-v9]);
  v205 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v241 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v13 = sub_1C43FD2C8(v12);
  v246 = type metadata accessor for StaticKnowledgeTriple(v13);
  sub_1C43FCDF8();
  v216 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2C8(&v202[-v18]);
  v218 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v217 = v22;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1C43FD2C8(&v202[-v24]);
  v25 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v27 = v26;
  v239 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v202[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v202[-v35];
  v233 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v232 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  v238 = &v202[-v42];
  v43 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v44 = *(sub_1C4EFEEF8() - 8);
  v45 = *(v44 + 80);
  v46 = (v45 + 32) & ~v45;
  v221 = *(v44 + 72);
  v222 = v45;
  v224 = v43;
  v47 = swift_allocObject();
  v240 = xmmword_1C4F0D130;
  *(v47 + 16) = xmmword_1C4F0D130;
  v223 = v46;
  sub_1C4EFEBF8();
  sub_1C4D504A4();
  v245 = v48;
  v208 = sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442CB08(inited);
  v207 = a1;
  *(v50 + 32) = a1;
  *(v50 + 40) = a2;
  v213 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08();
  v231 = v51;
  LODWORD(a1) = *MEMORY[0x1E69A95C0];
  v52 = v27 + 104;
  v53 = *(v27 + 104);
  sub_1C440F724();
  v53();
  v54 = v33;
  sub_1C440F724();
  v53();
  v55 = v236;
  sub_1C440F724();
  v53();
  v56 = v235;
  sub_1C440F724();
  v53();
  v57 = v234;
  v225 = a1;
  sub_1C440F724();
  v227 = v52;
  v226 = v53;
  v53();
  v58 = v55;
  v59 = v56;
  sub_1C4EFDCD8();

  v61 = v239 + 8;
  v60 = *(v239 + 8);
  v60(v57, v25);
  v60(v59, v25);
  v60(v58, v25);
  v229 = v54;
  v60(v54, v25);
  v230 = v36;
  v62 = v36;
  v231 = v25;
  v63 = v238;
  v239 = v61;
  v228 = v60;
  v60(v62, v25);
  v64 = sub_1C4EFF8F8();
  v65 = sub_1C440ABDC();
  sub_1C440BAA8(v65, v66, v67, v64);
  v68 = sub_1C43FF0C0(v63);
  sub_1C482ADC8(v60);
  v69 = *(v68 + 16);
  if (!v69)
  {
    v107 = v63;
    v108 = v232;
    v109 = v233;

    sub_1C4F00148();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v110 = sub_1C4F00968();
    v111 = sub_1C4F01CD8();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v248 = v113;
      *v112 = 136315138;
      *(v112 + 4) = sub_1C44043A4();
      _os_log_impl(&dword_1C43F8000, v110, v111, "ConfidenceQuery: Confidence Source <%s> unavailable", v112, 0xCu);
      sub_1C440962C(v113);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v114 = sub_1C440E334();
    v115(v114);
    (*(v108 + 8))(v107, v109);
    return 0;
  }

  v212 = v64;
  v248 = MEMORY[0x1E69E7CC0];
  sub_1C459D178();
  v70 = v248;
  sub_1C4409B30();
  v203 = v71;
  v206 = v68;
  v72 = v68 + v71;
  v245 = *(v73 + 72);
  v74 = v218;
  v75 = v217;
  do
  {
    sub_1C441EC60();
    (*(v20 + 16))(v75, v64 + *(v246 + 20), v74);
    sub_1C482D740(v64);
    v248 = v70;
    v77 = *(v70 + 16);
    v76 = *(v70 + 24);
    v64 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      sub_1C441FB7C(v76);
      sub_1C459D178();
      v70 = v248;
    }

    *(v70 + 16) = v64;
    (*(v20 + 32))(v70 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v77, v75, v74);
    v72 += v245;
    --v69;
  }

  while (v69);

  sub_1C45972E0();
  v218 = v78;
  v79 = v219;
  if (!v219)
  {
    v144 = swift_allocObject();
    sub_1C442CB08(v144);
    sub_1C4EFE5C8();
    sub_1C4D504A4();
    v244 = v145;
    v146 = swift_allocObject();
    sub_1C442CB08(v146);
    sub_1C4EFE2A8();
    sub_1C4D504A4();
    v148 = v147;
    v149 = v230;
    v150 = v231;
    v151 = v226;
    (v226)(v230, v225, v231);
    v152 = v229;
    sub_1C442BBB8();
    v151();
    v153 = v236;
    sub_1C442BBB8();
    v151();
    sub_1C4435094(&v252);
    sub_1C442BBB8();
    v151();
    sub_1C442BBB8();
    v151();
    v154 = v211;
    v155 = v218;
    sub_1C4EFDCD8();

    sub_1C4411D78();
    v148();
    (v148)(v72, v150);
    (v148)(v153, v150);
    (v148)(v152, v150);
    (v148)(v149, v150);
    v156 = sub_1C440ABDC();
    sub_1C440BAA8(v156, v157, v158, v212);
    v159 = sub_1C43FF0C0(v154);
    sub_1C482ADC8(v155);
    if (!*(v159 + 16))
    {

      v155 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v190 = *(v155 + 16);
      v191 = v232;
      if (v190)
      {
        v192 = (v155 + 32);
        v193 = MEMORY[0x1E69E7CC0];
        do
        {
          v194 = *v192;
          if (*v192 > 0.0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v248 = v193;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C440D4B0();
              v193 = v248;
            }

            v197 = *(v193 + 16);
            v196 = *(v193 + 24);
            if (v197 >= v196 >> 1)
            {
              v198 = sub_1C441FB7C(v196);
              sub_1C459D100(v198, v199, v200);
              v193 = v248;
            }

            *(v193 + 16) = v197 + 1;
            *(v193 + 8 * v197 + 32) = v194;
          }

          ++v192;
          --v190;
        }

        while (v190);
      }

      else
      {
        v193 = MEMORY[0x1E69E7CC0];
      }

      v175 = sub_1C45DC2E4(v193);

      v187 = *(v191 + 8);
      v189 = v211;
      v188 = v233;
LABEL_80:
      v187(v189, v188);
      v187(v238, v188);
      return v175;
    }

    sub_1C4410D28(MEMORY[0x1E69E7CC0]);
    sub_1C4403290();
    while (1)
    {
      sub_1C482D6DC(v72, v242);
      sub_1C4432394();
      MEMORY[0x1EEE9AC00](v160);
      sub_1C43FC408();
      if ((v164 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v164 & 0x2000000000000000) != 0)
      {
        sub_1C4405C74(v161, v162, v163, v164);
        if (!v141 && ((0x100003E01uLL >> v166) & 1) != 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if ((v163 & 0x1000000000000000) == 0)
        {
          break;
        }

        v165 = *((v164 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v165 < 0x21 && ((0x100003E01uLL >> v165) & 1) != 0)
        {
          goto LABEL_44;
        }
      }

      _swift_stdlib_strtod_clocale();
LABEL_44:
      sub_1C482D740(v242);
      sub_1C43FD834();
      if (v141)
      {
        sub_1C4433434(v167);
        v155 = v249;
      }

      sub_1C4417284();
      if (v143)
      {

        goto LABEL_68;
      }
    }

    sub_1C4F02218();
    goto LABEL_44;
  }

  v80 = v222;
  v81 = swift_allocObject();
  sub_1C442CB08(v81);
  sub_1C4EFE5C8();
  sub_1C4D504A4();
  v242 = v82;
  v83 = swift_initStackObject();
  sub_1C442CB08(v83);
  *(v84 + 32) = v210;
  *(v84 + 40) = v79;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08();
  v217 = v85;
  v86 = swift_allocObject();
  sub_1C442CB08(v86);
  sub_1C4EFED88();
  sub_1C4D504A4();
  v87 = sub_1C4435094(v251);
  v88 = v231;
  v89 = v226;
  (v226)(v87, v225, v231);
  v90 = v229;
  sub_1C442DF78();
  v89();
  v91 = v236;
  sub_1C442DF78();
  v89();
  v92 = v235;
  sub_1C442DF78();
  v89();
  sub_1C442DF78();
  v89();
  v93 = v220;
  v94 = v242;
  sub_1C4EFDCD8();

  sub_1C4411D78();
  v94();
  (v94)(v92, v88);
  (v94)(v91, v88);
  (v94)(v90, v88);
  (v94)(v80, v88);
  v95 = v237;
  sub_1C440BAA8(v237, 1, 1, v212);
  v96 = sub_1C498DB4C(v93, v95);
  sub_1C482ADC8(v95);
  v97 = *(v96 + 16);
  if (v97)
  {
    v248 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v98 = v248;
    v99 = v96 + v203;
    v100 = (v241 + 16);
    v101 = v205;
    v102 = v204;
    do
    {
      sub_1C441EC60();
      (*v100)(v102, v95 + *(v246 + 28), v101);
      sub_1C482D740(v95);
      v248 = v98;
      v104 = *(v98 + 16);
      v103 = *(v98 + 24);
      v95 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        sub_1C441FB7C(v103);
        sub_1C459D120();
        v98 = v248;
      }

      *(v98 + 16) = v95;
      sub_1C4409B30();
      (*(v106 + 32))(v98 + v105 + *(v106 + 72) * v104, v102, v101);
      v99 += v245;
      --v97;
    }

    while (v97);

    sub_1C459740C();
    v244 = v116;
    v117 = swift_allocObject();
    sub_1C442CB08(v117);
    sub_1C4EFE5C8();
    sub_1C4D504A4();
    v242 = v118;
    v119 = swift_allocObject();
    sub_1C442CB08(v119);
    sub_1C4EFE2A8();
    sub_1C4D504A4();
    v241 = v120;
    v121 = v230;
    v122 = v231;
    v123 = v226;
    (v226)(v230, v225, v231);
    sub_1C4435094(v250);
    sub_1C43FE9A8();
    v123();
    v124 = v236;
    sub_1C43FE9A8();
    v123();
    v125 = v235;
    sub_1C43FE9A8();
    v123();
    sub_1C43FE9A8();
    v123();
    v126 = v209;
    v127 = v218;
    v128 = v244;
    sub_1C4EFDCD8();

    v129 = v126;
    sub_1C4411D78();
    v128();
    (v128)(v125, v122);
    (v128)(v124, v122);
    (v128)(v99, v122);
    (v128)(v121, v122);
    v130 = sub_1C440ABDC();
    sub_1C440BAA8(v130, v131, v132, v212);
    v133 = sub_1C43FF0C0(v126);
    sub_1C482ADC8(v127);
    if (*(v133 + 16))
    {
      sub_1C4410D28(MEMORY[0x1E69E7CC0]);
      sub_1C4403290();
      while (1)
      {
        sub_1C482D6DC(v99, v243);
        sub_1C4432394();
        MEMORY[0x1EEE9AC00](v134);
        sub_1C43FC408();
        if ((v138 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v138 & 0x2000000000000000) != 0)
        {
          sub_1C4405C74(v135, v136, v137, v138);
          if (!v141 && ((0x100003E01uLL >> v140) & 1) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v137 & 0x1000000000000000) == 0)
          {
            break;
          }

          v139 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v139 < 0x21 && ((0x100003E01uLL >> v139) & 1) != 0)
          {
            goto LABEL_27;
          }
        }

        _swift_stdlib_strtod_clocale();
LABEL_27:
        sub_1C482D740(v243);
        sub_1C43FD834();
        if (v141)
        {
          sub_1C4433434(v142);
          v127 = v249;
        }

        sub_1C4417284();
        if (v143)
        {

          v129 = v209;
          goto LABEL_55;
        }
      }

      sub_1C4F02218();
      goto LABEL_27;
    }

    v127 = MEMORY[0x1E69E7CC0];
LABEL_55:
    v176 = *(v127 + 16);
    v177 = v232;
    if (v176)
    {
      v178 = (v127 + 32);
      v179 = MEMORY[0x1E69E7CC0];
      do
      {
        v180 = *v178;
        if (*v178 > 0.0)
        {
          v181 = swift_isUniquelyReferenced_nonNull_native();
          v248 = v179;
          if ((v181 & 1) == 0)
          {
            sub_1C440D4B0();
            v179 = v248;
          }

          v183 = *(v179 + 16);
          v182 = *(v179 + 24);
          if (v183 >= v182 >> 1)
          {
            v184 = sub_1C441FB7C(v182);
            sub_1C459D100(v184, v185, v186);
            v179 = v248;
          }

          *(v179 + 16) = v183 + 1;
          *(v179 + 8 * v183 + 32) = v180;
        }

        ++v178;
        --v176;
      }

      while (v176);
    }

    else
    {
      v179 = MEMORY[0x1E69E7CC0];
    }

    v175 = sub_1C45DC2E4(v179);

    v187 = *(v177 + 8);
    v188 = v233;
    v187(v129, v233);
    v189 = v220;
    goto LABEL_80;
  }

  sub_1C4F00148();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4435094(v247);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v168 = sub_1C4F00968();
  v169 = sub_1C4F01CD8();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    *v170 = 136315394;
    *(v170 + 4) = sub_1C441D828(v210, v80, &v248);
    *(v170 + 12) = 2080;
    *(v170 + 14) = sub_1C44043A4();
    _os_log_impl(&dword_1C43F8000, v168, v169, "ConfidenceQuery: Signal Type <%s> for Confidence Source <%s> unavailable", v170, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v171 = sub_1C440E334();
  v172(v171);
  v173 = *(v232 + 8);
  v174 = v233;
  v173(v220, v233);
  v173(v238, v174);
  return 0;
}

size_t sub_1C482FCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C497F41C(*(a1 + 16), 0);
  v3 = sub_1C4EFF318();
  v4 = sub_1C43FBD18(v3);
  sub_1C440D4D4(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24);
  sub_1C461A3C0();
  v13 = v12;
  sub_1C44323B4(v12, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_1C449BB0C();
  if (v13 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C482FF48(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v7 = a2(*(a1 + 16), 0);
  v8 = a3(0);
  v9 = sub_1C43FBD18(v8);
  v17 = sub_1C440D4D4(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  v18 = a4(v17);
  sub_1C44323B4(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30);
  sub_1C449BB0C();
  if (v18 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1C4830014(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(v17, v6 + 32, v4, a1);
  sub_1C44323B4(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
  sub_1C449BB0C();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *sub_1C48300AC(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C440ABF4();
  sub_1C4834AF0(a1, v6);
  swift_allocObject();
  v7 = sub_1C48310D0(v6);
  sub_1C442CB18();
  sub_1C4453E44(a1, v8);
  return v7;
}

uint64_t GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v147 = a4;
  LODWORD(v149) = a3;
  v143 = a2;
  v148 = sub_1C4F00978();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v144 = v127 - v12;
  v135 = sub_1C4F00D58();
  sub_1C43FCDF8();
  v134 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v16 - v15);
  v129 = sub_1C4F01D98();
  sub_1C43FCDF8();
  v128 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v20 - v19);
  v127[1] = sub_1C4F01D58();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v23 - v22);
  v132 = sub_1C4F00D88();
  sub_1C43FCDF8();
  v131 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v28 = sub_1C43FD2C8(v27 - v26);
  v29 = type metadata accessor for LiveGlobalKnowledgeTriple(v28);
  sub_1C43FBD18(v29);
  v142 = v30;
  v141 = sub_1C4EFF458();
  sub_1C43FCDF8();
  v140 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v34 - v33);
  v138 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v137 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v40 = sub_1C4EFF3B8();
  sub_1C43FCDF8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBD08();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v127 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v127 - v51;
  v53 = swift_allocObject();
  v152 = v42;
  v153 = v53;
  *(v53 + 16) = MEMORY[0x1E69E7CC0];
  (*(v42 + 16))(v52, a1, v40);
  v146 = a1;
  v54 = *(sub_1C4EFF388() + 16);

  if (!v54)
  {
    sub_1C4830F9C();
    swift_allocError();
    *v79 = 0xD000000000000022;
    *(v79 + 8) = 0x80000001C4FA2BA0;
    *(v79 + 16) = 1;
    swift_willThrow();
LABEL_10:
    (*(v152 + 8))(v52, v40);

    return v10;
  }

  v145 = v40;
  v136 = v6;
  if (v149)
  {
    v149 = v10;

    sub_1C492C830();
    v10 = v55;
    sub_1C492D568();
    sub_1C492DE94();
    v56 = v152;
    v57 = *(v152 + 8);
    v58 = v46;
    v59 = v145;
    v57(v58, v145);
    v57(v52, v59);
    (*(v56 + 32))(v52, v49, v59);
    v60 = sub_1C4EFF388();

    v61 = *(v60 + 16);

    if (!v61)
    {
      v57(v52, v59);

      return v10;
    }

    v10 = v149;
  }

  v62 = *(v151 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi + 24);
  v63 = *(v151 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi + 32);
  sub_1C4409678((v151 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi), v62);
  v64 = v150;
  v65 = (*(v63 + 8))(v52, v147, v62, v63);
  if (v64)
  {

    sub_1C4F00168();
    v67 = v64;
    v68 = sub_1C4F00968();
    v69 = sub_1C4F01CD8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      v72 = v64;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v73;
      *v71 = v73;
      _os_log_impl(&dword_1C43F8000, v68, v69, "GlobalKnowledgeStore error while querying global kg API: %@", v70, 0xCu);
      sub_1C4420C3C(v71, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FFB20();
    v74(v10, v148);
    swift_getErrorValue();
    v75 = sub_1C4F02A38();
    v77 = v76;
    sub_1C4830F9C();
    swift_allocError();
    *v78 = v75;
    *(v78 + 8) = v77;
    *(v78 + 16) = 0;
    swift_willThrow();

    v40 = v145;
    goto LABEL_10;
  }

  LODWORD(v150) = v66;
  v80 = v52;
  v81 = v153;
  *(v153 + 16) = v65;

  v82 = swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v149 = v80;
  sub_1C492BFFC();
  v84 = v83;

  *(v82 + 16) = v84;
  sub_1C4EF9CC8();
  sub_1C4EF9C58();
  v86 = v85;
  sub_1C43FFB20();
  v87(v39, v138);
  v88 = *(v81 + 16);
  v89 = *(v82 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v90 = v139;
  sub_1C4EFF3A8();
  sub_1C48331B4(v88, v89, v90, v86);
  v92 = v91;
  v94 = v93;

  sub_1C43FFB20();
  v95(v90, v141);
  *(v81 + 16) = v92;

  v147 = v82;
  *(v82 + 16) = v94;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597D1C();
  v97 = v96;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597D1C();
  sub_1C465ECF0(v98, v97);
  v10 = sub_1C482FF48(v99, sub_1C497ECF8, type metadata accessor for LiveGlobalKnowledgeTriple, sub_1C4619D14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C483484C(v10);
    v10 = v126;
  }

  v100 = v143;
  v101 = *(v10 + 16);
  aBlock = (v10 + ((*(v142 + 80) + 32) & ~*(v142 + 80)));
  v156 = v101;
  sub_1C483496C(&aBlock);

  v102 = v149;
  if (v100)
  {
    if (!*(*(v153 + 16) + 16))
    {
      if ((*(v94 + 16) == 0) | v150 & 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((v150 & 1) == 0)
    {
LABEL_16:
      sub_1C4665684();
      v103 = v130;
      sub_1C4F00D78();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1C4834AA8(&qword_1EDDF0418, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
      v146 = v10;
      v104 = MEMORY[0x1E69E6328];
      sub_1C4401CBC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40, MEMORY[0x1E69E6328]);
      sub_1C4F020C8();
      (*(v128 + 104))(v127[3], *MEMORY[0x1E69E8090], v129);
      v105 = sub_1C4F01DC8();
      v106 = swift_allocObject();
      v107 = v153;
      v106[2] = v151;
      v106[3] = v107;
      v106[4] = v147;
      v159 = sub_1C4834A9C;
      v160 = v106;
      aBlock = MEMORY[0x1E69E9820];
      v156 = 1107296256;
      v157 = sub_1C4833DD0;
      v158 = &unk_1F43EE108;
      v108 = _Block_copy(&aBlock);

      sub_1C4F00D78();
      v154 = MEMORY[0x1E69E7CC0];
      sub_1C4834AA8(&qword_1EDDFCF08, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
      sub_1C4401CBC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30, v104);
      v109 = v133;
      v102 = v149;
      v110 = v135;
      sub_1C4F020C8();
      MEMORY[0x1C6940AA0](0, v103, v109, v108);
      _Block_release(v108);

      sub_1C43FFB20();
      v111 = v109;
      v10 = v146;
      v112(v111, v110);
      sub_1C43FFB20();
      v113(v103, v132);
    }
  }

LABEL_17:
  sub_1C4F00168();
  v114 = sub_1C4F00968();
  v115 = sub_1C4F01CC8();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    aBlock = v117;
    *v116 = 136315138;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    Array<A>.toIdString.getter();
    v119 = v118;
    v120 = v10;
    v122 = v121;

    v123 = sub_1C441D828(v119, v122, &aBlock);
    v10 = v120;

    *(v116 + 4) = v123;
    _os_log_impl(&dword_1C43F8000, v114, v115, "GlobalKnowledgeStore results: %s", v116, 0xCu);
    sub_1C440962C(v117);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C43FFB20();
  v124(v144, v148);
  (*(v152 + 8))(v102, v145);

  return v10;
}

unint64_t sub_1C4830F9C()
{
  result = qword_1EC0BDD88;
  if (!qword_1EC0BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD88);
  }

  return result;
}

uint64_t sub_1C4830FF0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;

  sub_1C49A54B0(sub_1C4834D04, v3);
}

uint64_t GlobalKnowledgeStore.__allocating_init<A>(config:liveApi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GlobalKnowledgeStore.init<A>(config:liveApi:)(a1, a2, a3, a4);
  return v8;
}

void *sub_1C48310D0(uint64_t a1)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4834AF0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config);
  if (qword_1EDDFEE20[0] != -1)
  {
    swift_once();
  }

  v5 = sub_1C4ABF8B0();
  if (v2)
  {
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C4453E44(v1 + v4, type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v5;
    v8 = &type metadata for LiveGlobalKnowledgeApi;
    v9 = &protocol witness table for LiveGlobalKnowledgeApi;
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C441D670(&v7, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi);
  }

  return v1;
}

void *GlobalKnowledgeStore.init<A>(config:liveApi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C440ABF4();
  sub_1C4834AF0(v11, v4 + v10);
  if (qword_1EDDFEE20[0] != -1)
  {
    swift_once();
  }

  v12 = sub_1C4ABF8B0();
  if (v5)
  {
    (*(*(a3 - 8) + 8))(a2, a3);
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C4453E44(v4 + v10, type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v12;
    v17 = a3;
    v18 = a4;
    v13 = sub_1C4422F90(&v16);
    (*(*(a3 - 8) + 32))(v13, a2, a3);
    sub_1C442CB18();
    sub_1C4453E44(a1, v14);
    sub_1C441D670(&v16, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi);
  }

  return v4;
}

BOOL static GlobalKnowledgeStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  v3 = a2 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration(0) + 20);
  v6 = *(v2 + v4);
  v5 = *(v2 + v4 + 8);
  v7 = (v3 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t GlobalKnowledgeStore.hash(into:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4411D8C();
  sub_1C4834AA8(v3, v4, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v5 = (v2 + *(type metadata accessor for Configuration(0) + 20));
  v6 = v5[1];
  MEMORY[0x1C69417F0](*v5);
  return MEMORY[0x1C69417F0](v6);
}

uint64_t GlobalKnowledgeStore.deinit()
{

  sub_1C442CB18();
  sub_1C4453E44(v0 + v1, v2);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi));
  return v0;
}

uint64_t GlobalKnowledgeStore.__deallocating_deinit()
{
  GlobalKnowledgeStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t GlobalKnowledgeStore.hashValue.getter()
{
  sub_1C4F02AF8();
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4411D8C();
  sub_1C4834AA8(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration(0) + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

void sub_1C4831690()
{
  type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v4 - v3;

  v6 = sub_1C49A5598(sub_1C4832104, 0);

  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4FA2C20;
  v9 = *(v6 + 16);
  if (v9)
  {
    v22 = inited;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C459E5F0(0, v9, 0);
    v10 = 0;
    v23 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v25 = v6;
    v24 = v1;
    while (v10 < *(v6 + 16))
    {
      sub_1C4834AF0(v23 + *(v1 + 72) * v10, v5);
      sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1C4F0CE60;
      *(v11 + 32) = 0x73656C70697274;
      *(v11 + 40) = 0xE700000000000000;
      *(v11 + 48) = sub_1C4F02858();
      *(v11 + 56) = v12;
      *(v11 + 64) = 0x6E6F6973726576;
      *(v11 + 72) = 0xE700000000000000;
      *(v11 + 80) = sub_1C4F02858();
      *(v11 + 88) = v13;
      v14 = sub_1C4F00F28();
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453E44(v5, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);
      v18 = *(v26 + 16);
      v17 = *(v26 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = sub_1C43FCFE8(v17);
        sub_1C459E5F0(v20, v18 + 1, 1);
      }

      ++v10;
      *(v26 + 16) = v18 + 1;
      v19 = (v26 + 24 * v18);
      v19[4] = v16;
      v19[5] = v15;
      v19[6] = v14;
      v1 = v24;
      v6 = v25;
      if (v9 == v10)
      {

        v8 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v21 = sub_1C4BA044C();
    *(v8 + 72) = sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
    *(v8 + 48) = v21;
    sub_1C4F00F28();
  }
}

uint64_t sub_1C4831A88()
{
  v1 = *v0;
  sub_1C4F02AF8();
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4834AA8(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v3 = (v2 + *(type metadata accessor for Configuration(0) + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C4831B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46BC360();
  *a1 = result;
  return result;
}

uint64_t sub_1C4831B70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4373656C70697274 && a2 == 0xEC000000746E756FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4831C3C(char a1)
{
  if (a1)
  {
    return 0x4373656C70697274;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1C4831C7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C456902C(&qword_1EC0BDDD8, &qword_1C4F32100);
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4836068();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v11 = v10;
  v12 = v18;
  v13 = v19;
  v23 = 0;
  sub_1C4834AA8(&qword_1EDDFAA78, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54AB8);
  sub_1C4F026C8();
  v14 = v11;
  sub_1C48360BC(v20, v11);
  v22 = 1;
  v15 = v21;
  v16 = sub_1C4F026B8();
  (*(v12 + 8))(v7, v15);
  *(v14 + *(v8 + 20)) = v16;
  sub_1C4834AF0(v14, v13);
  sub_1C440962C(a1);
  return sub_1C4453E44(v14, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);
}

uint64_t sub_1C4831FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4831B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4831FE0(uint64_t a1)
{
  v2 = sub_1C4836068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C483201C(uint64_t a1)
{
  v2 = sub_1C4836068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4832070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4834AA8(&qword_1EDDE44E8, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus, &unk_1C4F3208C);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4832104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v15[0] = a2;
  v16 = sub_1C456902C(&qword_1EC0BDDA0, &qword_1C4F32048);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = v15 - v3;
  v5 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  v15[1] = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C456902C(&qword_1EC0BDDA8, &qword_1C4F32050);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDDFB30 != -1)
  {
    swift_once();
  }

  v9 = sub_1C456902C(&qword_1EC0BDDB0, &qword_1C4F32058);
  sub_1C442B738(v9, qword_1EDE2CA20);
  sub_1C4401CBC(&qword_1EDDF0130, &qword_1EC0BDDB0, &qword_1C4F32058, MEMORY[0x1E699FEE0]);
  sub_1C4EFB698();
  v10 = v16;
  sub_1C4EFB838();
  (*(v2 + 8))(v4, v10);
  sub_1C4834AA8(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54DE0);
  MEMORY[0x1C6939B50](v8);

  type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  sub_1C4834AA8(&qword_1EDDE44F0, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus, &unk_1C4F320B4);
  sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020, MEMORY[0x1E699FF60]);
  v11 = v18;
  v12 = v20;
  v13 = sub_1C4EFB3F8();
  result = (*(v17 + 8))(v7, v11);
  if (!v12)
  {
    *v15[0] = v13;
  }

  return result;
}

uint64_t GlobalKnowledgeStore.liveGKSCacheSize.getter()
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (sub_1C4433458(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v4, v5, "GlobalKnowledgeStore: Fetching Live GKS cache size");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v6 = sub_1C440F730();
  v8 = v7(v6);
  v10 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4410D4C();
  sub_1C4465390(sub_1C4834B4C, v0);

  return v10;
}

void sub_1C4832604(uint64_t a1, uint64_t *a2)
{
  sub_1C4F02248();

  sub_1C4835EB4();
  sub_1C4EFADD8();
  if (!v2)
  {
    v4 = sub_1C4F02858();
    MEMORY[0x1C6940010](v4);

    sub_1C4588BAC();
    v5 = *(*a2 + 16);
    sub_1C45897E8();
    v6 = *a2;
    *(v6 + 16) = v5 + 1;
    v7 = v6 + 16 * v5;
    *(v7 + 32) = 0xD000000000000028;
    *(v7 + 40) = 0x80000001C4FA2C60;
    sub_1C4F02248();

    type metadata accessor for LiveGlobalKnowledgeTriple(0);
    sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
    sub_1C4EFADD8();
    v8 = sub_1C4F02858();
    MEMORY[0x1C6940010](v8);

    sub_1C4588BAC();
    v9 = *(*a2 + 16);
    sub_1C45897E8();
    v10 = *a2;
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = 0xD000000000000020;
    *(v11 + 40) = 0x80000001C4FA2C90;
  }
}

uint64_t GlobalKnowledgeStore.liveGKSCacheContents.getter()
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (sub_1C4433458(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v4, v5, "GlobalKnowledgeStore: Fetching Live GKS cache contents");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v6 = sub_1C440F730();
  v7(v6);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v9 = sub_1C4F00F28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410D4C();
  sub_1C4465390(sub_1C4834B68, v0);

  return v9;
}

uint64_t sub_1C483298C(void (*a1)(void *a1@<X8>), uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4834AA8(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  result = sub_1C4EFB388();
  if (!v2)
  {
    v71 = *(result + 16);
    v72 = a2;
    if (v71)
    {
      v66 = a1;
      v67 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(v7 + 80);
      v69 = v7;
      v70 = result + ((v13 + 32) & ~v13);
      v68 = result;
      while (v12 < *(result + 16))
      {
        sub_1C4834AF0(v70 + *(v7 + 72) * v12, v9);
        v14 = LiveGlobalKnowledgeTriple.description.getter();
        v16 = v15;
        sub_1C4453E44(v9, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C44239FC(v11, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v78 = *a2;
        v17 = v78;
        *a2 = 0x8000000000000000;
        v18 = sub_1C445FAA8(0x6172675F6576696CLL, 0xEA00000000006870);
        if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
        {
          goto LABEL_36;
        }

        v20 = v18;
        v21 = v19;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        v22 = sub_1C4F02458();
        v23 = v78;
        if (v22)
        {
          v24 = sub_1C445FAA8(0x6172675F6576696CLL, 0xEA00000000006870);
          a2 = v72;
          if ((v21 & 1) != (v25 & 1))
          {
            goto LABEL_40;
          }

          v20 = v24;
        }

        else
        {
          a2 = v72;
        }

        *a2 = v23;

        v26 = *a2;
        if ((v21 & 1) == 0)
        {
          sub_1C44686DC(v20, 0x6172675F6576696CLL, 0xEA00000000006870, MEMORY[0x1E69E7CC0], *a2);
        }

        ++v12;
        v27 = *(v26 + 56) + 8 * v20;
        sub_1C4588BAC();
        v28 = *(*v27 + 16);
        sub_1C45897E8();
        v29 = *v27;
        *(v29 + 16) = v28 + 1;
        v30 = v29 + 16 * v28;
        *(v30 + 32) = v14;
        *(v30 + 40) = v16;
        v11 = sub_1C48362FC;
        result = v68;
        v7 = v69;
        if (v71 == v12)
        {

          v31 = sub_1C48362FC;
          v3 = v67;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {

      v31 = 0;
LABEL_15:
      sub_1C4835F08();
      sub_1C4835EB4();
      v32 = sub_1C4EFB388();
      if (v3)
      {
        return sub_1C44239FC(v31, 0);
      }

      v66 = v31;
      v67 = 0;
      v70 = *(v32 + 16);
      v33 = 0;
      if (!v70)
      {
LABEL_33:

        sub_1C44239FC(v66, 0);
        return sub_1C44239FC(v33, 0);
      }

      v34 = 0;
      v35 = 0x80000001C4FA2C40;
      v36 = (v32 + 64);
      v68 = v32;
      v69 = 0x80000001C4FA2C40;
      while (v34 < *(v32 + 16))
      {
        v37 = *(v36 - 3);
        v38 = *(v36 - 2);
        v39 = *(v36 - 1);
        v40 = *v36;
        v73 = *(v36 - 4);
        v74 = v37;
        v75 = v38;
        v76 = v39;
        v77 = v40;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v41 = sub_1C492BEEC();
        v71 = v42;

        sub_1C44239FC(v33, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v78 = *a2;
        v43 = v78;
        *a2 = 0x8000000000000000;
        v44 = sub_1C445FAA8(0xD000000000000012, v35);
        if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
        {
          goto LABEL_38;
        }

        v46 = v44;
        v47 = v45;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        v48 = sub_1C4F02458();
        v49 = v78;
        if (v48)
        {
          v50 = sub_1C445FAA8(0xD000000000000012, v35);
          v52 = v72;
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_40;
          }

          v46 = v50;
        }

        else
        {
          v52 = v72;
        }

        *v52 = v49;

        v53 = *v52;
        v35 = v69;
        if ((v47 & 1) == 0)
        {
          v53[(v46 >> 6) + 8] |= 1 << v46;
          v54 = (v53[6] + 16 * v46);
          *v54 = 0xD000000000000012;
          v54[1] = v35;
          *(v53[7] + 8 * v46) = MEMORY[0x1E69E7CC0];
          v55 = v53[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_39;
          }

          v53[2] = v57;
        }

        v58 = v53[7];
        v59 = *(v58 + 8 * v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 8 * v46) = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C443D664();
          v59 = v64;
          *(v58 + 8 * v46) = v64;
        }

        v61 = *(v59 + 16);
        if (v61 >= *(v59 + 24) >> 1)
        {
          sub_1C443D664();
          v59 = v65;
          *(v58 + 8 * v46) = v65;
        }

        ++v34;
        *(v59 + 16) = v61 + 1;
        v62 = v59 + 16 * v61;
        v63 = v71;
        a2 = v72;
        *(v62 + 32) = v41;
        *(v62 + 40) = v63;
        v36 += 5;
        v33 = sub_1C48362FC;
        v32 = v68;
        if (v70 == v34)
        {
          goto LABEL_33;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1C4F029F8();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall GlobalKnowledgeStore.liveGKSEraseCache()()
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CD8();
  if (sub_1C4433458(v2))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v3, v4, "GlobalKnowledgeStore: Erasing live GKS cache");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5 = sub_1C440F730();
  v6(v5);

  sub_1C446C37C(sub_1C4833104, 0);
}

uint64_t sub_1C4833104(uint64_t a1)
{
  type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  result = sub_1C4EFAE88();
  if (!v1)
  {
    sub_1C4835EB4();
    return sub_1C4EFAE88();
  }

  return result;
}

void sub_1C48331B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v95 = a2;
  v102 = a1;
  v6 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C43FCDF8();
  v98 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v104 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v94 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v94 - v15;
  sub_1C4F00978();
  sub_1C43FCDF8();
  v99 = v18;
  v100 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C4EFF458();
  sub_1C43FCDF8();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v94 - v31;
  v33 = *(v24 + 16);
  v103 = a3;
  v101 = v33;
  (v33)(v94 - v31, a3, v22, v30);
  v34 = (*(v24 + 88))(v32, v22);
  if (v34 == *MEMORY[0x1E69A9900])
  {
    v35 = 1800.0;
    v36 = v102;
  }

  else
  {
    v36 = v102;
    if (v34 == *MEMORY[0x1E69A98F0])
    {
      v35 = 86400.0;
    }

    else
    {
      v35 = 0.0;
      if (v34 != *MEMORY[0x1E69A98F8])
      {
        sub_1C4F00168();
        v97 = sub_1C4F00968();
        LODWORD(v96) = sub_1C4F01CD8();
        if (os_log_type_enabled(v97, v96))
        {
          v37 = sub_1C43FCED0();
          v94[1] = v37;
          *v37 = 0;
          _os_log_impl(&dword_1C43F8000, v97, v96, "Request is from unknown client. Server response will not be cached", v37, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        (*(v99 + 8))(v21, v100);
        (*(v24 + 8))(v32, v22);
      }
    }
  }

  v101(v28, v103, v22);
  sub_1C49E3938(v28, &v105);
  v38 = *(v36 + 16);
  if (v38)
  {
    sub_1C43FF0DC();
    if (!(v41 ^ v42 | v40))
    {
      goto LABEL_47;
    }

    v43 = *(v39 + 3168);
    if (a4 <= v43)
    {
LABEL_48:
      __break(1u);
    }

    else if (a4 < 9.22337204e18)
    {
      LODWORD(v101) = v106;
      v100 = a4;
      v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v44 = v36 + v99;
      v45 = *(v98 + 72);
      v97 = v105;
      v98 = v45;
      v46 = v35 + a4;
      v96 = (v35 + a4);
      v47 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4413214();
        sub_1C4834AF0(v44, v16);
        v48 = *&v16[v6[11]];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((v101 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458BBB8();
            v48 = v74;
          }

          v50 = *(v48 + 16);
          v49 = *(v48 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1C43FCFE8(v49);
            sub_1C458BBB8();
            v48 = v75;
          }

          *(v48 + 16) = v50 + 1;
          *(v48 + 8 * v50 + 32) = v97;
        }

        if (*&v16[v6[9]])
        {
          v51 = *&v16[v6[10]];
        }

        else
        {
          sub_1C43FF0DC();
          if (!(v41 ^ v42 | v40))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v46 <= v43)
          {
            goto LABEL_45;
          }

          v51 = v96;
          if (v46 >= 9.22337204e18)
          {
            goto LABEL_46;
          }
        }

        v102 = v44;
        v103 = v38;
        sub_1C4EFF0C8();
        sub_1C43FBCE0();
        (*(v52 + 16))(v13, v16);
        v53 = v6[5];
        v54 = sub_1C4EFEEF8();
        v55 = v47;
        v56 = *(*(v54 - 8) + 16);
        v56(&v13[v53], &v16[v53], v54);
        v57 = v6[6];
        sub_1C4EFF8A8();
        sub_1C43FBCE0();
        (*(v58 + 16))(&v13[v57], &v16[v57]);
        v56(&v13[v6[7]], &v16[v6[7]], v54);
        v47 = v55;
        v59 = v6[8];
        v60 = *&v16[v59];
        v61 = *&v16[v59 + 8];
        v62 = &v13[v59];
        *v62 = v60;
        *(v62 + 1) = v61;
        *&v13[v6[9]] = v51;
        *&v13[v6[10]] = v100;
        *&v13[v6[11]] = v48;
        sub_1C4413214();
        sub_1C4834AF0(v13, v104);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1C43FCEC0();
          sub_1C458BB48(v68, v69, v70, v55);
          v47 = v71;
        }

        v64 = v102;
        v63 = v103;
        v66 = *(v47 + 16);
        v65 = *(v47 + 24);
        if (v66 >= v65 >> 1)
        {
          v72 = sub_1C43FCFE8(v65);
          sub_1C458BB48(v72, v66 + 1, 1, v47);
          v47 = v73;
        }

        sub_1C4453E44(v13, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C4453E44(v16, type metadata accessor for LiveGlobalKnowledgeTriple);
        *(v47 + 16) = v66 + 1;
        v67 = v98;
        sub_1C48360BC(v104, v47 + v99 + v66 * v98);
        v44 = v64 + v67;
        v38 = v63 - 1;
        if (!v38)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  v76 = *(v95 + 16);
  if (v76)
  {
    sub_1C43FF0DC();
    if (!(v41 ^ v42 | v40))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v78 <= -9.22337204e18)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v78 >= 9.22337204e18)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v104 = v78;
    v79 = (v77 + 56);
    v80 = MEMORY[0x1E69E7CC0];
    do
    {
      v82 = *(v79 - 3);
      v81 = *(v79 - 2);
      v84 = *(v79 - 1);
      v83 = *v79;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1C43FCEC0();
        sub_1C458BB88(v88, v89, v90, v80);
        v80 = v91;
      }

      v86 = *(v80 + 16);
      v85 = *(v80 + 24);
      if (v86 >= v85 >> 1)
      {
        v92 = sub_1C43FCFE8(v85);
        sub_1C458BB88(v92, v86 + 1, 1, v80);
        v80 = v93;
      }

      *(v80 + 16) = v86 + 1;
      v87 = (v80 + 40 * v86);
      v87[4] = v82;
      v87[5] = v81;
      v87[6] = v84;
      v87[7] = v83;
      v87[8] = v104;
      v79 += 5;
      --v76;
    }

    while (v76);
  }
}

uint64_t sub_1C483395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(a3 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C48339F4(v5, v6);
}

uint64_t sub_1C48339F4(void *a1, void *a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  sub_1C4F00168();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();
  v13 = os_log_type_enabled(v11, v12);
  v38 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 134218242;
    *(v14 + 4) = a1[2];

    *(v14 + 12) = 2080;
    v15 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
    v16 = MEMORY[0x1C6940380](a1, v15);
    v18 = v7;
    v19 = a1;
    v20 = a2;
    v21 = v5;
    v22 = sub_1C441D828(v16, v17, &v39);

    *(v14 + 14) = v22;
    v5 = v21;
    a2 = v20;
    a1 = v19;
    v7 = v18;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Storing %ld triples in LiveGlobalKnowledgeGraph cache: %s", v14, 0x16u);
    v23 = v37;
    sub_1C440962C(v37);
    v24 = v23;
    v4 = v38;
    MEMORY[0x1C6942830](v24, -1, -1);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  else
  {
  }

  v25 = *(v5 + 8);
  v25(v10, v4);
  sub_1C4F00168();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 134218242;
    *(v28 + 4) = a2[2];

    *(v28 + 12) = 2080;
    v30 = MEMORY[0x1C6940380](a2, &type metadata for IDSearchNoResultRecord);
    v37 = a2;
    v32 = sub_1C441D828(v30, v31, &v39);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_1C43F8000, v26, v27, "Storing %ld NoResultRecords in LiveGlobalKnowledgeGraph cache: %s", v28, 0x16u);
    sub_1C440962C(v29);
    MEMORY[0x1C6942830](v29, -1, -1);
    MEMORY[0x1C6942830](v28, -1, -1);

    a2 = v37;
    v33 = v38;
    v34 = v7;
  }

  else
  {

    v34 = v7;
    v33 = v4;
  }

  v35 = (v25)(v34, v33);
  MEMORY[0x1EEE9AC00](v35);
  *(&v37 - 2) = a1;
  *(&v37 - 1) = a2;

  sub_1C446C37C(sub_1C4835F5C, (&v37 - 4));
}

uint64_t sub_1C4833DD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C4833E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v75 = a1;
  v69 = sub_1C4F00978();
  v6 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v68 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    v66 = (v6 + 8);
    v67 = v19;
    v16.n128_u64[0] = 136315394;
    v61 = v16;
    v20 = &v57 - v15;
    v65 = &v57 - v15;
    v60 = v6;
    v59 = v10;
    v58 = v12;
    do
    {
      sub_1C4834AF0(v18, v20);
      sub_1C4834AA8(&qword_1EC0BDDC8, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4F00168();
        sub_1C4834AF0(v20, v12);
        v21 = v4;
        v22 = v10;
        v23 = sub_1C4F00968();
        v24 = sub_1C4F01CD8();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *&v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v72 = v64;
          *v25 = v61.n128_u32[0];
          v26 = LiveGlobalKnowledgeTriple.description.getter();
          v28 = v27;
          sub_1C4453E44(v12, type metadata accessor for LiveGlobalKnowledgeTriple);
          v29 = sub_1C441D828(v26, v28, &v72);
          v6 = v60;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2112;
          v30 = v4;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 14) = v31;
          v32 = v63;
          *v63 = v31;
          _os_log_impl(&dword_1C43F8000, v23, v24, "Failed to store live triple %s in LiveGlobalKnowledgeGraph cache: %@", v25, 0x16u);
          sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v32, -1, -1);
          v33 = v64;
          sub_1C440962C(v64);
          MEMORY[0x1C6942830](v33, -1, -1);
          MEMORY[0x1C6942830](v25, -1, -1);

          v10 = v59;
          (*v66)(v59, v69);
          v20 = v65;
          sub_1C4453E44(v65, type metadata accessor for LiveGlobalKnowledgeTriple);
          v4 = 0;
          v12 = v58;
        }

        else
        {

          sub_1C4453E44(v12, type metadata accessor for LiveGlobalKnowledgeTriple);
          (*v66)(v22, v69);
          v34 = v65;
          sub_1C4453E44(v65, type metadata accessor for LiveGlobalKnowledgeTriple);
          v4 = 0;
          v10 = v22;
          v20 = v34;
        }
      }

      else
      {
        sub_1C4453E44(v20, type metadata accessor for LiveGlobalKnowledgeTriple);
      }

      v18 += v67;
      --v17;
    }

    while (v17);
  }

  v35 = v57;
  v36 = *(v57 + 16);
  if (v36)
  {
    v67 = (v6 + 8);
    v68 = sub_1C4835F78();
    v37 = (v35 + 64);
    *&v38 = 136315394;
    v63 = v38;
    v39 = v62;
    do
    {
      v40 = *(v37 - 3);
      v41 = *(v37 - 2);
      v42 = *(v37 - 1);
      v43 = *v37;
      *&v72 = *(v37 - 4);
      *(&v72 + 1) = v40;
      *&v73 = v41;
      *(&v73 + 1) = v42;
      v74 = v43;
      v70[0] = v72;
      v70[1] = v73;
      v71 = v43;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB6C8();
      if (v4)
      {
        sub_1C4F00168();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v44 = v4;
        v45 = sub_1C4F00968();
        v46 = sub_1C4F01CD8();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v70[0] = v66;
          *v47 = v63;
          v64 = v45;
          v48 = sub_1C492BEEC();
          v50 = v49;

          v51 = sub_1C441D828(v48, v50, v70);

          *(v47 + 4) = v51;
          *(v47 + 12) = 2112;
          v52 = v4;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 14) = v53;
          v54 = v64;
          v55 = v65;
          *v65 = v53;
          _os_log_impl(&dword_1C43F8000, v54, v46, "Failed to store IDsearch NoResultRecord %s in LiveGlobalKnowledgeGraph cache: %@", v47, 0x16u);
          sub_1C4420C3C(v55, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v55, -1, -1);
          v56 = v66;
          sub_1C440962C(v66);
          MEMORY[0x1C6942830](v56, -1, -1);
          MEMORY[0x1C6942830](v47, -1, -1);

          v39 = v62;
          (*v67)(v62, v69);
        }

        else
        {

          (*v67)(v39, v69);
        }

        v4 = 0;
      }

      else
      {
      }

      v37 += 5;
      --v36;
    }

    while (v36);
  }
}

uint64_t sub_1C4834560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - v8;
  type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v13[3] = &type metadata for StaticKnowledgeAssetMetadataColumn;
  v13[4] = sub_1C4826AB0();
  LOBYTE(v13[0]) = 1;
  v12[3] = MEMORY[0x1E69E6158];
  v12[4] = MEMORY[0x1E69A0130];
  v12[0] = a2;
  v12[1] = a3;
  v14[3] = sub_1C4EFB298();
  v14[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(v12, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v13);
  sub_1C4834AA8(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54DE0);
  sub_1C4EFAE28();
  sub_1C440962C(v14);
  sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020, MEMORY[0x1E699FF60]);
  sub_1C4834AA8(&qword_1EDDFAA80, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54D98);
  sub_1C4EFAFF8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C4834908(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C4F02128();
  }

  return sub_1C4F022B8();
}

void sub_1C483496C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LiveGlobalKnowledgeTriple(0);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LiveGlobalKnowledgeTriple(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4834F90(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C4834D20(0, v2, 1, a1);
  }
}

uint64_t sub_1C4834AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4834AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C4834C00(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4834D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        sub_1C4834AF0(v22, v16);
        sub_1C4834AF0(v19, v12);
        if (sub_1C4EFF088())
        {
          v23 = sub_1C4EFE9A8();
        }

        else
        {
          v23 = sub_1C4EFF078();
        }

        v24 = v23;
        sub_1C4453E44(v12, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C4453E44(v16, type metadata accessor for LiveGlobalKnowledgeTriple);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_1C48360BC(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C48360BC(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C4834F90(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v124 = a1;
  v140 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v132 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v126 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v134 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v27 = *v124;
    if (!*v124)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v111 = (v25 + 16);
      for (i = *(v25 + 2); i >= 2; *v111 = i)
      {
        if (!*v134)
        {
          goto LABEL_140;
        }

        v113 = &v25[16 * i];
        v114 = *v113;
        v115 = &v111[2 * i];
        v116 = *(v115 + 1);
        v117 = v138;
        sub_1C48359A0(*v134 + *(v132 + 72) * *v113, *v134 + *(v132 + 72) * *v115, *v134 + *(v132 + 72) * v116, v27);
        v138 = v117;
        if (v117)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_128;
        }

        if (i - 2 >= *v111)
        {
          goto LABEL_129;
        }

        *v113 = v114;
        *(v113 + 1) = v116;
        v118 = *v111 - i;
        if (*v111 < i)
        {
          goto LABEL_130;
        }

        i = *v111 - 1;
        sub_1C461950C(v115 + 16, v118, v115);
      }

LABEL_101:

      return;
    }

LABEL_137:
    v25 = sub_1C46194F4();
    goto LABEL_105;
  }

  v121 = &v119 - v19;
  v122 = v22;
  v128 = v21;
  v129 = v20;
  v120 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v127 = v14;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v125 = v24;
    if (v24 + 1 < v23)
    {
      v130 = v23;
      v28 = *v134;
      v29 = *(v132 + 72);
      v137 = v24 + 1;
      v30 = v121;
      sub_1C4834AF0(v28 + v29 * v27, v121);
      v133 = v29;
      v31 = v28 + v29 * v26;
      v32 = v122;
      sub_1C4834AF0(v31, v122);
      if (sub_1C4EFF088())
      {
        v33 = sub_1C4EFE9A8();
      }

      else
      {
        v33 = sub_1C4EFF078();
      }

      LODWORD(v131) = v33;
      v123 = v25;
      sub_1C4453E44(v32, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v30, type metadata accessor for LiveGlobalKnowledgeTriple);
      v34 = v125 + 2;
      v35 = v133 * (v125 + 2);
      v36 = v28 + v35;
      v37 = v137;
      v38 = v133 * v137;
      v39 = v28 + v133 * v137;
      do
      {
        v27 = v34;
        v40 = v37;
        v41 = v38;
        v42 = v35;
        if (v34 >= v130)
        {
          break;
        }

        v136 = v34;
        v137 = v37;
        v135 = v35;
        v43 = v128;
        sub_1C4834AF0(v36, v128);
        v44 = v129;
        sub_1C4834AF0(v39, v129);
        v45 = (sub_1C4EFF088() & 1) != 0 ? sub_1C4EFE9A8() : sub_1C4EFF078();
        v46 = v45;
        sub_1C4453E44(v44, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C4453E44(v43, type metadata accessor for LiveGlobalKnowledgeTriple);
        v27 = v136;
        v40 = v137;
        v34 = v136 + 1;
        v36 += v133;
        v39 += v133;
        v37 = v137 + 1;
        v38 = v41 + v133;
        v42 = v135;
        v35 = v135 + v133;
      }

      while ((v131 & 1) == (v46 & 1));
      if (v131)
      {
        v26 = v125;
        if (v27 < v125)
        {
          goto LABEL_134;
        }

        if (v125 >= v27)
        {
          v25 = v123;
          goto LABEL_31;
        }

        v47 = v125;
        v48 = v125 * v133;
        do
        {
          if (v47 != v40)
          {
            v137 = v40;
            v49 = *v134;
            if (!*v134)
            {
              goto LABEL_141;
            }

            sub_1C48360BC(v49 + v48, v126);
            v50 = v48 < v41 || v49 + v48 >= (v49 + v42);
            if (v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C48360BC(v126, v49 + v41);
            v40 = v137;
          }

          ++v47;
          v41 -= v133;
          v42 -= v133;
          v48 += v133;
        }

        while (v47 < v40--);
      }

      v25 = v123;
      v26 = v125;
    }

LABEL_31:
    v52 = v134[1];
    if (v27 < v52)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_133;
      }

      if (v27 - v26 < v120)
      {
        break;
      }
    }

LABEL_50:
    if (v27 < v26)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v25 = v109;
    }

    v64 = *(v25 + 2);
    v65 = v64 + 1;
    if (v64 >= *(v25 + 3) >> 1)
    {
      sub_1C458A358();
      v25 = v110;
    }

    *(v25 + 2) = v65;
    v66 = v25 + 32;
    v67 = &v25[16 * v64 + 32];
    *v67 = v125;
    *(v67 + 1) = v27;
    v136 = *v124;
    if (!v136)
    {
      goto LABEL_142;
    }

    v137 = v27;
    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = &v66[16 * v65 - 16];
        v70 = &v25[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v25 + 4);
          v72 = *(v25 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_70:
          if (v74)
          {
            goto LABEL_119;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_122;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_127;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v65 < 2)
        {
          goto LABEL_121;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_85:
        if (v89)
        {
          goto LABEL_124;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_126;
        }

        if (v96 < v88)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v134)
        {
          goto LABEL_139;
        }

        v100 = v11;
        v101 = v25;
        v102 = &v66[16 * v68 - 16];
        v103 = *v102;
        v104 = v66;
        v105 = v68;
        v106 = &v66[16 * v68];
        v107 = *(v106 + 1);
        v108 = v138;
        sub_1C48359A0(*v134 + *(v132 + 72) * *v102, *v134 + *(v132 + 72) * *v106, *v134 + *(v132 + 72) * v107, v136);
        v138 = v108;
        if (v108)
        {
          goto LABEL_101;
        }

        if (v107 < v103)
        {
          goto LABEL_114;
        }

        v27 = *(v101 + 2);
        if (v105 > v27)
        {
          goto LABEL_115;
        }

        *v102 = v103;
        *(v102 + 1) = v107;
        if (v105 >= v27)
        {
          goto LABEL_116;
        }

        v65 = v27 - 1;
        sub_1C461950C(v106 + 16, v27 - 1 - v105, v106);
        v25 = v101;
        *(v101 + 2) = v27 - 1;
        v66 = v104;
        v11 = v100;
        v14 = v127;
        if (v27 <= 2)
        {
          goto LABEL_99;
        }
      }

      v75 = &v66[16 * v65];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_117;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_118;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_120;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_123;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_131;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v23 = v134[1];
    v24 = v137;
    if (v137 >= v23)
    {
      goto LABEL_103;
    }
  }

  v53 = v26 + v120;
  if (__OFADD__(v26, v120))
  {
    goto LABEL_135;
  }

  if (v53 >= v52)
  {
    v53 = v134[1];
  }

  if (v53 < v26)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v27 == v53)
  {
    goto LABEL_50;
  }

  v123 = v25;
  v54 = *v134;
  v55 = *(v132 + 72);
  v56 = *v134 + v55 * (v27 - 1);
  v57 = -v55;
  v58 = v26 - v27;
  v130 = v55;
  v131 = v53;
  v59 = v54 + v27 * v55;
LABEL_40:
  v136 = v56;
  v137 = v27;
  v133 = v59;
  v60 = v59;
  v135 = v58;
  while (1)
  {
    sub_1C4834AF0(v60, v14);
    sub_1C4834AF0(v56, v11);
    if (sub_1C4EFF088())
    {
      v61 = sub_1C4EFE9A8();
    }

    else
    {
      v61 = sub_1C4EFF078();
    }

    v62 = v61;
    sub_1C4453E44(v11, type metadata accessor for LiveGlobalKnowledgeTriple);
    sub_1C4453E44(v14, type metadata accessor for LiveGlobalKnowledgeTriple);
    if ((v62 & 1) == 0)
    {
LABEL_48:
      v27 = v137 + 1;
      v56 = v136 + v130;
      v58 = v135 - 1;
      v59 = v133 + v130;
      if (v137 + 1 == v131)
      {
        v27 = v131;
        v25 = v123;
        v26 = v125;
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (!v54)
    {
      break;
    }

    v63 = v139;
    sub_1C48360BC(v60, v139);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C48360BC(v63, v56);
    v56 += v57;
    v60 += v57;
    v50 = __CFADD__(v58++, 1);
    if (v50)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1C48359A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_67;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_68;
  }

  v23 = v19 / v18;
  v56 = a1;
  v55 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    sub_1C459C5DC(a2, v21 / v18, a4);
    v31 = a4 + v24 * v18;
    v32 = -v18;
    v33 = v31;
    v48 = a4;
    v52 = -v18;
LABEL_40:
    v49 = a2 + v32;
    v34 = a3;
    v46 = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v56 = a2;
        v54 = v33;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v33;
      v35 = v31 + v32;
      v36 = v50;
      sub_1C4834AF0(v31 + v32, v50);
      v37 = v51;
      sub_1C4834AF0(v49, v51);
      if (sub_1C4EFF088())
      {
        v38 = sub_1C4EFE9A8();
      }

      else
      {
        v38 = sub_1C4EFF078();
      }

      v39 = v38;
      v40 = v34 + v52;
      sub_1C4453E44(v37, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v36, type metadata accessor for LiveGlobalKnowledgeTriple);
      if (v39)
      {
        v42 = v34 < a2 || v40 >= a2;
        a3 = v40;
        if (v42)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v47;
          a4 = v48;
          v32 = v52;
        }

        else
        {
          a4 = v48;
          v33 = v47;
          v20 = v34 == a2;
          v43 = v49;
          a2 = v49;
          v32 = v52;
          if (!v20)
          {
            v44 = v47;
            swift_arrayInitWithTakeBackToFront();
            a2 = v43;
            v33 = v44;
          }
        }

        goto LABEL_40;
      }

      if (v34 < v31 || v40 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v40;
        v31 = v35;
        v33 = v35;
        a4 = v48;
        v32 = v52;
      }

      else
      {
        v33 = v35;
        v20 = v31 == v34;
        v34 = v40;
        v31 = v35;
        a4 = v48;
        v32 = v52;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v40;
          v31 = v35;
          v33 = v35;
        }
      }
    }

    v56 = a2;
    v54 = v46;
  }

  else
  {
    v52 = a3;
    sub_1C459C5DC(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v54 = v25;
    while (a4 < v25 && a2 < v52)
    {
      sub_1C4834AF0(a2, v16);
      sub_1C4834AF0(a4, v13);
      if (sub_1C4EFF088())
      {
        v27 = sub_1C4EFE9A8();
      }

      else
      {
        v27 = sub_1C4EFF078();
      }

      v28 = v27;
      sub_1C4453E44(v13, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C4453E44(v16, type metadata accessor for LiveGlobalKnowledgeTriple);
      if (v28)
      {
        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v18;
        a4 += v18;
      }

      a1 += v18;
      v56 = a1;
    }
  }

LABEL_65:
  sub_1C4BEB3E8(&v56, &v55, &v54);
}

unint64_t sub_1C4835EB4()
{
  result = qword_1EDDE2AB0;
  if (!qword_1EDDE2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AB0);
  }

  return result;
}

unint64_t sub_1C4835F08()
{
  result = qword_1EC0BDDC0;
  if (!qword_1EC0BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDC0);
  }

  return result;
}

unint64_t sub_1C4835F78()
{
  result = qword_1EC0BDDD0;
  if (!qword_1EC0BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDD0);
  }

  return result;
}

uint64_t sub_1C4835FF4(uint64_t a1)
{
  result = type metadata accessor for StaticKnowledgeAssetMetadata(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4836068()
{
  result = qword_1EDDE4508[0];
  if (!qword_1EDDE4508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE4508);
  }

  return result;
}

uint64_t sub_1C48360BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for GlobalKnowledgeStore.StaticKnowledgeAssetStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48361F8()
{
  result = qword_1EC0BDDE0;
  if (!qword_1EC0BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDDE0);
  }

  return result;
}

unint64_t sub_1C4836250()
{
  result = qword_1EDDE44F8;
  if (!qword_1EDDE44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE44F8);
  }

  return result;
}

unint64_t sub_1C48362A8()
{
  result = qword_1EDDE4500;
  if (!qword_1EDDE4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4500);
  }

  return result;
}

void sub_1C4836304()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    sub_1C441B994();
    v5 = sub_1C4403D94(v3, v4, MEMORY[0x1E69A9488]);
    sub_1C442F8E4(v5);
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780();
      if (!v6)
      {
        break;
      }

      v7 = sub_1C4461CA0();
      v8(v7);
      sub_1C441B994();
      sub_1C4403D94(&unk_1EDDEFFC0, v9, MEMORY[0x1E69A9490]);
      sub_1C442234C();
      sub_1C4F010B8();
      v10 = sub_1C443E188();
      v11(v10);
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

void sub_1C483644C()
{
  sub_1C43FBD3C();
  sub_1C43FFB44();
  v1 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440F400();
  if (*(v0 + 16))
  {
    sub_1C4408AF4();
    v5 = sub_1C4403D94(v3, v4, MEMORY[0x1E69A9820]);
    sub_1C442F8E4(v5);
    sub_1C440CAC8();
    sub_1C4475608();
    do
    {
      sub_1C4416780();
      if (!v6)
      {
        break;
      }

      v7 = sub_1C4461CA0();
      v8(v7);
      sub_1C4408AF4();
      sub_1C4403D94(&qword_1EDDFCC98, v9, MEMORY[0x1E69A9830]);
      sub_1C442234C();
      sub_1C4F010B8();
      v10 = sub_1C443E188();
      v11(v10);
    }

    while ((v1 & 1) == 0);
  }

  sub_1C43FE9F0();
}

void sub_1C4836594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  a29 = v31;
  a30 = v34;
  if (*(v33 + 16))
  {
    v35 = v33;
    v36 = v32;
    sub_1C4F02AF8();
    sub_1C4424B10(v36);
    sub_1C4851A9C();
    sub_1C44A3AA0(&a10, v37, v38);

    sub_1C4F02B68();
    sub_1C440CAC8();
    sub_1C44CD048();
    if ((*(v35 + 56 + v40) >> v30))
    {
      v41 = ~v39;
      while (1)
      {
        v42 = 0xE400000000000000;
        v43 = 1702259052;
        switch(*(*(v35 + 48) + v30))
        {
          case 1:
            v43 = 1701736302;
            break;
          case 2:
            v43 = sub_1C4851B48();
            break;
          case 3:
            v43 = sub_1C44289B8();
            v42 = 0x80000001C4F86260;
            break;
          case 4:
            v42 = 0xE600000000000000;
            v44 = 1801807223;
            goto LABEL_11;
          case 5:
            v46 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
            goto LABEL_14;
          case 6:
            v46 = sub_1C4428E78();
LABEL_14:
            v43 = sub_1C44B91EC(v46);
            break;
          case 7:
            v42 = 0xE600000000000000;
            v44 = 1920298856;
LABEL_11:
            v43 = v44 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            v47 = sub_1C4428E78();
            v43 = sub_1C448881C(v47);
            break;
          case 9:
            v45 = sub_1C43FE694();
            v43 = sub_1C4456998(v45);
            break;
          case 0xA:
            v43 = sub_1C44289B8();
            v42 = 0x80000001C4F862C0;
            break;
          default:
            break;
        }

        v48 = 0xE400000000000000;
        v49 = 1702259052;
        switch(v36)
        {
          case 1:
            v49 = 1701736302;
            break;
          case 2:
            v48 = 0xE500000000000000;
            v49 = 0x796C696164;
            break;
          case 3:
            sub_1C47F79F8();
            v48 = 0x80000001C4F86260;
            break;
          case 4:
            v48 = 0xE600000000000000;
            v50 = 1801807223;
            goto LABEL_24;
          case 5:
            sub_1C440EFA8();
            v53 = v52 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
            goto LABEL_27;
          case 6:
            sub_1C444C270();
LABEL_27:
            v49 = v53 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v48 = 0xEB00000000737275;
            break;
          case 7:
            v48 = 0xE600000000000000;
            v50 = 1920298856;
LABEL_24:
            v49 = v50 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            sub_1C444C270();
            v49 = v54 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
            v48 = 0xEE00736574756E69;
            break;
          case 9:
            sub_1C440EFA8();
            v49 = v51 | 0x694D377900000000;
            v48 = 0xED0000736574756ELL;
            break;
          case 10:
            sub_1C47F79F8();
            v48 = 0x80000001C4F862C0;
            break;
          default:
            break;
        }

        if (v43 == v49 && v42 == v48)
        {
          break;
        }

        v56 = sub_1C4F02938();

        if ((v56 & 1) == 0)
        {
          v30 = (v30 + 1) & v41;
          if ((*(v35 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
          {
            continue;
          }
        }

        goto LABEL_36;
      }
    }
  }

LABEL_36:
  sub_1C440A528();
}

void sub_1C48368C8()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(0);
  sub_1C43FCDF8();
  v10 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v40 = v5;
  if (*(v5 + 16))
  {
    v38 = v12;
    v15 = v40;
    sub_1C4F02AF8();
    v3(&v43);
    sub_1C4F02B68();
    v16 = v15 + 56;
    sub_1C43FC41C();
    v19 = v18 & ~v17;
    if ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v17;
      v39 = *(v10 + 72);
      v36 = v16;
      v37 = v1;
      v35 = ~v17;
      do
      {
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          sub_1C4EFEEF8();
          sub_1C4419828();
          sub_1C4403D94(&off_1EDDFCCA8, v21, MEMORY[0x1E69A9770]);
          sub_1C4473D64();
          sub_1C4F01578();
          v22 = v43 == v41 && v44 == v42;
          if (v22)
          {

            v1 = v37;
            v20 = v35;
          }

          else
          {
            v23 = sub_1C4F02938();

            v1 = v37;
            v20 = v35;
            if ((v23 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          if (sub_1C4EFF878())
          {
            sub_1C4473D64();
            sub_1C4F01578();
            if (v43 == v41 && v44 == v42)
            {

              v26 = v38;
            }

            else
            {
              v25 = sub_1C4F02938();

              v26 = v38;
              if ((v25 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            sub_1C44A3CC8(v26[8]);
            v29 = v22 && v27 == v28;
            if (v29 || (sub_1C4F02938()) && *&v14[v26[9]] == *(v7 + v26[9]) && *&v14[v26[10]] == *(v7 + v26[10]))
            {
              sub_1C44A3CC8(v26[11]);
              v32 = v22 && v30 == v31;
              if (v32 || (sub_1C4F02938()) && *&v14[v26[12]] == *(v7 + v26[12]))
              {
                sub_1C48519DC(v14, v1);
                break;
              }
            }
          }
        }

LABEL_33:
        sub_1C48519DC(v14, v1);
        v19 = (v19 + 1) & v20;
        sub_1C4507B48();
      }

      while ((v33 & 1) != 0);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4836BF8()
{
  sub_1C43FBD3C();
  v3 = sub_1C43FECE0();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FCF7C(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442599C();
  if (*(v0 + 16))
  {
    sub_1C4F02AF8();
    v6 = *v1;
    v7 = v1[1];
    sub_1C43FC2F4();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C440CAC8();
    v10 = ~v9;
    do
    {
      v11 = v8 & v10;
      if (((1 << (v8 & v10)) & *(v0 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      sub_1C4460260();
      sub_1C4851984();
      if (*v2 == v6 && v2[1] == v7)
      {
        sub_1C441E3D8();
        sub_1C48519DC(v2, v15);
        break;
      }

      v13 = sub_1C4F02938();
      sub_1C441E3D8();
      sub_1C48519DC(v2, v14);
      v8 = v11 + 1;
    }

    while ((v13 & 1) == 0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4836D50()
{
  v0 = sub_1C4EF98F8();
  sub_1C44F9918(v0, qword_1EC152150);
  sub_1C442B738(v0, qword_1EC152150);
  return sub_1C4EF9838();
}

uint64_t sub_1C4836DB4()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44F9918(v4, qword_1EC152168);
  sub_1C442B738(v0, qword_1EC152168);
  sub_1C4F001A8();
  sub_1C4EF9888();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4836EB4()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44F9918(v4, qword_1EC152180);
  sub_1C442B738(v0, qword_1EC152180);
  sub_1C4F001A8();
  sub_1C4EF9888();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static Grader.runEvalStats(forEntityClasses:)(uint64_t a1)
{
  v74 = a1;
  v2 = type metadata accessor for ExtractedMatch(0);
  sub_1C43FCDF8();
  v68 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v73 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4EF9348();
  swift_allocObject();
  v10 = sub_1C4EF9338();
  if (qword_1EC0B6B80 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EF98F8();
  v12 = sub_1C442B738(v11, qword_1EC152168);
  v13 = sub_1C48376D0(v12);
  if (!v13)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDDFECB8);
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v50))
    {
      v51 = sub_1C43FCED0();
      sub_1C43FBD24(v51);
      v54 = "Error: unable to unarchive match extractor links data.";
LABEL_36:
      sub_1C440BAE8(&dword_1C43F8000, v52, v53, v54);
      sub_1C43FBE2C();

      goto LABEL_38;
    }

LABEL_37:

LABEL_38:

    return 0;
  }

  v14 = v13;
  if (qword_1EC0B6B78 != -1)
  {
    sub_1C44627BC(&qword_1EC0B6B78);
  }

  v15 = sub_1C442B738(v11, qword_1EC152150);
  v16 = sub_1C48379B4(v15);
  if (!v16)
  {

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v55 = sub_1C4F00978();
    sub_1C442B738(v55, qword_1EDDFECB8);
    v49 = sub_1C4F00968();
    v56 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v56))
    {
      v57 = sub_1C43FCED0();
      sub_1C43FBD24(v57);
      v54 = "Error: unable to unarchive ground truths data.";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v17 = v16;
  v66[1] = v10;
  v67 = v7;
  v18 = 0;
  v19 = *(v74 + 16);
  v69 = v1;
  v70 = v73 + 16;
  v71 = (v73 + 8);
  v72 = v19;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  while (v18 != v72)
  {
    sub_1C43FBF6C();
    (*(v24 + 16))(v1, v74 + v23 + *(v24 + 72) * v18, v7);
    v25 = sub_1C4EFD3D8();
    if (!*(v14 + 16) || (v27 = sub_1C445FAA8(v25, v26), (v28 & 1) == 0))
    {

LABEL_41:

      sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      v58 = swift_allocObject();
      sub_1C4851BAC(v58, xmmword_1C4F0D130);
      sub_1C4F02248();
      v59 = sub_1C44289B8();
      MEMORY[0x1C6940010](v59);
      v60 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v60);

      MEMORY[0x1C6940010](0xD00000000000003BLL, 0x80000001C4FA2CE0);
      sub_1C449520C(v75);

      (*v71)(v1, v7);
      return 0;
    }

    v29 = *(*(v14 + 56) + 8 * v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v30 = sub_1C4EFD3D8();
    if (!*(v17 + 16) || (v32 = sub_1C445FAA8(v30, v31), (v33 & 1) == 0))
    {

      goto LABEL_41;
    }

    v34 = *(*(v17 + 56) + 8 * v32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v35 = *(v34 + 16);
    v36 = *(v29 + 16);
    if (v36)
    {
      sub_1C43FBF6C();
      v38 = v29 + v37;
      v40 = *(v39 + 72);
      do
      {
        sub_1C4851984();
        if (*(v34 + 16) && (v41 = sub_1C445FAA8(*&v6[*(v2 + 28)], *&v6[*(v2 + 28) + 8]), (v42 & 1) != 0) && ((v43 = (*(v34 + 56) + 16 * v41), v44 = *v43, v45 = v43[1], v46 = &v6[*(v2 + 24)], v44 == *v46) ? (v47 = v45 == *(v46 + 1)) : (v47 = 0), v47 || (sub_1C4F02938() & 1) != 0))
        {
          v22 = v22 + 1.0;
        }

        else
        {
          v21 = v21 + 1.0;
        }

        sub_1C48519DC(v6, type metadata accessor for ExtractedMatch);
        v38 += v40;
        --v36;
      }

      while (v36);

      v7 = v67;
    }

    else
    {
    }

    ++v18;
    v20 = v20 + v35;
    v1 = v69;
    (*v71)(v69, v7);
  }

  sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
  v62 = swift_allocObject();
  sub_1C4851BAC(v62, xmmword_1C4F0D130);
  sub_1C4F02248();
  v63 = sub_1C44289B8();
  MEMORY[0x1C6940010](v63);
  v64 = MEMORY[0x1C6940380](v74, v7);
  MEMORY[0x1C6940010](v64);

  v65 = sub_1C44289B8();
  MEMORY[0x1C6940010](v65);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x616365522020200ALL, 0xEC000000203A6C6CLL);
  sub_1C4F01A28();
  sub_1C449520C(v75);

  return 1;
}

uint64_t sub_1C48376D0(uint64_t a1)
{
  v1 = sub_1C4F00978();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDF80, &unk_1C4F45940);
  sub_1C48517A4(&qword_1EC0BDF88, &qword_1EC0BDF80, &unk_1C4F45940, sub_1C48518D0);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

uint64_t sub_1C48379B4(uint64_t a1)
{
  v1 = sub_1C4F00978();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
  sub_1C48517A4(&qword_1EC0BDF78, &qword_1EC0BDD98, &qword_1C4F32040, sub_1C4851854);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

uint64_t sub_1C4837C98(uint64_t a1)
{
  v1 = sub_1C4F00978();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4EF9938();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  sub_1C456902C(&qword_1EC0BDF50, &qword_1C4F32370);
  sub_1C48517A4(&qword_1EC0BDF58, &qword_1EC0BDF50, &qword_1C4F32370, sub_1C4851774);
  sub_1C4EF9328();
  objc_autoreleasePoolPop(v5);
  sub_1C4434000(v2, v4);
  return v7;
}

void sub_1C4837F7C()
{
  sub_1C43FBD3C();
  v1 = v0;
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C442599C();
  sub_1C4488224();
  if (v1)
  {
    sub_1C4F00148();
    v4 = v1;
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CD8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = sub_1C43FFD34();
      v18 = v9;
      *v7 = 136315394;
      v10 = sub_1C441D828(0x697274533C746553, 0xEB000000003E676ELL, &v18);
      sub_1C4482DFC(v10);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      sub_1C448873C(&dword_1C43F8000, v12, v13, "JSONDecoder: decode fromURL: Can't decode %s with error: %@");
      sub_1C45B4B90(v8);
      sub_1C43FBE2C();
      sub_1C440962C(v9);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v14 = sub_1C43FD024();
    v15(v14);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C45A2840();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v3);
    v16 = sub_1C43FE5F8();
    sub_1C4434000(v16, v17);
  }

  sub_1C43FE9F0();
}

void sub_1C48382A0()
{
  sub_1C43FBD3C();
  v23 = v0;
  v24 = v1;
  v3 = v2;
  v5 = v4;
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C442599C();
  v7 = sub_1C4488224();
  if (v5)
  {
    sub_1C4F00148();
    v13 = v5;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = sub_1C43FFD34();
      v25 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C441D828(v23, v24, &v25);
      *(v16 + 12) = 2112;
      v19 = v5;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1C43F8000, v14, v15, "JSONDecoder: decode fromURL: Can't decode %s with error: %@", v16, 0x16u);
      sub_1C45B4B90(v17);
      sub_1C43FBE2C();
      sub_1C440962C(v18);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v21 = sub_1C43FD024();
    v22(v21);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v11 = objc_autoreleasePoolPush();
    v3(v11, v12);
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v11);
    sub_1C4434000(v9, v10);
  }

  sub_1C43FE9F0();
}

void sub_1C48384D8()
{
  sub_1C43FBD3C();
  v1 = v0;
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C442599C();
  sub_1C4488224();
  if (v1)
  {
    sub_1C4F00148();
    v4 = v1;
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CD8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = sub_1C43FFD34();
      v18 = v9;
      *v7 = 136315394;
      v10 = sub_1C441D828(0xD000000000000014, 0x80000001C4FA2D80, &v18);
      sub_1C4482DFC(v10);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      sub_1C448873C(&dword_1C43F8000, v12, v13, "JSONDecoder: decode fromURL: Can't decode %s with error: %@");
      sub_1C45B4B90(v8);
      sub_1C43FBE2C();
      sub_1C440962C(v9);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v14 = sub_1C43FD024();
    v15(v14);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_1C48516CC();
    sub_1C4EF9328();
    objc_autoreleasePoolPop(v3);
    v16 = sub_1C43FE5F8();
    sub_1C4434000(v16, v17);
  }

  sub_1C43FE9F0();
}

uint64_t static Grader.runBlockingStats(forEntityClasses:)(uint64_t a1)
{
  v128 = a1;
  v1 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v127 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v119 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v106 - v6;
  sub_1C4EF9348();
  swift_allocObject();
  v8 = sub_1C4EF9338();
  if (qword_1EC0B6B88 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v9 = sub_1C4EF98F8();
    v10 = sub_1C442B738(v9, qword_1EC152180);
    if (!sub_1C4837C98(v10))
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v81 = sub_1C4F00978();
      sub_1C442B738(v81, qword_1EDDFECB8);
      v82 = sub_1C4F00968();
      v83 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v83))
      {
        goto LABEL_76;
      }

      v84 = sub_1C43FCED0();
      sub_1C43FBD24(v84);
      v87 = "Error: unable to unarchive blocking keys.";
LABEL_75:
      sub_1C440BAE8(&dword_1C43F8000, v85, v86, v87);
      sub_1C43FBE2C();
LABEL_76:

      return 0;
    }

    if (qword_1EC0B6B78 != -1)
    {
      sub_1C44627BC(&qword_1EC0B6B78);
    }

    v11 = sub_1C442B738(v9, qword_1EC152150);
    v126 = sub_1C48379B4(v11);
    if (!v126)
    {

      if (qword_1EDDFECB0 != -1)
      {
LABEL_88:
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v88 = sub_1C4F00978();
      sub_1C442B738(v88, qword_1EDDFECB8);
      v82 = sub_1C4F00968();
      v89 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v89))
      {
        goto LABEL_76;
      }

      v90 = sub_1C43FCED0();
      sub_1C43FBD24(v90);
      v87 = "Error: unable to unarchive ground truths data.";
      goto LABEL_75;
    }

    v117 = v8;
    v12 = 0;
    v132 = MEMORY[0x1E69E7CD0];
    v124 = *(v128 + 16);
    v125 = v127 + 16;
    v120 = " -> \n   Precision: ";
    v123 = (v127 + 8);
    v13 = 0.0;
    v14 = 0.0;
    v122 = v1;
    v121 = v7;
LABEL_7:
    if (v12 == v124)
    {

      sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      v131[0] = 0;
      v131[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA2D20);
      v92 = MEMORY[0x1C6940380](v128, v1);
      MEMORY[0x1C6940010](v92);

      MEMORY[0x1C6940010](0x5220200A203E2D20, 0xEF203A6C6C616365);
      sub_1C4F01A28();
      sub_1C449520C(v131[0]);

      return 1;
    }

    sub_1C43FBF6C();
    v17 = *(v16 + 16);
    v17(v7, v128 + v15 + *(v16 + 72) * v12, v1);
    sub_1C4EFD3D8();
    v18 = sub_1C4663244();

    if (!v18)
    {
      goto LABEL_80;
    }

    sub_1C4EFD3D8();
    v19 = sub_1C4663244();

    if (!v19)
    {
      break;
    }

    v130 = v12 + 1;
    v13 = v13 + *(v19 + 16);
    v7 = (v18 + 8);
    sub_1C43FEC90();
    v8 = v21 & v20;
    v23 = (v22 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = 0;
LABEL_11:
    if (v8)
    {
      goto LABEL_16;
    }

    while (2)
    {
      v24 = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        if (v24 < v23)
        {
          v8 = *&v7[8 * v24];
          ++v1;
          if (!v8)
          {
            continue;
          }

          v1 = v24;
LABEL_16:
          v25 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v26 = (v18[6] + ((v1 << 10) | (16 * v25)));
          v28 = *v26;
          v27 = v26[1];
          v29 = v18[2];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (!v29)
          {
            goto LABEL_30;
          }

          v30 = sub_1C445FAA8(v28, v27);
          if (v31)
          {
            v32 = *(v18[7] + 8 * v30);
            if (*(v32 + 16))
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v33 = sub_1C445FAA8(0x697469746E45646DLL, 0xEA00000000007365);
              if (v34)
              {
                v35 = *(*(v32 + 56) + 8 * v33);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

                goto LABEL_23;
              }
            }
          }

          v35 = 0;
LABEL_23:
          if (!v18[2])
          {
            goto LABEL_30;
          }

          v36 = sub_1C445FAA8(v28, v27);
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_66;
          }

          v39 = *(v18[7] + 8 * v36);
          if (!*(v39 + 16))
          {
            goto LABEL_66;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v40 = sub_1C445FAA8(0xD000000000000010, v120 | 0x8000000000000000);
          if ((v41 & 1) == 0 || (v42 = *(*(v39 + 56) + 8 * v40), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , !*(v42 + 16)))
          {
LABEL_30:

            goto LABEL_66;
          }

          if (v35)
          {
            if (!*(v35 + 16))
            {
              goto LABEL_30;
            }

            sub_1C43FEC90();
            sub_1C447E230();
            v47 = v46 >> 6;
            v112 = v42 + 56;
            v108 = v46 >> 6;
            v109 = v44;
LABEL_34:
            v114 = v132 + 56;
            v115 = v132;
            if (v43)
            {
              do
              {
LABEL_38:
                sub_1C440AAD0();
                v111 = v49;
                v50 = *(v35 + 48);
                v110 = v51;
                v53 = (v50 + ((v51 << 10) | (16 * v52)));
                v55 = *v53;
                v54 = v53[1];
                v57 = *(v56 + 16);
                v118 = v54;
                if (v57)
                {
                  sub_1C4F02AF8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F01298();
                  sub_1C4F02B68();
                  sub_1C44805C8();
                  sub_1C43FC41C();
                  v116 = ~v58;
                  while (1)
                  {
                    sub_1C4851B98();
                    if (((*(v114 + v60) >> v131) & 1) == 0)
                    {
                      break;
                    }

                    v61 = (*(v115 + 48) + 16 * v131);
                    if (*v61 != v55 || v61[1] != v59)
                    {
                      sub_1C4F02938();
                      sub_1C44805C8();
                      if ((v63 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C44805C8();
                }

                v64 = *(v19 + 16);
                v107 = v55;
                if (v64 && (v65 = sub_1C445FAA8(v55, v59), (v66 & 1) != 0))
                {
                  v67 = *(*(v19 + 56) + 16 * v65);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                }

                else
                {
                  v67 = 32;
                }

                if (*(v42 + 16))
                {
                  v116 = v67;
                  sub_1C4F02AF8();
                  sub_1C4F01298();
                  sub_1C4F02B68();
                  sub_1C43FC41C();
                  v113 = ~v68;
                  while (1)
                  {
                    sub_1C4851B98();
                    if (((*(v112 + v71) >> v131) & 1) == 0)
                    {
                      break;
                    }

                    v72 = (*(v42 + 48) + 16 * v131);
                    v73 = v72[1];
                    v74 = *v72 == v69 && v73 == v70;
                    if (v74 || (sub_1C4851C08(*v72, v73, v116) & 1) != 0)
                    {

                      sub_1C44869B4(v131, v107, v118, v76, v77, v78, v79, v80, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);

                      v14 = v14 + 1.0;
                      sub_1C44578D4();
                      v45 = v110;
                      goto LABEL_34;
                    }
                  }
                }

                sub_1C44805C8();
LABEL_62:

                sub_1C44578D4();
                v45 = v110;
              }

              while (v75);
            }

            while (2)
            {
              v48 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                __break(1u);
                goto LABEL_88;
              }

              if (v48 < v47)
              {
                ++v45;
                if (!*(v44 + 8 * v48))
                {
                  continue;
                }

                goto LABEL_38;
              }

              break;
            }
          }

LABEL_66:

          goto LABEL_11;
        }

        v7 = v121;
        v1 = v122;
        (*v123)(v121, v122);

        v12 = v130;
        goto LABEL_7;
      }

      break;
    }

    __break(1u);
LABEL_86:
    swift_once();
  }

LABEL_80:

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v93 = sub_1C4F00978();
  sub_1C442B738(v93, qword_1EDDFECB8);
  v94 = v119;
  v17(v119, v7, v1);
  v95 = sub_1C4F00968();
  v96 = sub_1C4F01CF8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = sub_1C43FFD34();
    v131[0] = v98;
    *v97 = 136315138;
    v99 = sub_1C4EFD3D8();
    v101 = v100;
    v102 = v94;
    v103 = *v123;
    (*v123)(v102, v1);
    v104 = sub_1C441D828(v99, v101, v131);

    *(v97 + 4) = v104;
    _os_log_impl(&dword_1C43F8000, v95, v96, "Error: entity type %s does not exist in both ground truth and blocking dicts", v97, 0xCu);
    sub_1C440962C(v98);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v103(v7, v1);
  }

  else
  {

    v105 = *v123;
    (*v123)(v94, v1);
    v105(v7, v1);
  }

  return 0;
}

void sub_1C4839234(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C43FFB44();
    sub_1C441F954();
    if (v23)
    {
      v6 = 0;
      v26 = v3 + 56;
      sub_1C43FEC90();
      sub_1C447E230();
      v8 = v7 >> 6;
      v27 = v7 >> 6;
      if (v9)
      {
        while (1)
        {
          sub_1C440AAD0();
          v28 = v10;
LABEL_11:
          sub_1C447E77C();
          sub_1C4F02AF8();
          sub_1C494DD70(v4);
          sub_1C4851A9C();
          sub_1C44A3AA0(v29, v14, v15);

          sub_1C4F02B68();
          sub_1C443FCB0();
          if (((*(v2 + 56 + v17) >> v5) & 1) == 0)
          {
            break;
          }

          v18 = ~v16;
          while (1)
          {
            v19 = 0xE800000000000000;
            v20 = 0x6572617774666F73;
            switch(*(*(v2 + 48) + v5))
            {
              case 1:
                v20 = 0x746F6F7465756C62;
                v19 = 0xEF65636976654468;
                break;
              case 2:
                v19 = 0xE500000000000000;
                v20 = 0x6563616C70;
                break;
              case 3:
                v19 = 0xE600000000000000;
                v20 = 0x6E6F73726570;
                break;
              case 4:
                v20 = 0x416574756D6D6F63;
                v19 = 0xEF79746976697463;
                break;
              case 5:
                v20 = 0xD000000000000010;
                v19 = 0x80000001C4F866A0;
                break;
              case 6:
                v20 = 0xD000000000000016;
                v19 = 0x80000001C4F866C0;
                break;
              default:
                break;
            }

            v21 = 0xE800000000000000;
            v22 = 0x6572617774666F73;
            switch(v4)
            {
              case 1:
                v22 = 0x746F6F7465756C62;
                v21 = 0xEF65636976654468;
                break;
              case 2:
                v21 = 0xE500000000000000;
                v22 = 0x6563616C70;
                break;
              case 3:
                v21 = 0xE600000000000000;
                v22 = 0x6E6F73726570;
                break;
              case 4:
                v22 = 0x416574756D6D6F63;
                v21 = 0xEF79746976697463;
                break;
              case 5:
                v22 = 0xD000000000000010;
                v21 = 0x80000001C4F866A0;
                break;
              case 6:
                v22 = 0xD000000000000016;
                v21 = 0x80000001C4F866C0;
                break;
              default:
                break;
            }

            v23 = v20 == v22 && v19 == v21;
            if (v23)
            {
              break;
            }

            v24 = sub_1C4F02938();

            if (v24)
            {
              goto LABEL_35;
            }

            v5 = (v5 + 1) & v18;
            sub_1C4851BC0();
            if ((v25 & 1) == 0)
            {
              return;
            }
          }

LABEL_35:
          v8 = v27;
          if (!v28)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v11 = v6;
        while (1)
        {
          v6 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v6 >= v8)
          {
            return;
          }

          ++v11;
          if (*(v26 + 8 * v6))
          {
            sub_1C43FCF1C();
            v28 = v13 & v12;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839564(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C441F954();
    if (v30)
    {
      v3 = 0;
      sub_1C44410A0();
      if (v6 < 64)
      {
        v8 = ~(-1 << v6);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v5;
      v10 = (v6 + 63) >> 6;
      v11 = a2 + 56;
      v51 = v7;
      v52 = v4;
      v50 = v10;
LABEL_8:
      if (v9)
      {
        v12 = __clz(__rbit64(v9));
        v53 = (v9 - 1) & v9;
LABEL_15:
        v16 = *(v4 + 48) + 24 * (v12 | (v3 << 6));
        v18 = *v16;
        v17 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_1C4F02AF8();
        sub_1C45E8718(v18, v17, v19);
        v58 = v17;
        sub_1C494F908();
        v20 = sub_1C4F02B68();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          if (v18)
          {
            v24 = 0x7070416F746F6870;
          }

          else
          {
            v24 = 0x63696E756D6D6F63;
          }

          if (v18)
          {
            v25 = 0xEF65636E61726165;
          }

          else
          {
            v25 = 0xED00006E6F697461;
          }

          v26 = 0x7472617473;
          if (v18)
          {
            v26 = 6581861;
          }

          v54 = v26;
          v55 = v24;
          v27 = 0xE500000000000000;
          if (v18)
          {
            v27 = 0xE300000000000000;
          }

          v56 = v27;
          v57 = v25;
          while (1)
          {
            v28 = *(a2 + 48) + 24 * v22;
            v29 = *v28;
            switch(*(v28 + 16))
            {
              case 1:
                if (v19 == 1 && v29 == *&v18)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 2:
                if (v19 != 2)
                {
                  goto LABEL_90;
                }

                v37 = (LOBYTE(v29) & 1) == 0;
                if (LOBYTE(v29))
                {
                  v32 = 6581861;
                }

                else
                {
                  v32 = 0x7472617473;
                }

                if (v37)
                {
                  v33 = 0xE500000000000000;
                }

                else
                {
                  v33 = 0xE300000000000000;
                }

                v34 = v54;
                v35 = v32 == v54;
                v36 = v56;
                goto LABEL_51;
              case 3:
                if (v19 != 3 || *&v29 != v18)
                {
                  goto LABEL_90;
                }

                goto LABEL_95;
              case 4:
                if (v19 != 4)
                {
                  goto LABEL_90;
                }

                v31 = (LOBYTE(v29) & 1) == 0;
                if (LOBYTE(v29))
                {
                  v32 = 0x7070416F746F6870;
                }

                else
                {
                  v32 = 0x63696E756D6D6F63;
                }

                if (v31)
                {
                  v33 = 0xED00006E6F697461;
                }

                else
                {
                  v33 = 0xEF65636E61726165;
                }

                v34 = v55;
                v35 = v32 == v55;
                v36 = v57;
LABEL_51:
                if (v35 && v33 == v36)
                {
                  goto LABEL_92;
                }

                v39 = sub_1C4851C08(v32, v33, v34);

                if (v39)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 5:
                if (v19 != 5)
                {
                  goto LABEL_90;
                }

                if ((LODWORD(v29) & 0x10000) != 0)
                {
                  if ((v18 & 0x10000) != 0)
                  {
                    goto LABEL_95;
                  }
                }

                else if ((v18 & 0x10000) == 0 && *v28 == v18)
                {
                  goto LABEL_95;
                }

                goto LABEL_90;
              case 6:
                if (v19 != 6)
                {
                  goto LABEL_90;
                }

                v42 = 0xE800000000000000;
                v43 = 0x676E696D6F636E69;
                switch(*v28)
                {
                  case 1u:
                    v43 = 0x676E696F6774756FLL;
                    break;
                  case 2u:
                    v43 = 0x7463657269646962;
                    v42 = 0xED00006C616E6F69;
                    break;
                  case 3u:
                    v42 = 0xE900000000000064;
                    v43 = 0x656E696665646E75;
                    break;
                  default:
                    break;
                }

                v44 = 0xE800000000000000;
                v45 = 0x676E696D6F636E69;
                switch(v18)
                {
                  case 1:
                    v45 = 0x676E696F6774756FLL;
                    break;
                  case 2:
                    v45 = 0x7463657269646962;
                    v44 = 0xED00006C616E6F69;
                    break;
                  case 3:
                    v44 = 0xE900000000000064;
                    v45 = 0x656E696665646E75;
                    break;
                  default:
                    break;
                }

                if (v43 == v45 && v42 == v44)
                {
LABEL_92:

                  v7 = v51;
                  v4 = v52;
                  v10 = v50;
                  v9 = v53;
                  goto LABEL_8;
                }

                v47 = sub_1C4F02938();

                if (v47)
                {
                  goto LABEL_95;
                }

LABEL_90:
                v22 = (v22 + 1) & v23;
                if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_97;
                }

                break;
              default:
                if (v19)
                {
                  goto LABEL_90;
                }

                v30 = *&v29 == v18 && *(v28 + 8) == v58;
                if (v30)
                {
                  v48 = v18;
                  v49 = v58;
                  goto LABEL_94;
                }

                if ((sub_1C4F02938() & 1) == 0)
                {
                  goto LABEL_90;
                }

                v48 = v18;
                v49 = v58;
LABEL_94:
                sub_1C45E872C(v48, v49, 0);
LABEL_95:
                v7 = v51;
                v4 = v52;
                v10 = v50;
                v9 = v53;
                goto LABEL_8;
            }
          }
        }

LABEL_97:
        sub_1C45E872C(v18, v58, v19);
      }

      else
      {
        v13 = v3;
        while (1)
        {
          v3 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v3 >= v10)
          {
            return;
          }

          ++v13;
          if (*(v7 + 8 * v3))
          {
            sub_1C43FCF1C();
            v53 = v15 & v14;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839AB4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C43FFB44();
    sub_1C441F954();
    if (v31)
    {
      v6 = 0;
      v33 = v3 + 56;
      sub_1C43FEC90();
      sub_1C447E230();
      v8 = v7 >> 6;
      v9 = v2 + 56;
      v34 = v7 >> 6;
      if (v10)
      {
        while (1)
        {
          sub_1C440AAD0();
          v35 = v11;
LABEL_11:
          sub_1C447E77C();
          sub_1C4F02AF8();
          sub_1C4601534(v4);
          sub_1C4851A9C();
          sub_1C44A3AA0(v36, v15, v16);

          sub_1C4F02B68();
          sub_1C440CAC8();
          sub_1C44CD048();
          if (((*(v9 + v18) >> v5) & 1) == 0)
          {
            break;
          }

          v19 = ~v17;
          while (1)
          {
            v20 = 0xE900000000000079;
            v21 = 0x6144664F656D6974;
            switch(*(*(v2 + 48) + v5))
            {
              case 1:
                v21 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                v21 = sub_1C440679C();
                break;
              case 3:
                v21 = sub_1C4410D74();
                break;
              case 4:
                sub_1C43FBFBC();
                sub_1C44754A8();
                break;
              case 5:
                v21 = sub_1C440215C();
                break;
              case 6:
                v21 = sub_1C440D0A4();
                goto LABEL_26;
              case 7:
                v21 = sub_1C43FEBC8();
                break;
              case 8:
                v21 = sub_1C441F4F8();
LABEL_26:
                v20 = 0xED00000000000079;
                break;
              case 9:
                v21 = sub_1C43FFDEC();
                break;
              case 0xA:
                v21 = sub_1C4415F60();
                break;
              case 0xB:
                v21 = sub_1C43FF0EC();
                break;
              case 0xC:
                v21 = sub_1C440584C();
                break;
              default:
                break;
            }

            v22 = 0x6144664F656D6974;
            v23 = 0xE900000000000079;
            switch(v4)
            {
              case 1:
                sub_1C440F310();
                v22 = v24 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                sub_1C440DEDC();
                v22 = v27 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
                v23 = 0xEF796144664F656DLL;
                break;
              case 3:
                sub_1C44040F0();
                v23 = v28 - 14;
                sub_1C4409A64();
                break;
              case 4:
                sub_1C440F310();
                v22 = v26 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                v23 = 0xEA00000000006B65;
                break;
              case 5:
                v23 = 0xE300000000000000;
                sub_1C4482E94();
                break;
              case 6:
                sub_1C4404BF8();
                v29 = 0x6E6F697461;
                goto LABEL_40;
              case 7:
                sub_1C44148EC();
                v23 = 0xEF687361486F6547;
                break;
              case 8:
                sub_1C440DEDC();
                v22 = v30 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
                v29 = 0x687361486FLL;
LABEL_40:
                v23 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                sub_1C4413E94();
                v23 = 0xEC00000068736148;
                break;
              case 10:
                v23 = 0xE400000000000000;
                sub_1C4851B74();
                break;
              case 11:
                sub_1C44040F0();
                v23 = v25 - 20;
                sub_1C4423A90();
                break;
              case 12:
                sub_1C440EF3C();
                v23 = 0xEB00000000657461;
                break;
              default:
                break;
            }

            v31 = v21 == v22 && v20 == v23;
            if (v31)
            {
              break;
            }

            v32 = sub_1C4F02938();

            if (v32)
            {
              goto LABEL_49;
            }

            v5 = (v5 + 1) & v19;
            if (((*(v9 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              return;
            }
          }

LABEL_49:
          v8 = v34;
          if (!v35)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v12 = v6;
        while (1)
        {
          v6 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v6 >= v8)
          {
            return;
          }

          ++v12;
          if (*(v33 + 8 * v6))
          {
            sub_1C43FCF1C();
            v35 = v14 & v13;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1C4839E00()
{
  sub_1C441EB54();
  if (v1 == v2 || (v3 = v2, v4 = v1, sub_1C441F954(), !v25))
  {
LABEL_34:
    sub_1C43FBF50();
    return;
  }

  v5 = 0;
  v6 = v4 + 56;
  sub_1C43FEC90();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v31 = v11;
  v32 = v4;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = __clz(__rbit64(v9));
      v13 = (v9 - 1) & v9;
LABEL_11:
      v17 = *(*(v4 + 48) + (v12 | (v5 << 6)));
      sub_1C4811360(*(v3 + 40), *(*(v4 + 48) + (v12 | (v5 << 6))));
      sub_1C443FCB0();
      if (((*(v3 + 56 + v19) >> v0) & 1) == 0)
      {
        goto LABEL_34;
      }

      v33 = v13;
      v20 = ~v18;
      if (v17)
      {
        v21 = 0x617247746E657665;
      }

      else
      {
        v21 = 0x7247656C62617473;
      }

      if (v17)
      {
        v22 = 0xEA00000000006870;
      }

      else
      {
        v22 = 0xEB00000000687061;
      }

      while (1)
      {
        v23 = *(*(v3 + 48) + v0) ? 0x617247746E657665 : 0x7247656C62617473;
        v24 = *(*(v3 + 48) + v0) ? 0xEA00000000006870 : 0xEB00000000687061;
        v25 = v23 == v21 && v24 == v22;
        if (v25)
        {
          break;
        }

        sub_1C4417184();
        v29 = sub_1C4851C38(v26, v27, v28);

        if (v29)
        {
          goto LABEL_32;
        }

        v0 = (v0 + 1) & v20;
        sub_1C4851BC0();
        if ((v30 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_32:
      v11 = v31;
      v4 = v32;
      v9 = v33;
    }

    while (v33);
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      goto LABEL_34;
    }

    ++v14;
    if (*(v6 + 8 * v5))
    {
      sub_1C43FCF1C();
      v13 = v16 & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C4839FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  if (v31 != v30 && (v32 = v30, sub_1C441F954(), v54))
  {
    v33 = 0;
    sub_1C43FEC90();
    v36 = v35 & v34;
    v38 = (v37 + 63) >> 6;
    if ((v35 & v34) != 0)
    {
      while (2)
      {
        sub_1C4410218();
LABEL_11:
        v45 = (*(v39 + 48) + 16 * (v40 | (v33 << 6)));
        v47 = *v45;
        v46 = v45[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4417184();
        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C440CAC8();
        v50 = ~v49;
        do
        {
          v51 = v48 & v50;
          sub_1C4507B48();
          if ((v52 & 1) == 0)
          {

            goto LABEL_22;
          }

          v53 = (*(v32 + 48) + 16 * v51);
          v54 = *v53 == v47 && v53[1] == v46;
          if (v54)
          {
            break;
          }

          v55 = sub_1C4F02938();
          v48 = v51 + 1;
        }

        while ((v55 & 1) == 0);

        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v41 = v33;
    while (1)
    {
      v33 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v33 >= v38)
      {
        goto LABEL_22;
      }

      sub_1C444C014();
      if (v42)
      {
        sub_1C43FCF1C();
        v36 = v44 & v43;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C440A528();
  }
}

_BYTE *storeEnumTagSinglePayload for Grader(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C483A1C8()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFF8A8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C4418454();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A99F8]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4843F00(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C4418454();
    sub_1C4403D94(&unk_1EDDFCC80, v10, MEMORY[0x1E69A9A08]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

BOOL sub_1C483A338(uint64_t a1, _OWORD *a2)
{
  v5 = *v2;
  sub_1C4F02AF8();
  sub_1C45D5EBC(&v33);
  sub_1C4F02B68();
  sub_1C43FC41C();
  v14 = ~v13;
  while (1)
  {
    v15 = v6 & v14;
    v16 = (1 << (v6 & v14)) & *(v5 + 56 + (((v6 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v2;
      sub_1C45A2358(a2, v31);
      sub_1C48441B0(a2, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v32;
      v21 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v21;
      *(a1 + 25) = *(a2 + 25);
      return v16 == 0;
    }

    v17 = (*(v5 + 48) + 48 * v15);
    v18 = v17[1];
    v33 = *v17;
    v34[0] = v18;
    *(v34 + 9) = *(v17 + 25);
    sub_1C45D5A9C(&v33, a2, v7, v8, v9, v10, v11, v12, v30, v31[0], v31[1], v31[2]);
    if (v19)
    {
      break;
    }

    v6 = v15 + 1;
  }

  sub_1C45EC75C(a2);
  v22 = *(v5 + 48) + 48 * v15;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  *a1 = *v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  v28 = *(v22 + 40);
  *(a1 + 40) = v28;
  sub_1C45D7F78(v23, v24, v25, v26, v27, v28);
  return v16 == 0;
}

void sub_1C483A4BC()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFDAF8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C44B8F78();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A94B8]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4844320(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C44B8F78();
    sub_1C4403D94(&qword_1EC0B85A8, v10, MEMORY[0x1E69A94C0]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

uint64_t sub_1C483A8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = *v3;
  sub_1C4F02AF8();
  sub_1C45FE448(v61, a2, v4);
  v7 = v61;
  sub_1C4F02B68();
  sub_1C43FC41C();
  v10 = v9 & ~v8;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_116:
    swift_isUniquelyReferenced_nonNull_native();
    v61[0] = *v59;
    sub_1C45A24AC(a2, v4);
    sub_1C4844AB4(a2, v4, v10);
    *v59 = v61[0];
    *a1 = a2;
    *(a1 + 8) = v4;
    return 1;
  }

  v11 = ~v8;
  v12 = v4 == 4;
  v13 = a2 == 10 && v4 == 4;
  v14 = a2 == 9 && v4 == 4;
  v57 = v14;
  v58 = v13;
  v15 = a2 == 8 && v4 == 4;
  v16 = a2 == 7 && v4 == 4;
  v55 = v16;
  v56 = v15;
  v17 = a2 == 6 && v4 == 4;
  v18 = a2 == 5 && v4 == 4;
  v53 = v18;
  v54 = v17;
  v19 = a2 == 4 && v4 == 4;
  v20 = a2 == 3 && v4 == 4;
  v51 = v20;
  v52 = v19;
  v21 = a2 == 2 && v4 == 4;
  v22 = a2 == 1 && v4 == 4;
  v49 = v22;
  v50 = v21;
  if (a2)
  {
    v12 = 0;
  }

  v48 = v12;
  while (2)
  {
    v23 = *(v6 + 48) + 16 * v10;
    v24 = *v23;
    switch(*(v23 + 8))
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_115;
        }

        sub_1C440CC68();
        v25 = 0x6144664F656D6974;
        switch(v24)
        {
          case 1:
            v25 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v25 = sub_1C440679C();
            break;
          case 3:
            v25 = sub_1C4410D74();
            break;
          case 4:
            sub_1C44754A8();
            v25 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
            v25 = sub_1C440215C();
            break;
          case 6:
            v25 = sub_1C440D0A4();
            goto LABEL_82;
          case 7:
            v25 = sub_1C43FEBC8();
            break;
          case 8:
            v25 = sub_1C441F4F8();
LABEL_82:
            v7 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v25 = sub_1C43FFDEC();
            break;
          case 10:
            v25 = sub_1C4415F60();
            break;
          case 11:
            v25 = sub_1C43FF0EC();
            break;
          case 12:
            v25 = sub_1C440584C();
            break;
          default:
            break;
        }

        v30 = 0x6144664F656D6974;
        v31 = 0xE900000000000079;
        switch(a2)
        {
          case 1:
            goto LABEL_97;
          case 2:
            goto LABEL_102;
          case 3:
            goto LABEL_103;
          case 4:
            goto LABEL_99;
          case 5:
            goto LABEL_105;
          case 6:
            goto LABEL_106;
          case 7:
            goto LABEL_104;
          case 8:
            goto LABEL_108;
          case 9:
            goto LABEL_101;
          case 10:
            goto LABEL_107;
          case 11:
            goto LABEL_98;
          case 12:
            goto LABEL_100;
          default:
            goto LABEL_110;
        }

        goto LABEL_110;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_115;
        }

        v26 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4839AB4(v26, a2);
        v7 = v27;
        sub_1C45A24C0(v24, 2);
        if ((v7 & 1) == 0)
        {
          goto LABEL_115;
        }

        v43 = a2;
        v44 = 2;
        goto LABEL_118;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_115;
        }

        v28 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4839AB4(v28, a2);
        v7 = v29;
        sub_1C45A24C0(v24, 3);
        if ((v7 & 1) == 0)
        {
          goto LABEL_115;
        }

        v43 = a2;
        v44 = 3;
LABEL_118:
        sub_1C45A24C0(v43, v44);
        goto LABEL_119;
      case 4:
        switch(v24)
        {
          case 1:
            if (v49)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 2:
            if (v50)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 3:
            if (v51)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 4:
            if (v52)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 5:
            if (v53)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 6:
            if (v54)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 7:
            if (v55)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 8:
            if (v56)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 9:
            if (v57)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          case 10:
            if (v58)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
          default:
            if (v48)
            {
              goto LABEL_119;
            }

            goto LABEL_115;
        }

      default:
        if (v4)
        {
          goto LABEL_115;
        }

        sub_1C440CC68();
        v25 = 0x6144664F656D6974;
        switch(v24)
        {
          case 1:
            v25 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v25 = sub_1C440679C();
            break;
          case 3:
            v25 = sub_1C4410D74();
            break;
          case 4:
            sub_1C44754A8();
            v25 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
            v25 = sub_1C440215C();
            break;
          case 6:
            v25 = sub_1C440D0A4();
            goto LABEL_95;
          case 7:
            v25 = sub_1C43FEBC8();
            break;
          case 8:
            v25 = sub_1C441F4F8();
LABEL_95:
            v7 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v25 = sub_1C43FFDEC();
            break;
          case 10:
            v25 = sub_1C4415F60();
            break;
          case 11:
            v25 = sub_1C43FF0EC();
            break;
          case 12:
            v25 = sub_1C440584C();
            break;
          default:
            break;
        }

        v30 = 0x6144664F656D6974;
        v31 = 0xE900000000000079;
        switch(a2)
        {
          case 1:
LABEL_97:
            sub_1C440F310();
            v30 = v32 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
LABEL_102:
            sub_1C440DEDC();
            v30 = v35 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
            v31 = 0xEF796144664F656DLL;
            break;
          case 3:
LABEL_103:
            sub_1C44040F0();
            v31 = v36 - 14;
            sub_1C4409A64();
            break;
          case 4:
LABEL_99:
            v31 = 0xEA00000000006B65;
            sub_1C440F310();
            v30 = v34 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 5:
LABEL_105:
            v31 = 0xE300000000000000;
            sub_1C4482E94();
            break;
          case 6:
LABEL_106:
            sub_1C4404BF8();
            v37 = 0x6E6F697461;
            goto LABEL_109;
          case 7:
LABEL_104:
            sub_1C44148EC();
            v31 = 0xEF687361486F6547;
            break;
          case 8:
LABEL_108:
            sub_1C440DEDC();
            v30 = v38 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
            v37 = 0x687361486FLL;
LABEL_109:
            v31 = v37 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
LABEL_101:
            sub_1C4413E94();
            v31 = 0xEC00000068736148;
            break;
          case 10:
LABEL_107:
            v31 = 0xE400000000000000;
            sub_1C4851B74();
            break;
          case 11:
LABEL_98:
            sub_1C44040F0();
            v31 = v33 - 20;
            sub_1C4423A90();
            break;
          case 12:
LABEL_100:
            sub_1C440EF3C();
            v31 = 0xEB00000000657461;
            break;
          default:
            break;
        }

LABEL_110:
        if (v25 != v30 || v7 != v31)
        {
          v40 = sub_1C4F02938();

          if (v40)
          {
            goto LABEL_119;
          }

LABEL_115:
          v10 = (v10 + 1) & v11;
          sub_1C4851B1C();
          if ((v41 & 1) == 0)
          {
            goto LABEL_116;
          }

          continue;
        }

LABEL_119:
        v45 = *(v6 + 48) + 16 * v10;
        v46 = *v45;
        *a1 = *v45;
        v47 = *(v45 + 8);
        *(a1 + 8) = v47;
        sub_1C45A24AC(v46, v47);
        return 0;
    }
  }
}

uint64_t sub_1C483AEB4(_BYTE *a1, uint64_t a2)
{
  sub_1C4851B8C();
  sub_1C4F02AF8();
  sub_1C494CF40(a2);
  sub_1C4851A9C();
  sub_1C44A3AA0(v20, v6, v7);

  sub_1C4F02B68();
  sub_1C4415A08();
  if (v9)
  {
    while (1)
    {
      v10 = 0xE800000000000000;
      v11 = 0x4449656C646E7562;
      switch(*(*(v4 + 48) + v2))
      {
        case 1:
          v11 = 0xD000000000000011;
          v10 = 0x80000001C4F86740;
          break;
        case 2:
          v11 = 0x456E6F6973736573;
          v10 = 0xEC000000746E6576;
          break;
        case 3:
          v11 = 0xD000000000000016;
          v10 = 0x80000001C4F85600;
          break;
        case 4:
          v11 = 0xD000000000000016;
          v10 = 0x80000001C4F86760;
          break;
        case 5:
          v11 = 0x7463617265746E69;
          v10 = 0xEF657079546E6F69;
          break;
        case 6:
          v11 = 0x646576726573626FLL;
          v10 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      v12 = 0xE800000000000000;
      v13 = 0x4449656C646E7562;
      switch(a2)
      {
        case 1:
          v13 = 0xD000000000000011;
          v12 = 0x80000001C4F86740;
          break;
        case 2:
          v13 = 0x456E6F6973736573;
          v12 = 0xEC000000746E6576;
          break;
        case 3:
          v13 = 0xD000000000000016;
          v12 = 0x80000001C4F85600;
          break;
        case 4:
          v13 = 0xD000000000000016;
          v12 = 0x80000001C4F86760;
          break;
        case 5:
          v13 = 0x7463617265746E69;
          v12 = 0xEF657079546E6F69;
          break;
        case 6:
          v13 = 0x646576726573626FLL;
          v12 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      if (v11 == v13 && v10 == v12)
      {
        break;
      }

      sub_1C44AB158(v11, v8, v13);
      sub_1C44160EC();

      if (v3)
      {
        goto LABEL_24;
      }

      sub_1C441DD14();
      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    result = sub_1C44F19C0();
  }

  else
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v18;
    sub_1C484504C(a2, v2, isUniquelyReferenced_nonNull_native);
    *v18 = v20[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1C483B180(_DWORD *a1, unint64_t a2)
{
  v6 = *v2;
  MEMORY[0x1C69417C0](*(v6 + 40), a2, 4);
  sub_1C44584AC();
  while (1)
  {
    sub_1C445BB08();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44BBDF0();
  v11 = sub_1C48453CC(a2, v3, v10);
  sub_1C44EC82C(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_1C483B22C()
{
  sub_1C43FBD3C();
  v3 = sub_1C4424708(v2);
  v48 = type metadata accessor for LiveGlobalKnowledgeTriple(v3);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442EB4C(v6, v7, v8, v9, v10, v11, v12, v13, v46);
  v14 = sub_1C44A8370();
  LiveGlobalKnowledgeTriple.hash(into:)(v14);
  sub_1C4F02B68();
  sub_1C4433474();
  if (v16)
  {
    v17 = ~v15;
    v47 = ~v15;
    do
    {
      sub_1C4851984();
      sub_1C441D6D8();
      if (sub_1C4EFF088())
      {
        v18 = v48[5];
        sub_1C4EFEEF8();
        sub_1C4419828();
        v20 = sub_1C4403D94(&off_1EDDFCCA8, v19, MEMORY[0x1E69A9770]);
        sub_1C442ABEC();
        sub_1C44017C4();
        v21 = sub_1C4455394();
        v24 = v24 && v0 == v49;
        if (v24)
        {

          v25 = v17;
          v17 = v47;
        }

        else
        {
          sub_1C44172DC(v21, v22, v23);
          sub_1C44323EC();

          v25 = v17;
          v17 = v47;
          if ((v18 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        if (sub_1C4EFF878())
        {
          v26 = v48[7];
          sub_1C442ABEC();
          sub_1C443E33C();
          v27 = sub_1C442A410();
          if (v24 && v49 == v20)
          {
          }

          else
          {
            sub_1C43FED70(v27, v28, v29);
            sub_1C4488AFC();

            if ((v26 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          sub_1C440D4EC(v48[8]);
          v33 = v24 && v31 == v32;
          if (v33 || (sub_1C4F02938() & 1) != 0)
          {
            sub_1C4461FB0();
            if (v24)
            {
              sub_1C4461FB0();
              if (v24)
              {
                v34 = v48[11];
                v35 = *(v1 + v34);
                v36 = *(v25 + v34);
                v37 = *(v35 + 16);
                if (v37 == *(v36 + 16))
                {
                  if (!v37 || v35 == v36)
                  {
LABEL_38:
                    sub_1C48519DC(v1, type metadata accessor for LiveGlobalKnowledgeTriple);
                    v44 = sub_1C4404C28();
                    sub_1C48519DC(v44, v45);
                    sub_1C4851984();
                    goto LABEL_37;
                  }

                  v38 = (v35 + 32);
                  v39 = (v36 + 32);
                  while (*v38 == *v39)
                  {
                    ++v38;
                    ++v39;
                    if (!--v37)
                    {
                      goto LABEL_38;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      sub_1C4482CE8();
      sub_1C447F0F0();
    }

    while ((v40 & 1) != 0);
  }

  sub_1C4485FD8();
  sub_1C4416AB8();
  sub_1C4851984();
  v41 = sub_1C4418AC8();
  sub_1C48454D4(v41, v42, v43);
  sub_1C4475278();
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_37:
  sub_1C43FE9F0();
}

void sub_1C483B580()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EF9F68();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C44BBC48();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E6969AD8]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4845940(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C44BBC48();
    sub_1C4403D94(&qword_1EDDFA3E0, v10, MEMORY[0x1E6969AE0]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483B6F0()
{
  sub_1C43FBD3C();
  v3 = v2;
  v28 = v4;
  v5 = type metadata accessor for Source(0);
  v6 = sub_1C43FCF7C(v5);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v25 - v9;
  v26 = v0;
  v10 = *v0;
  sub_1C4F02AF8();
  v11 = *v3;
  v12 = v3[1];
  v27 = v3;
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C43FC41C();
  v15 = ~v14;
  while (1)
  {
    v16 = v13 & v15;
    if (((1 << (v13 & v15)) & *(v10 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v21 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C4460260();
      v23 = v25;
      sub_1C4851984();
      v30 = *v21;
      sub_1C4845BF0(v23, v16, isUniquelyReferenced_nonNull_native);
      *v21 = v30;
      sub_1C4416AB8();
      sub_1C4471FB4();
      goto LABEL_12;
    }

    sub_1C4460260();
    sub_1C4851984();
    v17 = v1[1];
    if (*v1 == v11 && v17 == v12)
    {
      break;
    }

    v19 = sub_1C4851C08(*v1, v17, v11);
    sub_1C441E3D8();
    sub_1C48519DC(v1, v20);
    if (v19)
    {
      goto LABEL_11;
    }

    v13 = v16 + 1;
  }

  sub_1C441E3D8();
  sub_1C48519DC(v1, v24);
LABEL_11:
  sub_1C48519DC(v27, type metadata accessor for Source);
  sub_1C4851984();
LABEL_12:
  sub_1C43FE9F0();
}

uint64_t sub_1C483B90C(uint64_t a1, float *a2)
{
  v4 = a2[13];
  v5 = *v2;
  sub_1C4F02AF8();
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v42 = a2;
  v12 = *(a2 + 48);
  sub_1C43FC2F4();
  sub_1C4F01298();
  v48 = v9;
  v49 = v8;
  sub_1C4F01298();
  sub_1C4F01298();
  v44 = v12;
  MEMORY[0x1C69417F0](v12);
  sub_1C4F02B38();
  sub_1C4F02B68();
  sub_1C43FC41C();
  v15 = v14 & ~v13;
  v47 = v16;
  if ((*(v16 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v45 = v11;
    v46 = v10;
    v17 = ~v13;
    v40 = v5;
    v18 = *(v5 + 48);
    while (1)
    {
      v19 = v18 + 56 * v15;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 52);
      v26 = *v19 == v6 && *(v19 + 8) == v7;
      if (v26 || (sub_1C4F02938() & 1) != 0)
      {
        v27 = v20 == v49 && v21 == v48;
        if (v27 || (sub_1C4F02938() & 1) != 0)
        {
          v28 = v22 == v46 && v23 == v45;
          if (v28 || (sub_1C4F02938()) && v24 == v44 && v25 == v4)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v17;
      if (((*(v47 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_1C4851A34(v42);
    v35 = *(v40 + 48) + 56 * v15;
    v37 = *(v35 + 16);
    v36 = *(v35 + 32);
    v38 = *v35;
    v52 = *(v35 + 48);
    v51[1] = v37;
    v51[2] = v36;
    v51[0] = v38;
    v39 = *(v35 + 16);
    *a1 = *v35;
    *(a1 + 16) = v39;
    *(a1 + 32) = *(v35 + 32);
    *(a1 + 48) = *(v35 + 48);
    sub_1C461B90C(v51, v50);
    return 0;
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v41;
    sub_1C461B90C(v42, v51);
    v31 = sub_1C43FD024();
    sub_1C4845E60(v31, v32, isUniquelyReferenced_nonNull_native);
    *v41 = v50[0];
    v33 = *(v42 + 16);
    *a1 = *v42;
    *(a1 + 16) = v33;
    *(a1 + 32) = *(v42 + 32);
    *(a1 + 48) = *(v42 + 48);
    return 1;
  }
}

void sub_1C483BB9C()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EF9CD8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C44C1220();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E6969540]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C48460DC(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C44C1220();
    sub_1C4403D94(&qword_1EC0B9D00, v10, MEMORY[0x1E6969550]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483BD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v51 = v39;
  sub_1C4851B8C();
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v38);
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C43FC41C();
  sub_1C44CD048();
  if ((*(v32 + 56 + v41) >> v31))
  {
    v42 = ~v40;
    v43 = *(v32 + 48);
    while (1)
    {
      v44 = (v43 + 24 * v31);
      if (*v44 == v38)
      {
        v45 = v44[1];
        v46 = v44[2];
        v47 = v45 == v36 && v46 == v34;
        if (v47 || (sub_1C4851C38(v45, v46, v36) & 1) != 0)
        {
          break;
        }
      }

      v31 = (v31 + 1) & v42;
      if (((*(v32 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v49 = *(v32 + 48) + 24 * v31;
    v50 = *(v49 + 16);
    *v51 = *v49;
    *(v51 + 16) = v50;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C484648C(v38, v36, v34, v31, isUniquelyReferenced_nonNull_native);
    *v30 = v52;
    *v51 = v38;
    *(v51 + 8) = v36;
    *(v51 + 16) = v34;
  }

  sub_1C440A528();
}

uint64_t sub_1C483BE88(_BYTE *a1, uint64_t a2)
{
  v6 = v2;
  sub_1C4851B8C();
  sub_1C4F02AF8();
  sub_1C4424B10(a2);
  sub_1C4851A9C();
  sub_1C44A3AA0(v30, v8, v9);

  sub_1C4F02B68();
  sub_1C4415A08();
  if (v11)
  {
    while (1)
    {
      v12 = 0xE400000000000000;
      v13 = 1702259052;
      switch(*(*(v5 + 48) + v3))
      {
        case 1:
          v13 = 1701736302;
          break;
        case 2:
          v13 = sub_1C4851B48();
          break;
        case 3:
          v13 = sub_1C44289B8();
          v12 = 0x80000001C4F86260;
          break;
        case 4:
          v12 = 0xE600000000000000;
          v14 = 1801807223;
          goto LABEL_9;
        case 5:
          v16 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_12;
        case 6:
          v16 = sub_1C4428E78();
LABEL_12:
          v13 = sub_1C44B91EC(v16);
          break;
        case 7:
          v12 = 0xE600000000000000;
          v14 = 1920298856;
LABEL_9:
          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v17 = sub_1C4428E78();
          v13 = sub_1C448881C(v17);
          break;
        case 9:
          v15 = sub_1C43FE694();
          v13 = sub_1C4456998(v15);
          break;
        case 0xA:
          v13 = sub_1C44289B8();
          v12 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v18 = 0xE400000000000000;
      v19 = 1702259052;
      switch(a2)
      {
        case 1:
          v19 = 1701736302;
          break;
        case 2:
          v18 = 0xE500000000000000;
          v19 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v18 = 0x80000001C4F86260;
          break;
        case 4:
          v18 = 0xE600000000000000;
          v20 = 1801807223;
          goto LABEL_22;
        case 5:
          sub_1C440EFA8();
          v23 = v22 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_25;
        case 6:
          sub_1C444C270();
LABEL_25:
          v19 = v23 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v18 = 0xEB00000000737275;
          break;
        case 7:
          v18 = 0xE600000000000000;
          v20 = 1920298856;
LABEL_22:
          v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v19 = v24 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v18 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v19 = v21 | 0x694D377900000000;
          v18 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v18 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      if (v13 == v19 && v12 == v18)
      {
        break;
      }

      sub_1C44AB158(v13, v10, v19);
      sub_1C44160EC();

      if (v4)
      {
        goto LABEL_36;
      }

      sub_1C441DD14();
      if ((v26 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    result = sub_1C44F19C0();
  }

  else
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *v6;
    sub_1C484663C(a2, v3, isUniquelyReferenced_nonNull_native);
    *v6 = v30[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1C483C148()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFDAB8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C441B994();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A9488]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846A34(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C441B994();
    sub_1C4403D94(&unk_1EDDEFFC0, v10, MEMORY[0x1E69A9490]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C2DC()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFEFB8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C445BD70();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A97D8]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846CE4(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C445BD70();
    sub_1C4403D94(&qword_1EDDEFF88, v10, MEMORY[0x1E69A97E0]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C44C()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4F002A8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C4480788();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A9DF0]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C4846F94(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C4480788();
    sub_1C4403D94(&qword_1EC0BDF38, v10, MEMORY[0x1E69A9DF8]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

void sub_1C483C5BC()
{
  sub_1C43FBD3C();
  v3 = v2;
  v51 = v4;
  v5 = type metadata accessor for OntologyTriple(0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v10;
  v50 = v0;
  v11 = *v0;
  sub_1C4F02AF8();
  v12 = *v3;
  v13 = v3[1];
  sub_1C4F01298();
  v14 = *(v5 + 20);
  sub_1C4EFEEF8();
  sub_1C4419828();
  sub_1C4403D94(v15, v16, MEMORY[0x1E69A9758]);
  v55 = v14;
  sub_1C4F00FE8();
  sub_1C4851B3C();
  v56 = v18;
  v57 = v17;
  sub_1C4F01298();
  v52 = *(v5 + 28);
  sub_1C4F00FE8();
  v62 = v3;
  v63 = v5;
  sub_1C4851B3C();
  v54 = v19;
  v53 = v20;
  sub_1C4F01298();
  sub_1C4F02B68();
  v60 = v11 + 56;
  v61 = v11;
  sub_1C43FC41C();
  v23 = v22 & ~v21;
  if ((*(v24 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v58 = ~v21;
    v59 = *(v7 + 72);
    do
    {
      sub_1C44883CC();
      sub_1C4851984();
      v25 = v1[1];
      v26 = *v1 == v12 && v25 == v13;
      if (!v26 && (sub_1C4851C08(*v1, v25, v12) & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_1C4419828();
      v28 = sub_1C4403D94(&off_1EDDFCCA8, v27, MEMORY[0x1E69A9770]);
      sub_1C43FD4F4();
      v29 = v62 + v55;
      sub_1C43FD4F4();
      v30 = sub_1C4455394();
      if (v26 && v12 == v29)
      {
      }

      else
      {
        v34 = sub_1C44172DC(v30, v31, v32);

        if ((v34 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v35 = (v1 + *(v63 + 24));
      v36 = *v35 == v57 && v35[1] == v56;
      if (!v36 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_1C43FD4F4();
      v37 = v62 + v52;
      sub_1C43FD4F4();
      v38 = sub_1C442A410();
      if (v26 && v37 == v28)
      {
      }

      else
      {
        v42 = sub_1C43FED70(v38, v39, v40);

        if ((v42 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v43 = (v1 + *(v63 + 32));
      v44 = *v43 == v54 && v43[1] == v53;
      if (v44 || (sub_1C4F02938() & 1) != 0)
      {
        sub_1C48519DC(v1, type metadata accessor for OntologyTriple);
        sub_1C48519DC(v62, type metadata accessor for OntologyTriple);
        sub_1C4851984();
        goto LABEL_35;
      }

LABEL_32:
      sub_1C4482CE8();
      v23 = (v23 + 1) & v58;
    }

    while (((*(v60 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  v45 = v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C44883CC();
  v47 = v49;
  sub_1C4851984();
  v64 = *v45;
  sub_1C4847244(v47, v23, isUniquelyReferenced_nonNull_native);
  *v45 = v64;
  sub_1C4416AB8();
  sub_1C4471FB4();
LABEL_35:
  sub_1C43FE9F0();
}

uint64_t sub_1C483CA44(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  sub_1C4F02AF8();
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v6)
  {
    sub_1C4F01298();
  }

  sub_1C4F01298();
  sub_1C4F02B68();
  v9 = v4 + 56;
  sub_1C43FC41C();
  v12 = v11 & ~v10;
  v37 = a2;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = *v36;
    sub_1C4851520(v37, v44);
    sub_1C4847730(v37, v12, isUniquelyReferenced_nonNull_native);
    *v36 = v43[0];
    v26 = v37[1];
    *a1 = *v37;
    a1[1] = v26;
    v27 = v37[3];
    a1[2] = v37[2];
    a1[3] = v27;
    return 1;
  }

  v39 = v8;
  v40 = v7;
  v41 = v5;
  v42 = ~v10;
  v13 = *a2;
  v14 = *(a2 + 1);
  v35 = v4;
  v15 = *(v4 + 48);
  while (1)
  {
    v16 = (v15 + (v12 << 6));
    v17 = v16[4];
    v18 = v16[5];
    v20 = v16[6];
    v19 = v16[7];
    if (*v16 == v13 && v16[1] == v14)
    {
      break;
    }

    v22 = sub_1C4F02938();
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_24:
    if (v22)
    {
      goto LABEL_27;
    }

LABEL_25:
    v12 = (v12 + 1) & v42;
    if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v22 = 1;
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (!v6)
  {
    goto LABEL_24;
  }

  if (v22)
  {
    goto LABEL_27;
  }

  v23 = v17 == v41 && v18 == v6;
  if (!v23 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v20 != v40 || v19 != v39)
  {
    sub_1C43FD024();
    v22 = sub_1C4F02938();
    goto LABEL_24;
  }

LABEL_27:
  sub_1C485157C(v37);
  v29 = (*(v35 + 48) + (v12 << 6));
  v31 = *v29;
  v30 = v29[1];
  v32 = v29[3];
  v44[2] = v29[2];
  v44[3] = v32;
  v44[0] = v31;
  v44[1] = v30;
  v33 = v29[1];
  *a1 = *v29;
  a1[1] = v33;
  v34 = v29[3];
  a1[2] = v29[2];
  a1[3] = v34;
  sub_1C4851520(v44, v43);
  return 0;
}