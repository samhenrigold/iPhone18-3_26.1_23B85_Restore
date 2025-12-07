uint64_t FormatAnimationNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v120 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v123 = &v118 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v127 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v118 - v14;
  sub_1D6674580(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];
  v24 = v1[3];
  LODWORD(v122) = *(v1 + 32);
  v121 = v1[5];
  v119 = *(v1 + 52);
  v118 = *(v1 + 12);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66742BC(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeStyle.Selector, v28, v30, v25, &type metadata for FormatAnimationNodeStyle.Selector, v28, &type metadata for FormatVersions.StarSky, v26, v20, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v126 = v32;
  v124 = v31;
  v128 = v34;
  v130 = v33 + 16;
  (v34)(v15);
  v129 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v139 = v21;
  v140 = v22;
  v137 = 0uLL;
  v138 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v141 = 0;
  v38 = swift_allocObject();
  *&v134 = &v118;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v141;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v133 = (&v118 - 6);
  *(&v118 - 4) = sub_1D5B4AA6C;
  *(&v118 - 3) = 0;
  v116 = sub_1D6708980;
  v117 = v40;
  v141 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v141;
  v125 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6674614(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF030E8, sub_1D6674614, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v131 = v43;
  v132 = v44;
  v45 = sub_1D72647CC();
  v141 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v141;
  v47 = *(v17 + 36);
  v48 = v15;
  v136 = v20;
  v49 = &v20[v47];
  v50 = *&v20[v47 + 24];
  v51 = *&v20[v47 + 32];
  v52 = __swift_project_boxed_opaque_existential_1(&v20[v47], v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = v133;
  *(&v118 - 4) = sub_1D615B4A4;
  *(&v118 - 3) = v56;
  v116 = sub_1D6708980;
  v117 = v41;
  v57 = v135;
  sub_1D5D2BC70(v48, sub_1D615B49C, v58, sub_1D615B4A4, (&v118 - 6), v50, v51);
  if (!v57)
  {
    v133 = v49;
    *&v135 = v37;

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v61 = v126;
    v62 = v127;
    v63 = v124;
    v128(v127, v126, v124);
    swift_storeEnumTagMultiPayload();
    v134 = xmmword_1D728CF30;
    v137 = xmmword_1D728CF30;
    v138 = 0;
    LOBYTE(v139) = 0;
    v64 = swift_allocObject();
    v66 = v64;
    *(v64 + 16) = v134;
    *(v64 + 32) = v139;
    v67 = v125;
    v68 = v135;
    *(v64 + 40) = v125;
    *(v64 + 48) = v68;
    if (v122)
    {

      v69 = v123;
      v70 = v121;
    }

    else
    {
      v122 = &v118;
      v139 = v23;
      v140 = v24;
      MEMORY[0x1EEE9AC00](v64, v65);
      *(&v118 - 4) = sub_1D5B4AA6C;
      *(&v118 - 3) = 0;
      v116 = sub_1D6708980;
      v117 = v66;
      v141 = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = v134;
      *(v87 + 32) = v141;
      *(v87 + 40) = v67;
      *(v87 + 48) = v68;
      swift_retain_n();
      v88 = sub_1D72647CC();
      v141 = 0;
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *(v89 + 24) = v134;
      *(v89 + 40) = v141;
      v90 = *(v133 + 3);
      v91 = *(v133 + 4);
      v92 = __swift_project_boxed_opaque_existential_1(v133, v90);
      MEMORY[0x1EEE9AC00](v92, v93);
      MEMORY[0x1EEE9AC00](v94, v95);
      *(&v118 - 4) = sub_1D615B4A4;
      *(&v118 - 3) = (&v118 - 6);
      v116 = sub_1D6708980;
      v117 = v87;
      v97 = sub_1D5D2F7A4(v62, sub_1D615B49C, v96, sub_1D615B4A4, (&v118 - 6), v90, v91);
      v98 = v97;

      v69 = v123;
      if (v98)
      {
        sub_1D5F5A70C();
        sub_1D72647EC();
        v67 = v125;
        v70 = v121;
        v63 = v124;
        v61 = v126;
        v68 = v135;
      }

      else
      {
        v68 = v135;
        v67 = v125;
        v70 = v121;
        v63 = v124;
        v61 = v126;
      }
    }

    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    v71 = v128;
    v128(v69, v61, v63);
    swift_storeEnumTagMultiPayload();
    v134 = xmmword_1D7297410;
    v137 = xmmword_1D7297410;
    v138 = 0;
    LOBYTE(v139) = 0;
    v72 = swift_allocObject();
    v74 = v72;
    *(v72 + 16) = v134;
    *(v72 + 32) = v139;
    *(v72 + 40) = v67;
    *(v72 + 48) = v68;
    if (v70)
    {
      v131 = &v118;
      v139 = v70;
      MEMORY[0x1EEE9AC00](v72, v73);
      *(&v118 - 4) = sub_1D5B4AA6C;
      *(&v118 - 3) = 0;
      v116 = sub_1D6708980;
      v117 = v74;
      v141 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v134;
      *(v75 + 32) = v141;
      *(v75 + 40) = v67;
      *(v75 + 48) = v68;
      swift_retain_n();

      v76 = sub_1D72647CC();
      v141 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *(v77 + 24) = v134;
      *(v77 + 40) = v141;
      v78 = *(v133 + 3);
      v79 = *(v133 + 4);
      v80 = __swift_project_boxed_opaque_existential_1(v133, v78);
      MEMORY[0x1EEE9AC00](v80, v81);
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v118 - 4) = sub_1D615B4A4;
      *(&v118 - 3) = (&v118 - 6);
      v84 = v123;
      v116 = sub_1D6708980;
      v117 = v75;
      v86 = sub_1D5D2F7A4(v123, sub_1D615B49C, v85, sub_1D615B4A4, (&v118 - 6), v78, v79);
      v99 = v86;

      if (v99)
      {
        sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
        sub_1D66628CC();
        sub_1D72647EC();
        v67 = v125;
        v63 = v124;
        v71 = v128;

        sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
        v68 = v135;
      }

      else
      {

        sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
        v68 = v135;
        v67 = v125;
        v63 = v124;
        v71 = v128;
      }
    }

    else
    {

      sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
    }

    v100 = v118 | (v119 << 32);
    v101 = v120;
    v71(v120, v126, v63);
    swift_storeEnumTagMultiPayload();
    v135 = xmmword_1D72BAA60;
    v137 = xmmword_1D72BAA60;
    v138 = 0;
    LOBYTE(v139) = 0;
    v102 = swift_allocObject();
    v104 = v102;
    *(v102 + 16) = v135;
    *(v102 + 32) = v139;
    *(v102 + 40) = v67;
    *(v102 + 48) = v68;
    if (HIDWORD(v100) <= 0xFE)
    {
      *&v134 = &v118;
      LODWORD(v139) = v100;
      BYTE4(v139) = BYTE4(v100);
      MEMORY[0x1EEE9AC00](v102, v103);
      *(&v118 - 4) = sub_1D5B4AA6C;
      *(&v118 - 3) = 0;
      v116 = sub_1D6708980;
      v117 = v104;
      v141 = 0;
      v106 = swift_allocObject();
      *(v106 + 16) = v135;
      *(v106 + 32) = v141;
      *(v106 + 40) = v67;
      *(v106 + 48) = v68;
      swift_retain_n();
      v107 = sub_1D72647CC();
      v141 = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v135;
      *(v108 + 40) = v141;
      v109 = *(v133 + 3);
      v110 = *(v133 + 4);
      v111 = __swift_project_boxed_opaque_existential_1(v133, v109);
      MEMORY[0x1EEE9AC00](v111, v112);
      MEMORY[0x1EEE9AC00](v113, v114);
      *(&v118 - 4) = sub_1D615B4A4;
      *(&v118 - 3) = (&v118 - 6);
      v116 = sub_1D66746A8;
      v117 = v106;
      LOBYTE(v109) = sub_1D5D2F7A4(v101, sub_1D615B49C, v115, sub_1D615B4A4, (&v118 - 6), v109, v110);

      if (v109)
      {
        sub_1D66740D8();
        v105 = v136;
        sub_1D72647EC();
        goto LABEL_22;
      }
    }

    else
    {
    }

    v105 = v136;
LABEL_22:
    sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

    v59 = v105;
    return sub_1D5D2CFE8(v59, sub_1D6674580);
  }

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v59 = v136;
  return sub_1D5D2CFE8(v59, sub_1D6674580);
}

uint64_t sub_1D644A97C()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x6F6974616D696E61;
  v4 = 0x65646F4D6E7572;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F50726F68636E61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D644AA1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667544C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D644AA54(uint64_t a1)
{
  v2 = sub_1D6674394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644AA90(uint64_t a1)
{
  v2 = sub_1D6674394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArrayIndex.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6674724(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66747B8(0);
  sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x7865646E69, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  v17 = sub_1D72642FC();
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatArrayIndex.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6674938(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66747B8(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatArrayIndex, v16, v18, v13, &type metadata for FormatArrayIndex, v16, &type metadata for FormatVersions.SydroF, v14, v11, v17, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD68);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D6708984;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66749CC(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF037D8, sub_1D66749CC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D6674A60;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6674938);
}

uint64_t sub_1D644B298()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x7865646E69;
  }
}

void sub_1D644B2C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D644B3B0(uint64_t a1)
{
  v2 = sub_1D6674890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644B3EC(uint64_t a1)
{
  v2 = sub_1D6674890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArraySubscript.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v47 - v8;
  v55 = v7;
  v58 = v9;
  v11 = _s10CodingKeysOMa_220(255, v7, v9, v10);
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *&v59 = v11;
  *(&v59 + 1) = WitnessTable;
  v56 = WitnessTable;
  v53 = v13;
  v60 = v13;
  v61 = v14;
  v15 = type metadata accessor for FormatCodingKeysContainer(255, &v59);
  swift_getWitnessTable();
  v16 = sub_1D726435C();
  v57 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v47 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v62;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
    goto LABEL_12;
  }

  v48 = v14;
  v49 = 0;
  v62 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v58;
  if ((v23 & 1) == 0)
  {
LABEL_10:
    v59 = 0uLL;
    LOBYTE(v60) = 0;
    v39 = v62;
    v40 = v49;
    v41 = sub_1D72642FC();
    v21 = v40;
    if (!v40)
    {
      v42 = v41;
      v59 = xmmword_1D728CF30;
      LOBYTE(v60) = 0;
      v44 = v54;
      v43 = v55;
      sub_1D726431C();
      (*(v57 + 8))(v39, v16);
      v45 = v24;
      v46 = v50;
      (*(v51 + 32))(v50, v44, v43);
      sub_1D6925984(v42, v46, v43, v45, v52);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v57 + 8))(v39, v16);
LABEL_12:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v26 = (sub_1D726433C() + 48);
  v27 = v11;
  v28 = v56;
  while (1)
  {
    if (v25 == sub_1D726279C())
    {

      v24 = v58;
      goto LABEL_10;
    }

    v29 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v29 & 1) == 0)
    {
      break;
    }

    v31 = *v26;
    v59 = *(v26 - 1);
    LOBYTE(v60) = v31;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_16;
    }

    v32 = sub_1D6AFC82C(v15);
    ++v25;
    v26 += 24;
    if (v33)
    {
      v34 = v32;
      v35 = v33;

      v36 = sub_1D6AFC690(v27, v28, v53, v48);
      sub_1D5E2D970();
      v37 = swift_allocError();
      *v38 = v34;
      *(v38 + 8) = v35;
      v21 = v37;
      *(v38 + 16) = v36;
      *(v38 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v57 + 8))(v62, v16);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatArraySubscript.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = *(a2 + 24);
  v40 = *(a2 + 16);
  v38 = v13;
  v15 = _s10CodingKeysOMa_220(255, v40, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v46 = v15;
  *(&v46 + 1) = WitnessTable;
  v47 = v17;
  v48 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v46);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v45 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v24);
  v26 = &v38 - v25;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v39 = a2;
  sub_1D5D2EE70(a2, v19, v29, v27, a2, v19, &type metadata for FormatVersions.SydroF, v28, v26, v20, &off_1F51F6C58);
  v41 = v3;
  v49 = *v3;
  v46 = 0uLL;
  LOBYTE(v47) = 0;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
  v32 = *(*(v30 - 8) + 16);
  v32(v12, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v44;
  sub_1D5D38930(&v49, &v46, v12, sub_1D5B4AA6C, 0, v45, MEMORY[0x1E69E6530], MEMORY[0x1E69E6538]);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (v33)
  {
    return (*(v43 + 8))(v26, v45);
  }

  v35 = *(v39 + 36);
  v46 = xmmword_1D728CF30;
  LOBYTE(v47) = 0;
  v36 = v42;
  v32(v42, v31, v30);
  swift_storeEnumTagMultiPayload();
  v37 = v45;
  sub_1D5D38930(v41 + v35, &v46, v36, sub_1D5B4AA6C, 0, v45, v40, *(v38 + 16));
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return (*(v43 + 8))(v26, v37);
}

uint64_t sub_1D644BD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D644BE8C(char a1)
{
  if (!a1)
  {
    return 0x7865646E69;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1885433183;
}

uint64_t sub_1D644BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644BD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D644BF10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_220);
  *a2 = result;
  return result;
}

uint64_t sub_1D644BF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D644BFA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAssetURL.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D5C2E60C(0, &qword_1EDF43AC8, sub_1D5C6838C, sub_1D5C683E0, &type metadata for FormatQueryParameter);
  v4 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - v6;
  sub_1D6674AF4(0);
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6674B88(0);
  sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88, &unk_1D7321584);
  v13 = v41;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v35;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v20 - 2);
      v26 = *(v20 - 1);

      v28 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x6574656D61726170, 0xEA00000000007372);
      sub_1D5E2D970();
      v14 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v36 + 8))(v12, v9);
      goto LABEL_11;
    }

LABEL_7:
  }

  v39 = 0uLL;
  v40 = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v33 = v21;
  v32 = xmmword_1D728CF30;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  v24 = sub_1D726434C();
  v25 = v36;
  if (v24)
  {
    v37 = v32;
    v38 = 0;
    sub_1D5C8000C();
    sub_1D726431C();
    v31 = sub_1D725A74C();
    (*(v34 + 8))(v41, v4);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  (*(v25 + 8))(v12, v9);
  *v17 = v33;
  v17[1] = v23;
  v17[2] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAssetURL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - v8;
  sub_1D6674D08(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v79 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6674B88(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatAssetURL, v20, v22, v17, &type metadata for FormatAssetURL, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v74 = v23;
  v76 = v25 + 16;
  v77 = v26;
  v26(v9, v24, v23);
  v75 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v88 = v16;
  v85 = 0uLL;
  v86 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v89 = 0;
  v30 = swift_allocObject();
  *&v82 = &v72;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v89;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v72 - 4) = sub_1D5B4AA6C;
  *(&v72 - 3) = 0;
  v70 = sub_1D670896C;
  v71 = v32;
  v89 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v89;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D6674D9C(0);
  v34 = v9;
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02B28, sub_1D6674D9C, MEMORY[0x1E69E6F60]);
  v73 = v29;
  swift_retain_n();
  v80 = v37;
  v81 = v36;
  v38 = sub_1D72647CC();
  v89 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v89;
  v40 = *(v11 + 36);
  v84 = v14;
  v41 = &v14[v40];
  v42 = *&v14[v40 + 24];
  v43 = *&v14[v40 + 32];
  v44 = __swift_project_boxed_opaque_existential_1(&v14[v40], v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v72 - 4) = sub_1D615B4A4;
  *(&v72 - 3) = (&v72 - 6);
  v70 = sub_1D670896C;
  v71 = v33;
  v48 = v83;
  sub_1D5D2BC70(v34, sub_1D615B49C, v49, sub_1D615B4A4, (&v72 - 6), v42, v43);
  if (v48)
  {
    v50 = v84;
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v52 = v50;
  }

  else
  {
    v83 = v41;

    v51 = v84;
    sub_1D72647EC();
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v54 = qword_1EDF31EA8;
    v55 = v79;

    if (v54 != -1)
    {
      swift_once();
    }

    v56 = v74;
    v57 = __swift_project_value_buffer(v74, qword_1EDFFCD18);
    v58 = v78;
    v77(v78, v57, v56);
    swift_storeEnumTagMultiPayload();
    v59 = v51;
    if (*(v55 + 16) && (LOBYTE(v85) = 0, v60 = swift_allocObject(), v82 = xmmword_1D728CF30, *(v60 + 16) = xmmword_1D728CF30, *(v60 + 32) = v85, *(v60 + 40) = v72, *(v60 + 48) = v73, , v61 = sub_1D72647CC(), LOBYTE(v85) = 0, v62 = swift_allocObject(), *(v62 + 16) = v61, *(v62 + 24) = v82, *(v62 + 40) = v85, v63 = *(v83 + 3), v64 = *(v83 + 4), v65 = __swift_project_boxed_opaque_existential_1(v83, v63), MEMORY[0x1EEE9AC00](v65, v66), MEMORY[0x1EEE9AC00](v67, v68), *(&v72 - 4) = sub_1D5B4AA6C, *(&v72 - 3) = 0, v70 = sub_1D670896C, v71 = v60, LOBYTE(v63) = sub_1D5D2F7A4(v58, sub_1D615B49C, v69, sub_1D615B4A4, (&v72 - 6), v63, v64), v59 = v84, , , (v63 & 1) != 0))
    {
      v85 = v82;
      v86 = 0;
      v87 = v79;
      sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
      sub_1D6670830();
      sub_1D72647EC();

      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    }

    v52 = v59;
  }

  return sub_1D5D2CFE8(v52, sub_1D6674D08);
}

uint64_t sub_1D644CD54(uint64_t a1)
{
  v2 = sub_1D6674C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644CD90(uint64_t a1)
{
  v2 = sub_1D6674C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAsyncImageContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v108 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v105 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v109 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v103 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v102 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v102 - v35;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v2;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v44 = sub_1D5C30408();
  v120 = v40;
  sub_1D5D2EE70(&type metadata for FormatAsyncImageContent, &type metadata for FormatCodingKeys, v45, v43, &type metadata for FormatAsyncImageContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v40, v44, &off_1F51F6C78);
  v46 = v41 >> 60;
  if ((v41 >> 60) > 4)
  {
    if (v46 <= 6)
    {
      if (v46 == 5)
      {
        v65 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v67 = qword_1EDF31EB0;

        if (v67 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
        v28 = v104;
        (*(*(v68 - 8) + 16))(v104, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v70 = v110;
        sub_1D6397828(6, v65, v66, v28);
        if (v70)
        {

          v36 = v28;
LABEL_49:
          v64 = v36;
          goto LABEL_60;
        }

LABEL_59:
        v64 = v28;
        goto LABEL_60;
      }

      v95 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v97 = qword_1EDF31EA8;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD18);
      v36 = v106;
      (*(*(v98 - 8) + 16))(v106, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v100 = v110;
      sub_1D63979FC(7, v95, v96, v36);
      if (v100)
      {

        goto LABEL_48;
      }
    }

    else
    {
      if (v46 == 7)
      {
        v75 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v77 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v78 = qword_1EDF31EA8;

        if (v78 != -1)
        {
          swift_once();
        }

        v79 = sub_1D725BD1C();
        v80 = __swift_project_value_buffer(v79, qword_1EDFFCD18);
        v28 = v108;
        (*(*(v79 - 8) + 16))(v108, v80, v79);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v81 = v110;
        sub_1D6397BD0(8, v75, v76, v77, v28);
        if (v81)
        {

          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (v46 != 8)
      {
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCD18);
        (*(*(v88 - 8) + 16))(v36, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v90 = v110;
        sub_1D641D3B4(0, v36);
        if (v90)
        {
          goto LABEL_49;
        }

        goto LABEL_58;
      }

      v55 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v57 = qword_1EDF31ED0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD50);
      v36 = v107;
      (*(*(v58 - 8) + 16))(v107, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v60 = v110;
      sub_1D6397D68(9, v55, v56, v36);
      if (v60)
      {

LABEL_48:

        goto LABEL_49;
      }
    }

    goto LABEL_58;
  }

  if (v46 <= 1)
  {
    if (v46)
    {
      v91 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v114[3] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v114[4] = v91;
      v114[5] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v115 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v92 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v114[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v114[1] = v92;
      v114[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D5D0322C(v114, v111);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      (*(*(v93 - 8) + 16))(v28, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      sub_1D639714C(2, v114, v28);
      sub_1D5D07BBC(v114);
      goto LABEL_59;
    }

    v61 = *(v41 + 32);
    v112 = *(v41 + 16);
    v113[0] = v61;
    *(v113 + 9) = *(v41 + 41);
    sub_1D6675044(&v112, v111);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
    (*(*(v62 - 8) + 16))(v32, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v53 = v120;
    sub_1D6396FAC(1, &v112, v32);
    sub_1D66750A0(&v112);
    v64 = v32;
  }

  else
  {
    if (v46 != 2)
    {
      if (v46 == 3)
      {
        v47 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v48 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v49 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v50 = qword_1EDF31EB0;

        if (v50 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
        v28 = v109;
        (*(*(v51 - 8) + 16))(v109, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v54 = v110;
        sub_1D63974A4(4, v47, v48, v49, v28);
        if (v54)
        {

LABEL_32:

          v36 = v28;
          goto LABEL_49;
        }

LABEL_52:

        goto LABEL_59;
      }

      v82 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v118[4] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v118[5] = v82;
      v118[6] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v119 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v83 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v118[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v118[1] = v83;
      v84 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v118[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v118[3] = v84;
      sub_1D5D093E8(v118, v111);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      v36 = v105;
      (*(*(v85 - 8) + 16))(v105, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v87 = v110;
      sub_1D6397670(5, v118, v36);
      if (v87)
      {
        sub_1D5D09904(v118);
        goto LABEL_49;
      }

      sub_1D5D09904(v118);
LABEL_58:
      v28 = v36;
      goto LABEL_59;
    }

    v71 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v116[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v116[1] = v71;
    v116[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v117 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    sub_1D66591DC(v116, v111);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v72 = sub_1D725BD1C();
    v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
    v74 = v103;
    (*(*(v72 - 8) + 16))(v103, v73, v72);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v53 = v120;
    sub_1D63972FC(3, v116, v74);
    sub_1D6659238(v116);
    v64 = v74;
  }

LABEL_60:
  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D5D30DC4);
}

uint64_t sub_1D644DA88(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x65746E4972657375;
    v6 = 0x656C797473;
    if (a1 != 8)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746F6D6572;
    if (a1 != 5)
    {
      v7 = 0x686374697773;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974706D65;
    v2 = 0x6D6574737973;
    v3 = 0x656C646E7562;
    if (a1 != 3)
    {
      v3 = 0x646E616D6D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E69646E6962;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D644DC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D644DA88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatAudioTrackBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAudioTrackBinding.Command, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatAudioTrackBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  sub_1D5B58478(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 64);
  if (v15)
  {
    v23 = &v6[v22];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
    v26 = *(*(v24 - 8) + 16);
    v26(v6, v25, v24);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
    v26(&v6[v21], v27, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v23 = 0;
    *(v23 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D641D10C(1, v6);
    v28 = v6;
  }

  else
  {
    v29 = &v10[v22];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
    v32 = *(*(v30 - 8) + 16);
    v32(v10, v31, v30);
    v32(&v10[v21], v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v29 = 0;
    *(v29 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D641D10C(0, v10);
    v28 = v10;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D644E060(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B63616279616C70;
  }

  else
  {
    v3 = 2036427888;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B63616279616C70;
  }

  else
  {
    v5 = 2036427888;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D644E100()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D644E17C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D644E1E4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D644E268(uint64_t *a1@<X8>)
{
  v2 = 2036427888;
  if (*v1)
  {
    v2 = 0x6B63616279616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatAudioTrackBinding.Text.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5114270;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6675148();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 4;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D667519C();
        sub_1D726427C();
        v25 = v29;
        if (v29 == 2)
        {
          swift_beginAccess();
          v25 = byte_1EC89B4D8;
        }

        (*(v11 + 8))(v15, v5);
        v24 = v25 & 1;
      }
    }

    else if (v29)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 3;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 2;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAudioTrackBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAudioTrackBinding.Text, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatAudioTrackBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v25, v22, v26, &off_1F51F6BF8);
  switch(v23)
  {
    case 2:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD18);
      (*(*(v33 - 8) + 16))(v18, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(0, v18);
      v30 = v18;
      break;
    case 3:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD18);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(1, v14);
      v30 = v14;
      break;
    case 4:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(2, v10);
      v30 = v10;
      break;
    default:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD18);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6396E14(3, v23 & 1, v6);
      v30 = v6;
      break;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D644EBE4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D644ECB0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D644ED68(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D644EE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664170(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D644EE60(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E65727574616566;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatAuxiliaryNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v144 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v149 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v150 = &v144 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v153 = &v144 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v162 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v144 - v23;
  sub_1D6676004(0);
  v160 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5E1BFF0(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF25508, sub_1D5E1BFF0, &unk_1D7321584);
  v161 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.SydroF, v30, v28, v33, &off_1F51F6C58);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v37 = qword_1EDF31ED8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD68);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v24, v39, v38);
  v159 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v152 = v2;
  v157 = v38;
  v156 = v39;
  v155 = v41;
  v158 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v64 = v161;
LABEL_7:
    v65 = v162;
    goto LABEL_8;
  }

  *&v154 = v36;
  v151 = v35;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v160;
  v46 = v161;
  v47 = &v161[*(v160 + 11)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v171) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v171;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D5E1BFB4(0);
  sub_1D5B58B84(&qword_1EDF03548, sub_1D5E1BFB4, MEMORY[0x1E69E6F60]);

  v51 = sub_1D72647CC();
  LOBYTE(v171) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v171;
  v53 = (v46 + *(v45 + 9));
  v54 = v53[3];
  v55 = v53[4];
  v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v144 - 4) = sub_1D5B4AA6C;
  *(&v144 - 3) = 0;
  v142 = sub_1D6676098;
  v143 = v50;
  v60 = v163;
  v62 = sub_1D5D2F7A4(v24, sub_1D615B49C, v61, sub_1D615B4A4, (&v144 - 6), v54, v55);
  *&v163 = v60;
  if (v60)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v46, sub_1D6676004);
  }

  v94 = v62;

  if ((v94 & 1) == 0)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    v64 = v161;
    v2 = v152;
    v38 = v157;
    v39 = v156;
    v41 = v155;
    goto LABEL_7;
  }

  v171 = 0;
  v172 = 0;
  v173 = 0;
  *&v169 = v151;
  *(&v169 + 1) = v154;
  v64 = v161;
  v95 = v163;
  sub_1D72647EC();

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v38 = v157;
  v65 = v162;
  if (!v95)
  {
    *&v163 = 0;
    v2 = v152;
    v39 = v156;
    v41 = v155;
LABEL_8:
    swift_beginAccess();
    v66 = v2[4];
    v41(v65, v39, v38);
    swift_storeEnumTagMultiPayload();
    v67 = v160;
    v68 = (v64 + *(v160 + 11));
    v69 = *v68;
    v70 = v68[1];
    LOBYTE(v169) = 0;
    v71 = swift_allocObject();
    v154 = xmmword_1D728CF30;
    *(v71 + 16) = xmmword_1D728CF30;
    *(v71 + 32) = v169;
    v146 = v69;
    *(v71 + 40) = v69;
    *(v71 + 48) = v70;
    sub_1D5E1BFB4(0);
    v73 = v72;
    v74 = sub_1D5B58B84(&qword_1EDF03548, sub_1D5E1BFB4, MEMORY[0x1E69E6F60]);
    v151 = v66;

    v147 = v73;
    v148 = v74;
    v75 = sub_1D72647CC();
    LOBYTE(v169) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v154;
    *(v76 + 40) = v169;
    v77 = (v64 + *(v67 + 9));
    v79 = v77[3];
    v78 = v77[4];
    v80 = __swift_project_boxed_opaque_existential_1(v77, v79);
    v81 = v64;
    v160 = &v144;
    MEMORY[0x1EEE9AC00](v80, v82);
    MEMORY[0x1EEE9AC00](v83, v84);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708988;
    v143 = v71;
    v85 = v162;
    v86 = v163;
    v88 = sub_1D5D2F7A4(v162, sub_1D615B49C, v87, sub_1D615B4A4, (&v144 - 6), v79, v78);
    if (v86)
    {
      sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

      v89 = v64;
    }

    else
    {
      v90 = v88;
      v91 = v151;
      v145 = v77;
      *&v163 = v70;

      if (v90)
      {
        v169 = v154;
        v170 = 0;
        v168 = v91;
        sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
        sub_1D66594A0();
        sub_1D72647EC();
        v92 = v157;
        v93 = v153;

        sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

        v92 = v157;
        v93 = v153;
      }

      v96 = v81;
      v97 = v152;
      swift_beginAccess();
      v98 = v97[5];
      v155(v93, v156, v92);
      swift_storeEnumTagMultiPayload();
      if (*(v98 + 16))
      {
        LOBYTE(v168) = 0;
        v99 = swift_allocObject();
        v162 = xmmword_1D7297410;
        *(v99 + 16) = xmmword_1D7297410;
        *(v99 + 32) = v168;
        *(v99 + 40) = v146;
        *(v99 + 48) = v163;

        v100 = sub_1D72647CC();
        LOBYTE(v168) = 0;
        v101 = swift_allocObject();
        *(v101 + 16) = v100;
        *(v101 + 24) = v162;
        *(v101 + 40) = v168;
        v102 = v145[3];
        v103 = v145[4];
        v104 = __swift_project_boxed_opaque_existential_1(v145, v102);
        MEMORY[0x1EEE9AC00](v104, v105);
        MEMORY[0x1EEE9AC00](v106, v107);
        *(&v144 - 4) = sub_1D5B4AA6C;
        *(&v144 - 3) = 0;
        v142 = sub_1D6708988;
        v143 = v99;
        v109 = sub_1D5D2F7A4(v93, sub_1D615B49C, v108, sub_1D615B4A4, (&v144 - 6), v102, v103);
        v111 = v109;

        v96 = v161;
        if (v111)
        {
          sub_1D5E07B78(v98, v161, 2, 0, 0);
          v110 = v150;
          v93 = v153;
        }

        else
        {
          v93 = v153;
          v110 = v150;
        }

        v97 = v152;
        v92 = v157;
      }

      else
      {
        v110 = v150;
      }

      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v112 = v97[6];
      v155(v110, v156, v92);
      swift_storeEnumTagMultiPayload();
      if (*(v112 + 16))
      {
        LOBYTE(v166) = 0;
        v113 = swift_allocObject();
        v162 = xmmword_1D72BAA60;
        *(v113 + 16) = xmmword_1D72BAA60;
        *(v113 + 32) = v166;
        *(v113 + 40) = v146;
        *(v113 + 48) = v163;

        v114 = sub_1D72647CC();
        LOBYTE(v166) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *(v115 + 24) = v162;
        *(v115 + 40) = v166;
        v116 = v145[3];
        v117 = v145[4];
        v118 = __swift_project_boxed_opaque_existential_1(v145, v116);
        MEMORY[0x1EEE9AC00](v118, v119);
        MEMORY[0x1EEE9AC00](v120, v121);
        *(&v144 - 4) = sub_1D5B4AA6C;
        *(&v144 - 3) = 0;
        v142 = sub_1D6708988;
        v143 = v113;
        v123 = sub_1D5D2F7A4(v110, sub_1D615B49C, v122, sub_1D615B4A4, (&v144 - 6), v116, v117);
        v124 = v123;

        if (v124)
        {
          v166 = v162;
          v167 = 0;
          *&v164 = v112;
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          v96 = v161;
          sub_1D72647EC();

          sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

          v96 = v161;
        }

        v97 = v152;
        v92 = v157;
      }

      else
      {
        sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
      }

      v125 = v163;
      swift_beginAccess();
      v126 = *(v97 + 56);
      v127 = v149;
      v155(v149, v156, v92);
      swift_storeEnumTagMultiPayload();
      v128 = v146;
      v129 = v145;
      if ((v126 & 1) == 0)
      {
        LOBYTE(v164) = 0;
        v130 = swift_allocObject();
        v163 = xmmword_1D72BAA70;
        *(v130 + 16) = xmmword_1D72BAA70;
        *(v130 + 32) = v164;
        *(v130 + 40) = v128;
        *(v130 + 48) = v125;

        v131 = sub_1D72647CC();
        LOBYTE(v164) = 0;
        v132 = swift_allocObject();
        *(v132 + 16) = v131;
        *(v132 + 24) = v163;
        *(v132 + 40) = v164;
        v133 = v129[3];
        v134 = v129[4];
        v135 = __swift_project_boxed_opaque_existential_1(v129, v133);
        MEMORY[0x1EEE9AC00](v135, v136);
        MEMORY[0x1EEE9AC00](v137, v138);
        *(&v144 - 4) = sub_1D5B4AA6C;
        *(&v144 - 3) = 0;
        v142 = sub_1D6708988;
        v143 = v130;
        v140 = sub_1D5D2F7A4(v127, sub_1D615B49C, v139, sub_1D615B4A4, (&v144 - 6), v133, v134);
        v141 = v140;

        if (v141)
        {
          v164 = v163;
          v165 = 0;
          v174 = 0;
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
      v89 = v96;
    }

    return sub_1D5D2CFE8(v89, sub_1D6676004);
  }

  v89 = v64;
  return sub_1D5D2CFE8(v89, sub_1D6676004);
}

uint64_t sub_1D6450560()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x73776F726874;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6572646C696863;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6450618@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66799A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6450650(uint64_t a1)
{
  v2 = sub_1D5E1C0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645068C(uint64_t a1)
{
  v2 = sub_1D5E1C0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPath.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6676284(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6676318(0);
  sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6E656E6F706D6F63, 0xEA00000000007374);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C34D84(0, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
  sub_1D6676498();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6676588(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6676318(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBezierPath, v16, v18, v13, &type metadata for FormatBezierPath, v16, &type metadata for FormatVersions.StarSky, v14, v11, v17, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD50);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D670898C;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D667661C(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF037C8, sub_1D667661C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D66766B0;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
    sub_1D667672C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6676588);
}

uint64_t sub_1D6450F38()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

void sub_1D6450F70(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6451064(uint64_t a1)
{
  v2 = sub_1D66763F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64510A0(uint64_t a1)
{
  v2 = sub_1D66763F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathArcComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D667681C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66768B0(0);
  sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v7;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6619044();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v35 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v18 = v37;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v39 = xmmword_1D728CF30;
  v40 = 0;
  sub_1D5C35368();
  sub_1D726431C();
  v34 = v18;
  v24 = v37;
  v39 = xmmword_1D7297410;
  v40 = 0;
  sub_1D726431C();
  v33 = v24;
  v25 = v37;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D726431C();
  v32 = v25;
  v26 = v37;
  v31 = xmmword_1D72BAA70;
  v39 = xmmword_1D72BAA70;
  v40 = 0;
  v27 = sub_1D726434C();
  v28 = v35;
  if (v27)
  {
    v37 = v31;
    v38 = 0;
    sub_1D726431C();
    (*(v28 + 8))(v14, v6);
    v29 = v41;
  }

  else
  {
    (*(v35 + 8))(v14, v6);
    v29 = 1;
  }

  *v11 = v18;
  v30 = v32;
  *(v11 + 16) = v33;
  *(v11 + 24) = v30;
  *(v11 + 32) = v26;
  *(v11 + 40) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathArcComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v131 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v133 = v128 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v135 = v128 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v137 = v128 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v128 - v17;
  sub_1D6676A30(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *v1;
  v24 = *(v1 + 3);
  v136 = *(v1 + 2);
  v134 = v24;
  v132 = *(v1 + 4);
  v153 = *(v1 + 40);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66768B0(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBezierPathArcComponent, v28, v30, v25, &type metadata for FormatBezierPathArcComponent, v28, &type metadata for FormatVersions.StarSky, v26, v23, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v142 = v32;
  v143 = v31;
  v140 = v33 + 16;
  v141 = v34;
  (v34)(v18);
  v139 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v151 = v148;
  v149 = 0uLL;
  v150 = 0;
  v35 = &v23[*(v20 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v152 = 0;
  v38 = swift_allocObject();
  v146 = v128;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v152;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v128[-4] = sub_1D5B4AA6C;
  v128[-3] = 0;
  v126 = sub_1D6708990;
  v127 = v40;
  v152 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v152;
  v138 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6676AC4(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EC886710, sub_1D6676AC4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v144 = v44;
  v145 = v43;
  v45 = sub_1D72647CC();
  v152 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v152;
  v47 = *(v20 + 36);
  v48 = v18;
  v49 = &v23[v47];
  *&v148 = v23;
  v50 = *&v23[v47 + 24];
  v51 = *&v23[v47 + 32];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v128[-4] = sub_1D615B4A4;
  v128[-3] = &v128[-6];
  v126 = sub_1D6708990;
  v127 = v41;
  v56 = v147;
  sub_1D5D2BC70(v48, sub_1D615B49C, v57, sub_1D615B4A4, &v128[-6], v50, v51);
  if (!v56)
  {
    v129 = v49;
    v130 = v37;

    sub_1D6676B58();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v61 = v137;
    v141(v137, v142, v143);
    swift_storeEnumTagMultiPayload();
    *&v151 = v136;
    v147 = xmmword_1D728CF30;
    v149 = xmmword_1D728CF30;
    v150 = 0;
    v152 = 0;
    v62 = swift_allocObject();
    v146 = v128;
    *(v62 + 16) = v147;
    *(v62 + 32) = v152;
    v63 = v138;
    v64 = v130;
    *(v62 + 40) = v138;
    *(v62 + 48) = v64;
    MEMORY[0x1EEE9AC00](v62, v65);
    v128[-4] = sub_1D5B4AA6C;
    v128[-3] = 0;
    v126 = sub_1D6708990;
    v127 = v66;
    v152 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v147;
    *(v67 + 32) = v152;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v152 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v147;
    *(v69 + 40) = v152;
    v70 = *(v129 + 3);
    v71 = *(v129 + 4);
    v72 = __swift_project_boxed_opaque_existential_1(v129, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    v128[-4] = sub_1D615B4A4;
    v128[-3] = &v128[-6];
    sub_1D5D2BC70(v61, sub_1D615B49C, v76, sub_1D615B4A4, &v128[-6], v70, v71);

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v78 = v77;
    v79 = sub_1D66582DC();
    sub_1D72647EC();
    v128[1] = v79;
    v136 = v78;
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v141(v135, v142, v143);
    swift_storeEnumTagMultiPayload();
    *&v151 = v134;
    v147 = xmmword_1D7297410;
    v149 = xmmword_1D7297410;
    v150 = 0;
    v152 = 0;
    v80 = swift_allocObject();
    v146 = v128;
    *(v80 + 16) = v147;
    *(v80 + 32) = v152;
    v81 = v138;
    v82 = v130;
    *(v80 + 40) = v138;
    *(v80 + 48) = v82;
    MEMORY[0x1EEE9AC00](v80, v83);
    v128[-4] = sub_1D5B4AA6C;
    v128[-3] = 0;
    v126 = sub_1D6708990;
    v127 = v84;
    v152 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v147;
    *(v85 + 32) = v152;
    *(v85 + 40) = v81;
    *(v85 + 48) = v82;
    swift_retain_n();
    v86 = sub_1D72647CC();
    v152 = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v147;
    *(v87 + 40) = v152;
    v88 = *(v129 + 3);
    v89 = *(v129 + 4);
    v90 = __swift_project_boxed_opaque_existential_1(v129, v88);
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    v128[-4] = sub_1D615B4A4;
    v128[-3] = &v128[-6];
    sub_1D5D2BC70(v135, sub_1D615B49C, v94, sub_1D615B4A4, &v128[-6], v88, v89);

    sub_1D72647EC();
    sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

    v95 = v133;
    v141(v133, v142, v143);
    swift_storeEnumTagMultiPayload();
    *&v151 = v132;
    v147 = xmmword_1D72BAA60;
    v149 = xmmword_1D72BAA60;
    v150 = 0;
    v152 = 0;
    v96 = swift_allocObject();
    v146 = v128;
    *(v96 + 16) = v147;
    *(v96 + 32) = v152;
    v97 = v138;
    v98 = v130;
    *(v96 + 40) = v138;
    *(v96 + 48) = v98;
    MEMORY[0x1EEE9AC00](v96, v99);
    v128[-4] = sub_1D5B4AA6C;
    v128[-3] = 0;
    v126 = sub_1D6708990;
    v127 = v100;
    v152 = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v147;
    *(v101 + 32) = v152;
    *(v101 + 40) = v97;
    *(v101 + 48) = v98;
    swift_retain_n();
    v102 = sub_1D72647CC();
    v152 = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v147;
    *(v103 + 40) = v152;
    v104 = *(v129 + 3);
    v105 = *(v129 + 4);
    v106 = __swift_project_boxed_opaque_existential_1(v129, v104);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    v128[-4] = sub_1D615B4A4;
    v128[-3] = &v128[-6];
    v110 = v95;
    v126 = sub_1D6708990;
    v127 = v101;
    sub_1D5D2BC70(v95, sub_1D615B49C, v111, sub_1D615B4A4, &v128[-6], v104, v105);
    v112 = v143;

    v113 = v148;
    sub_1D72647EC();
    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

    v114 = v131;
    v141(v131, v142, v112);
    swift_storeEnumTagMultiPayload();
    if ((v153 & 1) == 0)
    {
      LOBYTE(v149) = 0;
      v116 = swift_allocObject();
      v147 = xmmword_1D72BAA70;
      *(v116 + 16) = xmmword_1D72BAA70;
      *(v116 + 32) = v149;
      *(v116 + 40) = v138;
      *(v116 + 48) = v130;

      v117 = sub_1D72647CC();
      LOBYTE(v149) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v147;
      *(v118 + 40) = v149;
      v119 = *(v129 + 3);
      v120 = *(v129 + 4);
      v121 = __swift_project_boxed_opaque_existential_1(v129, v119);
      MEMORY[0x1EEE9AC00](v121, v122);
      MEMORY[0x1EEE9AC00](v123, v124);
      v128[-4] = sub_1D5B4AA6C;
      v128[-3] = 0;
      v126 = sub_1D6676BAC;
      v127 = v116;
      LOBYTE(v119) = sub_1D5D2F7A4(v114, sub_1D615B49C, v125, sub_1D615B4A4, &v128[-6], v119, v120);

      if (v119)
      {
        v149 = v147;
        v150 = 0;
        LOBYTE(v151) = 0;
        sub_1D72647EC();
        v115 = v131;
        goto LABEL_9;
      }

      v114 = v131;
    }

    v115 = v114;
LABEL_9:
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
    v59 = v113;
    return sub_1D5D2CFE8(v59, sub_1D6676A30);
  }

  v58 = v148;
  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v59 = v58;
  return sub_1D5D2CFE8(v59, sub_1D6676A30);
}

uint64_t sub_1D64528E4()
{
  v1 = *v0;
  v2 = 0x7265746E6563;
  v3 = 0x656C676E41646E65;
  v4 = 0x7369776B636F6C63;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737569646172;
  if (v1 != 1)
  {
    v5 = 0x676E417472617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6452998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6679BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64529D0(uint64_t a1)
{
  v2 = sub_1D6676988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6452A0C(uint64_t a1)
{
  v2 = sub_1D6676988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v33;
    v14 = v9;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5114360;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v14, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6676C28();
    v28 = 0uLL;
    sub_1D726431C();
    v23 = v32;
    if (v32 > 2u)
    {
      if (v32 == 3)
      {
        v32 = xmmword_1D7279980;
        sub_1D6676CD0();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 0;
        v26 = v28;
        v27 = v29;
      }

      else
      {
        if (v32 != 4)
        {
          (*(v6 + 8))(v14, v5);
          v24 = 0;
          v25 = 0;
          v26 = 0uLL;
          goto LABEL_21;
        }

        v32 = xmmword_1D7279980;
        sub_1D6676C7C();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v26 = v28;
        v27 = v29;
        v24 = v30;
        v25 = v31;
      }
    }

    else
    {
      if (!v32 || v32 == 1)
      {
        v32 = xmmword_1D7279980;
        sub_1D5C8DC6C();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 0;
        v26 = v28;
LABEL_21:
        v27 = 0uLL;
        goto LABEL_22;
      }

      v32 = xmmword_1D7279980;
      sub_1D6676D24();
      sub_1D726431C();
      (*(v6 + 8))(v14, v5);
      v26 = v28;
      v27 = v29;
      v24 = v30;
      v25 = v31;
    }

LABEL_22:
    *v13 = v26;
    *(v13 + 16) = v27;
    *(v13 + 32) = v24;
    *(v13 + 40) = v25;
    *(v13 + 48) = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v51 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 8);
  *&v57 = *v1;
  *(&v57 + 1) = v28;
  v29 = *(v1 + 24);
  v55 = *(v1 + 16);
  v56 = v29;
  v30 = *(v1 + 32);
  v54 = *(v1 + 40);
  v31 = *(v1 + 48);
  v33 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v34 = sub_1D5C30408();
  v68 = v27;
  sub_1D5D2EE70(&type metadata for FormatBezierPathComponent, &type metadata for FormatCodingKeys, v35, v33, &type metadata for FormatBezierPathComponent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v32, v27, v34, &off_1F51F6CD8);
  if (v31 > 2)
  {
    if (v31 != 3)
    {
      v38 = v68;
      if (v31 == 4)
      {
        v63 = v57;
        v64 = v55;
        v65 = v56;
        v66 = v30;
        v67 = v54 & 1;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
        v19 = v52;
        (*(*(v39 - 8) + 16))(v52, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6391414(4, &v63, v19);
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
        v19 = v53;
        (*(*(v48 - 8) + 16))(v53, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D641B800(5, v19);
      }

      goto LABEL_24;
    }

    v38 = v68;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD50);
    (*(*(v44 - 8) + 16))(v12, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639127C(3, v57, *(&v57 + 1), v55, v56, v12);
    v43 = v12;
  }

  else
  {
    if (v31)
    {
      if (v31 == 1)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v36 = sub_1D725BD1C();
        v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
        (*(*(v36 - 8) + 16))(v19, v37, v36);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v38 = v68;
        sub_1D6390F48(1, v57, *(&v57 + 1), v19);
      }

      else
      {
        v58 = v57;
        v59 = v55;
        v60 = v56;
        v61 = v30;
        v62 = v54;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD50);
        v19 = v51;
        (*(*(v46 - 8) + 16))(v51, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v38 = v68;
        sub_1D63910DC(2, &v58, v19);
      }

LABEL_24:
      v43 = v19;
      goto LABEL_25;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725BD1C();
    v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
    (*(*(v41 - 8) + 16))(v23, v42, v41);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v68;
    sub_1D6390F48(0, v57, *(&v57 + 1), v23);
    v43 = v23;
  }

LABEL_25:
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v38, sub_1D5D30DC4);
}

double sub_1D64535E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D64536B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666441C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64536E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702260589;
  v5 = 0xE900000000000065;
  v6 = 0x7672754364617571;
  v7 = 0xE300000000000000;
  v8 = 6517345;
  if (v2 != 4)
  {
    v8 = 0x65736F6C63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701734764;
  if (v2 != 1)
  {
    v10 = 0x6576727563;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t FormatBezierPathCurveComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D6676D78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6676E0C(0);
  sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v7;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v30;
    if (v16)
    {
      v18 = (v15 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6619208();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v19 = v33;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D726431C();
  v28 = *(&v33 + 1);
  v29 = v33;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D726431C();
  (*(v30 + 8))(v10, v6);
  v25 = v33;
  *v11 = v19;
  v26 = v28;
  *(v11 + 16) = v29;
  *(v11 + 24) = v26;
  *(v11 + 32) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathCurveComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = (&v91 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v91 - v11;
  sub_1D6676F8C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[1];
  v106 = *v1;
  v95 = v18;
  v93 = v1[2];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6676E0C(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBezierPathCurveComponent, v22, v24, v19, &type metadata for FormatBezierPathCurveComponent, v22, &type metadata for FormatVersions.StarSky, v20, v17, v23, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v99 = v26;
  v100 = v25;
  v97 = v27 + 16;
  v98 = v28;
  (v28)(v12);
  v96 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v110 = v106;
  v108 = 0uLL;
  v109 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v111 = 0;
  v32 = swift_allocObject();
  *&v106 = &v91;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v111;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v91 - 4) = sub_1D5B4AA6C;
  *(&v91 - 3) = 0;
  v89 = sub_1D6708994;
  v90 = v34;
  v111 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v111;
  v101 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6677020(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC886770, sub_1D6677020, MEMORY[0x1E69E6F60]);
  v102 = v31;
  swift_retain_n();
  v104 = v38;
  v105 = v37;
  v39 = sub_1D72647CC();
  v111 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v111;
  v41 = &v17[*(v14 + 36)];
  v42 = v17;
  v43 = *(v41 + 3);
  v44 = *(v41 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v41, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v91 - 4) = sub_1D615B4A4;
  *(&v91 - 3) = (&v91 - 6);
  v89 = sub_1D66770B4;
  v90 = v35;
  v49 = v107;
  sub_1D5D2BC70(v12, sub_1D615B49C, v50, sub_1D615B4A4, (&v91 - 6), v43, v44);
  if (v49)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v51 = v42;
  }

  else
  {
    v92 = v41;

    v52 = sub_1D6676B58();
    sub_1D72647EC();
    v51 = v42;
    v91 = v52;
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v53 = v103;
    v98(v103, v99, v100);
    swift_storeEnumTagMultiPayload();
    v110 = v95;
    v107 = xmmword_1D728CF30;
    v108 = xmmword_1D728CF30;
    v109 = 0;
    v111 = 0;
    v54 = swift_allocObject();
    *&v95 = &v91;
    *(v54 + 16) = v107;
    *(v54 + 32) = v111;
    v56 = v101;
    v55 = v102;
    *(v54 + 40) = v101;
    *(v54 + 48) = v55;
    MEMORY[0x1EEE9AC00](v54, v57);
    *&v106 = 0;
    *(&v91 - 4) = sub_1D5B4AA6C;
    *(&v91 - 3) = 0;
    v89 = sub_1D6708994;
    v90 = v58;
    v111 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v107;
    *(v59 + 32) = v111;
    *(v59 + 40) = v56;
    *(v59 + 48) = v55;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v111 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v107;
    *(v61 + 40) = v111;
    v62 = v92;
    v63 = *(v92 + 3);
    v64 = *(v92 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v92, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v91 - 4) = sub_1D615B4A4;
    *(&v91 - 3) = (&v91 - 6);
    v89 = sub_1D6708994;
    v90 = v59;
    v69 = v106;
    sub_1D5D2BC70(v53, sub_1D615B49C, v70, sub_1D615B4A4, (&v91 - 6), v63, v64);
    if (v69 || (, , sub_1D72647EC(), sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement), , v53 = v94, v98(v94, v99, v100), swift_storeEnumTagMultiPayload(), v110 = v93, v107 = xmmword_1D7297410, v108 = xmmword_1D7297410, v109 = 0, v111 = 0, v72 = swift_allocObject(), v103 = &v91, *(v72 + 16) = v107, *(v72 + 32) = v111, v73 = v62, v75 = v101, v74 = v102, *(v72 + 40) = v101, *(v72 + 48) = v74, MEMORY[0x1EEE9AC00](v72, v76), *&v106 = 0, *(&v91 - 4) = sub_1D5B4AA6C, *(&v91 - 3) = 0, v89 = sub_1D6708994, v90 = v77, v111 = 0, v78 = swift_allocObject(), *(v78 + 16) = v107, *(v78 + 32) = v111, *(v78 + 40) = v75, *(v78 + 48) = v74, swift_retain_n(), v79 = sub_1D72647CC(), v111 = 0, v80 = swift_allocObject(), *(v80 + 16) = v79, *(v80 + 24) = v107, *(v80 + 40) = v111, v81 = *(v73 + 3), v82 = *(v73 + 4), v83 = __swift_project_boxed_opaque_existential_1(v73, v81), MEMORY[0x1EEE9AC00](v83, v84), MEMORY[0x1EEE9AC00](v85, v86), *(&v91 - 4) = sub_1D615B4A4, *(&v91 - 3) = (&v91 - 6), v89 = sub_1D6708994, v90 = v78, v87 = v106, sub_1D5D2BC70(v53, sub_1D615B49C, v88, sub_1D615B4A4, (&v91 - 6), v81, v82), v87))
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v51, sub_1D6676F8C);
}

uint64_t sub_1D64547BC()
{
  v1 = 0x746E696F70;
  v2 = 0x506C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x506C6F72746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6454844@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6679DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D645487C(uint64_t a1)
{
  v2 = sub_1D6676EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64548B8(uint64_t a1)
{
  v2 = sub_1D6676EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathQuadCurveComponent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D6677130(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66771C4(0);
  sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    v16 = v26;
    if (v15)
    {
      v17 = (v14 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6627E68(0x746E696F70, 0xE500000000000000, 0x506C6F72746E6F63, 0xEC000000746E696FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v24 = v29;
  *v11 = v18;
  v11[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathQuadCurveComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D6677344(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v84 = *v1;
  v76 = v15;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66771C4(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBezierPathQuadCurveComponent, v19, v21, v16, &type metadata for FormatBezierPathQuadCurveComponent, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v74 = v25;
  v73 = v24 + 16;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v84;
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v88 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v88;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708998;
  v69 = v31;
  v88 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v88;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66773D8(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8867B8, sub_1D66773D8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v88 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v88;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v45 = v83;
  v46 = v84;
  v68 = sub_1D667746C;
  v69 = v32;
  sub_1D5D2BC70(v84, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v38;
    v49 = v78;
    v48 = v79;
    v83 = v28;

    v50 = sub_1D6676B58();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v87 = v76;
    v84 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v88 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v88;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708998;
    v69 = v57;
    v88 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v88;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v88 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v88;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708998;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6677344);
}

uint64_t sub_1D6455514()
{
  v1 = 0x506C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70;
  }
}

uint64_t sub_1D645556C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6679F24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64555A4(uint64_t a1)
{
  v2 = sub_1D667729C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64555E0(uint64_t a1)
{
  v2 = sub_1D667729C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindExpression.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v127 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v130 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v133 = v127 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v139 = v127 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v127 - v18;
  sub_1D66774E8(0);
  v141 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  *&v142 = v1[2];
  v131 = v1[4];
  v132 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D5CB78D8(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF25418, sub_1D5CB78D8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindExpression, v30, v32, v27, &type metadata for FormatBindExpression, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  v33 = qword_1EDF31EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v38 = v36 + 16;
  v37(v19, v35, v34);
  v140 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v129 = v24;
  sub_1D725892C();
  v39 = sub_1D725895C();
  v40 = (*(*(v39 - 8) + 48))(v6, 1, v39);
  v137 = v37;
  v138 = v34;
  v136 = v35;
  if (v40 != 1)
  {
    sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_7;
  }

  *&v134 = v38;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v41 = v141;
  v42 = &v23[*(v141 + 11)];
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v145) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v145;
  *(v45 + 40) = v43;
  *(v45 + 48) = v44;
  sub_1D5E1BF78(0);
  v47 = v46;
  sub_1D5B58B84(&qword_1EDF03458, sub_1D5E1BF78, MEMORY[0x1E69E6F60]);

  v128 = v47;
  v48 = sub_1D72647CC();
  LOBYTE(v145) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v145;
  v50 = &v23[*(v41 + 9)];
  v52 = *(v50 + 3);
  v51 = *(v50 + 4);
  v53 = __swift_project_boxed_opaque_existential_1(v50, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v127[-4] = sub_1D5B4AA6C;
  v127[-3] = 0;
  v125 = sub_1D667757C;
  v126 = v45;
  v57 = v147;
  v59 = sub_1D5D2F7A4(v19, sub_1D615B49C, v58, sub_1D615B4A4, &v127[-6], v52, v51);
  if (!v57)
  {
    v90 = v59;

    if (v90)
    {
      v145 = 0uLL;
      v146 = 0;
      v143 = v129;
      v144 = v25;
      sub_1D72647EC();

      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);
      v37 = v137;
      v34 = v138;
      v38 = v134;
      v35 = v136;
      v147 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

      v147 = 0;
      v37 = v137;
      v34 = v138;
      v35 = v136;
      v38 = v134;
    }

LABEL_7:
    v61 = v139;
    v37(v139, v35, v34);
    swift_storeEnumTagMultiPayload();
    v62 = v141;
    v63 = &v23[*(v141 + 11)];
    v64 = v23;
    v66 = *v63;
    v65 = *(v63 + 1);
    LOBYTE(v145) = 0;
    v67 = swift_allocObject();
    v134 = xmmword_1D728CF30;
    *(v67 + 16) = xmmword_1D728CF30;
    *(v67 + 32) = v145;
    v128 = v66;
    *(v67 + 40) = v66;
    *(v67 + 48) = v65;
    v68 = v65;
    sub_1D5E1BF78(0);
    v70 = v69;
    v71 = sub_1D5B58B84(&qword_1EDF03458, sub_1D5E1BF78, MEMORY[0x1E69E6F60]);

    v129 = v70;
    v127[1] = v71;
    v72 = sub_1D72647CC();
    LOBYTE(v145) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v134;
    *(v73 + 40) = v145;
    v74 = *(v62 + 9);
    v135 = v64;
    v75 = (v64 + v74);
    v76 = *(v64 + v74 + 24);
    v77 = *(v64 + v74 + 32);
    v78 = __swift_project_boxed_opaque_existential_1(v75, v76);
    MEMORY[0x1EEE9AC00](v78, v79);
    MEMORY[0x1EEE9AC00](v80, v81);
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D670899C;
    v126 = v67;
    v82 = v147;
    v84 = sub_1D5D2F7A4(v61, sub_1D615B49C, v83, sub_1D615B4A4, &v127[-6], v76, v77);
    if (v82)
    {
      sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

      v85 = v135;
      return sub_1D5D2CFE8(v85, sub_1D66774E8);
    }

    v87 = v84;
    v141 = v75;
    v88 = v128;
    *&v134 = v38;

    if (v87)
    {
      v85 = v135;
      sub_1D5E078D8(v142, v135, 1, 0, 0);
      v89 = v138;
      v91 = v68;
      v147 = 0;
      v92 = v139;
    }

    else
    {
      v147 = 0;
      v85 = v135;
      v89 = v138;
      v92 = v139;
      v91 = v68;
    }

    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

    v93 = v133;
    v137(v133, v136, v89);
    swift_storeEnumTagMultiPayload();
    if (v132 == 1)
    {
      v94 = v93;
    }

    else
    {
      LOBYTE(v145) = 0;
      v109 = swift_allocObject();
      v142 = xmmword_1D7297410;
      *(v109 + 16) = xmmword_1D7297410;
      *(v109 + 32) = v145;
      *(v109 + 40) = v88;
      *(v109 + 48) = v91;

      v110 = sub_1D72647CC();
      LOBYTE(v145) = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      *(v111 + 24) = v142;
      *(v111 + 40) = v145;
      v112 = v141[3];
      v113 = v141[4];
      v114 = __swift_project_boxed_opaque_existential_1(v141, v112);
      v140 = v127;
      MEMORY[0x1EEE9AC00](v114, v115);
      MEMORY[0x1EEE9AC00](v116, v117);
      v127[-4] = sub_1D5B4AA6C;
      v127[-3] = 0;
      v125 = sub_1D670899C;
      v126 = v109;
      v118 = v147;
      v120 = sub_1D5D2F7A4(v93, sub_1D615B49C, v119, sub_1D615B4A4, &v127[-6], v112, v113);
      v147 = v118;
      if (v118)
      {
        sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

        v60 = v135;
        return sub_1D5D2CFE8(v60, sub_1D66774E8);
      }

      v121 = v120;

      if ((v121 & 1) == 0)
      {
        sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
        v85 = v135;
        v95 = v131;
        v89 = v138;
        v91 = v68;
LABEL_19:
        v96 = v130;
        v137(v130, v136, v89);
        swift_storeEnumTagMultiPayload();
        if (*(v95 + 16))
        {
          LOBYTE(v145) = 0;
          v97 = swift_allocObject();
          v142 = xmmword_1D72BAA60;
          *(v97 + 16) = xmmword_1D72BAA60;
          *(v97 + 32) = v145;
          *(v97 + 40) = v88;
          *(v97 + 48) = v91;

          v98 = sub_1D72647CC();
          LOBYTE(v145) = 0;
          v99 = swift_allocObject();
          *(v99 + 16) = v98;
          *(v99 + 24) = v142;
          *(v99 + 40) = v145;
          v100 = v141[3];
          v101 = v141[4];
          v102 = __swift_project_boxed_opaque_existential_1(v141, v100);
          MEMORY[0x1EEE9AC00](v102, v103);
          MEMORY[0x1EEE9AC00](v104, v105);
          v127[-4] = sub_1D5B4AA6C;
          v127[-3] = 0;
          v125 = sub_1D670899C;
          v126 = v97;
          v106 = v147;
          v108 = sub_1D5D2F7A4(v96, sub_1D615B49C, v107, sub_1D615B4A4, &v127[-6], v100, v101);
          if (v106)
          {
            sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

            v60 = v85;
          }

          else
          {
            v123 = v108;

            if (v123)
            {
              v145 = v142;
              v146 = 0;
              v143 = v131;
              sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
              sub_1D66775F8();
              v124 = v135;
              sub_1D72647EC();

              sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
              v60 = v124;
            }

            else
            {
              sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

              v60 = v135;
            }
          }
        }

        else
        {
          sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
          v60 = v85;
        }

        return sub_1D5D2CFE8(v60, sub_1D66774E8);
      }

      v145 = v142;
      v146 = 0;
      v143 = v132;
      v85 = v135;
      v122 = v147;
      sub_1D72647EC();
      v89 = v138;
      if (v122)
      {
        sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v85, sub_1D66774E8);
      }

      v91 = v68;
      v147 = 0;
      v94 = v133;
    }

    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
    v95 = v131;
    goto LABEL_19;
  }

  sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

  v60 = v23;
  return sub_1D5D2CFE8(v60, sub_1D66774E8);
}

uint64_t sub_1D64566EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A03C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6456724(uint64_t a1)
{
  v2 = sub_1D5CB79B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6456760(uint64_t a1)
{
  v2 = sub_1D5CB79B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingBoolExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D6677694(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 4);
  v86 = *(v1 + 10);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C785D0(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24F78, sub_1D5C785D0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingBoolExpression, v20, v22, v17, &type metadata for FormatBindingBoolExpression, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v73 = v24;
  v74 = v23;
  v71 = v25 + 16;
  v72 = v26;
  (v26)(v9);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v84 = v16;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  v85 = 0;
  v31 = swift_allocObject();
  v78 = &v68;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D67089A0;
  v67 = v33;
  v85 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v85;
  v69 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D6677728(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02EF8, sub_1D6677728, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v36;
  v77 = v37;
  v38 = sub_1D72647CC();
  v85 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = *(v11 + 36);
  v79 = v28;
  v41 = &v28[v40];
  v42 = *&v28[v40 + 24];
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v66 = sub_1D67089A0;
  v67 = v34;
  v48 = v80;
  sub_1D5D2BC70(v9, sub_1D615B49C, v49, sub_1D615B4A4, (&v68 - 6), v42, v43);
  if (v48)
  {
    v50 = v79;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v52 = v50;
  }

  else
  {

    sub_1D66777BC();
    v51 = v79;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v54 = v75;
    v72(v75, v73, v74);
    swift_storeEnumTagMultiPayload();
    if (v86)
    {
      v55 = v51;
    }

    else
    {
      LOBYTE(v81) = 0;
      v56 = swift_allocObject();
      v80 = xmmword_1D728CF30;
      *(v56 + 16) = xmmword_1D728CF30;
      *(v56 + 32) = v81;
      *(v56 + 40) = v69;
      *(v56 + 48) = v30;

      v55 = v51;
      v57 = sub_1D72647CC();
      LOBYTE(v81) = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v80;
      *(v58 + 40) = v81;
      v59 = *(v41 + 3);
      v60 = *(v41 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v41, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      *(&v68 - 4) = sub_1D5B4AA6C;
      *(&v68 - 3) = 0;
      v66 = sub_1D6677810;
      v67 = v56;
      LOBYTE(v59) = sub_1D5D2F7A4(v54, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6), v59, v60);

      if (v59)
      {
        v81 = v80;
        v82 = 0;
        LOBYTE(v83) = 0;
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v52 = v55;
  }

  return sub_1D5D2CFE8(v52, sub_1D6677694);
}

uint64_t sub_1D6456F94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A1E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6456FCC(uint64_t a1)
{
  v2 = sub_1D5C982E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457008(uint64_t a1)
{
  v2 = sub_1D5C982E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6457044()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7470697263736564;
  v4 = 0x746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D64570DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A2FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6457114(uint64_t a1)
{
  v2 = sub_1D66632F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457150(uint64_t a1)
{
  v2 = sub_1D66632F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingDateTimeExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  sub_1D667788C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6677920(0);
  sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v32;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x656D695465746164, 0xE800000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D60344C0();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v17 = v28;
  v25 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D5F2E958();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v24 = v26;
    v23 = v27;
    sub_1D620757C(v26, v27);
    sub_1D6207594(v24, v23);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v23 = 0;
    v24 = 13;
  }

  *v13 = v17;
  v13[1] = v24;
  v13[2] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingDateTimeExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D6677AA0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v74 = v1[2];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6677920(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingDateTimeExpression, v19, v21, v16, &type metadata for FormatBindingDateTimeExpression, v19, &type metadata for FormatVersions.Dawnburst, v17, v14, v20, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCCA8);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v72 = v23;
  v73 = v22;
  v70[2] = v24 + 16;
  v71 = v25;
  (v25)(v9);
  v70[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v15;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v86 = 0;
  v29 = swift_allocObject();
  *&v80 = v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v86;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D67089A4;
  v69 = v31;
  v86 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v86;
  v70[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6677B34(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02DA8, sub_1D6677B34, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v77 = v34;
  v78 = v35;
  v36 = sub_1D72647CC();
  v86 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v86;
  v38 = *(v11 + 36);
  v79 = v14;
  v39 = &v14[v38];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v70[-4] = sub_1D615B4A4;
  v70[-3] = &v70[-6];
  v68 = sub_1D67089A4;
  v69 = v32;
  v46 = v81;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, &v70[-6], v40, v41);
  if (v46)
  {
    v48 = v79;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v48;
  }

  else
  {
    v81 = v39;

    sub_1D6034514();
    v49 = v79;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v52 = v75;
    v71(v75, v72, v73);
    swift_storeEnumTagMultiPayload();
    v53 = v76;
    if (v76 == 13)
    {
      sub_1D620757C(v76, v74);
      v54 = v49;
    }

    else
    {
      LOBYTE(v84) = 0;
      v55 = swift_allocObject();
      v80 = xmmword_1D728CF30;
      *(v55 + 16) = xmmword_1D728CF30;
      *(v55 + 32) = v84;
      *(v55 + 40) = v70[0];
      *(v55 + 48) = v28;

      v56 = v74;
      sub_1D620757C(v53, v74);
      v54 = v49;
      v57 = sub_1D72647CC();
      LOBYTE(v84) = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v80;
      *(v58 + 40) = v84;
      v59 = *(v81 + 3);
      v60 = *(v81 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v81, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      v70[-4] = sub_1D5B4AA6C;
      v70[-3] = 0;
      v68 = sub_1D6677BC8;
      v69 = v55;
      LOBYTE(v59) = sub_1D5D2F7A4(v52, sub_1D615B49C, v65, sub_1D615B4A4, &v70[-6], v59, v60);

      if (v59)
      {
        v84 = v80;
        v85 = 0;
        v82 = v76;
        v83 = v56;
        sub_1D5F2E9AC();
        sub_1D72647EC();
        v66 = v82;
        v67 = v83;
      }

      else
      {
        v66 = v76;
        v67 = v56;
      }

      sub_1D6207594(v66, v67);
    }

    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    v50 = v54;
  }

  return sub_1D5D2CFE8(v50, sub_1D6677AA0);
}

uint64_t sub_1D6457D60()
{
  v1 = 0x6369676F6CLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695465746164;
  }
}

uint64_t sub_1D6457DB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A4B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6457DE8(uint64_t a1)
{
  v2 = sub_1D66779F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457E24(uint64_t a1)
{
  v2 = sub_1D66779F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6457E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66649C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6457F40()
{
  v1 = 0x656D695465746164;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F74617265706FLL;
  }
}

uint64_t sub_1D6457F94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A5CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6457FCC(uint64_t a1)
{
  v2 = sub_1D666E0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6458008(uint64_t a1)
{
  v2 = sub_1D666E0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v88 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v87 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v103 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v101 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v100 = &v87 - v29;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *v1;
  v109 = v1[1];
  v105 = *(v1 + 2) | (*(v1 + 3) << 32);
  v108 = *(v1 + 4);
  v107 = v1[10];
  v104 = *(v1 + 11) | (v1[15] << 32);
  v34 = *(v1 + 3);
  v106 = *(v1 + 2);
  v92 = v34;
  v97 = *(v1 + 4);
  v99 = v1[40];
  v98 = v1[41];
  v96 = *(v1 + 23);
  v95 = *(v1 + 42);
  v35 = *(v1 + 3);
  v94 = *(v1 + 4);
  v93 = v35;
  v36 = *(v1 + 10);
  v37 = *(v1 + 11);
  v38 = *(v1 + 12);
  v39 = v1[106];
  v40 = *(v1 + 52);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = sub_1D5C30408();
  v110 = v33;
  sub_1D5D2EE70(&type metadata for FormatBindingExpression, &type metadata for FormatCodingKeys, v44, v41, &type metadata for FormatBindingExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v33, v43, &off_1F51F6C78);
  v45 = (v39 >> 1) & 8 | (v40 >> 13);
  if (v45 > 3)
  {
    if (v45 <= 5)
    {
      v46 = v110;
      if (v45 == 4)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
        v71 = v87;
        (*(*(v69 - 8) + 16))(v87, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D639661C(4, v111 & 1, v71);
        v72 = v71;
        goto LABEL_44;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD68);
      v50 = v90;
      (*(*(v85 - 8) + 16))(v90, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63967B4(5, v111 | (v109 << 8) | (v105 << 16), v108 | (v107 << 16) | (v104 << 24), v106, v92, v50);
    }

    else
    {
      v46 = v110;
      if (v45 == 6)
      {
        v73 = v111 | (v109 << 8) | (v105 << 16);
        v74 = v108 | (v107 << 16) | (v104 << 24);
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCCA8);
        v50 = v88;
        (*(*(v75 - 8) + 16))(v88, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396950(6, v73, v74, v106, v50);
      }

      else if (v45 == 7)
      {
        v47 = v108 | (v107 << 16) | (v104 << 24);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCE80);
        v50 = v89;
        (*(*(v48 - 8) + 16))(v89, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396AE8(7, v111, v47, v106, v50);
      }

      else
      {
        if (qword_1EDF31F30 != -1)
        {
          swift_once();
        }

        v83 = sub_1D725BD1C();
        v84 = __swift_project_value_buffer(v83, qword_1EDFFCE20);
        v50 = v91;
        (*(*(v83 - 8) + 16))(v91, v84, v83);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396C80(8, v111, v50);
      }
    }

    v72 = v50;
LABEL_44:
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    v82 = v46;
    return sub_1D5D2CFE8(v82, sub_1D5D30DC4);
  }

  v51 = v38;
  v52 = v37;
  v53 = v36;
  v54 = v102;
  v55 = v100;
  v56 = v103;
  v57 = v101;
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v64 = v110;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCD30);
      (*(*(v65 - 8) + 16))(v54, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v107)
      {
        v67 = 0x10000;
      }

      else
      {
        v67 = 0;
      }

      sub_1D63962DC(2, v111 | (v109 << 8) | (v105 << 16), v67 | v108, v54);
      v68 = v54;
    }

    else
    {
      v64 = v110;
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCDB0);
      (*(*(v79 - 8) + 16))(v56, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v109)
      {
        v81 = 256;
      }

      else
      {
        v81 = 0;
      }

      sub_1D639647C(3, v81 & 0xFFFE | v111 & 1, v56);
      v68 = v56;
    }

    goto LABEL_36;
  }

  if (v45)
  {
    LOBYTE(v118) = v111;
    BYTE1(v118) = v109;
    *(&v118 + 2) = v105;
    WORD3(v118) = WORD2(v105);
    WORD4(v118) = v108;
    BYTE10(v118) = v107;
    *(&v118 + 11) = v104;
    HIBYTE(v118) = BYTE4(v104);
    v119 = v106;
    v120 = v92;
    v121 = v97;
    v122 = v99;
    v123 = v98;
    v124 = v95;
    v125 = (v95 | (v96 << 32)) >> 32;
    v126 = v93;
    v127 = v94;
    v128 = v53;
    v129 = v52;
    v130 = v51;
    v131 = v40 & 0x1FFF;
    v132 = ((v40 | (v39 << 16)) & 0xEF1FFF) >> 16;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v77 = sub_1D725BD1C();
    v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
    (*(*(v77 - 8) + 16))(v57, v78, v77);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v64 = v110;
    sub_1D639612C(1, &v118, v57);
    v68 = v57;
LABEL_36:
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    v82 = v64;
    return sub_1D5D2CFE8(v82, sub_1D5D30DC4);
  }

  LOBYTE(v112) = v111;
  BYTE1(v112) = v109;
  *(&v112 + 2) = v105;
  WORD3(v112) = WORD2(v105);
  WORD4(v112) = v108;
  BYTE10(v112) = v107;
  *(&v112 + 11) = v104;
  HIBYTE(v112) = BYTE4(v104);
  v113 = v106;
  v114 = v92;
  v115 = v97;
  v116 = v99;
  v117 = v98 & 1;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = v55;
  (*(*(v58 - 8) + 16))(v55, v59, v58);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v61 = v55;
  v62 = v110;
  sub_1D6395F8C(0, &v112, v61);
  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v62, sub_1D5D30DC4);
}

uint64_t sub_1D6458E24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6567616D69;
    v6 = 1819242338;
    if (a1 != 2)
    {
      v6 = 0x4D6465726579616CLL;
    }

    if (a1)
    {
      v5 = 1954047348;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D695465746164;
    v2 = 0x74616F6C66;
    if (a1 != 7)
    {
      v2 = 0x73726F736E6F7073;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6572616873;
    if (a1 != 4)
    {
      v3 = 7107189;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6458F70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6458E24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatBindingFloatExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D6677DE8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6677E7C(0);
  sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v32;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D6677FFC();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v17 = v28;
  v25 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D5F2EA7C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v19 = v26;
    v18 = v27;
    sub_1D62B50D4(v26);
    sub_1D62B5230(v19, v18);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0;
    v19 = 13;
  }

  *v13 = v17;
  *(v13 + 8) = v19;
  *(v13 + 16) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v71 - v8;
  sub_1D6678050(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 2);
  v77 = *(v1 + 1);
  v75 = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6677E7C(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpression, v20, v22, v17, &type metadata for FormatBindingFloatExpression, v20, &type metadata for FormatVersions.DawnburstF, v18, v14, v21, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v73 = v24;
  v74 = v23;
  v71[2] = v25 + 16;
  v72 = v26;
  (v26)(v9);
  v71[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v83) = v15;
  v85 = 0uLL;
  v86 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v87 = 0;
  v30 = swift_allocObject();
  *&v81 = v71;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v87;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v71[-4] = sub_1D5B4AA6C;
  v71[-3] = 0;
  v69 = sub_1D67088A4;
  v70 = v32;
  v87 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v87;
  v71[0] = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66780E4(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02E78, sub_1D66780E4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v35;
  v79 = v36;
  v37 = sub_1D72647CC();
  v87 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v87;
  v39 = *(v11 + 36);
  v80 = v14;
  v40 = &v14[v39];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v71[-4] = sub_1D615B4A4;
  v71[-3] = &v71[-6];
  v69 = sub_1D67088A4;
  v70 = v33;
  v47 = v82;
  sub_1D5D2BC70(v9, sub_1D615B49C, v48, sub_1D615B4A4, &v71[-6], v41, v42);
  if (v47)
  {
    v49 = v80;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v49;
  }

  else
  {
    v82 = v40;

    sub_1D6678178();
    v50 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v76;
    v72(v76, v73, v74);
    swift_storeEnumTagMultiPayload();
    v54 = v77;
    if (v77 == 13)
    {
      sub_1D62B50D4(v77);
      v55 = v50;
    }

    else
    {
      LOBYTE(v85) = 0;
      v56 = swift_allocObject();
      v81 = xmmword_1D728CF30;
      *(v56 + 16) = xmmword_1D728CF30;
      *(v56 + 32) = v85;
      *(v56 + 40) = v71[0];
      *(v56 + 48) = v29;

      v57 = v75;
      sub_1D62B50D4(v54);
      v55 = v50;
      v58 = sub_1D72647CC();
      LOBYTE(v85) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v81;
      *(v59 + 40) = v85;
      v60 = *(v82 + 3);
      v61 = *(v82 + 4);
      v62 = __swift_project_boxed_opaque_existential_1(v82, v60);
      MEMORY[0x1EEE9AC00](v62, v63);
      MEMORY[0x1EEE9AC00](v64, v65);
      v71[-4] = sub_1D5B4AA6C;
      v71[-3] = 0;
      v69 = sub_1D67088A4;
      v70 = v56;
      LOBYTE(v60) = sub_1D5D2F7A4(v53, sub_1D615B49C, v66, sub_1D615B4A4, &v71[-6], v60, v61);

      if (v60)
      {
        v85 = v81;
        v86 = 0;
        v83 = v77;
        v84 = v57;
        sub_1D5F2EAD0();
        sub_1D72647EC();
        v67 = v83;
        v68 = v84;
      }

      else
      {
        v67 = v77;
        v68 = v57;
      }

      sub_1D62B5230(v67, v68);
    }

    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v51 = v55;
  }

  return sub_1D5D2CFE8(v51, sub_1D6678050);
}

uint64_t sub_1D6459BC4(uint64_t a1)
{
  v2 = sub_1D6677F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6459C00(uint64_t a1)
{
  v2 = sub_1D6677F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingFloatExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v28;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5114400;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6678230();
    v26 = 0;
    v27 = 0;
    sub_1D726431C();
    if (v25)
    {
      if (v25 == 1)
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 12;
      }

      else
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 13;
      }
    }

    else
    {
      v25 = xmmword_1D7279980;
      sub_1D6678284();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v24 = v26;
      v23 = v27;
    }

    *v12 = v24;
    v12[1] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 1);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpressionLogic, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatBindingFloatExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v21, v18, v23, &off_1F51F6BD8);
  if (v19 == 12)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE80);
    (*(*(v28 - 8) + 16))(v10, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64196EC(1, v10);
    v27 = v10;
  }

  else if (v19 == 13)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCE80);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64196EC(2, v6);
    v27 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCE80);
    (*(*(v30 - 8) + 16))(v14, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6387870(0, v19, v20, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D645A3A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7974706D457369;
  if (v2 != 1)
  {
    v5 = 0x7974706D45746F6ELL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x657261706D6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x7974706D457369;
  if (*a2 != 1)
  {
    v8 = 0x7974706D45746F6ELL;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657261706D6F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D645A4A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D645A548(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D645A5D8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D645A678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666484C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t FormatBindingFloatExpressionLogicCompare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66782D8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667836C(0);
  sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x726F74617265706FLL, 0xE800000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C5813C();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C35218();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpressionLogicCompare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66784EC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = *(v1 + 1);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667836C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpressionLogicCompare, v19, v21, v16, &type metadata for FormatBindingFloatExpressionLogicCompare, v19, &type metadata for FormatVersions.DawnburstF, v17, v14, v20, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE80);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v84) = v15;
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v87 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v87;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67089A8;
  v68 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6678580(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02C28, sub_1D6678580, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v87 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v87;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D6678614;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    v84 = v75;
    v83 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v87 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v87;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D67089A8;
    v68 = v56;
    v87 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v87;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v87 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v87;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D67089A8;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D5C3526C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66784EC);
}

uint64_t sub_1D645B304()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F74617265706FLL;
  }
}

uint64_t sub_1D645B354@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A6E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D645B38C(uint64_t a1)
{
  v2 = sub_1D6678444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645B3C8(uint64_t a1)
{
  v2 = sub_1D6678444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645B410()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D645B4C8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D645B56C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D645B620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666383C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D645B650(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656E696C64616568;
  v4 = 0xE500000000000000;
  v5 = 0x70756F7267;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6575737369;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatBindingFontSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v27 = a2;
  sub_1D6678690(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6678724(0);
  sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v19 = v2;
LABEL_13:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v9;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6627E68(1702521203, 0xE400000000000000, 0x676E696C616373, 0xE700000000000000);
      sub_1D5E2D970();
      v19 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v10 + 8))(v14, v5);
      goto LABEL_13;
    }

LABEL_7:
  }

  v32 = 0uLL;
  v33 = 0;
  v18 = 16.0;
  if (sub_1D726434C())
  {
    v30 = 0uLL;
    v31 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v18 = v28;
  }

  v27 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v27;
    v31 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v25 = v28;
    v26 = v29;
  }

  else
  {
    (*(v10 + 8))(v9, v5);
    v25 = 0.0;
    v26 = 3072;
  }

  *v11 = v18;
  *(v11 + 8) = v25;
  *(v11 + 16) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFontSize.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v74 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v68 - v9;
  sub_1D66788A4(0);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = *(v1 + 8);
  v73 = *(v1 + 16);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6678724(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingFontSize, v19, v21, v16, &type metadata for FormatBindingFontSize, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(*(v22 - 8) + 16);
  v24(v10, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v76 = v2;
  if (v15 == 16.0)
  {
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69 = v24;
    v70 = v23;
    v27 = v75;
    v28 = &v14[*(v75 + 44)];
    v30 = *v28;
    v29 = *(v28 + 1);
    LOBYTE(v79) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = v79;
    *(v31 + 40) = v30;
    *(v31 + 48) = v29;
    sub_1D6678938(0);
    v33 = v32;
    v34 = sub_1D5B58B84(&qword_1EDF03358, sub_1D6678938, MEMORY[0x1E69E6F60]);

    v68[0] = v34;
    v68[1] = v33;
    v35 = sub_1D72647CC();
    LOBYTE(v79) = 0;
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 16) = v35;
    *(v36 + 40) = v79;
    v37 = &v14[*(v27 + 36)];
    v38 = *(v37 + 3);
    v39 = *(v37 + 4);
    v40 = __swift_project_boxed_opaque_existential_1(v37, v38);
    *&v71 = v68;
    MEMORY[0x1EEE9AC00](v40, v41);
    MEMORY[0x1EEE9AC00](v42, v43);
    v68[-4] = sub_1D5B4AA6C;
    v68[-3] = 0;
    v66 = sub_1D66789CC;
    v67 = v31;
    v44 = v76;
    v46 = sub_1D5D2F7A4(v10, sub_1D615B49C, v45, sub_1D615B4A4, &v68[-6], v38, v39);
    if (v44)
    {
      goto LABEL_11;
    }

    v64 = v46;

    if (v64)
    {
      v79 = 0uLL;
      v80 = 0;
      v77 = v15;
      sub_1D5B578C4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
      v76 = 0;
    }

    else
    {
      v76 = 0;
      sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
    }

    v24 = v69;
    v23 = v70;
  }

  v10 = v74;
  v24(v74, v23, v22);
  swift_storeEnumTagMultiPayload();
  v25 = v75;
  if ((v73 & 0xFF00) == 0xC00)
  {
    goto LABEL_6;
  }

  v47 = &v14[*(v75 + 44)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v79) = 0;
  v50 = swift_allocObject();
  v71 = xmmword_1D728CF30;
  *(v50 + 16) = xmmword_1D728CF30;
  *(v50 + 32) = v79;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D6678938(0);
  sub_1D5B58B84(&qword_1EDF03358, sub_1D6678938, MEMORY[0x1E69E6F60]);

  v51 = sub_1D72647CC();
  LOBYTE(v79) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v71;
  *(v52 + 40) = v79;
  v53 = &v14[*(v25 + 36)];
  v54 = *(v53 + 3);
  v55 = *(v53 + 4);
  v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D67089AC;
  v67 = v50;
  v60 = v76;
  v62 = sub_1D5D2F7A4(v10, sub_1D615B49C, v61, sub_1D615B4A4, &v68[-6], v54, v55);
  if (v60)
  {
LABEL_11:
    sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v14, sub_1D66788A4);
  }

  v65 = v62;

  if (v65)
  {
    v79 = v71;
    v80 = 0;
    v77 = v72;
    v78 = v73;
    sub_1D5FC8148();
    sub_1D72647EC();
    v26 = v74;
    goto LABEL_7;
  }

  v10 = v74;
LABEL_6:
  v26 = v10;
LABEL_7:
  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D66788A4);
}

uint64_t sub_1D645C324()
{
  v1 = 0x676E696C616373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1D645C370@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A7F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D645C3A8(uint64_t a1)
{
  v2 = sub_1D66787FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645C3E4(uint64_t a1)
{
  v2 = sub_1D66787FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingImageExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D6678A48(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v79 = v1[1];
  v80 = v15;
  v16 = *(v1 + 4);
  v17 = *(v1 + 40);
  v90 = *(v1 + 41);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5CBD978(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24F08, sub_1D5CBD978, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingImageExpression, v21, v23, v18, &type metadata for FormatBindingImageExpression, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v74 = v25;
  v75 = v24;
  v73 = v27;
  v72 = v26 + 16;
  (v27)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v80;
  v86 = v79;
  v87 = v16;
  v88 = v17;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = v14;
  v30 = *v28;
  v31 = *(v28 + 1);
  v89 = 0;
  v32 = swift_allocObject();
  *&v79 = &v69;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v89;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67088A4;
  v68 = v34;
  v89 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v89;
  v70 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6678ADC(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02E68, sub_1D6678ADC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v77 = v37;
  v78 = v38;
  v39 = sub_1D72647CC();
  v89 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v89;
  v41 = *(v11 + 36);
  *&v80 = v29;
  v42 = &v29[v41];
  v43 = *&v29[v41 + 24];
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v67 = sub_1D67088A4;
  v68 = v35;
  v49 = v81;
  sub_1D5D2BC70(v9, sub_1D615B49C, v50, sub_1D615B4A4, (&v69 - 6), v43, v44);
  if (v49)
  {
    v51 = v80;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v51;
  }

  else
  {

    sub_1D6678B70();
    v52 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v55 = v76;
    v73(v76, v74, v75);
    swift_storeEnumTagMultiPayload();
    if (v90)
    {
      v56 = v52;
    }

    else
    {
      LOBYTE(v85) = 0;
      v57 = swift_allocObject();
      v81 = xmmword_1D728CF30;
      *(v57 + 16) = xmmword_1D728CF30;
      *(v57 + 32) = v85;
      *(v57 + 40) = v70;
      *(v57 + 48) = v31;

      v56 = v52;
      v58 = sub_1D72647CC();
      LOBYTE(v85) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v81;
      *(v59 + 40) = v85;
      v60 = *(v42 + 3);
      v61 = *(v42 + 4);
      v62 = __swift_project_boxed_opaque_existential_1(v42, v60);
      MEMORY[0x1EEE9AC00](v62, v63);
      MEMORY[0x1EEE9AC00](v64, v65);
      *(&v69 - 4) = sub_1D5B4AA6C;
      *(&v69 - 3) = 0;
      v67 = sub_1D67088A4;
      v68 = v57;
      LOBYTE(v60) = sub_1D5D2F7A4(v55, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

      if (v60)
      {
        v85 = v81;
        LOBYTE(v86) = 0;
        LOBYTE(v82) = 0;
        sub_1D5EEC0D4();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    v53 = v56;
  }

  return sub_1D5D2CFE8(v53, sub_1D6678A48);
}

uint64_t sub_1D645CC6C(uint64_t a1)
{
  v2 = sub_1D5CBDAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645CCA8(uint64_t a1)
{
  v2 = sub_1D5CBDAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingLayeredMediaExpression.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6678C28(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6678CBC(0);
  sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5F2BD8C();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v17 = v26;
  v24 = xmmword_1D728CF30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  if (sub_1D726434C())
  {
    v26 = v24;
    v27 = 0;
    sub_1D5F2E4C8();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v18 = v30;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 1;
  }

  *v13 = v17;
  v13[1] = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingLayeredMediaExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v64 - v8;
  sub_1D6678E3C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v68 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6678CBC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingLayeredMediaExpression, v19, v21, v16, &type metadata for FormatBindingLayeredMediaExpression, v19, &type metadata for FormatVersions.AzdenC, v17, v14, v20, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCDB0);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v66 = v23;
  v67 = v22;
  v64[2] = v24 + 16;
  v65 = v25;
  (v25)(v9);
  v64[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v78 = v15;
  v75 = 0uLL;
  v76 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v77 = 0;
  v29 = swift_allocObject();
  v72 = v64;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v77;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v74 = v9;
  v64[-4] = sub_1D5B4AA6C;
  v64[-3] = 0;
  v62 = sub_1D67088A4;
  v63 = v31;
  v77 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v77;
  v64[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6678ED0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02C98, sub_1D6678ED0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v70 = v35;
  v71 = v34;
  v36 = sub_1D72647CC();
  v77 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v77;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v64[-4] = sub_1D615B4A4;
  v64[-3] = &v64[-6];
  v45 = v73;
  v46 = v74;
  v62 = sub_1D67088A4;
  v63 = v32;
  sub_1D5D2BC70(v74, sub_1D615B49C, v47, sub_1D615B4A4, &v64[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v48 = v14;
  }

  else
  {

    sub_1D5F2BDE0();
    sub_1D72647EC();
    v48 = v14;
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

    v49 = v69;
    v65(v69, v66, v67);
    swift_storeEnumTagMultiPayload();
    if ((v68 & 1) == 0)
    {
      LOBYTE(v75) = 0;
      v50 = swift_allocObject();
      v74 = xmmword_1D728CF30;
      *(v50 + 16) = xmmword_1D728CF30;
      *(v50 + 32) = v75;
      *(v50 + 40) = v64[0];
      *(v50 + 48) = v28;

      v51 = sub_1D72647CC();
      LOBYTE(v75) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v74;
      *(v52 + 40) = v75;
      v53 = *(v38 + 3);
      v54 = *(v38 + 4);
      v55 = __swift_project_boxed_opaque_existential_1(v38, v53);
      MEMORY[0x1EEE9AC00](v55, v56);
      MEMORY[0x1EEE9AC00](v57, v58);
      v64[-4] = sub_1D5B4AA6C;
      v64[-3] = 0;
      v62 = sub_1D67088A4;
      v63 = v50;
      v61 = sub_1D5D2F7A4(v49, sub_1D615B49C, v59, sub_1D615B4A4, &v64[-6], v53, v54);

      if (v61)
      {
        v75 = v74;
        v76 = 0;
        v78 = 0;
        sub_1D5F2E51C();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D6678E3C);
}

uint64_t sub_1D645D904(uint64_t a1)
{
  v2 = sub_1D6678D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645D940(uint64_t a1)
{
  v2 = sub_1D6678D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingShareAttributionExpression.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D6678FC8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667905C(0);
  sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D666E6FC();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v25 = xmmword_1D728CF30;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  if (sub_1D726434C())
  {
    v27 = v25;
    v28 = 0;
    sub_1D5F2E5EC();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v19 = v31;
  }

  else
  {
    (*(v11 + 8))(v10, v6);
    v19 = 1;
  }

  *v12 = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingShareAttributionExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v63 - v8;
  sub_1D66791DC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *v1;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D667905C(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingShareAttributionExpression, v18, v20, v15, &type metadata for FormatBindingShareAttributionExpression, v18, &type metadata for FormatVersions.StarSky, v16, v14, v19, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v68 = v22;
  v69 = v21;
  v66 = v23 + 16;
  v67 = v24;
  (v24)(v9);
  v65 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v76 = 0uLL;
  v77 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v78[0] = 0;
  v28 = swift_allocObject();
  v73 = &v63;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v78[0];
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v75 = v9;
  *(&v63 - 4) = sub_1D5B4AA6C;
  *(&v63 - 3) = 0;
  v61 = sub_1D67088A4;
  v62 = v30;
  v78[0] = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v78[0];
  v64 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D6679270(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02C38, sub_1D6679270, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v71 = v34;
  v72 = v33;
  v35 = sub_1D72647CC();
  v78[0] = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v78[0];
  v37 = &v14[*(v11 + 36)];
  v38 = *(v37 + 3);
  v39 = *(v37 + 4);
  v40 = __swift_project_boxed_opaque_existential_1(v37, v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v63 - 4) = sub_1D615B4A4;
  *(&v63 - 3) = (&v63 - 6);
  v44 = v74;
  v45 = v75;
  v61 = sub_1D67088A4;
  v62 = v31;
  sub_1D5D2BC70(v75, sub_1D615B49C, v46, sub_1D615B4A4, (&v63 - 6), v38, v39);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {

    sub_1D6679304();
    sub_1D72647EC();
    v47 = v14;
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

    v48 = v70;
    v67(v70, v68, v69);
    swift_storeEnumTagMultiPayload();
    if ((v79 & 1) == 0)
    {
      LOBYTE(v76) = 0;
      v49 = swift_allocObject();
      v75 = xmmword_1D728CF30;
      *(v49 + 16) = xmmword_1D728CF30;
      *(v49 + 32) = v76;
      *(v49 + 40) = v64;
      *(v49 + 48) = v27;

      v50 = sub_1D72647CC();
      LOBYTE(v76) = 0;
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = v75;
      *(v51 + 40) = v76;
      v52 = *(v37 + 3);
      v53 = *(v37 + 4);
      v54 = __swift_project_boxed_opaque_existential_1(v37, v52);
      MEMORY[0x1EEE9AC00](v54, v55);
      MEMORY[0x1EEE9AC00](v56, v57);
      *(&v63 - 4) = sub_1D5B4AA6C;
      *(&v63 - 3) = 0;
      v61 = sub_1D67088A4;
      v62 = v49;
      v60 = sub_1D5D2F7A4(v48, sub_1D615B49C, v58, sub_1D615B4A4, (&v63 - 6), v52, v53);

      if (v60)
      {
        v76 = v75;
        v77 = 0;
        v78[0] = 0;
        sub_1D5F2E640();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v47, sub_1D66791DC);
}

uint64_t sub_1D645E57C(uint64_t a1)
{
  v2 = sub_1D6679134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645E5B8(uint64_t a1)
{
  v2 = sub_1D6679134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingShareAttributionExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingShareAttributionExpressionLogic, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatBindingShareAttributionExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641870C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641870C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D645E920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D45746F6ELL;
  }

  else
  {
    v3 = 0x7974706D457369;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D45746F6ELL;
  }

  else
  {
    v5 = 0x7974706D457369;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D645E9C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645EA4C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645EB98(uint64_t a1)
{
  v2 = sub_1D665E294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645EBD4(uint64_t a1)
{
  v2 = sub_1D665E294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645EC1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D645ECF0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D645EDB0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D645EE80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664A14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D645EEB0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7974706D457369;
  v4 = 0xEB0000000064656CLL;
  v5 = 0x6C69666C75467369;
  if (*v1 != 2)
  {
    v5 = 0x69666C7546746F6ELL;
    v4 = 0xEC00000064656C6CLL;
  }

  if (*v1)
  {
    v3 = 0x7974706D45746F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatBindingTextExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v96 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v81 - v8;
  sub_1D6679410(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v109 = *v1;
  v110 = v15;
  v111 = v1[2];
  v112 = *(v1 + 24);
  v16 = *(v1 + 8);
  v91 = *(v1 + 7);
  v90 = v16;
  v17 = *(v1 + 10);
  v94 = *(v1 + 9);
  v89 = v17;
  v18 = *(v1 + 12);
  v92 = *(v1 + 11);
  v93 = v18;
  v114 = *(v1 + 106);
  v88 = *(v1 + 52);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C77030(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF24F68, sub_1D5C77030, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpression, v22, v24, v19, &type metadata for FormatBindingTextExpression, v22, &type metadata for FormatVersions.JazzkonC, v20, v14, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v95 = v26;
  v87 = v25;
  v86 = v28;
  v85 = v27 + 16;
  (v28)(v9);
  v84 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v105 = v112;
  v107 = 0uLL;
  v108 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v113 = 0;
  v32 = swift_allocObject();
  v99 = &v81;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v113;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v101 = v9;
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D67088A4;
  v80 = v34;
  v113 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v113;
  v83 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66794A4(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02EE8, sub_1D66794A4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v97 = v37;
  v98 = v38;
  v39 = sub_1D72647CC();
  v113 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v113;
  v41 = &v14[*(v11 + 36)];
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v48 = v101;
  v79 = sub_1D67088A4;
  v80 = v35;
  v49 = v100;
  sub_1D5D2BC70(v101, sub_1D615B49C, v50, sub_1D615B4A4, (&v81 - 6), v42, v43);
  if (v49)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v100 = v41;
    v51 = v95;
    v82 = v31;

    sub_1D5FD79B8();
    sub_1D72647EC();
    v52 = v88 | (v114 << 16);
    sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

    v86(v96, v51, v87);
    swift_storeEnumTagMultiPayload();
    v53 = v52;
    v54 = (v52 & 0xE00000) == 12582912;
    v55 = v93;
    v56 = v92;
    v57 = v89;
    v58 = v91;
    if (v54 && (v53 & 0xFFFFFF) == 0xC00000 && v91 == 1 && !(v94 | v90 | v89 | v92 | v93))
    {
      sub_1D5CA8444(1, 0, v94, v89, v92, v93, 12582912);
    }

    else
    {
      LOBYTE(v102) = 0;
      v59 = swift_allocObject();
      v101 = xmmword_1D728CF30;
      *(v59 + 16) = xmmword_1D728CF30;
      *(v59 + 32) = v102;
      *(v59 + 40) = v83;
      *(v59 + 48) = v82;

      LODWORD(v99) = v53;
      sub_1D5CA8444(v58, v90, v94, v57, v56, v55, v53);
      v60 = sub_1D72647CC();
      LOBYTE(v102) = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v61 + 24) = v101;
      *(v61 + 40) = v102;
      v62 = *(v100 + 3);
      v63 = *(v100 + 4);
      v64 = __swift_project_boxed_opaque_existential_1(v100, v62);
      MEMORY[0x1EEE9AC00](v64, v65);
      MEMORY[0x1EEE9AC00](v66, v67);
      *(&v81 - 4) = sub_1D5B4AA6C;
      *(&v81 - 3) = 0;
      v79 = sub_1D67088A4;
      v80 = v59;
      LOBYTE(v62) = sub_1D5D2F7A4(v96, sub_1D615B49C, v68, sub_1D615B4A4, (&v81 - 6), v62, v63);
      v69 = v93;
      v70 = v99;

      if (v62)
      {
        v107 = v101;
        v108 = 0;
        *&v102 = v91;
        *(&v102 + 1) = v90;
        *&v103 = v94;
        *(&v103 + 1) = v89;
        *&v104 = v92;
        *(&v104 + 1) = v69;
        v106 = BYTE2(v70);
        v105 = v70;
        sub_1D5F2E3F8();
        sub_1D72647EC();
        v72 = *(&v102 + 1);
        v71 = v102;
        v74 = *(&v103 + 1);
        v73 = v103;
        v76 = *(&v104 + 1);
        v75 = v104;
        v77 = v105 | (v106 << 16);
      }

      else
      {
        v71 = v91;
        v72 = v90;
        v73 = v94;
        v74 = v89;
        v75 = v92;
        v76 = v69;
        v77 = v70;
      }

      sub_1D5CA8488(v71, v72, v73, v74, v75, v76, v77);
    }

    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6679410);
}

uint64_t sub_1D645FA54(uint64_t a1)
{
  v2 = sub_1D5C96BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FA90(uint64_t a1)
{
  v2 = sub_1D5C96BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D645FAF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7974706D457369;
  v5 = 0xE700000000000000;
  v6 = 0x657261706D6F63;
  if (v2 != 6)
  {
    v6 = 0x676E69646E6962;
    v5 = 0xE700000000000000;
  }

  v7 = 0x6966667553736168;
  v8 = 0xE900000000000078;
  if (v2 != 4)
  {
    v7 = 0x6874676E656CLL;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736E6961746E6F63;
  if (v2 != 2)
  {
    v10 = 0x6966657250736168;
    v9 = 0xE900000000000078;
  }

  if (*v1)
  {
    v4 = 0x7974706D45746F6ELL;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1D645FC48()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

uint64_t sub_1D645FC9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667A910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D645FCD4(uint64_t a1)
{
  v2 = sub_1D66685B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FD10(uint64_t a1)
{
  v2 = sub_1D66685B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645FD5C(uint64_t a1)
{
  v2 = sub_1D6668214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FD98(uint64_t a1)
{
  v2 = sub_1D6668214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D645FDE4(uint64_t a1)
{
  v2 = sub_1D6667E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645FE20(uint64_t a1)
{
  v2 = sub_1D6667E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingURLExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D667959C(0);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6679630(0);
  sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v33;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5CA38E4();
  v34 = 0uLL;
  v35 = 0;
  sub_1D726431C();
  v17 = v7;
  v18 = v13;
  v19 = *(&v36 + 1);
  v31 = v36;
  v20 = v37;
  v21 = v38;
  v30 = xmmword_1D728CF30;
  v36 = xmmword_1D728CF30;
  LOBYTE(v37) = 0;
  if (sub_1D726434C())
  {
    v34 = v30;
    v35 = 0;
    sub_1D5F2E834();
    sub_1D726431C();
    (*(v18 + 8))(v10, v17);
    v27 = v39;
  }

  else
  {
    (*(v18 + 8))(v10, v17);
    v27 = 1;
  }

  v28 = v19;
  v29 = v32;
  *v32 = v31;
  v29[1] = v28;
  v29[2] = v20;
  *(v29 + 24) = v21;
  *(v29 + 25) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingURLExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66797B0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v80 = v1[2];
  LODWORD(v79) = *(v1 + 24);
  v89 = *(v1 + 25);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6679630(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingURLExpression, v20, v22, v17, &type metadata for FormatBindingURLExpression, v20, &type metadata for FormatVersions.SydroF, v18, v14, v21, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v76 = v24;
  v73 = v26;
  v74 = v23;
  v72 = v25 + 16;
  (v26)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v85 = v15;
  *(&v85 + 1) = v16;
  v86 = v80;
  v87 = v79;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  v88 = 0;
  v31 = swift_allocObject();
  *&v79 = &v69;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v88;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67088A4;
  v68 = v33;
  v88 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v88;
  v70 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D6679844(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02FB8, sub_1D6679844, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v77 = v37;
  v78 = v36;
  v38 = sub_1D72647CC();
  v88 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v88;
  v40 = *(v11 + 36);
  v80 = v28;
  v41 = &v28[v40];
  v42 = *&v28[v40 + 24];
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v67 = sub_1D67088A4;
  v68 = v34;
  v48 = v81;
  sub_1D5D2BC70(v9, sub_1D615B49C, v49, sub_1D615B4A4, (&v69 - 6), v42, v43);
  if (v48)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v80;
  }

  else
  {
    v51 = v76;
    v81 = v30;

    sub_1D6089CC4();
    v52 = v80;
    sub_1D72647EC();
    v50 = v52;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v75;
    v73(v75, v51, v74);
    swift_storeEnumTagMultiPayload();
    v54 = v89;
    if (v89 != 1)
    {
      LOBYTE(v85) = 0;
      v55 = swift_allocObject();
      v79 = xmmword_1D728CF30;
      *(v55 + 16) = xmmword_1D728CF30;
      *(v55 + 32) = v85;
      *(v55 + 40) = v70;
      *(v55 + 48) = v81;

      v56 = sub_1D72647CC();
      LOBYTE(v85) = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v79;
      *(v57 + 40) = v85;
      v58 = *(v41 + 3);
      v59 = *(v41 + 4);
      v60 = __swift_project_boxed_opaque_existential_1(v41, v58);
      MEMORY[0x1EEE9AC00](v60, v61);
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v69 - 4) = sub_1D5B4AA6C;
      *(&v69 - 3) = 0;
      v67 = sub_1D66798D8;
      v68 = v55;
      v66 = sub_1D5D2F7A4(v53, sub_1D615B49C, v64, sub_1D615B4A4, (&v69 - 6), v58, v59);

      if (v66)
      {
        v85 = v79;
        LOBYTE(v86) = 0;
        LOBYTE(v82) = v54;
        sub_1D5F2E888();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v50, sub_1D66797B0);
}

uint64_t sub_1D6460A54(uint64_t a1)
{
  v2 = sub_1D6679708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6460A90(uint64_t a1)
{
  v2 = sub_1D6679708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingURLExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingURLExpressionLogic, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatBindingURLExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v25, v22, v26, &off_1F51F6C58);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD68);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419C3C(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD68);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419C3C(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419C3C(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD68);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419C3C(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D6460FDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64610A8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6461160(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6461228@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666471C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6461258(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7974706D457369;
  v4 = 0x6E7265746E497369;
  if (*v1 != 2)
  {
    v4 = 0x6E72657478457369;
  }

  if (*v1)
  {
    v3 = 0x7974706D45746F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEA00000000006C61;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FormatBlock.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v113 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v114 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v118 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v113 - v16;
  sub_1D667B2DC(0);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5E1BDC4(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF24CF8, sub_1D5E1BDC4, &unk_1D7321584);
  sub_1D5D2EE70(v4, v25, v27, v22, v4, v25, &type metadata for FormatVersions.StarSky, v23, v21, v26, &off_1F51F6CD8);
  v28 = v2[2];
  v29 = v2[3];
  v117 = v2;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v122 = v31;
  v115 = v30;
  v121 = v33;
  v120 = v32 + 16;
  (v33)(v17);
  v119 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v131 = v28;
  *(&v131 + 1) = v29;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v34 = v127;
  v35 = &v21[*(v127 + 44)];
  *&v125 = v17;
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v129) = 0;
  v38 = swift_allocObject();
  *&v126 = &v113;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v129;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  *(&v113 - 4) = sub_1D5B4AA6C;
  *(&v113 - 3) = 0;
  v111 = sub_1D67089B0;
  v112 = v40;
  LOBYTE(v129) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v129;
  v116 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D5E1BD88(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02BD8, sub_1D5E1BD88, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v123 = v44;
  v124 = v43;
  v45 = sub_1D72647CC();
  LOBYTE(v129) = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v129;
  v47 = &v21[*(v34 + 36)];
  v48 = *(v47 + 3);
  v49 = *(v47 + 4);
  v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v113 - 4) = sub_1D615B4A4;
  *(&v113 - 3) = (&v113 - 6);
  v111 = sub_1D67089B0;
  v112 = v41;
  v54 = v125;
  v55 = v128;
  sub_1D5D2BC70(v125, sub_1D615B49C, v56, sub_1D615B4A4, (&v113 - 6), v48, v49);
  if (v55)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v21, sub_1D667B2DC);
  }

  v127 = v37;
  v128 = v47;

  sub_1D72647EC();
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

  v57 = v117;
  swift_beginAccess();
  v58 = v57[4];
  v59 = v118;
  v121(v118, v122, v115);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v131) = 0;
  v60 = swift_allocObject();
  v126 = xmmword_1D728CF30;
  *(v60 + 16) = xmmword_1D728CF30;
  *(v60 + 32) = v131;
  *(v60 + 40) = v116;
  *(v60 + 48) = v127;

  v61 = sub_1D72647CC();
  LOBYTE(v131) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v126;
  *(v62 + 40) = v131;
  v63 = *(v128 + 3);
  v64 = *(v128 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v128, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v113 - 4) = sub_1D5B4AA6C;
  *(&v113 - 3) = 0;
  v111 = sub_1D667B370;
  v112 = v60;
  v70 = sub_1D5D2F7A4(v59, sub_1D615B49C, v69, sub_1D615B4A4, (&v113 - 6), v63, v64);
  v72 = v70;

  if (v72)
  {
    v131 = v126;
    v132 = 0;
    *&v129 = v58;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();

    sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
  }

  v74 = v121;
  v73 = v122;
  v75 = v128;
  v128 = 0;
  v76 = v117;
  swift_beginAccess();
  v77 = v76[5];
  v78 = v114;
  v79 = v115;
  v74(v114, v73, v115);
  swift_storeEnumTagMultiPayload();
  if (*(v77 + 16))
  {
    LOBYTE(v129) = 0;
    v80 = swift_allocObject();
    v126 = xmmword_1D7297410;
    *(v80 + 16) = xmmword_1D7297410;
    *(v80 + 32) = v129;
    *(v80 + 40) = v116;
    *(v80 + 48) = v127;

    v81 = sub_1D72647CC();
    LOBYTE(v129) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v126;
    *(v82 + 40) = v129;
    v83 = *(v75 + 3);
    v84 = *(v75 + 4);
    v85 = __swift_project_boxed_opaque_existential_1(v75, v83);
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v113 - 4) = sub_1D5B4AA6C;
    *(&v113 - 3) = 0;
    v111 = sub_1D67089B0;
    v112 = v80;
    v89 = v128;
    v91 = sub_1D5D2F7A4(v78, sub_1D615B49C, v90, sub_1D615B4A4, (&v113 - 6), v83, v84);
    if (v89)
    {
      sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v21, sub_1D667B2DC);
    }

    v92 = v91;

    if (v92)
    {
      v129 = v126;
      v130 = 0;
      v136 = v77;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();

      sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
      v74 = v121;
      v73 = v122;
      v128 = 0;
      *&v126 = v21;
      v76 = v117;
      v79 = v115;
    }

    else
    {
      v128 = 0;
      *&v126 = v21;
      sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);

      v76 = v117;
      v79 = v115;
      v74 = v121;
      v73 = v122;
    }
  }

  else
  {
    *&v126 = v21;
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v93 = v76[6];
  v94 = v113;
  v74(v113, v73, v79);
  swift_storeEnumTagMultiPayload();
  v95 = v127;
  v96 = v116;
  if (*(v93 + 16))
  {
    LOBYTE(v136) = 0;
    v97 = swift_allocObject();
    v125 = xmmword_1D72BAA60;
    *(v97 + 16) = xmmword_1D72BAA60;
    *(v97 + 32) = v136;
    *(v97 + 40) = v96;
    *(v97 + 48) = v95;

    v98 = sub_1D72647CC();
    LOBYTE(v136) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = v125;
    *(v99 + 40) = v136;
    v100 = *(v75 + 3);
    v101 = *(v75 + 4);
    v102 = __swift_project_boxed_opaque_existential_1(v75, v100);
    MEMORY[0x1EEE9AC00](v102, v103);
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v113 - 4) = sub_1D5B4AA6C;
    *(&v113 - 3) = 0;
    v111 = sub_1D67089B0;
    v112 = v97;
    v106 = v128;
    v108 = sub_1D5D2F7A4(v94, sub_1D615B49C, v107, sub_1D615B4A4, (&v113 - 6), v100, v101);
    v128 = v106;
    if (v106)
    {
    }

    else
    {
      v109 = v108;

      if (v109)
      {
        v110 = v128;
        sub_1D5E09554(v93, v126, 3, 0, 0);
        v128 = v110;
      }
    }
  }

  sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v126, sub_1D667B2DC);
}

uint64_t sub_1D6462280()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x726F7463656C6573;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D646231C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667B7A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6462354(uint64_t a1)
{
  v2 = sub_1D5E1BE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6462390(uint64_t a1)
{
  v2 = sub_1D5E1BE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBlockExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D667B3EC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667B480(0);
  sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x6564496B636F6C62, 0xEF7265696669746ELL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBlockExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667B600(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D667B480(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBlockExpression, v17, v19, v14, &type metadata for FormatBlockExpression, v17, &type metadata for FormatVersions.StarSky, v15, v11, v18, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D67089B4;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D667B694(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF03348, sub_1D667B694, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D667B728;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D667B600);
}

uint64_t sub_1D6462BAC()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6564496B636F6C62;
  }
}

void sub_1D6462BEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564496B636F6C62 && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6462CE0(uint64_t a1)
{
  v2 = sub_1D667B558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6462D1C(uint64_t a1)
{
  v2 = sub_1D667B558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FormatBlockNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v155 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v156 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v157 = v155 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v158 = v155 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v167 = v155 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v155 - v23;
  sub_1D667C0F0(0);
  *&v168 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5E1BBD4(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24BC8, sub_1D5E1BBD4, &unk_1D7321584);
  v170 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.StarSky, v30, v28, v33, &off_1F51F6CD8);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v165 = v2;
  v37 = qword_1EDF31ED0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v24, v39, v38);
  v166 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v163 = v39;
  v162 = v41;
  v164 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v65 = v168;
    goto LABEL_9;
  }

  v160 = v35;
  v159 = v38;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v168;
  v46 = v170;
  v47 = &v170[*(v168 + 44)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v177) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v177;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D5E1BB98(0);
  v52 = v51;
  sub_1D5B58B84(&qword_1EDF02A88, sub_1D5E1BB98, MEMORY[0x1E69E6F60]);

  v161 = v52;
  v53 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  *(v54 + 16) = v53;
  *(v54 + 40) = v177;
  v55 = (v46 + *(v45 + 36));
  v56 = v55[3];
  v57 = v55[4];
  v58 = __swift_project_boxed_opaque_existential_1(v55, v56);
  MEMORY[0x1EEE9AC00](v58, v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v155[-4] = sub_1D5B4AA6C;
  v155[-3] = 0;
  v153 = sub_1D667C184;
  v154 = v50;
  v62 = v169;
  v64 = sub_1D5D2F7A4(v24, sub_1D615B49C, v63, sub_1D615B4A4, &v155[-6], v56, v57);
  if (v62)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    sub_1D5D2CFE8(v46, sub_1D667C0F0);
    return;
  }

  v95 = v64;

  if ((v95 & 1) == 0)
  {
    *&v169 = 0;
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    v38 = v159;
    v39 = v163;
    v41 = v162;
    goto LABEL_8;
  }

  v177 = 0;
  v178 = 0;
  v179 = 0;
  *&v175 = v160;
  *(&v175 + 1) = v36;
  sub_1D72647EC();

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v39 = v163;
  v41 = v162;
  v65 = v168;
  *&v169 = 0;
  v38 = v159;
LABEL_9:
  v66 = v165;
  swift_beginAccess();
  v67 = v66[4];
  v68 = v66[5];
  v41(v167, v39, v38);
  swift_storeEnumTagMultiPayload();
  *&v173 = v67;
  *(&v173 + 1) = v68;
  v168 = xmmword_1D728CF30;
  v175 = xmmword_1D728CF30;
  v176 = 0;
  v69 = v170;
  v70 = &v170[*(v65 + 44)];
  v72 = *v70;
  v71 = *(v70 + 1);
  LOBYTE(v171) = 0;
  v73 = swift_allocObject();
  v160 = v155;
  *(v73 + 16) = v168;
  *(v73 + 32) = v171;
  *(v73 + 40) = v72;
  *(v73 + 48) = v71;
  MEMORY[0x1EEE9AC00](v73, v74);
  v159 = &v155[-6];
  v155[-4] = sub_1D5B4AA6C;
  v155[-3] = 0;
  v153 = sub_1D67089B8;
  v154 = v75;
  LOBYTE(v171) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = v168;
  *(v76 + 32) = v171;
  v155[0] = v72;
  *(v76 + 40) = v72;
  *(v76 + 48) = v71;
  v77 = v71;
  sub_1D5E1BB98(0);
  v79 = v78;
  v80 = sub_1D5B58B84(&qword_1EDF02A88, sub_1D5E1BB98, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v161 = v68;

  v155[2] = v79;
  v155[1] = v80;
  v81 = sub_1D72647CC();
  LOBYTE(v171) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v168;
  *(v82 + 40) = v171;
  v83 = (v69 + *(v65 + 36));
  v84 = v38;
  v85 = v83[3];
  v86 = v83[4];
  v87 = __swift_project_boxed_opaque_existential_1(v83, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  v91 = v159;
  v155[-4] = sub_1D615B4A4;
  v155[-3] = v91;
  v92 = v167;
  v153 = sub_1D67089B8;
  v154 = v76;
  v93 = v169;
  sub_1D5D2BC70(v167, sub_1D615B49C, v94, sub_1D615B4A4, &v155[-6], v85, v86);
  if (v93)
  {
    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v170, sub_1D667C0F0);

    return;
  }

  *&v168 = v83;
  v159 = v84;

  sub_1D72647EC();
  *&v169 = 0;
  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

  v96 = v165;
  swift_beginAccess();
  v97 = *(v96 + 48);
  v98 = v158;
  v99 = v163;
  v100 = v159;
  v101 = v162;
  v162(v158, v163, v159);
  swift_storeEnumTagMultiPayload();
  if (v97)
  {
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v173) = 0;
    v102 = swift_allocObject();
    v167 = xmmword_1D7297410;
    *(v102 + 16) = xmmword_1D7297410;
    *(v102 + 32) = v173;
    *(v102 + 40) = v155[0];
    *(v102 + 48) = v77;

    v103 = v170;
    v104 = sub_1D72647CC();
    LOBYTE(v173) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v167;
    *(v105 + 40) = v173;
    v106 = *(v168 + 24);
    v107 = *(v168 + 32);
    v108 = __swift_project_boxed_opaque_existential_1(v168, v106);
    MEMORY[0x1EEE9AC00](v108, v109);
    MEMORY[0x1EEE9AC00](v110, v111);
    v155[-4] = sub_1D5B4AA6C;
    v155[-3] = 0;
    v153 = sub_1D67089B8;
    v154 = v102;
    v112 = v169;
    v114 = sub_1D5D2F7A4(v98, sub_1D615B49C, v113, sub_1D615B4A4, &v155[-6], v106, v107);
    *&v169 = v112;
    if (v112)
    {
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v103, sub_1D667C0F0);
      return;
    }

    v115 = v114;

    if (v115)
    {
      v173 = v167;
      v174 = 0;
      LOBYTE(v171) = 0;
      v116 = v170;
      v117 = v169;
      sub_1D72647EC();
      v99 = v163;
      v101 = v162;
      if (v117)
      {
        sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v116, sub_1D667C0F0);
        return;
      }

      *&v169 = 0;
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
      v100 = v159;
    }

    else
    {
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
      v100 = v159;
      v99 = v163;
      v101 = v162;
    }
  }

  swift_beginAccess();
  v118 = v96[7];
  v119 = v157;
  v101(v157, v99, v100);
  swift_storeEnumTagMultiPayload();
  if (!*(v118 + 16))
  {
    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);
    v133 = v169;
    goto LABEL_31;
  }

  LOBYTE(v171) = 0;
  v120 = swift_allocObject();
  v167 = xmmword_1D72BAA60;
  *(v120 + 16) = xmmword_1D72BAA60;
  *(v120 + 32) = v171;
  *(v120 + 40) = v155[0];
  *(v120 + 48) = v77;

  v121 = v170;
  v122 = sub_1D72647CC();
  LOBYTE(v171) = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v167;
  *(v123 + 40) = v171;
  v124 = *(v168 + 24);
  v125 = *(v168 + 32);
  v126 = __swift_project_boxed_opaque_existential_1(v168, v124);
  MEMORY[0x1EEE9AC00](v126, v127);
  MEMORY[0x1EEE9AC00](v128, v129);
  v155[-4] = sub_1D5B4AA6C;
  v155[-3] = 0;
  v153 = sub_1D67089B8;
  v154 = v120;
  v130 = v169;
  v132 = sub_1D5D2F7A4(v119, sub_1D615B49C, v131, sub_1D615B4A4, &v155[-6], v124, v125);
  v133 = v130;
  if (!v130)
  {
    v134 = v132;

    if (v134)
    {
      v171 = v167;
      v172 = 0;
      v180 = v118;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      v46 = v170;
      sub_1D72647EC();
      v96 = v165;
      v99 = v163;
      v101 = v162;
      v152 = v77;

      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
LABEL_32:
      swift_beginAccess();
      v135 = v96[8];
      v136 = v156;
      v101(v156, v99, v159);
      swift_storeEnumTagMultiPayload();
      v137 = v155[0];
      v138 = v168;
      if (*(v135 + 16))
      {
        LOBYTE(v180) = 0;
        v139 = swift_allocObject();
        v169 = xmmword_1D72BAA70;
        *(v139 + 16) = xmmword_1D72BAA70;
        *(v139 + 32) = v180;
        *(v139 + 40) = v137;
        *(v139 + 48) = v152;

        v140 = sub_1D72647CC();
        LOBYTE(v180) = 0;
        v141 = swift_allocObject();
        *(v141 + 16) = v140;
        *(v141 + 24) = v169;
        *(v141 + 40) = v180;
        v142 = v133;
        v143 = v138[3];
        v144 = v138[4];
        v145 = __swift_project_boxed_opaque_existential_1(v138, v143);
        MEMORY[0x1EEE9AC00](v145, v146);
        MEMORY[0x1EEE9AC00](v147, v148);
        v155[-4] = sub_1D5B4AA6C;
        v155[-3] = 0;
        v153 = sub_1D67089B8;
        v154 = v139;
        v150 = sub_1D5D2F7A4(v136, sub_1D615B49C, v149, sub_1D615B4A4, &v155[-6], v143, v144);
        if (v142)
        {
        }

        else
        {
          v151 = v150;

          if (v151)
          {
            sub_1D5E08CEC(v135, v46, 4, 0, 0);
          }
        }
      }

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      goto LABEL_6;
    }

    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

    v96 = v165;
    v99 = v163;
    v101 = v162;
LABEL_31:
    v152 = v77;
    v46 = v170;
    goto LABEL_32;
  }

  sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v121, sub_1D667C0F0);
}

uint64_t sub_1D6464334()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6564496B636F6C62;
  if (v1 != 1)
  {
    v5 = 0x73776F726874;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D64643F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6681E64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6464430(uint64_t a1)
{
  v2 = sub_1D5E1BCAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D646446C(uint64_t a1)
{
  v2 = sub_1D5E1BCAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBlurEffectStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v73 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v72 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v86 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v85 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v84 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v83 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v82 = &v72 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v81 = &v72 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v80 = &v72 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v79 = &v72 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v78 = &v72 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v72 - v50;
  v52 = *v1;
  v87 = a1;
  v88 = v52;
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v55 = sub_1D725BD1C();
  v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
  v57 = *(*(v55 - 8) + 16);
  v57(v51, v56, v55);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v89;
  sub_1D5D2BEC4(v51, sub_1D5B4AA6C, 0, v53, v54);
  if (v58)
  {
    return sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  v60 = v87;
  v61 = v87[3];
  v89 = v87[4];
  v62 = __swift_project_boxed_opaque_existential_1(v87, v61);
  switch(v88)
  {
    case 1:
      v57(v79, v56, v55);
      v63 = v79;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 2:
      v57(v80, v56, v55);
      v63 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 3:
      v57(v81, v56, v55);
      v63 = v81;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 4:
      v57(v82, v56, v55);
      v63 = v82;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    case 5:
      v57(v83, v56, v55);
      v65 = v83;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 6:
      v57(v84, v56, v55);
      v65 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 7:
      v57(v85, v56, v55);
      v65 = v85;
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 8:
      v57(v86, v56, v55);
      v65 = v86;
      swift_storeEnumTagMultiPayload();
LABEL_23:
      v66 = v65;
      v67 = v61;
      v68 = v89;
      goto LABEL_24;
    case 9:
      v86 = v62;
      v69 = v72;
      v57(v72, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 10:
      v86 = v62;
      v69 = v73;
      v57(v73, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 11:
      v86 = v62;
      v69 = v74;
      v57(v74, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 12:
      v86 = v62;
      v69 = v75;
      v57(v75, v56, v55);
      swift_storeEnumTagMultiPayload();
      goto LABEL_21;
    case 13:
      v86 = v62;
      v69 = v76;
      v57(v76, v56, v55);
      swift_storeEnumTagMultiPayload();
LABEL_21:
      sub_1D5D2BEC4(v69, sub_1D5B4AA6C, 0, v61, v89);
      v70 = v69;
      goto LABEL_25;
    case 14:
      v86 = v62;
      v64 = v77;
      v57(v77, v56, v55);
      swift_storeEnumTagMultiPayload();
      v65 = v64;
      v66 = v64;
      v67 = v61;
      v68 = v89;
LABEL_24:
      sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v67, v68);
      v70 = v65;
LABEL_25:
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v57(v78, v56, v55);
      v63 = v78;
      swift_storeEnumTagMultiPayload();
LABEL_16:
      sub_1D5D2BEC4(v63, sub_1D5B4AA6C, 0, v61, v89);
      sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  sub_1D7264B3C();
  v91 = v88;
  FormatBlurEffectStyle.rawValue.getter(v71);
  __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t FormatBlurVibrancyEffect.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D667C200(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667C294(0);
  sub_1D5B58B84(&qword_1EC8867E8, sub_1D667C294, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(1920298082, 0xE400000000000000, 0x79636E6172626976, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667C414();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D667C468();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBlurVibrancyEffect.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D667C4BC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667C294(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8867E8, sub_1D667C294, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBlurVibrancyEffect, v19, v21, v16, &type metadata for FormatBlurVibrancyEffect, v19, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v20, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE38);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v77 = v23;
  v78 = v22;
  v72 = v24 + 16;
  v73 = v25;
  (v25)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v86 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v86;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D67089BC;
  v68 = v31;
  v86 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v86;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D667C550(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC886808, sub_1D667C550, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v86 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v86;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v45 = v82;
  v46 = v83;
  v67 = sub_1D667C5E4;
  v68 = v32;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v69 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v38;
    v49 = v77;
    v48 = v78;
    v82 = v28;

    sub_1D667C660();
    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    v87 = v75;
    v83 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    v86 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v86;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D67089BC;
    v68 = v56;
    v86 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v86;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v86 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v86;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D67089BC;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D667C6B4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D667C4BC);
}

uint64_t sub_1D64659D8()
{
  v1 = 0x79636E6172626976;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298082;
  }
}

uint64_t sub_1D6465A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6682074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6465A5C(uint64_t a1)
{
  v2 = sub_1D667C36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6465A98(uint64_t a1)
{
  v2 = sub_1D667C36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBoolBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v72 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v71 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v69 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v69 - v32;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *v1;
  v38 = *(v1 + 8);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = sub_1D5C30408();
  v75 = v37;
  sub_1D5D2EE70(&type metadata for FormatBoolBinding, &type metadata for FormatCodingKeys, v42, v39, &type metadata for FormatBoolBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v40, v37, v41, &off_1F51F6C78);
  v43 = v38 >> 12;
  if (v38 >> 12 > 3)
  {
    if (v38 >> 12 <= 5)
    {
      if (v43 == 4)
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
        v57 = v71;
        (*(*(v55 - 8) + 16))(v71, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v44 = v75;
        sub_1D63B1FD8(4, v76, v57);
        v50 = v57;
        goto LABEL_37;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD68);
      v47 = v70;
      (*(*(v67 - 8) + 16))(v70, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v75;
      sub_1D63B216C(5, v76, v38, v47);
    }

    else
    {
      v44 = v75;
      if (v43 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCCA8);
        v47 = v72;
        (*(*(v58 - 8) + 16))(v72, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B2304(6, v76 & 1, v47);
      }

      else if (v43 == 7)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCE80);
        v47 = v73;
        (*(*(v45 - 8) + 16))(v73, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B249C(7, v76, v47);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v65 = sub_1D725BD1C();
        v66 = __swift_project_value_buffer(v65, qword_1EDFFCE38);
        v47 = v74;
        (*(*(v65 - 8) + 16))(v74, v66, v65);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63B2630(8, v76, v47);
      }
    }

    v50 = v47;
LABEL_37:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v64 = v44;
    return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
  }

  if (v38 >> 12 <= 1)
  {
    v44 = v75;
    if (v43)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
      (*(*(v60 - 8) + 16))(v29, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B1B10(1, v76, v29);
      v50 = v29;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
      (*(*(v48 - 8) + 16))(v33, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B197C(0, v76, v33);
      v50 = v33;
    }

    goto LABEL_37;
  }

  v51 = v75;
  if (v43 != 2)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCD18);
    (*(*(v62 - 8) + 16))(v21, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B1E38(3, v76, v38 & 0xFFF, v21);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    v64 = v51;
    return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
  (*(*(v52 - 8) + 16))(v25, v53, v52);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63B1CA4(2, v76, v25);
  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}