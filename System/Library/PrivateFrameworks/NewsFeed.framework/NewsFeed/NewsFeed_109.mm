uint64_t sub_1D654D4B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AC2CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D654D4EC(uint64_t a1)
{
  v2 = sub_1D66ABD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654D528(uint64_t a1)
{
  v2 = sub_1D66ABD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
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
    v12 = v32;
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
          *(v22 + 16) = &unk_1F51167F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66ABFA0();
    v40 = 0;
    v41 = 0;
    sub_1D726431C();
    if (v43)
    {
      v24 = v12;
      v33 = xmmword_1D7279980;
      if (v43 == 1)
      {
        sub_1D5E04760();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v29 = 0;
        v25 = v34;
        v26 = v35;
        v30 = v36;
        v27 = v37;
        v28 = v38;
        v42 = v36;
      }

      else
      {
        sub_1D66ABFF4();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = v34;
        v26 = v35;
        v27 = v37;
        v28 = v38;
        v29 = v39 & 3 | 0x40;
        v30 = v36 & 1;
      }
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
      v27 = 0;
      v30 = 0;
      v26 = 0uLL;
      v29 = 0x80;
      v28 = 0uLL;
      v24 = v12;
    }

    *v24 = v25;
    *(v24 + 8) = v26;
    *(v24 + 24) = v30;
    *(v24 + 32) = v27;
    *(v24 + 40) = v28;
    *(v24 + 56) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v41 = v1[2];
  v42 = *(v1 + 24);
  v38 = *(v1 + 31);
  v37 = *(v1 + 29);
  v39 = *(v1 + 25);
  v20 = v1[5];
  v43 = v1[4];
  v44 = v20;
  v45 = v1[6];
  v21 = *(v1 + 56);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v46 = v17;
  sub_1D5D2EE70(&type metadata for FormatProgressKind, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatProgressKind, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v23, v17, v24, &off_1F51F6CF8);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      *&v53 = v19;
      *(&v53 + 1) = v18;
      v54 = v41;
      v55 = v42;
      v56 = v39;
      v58 = (v39 | ((v37 | (v38 << 16)) << 32)) >> 48;
      v57 = (v39 | ((v37 | (v38 << 16)) << 32)) >> 32;
      v59 = v43;
      v60 = v44;
      v61 = v45;
      v62 = v21 & 0x3F;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCE98);
      v28 = v40;
      (*(*(v26 - 8) + 16))(v40, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v46;
      sub_1D63A8038(2, &v53, v28);
      v30 = v28;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCCA8);
      (*(*(v33 - 8) + 16))(v13, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v46;
      sub_1D6421D84(0, v13);
      v30 = v13;
    }
  }

  else
  {
    *&v47 = v19;
    *(&v47 + 1) = v18;
    v48 = v41;
    v49 = v42 & 1;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCCA8);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v29 = v46;
    sub_1D63A7E90(1, &v47, v9);
    v30 = v9;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v29, sub_1D5D30DC4);
}

uint64_t sub_1D654DE68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6646128;
  if (v2 != 1)
  {
    v5 = 0x656C63726963;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7496034;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 6646128;
  if (*a2 != 1)
  {
    v8 = 0x656C63726963;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7496034;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
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

uint64_t sub_1D654DF48()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D654DFD8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D654E054(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D654E0E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663AE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D654E110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6646128;
  if (v2 != 1)
  {
    v5 = 0x656C63726963;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7496034;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D654E20C()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x65637265506E696DLL;
  v4 = 0x656372655078616DLL;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7369776B636F6C63;
  if (v1 != 1)
  {
    v5 = 0x6372655070657473;
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

uint64_t sub_1D654E2E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AC530(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D654E31C(uint64_t a1)
{
  v2 = sub_1D665852C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654E358(uint64_t a1)
{
  v2 = sub_1D665852C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v399 = v377 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v379 = v377 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v380 = v377 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v381 = v377 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v383 = v377 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v382 = v377 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v384 = v377 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v385 = v377 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v386 = v377 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v389 = v377 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v388 = v377 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v395 = (v377 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v394 = v377 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v377 - v46;
  sub_1D66AD5EC(0);
  *&v398 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v377 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1D5E1AA68(0);
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF25228, sub_1D5E1AA68, &unk_1D7321584);
  v425 = v51;
  sub_1D5D2EE70(v4, v55, v57, v52, v4, v55, &type metadata for FormatVersions.StarSkyC, v53, v51, v56, &off_1F51F6B18);
  swift_beginAccess();
  v58 = v2[2];
  v59 = v2[3];
  v60 = qword_1EDF31E98;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD00);
  v63 = *(v61 - 8);
  v64 = *(v63 + 16);
  v65 = v63 + 16;
  v396 = v62;
  v397 = v64;
  v64(v47);
  v66 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v67 = v399;
  v387 = v58;
  sub_1D725892C();
  v68 = sub_1D725895C();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  v390 = v2;
  v391 = v61;
  v392 = v66;
  v393 = v65;
  if (v69 != 1)
  {
    v92 = v2;
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v399, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v93 = v397;
    v94 = v61;
    v95 = v92;
    goto LABEL_7;
  }

  v378 = v59;
  v70 = v47;
  sub_1D5D35558(v399, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v71 = v398;
  v72 = v425;
  v73 = &v425[*(v398 + 44)];
  v75 = *v73;
  v74 = *(v73 + 1);
  LOBYTE(v411) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = v411;
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  sub_1D5E1AA2C(0);
  v78 = v77;
  sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C, MEMORY[0x1E69E6F60]);

  *&v399 = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v411) = 0;
  v80 = swift_allocObject();
  *(v80 + 24) = 0;
  *(v80 + 32) = 0;
  *(v80 + 16) = v79;
  *(v80 + 40) = v411;
  v81 = (v72 + *(v71 + 36));
  v82 = v81[3];
  v83 = v81[4];
  v84 = __swift_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v377[-4] = sub_1D5B4AA6C;
  v377[-3] = 0;
  v375 = sub_1D66AD680;
  v376 = v76;
  v88 = v400;
  v90 = sub_1D5D2F7A4(v70, sub_1D615B49C, v89, sub_1D615B4A4, &v377[-6], v82, v83);
  *&v400 = v88;
  if (!v88)
  {
    v149 = v90;

    if (v149)
    {
      v411 = 0uLL;
      LOBYTE(v412) = 0;
      *&v421 = v387;
      *(&v421 + 1) = v378;
      v150 = v400;
      sub_1D72647EC();

      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      v93 = v397;
      if (v150)
      {
        v91 = v72;
        return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
      }

      *&v400 = 0;
      v95 = v390;
      v94 = v391;
    }

    else
    {
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

      v95 = v390;
      v94 = v391;
      v93 = v397;
    }

LABEL_7:
    swift_beginAccess();
    v96 = v95[4];
    v97 = v394;
    v93(v394, v396, v94);
    swift_storeEnumTagMultiPayload();
    if (((v96 >> 59) & 0x1E | (v96 >> 2) & 1) == 0x16 && v96 == 0xB000000000000008)
    {
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v127 = v398;
      v128 = v425;
      v129 = &v425[*(v398 + 44)];
      v130 = *v129;
      v131 = *(v129 + 1);
      LOBYTE(v411) = 0;
      v132 = swift_allocObject();
      v399 = xmmword_1D728CF30;
      *(v132 + 16) = xmmword_1D728CF30;
      *(v132 + 32) = v411;
      *(v132 + 40) = v130;
      *(v132 + 48) = v131;
      sub_1D5C82CD8(v96);
      sub_1D5E1AA2C(0);
      v134 = v133;
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C, MEMORY[0x1E69E6F60]);

      v378 = v134;
      v135 = sub_1D72647CC();
      LOBYTE(v411) = 0;
      v136 = swift_allocObject();
      *(v136 + 16) = v135;
      *(v136 + 24) = v399;
      *(v136 + 40) = v411;
      v137 = (v128 + *(v127 + 36));
      v138 = v97;
      v139 = v137[3];
      v140 = v137[4];
      v141 = __swift_project_boxed_opaque_existential_1(v137, v139);
      v387 = v377;
      MEMORY[0x1EEE9AC00](v141, v142);
      MEMORY[0x1EEE9AC00](v143, v144);
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708B24;
      v376 = v132;
      v145 = v400;
      v147 = sub_1D5D2F7A4(v138, sub_1D615B49C, v146, sub_1D615B4A4, &v377[-6], v139, v140);
      if (v145)
      {

        sub_1D5C92A8C(v96);
        v148 = v138;
LABEL_18:
        sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);
LABEL_19:
        v91 = v425;
        return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
      }

      v153 = v147;

      if (v153)
      {
        v411 = v399;
        LOBYTE(v412) = 0;
        *&v421 = v96;
        sub_1D5CA1E90();
        sub_1D72647EC();
        v94 = v391;
        v93 = v397;
        *&v400 = 0;
        sub_1D5C92A8C(v421);
        sub_1D5D2CFE8(v394, type metadata accessor for FormatVersionRequirement);
        v95 = v390;
      }

      else
      {
        *&v400 = 0;
        sub_1D5C92A8C(v96);
        sub_1D5D2CFE8(v394, type metadata accessor for FormatVersionRequirement);
        v95 = v390;
        v94 = v391;
        v93 = v397;
      }
    }

    v387 = v95[5];
    v98 = v398;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v99 = __swift_project_value_buffer(v94, qword_1EDFFCD68);
    v93(v395, v99, v94);
    swift_storeEnumTagMultiPayload();
    v399 = xmmword_1D7297410;
    v411 = xmmword_1D7297410;
    LOBYTE(v412) = 0;
    v100 = v425;
    v101 = &v425[*(v98 + 44)];
    v102 = v94;
    v104 = *v101;
    v103 = v101[1];
    LOBYTE(v421) = 0;
    v105 = swift_allocObject();
    v107 = v105;
    *(v105 + 16) = v399;
    *(v105 + 32) = v421;
    v394 = v104;
    *(v105 + 40) = v104;
    *(v105 + 48) = v103;
    v378 = v103;
    if (v387)
    {
      v377[1] = v377;
      *&v421 = v387;
      MEMORY[0x1EEE9AC00](v105, v106);
      v108 = v100;
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708B24;
      v376 = v107;
      LOBYTE(v416) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v399;
      *(v109 + 32) = v416;
      *(v109 + 40) = v394;
      *(v109 + 48) = v103;
      sub_1D5E1AA2C(0);
      v111 = v110;
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v387 = v111;
      v112 = sub_1D72647CC();
      LOBYTE(v416) = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v399;
      *(v113 + 40) = v416;
      v114 = (v108 + *(v98 + 36));
      v115 = v114[3];
      v116 = v114[4];
      v117 = __swift_project_boxed_opaque_existential_1(v114, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      v377[-4] = sub_1D615B4A4;
      v377[-3] = &v377[-6];
      v375 = sub_1D6708B24;
      v376 = v109;
      v121 = v395;
      v122 = v400;
      v124 = sub_1D5D2F7A4(v395, sub_1D615B49C, v123, sub_1D615B4A4, &v377[-6], v115, v116);
      if (v122)
      {

        v125 = v425;

        v126 = v121;
LABEL_15:
        sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        v91 = v125;
        return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
      }

      v154 = v124;

      if (v154)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v152 = v391;
        v151 = v397;
        *&v400 = 0;

        v95 = v390;
      }

      else
      {
        *&v400 = 0;

        v95 = v390;
        v152 = v391;
        v151 = v397;
      }
    }

    else
    {
      v151 = v93;

      v152 = v102;
    }

    sub_1D5D2CFE8(v395, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v155 = v95[6];
    v156 = v388;
    v157 = v396;
    v151(v388, v396, v152);
    swift_storeEnumTagMultiPayload();
    if (*(v155 + 16))
    {
      LOBYTE(v411) = 0;
      v158 = swift_allocObject();
      v399 = xmmword_1D72BAA60;
      *(v158 + 16) = xmmword_1D72BAA60;
      *(v158 + 32) = v411;
      v159 = v378;
      *(v158 + 40) = v394;
      *(v158 + 48) = v159;
      sub_1D5E1AA2C(0);
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C, MEMORY[0x1E69E6F60]);

      v395 = v155;
      v160 = v425;
      v161 = sub_1D72647CC();
      LOBYTE(v411) = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v161;
      *(v162 + 24) = v399;
      *(v162 + 40) = v411;
      v163 = (v160 + *(v398 + 36));
      v164 = v163[3];
      v165 = v163[4];
      v166 = __swift_project_boxed_opaque_existential_1(v163, v164);
      v387 = v377;
      MEMORY[0x1EEE9AC00](v166, v167);
      MEMORY[0x1EEE9AC00](v168, v169);
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708B24;
      v376 = v158;
      v170 = v400;
      v172 = sub_1D5D2F7A4(v156, sub_1D615B49C, v171, sub_1D615B4A4, &v377[-6], v164, v165);
      if (v170)
      {
        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);

        v91 = v160;
        return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
      }

      v174 = v172;
      v175 = v395;

      if (v174)
      {
        v411 = v399;
        LOBYTE(v412) = 0;
        *&v421 = v175;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v152 = v391;
        v157 = v396;
        v151 = v397;
        *&v400 = 0;

        sub_1D5D2CFE8(v388, type metadata accessor for FormatVersionRequirement);
        v95 = v390;
      }

      else
      {
        *&v400 = 0;
        sub_1D5D2CFE8(v388, type metadata accessor for FormatVersionRequirement);

        v95 = v390;
        v152 = v391;
        v157 = v396;
        v151 = v397;
      }
    }

    else
    {
      v160 = v425;
      sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
    }

    v176 = *(v95 + 9);
    v177 = *(v95 + 13);
    v423 = *(v95 + 11);
    *v424 = v177;
    *&v424[15] = *(v95 + 119);
    v421 = *(v95 + 7);
    v422 = v176;
    v151(v389, v157, v152);
    swift_storeEnumTagMultiPayload();
    *v413 = v423;
    *&v413[16] = *v424;
    *&v413[31] = *&v424[15];
    v411 = v421;
    v412 = v422;
    v399 = xmmword_1D72BAA70;
    v416 = xmmword_1D72BAA70;
    LOBYTE(v417[0]) = 0;
    LOBYTE(v408) = 0;
    v178 = swift_allocObject();
    v395 = v377;
    *(v178 + 16) = v399;
    *(v178 + 32) = v408;
    v179 = v394;
    v180 = v378;
    *(v178 + 40) = v394;
    *(v178 + 48) = v180;
    MEMORY[0x1EEE9AC00](v178, v181);
    v377[-4] = sub_1D5B4AA6C;
    v377[-3] = 0;
    v375 = sub_1D6708B24;
    v376 = v182;
    LOBYTE(v408) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v399;
    *(v183 + 32) = v408;
    *(v183 + 40) = v179;
    *(v183 + 48) = v180;
    sub_1D5E1AA2C(0);
    v185 = v184;
    v186 = sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v387 = v185;
    v388 = v186;
    v187 = sub_1D72647CC();
    LOBYTE(v408) = 0;
    v188 = swift_allocObject();
    *(v188 + 16) = v187;
    *(v188 + 24) = v399;
    *(v188 + 40) = v408;
    v189 = (v160 + *(v398 + 36));
    v190 = v189[3];
    v191 = v189[4];
    v192 = __swift_project_boxed_opaque_existential_1(v189, v190);
    MEMORY[0x1EEE9AC00](v192, v193);
    MEMORY[0x1EEE9AC00](v194, v195);
    v377[-4] = sub_1D615B4A4;
    v377[-3] = &v377[-6];
    v375 = sub_1D6708B24;
    v376 = v183;
    v196 = v389;
    v197 = v400;
    sub_1D5D2BC70(v389, sub_1D615B49C, v198, sub_1D615B4A4, &v377[-6], v190, v191);
    if (v197)
    {
      *&v400 = v197;
      sub_1D5D2CFE8(v196, type metadata accessor for FormatVersionRequirement);

      v199 = v425;
LABEL_43:
      v91 = v199;
      return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
    }

    *&v399 = v189;

    sub_1D66AD710();
    v199 = v425;
    sub_1D72647EC();
    *&v400 = 0;
    sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);

    v200 = v390;
    swift_beginAccess();
    v201 = v200[16];
    v202 = v386;
    v203 = v397;
    (v397)(v386, v396, v391);
    swift_storeEnumTagMultiPayload();
    v395 = v201;
    if (v201)
    {
      LOBYTE(v411) = 0;
      v204 = swift_allocObject();
      v398 = xmmword_1D72BAA80;
      *(v204 + 16) = xmmword_1D72BAA80;
      *(v204 + 32) = v411;
      *(v204 + 40) = v394;
      *(v204 + 48) = v378;

      v205 = sub_1D72647CC();
      LOBYTE(v411) = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = v205;
      *(v206 + 24) = v398;
      *(v206 + 40) = v411;
      v207 = *(v399 + 24);
      v208 = *(v399 + 32);
      v209 = __swift_project_boxed_opaque_existential_1(v399, v207);
      MEMORY[0x1EEE9AC00](v209, v210);
      MEMORY[0x1EEE9AC00](v211, v212);
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708B24;
      v376 = v204;
      v213 = v400;
      v215 = sub_1D5D2F7A4(v202, sub_1D615B49C, v214, sub_1D615B4A4, &v377[-6], v207, v208);
      *&v400 = v213;
      if (v213)
      {
        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);

        goto LABEL_43;
      }

      v216 = v215;

      if (v216)
      {
        v411 = v398;
        LOBYTE(v412) = 0;
        *&v416 = v395;
        v217 = v400;
        sub_1D72647EC();
        *&v400 = v217;
        v203 = v397;
        if (v217)
        {
          sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);
          goto LABEL_43;
        }

        sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);
        v200 = v390;
      }

      else
      {
        sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);
        v200 = v390;
        v203 = v397;
      }
    }

    else
    {
      sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v218 = v200[17];
    v219 = v385;
    v220 = v391;
    v203(v385, v396, v391);
    swift_storeEnumTagMultiPayload();
    v398 = xmmword_1D72BAA90;
    v419 = xmmword_1D72BAA90;
    v420 = 0;
    LOBYTE(v411) = 0;
    v221 = swift_allocObject();
    v223 = v221;
    *(v221 + 16) = v398;
    *(v221 + 32) = v411;
    v224 = v200;
    v225 = v394;
    v226 = v378;
    *(v221 + 40) = v394;
    *(v221 + 48) = v226;
    if (v218)
    {
      v395 = v377;
      v418 = v218;
      MEMORY[0x1EEE9AC00](v221, v222);
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708B24;
      v376 = v223;
      LOBYTE(v411) = 0;
      v227 = swift_allocObject();
      *(v227 + 16) = v398;
      *(v227 + 32) = v411;
      *(v227 + 40) = v225;
      *(v227 + 48) = v226;
      swift_retain_n();
      swift_retain_n();
      v228 = sub_1D72647CC();
      LOBYTE(v411) = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = v228;
      *(v229 + 24) = v398;
      *(v229 + 40) = v411;
      v230 = *(v399 + 24);
      v231 = *(v399 + 32);
      v232 = __swift_project_boxed_opaque_existential_1(v399, v230);
      MEMORY[0x1EEE9AC00](v232, v233);
      MEMORY[0x1EEE9AC00](v234, v235);
      v377[-4] = sub_1D615B4A4;
      v377[-3] = &v377[-6];
      v375 = sub_1D6708B24;
      v376 = v227;
      v236 = v400;
      v238 = sub_1D5D2F7A4(v219, sub_1D615B49C, v237, sub_1D615B4A4, &v377[-6], v230, v231);
      *&v400 = v236;
      if (v236)
      {

        v239 = v425;
        v219 = v385;
LABEL_56:
        sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
        v91 = v239;
        return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
      }

      *&v398 = v218;
      v241 = v238;

      if (v241)
      {
        type metadata accessor for FormatProgressViewNodeStyle();
        sub_1D5B58B84(&unk_1EDF0AF40, type metadata accessor for FormatProgressViewNodeStyle, &protocol conformance descriptor for FormatProgressViewNodeStyle);
        v239 = v425;
        v242 = v400;
        sub_1D72647EC();
        *&v400 = v242;
        v220 = v391;
        v243 = v397;
        v219 = v385;
        if (v242)
        {

          goto LABEL_56;
        }

        v240 = v390;
        v203 = v243;
      }

      else
      {

        v240 = v390;
        v220 = v391;
        v203 = v397;
        v219 = v385;
      }
    }

    else
    {
      v240 = v224;
    }

    sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v244 = *(v240 + 10);
    v416 = *(v240 + 9);
    v417[0] = v244;
    v417[1] = *(v240 + 11);
    *(&v417[1] + 9) = *(v240 + 185);
    sub_1D66AD764(&v416, &v411);
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v245 = __swift_project_value_buffer(v220, qword_1EDFFCCA8);
    v203(v384, v245, v220);
    swift_storeEnumTagMultiPayload();
    if ((BYTE8(v417[2]) & 0xC0) != 0x80 || BYTE8(v417[2]) != 128 || (v246 = vorrq_s8(*(v417 + 8), *(&v417[1] + 8)), *&vorr_s8(*v246.i8, *&vextq_s8(v246, v246, 8uLL)) | *&v417[0] | *(&v416 + 1) | v416))
    {
      v411 = v416;
      v412 = v417[0];
      *v413 = v417[1];
      *&v413[9] = *(&v417[1] + 9);
      memset(&v413[32], 0, 48);
      v414 = 0;
      v415 = 0x80;
      if ((BYTE8(v417[2]) & 0x80) == 0)
      {
        sub_1D66AD764(&v416, &v408);
        sub_1D66AD7C0(&v411, &qword_1EDF102C0, &type metadata for FormatProgressKind);
        LOBYTE(v408) = 0;
        v247 = swift_allocObject();
        v398 = xmmword_1D72BAAA0;
        *(v247 + 16) = xmmword_1D72BAAA0;
        *(v247 + 32) = v408;
        *(v247 + 40) = v394;
        *(v247 + 48) = v378;

        v248 = sub_1D72647CC();
        LOBYTE(v408) = 0;
        v249 = swift_allocObject();
        *(v249 + 16) = v248;
        *(v249 + 24) = v398;
        *(v249 + 40) = v408;
        v251 = *(v399 + 24);
        v250 = *(v399 + 32);
        v252 = __swift_project_boxed_opaque_existential_1(v399, v251);
        MEMORY[0x1EEE9AC00](v252, v253);
        MEMORY[0x1EEE9AC00](v254, v255);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708B24;
        v376 = v247;
        v256 = v384;
        v257 = v400;
        v259 = sub_1D5D2F7A4(v384, sub_1D615B49C, v258, sub_1D615B4A4, &v377[-6], v251, v250);
        v260 = v257;
        if (v257)
        {

          sub_1D62B63E4(&v416);
LABEL_71:
          v148 = v256;
          goto LABEL_18;
        }

        v280 = v259;

        if (v280)
        {
          v406 = v398;
          v407 = 0;
          v408 = v416;
          v409 = v417[0];
          v410[0] = v417[1];
          *(v410 + 9) = *(&v417[1] + 9);
          sub_1D66AD81C();
          sub_1D72647EC();
          v220 = v391;
          v261 = v396;
          v401[0] = v408;
          v401[1] = v409;
          v402[0] = v410[0];
          *(v402 + 9) = *(v410 + 9);
          sub_1D62B63E4(v401);
          sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
          v240 = v390;
LABEL_75:
          swift_beginAccess();
          v262 = v240;
          v263 = v240[26];
          v264 = v382;
          v265 = v397;
          (v397)(v382, v261, v220);
          swift_storeEnumTagMultiPayload();
          v266 = v263;
          v267 = v263 == 0x8000000000000000;
          v268 = v399;
          if (v267)
          {
            sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            LOBYTE(v411) = 0;
            v269 = swift_allocObject();
            v400 = xmmword_1D72BAAB0;
            *(v269 + 16) = xmmword_1D72BAAB0;
            *(v269 + 32) = v411;
            *(v269 + 40) = v394;
            *(v269 + 48) = v378;

            sub_1D5EB1500(v266);
            v270 = sub_1D72647CC();
            LOBYTE(v411) = 0;
            v271 = swift_allocObject();
            *(v271 + 16) = v270;
            *(v271 + 24) = v400;
            *(v271 + 40) = v411;
            v272 = v268[3];
            v273 = v268[4];
            v274 = __swift_project_boxed_opaque_existential_1(v268, v272);
            MEMORY[0x1EEE9AC00](v274, v275);
            MEMORY[0x1EEE9AC00](v276, v277);
            v377[-4] = sub_1D5B4AA6C;
            v377[-3] = 0;
            v375 = sub_1D6708B24;
            v376 = v269;
            v279 = sub_1D5D2F7A4(v264, sub_1D615B49C, v278, sub_1D615B4A4, &v377[-6], v272, v273);
            if (v260)
            {

              sub_1D5EB15C4(v266);
              v148 = v264;
              goto LABEL_18;
            }

            v281 = v279;

            if (v281)
            {
              v411 = v400;
              LOBYTE(v412) = 0;
              *&v401[0] = v266;
              sub_1D5DF6A60();
              sub_1D72647EC();
              v282 = *&v401[0];
            }

            else
            {
              v282 = v266;
            }

            sub_1D5EB15C4(v282);
            sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);
            v262 = v390;
            v220 = v391;
            v261 = v396;
            v265 = v397;
            v268 = v399;
          }

          swift_beginAccess();
          v283 = v262[27];
          v284 = v383;
          v265(v383, v261, v220);
          swift_storeEnumTagMultiPayload();
          if (*(v283 + 16))
          {
            LOBYTE(v411) = 0;
            v285 = swift_allocObject();
            v400 = xmmword_1D72BAAC0;
            *(v285 + 16) = xmmword_1D72BAAC0;
            *(v285 + 32) = v411;
            *(v285 + 40) = v394;
            *(v285 + 48) = v378;

            v286 = sub_1D72647CC();
            LOBYTE(v411) = 0;
            v287 = swift_allocObject();
            *(v287 + 16) = v286;
            *(v287 + 24) = v400;
            *(v287 + 40) = v411;
            v288 = v268[3];
            v289 = v268[4];
            v290 = __swift_project_boxed_opaque_existential_1(v268, v288);
            MEMORY[0x1EEE9AC00](v290, v291);
            MEMORY[0x1EEE9AC00](v292, v293);
            v377[-4] = sub_1D5B4AA6C;
            v377[-3] = 0;
            v375 = sub_1D6708B24;
            v376 = v285;
            v295 = sub_1D5D2F7A4(v284, sub_1D615B49C, v294, sub_1D615B4A4, &v377[-6], v288, v289);
            if (v260)
            {

              v125 = v425;
              v126 = v383;
              goto LABEL_15;
            }

            v297 = v295;

            if (v297)
            {
              sub_1D5E076D0(v283, v425, 9, 0, 0);
              v284 = v383;
              v220 = v391;
              v296 = v397;
            }

            else
            {
              v220 = v391;
              v296 = v397;
              v284 = v383;
            }

            v262 = v390;
          }

          else
          {
            v296 = v265;
          }

          sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
          v298 = v262[28];
          v299 = *(v262 + 232);
          v296(v381, v396, v220);
          swift_storeEnumTagMultiPayload();
          v400 = xmmword_1D72BAAD0;
          v411 = xmmword_1D72BAAD0;
          LOBYTE(v412) = 0;
          LOBYTE(v406) = 0;
          v300 = swift_allocObject();
          v302 = v300;
          *(v300 + 16) = v400;
          *(v300 + 32) = v406;
          v303 = v394;
          v304 = v378;
          *(v300 + 40) = v394;
          *(v300 + 48) = v304;
          if (v299 <= 0xFD)
          {
            *&v398 = v377;
            *&v406 = v298;
            BYTE8(v406) = v299;
            MEMORY[0x1EEE9AC00](v300, v301);
            v377[-4] = sub_1D5B4AA6C;
            v377[-3] = 0;
            v375 = sub_1D6708B24;
            v376 = v302;
            LOBYTE(v404) = 0;
            v307 = swift_allocObject();
            *(v307 + 16) = v400;
            *(v307 + 32) = v404;
            *(v307 + 40) = v303;
            *(v307 + 48) = v304;
            swift_retain_n();
            v308 = sub_1D72647CC();
            LOBYTE(v404) = 0;
            v309 = swift_allocObject();
            *(v309 + 16) = v308;
            *(v309 + 24) = v400;
            *(v309 + 40) = v404;
            v310 = *(v399 + 24);
            v311 = *(v399 + 32);
            v312 = __swift_project_boxed_opaque_existential_1(v399, v310);
            MEMORY[0x1EEE9AC00](v312, v313);
            MEMORY[0x1EEE9AC00](v314, v315);
            v377[-4] = sub_1D615B4A4;
            v377[-3] = &v377[-6];
            v375 = sub_1D6708B24;
            v376 = v307;
            v316 = v381;
            v318 = sub_1D5D2F7A4(v381, sub_1D615B49C, v317, sub_1D615B4A4, &v377[-6], v310, v311);
            if (v260)
            {
              sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);

              goto LABEL_19;
            }

            v319 = v318;

            if (v319)
            {
              sub_1D5F8F434();
              sub_1D72647EC();
            }

            v305 = v390;
            v220 = v391;
            v296 = v397;
            v306 = v381;
            v304 = v378;
          }

          else
          {

            v305 = v390;
            v306 = v381;
          }

          sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);

          swift_beginAccess();
          v320 = v305;
          v321 = v305[30];
          v322 = v320[31];
          v323 = v380;
          v296(v380, v396, v220);
          v324 = v322;
          swift_storeEnumTagMultiPayload();
          v398 = xmmword_1D72BAAE0;
          v411 = xmmword_1D72BAAE0;
          LOBYTE(v412) = 0;
          LOBYTE(v404) = 0;
          v325 = swift_allocObject();
          v327 = v325;
          *(v325 + 16) = v398;
          *(v325 + 32) = v404;
          v328 = v394;
          *(v325 + 40) = v394;
          *(v325 + 48) = v304;
          *&v400 = v260;
          if (v324)
          {
            v396 = v377;
            *&v404 = v321;
            *(&v404 + 1) = v324;
            MEMORY[0x1EEE9AC00](v325, v326);
            v377[-4] = sub_1D5B4AA6C;
            v377[-3] = 0;
            v375 = sub_1D6708B24;
            v376 = v327;
            v403 = 0;
            v329 = swift_allocObject();
            *(v329 + 16) = v398;
            *(v329 + 32) = v403;
            *(v329 + 40) = v328;
            *(v329 + 48) = v304;
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v330 = sub_1D72647CC();
            v403 = 0;
            v331 = swift_allocObject();
            *(v331 + 16) = v330;
            *(v331 + 24) = v398;
            *(v331 + 40) = v403;
            v332 = *(v399 + 24);
            v333 = *(v399 + 32);
            v334 = __swift_project_boxed_opaque_existential_1(v399, v332);
            MEMORY[0x1EEE9AC00](v334, v335);
            MEMORY[0x1EEE9AC00](v336, v337);
            v377[-4] = sub_1D615B4A4;
            v377[-3] = &v377[-6];
            v375 = sub_1D6708B24;
            v376 = v329;
            v338 = v400;
            v340 = sub_1D5D2F7A4(v323, sub_1D615B49C, v339, sub_1D615B4A4, &v377[-6], v332, v333);
            *&v400 = v338;
            if (v338)
            {
              swift_bridgeObjectRelease_n();

LABEL_105:
              sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
              v91 = v425;
              return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
            }

            v341 = v340;

            if (v341)
            {
              v342 = v400;
              sub_1D72647EC();
              *&v400 = v342;
              if (v342)
              {
                swift_bridgeObjectRelease_n();

                v323 = v380;
                goto LABEL_105;
              }
            }

            swift_bridgeObjectRelease_n();
            v220 = v391;
          }

          else
          {
          }

          sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);
          v343 = v390[32];
          v344 = v390[33];
          v346 = v390[34];
          v345 = v390[35];
          v347 = v390[36];
          v396 = v390[37];
          if (qword_1EDF31F38 != -1)
          {
            swift_once();
          }

          v348 = __swift_project_value_buffer(v220, qword_1EDFFCE38);
          (v397)(v379, v348, v220);
          swift_storeEnumTagMultiPayload();
          v398 = xmmword_1D72BAAF0;
          v404 = xmmword_1D72BAAF0;
          v405 = 0;
          LOBYTE(v411) = 0;
          v349 = swift_allocObject();
          v351 = v349;
          *(v349 + 16) = v398;
          *(v349 + 32) = v411;
          v352 = v394;
          v353 = v378;
          *(v349 + 40) = v394;
          *(v349 + 48) = v353;
          if (v343)
          {
            v397 = v377;
            *&v411 = v343;
            *(&v411 + 1) = v344;
            *&v412 = v346;
            *(&v412 + 1) = v345;
            v389 = v347;
            v354 = v396;
            *v413 = v347;
            *&v413[8] = v396;
            MEMORY[0x1EEE9AC00](v349, v350);
            v395 = &v377[-6];
            v377[-4] = sub_1D5B4AA6C;
            v377[-3] = 0;
            v375 = sub_1D6708B24;
            v376 = v351;
            v403 = 0;
            v356 = v355;
            v357 = v344;
            v358 = swift_allocObject();
            *(v358 + 16) = v398;
            *(v358 + 32) = v403;
            *(v358 + 40) = v352;
            *(v358 + 48) = v353;
            swift_retain_n();
            sub_1D5EB1D80(v356, v357, v346, v345, v389, v354);
            v359 = sub_1D72647CC();
            v403 = 0;
            v360 = swift_allocObject();
            *(v360 + 16) = v359;
            *(v360 + 24) = v398;
            *(v360 + 40) = v403;
            v361 = *(v399 + 24);
            v362 = *(v399 + 32);
            v363 = __swift_project_boxed_opaque_existential_1(v399, v361);
            MEMORY[0x1EEE9AC00](v363, v364);
            MEMORY[0x1EEE9AC00](v365, v366);
            v367 = v395;
            v377[-4] = sub_1D615B4A4;
            v377[-3] = v367;
            v375 = sub_1D6708B24;
            v376 = v358;
            v256 = v379;
            v368 = v400;
            v370 = sub_1D5D2F7A4(v379, sub_1D615B49C, v369, sub_1D615B4A4, &v377[-6], v361, v362);
            if (v368)
            {

LABEL_116:
              v371 = *v413;

              sub_1D5CBF568(v371);

              goto LABEL_71;
            }

            v372 = v370;
            *&v400 = 0;

            if (v372)
            {
              sub_1D6659A24();
              v373 = v400;
              sub_1D72647EC();
              *&v400 = v373;
              if (v373)
              {

                v256 = v379;
                goto LABEL_116;
              }
            }

            v374 = *v413;

            sub_1D5CBF568(v374);

            sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
          }

          else
          {

            sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
          }

          v91 = v425;
          return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
        }

        sub_1D62B63E4(&v416);
        sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
        v240 = v390;
        v220 = v391;
LABEL_74:
        v261 = v396;
        goto LABEL_75;
      }

      sub_1D66AD7C0(&v411, &qword_1EDF102C0, &type metadata for FormatProgressKind);
    }

    sub_1D5D2CFE8(v384, type metadata accessor for FormatVersionRequirement);
    v260 = v400;
    goto LABEL_74;
  }

  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

  v91 = v72;
  return sub_1D5D2CFE8(v91, sub_1D66AD5EC);
}

unint64_t sub_1D6551738(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    case 5:
      result = 0x7865646E497ALL;
      break;
    case 6:
      result = 0x656C797473;
      break;
    case 7:
      result = 1684957547;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0x726F7463656C6573;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 2019912806;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6551894@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AE484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65518CC(uint64_t a1)
{
  v2 = sub_1D5E1AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6551908(uint64_t a1)
{
  v2 = sub_1D5E1AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNodeContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66AD870(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66AD904(0);
  sub_1D5B58B84(&qword_1EDF24E98, sub_1D66AD904, &unk_1D7321584);
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

  v13 = v29;
  v14 = v7;
  if (v12)
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6627E68(0x6E6F697461727564, 0xE800000000000000, 0x73736572676F7270, 0xE800000000000000);
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

  sub_1D66ADA84();
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  sub_1D726431C();
  v18 = v30;
  v19 = BYTE8(v30);
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5E1D778();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v35;
  v26 = v36;
  v37 = v19;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 9) = *v38;
  *(v13 + 12) = *&v38[3];
  v27 = v33;
  *(v13 + 16) = v32;
  *(v13 + 32) = v27;
  *(v13 + 48) = v34;
  *(v13 + 66) = v26;
  *(v13 + 64) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v77 - v8;
  sub_1D66ADAE4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 1);
  v87 = *(v1 + 2);
  v88 = v17;
  v18 = v1[7];
  v86 = v1[6];
  v85 = v18;
  v104 = *(v1 + 66);
  v83 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66AD904(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF24E98, sub_1D66AD904, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeContent, v22, v24, v19, &type metadata for FormatProgressViewNodeContent, v22, &type metadata for FormatVersions.StarSkyC, v20, v14, v23, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD00);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v82 = v25;
  v81 = v28;
  v80 = v27 + 16;
  v28(v9, v26, v25);
  v79 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v95 = v15;
  BYTE8(v95) = v16;
  v97 = 0uLL;
  LOBYTE(v98) = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v103 = 0;
  v32 = swift_allocObject();
  v93 = &v77;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v103;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v77 - 4) = sub_1D5B4AA6C;
  *(&v77 - 3) = 0;
  v75 = sub_1D6708B28;
  v76 = v34;
  v103 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v103;
  v84 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66ADB78(0);
  v92 = v9;
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02DF8, sub_1D66ADB78, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v90 = v38;
  v91 = v37;
  v39 = sub_1D72647CC();
  v103 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v103;
  v41 = v14;
  v42 = &v14[*(v11 + 36)];
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v77 - 4) = sub_1D615B4A4;
  *(&v77 - 3) = (&v77 - 6);
  v49 = v92;
  v75 = sub_1D66ADC0C;
  v76 = v35;
  v50 = v94;
  sub_1D5D2BC70(v92, sub_1D615B49C, v51, sub_1D615B4A4, (&v77 - 6), v43, v44);
  if (v50)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v52 = v41;
  }

  else
  {
    v77 = v42;
    v78 = v31;

    sub_1D66ADC88();
    sub_1D72647EC();
    v54 = v41;
    v55 = v83 | (v104 << 16);
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v56 = v82;
    v57 = __swift_project_value_buffer(v82, qword_1EDFFCCE8);
    v58 = v89;
    v81(v89, v57, v56);
    swift_storeEnumTagMultiPayload();
    v97 = v88;
    v98 = v87;
    v99 = v86;
    v100 = v85;
    v102 = BYTE2(v55);
    v101 = v55;
    v94 = xmmword_1D728CF30;
    v95 = xmmword_1D728CF30;
    v96 = 0;
    v103 = 0;
    v59 = swift_allocObject();
    v93 = &v77;
    *(v59 + 16) = v94;
    *(v59 + 32) = v103;
    v60 = v84;
    v61 = v78;
    *(v59 + 40) = v84;
    *(v59 + 48) = v61;
    MEMORY[0x1EEE9AC00](v59, v62);
    *(&v77 - 4) = sub_1D5B4AA6C;
    *(&v77 - 3) = 0;
    v75 = sub_1D6708B28;
    v76 = v63;
    v103 = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v94;
    *(v64 + 32) = v103;
    *(v64 + 40) = v60;
    *(v64 + 48) = v61;
    swift_retain_n();
    v92 = v54;
    v65 = sub_1D72647CC();
    v103 = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = v94;
    *(v66 + 40) = v103;
    v67 = *(v77 + 3);
    v68 = *(v77 + 4);
    v69 = __swift_project_boxed_opaque_existential_1(v77, v67);
    MEMORY[0x1EEE9AC00](v69, v70);
    MEMORY[0x1EEE9AC00](v71, v72);
    *(&v77 - 4) = sub_1D615B4A4;
    *(&v77 - 3) = (&v77 - 6);
    v75 = sub_1D6708B28;
    v76 = v64;
    sub_1D5D2BC70(v58, sub_1D615B49C, v73, sub_1D615B4A4, (&v77 - 6), v67, v68);

    sub_1D5E1D7CC();
    v74 = v92;
    sub_1D72647EC();
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    v52 = v74;
  }

  return sub_1D5D2CFE8(v52, sub_1D66ADAE4);
}

uint64_t sub_1D6552638()
{
  v1 = 0x73736572676F7270;
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
    return 0x6E6F697461727564;
  }
}

uint64_t sub_1D655268C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AE8F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65526C4(uint64_t a1)
{
  v2 = sub_1D66AD9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6552700(uint64_t a1)
{
  v2 = sub_1D66AD9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNodeDuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v25;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5116848;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66ADCDC();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v27;
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D6677FFC();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      sub_1D5C71DC8(0);
      v26 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    *v13 = v23;
    *(v13 + 8) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeDuration.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeDuration, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatProgressViewNodeDuration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v14, v19, &off_1F51F6B18);
  if (v16)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
    (*(*(v21 - 8) + 16))(v6, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A9F4(1, v15, v6);
    v23 = v6;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD00);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A828(0, v15, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6552DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6962;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D6552EA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6552F20(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6552F8C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6553014(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6553100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E616D6D6F63;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D65531A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6553224(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6553290(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6553318(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6553404()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x73736572676F7270;
  if (v1 != 4)
  {
    v4 = 0x6C6F436B63617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F7463656C6573;
  if (v1 != 2)
  {
    v5 = 0x6168706C61;
  }

  if (*v0)
  {
    v2 = 0x7373616C63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6553504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AEA0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D655353C(uint64_t a1)
{
  v2 = sub_1D666AB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6553578(uint64_t a1)
{
  v2 = sub_1D666AB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65535B4()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x6C6F436B63617274;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168706C61;
  if (v1 != 1)
  {
    v5 = 0x73736572676F7270;
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

uint64_t sub_1D6553678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AECBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65536B0(uint64_t a1)
{
  v2 = sub_1D666AE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65536EC(uint64_t a1)
{
  v2 = sub_1D666AE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPublisherLogoSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v94 - v11;
  sub_1D66ADD30(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v97 = *(v1 + 1);
  v113 = v1[16];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5CBF578(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25198, sub_1D5CBF578, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSize, v22, v24, v19, &type metadata for FormatPublisherLogoSize, v22, &type metadata for FormatVersions.JazzkonC, v20, v17, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v96 = v26;
  v100 = v28;
  v101 = v25;
  v99 = v27 + 16;
  (v28)(v12);
  v98 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v109) = v18;
  v110 = 0uLL;
  v111 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v112 = 0;
  v32 = swift_allocObject();
  v106 = &v94;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v112;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v108 = v12;
  *(&v94 - 4) = sub_1D5B4AA6C;
  *(&v94 - 3) = 0;
  v92 = sub_1D6708B2C;
  v93 = v34;
  v112 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v112;
  v102 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66ADDC4(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03158, sub_1D66ADDC4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v104 = v38;
  v105 = v37;
  v39 = sub_1D72647CC();
  v112 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v112;
  v41 = &v17[*(v14 + 36)];
  v43 = *(v41 + 3);
  v42 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v94 - 4) = sub_1D615B4A4;
  *(&v94 - 3) = (&v94 - 6);
  v48 = v107;
  v49 = v108;
  v92 = sub_1D6708B2C;
  v93 = v35;
  sub_1D5D2BC70(v108, sub_1D615B49C, v50, sub_1D615B4A4, (&v94 - 6), v43, v42);
  if (v48)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v51 = v17;
  }

  else
  {
    v94 = v41;
    v107 = v31;

    sub_1D66ADE58();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v100(v103, v96, v101);
    swift_storeEnumTagMultiPayload();
    v109 = v97;
    v108 = xmmword_1D728CF30;
    v110 = xmmword_1D728CF30;
    v111 = 0;
    v112 = 0;
    v53 = swift_allocObject();
    v106 = &v94;
    *(v53 + 16) = v108;
    *(v53 + 32) = v112;
    v54 = v102;
    v55 = v107;
    *(v53 + 40) = v102;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v94 - 4) = sub_1D5B4AA6C;
    *(&v94 - 3) = 0;
    v92 = sub_1D6708B2C;
    v93 = v57;
    v112 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v108;
    *(v58 + 32) = v112;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    v59 = v17;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v112 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v108;
    *(v61 + 40) = v112;
    v62 = *(v94 + 3);
    v63 = *(v94 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v94, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v94 - 4) = sub_1D615B4A4;
    *(&v94 - 3) = (&v94 - 6);
    v68 = v103;
    v92 = sub_1D6708B2C;
    v93 = v58;
    sub_1D5D2BC70(v103, sub_1D615B49C, v69, sub_1D615B4A4, (&v94 - 6), v62, v63);

    sub_1D666D440();
    sub_1D72647EC();
    v70 = v59;
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v71 = v101;
    v72 = __swift_project_value_buffer(v101, qword_1EDFFCD50);
    v73 = v95;
    v100(v95, v72, v71);
    swift_storeEnumTagMultiPayload();
    v108 = xmmword_1D7297410;
    v110 = xmmword_1D7297410;
    v111 = 0;
    LOBYTE(v109) = 0;
    v74 = swift_allocObject();
    v76 = v74;
    *(v74 + 16) = v108;
    *(v74 + 32) = v109;
    v77 = v102;
    v78 = v107;
    *(v74 + 40) = v102;
    *(v74 + 48) = v78;
    if (v113 == 12)
    {
    }

    else
    {
      v106 = &v94;
      LOBYTE(v109) = v113;
      v79 = v77;
      MEMORY[0x1EEE9AC00](v74, v75);
      *(&v94 - 4) = sub_1D5B4AA6C;
      *(&v94 - 3) = 0;
      v92 = sub_1D6708B2C;
      v93 = v76;
      v112 = 0;
      v80 = v70;
      v81 = swift_allocObject();
      *(v81 + 16) = v108;
      *(v81 + 32) = v112;
      *(v81 + 40) = v79;
      *(v81 + 48) = v78;
      swift_retain_n();
      v82 = v80;
      v83 = sub_1D72647CC();
      v112 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v108;
      *(v84 + 40) = v112;
      v85 = *(v94 + 3);
      v86 = *(v94 + 4);
      v87 = __swift_project_boxed_opaque_existential_1(v94, v85);
      MEMORY[0x1EEE9AC00](v87, v88);
      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v94 - 4) = sub_1D615B4A4;
      *(&v94 - 3) = (&v94 - 6);
      v73 = v95;
      v92 = sub_1D66ADEAC;
      v93 = v81;
      LOBYTE(v86) = sub_1D5D2F7A4(v95, sub_1D615B49C, v91, sub_1D615B4A4, (&v94 - 6), v85, v86);

      if (v86)
      {
        sub_1D668B4C0();
        v70 = v82;
        sub_1D72647EC();
      }

      else
      {
        v70 = v82;
      }
    }

    sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

    v51 = v70;
  }

  return sub_1D5D2CFE8(v51, sub_1D66ADD30);
}

uint64_t sub_1D6554304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AEECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D655433C(uint64_t a1)
{
  v2 = sub_1D5CBF6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6554378(uint64_t a1)
{
  v2 = sub_1D5CBF6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPublisherLogoSizeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSizeBinding, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatPublisherLogoSizeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD98);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419D90(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419D90(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCDE0);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCCA8);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE38);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D65549B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6554A88(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6554B44(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6554C10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE300000000000000;
  v6 = 6775156;
  v7 = 0x656C7A7A7570;
  if (v2 != 3)
  {
    v7 = 0x657069636572;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x6575737369;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t FormatPublisherLogoSizing.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSizing, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatPublisherLogoSizing, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641B558(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641B558(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63901B4(3, v23, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B558(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65551D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D655528C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D655532C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65553DC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1768843629;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0x746963696C707865;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
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

uint64_t sub_1D65554A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65555A4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D655568C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6555784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663E2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65557B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x656568536F6C736FLL;
  v5 = 0xE800000000000000;
  v6 = 0x7465656853736D61;
  v7 = 0xEB00000000656761;
  v8 = 0x50676E69646E616CLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001D73BAAC0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73BAA80;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatPurchaseLandingPage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66ADF28(0);
  v7 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66ADFBC(0);
  sub_1D5B58B84(&qword_1EDF25078, sub_1D66ADFBC, &unk_1D7321584);
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

      v20 = sub_1D66211F0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667CF44();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_1D726431C();
  v17 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v36 = xmmword_1D728CF30;
  LOBYTE(v37) = 0;
  sub_1D66678A8();
  sub_1D726427C();
  (*(v13 + 8))(v10, v7);
  v23 = v33;
  *a2 = v17;
  v24 = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v24;
  v25 = v30;
  *(a2 + 32) = v29;
  *(a2 + 40) = v25;
  *(a2 + 48) = v31;
  *(a2 + 50) = v42;
  *(a2 + 54) = v43;
  *(a2 + 56) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPurchaseLandingPage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v72 - v8;
  sub_1D66AE13C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v81 = *(v1 + 16);
  v82 = v15;
  v16 = *(v1 + 32);
  v80 = *(v1 + 40);
  v17 = *(v1 + 48);
  v76 = *(v1 + 56);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66ADFBC(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF25078, sub_1D66ADFBC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPurchaseLandingPage, v21, v23, v18, &type metadata for FormatPurchaseLandingPage, v21, &type metadata for FormatVersions.AzdenE, v19, v14, v22, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD98);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v78 = v25;
  v74 = v24;
  v73 = v27;
  v72[1] = v26 + 16;
  v27(v9);
  v72[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v82;
  v88 = v81;
  v89 = v16;
  v90 = v80;
  v91 = v17;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v92 = 0;
  v31 = swift_allocObject();
  *&v82 = v72;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v92;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v81 = v9;
  v72[-4] = sub_1D5B4AA6C;
  v72[-3] = 0;
  v70 = sub_1D6708B30;
  v71 = v33;
  v92 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v92;
  v75 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66AE1D0(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC8870E0, sub_1D66AE1D0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v37;
  v80 = v36;
  v38 = sub_1D72647CC();
  v92 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v92;
  v40 = v14;
  v41 = &v14[*(v11 + 36)];
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v72[-4] = sub_1D615B4A4;
  v72[-3] = &v72[-6];
  v70 = sub_1D6708B30;
  v71 = v34;
  v48 = v81;
  v49 = v83;
  sub_1D5D2BC70(v81, sub_1D615B49C, v50, sub_1D615B4A4, &v72[-6], v42, v43);
  if (v49)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v51 = v40;
  }

  else
  {
    v83 = v41;
    v52 = v78;

    sub_1D6686A30();
    v51 = v40;
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v53 = v77;
    v73(v77, v52, v74);
    swift_storeEnumTagMultiPayload();
    v82 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    LOBYTE(v88) = 0;
    LOBYTE(v84) = 0;
    v54 = swift_allocObject();
    v56 = v54;
    *(v54 + 16) = v82;
    *(v54 + 32) = v84;
    v58 = v75;
    v57 = v76;
    *(v54 + 40) = v75;
    *(v54 + 48) = v30;
    if ((v57 & 0xF000000000000007) == 0x7000000000000007)
    {
    }

    else
    {
      v78 = v72;
      v84 = v57;
      MEMORY[0x1EEE9AC00](v54, v55);
      v72[-4] = sub_1D5B4AA6C;
      v72[-3] = 0;
      v70 = sub_1D6708B30;
      v71 = v56;
      v92 = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v82;
      *(v59 + 32) = v92;
      *(v59 + 40) = v58;
      *(v59 + 48) = v30;
      swift_retain_n();
      sub_1D614F63C(v57);
      *&v81 = v51;
      v60 = sub_1D72647CC();
      v92 = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v61 + 24) = v82;
      *(v61 + 40) = v92;
      v62 = *(v83 + 3);
      v63 = *(v83 + 4);
      v64 = __swift_project_boxed_opaque_existential_1(v83, v62);
      MEMORY[0x1EEE9AC00](v64, v65);
      MEMORY[0x1EEE9AC00](v66, v67);
      v72[-4] = sub_1D615B4A4;
      v72[-3] = &v72[-6];
      v53 = v77;
      v70 = sub_1D66AE264;
      v71 = v59;
      LOBYTE(v62) = sub_1D5D2F7A4(v77, sub_1D615B49C, v68, sub_1D615B4A4, &v72[-6], v62, v63);

      if (v62)
      {
        sub_1D66A821C();
        v51 = v81;
        sub_1D72647EC();

        sub_1D614F69C(v84);
      }

      else
      {

        sub_1D614F69C(v84);
        v51 = v81;
      }
    }

    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v51, sub_1D66AE13C);
}

uint64_t sub_1D6556580()
{
  v1 = 0x6372755074736F70;
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
    return 0xD000000000000011;
  }
}

uint64_t sub_1D65565E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66AF02C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6556618(uint64_t a1)
{
  v2 = sub_1D66AE094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6556654(uint64_t a1)
{
  v2 = sub_1D66AE094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Bool, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64216E0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64216E0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatPuzzleBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Command, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatPuzzleBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v28, v25, v29, &off_1F51F6CF8);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCCA8);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64211A0(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCCA8);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64211A0(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCE80);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCE80);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE80);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D65570B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65571C8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65572C4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65573D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663CB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6557400(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073736572676FLL;
  v4 = 0x7250656C7A7A7570;
  v5 = 0xEF65746174536B6ELL;
  v6 = 0x6152656C7A7A7570;
  v7 = 0x80000001D73BA740;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D73BA760;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7453656C7A7A7570;
    v3 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatPuzzleBinding.DateTime.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.DateTime, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D642105C(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatPuzzleBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Image, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatPuzzleBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421438(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCCA8);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421438(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCA8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421438(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6557BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE006C6C616D536CLL;
  if (v2 != 1)
  {
    v3 = 0xEE00656772614C6CLL;
  }

  if (*a1)
  {
    v4 = 0x69616E626D756874;
  }

  else
  {
    v4 = 0x656873696C627570;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xED00006F676F4C72;
  }

  v6 = 0xEE006C6C616D536CLL;
  if (*a2 != 1)
  {
    v6 = 0xEE00656772614C6CLL;
  }

  if (*a2)
  {
    v7 = 0x69616E626D756874;
  }

  else
  {
    v7 = 0x656873696C627570;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED00006F676F4C72;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6557CD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6557DA0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6557E54(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6557F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663C64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6557F48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F676F4C72;
  v4 = 0xEE006C6C616D536CLL;
  if (v2 != 1)
  {
    v4 = 0xEE00656772614C6CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x69616E626D756874;
  }

  else
  {
    v6 = 0x656873696C627570;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatPuzzleBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
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
    v12 = v35;
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
          *(v22 + 16) = &unk_1F5116A78;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66AE430();
    v31 = 0uLL;
    sub_1D726431C();
    switch(v30)
    {
      case 1:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 1;
        break;
      case 2:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v24 = 2;
        goto LABEL_21;
      case 3:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 3;
        break;
      case 4:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 4;
        break;
      case 5:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 5;
        break;
      case 6:
        v30 = xmmword_1D7279980;
        sub_1D5CCD298();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v26 = v32;
        if (v32 == 3)
        {
          v24 = 0;
          v25 = 0;
          v27 = 0;
          v29 = 0;
          v28 = 0uLL;
          v26 = 1;
        }

        else
        {
          v29 = 0;
          v27 = v34;
          v28 = v33;
          v25 = *(&v31 + 1);
          v24 = v31;
        }

        break;
      case 7:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 6;
        break;
      case 8:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 7;
        break;
      case 9:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 8;
        break;
      case 10:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 9;
        break;
      case 11:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 10;
        break;
      case 12:
        v31 = xmmword_1D7279980;
        sub_1D6695430();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v28 = 0uLL;
        if (v30 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v24 = v30 & 1;
        }

        v29 = 1;
        break;
      case 13:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 11;
        break;
      case 14:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 12;
        break;
      case 15:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 13;
        break;
      default:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
LABEL_21:
        v29 = 2;
        break;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v26;
    *(v12 + 24) = v28;
    *(v12 + 40) = v27;
    *(v12 + 48) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v119 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v120 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v121 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v122 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v123 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v124 = &v116 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v125 = &v116 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v126 = &v116 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v127 = &v116 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v128 = &v116 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v129 = &v116 - v51;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v116 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v1;
  v57 = v1[1];
  v59 = v1[2];
  v58 = v1[3];
  v60 = v1[5];
  v132 = v1[4];
  v133 = v56;
  v131 = v60;
  v61 = *(v1 + 48);
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  v64 = sub_1D5C30408();
  v140 = v55;
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Text, &type metadata for FormatCodingKeys, v65, v62, &type metadata for FormatPuzzleBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v63, v55, v64, &off_1F51F6CF8);
  if (!v61)
  {
    *&v135 = v133;
    *(&v135 + 1) = v57;
    v136 = v59;
    v137 = v58;
    v138 = v132;
    v139 = v131;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v70 = sub_1D725BD1C();
    v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
    (*(*(v70 - 8) + 16))(v33, v71, v70);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v69 = v140;
    sub_1D6485434(6, &v135, v33);
    v72 = v33;
    goto LABEL_19;
  }

  if (v61 == 1)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v66 = sub_1D725BD1C();
    v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
    v68 = v130;
    (*(*(v66 - 8) + 16))(v130, v67, v66);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v69 = v140;
    sub_1D63A6084(12, v133 & 1, v68);
LABEL_18:
    v72 = v68;
LABEL_19:
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    v78 = v69;
    return sub_1D5D2CFE8(v78, sub_1D5D30DC4);
  }

  if (!(v59 | v57 | v133 | v58 | v132 | v131))
  {
    v69 = v140;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v79 = sub_1D725BD1C();
    v80 = __swift_project_value_buffer(v79, qword_1EDFFCCA8);
    v68 = v129;
    (*(*(v79 - 8) + 16))(v129, v80, v79);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642158C(0, v68);
    goto LABEL_18;
  }

  v73 = v59 | v57 | v58 | v132 | v131;
  v74 = v140;
  if (v133 == 1 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v75 = sub_1D725BD1C();
    v76 = __swift_project_value_buffer(v75, qword_1EDFFCCA8);
    v77 = v128;
    (*(*(v75 - 8) + 16))(v128, v76, v75);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642158C(1, v77);
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
    v78 = v74;
    return sub_1D5D2CFE8(v78, sub_1D5D30DC4);
  }

  if (v133 == 2 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v82 = sub_1D725BD1C();
    v83 = __swift_project_value_buffer(v82, qword_1EDFFCCA8);
    v84 = v127;
    (*(*(v82 - 8) + 16))(v127, v83, v82);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 2;
    goto LABEL_66;
  }

  if (v133 == 3 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v86 = sub_1D725BD1C();
    v87 = __swift_project_value_buffer(v86, qword_1EDFFCCA8);
    v84 = v126;
    (*(*(v86 - 8) + 16))(v126, v87, v86);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 3;
    goto LABEL_66;
  }

  if (v133 == 4 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v88 = sub_1D725BD1C();
    v89 = __swift_project_value_buffer(v88, qword_1EDFFCCA8);
    v84 = v125;
    (*(*(v88 - 8) + 16))(v125, v89, v88);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 4;
    goto LABEL_66;
  }

  if (v133 == 5 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v90 = sub_1D725BD1C();
    v91 = __swift_project_value_buffer(v90, qword_1EDFFCCA8);
    v84 = v124;
    (*(*(v90 - 8) + 16))(v124, v91, v90);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 5;
    goto LABEL_66;
  }

  if (v133 == 6 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v92 = sub_1D725BD1C();
    v93 = __swift_project_value_buffer(v92, qword_1EDFFCCA8);
    v84 = v123;
    (*(*(v92 - 8) + 16))(v123, v93, v92);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 7;
    goto LABEL_66;
  }

  if (v133 == 7 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v94 = sub_1D725BD1C();
    v95 = __swift_project_value_buffer(v94, qword_1EDFFCCA8);
    v84 = v122;
    (*(*(v94 - 8) + 16))(v122, v95, v94);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 8;
    goto LABEL_66;
  }

  if (v133 == 8 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v96 = sub_1D725BD1C();
    v97 = __swift_project_value_buffer(v96, qword_1EDFFCCA8);
    v84 = v121;
    (*(*(v96 - 8) + 16))(v121, v97, v96);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 9;
    goto LABEL_66;
  }

  if (v133 == 9 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v98 = sub_1D725BD1C();
    v99 = __swift_project_value_buffer(v98, qword_1EDFFCCA8);
    v84 = v120;
    (*(*(v98 - 8) + 16))(v120, v99, v98);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 10;
    goto LABEL_66;
  }

  if (v133 == 10 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v100 = sub_1D725BD1C();
    v101 = __swift_project_value_buffer(v100, qword_1EDFFCCA8);
    v84 = v119;
    (*(*(v100 - 8) + 16))(v119, v101, v100);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 11;
LABEL_66:
    v102 = v134;
    sub_1D642158C(v85, v84);
    if (v102)
    {
      goto LABEL_67;
    }

LABEL_68:
    v103 = v84;
    goto LABEL_69;
  }

  if (v133 != 11 || v73)
  {
    if (v133 != 12 || v73)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCC90);
      v114 = v118;
      (*(*(v112 - 8) + 16))(v118, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v115 = v134;
      sub_1D642158C(15, v114);
      if (!v115)
      {
        v74 = v140;
        v103 = v118;
        goto LABEL_69;
      }

      v111 = &v142;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCCA8);
      v109 = v117;
      (*(*(v107 - 8) + 16))(v117, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v110 = v134;
      sub_1D642158C(14, v109);
      v111 = &v141;
      if (!v110)
      {
        v103 = v117;
        v74 = v140;
        goto LABEL_69;
      }
    }

    v84 = *(v111 - 32);
    v74 = v140;
    goto LABEL_67;
  }

  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v104 = sub_1D725BD1C();
  v105 = __swift_project_value_buffer(v104, qword_1EDFFCCA8);
  v84 = v116;
  (*(*(v104 - 8) + 16))(v116, v105, v104);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v106 = v134;
  sub_1D642158C(13, v84);
  if (!v106)
  {
    goto LABEL_68;
  }

LABEL_67:
  v103 = v84;
LABEL_69:
  sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

uint64_t FormatPuzzleEmbedNode.encode(to:)(void *a1)
{
  v2 = v1;
  *&v456 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v432 - v6;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v433 = v432 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v434 = v432 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v435 = v432 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v436 = v432 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v437 = v432 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v438 = v432 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v439 = v432 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v440 = v432 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v441 = v432 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v443 = v432 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v444 = v432 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v450 = (v432 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v447 = v432 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  *&v455 = v432 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = v432 - v52;
  sub_1D66B0210(0);
  v457 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v432 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5E1A878(0);
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF0C510, sub_1D5E1A878, &unk_1D7321584);
  v458 = v57;
  sub_1D5D2EE70(v456, v61, v63, v58, v456, v61, &type metadata for FormatVersions.DawnburstC, v59, v57, v62, &off_1F51F6B98);
  swift_beginAccess();
  v64 = v2[2];
  v65 = v2[3];
  v453 = v2;
  v66 = qword_1EDF31F58[0];

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCE98);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  *&v456 = v68;
  v70(v53);
  v452 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v72 = sub_1D725895C();
  v73 = (*(*(v72 - 8) + 48))(v7, 1, v72);
  v448 = v67;
  v449 = v70;
  v451 = v71;
  if (v73 == 1)
  {
    v446 = v64;
    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v75 = v457;
    v74 = v458;
    v76 = &v458[*(v457 + 11)];
    v78 = *v76;
    v77 = *(v76 + 1);
    LOBYTE(v474) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = v474;
    *(v79 + 40) = v78;
    *(v79 + 48) = v77;
    sub_1D5E1A83C(0);
    v81 = v80;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);

    v445 = v81;
    v82 = sub_1D72647CC();
    LOBYTE(v474) = 0;
    v83 = swift_allocObject();
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;
    *(v83 + 16) = v82;
    *(v83 + 40) = v474;
    v84 = (v74 + *(v75 + 9));
    v85 = v84[3];
    v86 = v84[4];
    v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
    *&v454 = v432;
    MEMORY[0x1EEE9AC00](v87, v88);
    MEMORY[0x1EEE9AC00](v89, v90);
    v432[-4] = sub_1D5B4AA6C;
    v432[-3] = 0;
    v430 = sub_1D66B02A4;
    v431 = v79;
    v91 = v459;
    v93 = sub_1D5D2F7A4(v53, sub_1D615B49C, v92, sub_1D615B4A4, &v432[-6], v85, v86);
    *&v459 = v91;
    if (v91)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

LABEL_6:
      v94 = v74;
      return sub_1D5D2CFE8(v94, sub_1D66B0210);
    }

    v95 = v93;

    if (v95)
    {
      v474 = 0uLL;
      LOBYTE(v475) = 0;
      *&v470 = v446;
      *(&v470 + 1) = v65;
      v96 = v459;
      sub_1D72647EC();

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
      v67 = v448;
      v70 = v449;
      *&v459 = v96;
      if (v96)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

      v67 = v448;
      v70 = v449;
    }
  }

  else
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v97 = v453;
  v98 = v453[5];
  v442 = v453[4];
  (v70)(v455, v456, v67);
  swift_storeEnumTagMultiPayload();
  v454 = xmmword_1D728CF30;
  v474 = xmmword_1D728CF30;
  LOBYTE(v475) = 0;
  v99 = &v458[*(v457 + 11)];
  v100 = *v99;
  v101 = *(v99 + 1);
  LOBYTE(v470) = 0;
  v102 = swift_allocObject();
  v104 = v102;
  *(v102 + 16) = v454;
  *(v102 + 32) = v470;
  *(v102 + 40) = v100;
  *(v102 + 48) = v101;
  v445 = v100;
  v446 = v101;
  if (!v98)
  {

    sub_1D5D2CFE8(v455, type metadata accessor for FormatVersionRequirement);

LABEL_19:
    v126 = v456;
    goto LABEL_20;
  }

  v432[2] = v432;
  *&v470 = v442;
  *(&v470 + 1) = v98;
  MEMORY[0x1EEE9AC00](v102, v103);
  v432[-4] = sub_1D5B4AA6C;
  v432[-3] = 0;
  v430 = sub_1D6708B34;
  v431 = v104;
  LOBYTE(v460) = 0;
  v105 = v98;
  v106 = swift_allocObject();
  *(v106 + 16) = v454;
  *(v106 + 32) = v460;
  *(v106 + 40) = v100;
  *(v106 + 48) = v101;
  sub_1D5E1A83C(0);
  v108 = v107;
  v109 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v442 = v105;

  v110 = v458;
  v432[1] = v108;
  v111 = sub_1D72647CC();
  LOBYTE(v460) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v111;
  *(v112 + 24) = v454;
  *(v112 + 40) = v460;
  v113 = (v110 + *(v457 + 9));
  v114 = v113[3];
  v115 = v113[4];
  v116 = __swift_project_boxed_opaque_existential_1(v113, v114);
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  v432[-4] = sub_1D615B4A4;
  v432[-3] = &v432[-6];
  v430 = sub_1D6708B34;
  v431 = v106;
  v120 = v455;
  v121 = v459;
  v123 = sub_1D5D2F7A4(v455, sub_1D615B49C, v122, sub_1D615B4A4, &v432[-6], v114, v115);
  *&v459 = v121;
  if (v121)
  {

    v124 = v458;
    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    v94 = v124;
    return sub_1D5D2CFE8(v94, sub_1D66B0210);
  }

  v125 = v123;
  *&v454 = v109;

  if ((v125 & 1) == 0)
  {

    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    v97 = v453;
    v67 = v448;
    v70 = v449;
    goto LABEL_19;
  }

  sub_1D72647EC();
  v97 = v453;
  v67 = v448;
  v126 = v456;
  *&v459 = 0;

  sub_1D5D2CFE8(v455, type metadata accessor for FormatVersionRequirement);
  v70 = v449;
LABEL_20:
  swift_beginAccess();
  v127 = v97[6];
  v128 = v447;
  (v70)(v447, v126, v67);
  swift_storeEnumTagMultiPayload();
  if (((v127 >> 59) & 0x1E | (v127 >> 2) & 1) == 0x16 && v127 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    v129 = v446;
  }

  else
  {
    LOBYTE(v474) = 0;
    v130 = swift_allocObject();
    v455 = xmmword_1D7297410;
    *(v130 + 16) = xmmword_1D7297410;
    *(v130 + 32) = v474;
    *(v130 + 40) = v445;
    *(v130 + 48) = v446;

    sub_1D5C82CD8(v127);
    sub_1D5E1A83C(0);
    v132 = v131;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);
    v133 = v128;
    v134 = v458;
    *&v454 = v132;
    v135 = sub_1D72647CC();
    LOBYTE(v474) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v455;
    *(v136 + 40) = v474;
    v137 = (v134 + *(v457 + 9));
    v138 = v137[3];
    v139 = v137[4];
    v140 = __swift_project_boxed_opaque_existential_1(v137, v138);
    MEMORY[0x1EEE9AC00](v140, v141);
    MEMORY[0x1EEE9AC00](v142, v143);
    v432[-4] = sub_1D5B4AA6C;
    v432[-3] = 0;
    v430 = sub_1D6708B34;
    v431 = v130;
    v144 = v459;
    v146 = sub_1D5D2F7A4(v133, sub_1D615B49C, v145, sub_1D615B4A4, &v432[-6], v138, v139);
    *&v459 = v144;
    if (v144)
    {

      sub_1D5C92A8C(v127);
      v147 = v133;
LABEL_34:
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
LABEL_35:
      v94 = v458;
      return sub_1D5D2CFE8(v94, sub_1D66B0210);
    }

    v148 = v146;
    v149 = v458;

    if (v148)
    {
      v474 = v455;
      LOBYTE(v475) = 0;
      *&v470 = v127;
      sub_1D5CA1E90();
      v150 = v149;
      v151 = v459;
      sub_1D72647EC();
      v97 = v453;
      *&v459 = v151;
      if (v151)
      {
        sub_1D5C92A8C(v470);
        v152 = v447;
LABEL_47:
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
        v94 = v150;
        return sub_1D5D2CFE8(v94, sub_1D66B0210);
      }

      sub_1D5C92A8C(v470);
      sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);
      v67 = v448;
      v70 = v449;
    }

    else
    {
      sub_1D5C92A8C(v127);
      sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);
      v97 = v453;
      v67 = v448;
      v70 = v449;
    }

    v129 = v446;
  }

  v153 = v97[7];
  (v70)(v450, v456, v67);
  swift_storeEnumTagMultiPayload();
  v455 = xmmword_1D72BAA60;
  v474 = xmmword_1D72BAA60;
  LOBYTE(v475) = 0;
  LOBYTE(v470) = 0;
  v154 = swift_allocObject();
  v156 = v154;
  *(v154 + 16) = v455;
  *(v154 + 32) = v470;
  *(v154 + 40) = v445;
  *(v154 + 48) = v129;
  if (v153)
  {
    *&v454 = v432;
    *&v470 = v153;
    MEMORY[0x1EEE9AC00](v154, v155);
    v158 = v157;
    v432[-4] = sub_1D5B4AA6C;
    v432[-3] = 0;
    v430 = sub_1D6708B34;
    v431 = v156;
    LOBYTE(v460) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v455;
    *(v159 + 32) = v460;
    *(v159 + 40) = v158;
    *(v159 + 48) = v129;
    sub_1D5E1A83C(0);
    v161 = v160;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v162 = v458;
    v447 = v161;
    v163 = sub_1D72647CC();
    LOBYTE(v460) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v163;
    *(v164 + 24) = v455;
    *(v164 + 40) = v460;
    v165 = (v162 + *(v457 + 9));
    v166 = v165[3];
    v167 = v165[4];
    v168 = __swift_project_boxed_opaque_existential_1(v165, v166);
    MEMORY[0x1EEE9AC00](v168, v169);
    MEMORY[0x1EEE9AC00](v170, v171);
    v432[-4] = sub_1D615B4A4;
    v432[-3] = &v432[-6];
    v430 = sub_1D6708B34;
    v431 = v159;
    v172 = v459;
    v174 = sub_1D5D2F7A4(v450, sub_1D615B49C, v173, sub_1D615B4A4, &v432[-6], v166, v167);
    *&v459 = v172;
    if (v172)
    {

      v175 = v450;

      v147 = v175;
      goto LABEL_34;
    }

    v176 = v174;

    if (v176)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v97 = v453;
      v67 = v448;
      *&v459 = 0;
    }

    else
    {

      v97 = v453;
      v67 = v448;
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v450, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v177 = v97[8];
  v178 = v444;
  v179 = v456;
  (v449)(v444, v456, v67);
  swift_storeEnumTagMultiPayload();
  *&v455 = v177;
  if (!*(v177 + 16))
  {
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
LABEL_44:
    v201 = v179;
    goto LABEL_49;
  }

  LOBYTE(v474) = 0;
  v180 = swift_allocObject();
  v181 = v458;
  v182 = v180;
  v454 = xmmword_1D72BAA70;
  *(v180 + 16) = xmmword_1D72BAA70;
  *(v180 + 32) = v474;
  v183 = v446;
  *(v180 + 40) = v445;
  *(v180 + 48) = v183;
  sub_1D5E1A83C(0);
  v185 = v184;
  v186 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);

  v187 = v455;

  v450 = v185;
  v447 = v186;
  v188 = sub_1D72647CC();
  LOBYTE(v474) = 0;
  v189 = swift_allocObject();
  *(v189 + 16) = v188;
  *(v189 + 24) = v454;
  *(v189 + 40) = v474;
  v190 = (v181 + *(v457 + 9));
  v191 = v190[3];
  v192 = v190[4];
  v193 = __swift_project_boxed_opaque_existential_1(v190, v191);
  MEMORY[0x1EEE9AC00](v193, v194);
  MEMORY[0x1EEE9AC00](v195, v196);
  v432[-4] = sub_1D5B4AA6C;
  v432[-3] = 0;
  v430 = sub_1D6708B34;
  v431 = v182;
  v197 = v459;
  v199 = sub_1D5D2F7A4(v178, sub_1D615B49C, v198, sub_1D615B4A4, &v432[-6], v191, v192);
  if (v197)
  {
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

    result = sub_1D5D2CFE8(v458, sub_1D66B0210);
    *&v459 = v197;
    return result;
  }

  v202 = v199;

  if (v202)
  {
    v474 = v454;
    LOBYTE(v475) = 0;
    *&v470 = v187;
    sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D6659C88();
    sub_1D72647EC();
    v97 = v453;
    v179 = v456;
    *&v459 = 0;

    sub_1D5D2CFE8(v444, type metadata accessor for FormatVersionRequirement);
    v67 = v448;
    goto LABEL_44;
  }

  sub_1D5D2CFE8(v444, type metadata accessor for FormatVersionRequirement);

  *&v459 = 0;
  v97 = v453;
  v67 = v448;
  v201 = v456;
LABEL_49:
  v203 = v97[9];
  v204 = v443;
  (v449)(v443, v201, v67);
  swift_storeEnumTagMultiPayload();
  *&v470 = v203;
  v455 = xmmword_1D72BAA80;
  v474 = xmmword_1D72BAA80;
  LOBYTE(v475) = 0;
  LOBYTE(v460) = 0;
  v205 = swift_allocObject();
  v450 = v432;
  *(v205 + 16) = v455;
  *(v205 + 32) = v460;
  v207 = v445;
  v206 = v446;
  *(v205 + 40) = v445;
  *(v205 + 48) = v206;
  MEMORY[0x1EEE9AC00](v205, v208);
  *&v454 = &v432[-6];
  v432[-4] = sub_1D5B4AA6C;
  v432[-3] = 0;
  v430 = sub_1D6708B34;
  v431 = v209;
  LOBYTE(v460) = 0;
  v210 = swift_allocObject();
  v211 = v207;
  v212 = v210;
  *(v210 + 16) = v455;
  *(v210 + 32) = v460;
  *(v210 + 40) = v211;
  *(v210 + 48) = v206;
  sub_1D5E1A83C(0);
  v214 = v213;
  v215 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v216 = v458;
  v444 = v214;
  v447 = v215;
  v217 = sub_1D72647CC();
  LOBYTE(v460) = 0;
  v218 = swift_allocObject();
  *(v218 + 16) = v217;
  *(v218 + 24) = v455;
  *(v218 + 40) = v460;
  v219 = (v216 + *(v457 + 9));
  v220 = v219[3];
  v221 = v219[4];
  v222 = __swift_project_boxed_opaque_existential_1(v219, v220);
  MEMORY[0x1EEE9AC00](v222, v223);
  MEMORY[0x1EEE9AC00](v224, v225);
  v226 = v454;
  v432[-4] = sub_1D615B4A4;
  v432[-3] = v226;
  v430 = sub_1D6708B34;
  v431 = v212;
  v227 = v204;
  v228 = v459;
  sub_1D5D2BC70(v204, sub_1D615B49C, v229, sub_1D615B4A4, &v432[-6], v220, v221);
  v230 = v228;
  if (v228)
  {
    sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);

    v231 = v458;
    *&v459 = v228;
LABEL_52:
    v94 = v231;
    return sub_1D5D2CFE8(v94, sub_1D66B0210);
  }

  v457 = v219;

  sub_1D66B0334();
  v231 = v458;
  sub_1D72647EC();
  sub_1D5D2CFE8(v443, type metadata accessor for FormatVersionRequirement);

  v232 = v453;
  v233 = v453[10];
  (v449)(v441, v456, v448);
  swift_storeEnumTagMultiPayload();
  v455 = xmmword_1D72BAA90;
  v474 = xmmword_1D72BAA90;
  LOBYTE(v475) = 0;
  LOBYTE(v470) = 0;
  v234 = swift_allocObject();
  v236 = v234;
  *(v234 + 16) = v455;
  *(v234 + 32) = v470;
  v237 = v445;
  v238 = v446;
  *(v234 + 40) = v445;
  *(v234 + 48) = v238;
  if (v233)
  {
    v450 = v432;
    *&v470 = v233;
    MEMORY[0x1EEE9AC00](v234, v235);
    *&v459 = 0;
    v432[-4] = sub_1D5B4AA6C;
    v432[-3] = 0;
    v430 = sub_1D6708B34;
    v431 = v236;
    LOBYTE(v460) = 0;
    v239 = swift_allocObject();
    *(v239 + 16) = v455;
    *(v239 + 32) = v460;
    *(v239 + 40) = v237;
    *(v239 + 48) = v238;
    swift_retain_n();
    *&v454 = v233;

    v240 = sub_1D72647CC();
    LOBYTE(v460) = 0;
    v241 = swift_allocObject();
    *(v241 + 16) = v240;
    *(v241 + 24) = v455;
    *(v241 + 40) = v460;
    v242 = v457[3];
    v243 = v457[4];
    v244 = __swift_project_boxed_opaque_existential_1(v457, v242);
    MEMORY[0x1EEE9AC00](v244, v245);
    MEMORY[0x1EEE9AC00](v246, v247);
    v432[-4] = sub_1D615B4A4;
    v432[-3] = &v432[-6];
    v430 = sub_1D6708B34;
    v431 = v239;
    v248 = v441;
    v249 = v459;
    v251 = sub_1D5D2F7A4(v441, sub_1D615B49C, v250, sub_1D615B4A4, &v432[-6], v242, v243);
    *&v459 = v249;
    if (v249)
    {

      v231 = v458;
LABEL_57:
      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      goto LABEL_52;
    }

    v253 = v251;

    if (v253)
    {
      type metadata accessor for FormatJsonConfig();
      sub_1D5B58B84(&unk_1EDF11310, type metadata accessor for FormatJsonConfig, &protocol conformance descriptor for FormatJsonConfig);
      v231 = v458;
      v254 = v459;
      sub_1D72647EC();
      v232 = v453;
      v252 = v456;
      v230 = v254;
      if (v254)
      {

        *&v459 = v254;
        goto LABEL_57;
      }
    }

    else
    {
      v230 = v459;

      v231 = v458;
      v232 = v453;
      v252 = v456;
    }
  }

  else
  {

    v252 = v456;
    v248 = v441;
  }

  sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v255 = v232[11];
  v256 = v440;
  v257 = v449;
  (v449)(v440, v252, v448);
  swift_storeEnumTagMultiPayload();
  *&v454 = v255;
  if (!v255)
  {
    *&v459 = v230;
    sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
    v270 = v445;
    goto LABEL_71;
  }

  LOBYTE(v474) = 0;
  v258 = v256;
  v259 = swift_allocObject();
  v459 = xmmword_1D72BAAA0;
  *(v259 + 16) = xmmword_1D72BAAA0;
  *(v259 + 32) = v474;
  *(v259 + 40) = v445;
  *(v259 + 48) = v446;

  v260 = sub_1D72647CC();
  LOBYTE(v474) = 0;
  v261 = swift_allocObject();
  *(v261 + 16) = v260;
  *(v261 + 24) = v459;
  *(v261 + 40) = v474;
  v262 = v457[3];
  v263 = v457[4];
  v264 = __swift_project_boxed_opaque_existential_1(v457, v262);
  *&v455 = v432;
  MEMORY[0x1EEE9AC00](v264, v265);
  MEMORY[0x1EEE9AC00](v266, v267);
  v432[-4] = sub_1D5B4AA6C;
  v432[-3] = 0;
  v430 = sub_1D6708B34;
  v431 = v259;
  v269 = sub_1D5D2F7A4(v258, sub_1D615B49C, v268, sub_1D615B4A4, &v432[-6], v262, v263);
  if (!v230)
  {
    v271 = v269;

    if (v271)
    {
      v474 = v459;
      LOBYTE(v475) = 0;
      *&v470 = v454;
      sub_1D72647EC();
      v232 = v453;
      v257 = v449;
      v270 = v445;
      v252 = v456;
      *&v459 = 0;
      sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v459 = 0;
      sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);
      v232 = v453;
      v257 = v449;
      v270 = v445;
      v252 = v456;
    }

LABEL_71:
    swift_beginAccess();
    v272 = *(v232 + 7);
    v474 = *(v232 + 6);
    v475 = v272;
    v273 = *(v232 + 9);
    v476 = *(v232 + 8);
    v477 = v273;
    v257(v439, v252, v448);
    swift_storeEnumTagMultiPayload();
    v455 = xmmword_1D72BAAB0;
    v468 = xmmword_1D72BAAB0;
    v469 = 0;
    LOBYTE(v470) = 0;
    v275 = swift_allocObject();
    *(v275 + 16) = v455;
    *(v275 + 32) = v470;
    *(v275 + 40) = v270;
    v276 = v446;
    *(v275 + 48) = v446;
    if (*(&v474 + 1))
    {
      *&v454 = v432;
      v470 = v474;
      v471 = v475;
      v472 = v476;
      v473 = v477;
      MEMORY[0x1EEE9AC00](v276, v274);
      v278 = v277;
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v275;
      LOBYTE(v460) = 0;
      v279 = swift_allocObject();
      v280 = v270;
      v281 = v279;
      *(v279 + 16) = v455;
      *(v279 + 32) = v460;
      *(v279 + 40) = v280;
      *(v279 + 48) = v278;

      v282 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v474, &v460, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);

      sub_1D5D355B8(&v474, &v460, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v282, sub_1D5C34D84);
      v283 = sub_1D72647CC();
      LOBYTE(v460) = 0;
      v284 = swift_allocObject();
      *(v284 + 16) = v283;
      *(v284 + 24) = v455;
      *(v284 + 40) = v460;
      v285 = v457[3];
      v286 = v457[4];
      v287 = __swift_project_boxed_opaque_existential_1(v457, v285);
      MEMORY[0x1EEE9AC00](v287, v288);
      MEMORY[0x1EEE9AC00](v289, v290);
      v432[-4] = sub_1D615B4A4;
      v432[-3] = &v432[-6];
      v430 = sub_1D6708B34;
      v431 = v281;
      v291 = v439;
      v292 = v459;
      v294 = sub_1D5D2F7A4(v439, sub_1D615B49C, v293, sub_1D615B4A4, &v432[-6], v285, v286);
      v295 = v291;
      *&v459 = v292;
      if (v292)
      {

        sub_1D66615F8(&v474, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v460 = v470;
        v461 = v471;
        v462 = v472;
        v463 = v473;
        sub_1D66B0388(&v460);
LABEL_74:
        v150 = v458;
        v152 = v295;
        goto LABEL_47;
      }

      v298 = v294;

      v297 = v438;
      if (v298)
      {
        sub_1D66B03DC();
        v299 = v459;
        sub_1D72647EC();
        *&v459 = v299;
        if (v299)
        {

          sub_1D66615F8(&v474, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v460 = v470;
          v461 = v471;
          v462 = v472;
          v463 = v473;
          sub_1D66B0388(&v460);
          goto LABEL_74;
        }

        sub_1D66615F8(&v474, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v460 = v470;
        v461 = v471;
        v462 = v472;
        v463 = v473;
        sub_1D66B0388(&v460);
        v232 = v453;
        v270 = v445;
        v252 = v456;
        v296 = v458;
      }

      else
      {

        sub_1D66615F8(&v474, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v460 = v470;
        v461 = v471;
        v462 = v472;
        v463 = v473;
        sub_1D66B0388(&v460);
        v296 = v458;
        v232 = v453;
        v270 = v445;
        v252 = v456;
      }
    }

    else
    {

      v296 = v458;
      v297 = v438;
    }

    sub_1D5D2CFE8(v439, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v300 = v232[20];
    (v449)(v297, v252, v448);
    swift_storeEnumTagMultiPayload();
    if (v300 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v470) = 0;
      v301 = swift_allocObject();
      v302 = v270;
      v303 = v301;
      v455 = xmmword_1D72BAAC0;
      *(v301 + 16) = xmmword_1D72BAAC0;
      *(v301 + 32) = v470;
      *(v301 + 40) = v302;
      *(v301 + 48) = v446;

      sub_1D5EB1500(v300);
      v304 = v296;
      v305 = sub_1D72647CC();
      LOBYTE(v470) = 0;
      v306 = swift_allocObject();
      *(v306 + 16) = v305;
      *(v306 + 24) = v455;
      *(v306 + 40) = v470;
      v307 = v457[3];
      v308 = v457[4];
      v309 = __swift_project_boxed_opaque_existential_1(v457, v307);
      *&v454 = v432;
      MEMORY[0x1EEE9AC00](v309, v310);
      MEMORY[0x1EEE9AC00](v311, v312);
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v303;
      v313 = v459;
      v315 = sub_1D5D2F7A4(v297, sub_1D615B49C, v314, sub_1D615B4A4, &v432[-6], v307, v308);
      *&v459 = v313;
      if (v313)
      {

        sub_1D5EB15C4(v300);
        sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
        v94 = v304;
        return sub_1D5D2CFE8(v94, sub_1D66B0210);
      }

      v316 = v315;

      if (v316)
      {
        v470 = v455;
        LOBYTE(v471) = 0;
        *&v468 = v300;
        sub_1D5DF6A60();
        v317 = v459;
        sub_1D72647EC();
        *&v459 = v317;
        if (v317)
        {
          sub_1D5EB15C4(v468);
LABEL_94:
          v147 = v297;
          goto LABEL_34;
        }

        v318 = v468;
      }

      else
      {
        v318 = v300;
      }

      sub_1D5EB15C4(v318);
      sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
      v232 = v453;
      v252 = v456;
    }

    swift_beginAccess();
    v319 = v232[21];
    v297 = v437;
    (v449)(v437, v252, v448);
    swift_storeEnumTagMultiPayload();
    if (*(v319 + 16))
    {
      LOBYTE(v470) = 0;
      v320 = swift_allocObject();
      v455 = xmmword_1D72BAAD0;
      *(v320 + 16) = xmmword_1D72BAAD0;
      *(v320 + 32) = v470;
      *(v320 + 40) = v445;
      *(v320 + 48) = v446;

      v321 = sub_1D72647CC();
      LOBYTE(v470) = 0;
      v322 = swift_allocObject();
      *(v322 + 16) = v321;
      *(v322 + 24) = v455;
      *(v322 + 40) = v470;
      v323 = v457[3];
      v324 = v457[4];
      v325 = __swift_project_boxed_opaque_existential_1(v457, v323);
      MEMORY[0x1EEE9AC00](v325, v326);
      MEMORY[0x1EEE9AC00](v327, v328);
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v320;
      v329 = v459;
      v331 = sub_1D5D2F7A4(v297, sub_1D615B49C, v330, sub_1D615B4A4, &v432[-6], v323, v324);
      *&v459 = v329;
      if (v329)
      {

        goto LABEL_94;
      }

      v332 = v331;

      if (v332)
      {
        v333 = v459;
        sub_1D5E07858(v319, v458, 0xA, 0, 0);
        *&v459 = v333;
        if (v333)
        {

          v297 = v437;
          goto LABEL_94;
        }
      }

      v232 = v453;
      v252 = v456;
    }

    sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);
    v334 = v232[22];
    v335 = *(v232 + 184);
    v336 = v436;
    (v449)(v436, v252, v448);
    swift_storeEnumTagMultiPayload();
    v455 = xmmword_1D72BAAE0;
    v470 = xmmword_1D72BAAE0;
    LOBYTE(v471) = 0;
    LOBYTE(v466) = 0;
    v337 = swift_allocObject();
    v339 = v337;
    *(v337 + 16) = v455;
    *(v337 + 32) = v466;
    v341 = v445;
    v340 = v446;
    *(v337 + 40) = v445;
    *(v337 + 48) = v340;
    if (v335 <= 0xFD)
    {
      *&v454 = v432;
      v466 = v334;
      v467 = v335;
      MEMORY[0x1EEE9AC00](v337, v338);
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v339;
      LOBYTE(v464) = 0;
      v342 = swift_allocObject();
      *(v342 + 16) = v455;
      *(v342 + 32) = v464;
      *(v342 + 40) = v341;
      *(v342 + 48) = v446;
      swift_retain_n();
      v343 = sub_1D72647CC();
      LOBYTE(v464) = 0;
      v344 = swift_allocObject();
      *(v344 + 16) = v343;
      *(v344 + 24) = v455;
      *(v344 + 40) = v464;
      v345 = v457[3];
      v346 = v457[4];
      v347 = __swift_project_boxed_opaque_existential_1(v457, v345);
      MEMORY[0x1EEE9AC00](v347, v348);
      MEMORY[0x1EEE9AC00](v349, v350);
      v432[-4] = sub_1D615B4A4;
      v432[-3] = &v432[-6];
      v430 = sub_1D6708B34;
      v431 = v342;
      v351 = v459;
      v353 = sub_1D5D2F7A4(v336, sub_1D615B49C, v352, sub_1D615B4A4, &v432[-6], v345, v346);
      *&v459 = v351;
      if (v351)
      {
        sub_1D5D2CFE8(v336, type metadata accessor for FormatVersionRequirement);

        goto LABEL_35;
      }

      v354 = v353;

      if (v354)
      {
        sub_1D5F8F434();
        v355 = v459;
        sub_1D72647EC();
        *&v459 = v355;
        if (v355)
        {
          v356 = v436;
          goto LABEL_131;
        }
      }

      v232 = v453;
    }

    else
    {
    }

    sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v357 = v232[24];
    v358 = v232[25];
    v359 = v435;
    (v449)(v435, v456, v448);
    swift_storeEnumTagMultiPayload();
    v455 = xmmword_1D72BAAF0;
    v470 = xmmword_1D72BAAF0;
    LOBYTE(v471) = 0;
    LOBYTE(v464) = 0;
    v360 = swift_allocObject();
    v362 = v360;
    *(v360 + 16) = v455;
    *(v360 + 32) = v464;
    v364 = v445;
    v363 = v446;
    *(v360 + 40) = v445;
    *(v360 + 48) = v363;
    if (v358)
    {
      *&v454 = v432;
      *&v464 = v357;
      *(&v464 + 1) = v358;
      MEMORY[0x1EEE9AC00](v360, v361);
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v362;
      v478 = 0;
      v365 = swift_allocObject();
      *(v365 + 16) = v455;
      *(v365 + 32) = v478;
      *(v365 + 40) = v364;
      *(v365 + 48) = v446;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v366 = sub_1D72647CC();
      v478 = 0;
      v367 = swift_allocObject();
      *(v367 + 16) = v366;
      *(v367 + 24) = v455;
      *(v367 + 40) = v478;
      v368 = v457[3];
      v369 = v457[4];
      v370 = __swift_project_boxed_opaque_existential_1(v457, v368);
      MEMORY[0x1EEE9AC00](v370, v371);
      MEMORY[0x1EEE9AC00](v372, v373);
      v432[-4] = sub_1D615B4A4;
      v432[-3] = &v432[-6];
      v430 = sub_1D6708B34;
      v431 = v365;
      v374 = v459;
      v376 = sub_1D5D2F7A4(v435, sub_1D615B49C, v375, sub_1D615B4A4, &v432[-6], v368, v369);
      *&v459 = v374;
      if (v374)
      {
        swift_bridgeObjectRelease_n();

LABEL_110:
        v147 = v435;
        goto LABEL_34;
      }

      v378 = v376;

      if (v378)
      {
        v379 = v459;
        sub_1D72647EC();
        *&v459 = v379;
        if (v379)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_110;
        }
      }

      swift_bridgeObjectRelease_n();
      v232 = v453;
      v377 = v434;
      v359 = v435;
    }

    else
    {

      v377 = v434;
    }

    sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
    v380 = v232[26];
    v381 = v232[27];
    (v449)(v377, v456, v448);
    swift_storeEnumTagMultiPayload();
    v456 = xmmword_1D7282A80;
    v470 = xmmword_1D7282A80;
    LOBYTE(v471) = 0;
    LOBYTE(v464) = 0;
    v382 = swift_allocObject();
    v384 = v382;
    *(v382 + 16) = v456;
    *(v382 + 32) = v464;
    v386 = v445;
    v385 = v446;
    *(v382 + 40) = v445;
    *(v382 + 48) = v385;
    if (v381)
    {
      *&v455 = v432;
      *&v464 = v380;
      *(&v464 + 1) = v381;
      MEMORY[0x1EEE9AC00](v382, v383);
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v384;
      v478 = 0;
      v387 = swift_allocObject();
      *(v387 + 16) = v456;
      *(v387 + 32) = v478;
      *(v387 + 40) = v386;
      *(v387 + 48) = v446;
      swift_retain_n();

      v388 = sub_1D72647CC();
      v478 = 0;
      v389 = swift_allocObject();
      *(v389 + 16) = v388;
      *(v389 + 24) = v456;
      *(v389 + 40) = v478;
      v390 = v457[3];
      v391 = v457[4];
      v392 = __swift_project_boxed_opaque_existential_1(v457, v390);
      MEMORY[0x1EEE9AC00](v392, v393);
      MEMORY[0x1EEE9AC00](v394, v395);
      v432[-4] = sub_1D615B4A4;
      v432[-3] = &v432[-6];
      v430 = sub_1D6708B34;
      v431 = v387;
      v396 = v459;
      v398 = sub_1D5D2F7A4(v377, sub_1D615B49C, v397, sub_1D615B4A4, &v432[-6], v390, v391);
      *&v459 = v396;
      if (v396)
      {

LABEL_119:
        v147 = v434;
        goto LABEL_34;
      }

      v399 = v398;

      if (v399)
      {
        v400 = v459;
        sub_1D72647EC();
        *&v459 = v400;
        if (v400)
        {

          goto LABEL_119;
        }
      }

      sub_1D5D2CFE8(v434, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);
    }

    v402 = v453[28];
    v401 = v453[29];
    v404 = v453[30];
    v403 = v453[31];
    v405 = v453[32];
    *&v455 = v453[33];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v406 = v448;
    v407 = __swift_project_value_buffer(v448, qword_1EDFFCE38);
    (v449)(v433, v407, v406);
    swift_storeEnumTagMultiPayload();
    v456 = xmmword_1D72BAB00;
    v464 = xmmword_1D72BAB00;
    v465 = 0;
    LOBYTE(v470) = 0;
    v408 = swift_allocObject();
    v410 = v408;
    *(v408 + 16) = v456;
    *(v408 + 32) = v470;
    v412 = v445;
    v411 = v446;
    *(v408 + 40) = v445;
    *(v408 + 48) = v411;
    if (v402)
    {
      *&v454 = v432;
      *&v470 = v402;
      *(&v470 + 1) = v401;
      *&v471 = v404;
      *(&v471 + 1) = v403;
      *&v472 = v405;
      *(&v472 + 1) = v455;
      MEMORY[0x1EEE9AC00](v408, v409);
      v453 = &v432[-6];
      v432[-4] = sub_1D5B4AA6C;
      v432[-3] = 0;
      v430 = sub_1D6708B34;
      v431 = v410;
      v478 = 0;
      v413 = v402;
      v414 = swift_allocObject();
      *(v414 + 16) = v456;
      *(v414 + 32) = v478;
      *(v414 + 40) = v412;
      *(v414 + 48) = v411;
      swift_retain_n();
      sub_1D5EB1D80(v413, v401, v404, v403, v405, v455);
      v415 = sub_1D72647CC();
      v478 = 0;
      v416 = swift_allocObject();
      *(v416 + 16) = v415;
      *(v416 + 24) = v456;
      *(v416 + 40) = v478;
      v417 = v457[3];
      v418 = v457[4];
      v419 = __swift_project_boxed_opaque_existential_1(v457, v417);
      MEMORY[0x1EEE9AC00](v419, v420);
      MEMORY[0x1EEE9AC00](v421, v422);
      v423 = v453;
      v432[-4] = sub_1D615B4A4;
      v432[-3] = v423;
      v430 = sub_1D6708B34;
      v431 = v414;
      v424 = v459;
      v426 = sub_1D5D2F7A4(v433, sub_1D615B49C, v425, sub_1D615B4A4, &v432[-6], v417, v418);
      *&v459 = v424;
      if (v424)
      {
      }

      else
      {
        v427 = v426;

        if (v427)
        {
          sub_1D6659A24();
          v428 = v459;
          sub_1D72647EC();
          *&v459 = v428;
        }
      }

      v429 = v472;

      sub_1D5CBF568(v429);

      v147 = v433;
      goto LABEL_34;
    }

    v356 = v433;
LABEL_131:
    sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);

    goto LABEL_35;
  }

  sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);

  result = sub_1D5D2CFE8(v231, sub_1D66B0210);
  *&v459 = v230;
  return result;
}

unint64_t sub_1D655D1F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x657A69736572;
      break;
    case 4:
      result = 0x656D7473756A6461;
      break;
    case 5:
      result = 0x746E65746E6F63;
      break;
    case 6:
      result = 0x6769666E6F63;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x656C797473;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 2019912806;
      break;
    case 15:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D655D38C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B259C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D655D3C4(uint64_t a1)
{
  v2 = sub_1D5E1A950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D655D400(uint64_t a1)
{
  v2 = sub_1D5E1A950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleEmbedNodeBinding.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleEmbedNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v11, v9, v12, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE98);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641A6DC(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatPuzzleEmbedNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5116B18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B0484();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26)
    {
      sub_1D5C30060(0, &qword_1EC8870F0, sub_1D66B04D8, &type metadata for FormatPuzzleEmbedNodeContent, type metadata accessor for FormatSelectorValue);
      v26 = xmmword_1D7279980;
      sub_1D66B052C();
      sub_1D726431C();
      v22 = v28;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D66B0600();
      sub_1D726431C();
      v22 = v28;
      (*(v7 + 8))(v13, v6);
      v25 = swift_allocEmptyBox();
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleEmbedNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleEmbedNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v17, v14, v18, &off_1F51F6B98);
  if (v15 < 0)
  {
    v23 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v25 = qword_1EDF31F58[0];

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCE98);
    (*(*(v26 - 8) + 16))(v6, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638BE88(1, v23, v24, v6);

    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638BCFC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D655DE84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7463656C6573;
  }

  else
  {
    v3 = 0x676E69646E6962;
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
    v5 = 0x726F7463656C6573;
  }

  else
  {
    v5 = 0x676E69646E6962;
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

uint64_t sub_1D655DF2C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D655DFB0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatPuzzleEmbedNodeStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  sub_1D5C2E60C(0, &qword_1EDF17EB8, sub_1D66B0654, sub_1D66B06A8, &type metadata for FormatPuzzleEmbedNodeStyle.Selector);
  v6 = v5;
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - v8;
  sub_1D66B06FC(0);
  v53 = v10;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B0790(0);
  sub_1D5B58B84(&qword_1EDF0C480, sub_1D66B0790, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v50 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v53;
  if (v15)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v19 - 2);
      v23 = *(v19 - 1);

      v25 = sub_1D6621664();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v58 + 8))(v13, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  v20 = sub_1D5C31D18(v13, 0, 0, 0, sub_1D66B06FC);
  v49 = v21;
  v56 = xmmword_1D728CF30;
  v57 = 0;
  v22 = sub_1D72642BC();
  v28 = v27;
  v29 = v22;
  v54 = xmmword_1D7297410;
  v55 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v46 = v29;
  v47 = v56;
  v48 = v57;
  v56 = xmmword_1D72BAA60;
  v57 = 0;
  v32 = sub_1D726423C();
  v43 = v20;
  v45 = a1;
  v44 = v32;
  v42 = xmmword_1D72BAA70;
  v56 = xmmword_1D72BAA70;
  v57 = 0;
  v33 = sub_1D726434C();
  v34 = v58;
  if (v33)
  {
    v54 = v42;
    v55 = 0;
    sub_1D66B0910();
    v35 = v50;
    sub_1D726431C();
    v36 = v52;
    v37 = sub_1D725A74C();
    (*(v51 + 8))(v35, v6);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v52;
  }

  v38 = v48;
  v39 = *(&v47 + 1);
  (*(v34 + 8))(v13, v16);
  v40 = v49;
  *v36 = v43;
  *(v36 + 8) = v40;
  v41 = v47;
  *(v36 + 16) = v46;
  *(v36 + 24) = v28;
  *(v36 + 32) = v41;
  *(v36 + 40) = v39;
  *(v36 + 48) = v38;
  *(v36 + 49) = v44;
  *(v36 + 50) = v54;
  *(v36 + 54) = WORD2(v54);
  *(v36 + 56) = v37;
  v30 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatPuzzleEmbedNodeStyle.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v157 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v160 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v164 = &v157 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v165 = &v157 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  *&v173 = &v157 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v157 - v21;
  sub_1D66B09A0(0);
  v176 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 24);
  *&v174 = *(v1 + 16);
  v172 = v29;
  v30 = *(v1 + 40);
  v162 = *(v1 + 32);
  v161 = v30;
  v184 = *(v1 + 48);
  v163 = *(v1 + 49);
  v159 = *(v1 + 56);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D66B0790(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF0C480, sub_1D66B0790, &unk_1D7321584);
  v177 = v26;
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeStyle, v34, v36, v31, &type metadata for FormatPuzzleEmbedNodeStyle, v34, &type metadata for FormatVersions.DawnburstC, v32, v26, v35, &off_1F51F6B98);
  v37 = qword_1EDF31F58[0];

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v22, v39, v38);
  v43 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v167 = v27;
  sub_1D725892C();
  v44 = sub_1D725895C();
  v45 = (*(*(v44 - 8) + 48))(v6, 1, v44);
  v166 = v38;
  v170 = v43;
  v171 = v39;
  v168 = v42;
  v169 = v41;
  if (v45 != 1)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v67 = v176;
    goto LABEL_8;
  }

  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v46 = v176;
  v47 = v177;
  v48 = &v177[*(v176 + 44)];
  v49 = *v48;
  v50 = *(v48 + 1);
  LOBYTE(v181) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v181;
  *(v51 + 40) = v49;
  *(v51 + 48) = v50;
  sub_1D66B0A34(0);
  v53 = v52;
  sub_1D5B58B84(&qword_1EDF02F48, sub_1D66B0A34, MEMORY[0x1E69E6F60]);

  v158 = v53;
  v54 = sub_1D72647CC();
  LOBYTE(v181) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v181;
  v56 = (v47 + *(v46 + 36));
  v57 = v56[3];
  v58 = v56[4];
  v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v157 - 4) = sub_1D5B4AA6C;
  *(&v157 - 3) = 0;
  v155 = sub_1D66B0AC8;
  v156 = v51;
  v63 = v175;
  v65 = sub_1D5D2F7A4(v22, sub_1D615B49C, v64, sub_1D615B4A4, (&v157 - 6), v57, v58);
  if (v63)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    v66 = v47;
    return sub_1D5D2CFE8(v66, sub_1D66B09A0);
  }

  v93 = v65;

  if ((v93 & 1) == 0)
  {
    *&v175 = 0;
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    v38 = v166;
    v39 = v171;
    v41 = v169;
    goto LABEL_7;
  }

  v181 = 0uLL;
  v182 = 0;
  v178 = v167;
  v179 = v28;
  sub_1D72647EC();

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  v39 = v171;
  v41 = v169;
  v67 = v176;
  *&v175 = 0;
  v38 = v166;
LABEL_8:
  v41(v173, v39, v38);
  swift_storeEnumTagMultiPayload();
  v178 = v174;
  v179 = v172;
  v174 = xmmword_1D728CF30;
  v181 = xmmword_1D728CF30;
  v182 = 0;
  v68 = v177;
  v69 = &v177[*(v67 + 44)];
  v71 = *v69;
  v70 = *(v69 + 1);
  v183 = 0;
  v72 = swift_allocObject();
  v172 = &v157;
  *(v72 + 16) = v174;
  *(v72 + 32) = v183;
  *(v72 + 40) = v71;
  *(v72 + 48) = v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v167 = &v157 - 6;
  *(&v157 - 4) = sub_1D5B4AA6C;
  *(&v157 - 3) = 0;
  v155 = sub_1D6708B38;
  v156 = v74;
  v183 = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v174;
  *(v75 + 32) = v183;
  v157 = v71;
  *(v75 + 40) = v71;
  *(v75 + 48) = v70;
  sub_1D66B0A34(0);
  v77 = v76;
  v78 = sub_1D5B58B84(&qword_1EDF02F48, sub_1D66B0A34, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v158 = v77;
  v79 = sub_1D72647CC();
  v183 = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v174;
  *(v80 + 40) = v183;
  v81 = &v68[*(v176 + 36)];
  v82 = *(v81 + 3);
  v83 = *(v81 + 4);
  v84 = __swift_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v88 = v167;
  *(&v157 - 4) = sub_1D615B4A4;
  *(&v157 - 3) = v88;
  v89 = v173;
  v155 = sub_1D6708B38;
  v156 = v75;
  v90 = v175;
  sub_1D5D2BC70(v173, sub_1D615B49C, v91, sub_1D615B4A4, (&v157 - 6), v82, v83);
  if (v90)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

LABEL_11:
    v66 = v177;
    return sub_1D5D2CFE8(v66, sub_1D66B09A0);
  }

  *&v174 = v81;
  v176 = v70;
  v92 = v171;

  sub_1D72647EC();
  v172 = v78;
  *&v175 = 0;
  sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);

  v94 = v165;
  v95 = v92;
  v96 = v166;
  v97 = v169;
  v169(v165, v92, v166);
  swift_storeEnumTagMultiPayload();
  v173 = xmmword_1D7297410;
  v181 = xmmword_1D7297410;
  v182 = 0;
  LOBYTE(v178) = 0;
  v98 = swift_allocObject();
  v100 = v98;
  *(v98 + 16) = v173;
  *(v98 + 32) = v178;
  v101 = v157;
  v102 = v176;
  *(v98 + 40) = v157;
  *(v98 + 48) = v102;
  v103 = v184;
  if (v184 > 0xFD)
  {

    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

    v104 = v164;
LABEL_17:
    v97(v104, v95, v96);
    goto LABEL_18;
  }

  v167 = &v157;
  v123 = v162;
  v124 = v161;
  v178 = v162;
  v179 = v161;
  v180 = v184;
  MEMORY[0x1EEE9AC00](v98, v99);
  *(&v157 - 4) = sub_1D5B4AA6C;
  *(&v157 - 3) = 0;
  v155 = sub_1D6708B38;
  v156 = v100;
  v183 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v173;
  *(v125 + 32) = v183;
  *(v125 + 40) = v101;
  *(v125 + 48) = v102;
  swift_retain_n();
  sub_1D5ED34B0(v123, v124, v103);
  v126 = sub_1D72647CC();
  v183 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v173;
  *(v127 + 40) = v183;
  v128 = *(v174 + 24);
  v129 = *(v174 + 32);
  v130 = __swift_project_boxed_opaque_existential_1(v174, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v157 - 4) = sub_1D615B4A4;
  *(&v157 - 3) = (&v157 - 6);
  v155 = sub_1D6708B38;
  v156 = v125;
  v134 = v175;
  v136 = sub_1D5D2F7A4(v94, sub_1D615B49C, v135, sub_1D615B4A4, (&v157 - 6), v128, v129);
  *&v175 = v134;
  v104 = v164;
  if (v134)
  {

    goto LABEL_25;
  }

  v149 = v136;

  if (v149)
  {
    sub_1D6661258();
    v150 = v175;
    sub_1D72647EC();
    v97 = v169;
    v101 = v157;
    v95 = v171;
    if (!v150)
    {
      *&v175 = 0;

      sub_1D5ED34A0(v178, v179, v180);
      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
      v96 = v166;
      v102 = v176;
      goto LABEL_17;
    }

LABEL_25:
    sub_1D5ED34A0(v178, v179, v180);
    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  sub_1D5ED34A0(v178, v179, v180);
  sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
  v96 = v166;
  v97 = v169;
  v102 = v176;
  v101 = v157;
  v95 = v171;
  v169(v104, v171, v166);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  v173 = xmmword_1D72BAA60;
  v181 = xmmword_1D72BAA60;
  v182 = 0;
  LOBYTE(v178) = 0;
  v105 = swift_allocObject();
  v107 = v105;
  *(v105 + 16) = v173;
  *(v105 + 32) = v178;
  *(v105 + 40) = v101;
  *(v105 + 48) = v102;
  if (v163 == 2)
  {

    v108 = v175;
    v109 = v160;
    v110 = v159;
  }

  else
  {
    LOBYTE(v178) = v163 & 1;
    MEMORY[0x1EEE9AC00](v105, v106);
    *(&v157 - 4) = sub_1D5B4AA6C;
    *(&v157 - 3) = 0;
    v155 = sub_1D6708B38;
    v156 = v107;
    v183 = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v173;
    *(v137 + 32) = v183;
    *(v137 + 40) = v101;
    *(v137 + 48) = v102;
    swift_retain_n();
    v138 = sub_1D72647CC();
    v183 = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = v173;
    *(v139 + 40) = v183;
    v140 = *(v174 + 24);
    v141 = *(v174 + 32);
    v142 = __swift_project_boxed_opaque_existential_1(v174, v140);
    MEMORY[0x1EEE9AC00](v142, v143);
    MEMORY[0x1EEE9AC00](v144, v145);
    *(&v157 - 4) = sub_1D615B4A4;
    *(&v157 - 3) = (&v157 - 6);
    v155 = sub_1D6708B38;
    v156 = v137;
    v146 = v175;
    v148 = sub_1D5D2F7A4(v104, sub_1D615B49C, v147, sub_1D615B4A4, (&v157 - 6), v140, v141);
    if (v146)
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

      goto LABEL_11;
    }

    v151 = v148;

    if (v151)
    {
      sub_1D72647EC();
      v108 = 0;
      v109 = v160;
      v110 = v159;
      v95 = v171;
      v96 = v166;
      v97 = v169;
    }

    else
    {
      v108 = 0;
      v109 = v160;
      v110 = v159;
      v96 = v166;
      v97 = v169;
      v95 = v171;
    }
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

  v97(v109, v95, v96);
  swift_storeEnumTagMultiPayload();
  if (!*(v110 + 16))
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  LOBYTE(v181) = 0;
  v111 = swift_allocObject();
  v175 = xmmword_1D72BAA70;
  *(v111 + 16) = xmmword_1D72BAA70;
  *(v111 + 32) = v181;
  *(v111 + 40) = v157;
  *(v111 + 48) = v176;

  v112 = v177;
  v113 = sub_1D72647CC();
  LOBYTE(v181) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v175;
  *(v114 + 40) = v181;
  v115 = *(v174 + 24);
  v116 = *(v174 + 32);
  v117 = __swift_project_boxed_opaque_existential_1(v174, v115);
  MEMORY[0x1EEE9AC00](v117, v118);
  MEMORY[0x1EEE9AC00](v119, v120);
  *(&v157 - 4) = sub_1D5B4AA6C;
  *(&v157 - 3) = 0;
  v155 = sub_1D6708B38;
  v156 = v111;
  v122 = sub_1D5D2F7A4(v109, sub_1D615B49C, v121, sub_1D615B4A4, (&v157 - 6), v115, v116);
  if (v108)
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    v66 = v112;
  }

  else
  {
    v152 = v122;

    if (v152)
    {
      v181 = v175;
      v182 = 0;
      v178 = v110;
      sub_1D5C34D84(0, &qword_1EC887108, &type metadata for FormatPuzzleEmbedNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D66B0B44();
      v153 = v177;
      sub_1D72647EC();

      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
      v66 = v153;
    }

    else
    {
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

      v66 = v177;
    }
  }

  return sub_1D5D2CFE8(v66, sub_1D66B09A0);
}

unint64_t sub_1D655FCA8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x615272656E726F63;
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

uint64_t sub_1D655FD6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B2A9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D655FDA4(uint64_t a1)
{
  v2 = sub_1D66B0868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D655FDE0(uint64_t a1)
{
  v2 = sub_1D66B0868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66B0BE0(0);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B0C74(0);
  sub_1D5B58B84(&qword_1EC887138, sub_1D66B0C74, &unk_1D7321584);
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

  v13 = v38;
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

      v18 = v7;
      v19 = v13;
      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6621840();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v10, v18);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v17 = v34;
  v34 = xmmword_1D728CF30;
  v35 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v31 = v17;
  v24 = v7;
  v25 = v13;
  v32 = *(&v36 + 1);
  v26 = v36;
  v33 = v37;
  v36 = xmmword_1D7297410;
  v37 = 0;
  v28 = sub_1D726423C();
  (*(v25 + 8))(v10, v24);
  v29 = v32;
  *a2 = v31;
  *(a2 + 8) = *(&v17 + 1);
  *(a2 + 16) = v26;
  *(a2 + 24) = v29;
  *(a2 + 32) = v33;
  *(a2 + 33) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v102 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v109 = v97 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v97 - v11;
  sub_1D66B0DF4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 24);
  v100 = *(v1 + 16);
  v99 = v20;
  v121 = *(v1 + 32);
  v101 = *(v1 + 33);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D66B0C74(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EC887138, sub_1D66B0C74, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeStyle.Selector, v24, v26, v21, &type metadata for FormatPuzzleEmbedNodeStyle.Selector, v24, &type metadata for FormatVersions.DawnburstC, v22, v17, v25, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCE98);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v107 = v28;
  v103 = v27;
  v105 = v29 + 16;
  v106 = v30;
  (v30)(v12);
  v104 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v115 = v18;
  v116 = v19;
  v118 = 0uLL;
  v119 = 0;
  v31 = &v17[*(v14 + 44)];
  v32 = *v31;
  v33 = *(v31 + 1);
  v120 = 0;
  v34 = swift_allocObject();
  *&v112 = v97;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v120;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v97[-4] = sub_1D5B4AA6C;
  v97[-3] = 0;
  v95 = sub_1D6708B3C;
  v96 = v36;
  v120 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v120;
  v108 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66B0E88(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC887150, sub_1D66B0E88, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v110 = v40;
  v111 = v39;
  v41 = sub_1D72647CC();
  v120 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v120;
  v43 = *(v14 + 36);
  v113 = v17;
  v44 = &v17[v43];
  v46 = *(v44 + 3);
  v45 = *(v44 + 4);
  v47 = __swift_project_boxed_opaque_existential_1(v44, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v97[-4] = sub_1D615B4A4;
  v97[-3] = &v97[-6];
  v95 = sub_1D6708B3C;
  v96 = v37;
  v51 = v114;
  sub_1D5D2BC70(v12, sub_1D615B49C, v52, sub_1D615B4A4, &v97[-6], v46, v45);
  if (v51)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v53 = v113;
  }

  else
  {
    v98 = v44;
    *&v114 = v33;

    sub_1D5D3E60C();
    v53 = v113;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v55 = v109;
    v56 = v103;
    v106(v109, v107, v103);
    swift_storeEnumTagMultiPayload();
    v112 = xmmword_1D728CF30;
    v118 = xmmword_1D728CF30;
    v119 = 0;
    LOBYTE(v115) = 0;
    v57 = swift_allocObject();
    v59 = v57;
    *(v57 + 16) = v112;
    *(v57 + 32) = v115;
    v60 = v108;
    v61 = v114;
    *(v57 + 40) = v108;
    *(v57 + 48) = v61;
    v62 = v121;
    if (v121 <= 0xFD)
    {
      v97[1] = v97;
      v68 = v100;
      v69 = v99;
      v115 = v100;
      v116 = v99;
      v117 = v121;
      MEMORY[0x1EEE9AC00](v57, v58);
      v97[0] = &v97[-6];
      v97[-4] = sub_1D5B4AA6C;
      v97[-3] = 0;
      v95 = sub_1D6708B3C;
      v96 = v59;
      v120 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v112;
      *(v70 + 32) = v120;
      *(v70 + 40) = v60;
      *(v70 + 48) = v61;
      swift_retain_n();
      sub_1D5ED34B0(v68, v69, v62);
      v71 = sub_1D72647CC();
      v120 = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      *(v72 + 24) = v112;
      *(v72 + 40) = v120;
      v73 = *(v98 + 3);
      v74 = *(v98 + 4);
      v75 = __swift_project_boxed_opaque_existential_1(v98, v73);
      MEMORY[0x1EEE9AC00](v75, v76);
      MEMORY[0x1EEE9AC00](v77, v78);
      v79 = v97[0];
      v97[-4] = sub_1D615B4A4;
      v97[-3] = v79;
      v95 = sub_1D6708B3C;
      v96 = v70;
      v81 = sub_1D5D2F7A4(v109, sub_1D615B49C, v80, sub_1D615B4A4, &v97[-6], v73, v74);
      v93 = v81;

      v63 = v102;
      if (v93)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v56 = v103;

        sub_1D5ED34A0(v115, v116, v117);
        sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
        v61 = v114;
      }

      else
      {

        sub_1D5ED34A0(v115, v116, v117);
        sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
        v61 = v114;
        v56 = v103;
      }
    }

    else
    {

      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

      v63 = v102;
    }

    v106(v63, v107, v56);
    swift_storeEnumTagMultiPayload();
    v114 = xmmword_1D7297410;
    v118 = xmmword_1D7297410;
    v119 = 0;
    LOBYTE(v115) = 0;
    v64 = swift_allocObject();
    v66 = v64;
    *(v64 + 16) = v114;
    *(v64 + 32) = v115;
    v67 = v108;
    *(v64 + 40) = v108;
    *(v64 + 48) = v61;
    if (v101 == 2)
    {
    }

    else
    {
      *&v112 = v97;
      LOBYTE(v115) = v101 & 1;
      MEMORY[0x1EEE9AC00](v64, v65);
      v97[-4] = sub_1D5B4AA6C;
      v97[-3] = 0;
      v95 = sub_1D6708B3C;
      v96 = v66;
      v120 = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v114;
      *(v82 + 32) = v120;
      *(v82 + 40) = v67;
      *(v82 + 48) = v61;
      swift_retain_n();
      v83 = sub_1D72647CC();
      v120 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v114;
      *(v84 + 40) = v120;
      v85 = *(v98 + 3);
      v86 = *(v98 + 4);
      v87 = __swift_project_boxed_opaque_existential_1(v98, v85);
      MEMORY[0x1EEE9AC00](v87, v88);
      MEMORY[0x1EEE9AC00](v89, v90);
      v97[-4] = sub_1D615B4A4;
      v97[-3] = &v97[-6];
      v63 = v102;
      v95 = sub_1D66B0F1C;
      v96 = v82;
      v92 = sub_1D5D2F7A4(v102, sub_1D615B49C, v91, sub_1D615B4A4, &v97[-6], v85, v86);
      v94 = v92;

      if (v94)
      {
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v53, sub_1D66B0DF4);
}

unint64_t sub_1D6560EB4()
{
  v1 = 0x726F7463656C6573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x615272656E726F63;
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

uint64_t sub_1D6560F34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B2CB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6560F6C(uint64_t a1)
{
  v2 = sub_1D66B0D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6560FA8(uint64_t a1)
{
  v2 = sub_1D66B0D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleStatisticBinding.Float.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Float, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatPuzzleStatisticBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v34, v31, v35, &off_1F51F6BD8);
  if (v32 > 2)
  {
    if (v32 > 4)
    {
      if (v32 == 5)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCE80);
        v27 = v56;
        (*(*(v43 - 8) + 16))(v56, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 5;
      }

      else
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCE80);
        v27 = v57;
        (*(*(v51 - 8) + 16))(v57, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 6;
      }
    }

    else if (v32 == 3)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE80);
      v27 = v54;
      (*(*(v37 - 8) + 16))(v54, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 3;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCE80);
      v27 = v55;
      (*(*(v49 - 8) + 16))(v55, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 4;
    }

LABEL_28:
    sub_1D641A2E0(v39, v27);
    v42 = v27;
    goto LABEL_29;
  }

  if (!v32)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCE80);
    (*(*(v45 - 8) + 16))(v27, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    goto LABEL_28;
  }

  if (v32 == 1)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCE80);
    (*(*(v40 - 8) + 16))(v23, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A2E0(1, v23);
    v42 = v23;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCE80);
    (*(*(v47 - 8) + 16))(v19, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A2E0(2, v19);
    v42 = v19;
  }

LABEL_29:
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatPuzzleStatisticBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleStatisticBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A18C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A18C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6561A48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "stCompetitorScoreDifference";
  }

  else
  {
    v4 = "leaderboardPlayerImage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "leaderboardPlayerImage";
  }

  else
  {
    v7 = "stCompetitorScoreDifference";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6561AF4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6561B74(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6561BE0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6561C68(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "leaderboardPlayerImage";
  }

  else
  {
    v3 = "stCompetitorScoreDifference";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t FormatPuzzleStatisticBinding.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v81 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v79 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v78 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v78 - v39;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v2;
  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v48 = sub_1D5C30408();
  v85 = v44;
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Text, &type metadata for FormatCodingKeys, v49, v46, &type metadata for FormatPuzzleStatisticBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v47, v44, v48, &off_1F51F6BD8);
  if (v45 > 4)
  {
    if (v45 > 7)
    {
      if (v45 == 8)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v67 = sub_1D725BD1C();
        v68 = __swift_project_value_buffer(v67, qword_1EDFFCE80);
        v52 = v81;
        (*(*(v67 - 8) + 16))(v81, v68, v67);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 8;
      }

      else if (v45 == 9)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCE80);
        v52 = v82;
        (*(*(v59 - 8) + 16))(v82, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 9;
      }

      else
      {
        if (qword_1EDF31F40 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCE50);
        v52 = v83;
        (*(*(v75 - 8) + 16))(v83, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 10;
      }
    }

    else if (v45 == 5)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCE80);
      v52 = v78;
      (*(*(v65 - 8) + 16))(v78, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 5;
    }

    else if (v45 == 6)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCE80);
      v52 = v79;
      (*(*(v50 - 8) + 16))(v79, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 6;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCE80);
      v52 = v80;
      (*(*(v73 - 8) + 16))(v80, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 7;
    }

LABEL_44:
    v57 = v85;
    sub_1D641A434(v53, v52);
    v58 = v52;
    goto LABEL_45;
  }

  v54 = v40;
  v52 = v84;
  if (v45 <= 1)
  {
    if (v45)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCE80);
      (*(*(v71 - 8) + 16))(v36, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D641A434(1, v36);
      v58 = v36;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCE80);
      (*(*(v61 - 8) + 16))(v54, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D641A434(0, v54);
      v58 = v54;
    }
  }

  else if (v45 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCE80);
    (*(*(v63 - 8) + 16))(v32, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D641A434(2, v32);
    v58 = v32;
  }

  else
  {
    if (v45 != 3)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE80);
      (*(*(v69 - 8) + 16))(v52, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 4;
      goto LABEL_44;
    }

    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCE80);
    (*(*(v55 - 8) + 16))(v28, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D641A434(3, v28);
    v58 = v28;
  }

LABEL_45:
  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v57, sub_1D5D30DC4);
}

uint64_t FormatPuzzleTypeBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  if (!v2)
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
          *(v22 + 16) = &unk_1F5116C80;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B1094();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29 > 2u)
    {
      if (v29 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 2;
        v25 = 3;
      }

      else
      {
        v28 = xmmword_1D7279980;
        if (v29 == 4)
        {
          sub_1D66B10E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = v29;
        }

        else
        {
          sub_1D66B10E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = v29;
          v24 = 1;
        }
      }

      goto LABEL_22;
    }

    if (v29)
    {
      if (v29 == 1)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 2;
        v25 = 1;
LABEL_22:
        *v12 = v25;
        *(v12 + 8) = v24;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v15, v5);
      v25 = 2;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
    }

    v24 = 2;
    goto LABEL_22;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleTypeBinding.Color.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v52 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - v24;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v30 = *(v2 + 8);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = sub_1D5C30408();
  v55 = v29;
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Color, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatPuzzleTypeBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v32, v29, v33, &off_1F51F6CF8);
  if (v30)
  {
    if (v30 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
      (*(*(v35 - 8) + 16))(v7, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v55;
      sub_1D6393B78(5, v54, v7);
      v38 = v7;
      goto LABEL_26;
    }

    if (v54 > 1)
    {
      v37 = v55;
      if (v54 == 2)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCCA8);
        v25 = v52;
        (*(*(v45 - 8) + 16))(v52, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 2;
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v49 = sub_1D725BD1C();
        v50 = __swift_project_value_buffer(v49, qword_1EDFFCCA8);
        v25 = v53;
        (*(*(v49 - 8) + 16))(v53, v50, v49);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 3;
      }

      v44 = v25;
      goto LABEL_25;
    }

    if (!v54)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCCA8);
      (*(*(v41 - 8) + 16))(v25, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = 0;
      v44 = v25;
      v37 = v55;
LABEL_25:
      sub_1D641C67C(v43, v44);
      v38 = v25;
      goto LABEL_26;
    }

    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCCA8);
    (*(*(v47 - 8) + 16))(v21, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    sub_1D641C67C(1, v21);
    v38 = v21;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE80);
    (*(*(v39 - 8) + 16))(v11, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    sub_1D6393B78(4, v54, v11);
    v38 = v11;
  }

LABEL_26:
  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t FormatPuzzleTypeBinding.Image.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Image, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleTypeBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641C538(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D6563538()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D65635AC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t FormatPuzzleTypeBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
    v12 = v26;
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
          *(v21 + 16) = &unk_1F5116D20;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B1190();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        v27 = xmmword_1D7279980;
        sub_1D66B10E8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v28;
LABEL_17:
        *v12 = v24;
        *(v12 + 8) = v23;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v10, v6);
      v24 = 1;
    }

    else
    {
      (*(v11 + 8))(v10, v6);
      v24 = 0;
    }

    v23 = 1;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleTypeBinding.Text.encode(to:)(void *a1)
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
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Text, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatPuzzleTypeBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v22, v18, v23, &off_1F51F6CF8);
  if (v20 == 1)
  {
    if (v19)
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE50);
      (*(*(v25 - 8) + 16))(v6, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641C7D0(2, v6);
      v27 = v6;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCA8);
      (*(*(v30 - 8) + 16))(v14, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641C7D0(0, v14);
      v27 = v14;
    }
  }

  else
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
    sub_1D6393D0C(1, v19, v10);
    v27 = v10;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6563E5C(uint64_t a1)
{
  v2 = sub_1D5C6BBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6563E98(uint64_t a1)
{
  v2 = sub_1D5C6BBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRGBAColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D66B11E4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1278(0);
  sub_1D5B58B84(&qword_1EDF0C3B0, sub_1D66B1278, &unk_1D7321584);
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

  v13 = v28;
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

      v22 = sub_1D66219DC();
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

  sub_1D5B57870();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v17 = v29;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D726431C();
  v18 = v29;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D726431C();
  v19 = v29;
  v31 = xmmword_1D72BAA60;
  v32 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v25 = v29;
  v26 = v30;
  *v13 = v17;
  *(v13 + 8) = v18;
  *(v13 + 16) = v19;
  *(v13 + 24) = v25;
  *(v13 + 32) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRGBAColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v125 = &v120 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v132 = &v120 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v120 - v14;
  sub_1D66B13F8(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v123 = *(v1 + 32);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66B1278(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF0C3B0, sub_1D66B1278, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRGBAColor, v28, v30, v25, &type metadata for FormatRGBAColor, v28, &type metadata for FormatVersions.JazzkonC, v26, v20, v29, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v129 = v32;
  v130 = v31;
  v128 = v34;
  v127 = v33 + 16;
  (v34)(v15);
  v126 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v142 = v22;
  v140 = 0uLL;
  v141 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v139 = 0;
  v38 = swift_allocObject();
  v137 = &v120;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v139;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v136 = v15;
  *(&v120 - 4) = sub_1D5B4AA6C;
  *(&v120 - 3) = 0;
  v118 = sub_1D6708B40;
  v119 = v40;
  v139 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v139;
  v131 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D66B148C(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02A48, sub_1D66B148C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v133 = v44;
  v134 = v43;
  v45 = sub_1D72647CC();
  v139 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v139;
  v47 = &v20[*(v17 + 36)];
  v135 = v20;
  v48 = *(v47 + 3);
  v49 = *(v47 + 4);
  v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v120 - 4) = sub_1D615B4A4;
  *(&v120 - 3) = (&v120 - 6);
  v118 = sub_1D6708B40;
  v119 = v41;
  v54 = v136;
  v55 = v138;
  sub_1D5D2BC70(v136, sub_1D615B49C, v56, sub_1D615B4A4, (&v120 - 6), v48, v49);
  if (!v55)
  {
    v57 = v54;
    v121 = v47;
    v122 = v37;

    v58 = sub_1D5B578C4();
    v59 = v135;
    sub_1D72647EC();
    v120 = v58;
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v62 = v132;
    v128(v132, v129, v130);
    swift_storeEnumTagMultiPayload();
    v142 = v21;
    v138 = xmmword_1D728CF30;
    v140 = xmmword_1D728CF30;
    v141 = 0;
    v139 = 0;
    v63 = swift_allocObject();
    v136 = &v120;
    *(v63 + 16) = v138;
    *(v63 + 32) = v139;
    v64 = v131;
    v65 = v122;
    *(v63 + 40) = v131;
    *(v63 + 48) = v65;
    MEMORY[0x1EEE9AC00](v63, v66);
    v137 = 0;
    *(&v120 - 4) = sub_1D5B4AA6C;
    *(&v120 - 3) = 0;
    v118 = sub_1D6708B40;
    v119 = v67;
    v139 = 0;
    v68 = v59;
    v69 = swift_allocObject();
    *(v69 + 16) = v138;
    *(v69 + 32) = v139;
    *(v69 + 40) = v64;
    *(v69 + 48) = v65;
    swift_retain_n();
    v70 = sub_1D72647CC();
    v139 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v138;
    *(v71 + 40) = v139;
    v72 = *(v121 + 3);
    v73 = *(v121 + 4);
    v74 = __swift_project_boxed_opaque_existential_1(v121, v72);
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v120 - 4) = sub_1D615B4A4;
    *(&v120 - 3) = (&v120 - 6);
    v118 = sub_1D6708B40;
    v119 = v69;
    v78 = v137;
    sub_1D5D2BC70(v62, sub_1D615B49C, v79, sub_1D615B4A4, (&v120 - 6), v72, v73);
    if (v78)
    {
      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

      v60 = v68;
      return sub_1D5D2CFE8(v60, sub_1D66B13F8);
    }

    sub_1D72647EC();
    sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);

    v80 = v125;
    v128(v125, v129, v130);
    swift_storeEnumTagMultiPayload();
    v142 = v24;
    v138 = xmmword_1D7297410;
    v140 = xmmword_1D7297410;
    v141 = 0;
    v139 = 0;
    v81 = swift_allocObject();
    v136 = &v120;
    *(v81 + 16) = v138;
    *(v81 + 32) = v139;
    v82 = v131;
    v83 = v122;
    *(v81 + 40) = v131;
    *(v81 + 48) = v83;
    MEMORY[0x1EEE9AC00](v81, v84);
    v137 = 0;
    *(&v120 - 4) = sub_1D5B4AA6C;
    *(&v120 - 3) = 0;
    v118 = sub_1D6708B40;
    v119 = v85;
    v139 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v138;
    *(v86 + 32) = v139;
    *(v86 + 40) = v82;
    *(v86 + 48) = v83;
    swift_retain_n();
    v87 = sub_1D72647CC();
    v139 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v138;
    *(v88 + 40) = v139;
    v89 = *(v121 + 3);
    v90 = *(v121 + 4);
    v91 = __swift_project_boxed_opaque_existential_1(v121, v89);
    MEMORY[0x1EEE9AC00](v91, v92);
    MEMORY[0x1EEE9AC00](v93, v94);
    *(&v120 - 4) = sub_1D615B4A4;
    *(&v120 - 3) = (&v120 - 6);
    v118 = sub_1D6708B40;
    v119 = v86;
    v95 = v137;
    sub_1D5D2BC70(v80, sub_1D615B49C, v96, sub_1D615B4A4, (&v120 - 6), v89, v90);
    if (v95)
    {
      v97 = v68;
      v98 = v80;
LABEL_11:
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

LABEL_15:
      v60 = v97;
      return sub_1D5D2CFE8(v60, sub_1D66B13F8);
    }

    v97 = v68;
    sub_1D72647EC();
    sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);

    v99 = v124;
    v128(v124, v129, v130);
    swift_storeEnumTagMultiPayload();
    v138 = xmmword_1D72BAA60;
    v140 = xmmword_1D72BAA60;
    v141 = 0;
    LOBYTE(v142) = 0;
    v100 = swift_allocObject();
    v102 = v100;
    *(v100 + 16) = v138;
    *(v100 + 32) = v142;
    v103 = v131;
    v104 = v122;
    *(v100 + 40) = v131;
    *(v100 + 48) = v104;
    if (v123)
    {
    }

    else
    {
      v136 = &v120;
      v142 = v23;
      MEMORY[0x1EEE9AC00](v100, v101);
      v137 = 0;
      *(&v120 - 4) = sub_1D5B4AA6C;
      *(&v120 - 3) = 0;
      v118 = sub_1D6708B40;
      v119 = v102;
      v139 = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = v138;
      *(v105 + 32) = v139;
      *(v105 + 40) = v103;
      *(v105 + 48) = v104;
      swift_retain_n();
      v106 = sub_1D72647CC();
      v139 = 0;
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      *(v107 + 24) = v138;
      *(v107 + 40) = v139;
      v108 = *(v121 + 3);
      v109 = *(v121 + 4);
      v110 = __swift_project_boxed_opaque_existential_1(v121, v108);
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v120 - 4) = sub_1D615B4A4;
      *(&v120 - 3) = (&v120 - 6);
      v118 = sub_1D66B1520;
      v119 = v105;
      v114 = v137;
      v116 = sub_1D5D2F7A4(v99, sub_1D615B49C, v115, sub_1D615B4A4, (&v120 - 6), v108, v109);
      if (v114)
      {
        v98 = v99;
        goto LABEL_11;
      }

      v117 = v116;

      if (v117)
      {
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

    goto LABEL_15;
  }

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

  v60 = v135;
  return sub_1D5D2CFE8(v60, sub_1D66B13F8);
}

uint64_t sub_1D65652B8()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 1702194274;
  v4 = 0x6168706C61;
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
    v2 = 0x6E65657267;
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

uint64_t sub_1D6565334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B2E20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D656536C(uint64_t a1)
{
  v2 = sub_1D66B1350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65653A8(uint64_t a1)
{
  v2 = sub_1D66B1350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRadialGradient.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D66B159C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1630(0);
  sub_1D5B58B84(&qword_1EDF25388, sub_1D66B1630, &unk_1D7321584);
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

  v13 = v10;
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

      v22 = *(v16 - 2);
      v21 = *(v16 - 1);

      v23 = sub_1D6621BA4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v13, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66B17B0();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v17 = v39;
  v33 = v41;
  v34 = v40;
  v18 = v42;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D726431C();
  v19 = v39;
  v31 = v41;
  v32 = v40;
  v20 = v42;
  sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D7297410;
  LOBYTE(v40) = 0;
  sub_1D5C4CBCC();
  sub_1D726431C();
  v30 = v37;
  sub_1D5C34D84(0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D72BAA60;
  LOBYTE(v40) = 0;
  sub_1D66B1804();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v26 = v37;
  LOBYTE(v43[0]) = v18;
  LOBYTE(v36[0]) = v20;
  v27 = v35;
  *v35 = v17;
  v28 = v33;
  v27[1] = v34;
  v27[2] = v28;
  *(v27 + 48) = v18;
  *(v27 + 49) = v43[0];
  *(v27 + 13) = *(v43 + 3);
  *(v27 + 56) = v19;
  *(v27 + 88) = v31;
  *(v27 + 72) = v32;
  *(v27 + 104) = v20;
  *(v27 + 105) = v36[0];
  *(v27 + 27) = *(v36 + 3);
  *(v27 + 14) = v30;
  *(v27 + 15) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRadialGradient.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v126 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v128 = &v122 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v132 = (&v122 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v122 - v14;
  sub_1D66B18A0(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v23 = *(v1 + 1);
  v140 = *(v1 + 2);
  v141 = v23;
  v24 = *(v1 + 48);
  v25 = v1[7];
  v26 = v1[8];
  v130 = *(v1 + 11);
  v131 = *(v1 + 9);
  v150 = *(v1 + 104);
  v27 = v1[15];
  v127 = v1[14];
  v125 = v27;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D66B1630(0);
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF25388, sub_1D66B1630, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRadialGradient, v31, v33, v28, &type metadata for FormatRadialGradient, v31, &type metadata for FormatVersions.JazzkonG, v29, v20, v32, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v129 = v35;
  v136 = v34;
  v135 = v37;
  v134 = v36 + 16;
  v37(v15);
  v133 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v145 = v21;
  *(&v145 + 1) = v22;
  v146 = v141;
  v147 = v140;
  v148 = v24;
  v143 = 0uLL;
  v144 = 0;
  v38 = &v20[*(v17 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  v149 = 0;
  v41 = swift_allocObject();
  *&v141 = &v122;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v149;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v122 - 4) = sub_1D5B4AA6C;
  *(&v122 - 3) = 0;
  v120 = sub_1D6708B44;
  v121 = v43;
  v149 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v149;
  v137 = v40;
  *(v44 + 40) = v40;
  *(v44 + 48) = v39;
  sub_1D66B1934(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC887168, sub_1D66B1934, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v139 = v46;
  v138 = v47;
  v48 = sub_1D72647CC();
  v149 = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v149;
  v50 = *(v17 + 36);
  v51 = v15;
  v52 = &v20[v50];
  *&v140 = v20;
  v53 = *&v20[v50 + 24];
  v54 = *&v20[v50 + 32];
  v55 = __swift_project_boxed_opaque_existential_1(v52, v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  *(&v122 - 4) = sub_1D615B4A4;
  *(&v122 - 3) = (&v122 - 6);
  v120 = sub_1D6708B44;
  v121 = v44;
  v59 = v142;
  sub_1D5D2BC70(v51, sub_1D615B49C, v60, sub_1D615B4A4, (&v122 - 6), v53, v54);
  if (v59)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v61 = v140;
  }

  else
  {
    v123 = v52;
    v124 = v39;

    v62 = sub_1D66B19C8();
    v61 = v140;
    sub_1D72647EC();
    v122 = v62;
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v63 = v132;
    (v135)(v132, v129, v136);
    swift_storeEnumTagMultiPayload();
    *&v145 = v25;
    *(&v145 + 1) = v26;
    v146 = v131;
    v147 = v130;
    v148 = v150;
    v142 = xmmword_1D728CF30;
    v143 = xmmword_1D728CF30;
    v144 = 0;
    v149 = 0;
    v64 = swift_allocObject();
    *&v131 = &v122;
    *(v64 + 16) = v142;
    *(v64 + 32) = v149;
    v65 = v137;
    v66 = v124;
    *(v64 + 40) = v137;
    *(v64 + 48) = v66;
    MEMORY[0x1EEE9AC00](v64, v67);
    *&v141 = 0;
    *(&v122 - 4) = sub_1D5B4AA6C;
    *(&v122 - 3) = 0;
    v120 = sub_1D6708B44;
    v121 = v68;
    v149 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v142;
    *(v69 + 32) = v149;
    *(v69 + 40) = v65;
    *(v69 + 48) = v66;
    v70 = v63;
    swift_retain_n();
    v71 = sub_1D72647CC();
    v149 = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v142;
    *(v72 + 40) = v149;
    v73 = *(v123 + 3);
    v74 = *(v123 + 4);
    v75 = __swift_project_boxed_opaque_existential_1(v123, v73);
    MEMORY[0x1EEE9AC00](v75, v76);
    MEMORY[0x1EEE9AC00](v77, v78);
    *(&v122 - 4) = sub_1D615B4A4;
    *(&v122 - 3) = (&v122 - 6);
    v120 = sub_1D6708B44;
    v121 = v69;
    v79 = v141;
    sub_1D5D2BC70(v63, sub_1D615B49C, v80, sub_1D615B4A4, (&v122 - 6), v73, v74);
    if (v79)
    {
      goto LABEL_6;
    }

    sub_1D72647EC();
    *&v141 = 0;
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v82 = __swift_project_value_buffer(v136, qword_1EDFFCCE8);
    v70 = v128;
    *&v131 = v82;
    v135(v128);
    swift_storeEnumTagMultiPayload();
    *&v143 = v127;
    v142 = xmmword_1D7297410;
    v145 = xmmword_1D7297410;
    LOBYTE(v146) = 0;
    v149 = 0;
    v83 = swift_allocObject();
    v132 = &v122;
    *(v83 + 16) = v142;
    *(v83 + 32) = v149;
    v84 = v137;
    v85 = v124;
    *(v83 + 40) = v137;
    *(v83 + 48) = v85;
    MEMORY[0x1EEE9AC00](v83, v86);
    *(&v122 - 4) = sub_1D5B4AA6C;
    *(&v122 - 3) = 0;
    v120 = sub_1D6708B44;
    v121 = v87;
    v149 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v142;
    *(v88 + 32) = v149;
    *(v88 + 40) = v84;
    *(v88 + 48) = v85;
    swift_retain_n();
    v89 = sub_1D72647CC();
    v149 = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v142;
    *(v90 + 40) = v149;
    v91 = *(v123 + 3);
    v92 = *(v123 + 4);
    v93 = __swift_project_boxed_opaque_existential_1(v123, v91);
    MEMORY[0x1EEE9AC00](v93, v94);
    MEMORY[0x1EEE9AC00](v95, v96);
    *(&v122 - 4) = sub_1D615B4A4;
    *(&v122 - 3) = (&v122 - 6);
    v120 = sub_1D6708B44;
    v121 = v88;
    v97 = v141;
    sub_1D5D2BC70(v70, sub_1D615B49C, v98, sub_1D615B4A4, (&v122 - 6), v91, v92);
    if (v97)
    {
LABEL_6:
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v99 = v131;

      sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
      sub_1D668E990();
      sub_1D72647EC();
      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

      v100 = v126;
      (v135)(v126, v99, v136);
      swift_storeEnumTagMultiPayload();
      v142 = xmmword_1D72BAA60;
      v145 = xmmword_1D72BAA60;
      LOBYTE(v146) = 0;
      LOBYTE(v143) = 0;
      v101 = swift_allocObject();
      v103 = v101;
      *(v101 + 16) = v142;
      *(v101 + 32) = v143;
      v104 = v137;
      v105 = v124;
      *(v101 + 40) = v137;
      *(v101 + 48) = v105;
      if (v125)
      {
        v136 = &v122;
        *&v143 = v125;
        MEMORY[0x1EEE9AC00](v101, v102);
        *&v141 = 0;
        *(&v122 - 4) = sub_1D5B4AA6C;
        *(&v122 - 3) = 0;
        v120 = sub_1D6708B44;
        v121 = v103;
        v149 = 0;
        v106 = swift_allocObject();
        *(v106 + 16) = v142;
        *(v106 + 32) = v149;
        *(v106 + 40) = v104;
        *(v106 + 48) = v105;
        swift_retain_n();

        v107 = sub_1D72647CC();
        v149 = 0;
        v108 = swift_allocObject();
        *(v108 + 16) = v107;
        *(v108 + 24) = v142;
        *(v108 + 40) = v149;
        v109 = *(v123 + 3);
        v110 = *(v123 + 4);
        v111 = __swift_project_boxed_opaque_existential_1(v123, v109);
        MEMORY[0x1EEE9AC00](v111, v112);
        MEMORY[0x1EEE9AC00](v113, v114);
        *(&v122 - 4) = sub_1D615B4A4;
        *(&v122 - 3) = (&v122 - 6);
        v115 = v126;
        v120 = sub_1D66B1A1C;
        v121 = v106;
        v116 = v141;
        v118 = sub_1D5D2F7A4(v126, sub_1D615B49C, v117, sub_1D615B4A4, (&v122 - 6), v109, v110);
        if (v116)
        {
        }

        else
        {
          v119 = v118;

          if (v119)
          {
            sub_1D5C34D84(0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
            sub_1D66B1A98();
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
      }
    }
  }

  return sub_1D5D2CFE8(v61, sub_1D66B18A0);
}

uint64_t sub_1D65669C4()
{
  v1 = *v0;
  v2 = 1836020326;
  v3 = 0x73726F6C6F63;
  v4 = 0x6E6F697461636F6CLL;
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
    v2 = 28532;
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

uint64_t sub_1D6566A44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B2FC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6566A7C(uint64_t a1)
{
  v2 = sub_1D66B1708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6566AB8(uint64_t a1)
{
  v2 = sub_1D66B1708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRadialGradientCircle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66B1B34(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1BC8(0);
  sub_1D5B58B84(&qword_1EDF24FC8, sub_1D66B1BC8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v32;
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

      v21 = sub_1D6627E68(0x7265746E6563, 0xE600000000000000, 0x737569646172, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C7B870();
  v29 = 0uLL;
  LOBYTE(v30) = 0;
  sub_1D726431C();
  v18 = v27;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D61F9CE0();
  sub_1D726431C();
  (*(v11 + 8))(v10, v6);
  v24 = v31;
  v25 = v29;
  v26 = v30;
  *v14 = v18;
  *(v14 + 16) = v25;
  *(v14 + 32) = v26;
  *(v14 + 48) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRadialGradientCircle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D66B1D48(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = *(v1 + 1);
  v78 = *(v1 + 2);
  v79 = v17;
  v93 = *(v1 + 48);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66B1BC8(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24FC8, sub_1D66B1BC8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRadialGradientCircle, v21, v23, v18, &type metadata for FormatRadialGradientCircle, v21, &type metadata for FormatVersions.JazzkonG, v19, v14, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v76 = v25;
  v81 = v24;
  v75 = v27;
  v74 = v26 + 16;
  (v27)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v87 = v15;
  *(&v87 + 1) = v16;
  v89 = 0uLL;
  LOBYTE(v90) = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v92 = 0;
  v31 = swift_allocObject();
  v84 = &v70;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v92;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v85 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708B48;
  v69 = v33;
  v92 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v92;
  v77 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66B1DDC(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC887180, sub_1D66B1DDC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v82 = v37;
  v83 = v36;
  v38 = sub_1D72647CC();
  v92 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v92;
  v40 = &v14[*(v11 + 36)];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v48 = v85;
  v47 = v86;
  v68 = sub_1D66B1E70;
  v69 = v34;
  sub_1D5D2BC70(v85, sub_1D615B49C, v49, sub_1D615B4A4, (&v70 - 6), v41, v42);
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v71 = v40;
    v50 = v81;
    v72 = v30;

    sub_1D5F5A70C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v52 = v80;
    v75(v80, v76, v50);
    swift_storeEnumTagMultiPayload();
    v89 = v79;
    v90 = v78;
    v91 = v93;
    v86 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    v92 = 0;
    v53 = swift_allocObject();
    v85 = &v70;
    *(v53 + 16) = v86;
    *(v53 + 32) = v92;
    v54 = v77;
    v55 = v72;
    *(v53 + 40) = v77;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708B48;
    v69 = v57;
    v92 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v86;
    *(v58 + 32) = v92;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v92 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v86;
    *(v60 + 40) = v92;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708B48;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D61F9D34();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B1D48);
}

uint64_t sub_1D6567718()
{
  v1 = 0x737569646172;
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
    return 0x7265746E6563;
  }
}

uint64_t sub_1D6567764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B3174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D656779C(uint64_t a1)
{
  v2 = sub_1D66B1CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65677D8(uint64_t a1)
{
  v2 = sub_1D66B1CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6567814(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69746365726964;
  }

  else
  {
    v3 = 0x737569646172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69746365726964;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D65678BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6567940(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65679B0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6567A3C(uint64_t *a1@<X8>)
{
  v2 = 0x737569646172;
  if (*v1)
  {
    v2 = 0x6F69746365726964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6567B2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F427265776F6CLL && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F427265707075 && a2 == 0xEA0000000000646ELL || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D6567C54(char a1)
{
  if (!a1)
  {
    return 0x756F427265776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x756F427265707075;
  }

  return 1885433183;
}

uint64_t sub_1D6567D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6567DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}