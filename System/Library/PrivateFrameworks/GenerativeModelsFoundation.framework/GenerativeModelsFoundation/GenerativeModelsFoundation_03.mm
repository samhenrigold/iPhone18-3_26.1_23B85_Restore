void sub_18E194A40(uint64_t a1)
{
  if (!qword_1ED8DA290)
  {
    sub_18E1A6FE0();
    sub_18E194B68(&qword_1ED8DA288, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
    v1 = sub_18E1A6FD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DA290);
    }
  }
}

void sub_18E194AD4(uint64_t a1)
{
  if (!qword_1ED8DA298)
  {
    sub_18E1A6FA0();
    sub_18E194B68(&qword_1ED8DA2A0, MEMORY[0x1E69B2460], MEMORY[0x1E69B2458]);
    v1 = sub_18E1A6FD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DA298);
    }
  }
}

uint64_t sub_18E194B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_18E194C08(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18E194CF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_18E194DA4()
{
  result = qword_1EABD1180;
  if (!qword_1EABD1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1180);
  }

  return result;
}

unint64_t sub_18E194DFC()
{
  result = qword_1EABD1188;
  if (!qword_1EABD1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1188);
  }

  return result;
}

unint64_t sub_18E194E54()
{
  result = qword_1EABD1190;
  if (!qword_1EABD1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1190);
  }

  return result;
}

unint64_t sub_18E194EAC()
{
  result = qword_1EABD1198;
  if (!qword_1EABD1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1198);
  }

  return result;
}

unint64_t sub_18E194F04()
{
  result = qword_1EABD11A0;
  if (!qword_1EABD11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11A0);
  }

  return result;
}

unint64_t sub_18E194F5C()
{
  result = qword_1EABD11A8;
  if (!qword_1EABD11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11A8);
  }

  return result;
}

unint64_t sub_18E194FB4()
{
  result = qword_1EABD11B0;
  if (!qword_1EABD11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11B0);
  }

  return result;
}

unint64_t sub_18E19500C()
{
  result = qword_1EABD11B8;
  if (!qword_1EABD11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11B8);
  }

  return result;
}

unint64_t sub_18E195064()
{
  result = qword_1EABD11C0;
  if (!qword_1EABD11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11C0);
  }

  return result;
}

unint64_t sub_18E1950BC()
{
  result = qword_1EABD11C8;
  if (!qword_1EABD11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11C8);
  }

  return result;
}

unint64_t sub_18E195114()
{
  result = qword_1EABD11D0;
  if (!qword_1EABD11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11D0);
  }

  return result;
}

unint64_t sub_18E19516C()
{
  result = qword_1EABD11D8;
  if (!qword_1EABD11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11D8);
  }

  return result;
}

unint64_t sub_18E1951C4()
{
  result = qword_1EABD11E0;
  if (!qword_1EABD11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11E0);
  }

  return result;
}

unint64_t sub_18E19521C()
{
  result = qword_1EABD11E8;
  if (!qword_1EABD11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11E8);
  }

  return result;
}

unint64_t sub_18E195274()
{
  result = qword_1EABD11F0;
  if (!qword_1EABD11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11F0);
  }

  return result;
}

unint64_t sub_18E1952CC()
{
  result = qword_1EABD11F8;
  if (!qword_1EABD11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD11F8);
  }

  return result;
}

unint64_t sub_18E195324()
{
  result = qword_1EABD1200;
  if (!qword_1EABD1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1200);
  }

  return result;
}

unint64_t sub_18E19537C()
{
  result = qword_1EABD1208;
  if (!qword_1EABD1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1208);
  }

  return result;
}

uint64_t sub_18E1953F4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_18E195414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E161880(&qword_1EABD1218, &qword_18E1B03F8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v85 - v4;
  v6 = sub_18E1A6F50();
  v86 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v85 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E161880(&qword_1EABD1240, &unk_18E1B0470);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v93 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v91 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v99 = &v85 - v17;
  v18 = sub_18E161880(&qword_1EABD1228, qword_18E1B0480);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v95 = &v85 - v23;
  v24 = sub_18E1A6ED0();
  v105 = *(v24 - 8);
  v106 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v89 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v94 = &v85 - v32;
  v102 = sub_18E1A6E00();
  v98 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v33);
  v101 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_18E1A6DC0();
  v96 = *(v35 - 8);
  v97 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v100 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_18E1A6F30();
  v38 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v39);
  v41 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_18E1A6EF0();
  v43 = *(v42 + 16);
  v103 = v6;
  v104 = a1;
  if (v43)
  {
    v88 = v5;
    v111 = MEMORY[0x1E69E7CC0];
    sub_18E19B74C(0, v43, 0);
    v44 = v111;
    v46 = *(v38 + 16);
    v45 = v38 + 16;
    v109 = v46;
    v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
    v87 = v42;
    v48 = v42 + v47;
    v49 = *(v45 + 56);
    v107 = (v45 - 8);
    v108 = v49;
    do
    {
      v50 = v110;
      v51 = v45;
      v109(v41, v48, v110);
      v52 = sub_18E1A6F00();
      v54 = v53;
      (*v107)(v41, v50);
      v111 = v44;
      v56 = *(v44 + 16);
      v55 = *(v44 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_18E19B74C(v55 > 1, v56 + 1, 1);
        v44 = v111;
      }

      *(v44 + 16) = v56 + 1;
      v57 = v44 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      v48 += v108;
      --v43;
      v45 = v51;
    }

    while (v43);

    v6 = v103;
    a1 = v104;
  }

  else
  {
  }

  v58 = objc_opt_self();
  v59 = sub_18E1A7660();

  sub_18E1A6E20();
  v60 = sub_18E1A7660();

  v61 = [v58 preferredLocalizationsFromArray:v59 forPreferences:v60];

  v62 = sub_18E1A7670();
  v64 = v105;
  v63 = v106;
  if (!*(v62 + 16))
  {

    goto LABEL_12;
  }

  v65 = v100;
  sub_18E1A6DB0();
  v66 = v94;
  sub_18E1A6DA0();
  v67 = v95;
  sub_18E1A6EA0();
  v68 = *(v64 + 8);
  v68(v66, v63);
  v69 = v102;
  if (sub_18E15D690(v67, 1, v102) == 1)
  {
    (*(v96 + 8))(v65, v97);
    sub_18E16D540(v67, &qword_1EABD1228, qword_18E1B0480);
LABEL_12:
    v70 = 1;
    return sub_18E159EBC(a1, v70, 1, v6);
  }

  (*(v98 + 32))(v101, v67, v69);
  v71 = v89;
  sub_18E1A6DA0();
  v72 = v91;
  sub_18E1A6EB0();
  v68(v71, v63);
  v73 = sub_18E1A6E50();
  if (sub_18E15D690(v72, 1, v73) == 1)
  {
    v74 = v85;
    sub_18E1A6E90();
    sub_18E1A6E80();
    (*(v86 + 8))(v74, v6);
    if (sub_18E15D690(v72, 1, v73) != 1)
    {
      sub_18E16D540(v72, &qword_1EABD1240, &unk_18E1B0470);
    }
  }

  else
  {
    v75 = v99;
    (*(*(v73 - 8) + 32))(v99, v72, v73);
    sub_18E159EBC(v75, 0, 1, v73);
  }

  v76 = v98;
  v77 = v92;
  v78 = v102;
  (*(v98 + 16))(v92, v101, v102);
  sub_18E159EBC(v77, 0, 1, v78);
  v79 = v90;
  v80 = v100;
  sub_18E1A6DA0();
  sub_18E1A6EC0();
  v68(v79, v63);
  v81 = v99;
  sub_18E196B98(v99, v93, &qword_1EABD1240, &unk_18E1B0470);
  v82 = v104;
  sub_18E1A6E10();
  sub_18E16D540(v81, &qword_1EABD1240, &unk_18E1B0470);
  v83 = v78;
  a1 = v82;
  (*(v76 + 8))(v101, v83);
  (*(v96 + 8))(v80, v97);
  v70 = 0;
  v6 = v103;
  return sub_18E159EBC(a1, v70, 1, v6);
}

uint64_t SafetySettingProvider.systemLocales.getter()
{
  v138 = sub_18E1A6E70();
  sub_18E159050();
  v132 = v0;
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_18E15A0E4();
  v130 = v3;
  v136 = sub_18E161880(&qword_1EABD1210, &qword_18E1B03F0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v4, v5);
  v137 = v127 - v6;
  v7 = sub_18E161880(&qword_1EABD1218, &qword_18E1B03F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_18E1590A8();
  v131 = v9 - v10;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15DA5C();
  v141 = v13;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = v127 - v16;
  v145 = sub_18E1A6E00();
  sub_18E159050();
  v140 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15A0E4();
  v133 = v20;
  v144 = sub_18E161880(&qword_1EABD1220, &unk_18E1B0400);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v21, v22);
  v149 = v127 - v23;
  v24 = sub_18E161880(&qword_1EABD1228, qword_18E1B0480);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  sub_18E1590A8();
  v139 = v26 - v27;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v28, v29);
  sub_18E15DA5C();
  v147 = v30;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v31, v32);
  v148 = v127 - v33;
  v146 = sub_18E1A6F30();
  sub_18E159050();
  v150 = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  sub_18E1590A8();
  v135 = v37 - v38;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v39, v40);
  sub_18E15DA5C();
  v134 = v41;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v42, v43);
  sub_18E15DA5C();
  v143 = v44;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = v127 - v47;
  v49 = sub_18E161880(&qword_1EABD1230, &qword_18E1B0410);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  sub_18E1590A8();
  v53 = v51 - v52;
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v58 = v127 - v57;
  MEMORY[0x1EEE9AC00](v56, v59);
  v61 = v127 - v60;
  v62 = sub_18E1A6F50();
  sub_18E159050();
  v152 = v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  sub_18E1590A8();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69, v70);
  sub_18E15DA5C();
  v151 = v71;
  sub_18E15AABC();
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = v127 - v74;
  v76 = [objc_opt_self() preferredLanguages];
  v77 = sub_18E1A7670();

  if (*(v77 + 16))
  {
    v78 = *(v77 + 32);

    sub_18E1A6DD0();
    sub_18E195414(v61);
    sub_18E15A32C(v61, 1, v62);
    v79 = v75;
    if (!v102)
    {
      v83 = v151;
      v82 = v152;
      v84 = (v152 + 32);
      v85 = *(v152 + 32);
      v85(v151, v61, v62);
      if (MEMORY[0x193ACA260](v75, v83))
      {
        goto LABEL_9;
      }

      v128 = v85;
      v127[1] = v84;
      v129 = v75;
      sub_18E1A6F40();
      v90 = v148;
      sub_18E1A6EE0();
      v92 = v150 + 8;
      v91 = *(v150 + 8);
      v93 = v146;
      v91(v48, v146);
      v94 = v143;
      sub_18E1A6F40();
      v95 = v147;
      sub_18E1A6EE0();
      v143 = v91;
      v91(v94, v93);
      v79 = *(v144 + 48);
      v96 = v149;
      sub_18E196B98(v90, v149, &qword_1EABD1228, qword_18E1B0480);
      v97 = v96;
      sub_18E196B98(v95, v79 + v96, &qword_1EABD1228, qword_18E1B0480);
      v98 = v96;
      v99 = v145;
      sub_18E15A32C(v98, 1, v145);
      if (v102)
      {
        sub_18E15A908(v95);
        v100 = v149;
        sub_18E16D540(v90, &qword_1EABD1228, qword_18E1B0480);
        sub_18E15A32C(v79 + v100, 1, v99);
        v95 = v128;
        if (v102)
        {
          v150 = v92;
          sub_18E16D540(v100, &qword_1EABD1228, qword_18E1B0480);
          sub_18E15D128();
LABEL_20:
          v107 = v134;
          sub_18E1A6F40();
          v108 = v142;
          sub_18E1A6F20();
          v109 = v107;
          v110 = v146;
          v111 = v143;
          v143(v109, v146);
          v112 = v135;
          sub_18E1A6F40();
          v113 = v141;
          sub_18E1A6F20();
          v111(v112, v110);
          v114 = v137;
          v79 = *(v136 + 48);
          v84 = &qword_1EABD1218;
          sub_18E196B98(v108, v137, &qword_1EABD1218, &qword_18E1B03F8);
          sub_18E196B98(v113, v79 + v114, &qword_1EABD1218, &qword_18E1B03F8);
          v115 = v138;
          sub_18E15A32C(v114, 1, v138);
          if (v102)
          {
            sub_18E15A908(v113);
            sub_18E15A908(v108);
            sub_18E15A32C(v79 + v114, 1, v115);
            v83 = v151;
            if (v102)
            {
              sub_18E16D540(v114, &qword_1EABD1218, &qword_18E1B03F8);
              sub_18E15D128();
              goto LABEL_9;
            }
          }

          else
          {
            v116 = v131;
            sub_18E196B98(v114, v131, &qword_1EABD1218, &qword_18E1B03F8);
            sub_18E15A32C(v79 + v114, 1, v115);
            if (!v117)
            {
              v123 = v132;
              v124 = v79 + v114;
              v125 = v130;
              (*(v132 + 32))(v130, v124, v115);
              sub_18E196AAC(&qword_1EABCFE58, MEMORY[0x1E69696A0], MEMORY[0x1E69696B0]);
              LODWORD(v150) = sub_18E1A74F0();
              v126 = *(v123 + 8);
              v84 = (v123 + 8);
              v126(v125, v115);
              v79 = &qword_18E1B03F8;
              sub_18E15AC04(v141);
              sub_18E15AC04(v142);
              v126(v116, v115);
              sub_18E15AC04(v114);
              sub_18E15D128();
              v83 = v151;
              v95 = v128;
              if ((v150 & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_9:
              sub_18E161880(&qword_1EABD1238, &qword_18E1B0418);
              v81 = sub_18E15D4EC();
              *(v81 + 16) = xmmword_18E1AB270;
              (*(v82 + 16))(v84 + v81, v79, v62);
              v86 = *(v82 + 8);
              v86(v83, v62);
              v86(v79, v62);
              return v81;
            }

            sub_18E15A908(v141);
            sub_18E15A908(v142);
            (*(v132 + 8))(v116, v115);
            v83 = v151;
          }

          sub_18E16D540(v114, &qword_1EABD1210, &qword_18E1B03F0);
          sub_18E15D128();
          v95 = v128;
LABEL_29:
          sub_18E161880(&qword_1EABD1238, &qword_18E1B0418);
          v118 = v79;
          v119 = *(v82 + 72);
          v120 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_18E1B03E0;
          v121 = v81 + v120;
          (*(v82 + 16))(v121, v118, v62);
          v95(v121 + v119, v83, v62);
          (*(v82 + 8))(v118, v62);
          return v81;
        }
      }

      else
      {
        v101 = v139;
        sub_18E196B98(v97, v139, &qword_1EABD1228, qword_18E1B0480);
        sub_18E15A32C(v79 + v97, 1, v99);
        if (!v102)
        {
          v150 = v92;
          v103 = v140;
          v104 = v79 + v97;
          v105 = v133;
          (*(v140 + 32))(v133, v104, v99);
          sub_18E196AAC(&qword_1EABCFE60, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          LODWORD(v144) = sub_18E1A74F0();
          v95 = v97;
          v106 = *(v103 + 8);
          v106(v105, v99);
          v79 = qword_18E1B0480;
          sub_18E15AC04(v147);
          sub_18E15AC04(v148);
          v106(v101, v99);
          sub_18E15AC04(v97);
          sub_18E15D128();
          sub_18E15B87C();
          if ((v144 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }

        sub_18E15A908(v147);
        v100 = v149;
        sub_18E16D540(v148, &qword_1EABD1228, qword_18E1B0480);
        (*(v140 + 8))(v101, v99);
        sub_18E15B87C();
      }

      sub_18E16D540(v100, &qword_1EABD1220, &unk_18E1B0400);
      sub_18E15D128();
      goto LABEL_29;
    }

    sub_18E16D540(v61, &qword_1EABD1230, &qword_18E1B0410);
    sub_18E161880(&qword_1EABD1238, &qword_18E1B0418);
    v80 = v152;
    v81 = sub_18E15D4EC();
    *(v81 + 16) = xmmword_18E1AB270;
    (*(v80 + 16))(v81 + v78, v75, v62);
    (*(v80 + 8))(v75, v62);
  }

  else
  {

    sub_18E195414(v58);
    sub_18E196B98(v58, v53, &qword_1EABD1230, &qword_18E1B0410);
    sub_18E15A32C(v53, 1, v62);
    if (v102)
    {
      sub_18E16D540(v58, &qword_1EABD1230, &qword_18E1B0410);
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      v88 = v152 + 32;
      v87 = *(v152 + 32);
      v87(v68, v53, v62);
      sub_18E161880(&qword_1EABD1238, &qword_18E1B0418);
      v89 = (*(v88 + 48) + 32) & ~*(v88 + 48);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_18E1AB270;
      v87(v81 + v89, v68, v62);
      sub_18E16D540(v58, &qword_1EABD1230, &qword_18E1B0410);
    }
  }

  return v81;
}

uint64_t sub_18E196AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E196B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18E161880(a3, a4);
  sub_18E159098();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18E196BFC(uint64_t a1, int a2, int a3)
{
  v49 = a2;
  v50 = a3;
  v4 = sub_18E161880(&qword_1EABD1240, &unk_18E1B0470);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v47 - v6;
  v8 = sub_18E161880(&qword_1EABD1218, &qword_18E1B03F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v47 - v10;
  v12 = sub_18E1A6F30();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v47 - v23;
  v25 = sub_18E161880(&qword_1EABD1228, qword_18E1B0480);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v47 - v27;
  v51 = a1;
  sub_18E1A6F40();
  sub_18E1A6EE0();
  v29 = *(v13 + 8);
  v29(v24, v12);
  v30 = sub_18E1A6E00();
  if (sub_18E15D690(v28, 1, v30) == 1)
  {
    v31 = &qword_1EABD1228;
    v32 = qword_18E1B0480;
    v33 = v28;
LABEL_3:
    sub_18E18CBB8(v33, v31, v32);
    return 0;
  }

  v48 = v7;
  v35 = sub_18E1A6DE0();
  v37 = v36;
  (*(*(v30 - 8) + 8))(v28, v30);
  v54 = v35;
  v55 = v37;
  if (v49)
  {
    sub_18E1A6F40();
    sub_18E1A6F20();
    v29(v21, v12);
    v38 = sub_18E1A6E70();
    if (sub_18E15D690(v11, 1, v38) == 1)
    {
      sub_18E18CBB8(v11, &qword_1EABD1218, &qword_18E1B03F8);
    }

    else
    {
      v39 = sub_18E1A6DE0();
      v41 = v40;
      (*(*(v38 - 8) + 8))(v11, v38);
      v52 = 45;
      v53 = 0xE100000000000000;
      MEMORY[0x193ACAA20](v39, v41);

      MEMORY[0x193ACAA20](v52, v53);
    }
  }

  v42 = v48;
  if (v50)
  {
    sub_18E1A6F40();
    sub_18E1A6F10();
    v29(v17, v12);
    v43 = sub_18E1A6E50();
    if (sub_18E15D690(v42, 1, v43) == 1)
    {

      v31 = &qword_1EABD1240;
      v32 = &unk_18E1B0470;
      v33 = v42;
      goto LABEL_3;
    }

    v44 = sub_18E1A6DE0();
    v46 = v45;
    (*(*(v43 - 8) + 8))(v42, v43);
    v52 = 95;
    v53 = 0xE100000000000000;
    MEMORY[0x193ACAA20](v44, v46);

    MEMORY[0x193ACAA20](v52, v53);
  }

  return v54;
}

uint64_t SafetySettingProviding.localeIdentifier(locale:includeScript:includeRegion:)(uint64_t a1, int a2, int a3)
{
  v52 = a2;
  v53 = a3;
  v4 = sub_18E161880(&qword_1EABD1240, &unk_18E1B0470);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v50 - v6;
  v8 = sub_18E161880(&qword_1EABD1218, &qword_18E1B03F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v50 - v10;
  v12 = sub_18E1A6F30();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v50 - v23;
  v25 = sub_18E161880(&qword_1EABD1228, qword_18E1B0480);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v50 - v27;
  v54 = a1;
  sub_18E1A6F40();
  sub_18E1A6EE0();
  v29 = *(v13 + 8);
  v29(v24, v12);
  v30 = sub_18E1A6E00();
  if (sub_18E15D690(v28, 1, v30) == 1)
  {
    v31 = &qword_1EABD1228;
    v32 = qword_18E1B0480;
    v33 = v28;
LABEL_3:
    sub_18E18CBB8(v33, v31, v32);
    return 0;
  }

  v51 = v7;
  v35 = sub_18E1A6DE0();
  v37 = v36;
  sub_18E1594D8();
  (*(v38 + 8))(v28, v30);
  v57 = v35;
  v58 = v37;
  if (v52)
  {
    sub_18E1A6F40();
    sub_18E1A6F20();
    v29(v21, v12);
    v39 = sub_18E1A6E70();
    if (sub_18E15D690(v11, 1, v39) == 1)
    {
      sub_18E18CBB8(v11, &qword_1EABD1218, &qword_18E1B03F8);
    }

    else
    {
      v40 = sub_18E1A6DE0();
      v42 = v41;
      sub_18E1594D8();
      (*(v43 + 8))(v11, v39);
      v55 = 45;
      v56 = 0xE100000000000000;
      MEMORY[0x193ACAA20](v40, v42);

      MEMORY[0x193ACAA20](v55, v56);
    }
  }

  v44 = v51;
  if (v53)
  {
    sub_18E1A6F40();
    sub_18E1A6F10();
    v29(v17, v12);
    v45 = sub_18E1A6E50();
    if (sub_18E15D690(v44, 1, v45) == 1)
    {

      v31 = &qword_1EABD1240;
      v32 = &unk_18E1B0470;
      v33 = v44;
      goto LABEL_3;
    }

    v46 = sub_18E1A6DE0();
    v48 = v47;
    sub_18E1594D8();
    (*(v49 + 8))(v44, v45);
    v55 = 95;
    v56 = 0xE100000000000000;
    MEMORY[0x193ACAA20](v46, v48);

    MEMORY[0x193ACAA20](v55, v56);
  }

  return v57;
}

uint64_t sub_18E1975B8(uint64_t a1)
{
  sub_18E15AC1C(a1);
  v1(v4, v2);
  return sub_18E1A7CA0();
}

uint64_t sub_18E1975F8(uint64_t a1)
{
  sub_18E15AC1C(a1);
  v3 = v1(v2);
  sub_18E15AAC8(v3);

  return sub_18E1A7CA0();
}

uint64_t sub_18E19764C(uint64_t a1)
{
  PDUnit.rawValue.getter();
  sub_18E1A75C0();
}

uint64_t sub_18E1976AC(uint64_t a1)
{
  sub_18E1A75C0();
}

uint64_t sub_18E1977A0(uint64_t a1)
{
  sub_18E1A75C0();
}

uint64_t sub_18E197854(uint64_t a1)
{
  sub_18E1A75C0();
}

uint64_t sub_18E1978BC(uint64_t a1)
{
  sub_18E1A75C0();
}

uint64_t sub_18E197900(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_18E15A920();
      break;
    default:
      break;
  }

  sub_18E1A75C0();
}

uint64_t sub_18E1979B4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
      break;
    default:
      sub_18E15A920();
      break;
  }

  sub_18E1A75C0();
}

uint64_t sub_18E197B20(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E1A75C0();

  return sub_18E1A7CA0();
}

uint64_t sub_18E197B80(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E1A75C0();

  return sub_18E1A7CA0();
}

uint64_t sub_18E197C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_18E1A7C60();
  a3(v6, a2);
  return sub_18E1A7CA0();
}

uint64_t sub_18E197C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_18E1A7C60();
  v5 = a3(a2);
  sub_18E15AAC8(v5);

  return sub_18E1A7CA0();
}

uint64_t sub_18E197CB4(uint64_t a1)
{
  sub_18E1A7C60();
  v1 = PDUnit.rawValue.getter();
  sub_18E15AAC8(v1);

  return sub_18E1A7CA0();
}

uint64_t DenyListUtility.DenyList.init(reject:remove:replace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = 0;
  return result;
}

uint64_t DenyListUtility.DenyList.init(reject:remove:replace:regexReject:regexRemove:regexReplace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_18E197D54(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E1A79E0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18E197E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E197D54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_18E197E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E15D178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E197E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E197DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E197EB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E197DA4();
  *a1 = result;
  return result;
}

void *sub_18E197ED8@<X0>(void *a1@<X8>)
{
  result = sub_18E197DAC();
  *a1 = result;
  return result;
}

uint64_t sub_18E197F00(uint64_t a1)
{
  v2 = sub_18E15CF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E197F3C(uint64_t a1)
{
  v2 = sub_18E15CF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DenyListUtility.DenyList.encode(to:)(void *a1)
{
  v3 = sub_18E161880(&qword_1EABD1248, &unk_18E1B04B0);
  sub_18E159050();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v20 = v1[2];
  v21 = v10;
  v13 = v1[5];
  v18 = v1[4];
  v19 = v12;
  v17 = v13;
  sub_18E158E00(a1, a1[3]);
  v14 = sub_18E15CF68();

  sub_18E1A7CD0();
  v23 = v11;
  v22 = 0;
  sub_18E161880(&qword_1EABD08A0, &qword_18E1AB268);
  sub_18E15CFBC(&qword_1EABD1250, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_18E159258();
  sub_18E1A7B30();
  if (v14)
  {
  }

  else
  {
    v15 = v20;

    v23 = v21;
    v22 = 1;
    sub_18E159258();
    sub_18E1A7B30();
    v23 = v15;
    v22 = 2;
    sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
    sub_18E15D3CC(&qword_1ED8D96E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_18E15D134();
    sub_18E1A7B30();
    v23 = v19;
    v22 = 3;
    sub_18E159258();
    sub_18E1A7AE0();
    v23 = v18;
    v22 = 4;
    sub_18E159258();
    sub_18E1A7AE0();
    v23 = v17;
    v22 = 5;
    sub_18E15D134();
    sub_18E1A7AE0();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t static DenyListUtility.DenyList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((sub_18E183424(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((sub_18E183424(v2, v7) & 1) == 0)
  {
    return 0;
  }

  sub_18E16EBB8(v4, v9);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (sub_18E183424(v3, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (sub_18E183424(v6, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {

      sub_18E16EBB8(v5, v10);
      v14 = v13;

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

uint64_t DenyListUtility.DenyList.hash(into:)(const void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  sub_18E1838B4();
  sub_18E1838B4();
  sub_18E16EF58(a1, v4);
  if (v3)
  {
    sub_18E1A7C80();
    sub_18E1838B4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_18E1A7C80();
    if (v5)
    {
      goto LABEL_4;
    }

    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_18E1A7C80();
  sub_18E1838B4();
  if (!v5)
  {
    return sub_18E1A7C80();
  }

LABEL_4:
  sub_18E1A7C80();

  return sub_18E16EF58(a1, v5);
}

uint64_t DenyListUtility.DenyList.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_18E1A7C60();
  DenyListUtility.DenyList.hash(into:)(v4);
  return sub_18E1A7CA0();
}

uint64_t sub_18E19848C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 5);
  v6 = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  sub_18E1A7C60();
  DenyListUtility.DenyList.hash(into:)(v5);
  return sub_18E1A7CA0();
}

unint64_t sub_18E1984F0()
{
  result = qword_1EABD1268;
  if (!qword_1EABD1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DenyListUtility(_BYTE *result, int a2, int a3)
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

uint64_t sub_18E1985F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E198660()
{
  result = qword_1EABD1270;
  if (!qword_1EABD1270)
  {
    sub_18E169A64(&qword_1EABD1278, qword_18E1B0680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1270);
  }

  return result;
}

unint64_t sub_18E1986C8()
{
  result = qword_1EABD1280;
  if (!qword_1EABD1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1280);
  }

  return result;
}

unint64_t sub_18E198720()
{
  result = qword_1EABD0070;
  if (!qword_1EABD0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0070);
  }

  return result;
}

unint64_t sub_18E198778()
{
  result = qword_1EABD0078;
  if (!qword_1EABD0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0078);
  }

  return result;
}

uint64_t static Mergeable.merge(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a4;
  v35 = a5;
  v7 = sub_18E1A77A0();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v30 - v15;
  v32 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v30 - v22;
  v24 = *(v8 + 16);
  v31 = a1;
  v24(v16, a1, v7);
  if (sub_18E15D690(v16, 1, a3) == 1)
  {
    v12 = v16;
    v25 = v33;
LABEL_5:
    v26 = v35;
    (*(v8 + 8))(v12, v7);
    return sub_18E198B10(v31, v25, a3, v26);
  }

  v30 = *(v32 + 32);
  v30(v23, v16, a3);
  v25 = v33;
  v24(v12, v33, v7);
  if (sub_18E15D690(v12, 1, a3) == 1)
  {
    (*(v32 + 8))(v23, a3);
    goto LABEL_5;
  }

  v30(v20, v12, a3);
  v28 = v35;
  (*(v34 + 8))(v23, v20, a3);
  v29 = *(v32 + 8);
  v29(v20, a3);
  v29(v23, a3);
  return sub_18E159EBC(v28, 0, 1, a3);
}

uint64_t sub_18E198B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a1;
  v34 = a4;
  v5 = sub_18E1A77A0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v31 - v21;
  v23 = *(v6 + 16);
  v23(v14, v33, v5);
  if (sub_18E15D690(v14, 1, a3) != 1)
  {
    v27 = *(v15 + 32);
    v27(v22, v14, a3);
    v26 = v34;
    v28 = v34;
    v29 = v22;
LABEL_6:
    v27(v28, v29, a3);
    v25 = 0;
    return sub_18E159EBC(v26, v25, 1, a3);
  }

  v24 = *(v6 + 8);
  v24(v14, v5);
  v23(v10, v32, v5);
  if (sub_18E15D690(v10, 1, a3) != 1)
  {
    v27 = *(v15 + 32);
    v27(v19, v10, a3);
    v26 = v34;
    v28 = v34;
    v29 = v19;
    goto LABEL_6;
  }

  v24(v10, v5);
  v25 = 1;
  v26 = v34;
  return sub_18E159EBC(v26, v25, 1, a3);
}

uint64_t sub_18E198DA0(uint64_t a1)
{
  v6 = sub_18E199800();
  v7 = sub_18E199808(&v32, a1, 0, 1, v6);
  v8 = *(a1 + 16);
  v9 = v32;
  if (v32 != v8)
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = sub_18E1A6C4C();
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      sub_18E1A7BA0();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_35;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_36;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    while (1)
    {
      sub_18E199F84(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v33 = v7;
      v34 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    v8 = sub_18E1A6C4C();
    v9 = v16;
    v1 = v17;
    v2 = v18;

    v19 = v2 >> 1;
    while (1)
    {
LABEL_14:
      if (v1 == v19)
      {
        swift_unknownObjectRelease();

        return v33;
      }

      if (v1 >= v19)
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = (v9 + 16 * v1);
      v3 = *v20;
      v2 = v20[1];
      ++v1;
      v21 = v33;
      v22 = v34;
      v23 = *(v34 + 16);
      if (!v33)
      {
        break;
      }

      sub_18E199E58(v3, v2, v22 + 32, v23, (v21 + 16), v21 + 32);
      v25 = v24;
      v4 = v26;

      if (v25)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v27 = (v34 + 40);
    v28 = v23 + 1;
    while (--v28)
    {
      v4 = (v27 + 2);
      if (*(v27 - 1) != v3 || *v27 != v2)
      {
        v30 = sub_18E1A7B90();
        v27 = v4;
        if ((v30 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v4 = 0;
LABEL_29:
    sub_18E199A0C(v3, v2, v4);
    goto LABEL_30;
  }

  return v7;
}

uint64_t static DenyListUtility.DenyList.merge(_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v27 = a1[5];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v30 = a2[5];
  v32 = *a1;

  sub_18E1992B4(v10);
  sub_18E198DA0(v32);
  v29 = v11;

  sub_18E1992B4(v12);
  sub_18E198DA0(v3);
  v28 = v13;

  v14 = sub_18E19922C(v8, v4);
  v15 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v33 = v16;

  sub_18E1992B4(v17);
  sub_18E198DA0(v33);
  v19 = v18;

  if (v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v15;
  }

  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = v15;
  }

  v34 = v20;

  sub_18E1992B4(v21);
  sub_18E198DA0(v34);
  v23 = v22;

  if (v27)
  {
    v24 = v27;
  }

  else
  {
    v24 = sub_18E1A7490();
  }

  if (v30)
  {
    v25 = v30;
  }

  else
  {
    v25 = sub_18E1A7490();
  }

  result = sub_18E19922C(v25, v24);
  *a3 = v29;
  a3[1] = v28;
  a3[2] = v14;
  a3[3] = v19;
  a3[4] = v23;
  a3[5] = result;
  return result;
}

uint64_t sub_18E19922C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_18E19A254(a1, sub_18E19A52C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_18E1992B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_18E199470(result, 1, sub_18E19EC5C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18E19939C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_18E199470(result, 1, sub_18E19EE28);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18E199470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_18E1994E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_18E161880(&qword_1EABD1288, &qword_18E1B07E0);
  v36 = v4;
  result = sub_18E1A79A0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_18E19979C(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_18E1A7C60();
    sub_18E1A75C0();
    result = sub_18E1A7CA0();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18E19979C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18E1AC6B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18E199808(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x193ACA4A0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = MEMORY[0x193ACA4B0]();
    sub_18E19A054(a2 + 32, v8, (v13 + 16), v13 + 32);
    *a1 = v14;
  }

  else if (v8 >= 2)
  {
    sub_18E1998D0(a2 + 32, v8);
    v13 = 0;
    *a1 = v15;
  }

  else
  {
    v13 = 0;
    *a1 = v8;
  }

  return v13;
}

void sub_18E1998D0(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_18E19B74C(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = v14 + 5;
    v9 = v14[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((sub_18E1A7B90() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = v14[2];
    v12 = v14[3];

    if (v11 >= v12 >> 1)
    {
      sub_18E19B74C(v12 > 1, v11 + 1, 1);
    }

    v14[2] = v11 + 1;
    v13 = &v14[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

void sub_18E199A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E19B74C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_18E19B74C(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x193ACA480](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v18 = MEMORY[0x193ACA4A0](v13 + 1);
    sub_18E199C30(v18, v16);
    return;
  }

  sub_18E199B70();
  if (*v4)
  {
    sub_18E199BC8((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E199B70()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_18E1A7060();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18E199C30(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_18E199C78(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_18E199C78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x193ACA4A0](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x193ACA4B0]();
    sub_18E199CF0(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_18E199D30(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_18E1A7C60();

        sub_18E1A75C0();
        v7 = sub_18E1A7CA0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_18E1A6FF0();

        if (v8)
        {
          while (1)
          {
            sub_18E1A7040();
          }
        }

        v7 = sub_18E1A7030();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_18E199E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_18E1A7C60();
  sub_18E1A75C0();
  result = sub_18E1A7CA0();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_18E1A7010();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_18E1A7B90())
        {
          break;
        }

        sub_18E1A7040();
        v11 = sub_18E1A7020();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_18E199F84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_18E161880(&qword_1EABD1290, &qword_18E1B07E8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_18E19A054(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v6 + 1;
    v7 = (v5 + 16 * v6);
    sub_18E1A7C60();

    sub_18E1A75C0();
    result = sub_18E1A7CA0();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_18E1A6FF0();

    while (1)
    {
      v8 = sub_18E1A7020();
      if (v9)
      {
        break;
      }

      v10 = (v5 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (sub_18E1A7B90() & 1) != 0)
      {
        return 0;
      }

      sub_18E1A7040();
    }

    sub_18E1A7030();
    result = 1;
    ++v6;
    v4 = a3;
    if (v14 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_18E19A208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_18E19A254(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  sub_18E19A570(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v20 = v48;
      v19 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_18E159728(v48, v49);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v47 & 1) == 0)
        {
          sub_18E161880(&qword_1EABD05A8, &qword_18E1AA660);
          sub_18E1A7950();
        }
      }

      else
      {
        sub_18E1994E8(v28, v47 & 1);
        v30 = sub_18E159728(v20, v19);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v54;
      if (v29)
      {
        v33 = (v32[7] + 16 * v25);
        v35 = *v33;
        v34 = v33[1];

        v36 = (v32[7] + 16 * v25);
        *v36 = v35;
        v36[1] = v34;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v32[6] + 16 * v25);
        *v37 = v20;
        v37[1] = v19;
        v38 = (v32[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v32[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v32[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_18E176834(v46);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18E1A7BB0();
  __break(1u);
  return result;
}

uint64_t sub_18E19A52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E19A208(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_18E19A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_18E19A5AC@<X0>(const void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x1D0uLL);
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v8, a1, sizeof(v8));
  for (i = 0; i != 464; i += 16)
  {
    *&__src[i] = vqsubq_u64(*&__dst[i], *&v8[i]);
  }

  return memcpy(a3, __src, 0x1D0uLL);
}

void *sub_18E19A680()
{
  v0 = proc_listallpids(0, 0);
  v1 = v0 + 100;
  if (__OFADD__(v0, 100))
  {
    goto LABEL_19;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  if ((v1 - 0x20000000) >> 30 != 3)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v4 = v3;
  v5 = proc_listallpids(v2, 4 * v1);
  v6 = sub_18E1A7490();
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v26 = v2;
  if (v5)
  {
    for (i = v5; i; --i)
    {
      v10 = *v2++;
      v9 = v10;
      if (proc_name(v10, v4, 0x400u) >= 1)
      {
        v11 = sub_18E1A7600();
        v13 = v12;
        swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_18E177A94(v9);
        if (__OFADD__(v7[2], (v15 & 1) == 0))
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v16 = v14;
        v17 = v15;
        sub_18E161880(&qword_1EABD1298, "\bH");
        if (sub_18E1A7940())
        {
          v18 = sub_18E177A94(v9);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_22;
          }

          v16 = v18;
        }

        if (v17)
        {
          v20 = (v7[7] + 16 * v16);
          *v20 = v11;
          v20[1] = v13;
        }

        else
        {
          v7[(v16 >> 6) + 8] |= 1 << v16;
          *(v7[6] + 4 * v16) = v9;
          v21 = (v7[7] + 16 * v16);
          *v21 = v11;
          v21[1] = v13;
          v22 = v7[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_18;
          }

          v7[2] = v24;
        }
      }
    }
  }

  MEMORY[0x193ACB8D0](v4, -1, -1);
  MEMORY[0x193ACB8D0](v26, -1, -1);
  return v7;
}

unint64_t sub_18E19A8C0(unint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  info = 0;
  if (!mach_timebase_info(&info))
  {
    if (is_mul_ok(a1, info.numer))
    {
      if (info.denom)
      {
        return a1 * info.numer / info.denom;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_18E1A7870();

  v3 = sub_18E1A7B70();
  MEMORY[0x193ACAA20](v3);

  result = sub_18E1A7970();
  __break(1u);
  return result;
}

void *MetricAggregator.__allocating_init(list:)(uint64_t a1)
{
  sub_18E1595A8();
  v2 = swift_allocObject();
  sub_18E15AAEC(MEMORY[0x1E69E7CC0], v4);
  *v2 = a1;
  return v2;
}

void *MetricAggregator.init(list:)(uint64_t a1)
{
  sub_18E15AAEC(MEMORY[0x1E69E7CC0], v4);
  *v1 = a1;
  return v1;
}

uint64_t MetricAggregator.__allocating_init()()
{
  sub_18E1595A8();
  v0 = swift_allocObject();
  MetricAggregator.init()();
  return v0;
}

uint64_t MetricAggregator.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for RusageMetricProvider();
  swift_allocObject();
  v1 = sub_18E19DE9C();
  swift_beginAccess();
  sub_18E19B6C0();
  v2 = *(*(v0 + 16) + 16);
  sub_18E19B70C(v2);
  sub_18E19B78C(v2, v1, (v0 + 16));
  swift_endAccess();
  return v0;
}

Swift::Void __swiftcall MetricAggregator.setup()()
{
  sub_18E159668(v0, v1, v2, v3, v4);
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    do
    {
      sub_18E19B7FC(v8, v11);
      sub_18E158E00(v11, v11[3]);
      v9 = sub_18E159278();
      v10(v9);
      sub_18E158EC4(v11);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

void sub_18E19AC30(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = (result + 32);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      v7 = *a2;
      v8 = *(*a2 + 16);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v7;
      if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v9))
      {
        sub_18E19EE28();
        v7 = v12;
        *a2 = v12;
        v11 = *(v12 + 24) >> 1;
      }

      if (*(v5 + 16))
      {
        if (v11 - *(v7 + 16) < v6)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v13 = *(v7 + 16);
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_17;
          }

          *(v7 + 16) = v15;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_15;
        }
      }

      *a2 = v7;
      ++v4;
      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

Swift::Void __swiftcall MetricAggregator.startCollection(readBackTime:)(Swift::Int readBackTime)
{
  sub_18E159668(readBackTime, v1, v2, v3, v4);
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;

    do
    {
      sub_18E19B7FC(v9, v12);
      v10 = v13;
      v11 = v14;
      sub_18E158E00(v12, v13);
      (*(v11 + 16))(readBackTime, v10, v11);
      sub_18E158EC4(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }
}

Swift::Void __swiftcall MetricAggregator.stopCollection()()
{
  sub_18E159668(v0, v1, v2, v3, v4);
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    do
    {
      sub_18E19B7FC(v8, v11);
      sub_18E158E00(v11, v11[3]);
      v9 = sub_18E159278();
      v10(v9);
      sub_18E158EC4(v11);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t MetricAggregator.runFilters()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = v1;

    sub_18E19B76C(0, v3, 0);
    v4 = v2 + 32;
    do
    {
      sub_18E19B7FC(v4, v11);
      v5 = v12;
      v6 = v13;
      sub_18E158E00(v11, v12);
      v7 = (*(v6 + 32))(v5, v6);
      sub_18E158EC4(v11);
      v14 = v1;
      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_18E19B76C(v8 > 1, v9 + 1, 1);
        v1 = v14;
      }

      *(v1 + 16) = v9 + 1;
      *(v1 + 8 * v9 + 32) = v7;
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  sub_18E19AC30(v1, &v15);

  return v15;
}

uint64_t MetricAggregator.__deallocating_deinit()
{

  v0 = sub_18E1595A8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Measurement.name.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Measurement.__allocating_init(name:metricProvider:variables:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Measurement.init(name:metricProvider:variables:)(a1, a2, a3, a4);
  return v8;
}

void *Measurement.init(name:metricProvider:variables:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = a1;
  v5[10] = a2;
  sub_18E19B7FC(a3, (v5 + 2));
  v5[11] = a4;
  swift_beginAccess();
  sub_18E19B7FC((v5 + 2), v11);
  sub_18E158E00(v11, v11[3]);
  v8 = sub_18E159278();
  v9(v8);
  sub_18E158EC4(a3);
  sub_18E158EC4(v11);
  return v5;
}

Swift::Void __swiftcall Measurement.startMeasurement()()
{
  *(v0 + 56) = CFAbsoluteTimeGetCurrent();
  sub_18E159668(v1, v2, v3, v4, v5);
  sub_18E19B7FC(v0 + 16, v8);
  v6 = v9;
  v7 = v10;
  sub_18E158E00(v8, v9);
  (*(v7 + 16))(0, v6, v7);
  sub_18E158EC4(v8);
}

Swift::Void __swiftcall Measurement.stopMeasurement()()
{
  *(v0 + 64) = CFAbsoluteTimeGetCurrent();
  sub_18E159668(v1, v2, v3, v4, v5);
  sub_18E19B7FC(v0 + 16, v8);
  v6 = v9;
  v7 = v10;
  sub_18E158E00(v8, v9);
  (*(v7 + 24))(v6, v7);
  sub_18E158EC4(v8);
}

unint64_t Measurement.getMeasuredTimeMetric()@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = (*(v1 + 64) - *(v1 + 56)) * 1000.0;
  *(a1 + 48) = MEMORY[0x1E69E63B0];
  *(a1 + 24) = v5;
  v6 = *(v1 + 88);

  result = sub_18E19B410(v6);
  *a1 = 2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 56) = result;
  return result;
}

unint64_t sub_18E19B410(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18E161880(&qword_1EABD12A0, &unk_18E1B08E0);
    v2 = sub_18E1A79B0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_18E177BE0(&v22, v24);
    sub_18E177BE0(v24, v25);
    sub_18E177BE0(v25, &v23);
    result = sub_18E159728(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      sub_18E158EC4(v17);
      result = sub_18E177BE0(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_18E177BE0(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t Measurement.deinit()
{
  sub_18E158EC4((v0 + 16));

  return v0;
}

uint64_t Measurement.__deallocating_deinit()
{
  Measurement.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

void sub_18E19B6C0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18E19ED28();
    *v0 = v3;
  }
}

void sub_18E19B70C(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_18E19ED28();
    *v1 = v2;
  }
}

uint64_t sub_18E19B78C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for RusageMetricProvider();
  v10 = &off_1F0105D78;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_18E15DD2C(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_18E19B7FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18E19B964(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E1A7530();
  v4 = v3;
  v5 = sub_18E1A7530();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E159688(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_18E19B9DC(uint64_t a1)
{
  v1 = PDUnit.rawValue.getter();
  v3 = v2;
  if (v1 == PDUnit.rawValue.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_18E1A7B90();
  }

  return v6 & 1;
}

uint64_t sub_18E19BA70(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7463656A6572;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7463656A6572;
  switch(v4)
  {
    case 1:
      v5 = 0x65766F6D6572;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6563616C706572;
      break;
    case 3:
      v5 = sub_18E15DA68() & 0xFFFFFFFFFFFFLL | 0x6A65000000000000;
      v6 = 7627621;
      goto LABEL_6;
    case 4:
      v5 = sub_18E15DA68() & 0xFFFFFFFFFFFFLL | 0x6D65000000000000;
      v6 = 6649455;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v5 = sub_18E15DA68() & 0xFFFFFFFFFFFFLL | 0x7065000000000000;
      v3 = 0xEC0000006563616CLL;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x65766F6D6572;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v2 = 0x6563616C706572;
      break;
    case 3:
      sub_18E15A92C();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x6A65000000000000;
      v9 = 7627621;
      goto LABEL_13;
    case 4:
      sub_18E15A92C();
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x6D65000000000000;
      v9 = 6649455;
LABEL_13:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      sub_18E15A92C();
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0x7065000000000000;
      v7 = 0xEC0000006563616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_18E159688(v5, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_18E19BBF4(char a1, uint64_t a2)
{
  v3 = 0xD000000000000024;
  v4 = "com.apple.openai.xcode";
  v5 = "com.apple.openai.xcode";
  switch(a1)
  {
    case 1:
      v5 = "ableAfterFirstUnlock";
      v3 = 0xD000000000000032;
      break;
    case 2:
      v5 = "lockThisDeviceOnly";
      v3 = 0xD000000000000020;
      break;
    case 3:
      v5 = "ableWhenUnlocked";
      v3 = 0xD00000000000002ELL;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000024;
  switch(a2)
  {
    case 1:
      v4 = "ableAfterFirstUnlock";
      v6 = 0xD000000000000032;
      break;
    case 2:
      v4 = "lockThisDeviceOnly";
      v6 = 0xD000000000000020;
      break;
    case 3:
      v4 = "ableWhenUnlocked";
      v6 = 0xD00000000000002ELL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E159688(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_18E19BD1C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "availabilityService";
  }

  else
  {
    v4 = "com.apple.openai";
  }

  if (a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = "com.apple.openai";
  }

  else
  {
    v6 = "availabilityService";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E159688(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_18E19BDB4(char a1, char a2)
{
  if (a1)
  {
    v2 = 7169121;
  }

  else
  {
    v2 = 7169633;
  }

  if (a2)
  {
    v3 = 7169121;
  }

  else
  {
    v3 = 7169633;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18E1A7B90();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18E19BE20(unsigned __int8 a1, uint64_t a2)
{
  v2 = 5461583;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5461583;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v3 = 0x800000018E1B1AF0;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x72657470616461;
      break;
    case 3:
      v5 = 0x6566615365646F63;
      v3 = 0xEA00000000007974;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000010;
      v6 = 0x800000018E1B1AF0;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x72657470616461;
      break;
    case 3:
      v2 = 0x6566615365646F63;
      v6 = 0xEA00000000007974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E159688(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_18E19BF64(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1265659764;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1265659764;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000012;
      v3 = 0x800000018E1B1A80;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x7268546E656B6F74;
      v3 = 0xEE00646C6F687365;
      break;
    case 4:
      v5 = 0x456564756C636E69;
      v6 = 0x73696A6F6DLL;
      goto LABEL_7;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x73656C706D6173;
      break;
    case 6:
      v3 = 0x800000018E1B1AC0;
      v5 = 0xD00000000000001DLL;
      break;
    case 7:
      v5 = 0x706552746E657665;
      v6 = 0x726574726FLL;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      v3 = 0x800000018E1B1A60;
      v5 = 0xD000000000000016;
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000012;
      v7 = 0x800000018E1B1A80;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x7268546E656B6F74;
      v7 = 0xEE00646C6F687365;
      break;
    case 4:
      v2 = 0x456564756C636E69;
      v8 = 0x73696A6F6DLL;
      goto LABEL_16;
    case 5:
      v7 = 0xE700000000000000;
      v2 = 0x73656C706D6173;
      break;
    case 6:
      v7 = 0x800000018E1B1AC0;
      v2 = 0xD00000000000001DLL;
      break;
    case 7:
      v2 = 0x706552746E657665;
      v8 = 0x726574726FLL;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      v7 = 0x800000018E1B1A60;
      v2 = 0xD000000000000016;
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_18E159688(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_18E19C1B0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_18E1A75B0();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *MetricData.init(unit:key:value:variables:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = sub_18E15AB10(a1, a2, a3, a4, a6);
  result = sub_18E177BE0(v8, v9);
  *(v6 + 56) = a5;
  return result;
}

uint64_t MetricData.init(unit:key:value:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_18E15AB10(a1, a2, a3, a4, a5);
  sub_18E16BBD0(v7, v8);
  v9 = sub_18E1A7490();
  result = sub_18E158EC4(a4);
  *(v5 + 56) = v9;
  return result;
}

GenerativeModelsFoundation::PDUnit_optional __swiftcall PDUnit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PDUnit.rawValue.getter()
{
  result = 5460038;
  switch(*v0)
  {
    case 1:
      return 0x73646E6F636553;
    case 2:
      return 0x636573696C6C694DLL;
    case 3:
      return 0x6F6365736F6E614ELL;
    case 4:
      v2 = 1818458435;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 5:
      return 0x7274736E49;
    case 6:
      v2 = 1819635530;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 7:
      return 0x6E4965676150;
    case 8:
      v3 = 0x6D6954555043;
      goto LABEL_18;
    case 9:
      return 0x6465726957;
    case 0xA:
      return 0x746E656469736552;
    case 0xB:
      return 0x646165524F49;
    case 0xC:
      v3 = 0x746972574F49;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 0xD:
      result = 0x746E756F43;
      break;
    case 0xE:
      result = 0x746E6563726550;
      break;
    case 0xF:
      result = 1701736270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E19C4D4@<X0>(uint64_t *a1@<X8>)
{
  result = PDUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E19C524(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = pdunit_create();
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E19C558()
{
  switch(*v0)
  {
    case 1:
      goto LABEL_17;
    case 2:
      goto LABEL_9;
    case 3:
      goto LABEL_11;
    case 4:
      result = *MEMORY[0x1E69E4878];
      if (*MEMORY[0x1E69E4878])
      {
        return result;
      }

      __break(1u);
LABEL_9:
      result = *MEMORY[0x1E69E4888];
      if (!*MEMORY[0x1E69E4888])
      {
        __break(1u);
LABEL_11:
        result = *MEMORY[0x1E69E4898];
        if (!*MEMORY[0x1E69E4898])
        {
          __break(1u);
LABEL_13:
          result = *MEMORY[0x1E69E4850];
          if (!*MEMORY[0x1E69E4850])
          {
            __break(1u);
LABEL_15:
            result = *MEMORY[0x1E69E4860];
            if (!*MEMORY[0x1E69E4860])
            {
              __break(1u);
LABEL_17:
              result = *MEMORY[0x1E69E48A8];
              if (!*MEMORY[0x1E69E48A8])
              {
                __break(1u);
LABEL_19:
                result = *MEMORY[0x1E69E4850];
                if (!*MEMORY[0x1E69E4850])
                {
                  __break(1u);
LABEL_21:
                  result = *MEMORY[0x1E69E4880];
                  if (!*MEMORY[0x1E69E4880])
                  {
                    __break(1u);
LABEL_23:
                    result = *MEMORY[0x1E69E4868];
                    if (!*MEMORY[0x1E69E4868])
                    {
                      __break(1u);
LABEL_25:
                      result = *MEMORY[0x1E69E4890];
                      if (!*MEMORY[0x1E69E4890])
                      {
                        __break(1u);
LABEL_27:
                        if (qword_1EABD0288 != -1)
                        {
                          swift_once();
                        }

                        result = qword_1EABDF6A0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 5:
      goto LABEL_21;
    case 6:
      goto LABEL_23;
    case 7:
      goto LABEL_13;
    case 8:
      goto LABEL_25;
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
      result = *MEMORY[0x1E69E4870];
      if (*MEMORY[0x1E69E4870])
      {
        return result;
      }

      __break(1u);
LABEL_4:
      if (qword_1EABD0290 != -1)
      {
        swift_once();
      }

      result = qword_1EABDF6A8;
      break;
    case 0xD:
      goto LABEL_27;
    case 0xE:
      goto LABEL_4;
    case 0xF:
      goto LABEL_19;
    default:
      goto LABEL_15;
  }

  return result;
}

uint64_t PerfdataWriter.__allocating_init(filePath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PerfdataWriter.init(filePath:)(a1, a2);
  return v4;
}

void PerfdataWriter.init(filePath:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if ((*&Current & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (Current <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (Current >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_18E1A7B70();
  sub_18E1A75A0();
  sub_18E1A75A0();

  v6 = pdwriter_open();

  *(v2 + 16) = v6;
  if (v6)
  {
  }

  else
  {
    sub_18E1A7870();

    MEMORY[0x193ACAA20](a1, a2);

    v7 = sub_18E1A75A0();

    perror((v7 + 32));
  }
}

uint64_t PerfdataWriter.addMetric(metric:prefix:moreVariables:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38[3] = a4;
  v9 = sub_18E1A7570();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E16BBD0((a1 + 24), &v42);
  v42 = sub_18E1A7580();
  v43 = v14;
  sub_18E1A7550();
  v38[6] = sub_18E15D574();
  v15 = sub_18E1A77C0();
  v16 = *(v10 + 8);
  v38[8] = v9;
  v38[7] = v10 + 8;
  v38[5] = v16;
  v16(v13, v9);

  if (!v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = sub_18E19C1B0(v15);
  v20 = v19;
  v42 = 0;
  v43 = 0xE000000000000000;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    a2 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x193ACAA20](a2, v21);

  MEMORY[0x193ACAA20](*(a1 + 1), *(a1 + 2));
  v22 = v43;
  result = sub_18E19B9DC(*a1);
  v23 = *(v5 + 16);
  if (result)
  {
    if (!v23)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    LOBYTE(v42) = *a1;
    sub_18E19C558();
    sub_18E1A75A0();
    pdwriter_new_value();

    if (!*(v5 + 16))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_18E1A75A0();
    pdwriter_record_variable_str();
    goto LABEL_12;
  }

  if (!v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  LOBYTE(v42) = *a1;
  sub_18E19C558();

  result = sub_18E19CF3C(v18, v20);
  if ((v24 & 1) == 0)
  {
    sub_18E1A75A0();
    pdwriter_new_value();
LABEL_12:

    v25 = *(a1 + 7);
    v39 = v5;
    v38[2] = v20;
    v38[1] = v22;
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = sub_18E1A7490();
    }

    v38[4] = v26;
    v27 = v26 + 64;
    sub_18E1590B8();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;

    v33 = 0;
    if (v30)
    {
      while (1)
      {
        v34 = v33;
LABEL_21:
        v30 &= v30 - 1;
        sub_18E15D7D0(v34);
        sub_18E15A344();
LABEL_22:
        sub_18E15AC3C();
        result = sub_18E177BE0(v44, v41);
        if (!*(v39 + 16))
        {
          break;
        }

        sub_18E16BBD0(v41, v40);
        v40[0] = sub_18E1A7580();
        v40[1] = v35;
        sub_18E1A7550();
        sub_18E1A77C0();
        v36 = sub_18E159288();
        v37(v36);

        if (&vars0 == 240)
        {
          goto LABEL_29;
        }

        sub_18E1A75A0();

        pdwriter_record_variable_str();
        sub_18E158EC4(v41);

        if (!v30)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v32)
        {
          v30 = 0;
          memset(v41, 0, sizeof(v41));
          goto LABEL_22;
        }

        v30 = *(v27 + 8 * v34);
        ++v33;
        if (v30)
        {
          v33 = v34;
          goto LABEL_21;
        }
      }

      __break(1u);
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18E19CF3C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_18E19D3AC(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall PerfdataWriter.finalize()()
{
  if (*(v0 + 16))
  {
    pdwriter_close();
    *(v0 + 16) = 0;
  }
}

uint64_t PerfdataWriter.__deallocating_deinit()
{
  PerfdataWriter.finalize()();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_18E19D014()
{
  result = qword_1EABD12A8;
  if (!qword_1EABD12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD12A8);
  }

  return result;
}

uint64_t sub_18E19D0B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18E19D0F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PDUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PDUnit(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E19D340@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_18E19D3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_18E1A7860();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_18E19D4C0(unint64_t a1)
{
  result = sub_18E19E9A4(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193ACACC0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = sub_18E19E440();
    sub_18E19939C(v5);
  }

  return result;
}

uint64_t sub_18E19D58C()
{
  sub_18E19DAB8();

  return sub_18E19D5FC();
}

uint64_t sub_18E19D5B8()
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_18E19D4C0(*(v0 + 16));
  return v2;
}

uint64_t sub_18E19D5FC()
{
  v75 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if ((*&Current & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (Current <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  if (Current >= 9.22337204e18)
  {
    goto LABEL_45;
  }

  v2 = *(v0 + 16);
  result = sub_18E19E9A4(v2);
  v62 = result;
  if (!result)
  {
    return result;
  }

  v4 = 0;
  v61 = v2 & 0xC000000000000001;
  v59 = v2 + 32;
  v70 = Current;
  v66 = 0x800000018E1B2FC0;
  *v64 = xmmword_18E1AB270;
  v60 = v2;
  do
  {
    sub_18E19E980(v4, v61 == 0, v2);
    if (v61)
    {
      v5 = MEMORY[0x193ACACC0](v4, v2);
    }

    else
    {
      v5 = *(v59 + 8 * v4);
    }

    v6 = __OFADD__(v4, 1);
    v7 = v4 + 1;
    if (v6)
    {
      goto LABEL_42;
    }

    v63 = v7;
    swift_beginAccess();
    v8 = *(v5 + 32);
    v11 = *(v8 + 64);
    v10 = v8 + 64;
    v9 = v11;
    v12 = 1 << *(*(v5 + 32) + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v69 = *(v5 + 32);

    v16 = 0;
    v67 = v15;
    v68 = v10;
    if (v14)
    {
      while (1)
      {
LABEL_18:
        v18 = *(*(v69 + 48) + ((v16 << 8) | (4 * __clz(__rbit64(v14)))));
        bzero(buffer, 0x1D0uLL);
        if (proc_pid_rusage(v18, 6, buffer))
        {
          sub_18E161880(&qword_1EABD0930, &qword_18E1B0B10);
          v19 = swift_allocObject();
          *(v19 + 16) = *v64;
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_18E1A7870();

          __dst[0] = 0xD000000000000038;
          __dst[1] = v66;
          v74 = v18;
          v20 = sub_18E1A7B70();
          MEMORY[0x193ACAA20](v20);

          v21 = __dst[0];
          v22 = __dst[1];
          *(v19 + 56) = MEMORY[0x1E69E6158];
          *(v19 + 32) = v21;
          *(v19 + 40) = v22;
          sub_18E1A006C(v19);
        }

        memcpy(__dst, buffer, sizeof(__dst));
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v5 + 32);
        *(v5 + 32) = 0x8000000000000000;
        sub_18E177A94(v18);
        sub_18E15A37C();
        if (__OFADD__(v25, v26))
        {
          break;
        }

        v27 = v23;
        v28 = v24;
        sub_18E161880(&qword_1EABD12E0, &qword_18E1B0B28);
        if (sub_18E1A7940())
        {
          v29 = sub_18E177A94(v18);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_46;
          }

          v27 = v29;
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = v5;
        v32 = v71;
        v33 = *(*(v71 + 56) + 8 * v27);
        swift_isUniquelyReferenced_nonNull_native();
        sub_18E177ADC(v70);
        sub_18E15A37C();
        if (__OFADD__(v36, v37))
        {
          goto LABEL_40;
        }

        v38 = v34;
        v39 = v35;
        sub_18E161880(&qword_1EABD12E8, &qword_18E1B0B30);
        LODWORD(v40) = sub_18E1A7940();
        if (v40)
        {
          v40 = sub_18E177ADC(v70);
          if ((v39 & 1) != (v41 & 1))
          {
LABEL_46:
            result = sub_18E1A7BB0();
            __break(1u);
            return result;
          }

          v38 = v40;
        }

        if (v39)
        {
          sub_18E15D660(v40, v41, v42, v43, v44, v45, v46, v47, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v65, v66, v67, v68, v69, v70, v33, v71, __dst[0]);
        }

        else
        {
          sub_18E15B890(v33 + 8 * (v38 >> 6));
          *(*(v33 + 48) + 8 * v38) = v70;
          sub_18E15D660(v48, v49, v50, v51, v52, v53, v54, v55, v58, v59, v60, v61, v62, v63, v64[0], v64[1], v65, v66, v67, v68, v69, v70, v33, v71, __dst[0]);
          v56 = *(v33 + 16);
          v6 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v6)
          {
            goto LABEL_41;
          }

          *(v33 + 16) = v57;
        }

        v14 &= v14 - 1;
        *(*(v32 + 56) + 8 * v27) = v33;
        *(v31 + 32) = v32;
        v5 = v31;
        swift_endAccess();
        v15 = v67;
        v10 = v68;
        if (!v14)
        {
          goto LABEL_14;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
LABEL_14:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_18;
      }
    }

    v4 = v63;
    v2 = v60;
  }

  while (v63 != v62);
  return result;
}

uint64_t sub_18E19DAB8()
{
  type metadata accessor for BenchmarkUtilities();
  v1 = sub_18E19A680();
  v31 = *(v0 + 16);
  v32 = sub_18E19E9A4(v31);
  v2 = 0;
  v30 = v31 & 0xC000000000000001;
  v3 = v1 + 8;
  v34 = v1 + 8;
  v35 = v1;
LABEL_2:
  if (v2 == v32)
  {
  }

  sub_18E19E980(v2, v30 == 0, v31);
  if (v30)
  {
    v37 = MEMORY[0x193ACACC0](v2, v31);
  }

  else
  {
    v37 = *(v31 + 32 + 8 * v2);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (!v4)
  {
    v33 = v5;
    v6 = 1 << *(v35 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v35[8];
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (!v8)
    {
LABEL_10:
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          v2 = v33;
          goto LABEL_2;
        }

        v8 = v3[v11];
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    while (1)
    {
LABEL_14:
      v36 = *(v35[6] + 4 * (__clz(__rbit64(v8)) | (v10 << 6)));
      v12 = sub_18E1A7590();
      v14 = v13;
      if (v12 == sub_18E1A7590() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_18E1A7B90();

        if ((v17 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      type metadata accessor for rusage_info_v6(0);
      v18 = sub_18E1A7490();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v37 + 32);
      *(v37 + 32) = 0x8000000000000000;
      sub_18E177A94(v36);
      sub_18E15A37C();
      if (__OFADD__(v21, v22))
      {
        goto LABEL_36;
      }

      v23 = v19;
      v24 = v20;
      sub_18E161880(&qword_1EABD12E0, &qword_18E1B0B28);
      if (sub_18E1A7940())
      {
        v25 = sub_18E177A94(v36);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_39;
        }

        v23 = v25;
      }

      if (v24)
      {
        *(v38[7] + 8 * v23) = v18;
      }

      else
      {
        sub_18E15B890(&v38[v23 >> 6]);
        *(v38[6] + 4 * v23) = v36;
        *(v38[7] + 8 * v23) = v18;
        v27 = v38[2];
        v4 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v4)
        {
          goto LABEL_37;
        }

        v38[2] = v28;
      }

      *(v37 + 32) = v38;
      swift_endAccess();
      v3 = v34;
LABEL_30:
      v8 &= v8 - 1;

      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_18E1A7BB0();
  __break(1u);
  return result;
}

uint64_t sub_18E19DE1C()
{

  return v0;
}

uint64_t sub_18E19DE44()
{
  sub_18E19DE1C();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E19DE9C()
{
  v1 = v0;
  sub_18E161880(&qword_1EABD1318, &qword_18E1B0B60);
  sub_18E15A268();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E1B0A80;
  type metadata accessor for RusageData();
  sub_18E15A268();
  v3 = swift_allocObject();
  sub_18E19DFD0(0x6E616D6C65646F6DLL, 0xED00006472656761);
  *(v2 + 32) = v3;
  sub_18E15A268();
  v4 = swift_allocObject();
  sub_18E19DFD0(0x6C6F6F746774, 0xE600000000000000);
  *(v2 + 40) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v5;
  return v1;
}

void *sub_18E19DFD0(uint64_t a1, uint64_t a2)
{
  sub_18E161880(&qword_1EABD12F0, &qword_18E1B0B38);
  v5 = MEMORY[0x1E69E7CC0];
  v2[4] = sub_18E1A7490();
  v2[5] = v5;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_18E19E040()
{
  type metadata accessor for rusage_info_v6(0);
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_18E1A7490();
  swift_beginAccess();
  v3 = *(v0 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v51 = 0;
  *v52 = xmmword_18E1AB270;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v3 + 56) + 8 * v11);
    v13 = *(v12 + 16);
    if (v13 < 3)
    {
      HIDWORD(v50) = *(*(v3 + 48) + 4 * v11);
      if (v13)
      {
        sub_18E161880(&qword_1EABD12C8, &qword_18E1B0B08);
        v1 = swift_allocObject();
        v15 = j__malloc_size(v1);
        v1[2] = v13;
        v1[3] = 2 * ((v15 - 32) / 472);
        v16 = sub_18E19FDA4(&v54, v1 + 4, v13, v12);
        v48 = v54;
        v49 = v16;
        v46 = v56;
        v47 = v55;
        v44 = v58;
        v45 = v57;
        swift_bridgeObjectRetain_n();
        sub_18E176834(v48);
        if (v49 != v13)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v54 = v1;
      sub_18E19F314(&v54);
      if (v51)
      {
        goto LABEL_35;
      }

      v17 = v54;
      v18 = *(v54 + 16);

      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = *(v17 + 16);
      if (!v19)
      {
        goto LABEL_30;
      }

      memcpy(__dst, (v17 + 40), sizeof(__dst));
      if (v18 > v19)
      {
        goto LABEL_31;
      }

      memcpy(v64, (v17 + 472 * v18 - 432), 0x1D0uLL);

      type metadata accessor for BenchmarkUtilities();
      sub_18E19A5AC(__dst, v64, v62);
      swift_isUniquelyReferenced_nonNull_native();
      v54 = v2;
      v20 = sub_18E177A94(HIDWORD(v50));
      LODWORD(v49) = v21;
      if (__OFADD__(*(v2 + 16), (v21 & 1) == 0))
      {
        goto LABEL_32;
      }

      v22 = v20;
      sub_18E161880(&qword_1EABD12C0, &qword_18E1B0B00);
      LODWORD(v23) = sub_18E1A7940();
      if (v23)
      {
        v23 = sub_18E177A94(HIDWORD(v50));
        v31 = v49;
        v1 = MEMORY[0x1E69E7CC0];
        if ((v49 & 1) != (v24 & 1))
        {
          goto LABEL_36;
        }

        v22 = v23;
      }

      else
      {
        v1 = MEMORY[0x1E69E7CC0];
        v31 = v49;
      }

      v2 = v54;
      if (v31)
      {
        sub_18E15D50C(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, v46, v47, v48, v49, v50, 0, v52[0], v52[1], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]);
      }

      else
      {
        sub_18E15B890(v54 + 8 * (v22 >> 6));
        *(*(v2 + 48) + 4 * v22) = HIDWORD(v50);
        sub_18E15D50C(v32, v33, v34, v35, v36, v37, v38, v39, v44, v45, v46, v47, v48, v49, v50, 0, v52[0], v52[1], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]);
        v40 = *(v2 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_34;
        }

        *(v2 + 16) = v42;
      }
    }

    else
    {
      sub_18E161880(&qword_1EABD0930, &qword_18E1B0B10);
      v14 = swift_allocObject();
      *(v14 + 16) = *v52;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 32) = 0xD000000000000036;
      *(v14 + 40) = 0x800000018E1B2F80;
      sub_18E1A006C(v14);
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  __break(1u);
LABEL_36:
  result = sub_18E1A7BB0();
  __break(1u);
  return result;
}

uint64_t sub_18E19E440()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 40) + 16))
  {
  }

  v2 = sub_18E19E040();
  v3 = 0;
  v4 = v2 + 64;
  v42 = v2;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v40 = v8;
  v41 = v2 + 64;
  if (v7)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v43 = (v7 - 1) & v7;
      v10 = __clz(__rbit64(v7)) | (v9 << 6);
      v11 = *(*(v42 + 48) + 4 * v10);
      v12 = (*(v42 + 56) + 464 * v10);
      v13 = v12[3];
      v55 = v12[2];
      v14 = v12[7];
      v57 = v12[6];
      v15 = v12[19];
      v49 = v12[8];
      v51 = v12[18];
      v45 = v12[32];
      v47 = v12[31];
      v16 = v12[42];
      v59 = v11;
      v17 = sub_18E1A7B70();
      v19 = v18;
      v20 = 0;
      v44 = v55 + v13;
      v21 = __CFADD__(v55, v13);
      v56 = v21;
      v53 = v15 >> 21;
      v54 = v16 / 0xF4240;
      v50 = v49 >> 21;
      v52 = v51 >> 21;
      v48 = v47 / 0xF4240;
      v46 = v45 / 0xF4240;
      while (v20 != 3)
      {
        v22 = byte_1F0101FC0[v20 + 32];
        v23 = v57;
        switch(v22)
        {
          case 2:
            v24 = 4;
            v23 = v46;
            break;
          case 3:
            v24 = 5;
            v23 = v48;
            break;
          case 4:
            v23 = v14 >> 21;
            goto LABEL_22;
          case 5:
            v23 = v50;
            goto LABEL_22;
          case 6:
            v23 = v52;
            goto LABEL_22;
          case 7:
            v23 = v53;
            goto LABEL_22;
          case 8:
            v24 = 6;
            v23 = v54;
            break;
          case 9:
LABEL_22:
            v24 = 13;
            break;
          case 10:
            type metadata accessor for BenchmarkUtilities();
            if (v56)
            {
              goto LABEL_35;
            }

            v24 = 8;
            v23 = sub_18E19A8C0(v44) / 0xF4240;
            break;
          default:
            goto LABEL_36;
        }

        LOBYTE(v58[0]) = v22;
        v25 = sub_18E1A7580();
        v27 = v26;
        v63 = MEMORY[0x1E69E76D8];
        v62 = v23;
        sub_18E161880(&qword_1EABD12B0, &qword_18E1B0AF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E1AB270;
        *(inited + 32) = 6580592;
        *(inited + 40) = 0xE300000000000000;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v17;
        *(inited + 56) = v19;

        v29 = sub_18E1A7490();
        LOBYTE(v59) = v24;
        v60 = v25;
        v61 = v27;
        v64 = v29;
        sub_18E19E924(&v59, v58);
        swift_beginAccess();
        v30 = *(v1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 40) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18E19EE28();
          v30 = v37;
          *(v1 + 40) = v37;
        }

        v32 = *(v30 + 16);
        if (v32 >= *(v30 + 24) >> 1)
        {
          sub_18E19EE28();
          v30 = v38;
        }

        *(v30 + 16) = v32 + 1;
        v33 = (v30 + (v32 << 6));
        v34 = v58[0];
        v35 = v58[1];
        v36 = v58[3];
        v33[4] = v58[2];
        v33[5] = v36;
        v33[2] = v34;
        v33[3] = v35;
        *(v1 + 40) = v30;
        swift_endAccess();
        sub_18E19EEFC(&v59);
        ++v20;
      }

      v3 = v9;
      v8 = v40;
      v4 = v41;
      v7 = v43;
    }

    while (v43);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_18E1A7970();
  __break(1u);
  return result;
}

uint64_t sub_18E19E8A0()
{

  return v0;
}

uint64_t sub_18E19E8D0()
{
  sub_18E19E8A0();
  sub_18E15A268();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_18E19E980(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18E19E9A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18E1A77F0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_18E19E9C8()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD1320, &qword_18E1B0B68);
    v7 = sub_18E15A4A0();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 32 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v10 = sub_18E161880(&qword_1EABD1328, &unk_18E1B0B70);
    sub_18E15AC54(v10);
  }
}

void sub_18E19EAC4()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(v7, v8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_18E15A0F8();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_18E19EB8C()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD0930, &qword_18E1B0B10);
    v7 = sub_18E15A4A0();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_18E15A0F8();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18E19EC5C()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD1290, &qword_18E1B07E8);
    v7 = sub_18E15A4A0();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_18E15A0F8();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18E19ED28()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD1308, &qword_18E1B0B50);
    v7 = swift_allocObject();
    sub_18E15D154(v7);
    v3[2] = v2;
    v3[3] = 2 * (v8 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || &v0[5 * v2 + 4] <= v3 + 4)
    {
      memmove(v3 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v10 = sub_18E161880(&qword_1EABD1310, &qword_18E1B0B58);
    sub_18E15AC54(v10);
  }
}

void sub_18E19EE28()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD12B8, &qword_18E1B0AF8);
    v7 = swift_allocObject();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_18E15A0F8();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_18E19EF50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18E161880(&qword_1EABD12D8, &qword_18E1B0B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_18E19F050()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD1290, &qword_18E1B07E8);
    v7 = sub_18E15A4A0();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_18E15A0F8();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18E19F11C()
{
  sub_18E15A93C();
  if (v4)
  {
    sub_18E15D800();
    if (v5 != v6)
    {
      sub_18E15DA78();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_18E1592A8();
    }
  }

  sub_18E1596A4();
  if (v3)
  {
    sub_18E161880(&qword_1EABD12F8, &qword_18E1B0B40);
    v7 = sub_18E15A4A0();
    sub_18E15D154(v7);
    sub_18E15AB2C(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v10 = sub_18E161880(&qword_1EABD1300, &qword_18E1B0B48);
    sub_18E15AC54(v10);
  }
}

char *sub_18E19F204(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18E161880(&qword_1EABD12C8, &qword_18E1B0B08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 472);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[472 * v8] <= v12)
    {
      memmove(v12, v13, 472 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 472 * v8);
  }

  return v10;
}

char *sub_18E19F314(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E19FF24(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_18E19F380(v5);
  *a1 = v2;
  return result;
}

char *sub_18E19F380(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18E1A7B60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E161880(&qword_1EABD12D0, &qword_18E1B0B18);
        v6 = sub_18E1A7690();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_18E19F568(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18E19F484(0, v2, 1, a1);
  }

  return result;
}

char *sub_18E19F484(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 472 * a3 - 472;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[33] < v10[92])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, v10 + 59, sizeof(v12));
        memcpy(v10 + 59, v10, 0x1D8uLL);
        result = memcpy(v10, v12, 0x1D8uLL);
        v10 -= 59;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 472;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_18E19F568(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v74 = result;
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 472 * v6 + 264);
        v10 = 472 * v8;
        v11 = *a3 + 472 * v8;
        v12 = *(v11 + 264);
        v13 = (v11 + 1208);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v18 = (v12 >= v9) ^ (v15 < *v13);
          v13 += 59;
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v12 >= v9)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 472 * v5 - 472;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v10), sizeof(__dst));
                memmove((v22 + v10), (v22 + v19), 0x1D8uLL);
                result = memcpy((v22 + v19), __dst, 0x1D8uLL);
              }

              ++v21;
              v19 -= 472;
              v10 += 472;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            return result;
          }

          if (v6 != v23)
          {
            __src = v7;
            v24 = *a3;
            v25 = *a3 + 472 * v6 - 472;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (v28[33] < v28[92])
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28 + 59, sizeof(__dst));
                memcpy(v28 + 59, v28, 0x1D8uLL);
                result = memcpy(v28, __dst, 0x1D8uLL);
                v28 -= 59;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 472;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = __src;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E19EF50(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v31 = *(v7 + 16);
      v30 = *(v7 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = sub_18E19EF50((v30 > 1), v31 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v32;
      v33 = v7 + 32;
      v34 = (v7 + 32 + 16 * v31);
      *v34 = v8;
      v34[1] = v6;
      __srca = *v74;
      if (!*v74)
      {
        goto LABEL_116;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          v36 = (v33 + 16 * (v32 - 1));
          v37 = (v7 + 16 * v32);
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v38 = *(v7 + 32);
            v39 = *(v7 + 40);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_57:
            if (v41)
            {
              goto LABEL_98;
            }

            v53 = *v37;
            v52 = v37[1];
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_101;
            }

            v57 = v36[1];
            v58 = v57 - *v36;
            if (__OFSUB__(v57, *v36))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v55, v58))
            {
              goto LABEL_106;
            }

            if (v55 + v58 >= v40)
            {
              if (v40 < v58)
              {
                v35 = v32 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v32 < 2)
          {
            goto LABEL_100;
          }

          v60 = *v37;
          v59 = v37[1];
          v48 = __OFSUB__(v59, v60);
          v55 = v59 - v60;
          v56 = v48;
LABEL_72:
          if (v56)
          {
            goto LABEL_103;
          }

          v62 = *v36;
          v61 = v36[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_105;
          }

          if (v63 < v55)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v35 - 1 >= v32)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v67 = v7;
          v68 = (v33 + 16 * (v35 - 1));
          v69 = *v68;
          v70 = (v33 + 16 * v35);
          v71 = v70[1];
          result = sub_18E19FBC0((*a3 + 472 * *v68), (*a3 + 472 * *v70), (*a3 + 472 * v71), __srca);
          if (v4)
          {
          }

          if (v71 < v69)
          {
            goto LABEL_93;
          }

          v72 = *(v67 + 16);
          if (v35 > v72)
          {
            goto LABEL_94;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v35 >= v72)
          {
            goto LABEL_95;
          }

          v32 = v72 - 1;
          result = memmove((v33 + 16 * v35), v70 + 2, 16 * (v72 - 1 - v35));
          v7 = v67;
          *(v67 + 16) = v72 - 1;
          if (v72 <= 2)
          {
            goto LABEL_86;
          }
        }

        v42 = v33 + 16 * v32;
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_96;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_97;
        }

        v49 = v37[1];
        v50 = v49 - *v37;
        if (__OFSUB__(v49, *v37))
        {
          goto LABEL_99;
        }

        v48 = __OFADD__(v40, v50);
        v51 = v40 + v50;
        if (v48)
        {
          goto LABEL_102;
        }

        if (v51 >= v45)
        {
          v65 = *v36;
          v64 = v36[1];
          v48 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v48)
          {
            goto LABEL_107;
          }

          if (v40 < v66)
          {
            v35 = v32 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*v74)
  {
    goto LABEL_117;
  }

  sub_18E19FA88(&v79, *v74, a3);
}

uint64_t sub_18E19FA88(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_18E19FD90(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_18E19FBC0((*a3 + 472 * *v4), (*a3 + 472 * *v9), (*a3 + 472 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_18E19FBC0(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = (a2 - __dst) / 472;
  v9 = (a3 - a2) / 472;
  if (v8 < v9)
  {
    if (__src != __dst || &__dst[472 * v8] <= __src)
    {
      memmove(__src, __dst, 472 * v8);
    }

    v11 = &v4[472 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*(v4 + 33) >= *(v6 + 33))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 472;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 472;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 472;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v13, 0x1D8uLL);
    goto LABEL_18;
  }

  if (__src != a2 || &a2[472 * v9] <= __src)
  {
    memmove(__src, a2, 472 * v9);
  }

  v11 = &v4[472 * v9];
LABEL_25:
  for (v5 -= 472; v11 > v4 && v6 > v7; v5 -= 472)
  {
    if (*(v6 - 26) >= *(v11 - 26))
    {
      v17 = v6 - 472;
      v14 = v5 + 472 == v6;
      v6 -= 472;
      if (!v14)
      {
        memmove(v5, v17, 0x1D8uLL);
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 472)
    {
      memmove(v5, v11 - 472, 0x1D8uLL);
    }

    v11 -= 472;
  }

LABEL_38:
  v18 = (v11 - v4) / 472;
  if (v6 != v4 || v6 >= &v4[472 * v18])
  {
    memmove(v6, v4, 472 * v18);
  }

  return 1;
}

void *sub_18E19FDA4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v20 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      memcpy(__dst, (*(a4 + 56) + 464 * v18), sizeof(__dst));
      *v11 = v19;
      result = memcpy(v11 + 1, __dst, 0x1D0uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 59;
      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for RusageDataFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1A0018()
{
  result = qword_1EABD1330;
  if (!qword_1EABD1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1330);
  }

  return result;
}

uint64_t sub_18E1A006C(uint64_t a1)
{

  return MEMORY[0x1EEE6B610](a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

uint64_t static InternalVariantArguments.arguments()()
{
  v0 = sub_18E1A6E00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18E1A7490();
  sub_18E1A6DF0();
  v6 = sub_18E1A6DE0();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (qword_1ED8DA2E8 != -1)
  {
    swift_once();
  }

  v9 = sub_18E1A7360();
  sub_18E1592FC(v9, qword_1ED8DA2F0);
  v10 = sub_18E1A7340();
  v11 = sub_18E1A7730();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_18E157000, v10, v11, "InternalVariantArguments: Defaulting to english language code.", v12, 2u);
    MEMORY[0x193ACB8D0](v12, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v5;
  sub_18E159364(v6, v8, 0x65676175676E616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  return v16;
}

_BYTE *storeEnumTagSinglePayload for InternalVariantArguments(_BYTE *result, int a2, int a3)
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

uint64_t _ClientInfoSessionTrackingConfig.sessionTrackingConifg.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ClientInfoSessionTrackingConfig._internalSessionTrackingConfig.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

GenerativeModels::_ClientInfoSessionTrackingConfig __swiftcall _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)(Swift::OpaquePointer sessionTrackingConifg, Swift::OpaquePointer _internalSessionTrackingConfig)
{
  v2->_rawValue = sessionTrackingConifg._rawValue;
  v2[1]._rawValue = _internalSessionTrackingConfig._rawValue;
  result._internalSessionTrackingConfig = _internalSessionTrackingConfig;
  result.sessionTrackingConifg = sessionTrackingConifg;
  return result;
}

void static _ClientInfoSessionTrackingConfig.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_18E16EBB8(*a1, *a2);
  if (v4)
  {

    sub_18E16EBB8(v2, v3);
  }
}

uint64_t sub_18E1A0434(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000018E1B3000 == a2;
  if (v3 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000018E1B3020 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

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

unint64_t sub_18E1A0508(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_18E1A0548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1A0434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E1A0570(uint64_t a1)
{
  v2 = sub_18E1A0788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A05AC(uint64_t a1)
{
  v2 = sub_18E1A0788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ClientInfoSessionTrackingConfig.encode(to:)(void *a1)
{
  v3 = sub_18E161880(&qword_1EABD1338, &unk_18E1B0C20);
  sub_18E159050();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  sub_18E158E00(a1, a1[3]);
  v11 = sub_18E1A0788();

  sub_18E1A7CD0();
  v15 = v10;
  v14 = 0;
  sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
  sub_18E15D3CC(&qword_1ED8D96E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_18E15D810();

  if (!v11)
  {
    v15 = v13;
    v14 = 1;
    sub_18E15D810();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_18E1A0788()
{
  result = qword_1EABD1340;
  if (!qword_1EABD1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1340);
  }

  return result;
}

uint64_t _ClientInfoSessionTrackingConfig.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_18E16EF58(a1, v3);

  return sub_18E16EF58(a1, v4);
}

uint64_t _ClientInfoSessionTrackingConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  sub_18E16EF58(v4, v1);
  sub_18E16EF58(v4, v2);
  return sub_18E1A7CA0();
}

uint64_t _ClientInfoSessionTrackingConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD1348, &qword_18E1B0C30);
  sub_18E159050();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  sub_18E158E00(a1, a1[3]);
  sub_18E1A0788();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  v16 = a2;
  sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
  v17 = 0;
  sub_18E15D3CC(&qword_1ED8D9968, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_18E1592B8();
  v12 = v18;
  v17 = 1;
  sub_18E1592B8();
  (*(v7 + 8))(v11, v5);
  v13 = v18;
  v14 = v16;
  *v16 = v12;
  v14[1] = v13;

  sub_18E158EC4(a1);
}

uint64_t sub_18E1A0AA0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18E1A7C60();
  sub_18E16EF58(v5, v2);
  sub_18E16EF58(v5, v3);
  return sub_18E1A7CA0();
}

uint64_t sub_18E1A0AF4()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9B98);
  sub_18E1592FC(v0, qword_1ED8D9B98);
  return sub_18E1A7410();
}

void *GenerativeConfigurationProtocol._internalSessionTrackingConfig.getter()
{
  if (qword_1ED8D9B90 != -1)
  {
    sub_18E1596B4(&qword_1ED8D9B90);
  }

  v3 = sub_18E1A7400();
  sub_18E1592FC(v3, qword_1ED8D9B98);

  return sub_18E1A7420();
}

uint64_t GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8D9B90 != -1)
  {
    sub_18E1596B4(&qword_1ED8D9B90);
  }

  v3 = sub_18E1A7400();
  sub_18E1592FC(v3, qword_1ED8D9B98);
  return sub_18E1A7430();
}

unint64_t sub_18E1A0C80()
{
  result = qword_1EABD1350;
  if (!qword_1EABD1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _ClientInfoSessionTrackingConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E1A0DC4()
{
  result = qword_1EABD1358;
  if (!qword_1EABD1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1358);
  }

  return result;
}

unint64_t sub_18E1A0E1C()
{
  result = qword_1EABD1360;
  if (!qword_1EABD1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1360);
  }

  return result;
}

unint64_t sub_18E1A0E74()
{
  result = qword_1EABD1368;
  if (!qword_1EABD1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1368);
  }

  return result;
}

uint64_t sub_18E1A0EC8()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1ED8D94D0);
  v1 = sub_18E1592FC(v0, qword_1ED8D94D0);
  if (qword_1ED8DA2E8 != -1)
  {
    swift_once();
  }

  v2 = sub_18E1592FC(v0, qword_1ED8DA2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18E1A11D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E1A7360();
  sub_18E16BD84(v5, a2);
  sub_18E1592FC(v5, a2);
  return sub_18E1A7350();
}

uint64_t sub_18E1A1270()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1EABCFD78);
  sub_18E1592FC(v0, qword_1EABCFD78);
  return sub_18E1A7350();
}

_BYTE *sub_18E1A1320(_BYTE *result, int a2, int a3)
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

uint64_t SelfAttention.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_18E1A1424(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E1A14B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1A1424(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E1A14DC(uint64_t a1)
{
  v2 = sub_18E1A1680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A1518(uint64_t a1)
{
  v2 = sub_18E1A1680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelfAttention.encode(to:)(void *a1)
{
  sub_18E161880(&qword_1EABD13A0, &qword_18E1B0EC0);
  sub_18E1596D4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - v7;
  sub_18E158E00(a1, a1[3]);
  sub_18E1A1680();
  sub_18E1A7CD0();
  sub_18E1A7B00();
  return (*(v4 + 8))(v8, v1);
}

unint64_t sub_18E1A1680()
{
  result = qword_1EABD13A8;
  if (!qword_1EABD13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13A8);
  }

  return result;
}

uint64_t SelfAttention.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18E161880(&qword_1EABD13B0, &qword_18E1B0EC8);
  sub_18E1596D4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  sub_18E158E00(a1, a1[3]);
  sub_18E1A1680();
  sub_18E1A7CC0();
  if (!v2)
  {
    v12 = sub_18E1A7A50();
    v14 = v13;
    (*(v7 + 8))(v11, v3);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_18E158EC4(a1);
}

unint64_t sub_18E1A183C()
{
  result = qword_1EABD13B8;
  if (!qword_1EABD13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13B8);
  }

  return result;
}

unint64_t sub_18E1A1894()
{
  result = qword_1EABD13C0;
  if (!qword_1EABD13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13C0);
  }

  return result;
}

unint64_t sub_18E1A18EC()
{
  result = qword_1EABD13C8;
  if (!qword_1EABD13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13C8);
  }

  return result;
}

uint64_t sub_18E1A1990(uint64_t a1)
{
  v2 = sub_18E1A1BA0();

  return MEMORY[0x1EEE30290](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SelfAttention.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_18E1A1A9C()
{
  result = qword_1EABD13D0;
  if (!qword_1EABD13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13D0);
  }

  return result;
}

unint64_t sub_18E1A1AF4()
{
  result = qword_1EABD13D8;
  if (!qword_1EABD13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13D8);
  }

  return result;
}

unint64_t sub_18E1A1B4C()
{
  result = qword_1EABD13E0;
  if (!qword_1EABD13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13E0);
  }

  return result;
}

unint64_t sub_18E1A1BA0()
{
  result = qword_1EABD13E8;
  if (!qword_1EABD13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD13E8);
  }

  return result;
}

uint64_t static PromptTemplate.ModelBundleID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  sub_18E1A6F90();
  sub_18E159050();
  v56 = v4;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  sub_18E15A808();
  v53 = (v7 - v6);
  sub_18E161880(&qword_1EABD1128, &unk_18E1B10E0);
  sub_18E159050();
  v54 = v9;
  v55 = v8;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - v12;
  v14 = sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
  sub_18E159050();
  v58 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_18E1A5038();
  type metadata accessor for PromptTemplate.ModelBundleID(v18);
  sub_18E159098();
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v53 - v29;
  sub_18E161880(&qword_1EABD13F0, &qword_18E1B10F0);
  sub_18E159074();
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v53 - v34;
  v36 = *(v33 + 56);
  sub_18E1A45CC(v59, &v53 - v34, type metadata accessor for PromptTemplate.ModelBundleID);
  sub_18E1A45CC(v60, &v35[v36], type metadata accessor for PromptTemplate.ModelBundleID);
  sub_18E15A234();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18E1596EC();
      sub_18E1A45CC(v35, v27, v38);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v54;
        v39 = v55;
        (*(v54 + 32))(v13, &v35[v36], v55);
        sub_18E1A6FA0();
        sub_18E1A21B4(&qword_1ED8DA2A0, MEMORY[0x1E69B2460], MEMORY[0x1E69B2458]);
        v41 = sub_18E1A6FB0();
        v42 = *(v40 + 8);
        v42(v13, v39);
        v42(v27, v39);
LABEL_13:
        sub_18E15A948();
        sub_18E1A4628(v35, v51);
        return v41 & 1;
      }

      (*(v54 + 8))(v27, v55);
    }

    else
    {
      sub_18E1596EC();
      sub_18E1A45CC(v35, v23, v45);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v47 = v56;
        v46 = v57;
        v48 = v53;
        (*(v56 + 32))(v53, &v35[v36], v57);
        v41 = MEMORY[0x193ACA3B0](v23, v48);
        v49 = *(v47 + 8);
        v49(v48, v46);
        v49(v23, v46);
        goto LABEL_13;
      }

      (*(v56 + 8))(v23, v57);
    }
  }

  else
  {
    v43 = v58;
    sub_18E1596EC();
    sub_18E1A45CC(v35, v30, v44);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v43 + 32))(v2, &v35[v36], v14);
      sub_18E1A6FE0();
      sub_18E1A21B4(&qword_1ED8DA288, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
      v41 = sub_18E1A6FB0();
      v50 = *(v43 + 8);
      v50(v2, v14);
      v50(v30, v14);
      goto LABEL_13;
    }

    (*(v43 + 8))(v30, v14);
  }

  sub_18E1A214C(v35);
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_18E1A214C(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD13F0, &qword_18E1B10F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E1A21B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E1A21FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E75426D6C6CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018E1B2C50 == a2;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000018E1B3180 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E1A2320(char a1)
{
  if (!a1)
  {
    return 0x6C646E75426D6C6CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000013;
}

uint64_t sub_18E1A2384(uint64_t a1)
{
  v2 = sub_18E1A2C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A23C0(uint64_t a1)
{
  v2 = sub_18E1A2C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1A2404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1A21FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E1A242C(uint64_t a1)
{
  v2 = sub_18E1A2BC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A2468(uint64_t a1)
{
  v2 = sub_18E1A2BC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1A24A4(uint64_t a1)
{
  v2 = sub_18E1A2CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A24E0(uint64_t a1)
{
  v2 = sub_18E1A2CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1A251C(uint64_t a1)
{
  v2 = sub_18E1A2C1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A2558(uint64_t a1)
{
  v2 = sub_18E1A2C1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTemplate.ModelBundleID.encode(to:)(uint64_t a1)
{
  sub_18E161880(&qword_1EABD13F8, &qword_18E1B10F8);
  sub_18E159050();
  v79 = v2;
  v80 = v1;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_18E15A1EC();
  v76 = v5;
  sub_18E1A6F90();
  sub_18E159050();
  v77 = v7;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  sub_18E15A808();
  v75 = v10 - v9;
  sub_18E161880(&qword_1EABD1400, &qword_18E1B1100);
  sub_18E159050();
  v73 = v12;
  v74 = v11;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_18E15A1EC();
  v72 = v15;
  sub_18E161880(&qword_1EABD1128, &unk_18E1B10E0);
  sub_18E159050();
  v70 = v17;
  v71 = v16;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15A1EC();
  v69 = v20;
  sub_18E161880(&qword_1EABD1408, &qword_18E1B1108);
  sub_18E159050();
  v67 = v22;
  v68 = v21;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v65 - v25;
  v27 = sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
  sub_18E159050();
  v66 = v28;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v65 - v31;
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_18E15A808();
  v37 = v36 - v35;
  sub_18E161880(&qword_1EABD1410, &qword_18E1B1110);
  sub_18E159050();
  v82 = v39;
  v83 = v38;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v65 - v42;
  v44 = sub_18E1598D4();
  sub_18E158E00(v44, v45);
  sub_18E1A2BC8();
  sub_18E1A7CD0();
  sub_18E1596EC();
  sub_18E1A45CC(v81, v37, v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = v69;
      v48 = v70;
      v50 = v71;
      (*(v70 + 32))(v69, v37, v71);
      sub_18E15C56C();
      sub_18E1A2C70();
      v51 = v72;
      sub_18E15D530(&type metadata for PromptTemplate.ModelBundleID.AssetBackedLLMBundleCodingKeys, &v85);
      sub_18E15A47C(&qword_1EABD01D0, &qword_1EABD1128, &unk_18E1B10E0);
      v52 = v74;
      sub_18E1A7B30();
      (*(v73 + 8))(v51, v52);
      (*(v48 + 8))(v49, v50);
    }

    else
    {
      v58 = v77;
      v57 = v78;
      v59 = v75;
      (*(v77 + 32))(v75, v37, v78);
      v86 = 2;
      sub_18E1A2C1C();
      v60 = v76;
      sub_18E15D530(&type metadata for PromptTemplate.ModelBundleID.ResourceBundleQueryCodingKeys, &v86);
      sub_18E15DA84();
      sub_18E1A21B4(v61, v62, MEMORY[0x1E69B2448]);
      v63 = v80;
      sub_18E1A7B30();
      (*(v79 + 8))(v60, v63);
      (*(v58 + 8))(v59, v57);
    }
  }

  else
  {
    v53 = v66;
    v54 = sub_18E15BCC8();
    v55(v54);
    v84 = 0;
    sub_18E1A2CC4();
    sub_18E15D530(&type metadata for PromptTemplate.ModelBundleID.LlmBundleCodingKeys, &v84);
    sub_18E15A47C(&qword_1EABCFEB8, &qword_1EABD1130, &qword_18E1AFBB0);
    v56 = v68;
    sub_18E1A7B30();
    (*(v67 + 8))(v26, v56);
    (*(v53 + 8))(v32, v27);
  }

  return (*(v82 + 8))(v43, v37);
}

unint64_t sub_18E1A2BC8()
{
  result = qword_1ED8D9750;
  if (!qword_1ED8D9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9750);
  }

  return result;
}

unint64_t sub_18E1A2C1C()
{
  result = qword_1EABD0180;
  if (!qword_1EABD0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0180);
  }

  return result;
}

unint64_t sub_18E1A2C70()
{
  result = qword_1EABD0178;
  if (!qword_1EABD0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0178);
  }

  return result;
}

unint64_t sub_18E1A2CC4()
{
  result = qword_1EABCFE80;
  if (!qword_1EABCFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE80);
  }

  return result;
}

uint64_t PromptTemplate.ModelBundleID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  sub_18E161880(&qword_1EABD1418, &qword_18E1B1118);
  sub_18E159050();
  v96 = v3;
  v97 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15A1EC();
  v103 = v7;
  sub_18E161880(&qword_1EABD1420, &qword_18E1B1120);
  sub_18E159050();
  v94 = v8;
  v95 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A1EC();
  v102 = v12;
  sub_18E161880(&qword_1EABD1428, &qword_18E1B1128);
  sub_18E159050();
  v92 = v14;
  v93 = v13;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15A1EC();
  v99 = v17;
  sub_18E161880(&qword_1EABD1430, &unk_18E1B1130);
  sub_18E159050();
  v100 = v19;
  v101 = v18;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v85 - v22;
  v24 = type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159098();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v85 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v85 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v85 - v39;
  v104 = a1;
  v41 = sub_18E1598D4();
  sub_18E158E00(v41, v42);
  sub_18E1A2BC8();
  v43 = v105;
  sub_18E1A7CC0();
  if (v43)
  {
    return sub_18E158EC4(v104);
  }

  v88 = v33;
  v89 = v37;
  v90 = v29;
  v91 = v40;
  v105 = v24;
  v44 = v101;
  v45 = v23;
  v46 = sub_18E1A7AA0();
  result = sub_18E15AF18(v46, 0);
  if (v49 == v50 >> 1)
  {
LABEL_9:
    v61 = sub_18E1A78C0();
    swift_allocError();
    v63 = v62;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v63 = v105;
    sub_18E1A7A00();
    sub_18E1A78A0();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_18E1A502C();
    v64(v45, v44);
    return sub_18E158EC4(v104);
  }

  v87 = 0;
  if (v49 >= (v50 >> 1))
  {
    __break(1u);
  }

  else
  {
    v51 = *(v48 + v49);
    sub_18E15AF84();
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = v53 == v55 >> 1;
    v57 = v91;
    v45 = v23;
    if (!v56)
    {
      goto LABEL_9;
    }

    if (v51)
    {
      if (v51 == 1)
      {
        sub_18E15C56C();
        sub_18E1A2C70();
        sub_18E15D8CC(&type metadata for PromptTemplate.ModelBundleID.AssetBackedLLMBundleCodingKeys, &v107);
        v86 = v23;
        v58 = sub_18E15A234();
        sub_18E161880(v58, v59);
        sub_18E15A38C(&qword_1EABD01C8);
        v60 = v88;
        sub_18E1A7A80();
        v87 = 0;
        swift_unknownObjectRelease();
        v71 = sub_18E15BCC8();
        v72(v71);
        sub_18E1A502C();
        v73 = sub_18E15D684();
        v74(v73);
        swift_storeEnumTagMultiPayload();
        v75 = v60;
      }

      else
      {
        v108 = 2;
        sub_18E1A2C1C();
        sub_18E15D8CC(&type metadata for PromptTemplate.ModelBundleID.ResourceBundleQueryCodingKeys, &v108);
        v86 = v23;
        sub_18E1A6F90();
        sub_18E15DA84();
        sub_18E1A21B4(v68, v69, MEMORY[0x1E69B2450]);
        v70 = v90;
        sub_18E1A7A80();
        v87 = 0;
        swift_unknownObjectRelease();
        v81 = sub_18E15D930();
        v82(v81);
        v83 = sub_18E15D684();
        v84(v83);
        swift_storeEnumTagMultiPayload();
        v75 = v70;
      }

      v80 = v104;
    }

    else
    {
      v106 = 0;
      sub_18E1A2CC4();
      sub_18E15D8CC(&type metadata for PromptTemplate.ModelBundleID.LlmBundleCodingKeys, &v106);
      v86 = v23;
      v65 = sub_18E15A234();
      sub_18E161880(v65, v66);
      sub_18E15A38C(&qword_1EABCFEB0);
      v67 = v89;
      sub_18E1A7A80();
      v87 = 0;
      swift_unknownObjectRelease();
      v76 = sub_18E1598D4();
      v77(v76);
      v78 = sub_18E15D684();
      v79(v78);
      swift_storeEnumTagMultiPayload();
      v80 = v104;
      v57 = v91;
      v75 = v67;
    }

    sub_18E1A44F4(v75, v57);
    sub_18E1A44F4(v57, v98);
    return sub_18E158EC4(v80);
  }

  return result;
}

uint64_t PromptTemplate.templateID.getter()
{
  type metadata accessor for PromptTemplate(0);

  return sub_18E15A234();
}

uint64_t PromptTemplate.init(modelBundleQuery:templateID:fallbackPromptTemplateCatalog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A808();
  v14 = v13 - v12;
  v15 = sub_18E1A6F90();
  sub_18E159F5C();
  v17 = v16;
  (*(v16 + 16))(v14, a1, v15);
  swift_storeEnumTagMultiPayload();
  sub_18E1A36E0(v14, a2, a3, a4, a5);
  return (*(v17 + 8))(a1, v15);
}

void *sub_18E1A36E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a5;
  sub_18E1A45CC(a1, a5, type metadata accessor for PromptTemplate.ModelBundleID);
  v10 = type metadata accessor for PromptTemplate(0);
  v11 = v10;
  v12 = (v9 + *(v10 + 20));
  *v12 = a2;
  v12[1] = a3;
  if (a4)
  {
    v32 = a1;
    v33 = v10;
    v34 = v9;
    sub_18E161880(&qword_1EABD1288, &qword_18E1B07E0);
    result = sub_18E1A7990();
    v14 = result;
    v15 = 0;
    v16 = 1 << *(a4 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a4 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = result + 8;
    v36 = result;
    if (v18)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_11:
        v23 = v20 | (v15 << 6);
        v24 = (*(a4 + 48) + 16 * v23);
        v25 = v24[1];
        v37 = *v24;

        result = sub_18E1A7880();
        v14 = v36;
        *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v26 = (v36[6] + 16 * v23);
        *v26 = v37;
        v26[1] = v25;
        v27 = (v36[7] + 16 * v23);
        *v27 = result;
        v27[1] = v28;
        v29 = v36[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          break;
        }

        v36[2] = v31;
        if (!v18)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v21 = v15;
      while (1)
      {
        v15 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v15 >= v19)
        {

          result = sub_18E1A4628(v32, type metadata accessor for PromptTemplate.ModelBundleID);
          v11 = v33;
          v9 = v34;
          goto LABEL_16;
        }

        v22 = *(a4 + 64 + 8 * v15);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v18 = (v22 - 1) & v22;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    result = sub_18E1A4628(a1, type metadata accessor for PromptTemplate.ModelBundleID);
    v14 = 0;
LABEL_16:
    *(v9 + *(v11 + 24)) = v14;
  }

  return result;
}

uint64_t PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_18E1A3944(a1, a2, a3, a4, &qword_1EABD1130, &qword_18E1AFBB0, a5);
}

{
  return sub_18E1A3944(a1, a2, a3, a4, &qword_1EABD1128, &unk_18E1B10E0, a5);
}

{
  sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
  sub_18E159098();
  (*(v10 + 32))(a5, a1);
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PromptTemplate(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t sub_18E1A3944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a8@<X8>)
{
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15A808();
  v19 = v18 - v17;
  v20 = sub_18E161880(a5, a6);
  sub_18E159F5C();
  v22 = v21;
  (*(v21 + 16))(v19, a1, v20);
  swift_storeEnumTagMultiPayload();
  sub_18E1A36E0(v19, a2, a3, a4, a8);
  return (*(v22 + 8))(a1, v20);
}

Swift::String_optional __swiftcall PromptTemplate.loadRawPromptTemplateFromFallbackPromptTemplateCatalog()()
{
  v1 = v0;
  v2 = type metadata accessor for PromptTemplate(0);
  v3 = *(v0 + *(v2 + 24));
  if (v3)
  {
    if (*(v3 + 16))
    {
      sub_18E159728(*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8));
      if (v4)
      {
      }
    }
  }

  v5 = sub_18E15A234();
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_18E1A3BA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574616C706D6574 && a2 == 0xEA00000000004449;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x800000018E1B31A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E1A3CCC(char a1)
{
  if (!a1)
  {
    return 0x6E75426C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x6574616C706D6574;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_18E1A3D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1A3BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E1A3D68(uint64_t a1)
{
  v2 = sub_18E1A4578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1A3DA4(uint64_t a1)
{
  v2 = sub_18E1A4578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTemplate.encode(to:)(void *a1)
{
  sub_18E161880(&qword_1EABD1438, &unk_18E1B1140);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_18E158E00(a1, a1[3]);
  sub_18E1A4578();
  sub_18E1A7CD0();
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E15AC74();
  sub_18E1A21B4(v5, v6, &protocol conformance descriptor for PromptTemplate.ModelBundleID);
  sub_18E15BD04();
  sub_18E1A7B30();
  if (!v1)
  {
    type metadata accessor for PromptTemplate(0);
    sub_18E15C56C();
    sub_18E1A7B00();
    sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
    sub_18E15D3CC(&qword_1ED8D96E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_18E15BD04();
    sub_18E1A7AE0();
  }

  v7 = sub_18E15BCC8();
  return v8(v7);
}

uint64_t PromptTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_18E15A808();
  v8 = v7 - v6;
  sub_18E161880(&qword_1EABD1440, &qword_18E1B1150);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_18E1A5038();
  v12 = type metadata accessor for PromptTemplate(v11);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_18E15A808();
  v17 = v16 - v15;
  sub_18E158E00(a1, a1[3]);
  sub_18E1A4578();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E15AC74();
  sub_18E1A21B4(v18, v19, &protocol conformance descriptor for PromptTemplate.ModelBundleID);
  sub_18E1A7A80();
  sub_18E1A44F4(v8, v17);
  sub_18E15C56C();
  v20 = sub_18E1A7A50();
  v21 = (v17 + *(v12 + 20));
  *v21 = v20;
  v21[1] = v22;
  sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
  sub_18E15D3CC(&qword_1ED8D9968, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_18E1A7A30();
  v23 = sub_18E15A104();
  v24(v23);
  *(v17 + *(v12 + 24)) = v27;
  sub_18E1A45CC(v17, a2, type metadata accessor for PromptTemplate);
  sub_18E158EC4(a1);
  return sub_18E1A4628(v17, type metadata accessor for PromptTemplate);
}

uint64_t sub_18E1A4370(uint64_t a1)
{
  v2 = sub_18E1A21B4(&qword_1ED8D9710, type metadata accessor for PromptTemplate, &protocol conformance descriptor for PromptTemplate);

  return MEMORY[0x1EEE30290](a1, v2);
}

uint64_t PromptTemplate.toChatMessagePrompt()()
{
  v1 = type metadata accessor for PromptTemplate(0);
  v2 = sub_18E1A21B4(&qword_1ED8D9710, type metadata accessor for PromptTemplate, &protocol conformance descriptor for PromptTemplate);

  return MEMORY[0x1EEE2FEC8](v0, v1, v2);
}

uint64_t sub_18E1A4478(uint64_t a1)
{
  v2 = sub_18E1A21B4(qword_1ED8D94F0, type metadata accessor for PromptTemplate, &protocol conformance descriptor for PromptTemplate);

  return MEMORY[0x1EEE2FF48](a1, v2);
}

uint64_t sub_18E1A44F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplate.ModelBundleID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E1A4578()
{
  result = qword_1ED8D9778;
  if (!qword_1ED8D9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9778);
  }

  return result;
}

uint64_t sub_18E1A45CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_18E159098();
  v4 = sub_18E15A234();
  v5(v4);
  return a2;
}

uint64_t sub_18E1A4628(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_18E159098();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_18E1A47C8(uint64_t a1)
{
  type metadata accessor for PromptTemplate.ModelBundleID(319);
  if (v1 <= 0x3F)
  {
    sub_18E1A4854(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E1A4854(uint64_t a1)
{
  if (!qword_1ED8D9B88)
  {
    sub_18E169A64(&qword_1EABD1258, &qword_18E1B04C0);
    v1 = sub_18E1A77A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8D9B88);
    }
  }
}

void sub_18E1A48B8(uint64_t a1)
{
  sub_18E194A40(319);
  if (v1 <= 0x3F)
  {
    sub_18E194AD4(319);
    if (v2 <= 0x3F)
    {
      sub_18E1A6F90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

_BYTE *sub_18E1A4950(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E1A4A4C(_BYTE *result, int a2, int a3)
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

unint64_t sub_18E1A4AFC()
{
  result = qword_1EABD1448;
  if (!qword_1EABD1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1448);
  }

  return result;
}

unint64_t sub_18E1A4B54()
{
  result = qword_1EABD1450;
  if (!qword_1EABD1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1450);
  }

  return result;
}

unint64_t sub_18E1A4BAC()
{
  result = qword_1EABD1458;
  if (!qword_1EABD1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1458);
  }

  return result;
}

unint64_t sub_18E1A4C04()
{
  result = qword_1EABD1460;
  if (!qword_1EABD1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1460);
  }

  return result;
}

unint64_t sub_18E1A4C5C()
{
  result = qword_1EABD1468;
  if (!qword_1EABD1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1468);
  }

  return result;
}

unint64_t sub_18E1A4CB4()
{
  result = qword_1ED8D9768;
  if (!qword_1ED8D9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9768);
  }

  return result;
}

unint64_t sub_18E1A4D0C()
{
  result = qword_1ED8D9770;
  if (!qword_1ED8D9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9770);
  }

  return result;
}

unint64_t sub_18E1A4D64()
{
  result = qword_1ED8D9758;
  if (!qword_1ED8D9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9758);
  }

  return result;
}

unint64_t sub_18E1A4DBC()
{
  result = qword_1ED8D9760;
  if (!qword_1ED8D9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9760);
  }

  return result;
}

unint64_t sub_18E1A4E14()
{
  result = qword_1ED8D9730;
  if (!qword_1ED8D9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9730);
  }

  return result;
}

unint64_t sub_18E1A4E6C()
{
  result = qword_1ED8D9738;
  if (!qword_1ED8D9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9738);
  }

  return result;
}

unint64_t sub_18E1A4EC4()
{
  result = qword_1EABD0238;
  if (!qword_1EABD0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0238);
  }

  return result;
}

unint64_t sub_18E1A4F1C()
{
  result = qword_1EABD0240;
  if (!qword_1EABD0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0240);
  }

  return result;
}

unint64_t sub_18E1A4F74()
{
  result = qword_1ED8D9740;
  if (!qword_1ED8D9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9740);
  }

  return result;
}

unint64_t sub_18E1A4FCC()
{
  result = qword_1ED8D9748;
  if (!qword_1ED8D9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9748);
  }

  return result;
}

id NSUserDefaults.Secure.__allocating_init(domain:user:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return NSUserDefaults.Secure.init(domain:user:)(a1, a2, v4);
}

uint64_t sub_18E1A5098(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

void NSUserDefaults.Global.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E1A7500();
  sub_18E1A5E74(a1, v11);
  v5 = v12;
  if (v12)
  {
    v6 = sub_18E158E00(v11, v12);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_18E1A7B80();
    (*(v7 + 8))(v9, v5);
    sub_18E158EC4(v11);
  }

  else
  {
    v10 = 0;
  }

  CFPreferencesSetValue(v4, v10, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  swift_unknownObjectRelease();
}

void NSUserDefaults.Global.setObject(_:forKey:inDomain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSUserDefaults.Global.set(_:forKey:)(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t NSUserDefaults.Global.dictionaryRepresentation()()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E8B0];
  v3 = CFPreferencesCopyKeyList(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  CFPreferencesCopyMultiple(v3, v0, v1, v2);
  v4 = objc_opt_self();
  sub_18E159704(v4);
  result = sub_18E1A7480();
  __break(1u);
  return result;
}

uint64_t static NSUserDefaults.Secure.users()()
{
  sub_18E161880(&qword_1EABD1470, &unk_18E1B18C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E1AB270;
  *(v0 + 32) = getuid();
  return v0;
}

uint64_t sub_18E1A5758()
{
  v42 = *MEMORY[0x1E69E9840];
  getuid();
  v37 = objc_opt_self();
  v0 = [v37 defaultManager];
  v1 = sub_18E1A7500();
  v38 = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v38];

  if (v2)
  {
    v3 = v38;
  }

  else
  {
    v4 = v38;
    v5 = sub_18E1A6CE0();

    swift_willThrow();
  }

  v6 = sub_18E1A75D0();
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  v38 = sub_18E1A5C94(v8, 0xD000000000000035, 0x800000018E1B31C0);
  v39 = v9;
  v40 = v10;
  v41 = v11;
  sub_18E1A6AC8();
  sub_18E15D574();
  v12 = sub_18E1A77B0();

  v13 = v12[2];
  if (v13)
  {
    v36 = *MEMORY[0x1E696A370];
    v14 = 3;
    do
    {
      v38 = v12;
      v39 = (v12 + 4);
      v40 = 0;
      v41 = v14;

      sub_18E161880(&qword_1EABD1488, &qword_18E1B1910);
      sub_18E1A6B88();
      v15 = sub_18E1A74E0();
      v17 = v16;

      v38 = 0xD000000000000036;
      v39 = 0x800000018E1B32E0;
      MEMORY[0x193ACAA20](v15, v17);

      v18 = [v37 defaultManager];
      sub_18E161880(&unk_1EABD1490, &qword_18E1B1918);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18E1AB270;
      *(inited + 64) = MEMORY[0x1E69E6530];
      *(inited + 32) = v36;
      *(inited + 40) = 457;
      type metadata accessor for FileAttributeKey(0);
      sub_18E1A6BEC();
      v20 = v36;
      sub_18E1A7490();
      v21 = sub_18E1A7470();

      v22 = sub_18E1A7500();

      v38 = 0;
      LODWORD(v15) = [v18 setAttributes:v21 ofItemAtPath:v22 error:&v38];

      if (v15)
      {
        v23 = v38;
      }

      else
      {
        v24 = v38;
        v25 = sub_18E1A6CE0();

        swift_willThrow();
        if (qword_1ED8DA2E8 != -1)
        {
          swift_once();
        }

        v26 = sub_18E1A7360();
        sub_18E1592FC(v26, qword_1ED8DA2F0);
        v27 = v25;
        v28 = sub_18E1A7340();
        v29 = sub_18E1A7710();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v38 = v32;
          *v30 = 136315394;
          *(v30 + 4) = sub_18E1694A4(0xD000000000000035, 0x800000018E1B31C0, &v38);
          *(v30 + 12) = 2112;
          v33 = v25;
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v34;
          *v31 = v34;
          _os_log_impl(&dword_18E157000, v28, v29, "Failed to fix permissions of %s %@", v30, 0x16u);
          sub_18E178150(v31, &qword_1EABD04E8, &unk_18E1B1920);
          MEMORY[0x193ACB8D0](v31, -1, -1);
          sub_18E158EC4(v32);
          MEMORY[0x193ACB8D0](v32, -1, -1);
          MEMORY[0x193ACB8D0](v30, -1, -1);
        }

        else
        {
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }
}

unint64_t sub_18E1A5C94(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_18E1A75E0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_18E1A7630();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id NSUserDefaults.Secure.init(domain:user:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_18E1592E8();
  v17 = v10;
  v18 = v9;
  MEMORY[0x193ACAA20](47, 0xE100000000000000);

  MEMORY[0x193ACAA20](a1, a2);

  v11 = v18;
  v12 = &v3[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_domain];
  *v12 = v17;
  *(v12 + 1) = v11;
  *&v3[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_user] = a3;
  v13 = sub_18E1A7500();

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithSuiteName_, v13);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_18E1A5E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0960, &qword_18E1AB550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id NSUserDefaults.Secure.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  getuid();
  sub_18E1592E8();
  v22 = v8;
  v23 = v7;
  result = MEMORY[0x193ACAA20](47, 0xE100000000000000);
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v22;
  v10 = v23;
  v22 = a1;
  v23 = a2;
  v20 = 47;
  v21 = 0xE100000000000000;
  sub_18E15D574();
  v12 = sub_18E1A77B0();
  v13 = sub_18E1A5098(v12);
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v22 = v11;
  v23 = v10;

  MEMORY[0x193ACAA20](v13, v15);

  v16 = &v2[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_domain];
  *v16 = v11;
  v16[1] = v10;
  *&v2[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_user] = getuid();
  v17 = sub_18E1A7500();

  v19.receiver = v3;
  v19.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v19, sel_initWithSuiteName_, v17);

  if (v18)
  {
  }

  return v18;
}

void NSUserDefaults.Secure.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8DA2E8 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7360();
  sub_18E1592FC(v5, qword_1ED8DA2F0);
  v6 = v3;
  v7 = sub_18E1A7340();
  v8 = sub_18E1A7700();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_18E1694A4(*&v6[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_domain], *&v6[OBJC_IVAR____TtCE26GenerativeModelsFoundationCSo14NSUserDefaults6Secure_domain + 8], v19);
    _os_log_impl(&dword_18E157000, v7, v8, "UserDefaults.Secure: set: self.domain: %s", v9, 0xCu);
    sub_18E158EC4(v10);
    MEMORY[0x193ACB8D0](v10, -1, -1);
    MEMORY[0x193ACB8D0](v9, -1, -1);
  }

  if (qword_1EABCFC60 != -1)
  {
    swift_once();
  }

  v11 = sub_18E1A7500();
  sub_18E1A5E74(a1, v19);
  v12 = v20;
  if (v20)
  {
    v13 = sub_18E158E00(v19, v20);
    v14 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v13, v13);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_18E1A7B80();
    (*(v14 + 8))(v16, v12);
    sub_18E158EC4(v19);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_18E1A7500();
  CFPreferencesSetValue(v11, v17, v18, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  swift_unknownObjectRelease();
}

void NSUserDefaults.Secure.setObject(_:forKey:inDomain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSUserDefaults.Secure.set(_:forKey:)(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t NSUserDefaults.Secure.object(forKey:)@<X0>(void *a3@<X8>)
{
  v4 = sub_18E1A7500();
  v5 = sub_18E1A7500();
  v6 = CFPreferencesCopyValue(v4, v5, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);

  if (v6)
  {
    result = swift_getObjectType();
  }

  else
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v6;
  a3[3] = result;
  return result;
}

uint64_t NSUserDefaults.Secure.dictionaryRepresentation()()
{
  v0 = sub_18E1A7500();
  v1 = *MEMORY[0x1E695E8A0];
  v2 = *MEMORY[0x1E695E898];
  v3 = CFPreferencesCopyKeyList(v0, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);

  v4 = sub_18E1A7500();
  CFPreferencesCopyMultiple(v3, v4, v1, v2);

  v5 = objc_opt_self();
  sub_18E159704(v5);
  result = sub_18E1A7480();
  __break(1u);
  return result;
}

id _sSo14NSUserDefaultsC26GenerativeModelsFoundationE6GlobalCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E1A6AC8()
{
  result = qword_1EABCFC90;
  if (!qword_1EABCFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFC90);
  }

  return result;
}

unint64_t sub_18E1A6B1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_18E1A6B88()
{
  result = qword_1EABCFC40;
  if (!qword_1EABCFC40)
  {
    sub_18E169A64(&qword_1EABD1488, &qword_18E1B1910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFC40);
  }

  return result;
}

unint64_t sub_18E1A6BEC()
{
  result = qword_1EABCFC58;
  if (!qword_1EABCFC58)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFC58);
  }

  return result;
}