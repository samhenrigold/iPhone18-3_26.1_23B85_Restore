uint64_t sub_1D64837D8()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1D6483808(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
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

uint64_t sub_1D64838F0(uint64_t a1)
{
  v2 = sub_1D6684A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648392C(uint64_t a1)
{
  v2 = sub_1D6684A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSizeCategoryValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v119 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v118 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v115 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v114 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v113 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v112 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v111 = &v95 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v110 = &v95 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v109 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v108 = &v95 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v107 = &v95 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v106 = &v95 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v105 = &v95 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v104 = &v95 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v103 = &v95 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v102 = &v95 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v101 = &v95 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v100 = &v95 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v99 = &v95 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v98 = &v95 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v97 = &v95 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v96 = &v95 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v95 - v77;
  v79 = *v1;
  v120 = a1;
  v121 = v79;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v82 = sub_1D725BD1C();
  v83 = __swift_project_value_buffer(v82, qword_1EDFFCE80);
  v84 = *(*(v82 - 8) + 16);
  v84(v78, v83, v82);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v122;
  sub_1D5D2BEC4(v78, sub_1D5B4AA6C, 0, v80, v81);
  if (v85)
  {
    return sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v86 = v120;
  v87 = v120[3];
  v122 = v120[4];
  v95 = __swift_project_boxed_opaque_existential_1(v120, v87);
  v88 = v84;
  switch(v121)
  {
    case 1:
      v89 = v97;
      v84(v97, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 2:
      v89 = v98;
      v84(v98, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 3:
      v89 = v99;
      v84(v99, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 4:
      v90 = v100;
      v84(v100, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 5:
      v90 = v101;
      v84(v101, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 6:
      v90 = v102;
      v84(v102, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 7:
      v90 = v103;
      v84(v103, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 8:
      v90 = v104;
      v84(v104, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 9:
      v90 = v105;
      v84(v105, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 10:
      v90 = v106;
      v84(v106, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 11:
      v90 = v107;
      v84(v107, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 12:
      v90 = v108;
      v84(v108, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 13:
      v90 = v109;
      v84(v109, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 14:
      v90 = v110;
      v84(v110, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 15:
      v90 = v111;
      v84(v111, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 16:
      v90 = v112;
      v84(v112, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 17:
      v90 = v113;
      v84(v113, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 18:
      v90 = v114;
      v84(v114, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 19:
      v90 = v115;
      v84(v115, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 20:
      v90 = v116;
      v84(v116, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 21:
      v90 = v117;
      v84(v117, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 22:
      v90 = v118;
      v84(v118, v83, v82);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      sub_1D5D2BEC4(v90, sub_1D5B4AA6C, 0, v87, v122);
      v92 = v90;
      goto LABEL_31;
    case 23:
      v94 = v119;
      v88(v119, v83, v82);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v94, sub_1D5B4AA6C, 0, v87, v122);
      v92 = v94;
LABEL_31:
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v89 = v96;
      v84(v96, v83, v82);
      swift_storeEnumTagMultiPayload();
LABEL_18:
      sub_1D5D2BEC4(v89, sub_1D5B4AA6C, 0, v87, v122);
      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      break;
  }

  v93 = v121;
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_1D7264B3C();
  v124 = v93;
  FormatContentSizeCategoryValue.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v123, v123[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t FormatCorner.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v40 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t FormatCornerRadius.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCornerRadius, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatCornerRadius, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v14, v20, &off_1F51F6C78);
  if (v17 < 0)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6485670(1, LOBYTE(v16) & 1, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AD93C(0, v15, v17 & 1, v10, v16);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

void sub_1D6484FBC(char a1, __int128 *a2, uint64_t a3)
{
  v25 = a1;
  v7 = a2[1];
  v22 = *a2;
  v23 = v7;
  v24 = a2[2];
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v19 = sub_1D66FCE04;
  v20 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v21 = 0uLL;
    sub_1D72647EC();
    v14 = v22;
    v15 = v23;
    if (v23 == 1)
    {
      sub_1D5E1E088(v22, *(&v22 + 1), 1, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
    }

    else
    {
      v16 = *(&v24 + 1);
      v17 = v24;
      sub_1D5E1DC5C(v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(v14, *(&v14 + 1), v15, *(&v15 + 1), v17, v16);
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
      v21 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

void sub_1D64851F8(char a1, __int128 *a2, uint64_t a3)
{
  v25 = a1;
  v7 = a2[1];
  v22 = *a2;
  v23 = v7;
  v24 = a2[2];
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v19 = sub_1D66F9894;
  v20 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9840();
    v21 = 0uLL;
    sub_1D72647EC();
    v14 = v22;
    v15 = v23;
    if (v23 == 1)
    {
      sub_1D5E1E088(v22, *(&v22 + 1), 1, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
    }

    else
    {
      v16 = *(&v24 + 1);
      v17 = v24;
      sub_1D5E1DC5C(v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(v14, *(&v14 + 1), v15, *(&v15 + 1), v17, v16);
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
      v21 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

void sub_1D6485434(char a1, __int128 *a2, uint64_t a3)
{
  v25 = a1;
  v7 = a2[1];
  v22 = *a2;
  v23 = v7;
  v24 = a2[2];
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v19 = sub_1D66FA120;
  v20 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v18);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA148();
    v21 = 0uLL;
    sub_1D72647EC();
    v14 = v22;
    v15 = v23;
    if (v23 == 1)
    {
      sub_1D5E1E088(v22, *(&v22 + 1), 1, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
    }

    else
    {
      v16 = *(&v24 + 1);
      v17 = v24;
      sub_1D5E1DC5C(v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1));
      sub_1D5E1E088(v14, *(&v14 + 1), v15, *(&v15 + 1), v17, v16);
      sub_1D5E1E088(0, 0, 1, 0, 0, 0);
      v21 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

void sub_1D6485670(char a1, char a2, uint64_t a3)
{
  v7 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66FF44C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF3A4();
    v15 = 0uLL;
    sub_1D72647EC();
    if ((a2 & 1) == 0)
    {
      v15 = xmmword_1D7279980;
      sub_1D66FF474();
      sub_1D72647EC();
    }
  }
}

void sub_1D6485814(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a1;
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F6A0C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D66F1248, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6910();
    v15 = 0uLL;
    sub_1D72647EC();
    if ((sub_1D633A250(a2, MEMORY[0x1E69E7CC0]) & 1) == 0)
    {
      v15 = xmmword_1D7279980;
      sub_1D66F6A34();
      sub_1D72647EC();
    }
  }
}

void sub_1D64859C4(char a1, char a2, uint64_t a3)
{
  v15[1] = a1;
  v15[0] = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66FE9A0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FE9C8();
    v14 = 0uLL;
    sub_1D72647EC();
    LOBYTE(v14) = 3;
    if (!_s8NewsFeed24FormatFlexibleExpressionV2eeoiySbAC_ACtFZ_0(v15, &v14))
    {
      v14 = xmmword_1D7279980;
      sub_1D66FEA1C();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D6485B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465646E756F72;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465646E756F72;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D6485C14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6485C94(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6485D00(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6485D7C(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x6465646E756F72;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatCornerRadius.RoundedValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6684CE4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6684D78(0);
  sub_1D5B58B84(&qword_1EDF255D8, sub_1D6684D78, &unk_1D7321584);
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

      v20 = sub_1D6628490(0x6F756E69746E6F63, 0xEA00000000007375);
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
  v17 = sub_1D72642CC();
  (*(v7 + 8))(v10, v6);
  *v13 = v17 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCornerRadius.RoundedValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6684EF8(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6684D78(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF255D8, sub_1D6684D78, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCornerRadius.RoundedValue, v16, v18, v13, &type metadata for FormatCornerRadius.RoundedValue, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD00);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v44[3] = 0;
  v44[4] = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v46 = 0;
  v24 = swift_allocObject();
  v44[1] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v46;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D67089F4;
  v43 = v26;
  v46 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v46;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684F8C(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03638, sub_1D6684F8C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[0] = v29;
  v30 = sub_1D72647CC();
  v46 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v46;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D6685020;
  v43 = v27;
  v39 = v44[2];
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

  return sub_1D5D2CFE8(v11, sub_1D6684EF8);
}

uint64_t sub_1D64865E0()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6F756E69746E6F63;
  }
}

void sub_1D6486618(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F756E69746E6F63 && a2 == 0xEA00000000007375;
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

uint64_t sub_1D648670C(uint64_t a1)
{
  v2 = sub_1D6684E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6486748(uint64_t a1)
{
  v2 = sub_1D6684E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCornerRadius.Value.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v107 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v99 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v99 - v14;
  sub_1D668509C(0);
  *&v110 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v109 = *(v1 + 8);
  v106 = *(v1 + 16);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CD5460(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF255C8, sub_1D5CD5460, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCornerRadius.Value, v24, v26, v21, &type metadata for FormatCornerRadius.Value, v24, &type metadata for FormatVersions.JazzkonC, v22, v19, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v15, v28, v27);
  v32 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v32;
  if (v20 == 0.0)
  {
    v105 = v2;
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v30(v11, v28, v27);
    goto LABEL_5;
  }

  v103 = v31;
  v104 = v30;
  v102 = v28;
  *&v101 = v11;
  v38 = v110;
  v39 = &v19[*(v110 + 44)];
  v41 = *v39;
  v40 = *(v39 + 1);
  LOBYTE(v112) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v112;
  *(v42 + 40) = v41;
  *(v42 + 48) = v40;
  sub_1D6685130(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130, MEMORY[0x1E69E6F60]);

  v105 = v44;
  v100 = v45;
  v46 = sub_1D72647CC();
  LOBYTE(v112) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v112;
  v48 = &v19[*(v38 + 36)];
  v49 = v3;
  v50 = *(v48 + 3);
  v51 = *(v48 + 4);
  v52 = __swift_project_boxed_opaque_existential_1(v48, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v99 - 4) = sub_1D5B4AA6C;
  *(&v99 - 3) = 0;
  v97 = sub_1D66851C4;
  v98 = v42;
  v57 = sub_1D5D2F7A4(v15, sub_1D615B49C, v56, sub_1D615B4A4, (&v99 - 6), v50, v51);
  if (!v49)
  {
    v76 = v57;

    v11 = v101;
    if (v76)
    {
      v112 = 0uLL;
      v113 = 0;
      v111 = v20;
      sub_1D5B578C4();
      sub_1D72647EC();
      v31 = v103;
      v30 = v104;
      v105 = 0;
      sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
      v28 = v102;
      v30(v11, v102, v27);
    }

    else
    {
      v105 = 0;
      sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
      v28 = v102;
      v31 = v103;
      v30 = v104;
      v104(v11, v102, v27);
    }

LABEL_5:
    swift_storeEnumTagMultiPayload();

    sub_1D635B040(v33, &unk_1F50F2EE0);
    v34 = v110;
    if (v35)
    {
      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

      v36 = v105;
      v37 = v107;
    }

    else
    {
      v103 = v31;
      v104 = v30;
      v102 = v28;
      v58 = &v19[*(v110 + 44)];
      v60 = *v58;
      v59 = *(v58 + 1);
      LOBYTE(v112) = 0;
      v61 = v110;
      v62 = swift_allocObject();
      v101 = xmmword_1D728CF30;
      *(v62 + 16) = xmmword_1D728CF30;
      *(v62 + 32) = v112;
      *(v62 + 40) = v60;
      *(v62 + 48) = v59;
      sub_1D6685130(0);
      sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130, MEMORY[0x1E69E6F60]);

      v63 = sub_1D72647CC();
      LOBYTE(v112) = 0;
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = v101;
      *(v64 + 40) = v112;
      v65 = &v19[*(v61 + 36)];
      v66 = *(v65 + 3);
      v67 = *(v65 + 4);
      v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
      v100 = &v99;
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      *(&v99 - 4) = sub_1D5B4AA6C;
      *(&v99 - 3) = 0;
      v97 = sub_1D67089F8;
      v98 = v62;
      v72 = v105;
      v74 = sub_1D5D2F7A4(v11, sub_1D615B49C, v73, sub_1D615B4A4, (&v99 - 6), v66, v67);
      if (v72)
      {
        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v19, sub_1D668509C);
      }

      v77 = v74;

      if (v77)
      {
        v112 = v101;
        v113 = 0;
        v111 = *&v109;
        sub_1D5C34D84(0, &qword_1EDF1B3C0, &type metadata for FormatCorner, MEMORY[0x1E69E62F8]);
        sub_1D6685240();
        sub_1D72647EC();
        v36 = 0;

        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

        v36 = 0;
      }

      v37 = v107;
      v34 = v110;
      v28 = v102;
      v30 = v104;
    }

    v30(v37, v28, v27);
    swift_storeEnumTagMultiPayload();
    if ((v106 & 1) == 0)
    {
      v79 = &v19[*(v34 + 44)];
      v80 = *v79;
      v81 = *(v79 + 1);
      LOBYTE(v112) = 0;
      v82 = swift_allocObject();
      v110 = xmmword_1D7297410;
      *(v82 + 16) = xmmword_1D7297410;
      *(v82 + 32) = v112;
      *(v82 + 40) = v80;
      *(v82 + 48) = v81;
      sub_1D6685130(0);
      v84 = v83;
      sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130, MEMORY[0x1E69E6F60]);

      v108 = v84;
      v85 = sub_1D72647CC();
      LOBYTE(v112) = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v110;
      *(v86 + 40) = v112;
      v87 = &v19[*(v34 + 36)];
      v88 = *(v87 + 3);
      v89 = *(v87 + 4);
      v90 = __swift_project_boxed_opaque_existential_1(v87, v88);
      v109 = &v99;
      MEMORY[0x1EEE9AC00](v90, v91);
      MEMORY[0x1EEE9AC00](v92, v93);
      *(&v99 - 4) = sub_1D5B4AA6C;
      *(&v99 - 3) = 0;
      v97 = sub_1D67089F8;
      v98 = v82;
      v95 = sub_1D5D2F7A4(v37, sub_1D615B49C, v94, sub_1D615B4A4, (&v99 - 6), v88, v89);
      if (v36)
      {
        sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v19, sub_1D668509C);
      }

      v96 = v95;

      if (v96)
      {
        v112 = v110;
        v113 = 0;
        LOBYTE(v111) = 0;
        sub_1D72647EC();
        v78 = v107;
        goto LABEL_20;
      }

      v37 = v107;
    }

    v78 = v37;
LABEL_20:
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v19, sub_1D668509C);
  }

  sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v19, sub_1D668509C);
}

uint64_t sub_1D6487374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6687788(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64873AC(uint64_t a1)
{
  v2 = sub_1D5CD55E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64873E8(uint64_t a1)
{
  v2 = sub_1D5CD55E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6487424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66878F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D648745C(uint64_t a1)
{
  v2 = sub_1D5C8AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6487498(uint64_t a1)
{
  v2 = sub_1D5C8AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCustomItemBinding.Text.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatCustomItemBinding.Text, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatCustomItemBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641CE74(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641CE74(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatCustomItemDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6685330(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66853C4(0);
  sub_1D5B58B84(&qword_1EDF25018, sub_1D66853C4, &unk_1D7321584);
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

      v19 = sub_1D6628490(0x69747265706F7270, 0xEA00000000007365);
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

  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D5CABC04();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomItemDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6685544(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66853C4(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25018, sub_1D66853C4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCustomItemDefinition, v16, v18, v13, &type metadata for FormatCustomItemDefinition, v16, &type metadata for FormatVersions.AzdenB, v14, v11, v17, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDC8);
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
  v42 = sub_1D67089FC;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66855D8(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02F98, sub_1D66855D8, MEMORY[0x1E69E6F60]);
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
  v42 = sub_1D67089FC;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    sub_1D66856D0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6685544);
}

void sub_1D6488060(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
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

uint64_t sub_1D6488154(uint64_t a1)
{
  v2 = sub_1D668549C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6488190(uint64_t a1)
{
  v2 = sub_1D668549C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64881CC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000018;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F6974616D696E61;
    v9 = 0x7865646E497ALL;
    if (a1 != 7)
    {
      v9 = 0x696C696269736976;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x657A69736572;
    v3 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v3 = 0x656C797473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701667182;
    if (a1 != 1)
    {
      v4 = 1702521203;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6488338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6687A54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6488370(uint64_t a1)
{
  v2 = sub_1D666FE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64883AC(uint64_t a1)
{
  v2 = sub_1D666FE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64883E8()
{
  v1 = 0x726F7463656C6573;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1D6488460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6687E2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6488498(uint64_t a1)
{
  v2 = sub_1D666896C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64884D4(uint64_t a1)
{
  v2 = sub_1D666896C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDateFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v19 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[5];
  v40 = v1[4];
  v41 = v21;
  v38 = v19;
  v39 = v23;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  v42 = v18;
  sub_1D5D2EE70(&type metadata for FormatDateFormat, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatDateFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v18, v26, &off_1F51F6C78);
  if (v22 == 1)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
    (*(*(v32 - 8) + 16))(v14, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v30 = v42;
    sub_1D6424F8C(0, v14);
    v31 = v14;
  }

  else if (v22 == 2)
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
    v30 = v42;
    sub_1D6424F8C(1, v10);
    v31 = v10;
  }

  else
  {
    LOWORD(v43) = v20;
    *(&v43 + 1) = v38;
    v44 = v22;
    v45 = v41;
    v46 = v40;
    v47 = v39;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
    (*(*(v34 - 8) + 16))(v6, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v30 = v42;
    sub_1D63C6840(2, &v43, v6);
    v31 = v6;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v30, sub_1D5D30DC4);
}

uint64_t sub_1D6488948(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4C6F6741656D6974;
  v4 = 0xEB00000000676E6FLL;
  if (v2 != 1)
  {
    v3 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4D6F6741656D6974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006D75696465;
  }

  v7 = 0x4C6F6741656D6974;
  v8 = 0xEB00000000676E6FLL;
  if (*a2 != 1)
  {
    v7 = 0x6D6F74737563;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4D6F6741656D6974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006D75696465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6488A5C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6488B10(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6488BB0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6488C60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D75696465;
  v4 = 0xEB00000000676E6FLL;
  v5 = 0x4C6F6741656D6974;
  if (v2 != 1)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D6F6741656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatDateFormat.Context.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v42 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v41 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v44 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  v47 = *v1;
  v25 = a1[3];
  v26 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v29(v24, v28, v27);
  v30 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = v50;
  sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v25, v26);
  if (v31)
  {
    return sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  }

  v40 = v30;
  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v33 = v48;
  v34 = v48[3];
  v35 = v48[4];
  v50 = __swift_project_boxed_opaque_existential_1(v48, v34);
  if (v47 > 2)
  {
    if (v47 == 3)
    {
      v39 = v43;
      v29(v43, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v34, v35);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_1D7264B3C();
      goto LABEL_19;
    }

    if (v47 == 4)
    {
      v36 = v45;
      v29(v45, v28, v27);
    }

    else
    {
      v36 = v46;
      v29(v46, v28, v27);
    }
  }

  else
  {
    if (!v47)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v27, qword_1EDFFCE98);
      v38 = v44;
      v29(v44, v37, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v34, v35);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_1D7264B3C();
      goto LABEL_19;
    }

    if (v47 == 1)
    {
      v36 = v41;
      v29(v41, v28, v27);
    }

    else
    {
      v36 = v42;
      v29(v42, v28, v27);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v34, v35);
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1D7264B3C();
LABEL_19:
  __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t FormatDateFormat.Custom.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66857FC(0);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6685890(0);
  sub_1D5B58B84(&qword_1EDF24B48, sub_1D6685890, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v38;
  v14 = v10;
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

      v22 = v10;
      v23 = v7;
      v24 = v13;
      v26 = *(v17 - 2);
      v25 = *(v17 - 1);

      v27 = sub_1D661A214();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v24 + 8))(v22, v23);
      goto LABEL_9;
    }

LABEL_7:
  }

  sub_1D6685A10();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726427C();
  v18 = v42;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  sub_1D726427C();
  v19 = v42;
  v39 = xmmword_1D7297410;
  v40 = 0;
  v20 = sub_1D726422C();
  v30 = v29;
  v37 = v20;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D6685A64();
  sub_1D726431C();
  v41 = v19;
  v36 = v42;
  v39 = xmmword_1D72BAA70;
  v40 = 0;
  v31 = sub_1D726422C();
  v32 = v14;
  v34 = v33;
  (*(v13 + 8))(v32, v7);
  *a2 = v18;
  *(a2 + 1) = v41;
  *(a2 + 8) = v37;
  *(a2 + 16) = v30;
  *(a2 + 24) = v36;
  *(a2 + 32) = v31;
  *(a2 + 40) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateFormat.Custom.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v161 = v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v162 = v157 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v167 = v157 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v170 = v157 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v157 - v17;
  sub_1D6685AB8(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  LODWORD(v168) = v1[1];
  v25 = *(v1 + 2);
  v163 = *(v1 + 1);
  v169 = v25;
  v183 = v1[24];
  v26 = *(v1 + 5);
  v159 = *(v1 + 4);
  v160 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D6685890(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF24B48, sub_1D6685890, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatDateFormat.Custom, v30, v32, v27, &type metadata for FormatDateFormat.Custom, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v37 = v35 + 16;
  *&v175 = v34;
  v36(v18);
  v173 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v180 = 0uLL;
  v181 = 0;
  v38 = &v23[*(v20 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  LOBYTE(v178) = 0;
  v41 = swift_allocObject();
  v43 = v20;
  v44 = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v178;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  v177 = v23;
  v165 = v40;
  v166 = v33;
  v164 = v36;
  v171 = v37;
  v172 = v43;
  if (v24 == 5)
  {
  }

  else
  {
    *&v174 = v157;
    LOBYTE(v178) = v24;
    v45 = v43;
    MEMORY[0x1EEE9AC00](v41, v42);
    v158 = &v157[-6];
    v157[-4] = sub_1D5B4AA6C;
    v157[-3] = 0;
    v155 = sub_1D6708A00;
    v156 = v44;
    v182 = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v182;
    *(v46 + 40) = v40;
    *(v46 + 48) = v39;
    sub_1D6685B4C(0);
    v48 = v47;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v157[1] = v48;
    v49 = sub_1D72647CC();
    v182 = 0;
    v50 = swift_allocObject();
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    *(v50 + 16) = v49;
    *(v50 + 40) = v182;
    v51 = &v23[*(v45 + 36)];
    v52 = *(v51 + 3);
    v53 = *(v51 + 4);
    v54 = __swift_project_boxed_opaque_existential_1(v51, v52);
    MEMORY[0x1EEE9AC00](v54, v55);
    MEMORY[0x1EEE9AC00](v56, v57);
    v58 = v158;
    v157[-4] = sub_1D615B4A4;
    v157[-3] = v58;
    v155 = sub_1D6708A00;
    v156 = v46;
    v59 = v176;
    v61 = sub_1D5D2F7A4(v18, sub_1D615B49C, v60, sub_1D615B4A4, &v157[-6], v52, v53);
    if (v59)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      goto LABEL_17;
    }

    v62 = v61;

    if (v62)
    {
      sub_1D6685CB0();
      sub_1D72647EC();
    }

    v176 = 0;
    v40 = v165;
    v33 = v166;
    v36 = v164;
  }

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

  v63 = v170;
  (v36)(v170, v175, v33);
  swift_storeEnumTagMultiPayload();
  v174 = xmmword_1D728CF30;
  v180 = xmmword_1D728CF30;
  v181 = 0;
  LOBYTE(v178) = 0;
  v64 = swift_allocObject();
  v66 = v64;
  *(v64 + 16) = v174;
  *(v64 + 32) = v178;
  *(v64 + 40) = v40;
  *(v64 + 48) = v39;
  if (v168 != 5)
  {
    v158 = v157;
    LOBYTE(v178) = v168;
    MEMORY[0x1EEE9AC00](v64, v65);
    v157[-4] = sub_1D5B4AA6C;
    v157[-3] = 0;
    v155 = sub_1D6708A00;
    v156 = v66;
    v182 = 0;
    v89 = swift_allocObject();
    v90 = v40;
    v91 = v89;
    *(v89 + 16) = v174;
    *(v89 + 32) = v182;
    *(v89 + 40) = v90;
    *(v89 + 48) = v39;
    sub_1D6685B4C(0);
    v93 = v92;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v94 = v177;
    v168 = v93;
    v95 = sub_1D72647CC();
    v182 = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v174;
    *(v96 + 40) = v182;
    v97 = &v94[*(v172 + 36)];
    v98 = *(v97 + 3);
    v99 = *(v97 + 4);
    v100 = __swift_project_boxed_opaque_existential_1(v97, v98);
    MEMORY[0x1EEE9AC00](v100, v101);
    MEMORY[0x1EEE9AC00](v102, v103);
    v157[-4] = sub_1D615B4A4;
    v157[-3] = &v157[-6];
    v155 = sub_1D6708A00;
    v156 = v91;
    v104 = v176;
    v106 = sub_1D5D2F7A4(v63, sub_1D615B49C, v105, sub_1D615B4A4, &v157[-6], v98, v99);
    if (!v104)
    {
      v108 = v106;
      v109 = v165;

      if (v108)
      {
        sub_1D6685CB0();
        v67 = v177;
        sub_1D72647EC();
        v40 = v109;
        v33 = v166;
        v36 = v164;
        v176 = 0;
      }

      else
      {
        v176 = 0;
        v67 = v177;
        v40 = v109;
        v33 = v166;
        v36 = v164;
      }

      v63 = v170;
      goto LABEL_12;
    }

    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

LABEL_17:
    v107 = v177;
    return sub_1D5D2CFE8(v107, sub_1D6685AB8);
  }

  v67 = v177;
LABEL_12:
  sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

  v68 = v167;
  (v36)(v167, v175, v33);
  swift_storeEnumTagMultiPayload();
  v174 = xmmword_1D7297410;
  v180 = xmmword_1D7297410;
  v181 = 0;
  LOBYTE(v178) = 0;
  v69 = swift_allocObject();
  v71 = v69;
  *(v69 + 16) = v174;
  *(v69 + 32) = v178;
  *(v69 + 40) = v40;
  *(v69 + 48) = v39;
  v157[0] = v39;
  if (v169)
  {
    v170 = v157;
    v178 = v163;
    v179 = v169;
    MEMORY[0x1EEE9AC00](v69, v70);
    v157[-4] = sub_1D5B4AA6C;
    v157[-3] = 0;
    v155 = sub_1D6708A00;
    v156 = v71;
    v182 = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v174;
    *(v72 + 32) = v182;
    *(v72 + 40) = v40;
    *(v72 + 48) = v39;
    sub_1D6685B4C(0);
    v74 = v73;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v168 = v74;
    v75 = sub_1D72647CC();
    v182 = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v174;
    *(v76 + 40) = v182;
    v77 = &v67[*(v172 + 36)];
    v79 = *(v77 + 3);
    v78 = *(v77 + 4);
    v80 = __swift_project_boxed_opaque_existential_1(v77, v79);
    MEMORY[0x1EEE9AC00](v80, v81);
    MEMORY[0x1EEE9AC00](v82, v83);
    v157[-4] = sub_1D615B4A4;
    v157[-3] = &v157[-6];
    v155 = sub_1D6708A00;
    v156 = v72;
    v84 = v176;
    v86 = sub_1D5D2F7A4(v68, sub_1D615B49C, v85, sub_1D615B4A4, &v157[-6], v79, v78);
    if (v84)
    {

      v87 = v177;
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v87, sub_1D6685AB8);
    }

    v110 = v86;
    v111 = v165;

    if (v110)
    {
      sub_1D72647EC();
      v33 = v166;
      v36 = v164;
      v40 = v111;
      v176 = 0;

      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
      v39 = v157[0];
    }

    else
    {
      v176 = 0;

      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      v39 = v157[0];
      v40 = v111;
      v33 = v166;
      v36 = v164;
    }
  }

  else
  {

    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
  }

  v112 = v162;
  (v36)(v162, v175, v33);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v178) = v183;
  v175 = xmmword_1D72BAA60;
  v180 = xmmword_1D72BAA60;
  v181 = 0;
  v182 = 0;
  v113 = swift_allocObject();
  *&v174 = v157;
  *(v113 + 16) = v175;
  *(v113 + 32) = v182;
  *(v113 + 40) = v40;
  *(v113 + 48) = v39;
  MEMORY[0x1EEE9AC00](v113, v114);
  v157[-4] = sub_1D5B4AA6C;
  v157[-3] = 0;
  v155 = sub_1D6708A00;
  v156 = v115;
  v182 = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v175;
  *(v116 + 32) = v182;
  *(v116 + 40) = v40;
  *(v116 + 48) = v39;
  sub_1D6685B4C(0);
  v118 = v117;
  v119 = sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v120 = v177;
  v169 = v119;
  v170 = v118;
  v121 = sub_1D72647CC();
  v182 = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v175;
  *(v122 + 40) = v182;
  v123 = (v120 + *(v172 + 36));
  v124 = v123[3];
  v125 = v123[4];
  v126 = __swift_project_boxed_opaque_existential_1(v123, v124);
  MEMORY[0x1EEE9AC00](v126, v127);
  MEMORY[0x1EEE9AC00](v128, v129);
  v157[-4] = sub_1D615B4A4;
  v157[-3] = &v157[-6];
  v155 = sub_1D6708A00;
  v156 = v116;
  v130 = v176;
  sub_1D5D2BC70(v112, sub_1D615B49C, v131, sub_1D615B4A4, &v157[-6], v124, v125);
  if (v130)
  {
    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

    v107 = v120;
  }

  else
  {
    v176 = v123;
    v133 = v165;
    v132 = v166;

    sub_1D6685BE0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v134 = __swift_project_value_buffer(v132, qword_1EDFFCE68);
    v135 = v161;
    (v164)(v161, v134, v132);
    swift_storeEnumTagMultiPayload();
    v175 = xmmword_1D72BAA70;
    v180 = xmmword_1D72BAA70;
    v181 = 0;
    LOBYTE(v178) = 0;
    v136 = swift_allocObject();
    v138 = v136;
    *(v136 + 16) = v175;
    *(v136 + 32) = v178;
    v139 = v133;
    v140 = v157[0];
    *(v136 + 40) = v133;
    *(v136 + 48) = v140;
    v141 = v176;
    if (v160)
    {
      *&v174 = v157;
      v178 = v159;
      v179 = v160;
      MEMORY[0x1EEE9AC00](v136, v137);
      v157[-4] = sub_1D5B4AA6C;
      v157[-3] = 0;
      v155 = sub_1D6708A00;
      v156 = v138;
      v182 = 0;
      v142 = swift_allocObject();
      *(v142 + 16) = v175;
      *(v142 + 32) = v182;
      *(v142 + 40) = v139;
      *(v142 + 48) = v140;
      swift_retain_n();

      v143 = sub_1D72647CC();
      v182 = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      *(v144 + 24) = v175;
      *(v144 + 40) = v182;
      v145 = v141[3];
      v146 = v141[4];
      v147 = __swift_project_boxed_opaque_existential_1(v141, v145);
      MEMORY[0x1EEE9AC00](v147, v148);
      MEMORY[0x1EEE9AC00](v149, v150);
      v157[-4] = sub_1D615B4A4;
      v157[-3] = &v157[-6];
      v151 = v161;
      v155 = sub_1D6685C34;
      v156 = v142;
      v153 = sub_1D5D2F7A4(v161, sub_1D615B49C, v152, sub_1D615B4A4, &v157[-6], v145, v146);
      v154 = v153;

      if (v154)
      {
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
    }

    v107 = v177;
  }

  return sub_1D5D2CFE8(v107, sub_1D6685AB8);
}

uint64_t sub_1D648AE9C()
{
  v1 = *v0;
  v2 = 0x6C79745365746164;
  v3 = 0x747865746E6F63;
  v4 = 0x656E6F5A656D6974;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C797453656D6974;
  if (v1 != 1)
  {
    v5 = 0x6574616C706D6574;
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

uint64_t sub_1D648AF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6687F98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D648AF88(uint64_t a1)
{
  v2 = sub_1D6685968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648AFC4(uint64_t a1)
{
  v2 = sub_1D6685968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDateFormat.Style.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v40 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

double sub_1D648B5DC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D648B6DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663758(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D648B70C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6962;
  v5 = 0xE300000000000000;
  v6 = 7827310;
  v7 = 0xED00006572757475;
  v8 = 0x46746E6174736964;
  if (v2 != 4)
  {
    v8 = 0x50746E6174736964;
    v7 = 0xEB00000000747361;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v10 = 0x313036386F7369;
    v9 = 0xE700000000000000;
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

uint64_t FormatDateTimeBinding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    v11 = a1;
    if (v13)
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
          *(v21 + 16) = &unk_1F5114A68;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_10;
        }
      }
    }

    sub_1D6685D04();
    v28[0] = 0uLL;
    sub_1D726431C();
    v23 = v27;
    if (v27 > 3u)
    {
      if (v27 > 5u)
      {
        if (v27 == 6)
        {
          v28[0] = xmmword_1D7279980;
          sub_1D6685DAC();
LABEL_24:
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v24 = 0;
LABEL_29:
          v25 = 0uLL;
          goto LABEL_30;
        }

        v28[0] = xmmword_1D7279980;
        sub_1D6685D58();
      }

      else
      {
        v28[0] = xmmword_1D7279980;
        if (v27 == 4)
        {
          sub_1D6139ED4();
        }

        else
        {
          sub_1D6685E00();
        }
      }
    }

    else
    {
      if (v27 <= 1u)
      {
        if (!v27)
        {
          v27 = xmmword_1D7279980;
          sub_1D5C6A164();
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v24 = *&v28[0];
          v25 = *(v28 + 8);
LABEL_30:
          v26 = v29;
          *v29 = v24;
          *(v26 + 1) = v25;
          *(v26 + 24) = v23;
          return __swift_destroy_boxed_opaque_existential_1(v11);
        }

        v28[0] = xmmword_1D7279980;
        sub_1D6685EA8();
        goto LABEL_24;
      }

      v28[0] = xmmword_1D7279980;
      if (v27 == 2)
      {
        sub_1D5DF40A8();
      }

      else
      {
        sub_1D6685E54();
      }
    }

    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    v24 = v27;
    goto LABEL_29;
  }

  v11 = a1;
LABEL_10:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t FormatDateTimeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v66 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v62 - v29;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v1 + 8);
  v68 = *v1;
  v62 = *(v1 + 16);
  v63 = v35;
  v36 = *(v1 + 24);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v69 = v34;
  sub_1D5D2EE70(&type metadata for FormatDateTimeBinding, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatDateTimeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v38, v34, v39, &off_1F51F6CF8);
  if (v36 > 3)
  {
    if (v36 > 5)
    {
      v45 = v69;
      if (v36 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v50 = sub_1D725BD1C();
        v51 = __swift_project_value_buffer(v50, qword_1EDFFCCA8);
        v22 = v65;
        (*(*(v50 - 8) + 16))(v65, v51, v50);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A09EC(6, v22);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
        v22 = v67;
        (*(*(v60 - 8) + 16))(v67, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A0B78(7, v68, v22);
      }
    }

    else
    {
      v45 = v69;
      if (v36 == 4)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCCA8);
        v22 = v64;
        (*(*(v46 - 8) + 16))(v64, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A06C4(4, v68, v22);
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCCA8);
        v22 = v66;
        (*(*(v55 - 8) + 16))(v66, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A0858(5, v68, v22);
      }
    }

    goto LABEL_32;
  }

  if (v36 > 1)
  {
    if (v36 != 2)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCA8);
      (*(*(v57 - 8) + 16))(v18, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v69;
      sub_1D63A052C(3, v68 & 1, v18);
      v59 = v18;
      goto LABEL_33;
    }

    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCCA8);
    (*(*(v48 - 8) + 16))(v22, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v69;
    sub_1D63A0398(2, v68, v22);
LABEL_32:
    v59 = v22;
LABEL_33:
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
    v54 = v45;
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  v41 = v69;
  if (v36)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCCA8);
    (*(*(v52 - 8) + 16))(v26, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A020C(1, v26);
    sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
    v54 = v41;
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v42 = sub_1D725BD1C();
  v43 = __swift_project_value_buffer(v42, qword_1EDFFCCA8);
  (*(*(v42 - 8) + 16))(v30, v43, v42);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A0074(0, v68, v63, v62, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v41, sub_1D5D30DC4);
}

unint64_t sub_1D648C5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663F5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D648C600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  v5 = 0xEB00000000746E65;
  v6 = 0x76457374726F7073;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (v2 != 4)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 2)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C7A7A7570;
    v3 = 0xE600000000000000;
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

uint64_t sub_1D648C798()
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
    return 0x73646E6F636573;
  }
}

uint64_t sub_1D648C7EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66881A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D648C824(uint64_t a1)
{
  v2 = sub_1D6661DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648C860(uint64_t a1)
{
  v2 = sub_1D6661DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDebugAction.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatDebugAction, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatDebugAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v21, v18, v22, &off_1F51F6BD8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE80);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423120(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE80);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423120(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE80);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423120(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D648CCBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726F74696465;
  if (v2 != 1)
  {
    v4 = 0x6C616E6F73726570;
    v3 = 0xEF6E6F6974617A69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F74636570736E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726F74696465;
  if (*a2 != 1)
  {
    v8 = 0x6C616E6F73726570;
    v7 = 0xEF6E6F6974617A69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F74636570736E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000072;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D648CDD0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D648CE80(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D648CF1C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D648CFC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663888(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D648CFF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0xE600000000000000;
  v5 = 0x726F74696465;
  if (v2 != 1)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEF6E6F6974617A69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F74636570736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatDecoration.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v209 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v215 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v218 = &v209 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v219 = &v209 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v221 = &v209 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v223 = &v209 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v232 = &v209 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v229 = &v209 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v209 - v30;
  sub_1D6685FEC(0);
  v231 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  v36 = *(v1 + 8);
  v38 = *(v1 + 56);
  *&v233 = *(v1 + 48);
  v224 = v38;
  v216 = *(v1 + 64);
  v240 = *(v1 + 72);
  v39 = *(v1 + 88);
  v220 = *(v1 + 80);
  v217 = v39;
  v212 = *(v1 + 96);
  v214 = *(v1 + 106);
  v213 = *(v1 + 104);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1D5C4C63C(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF256D8, sub_1D5C4C63C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatDecoration, v43, v45, v40, &type metadata for FormatDecoration, v43, &type metadata for FormatVersions.JazzkonC, v41, v35, v44, &off_1F51F6C78);
  v46 = qword_1EDF31EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCD30);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v51 = (v49 + 16);
  v230 = v48;
  v50(v31);
  v52 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v222 = v37;
  sub_1D725892C();
  v53 = sub_1D725895C();
  v54 = (*(*(v53 - 8) + 48))(v6, 1, v53);
  v226 = v47;
  v227 = v50;
  v228 = v52;
  if (v54 != 1)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v211 = v36;
  v225 = v51;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v55 = v231;
  v56 = &v35[*(v231 + 11)];
  v58 = *v56;
  v57 = *(v56 + 1);
  LOBYTE(v237) = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v237;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  sub_1D5E1BAEC(0);
  sub_1D5B58B84(&qword_1EDF03788, sub_1D5E1BAEC, MEMORY[0x1E69E6F60]);

  v60 = sub_1D72647CC();
  LOBYTE(v237) = 0;
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 16) = v60;
  *(v61 + 40) = v237;
  v62 = &v35[*(v55 + 9)];
  v63 = *(v62 + 3);
  v64 = *(v62 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v209 - 4) = sub_1D5B4AA6C;
  *(&v209 - 3) = 0;
  v207 = sub_1D6686080;
  v208 = v59;
  v69 = v234;
  v71 = sub_1D5D2F7A4(v31, sub_1D615B49C, v70, sub_1D615B4A4, (&v209 - 6), v63, v64);
  v234 = v69;
  if (v69)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v72 = v35;
    return sub_1D5D2CFE8(v72, sub_1D6685FEC);
  }

  v102 = v71;

  if ((v102 & 1) == 0)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v47 = v226;
    v50 = v227;
    v51 = v225;
    goto LABEL_8;
  }

  v237 = 0uLL;
  v238 = 0;
  v235 = v222;
  v236 = v211;
  v103 = v234;
  sub_1D72647EC();

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  v47 = v226;
  v50 = v227;
  v51 = v225;
  if (!v103)
  {
    v234 = 0;
LABEL_8:
    v75 = v229;
    v74 = v230;
    (v50)(v229, v230, v47);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    (v50)(v75, v74, v47);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    (v50)(v232, v74, v47);
    swift_storeEnumTagMultiPayload();
    v235 = v233;
    v233 = xmmword_1D72BAA60;
    v237 = xmmword_1D72BAA60;
    v238 = 0;
    v76 = v231;
    v77 = &v35[*(v231 + 11)];
    v79 = *v77;
    v78 = *(v77 + 1);
    v239 = 0;
    v80 = swift_allocObject();
    v229 = &v209;
    *(v80 + 16) = v233;
    *(v80 + 32) = v239;
    *(v80 + 40) = v79;
    *(v80 + 48) = v78;
    MEMORY[0x1EEE9AC00](v80, v81);
    v225 = &v209 - 6;
    *(&v209 - 4) = sub_1D5B4AA6C;
    *(&v209 - 3) = 0;
    v207 = sub_1D6708A04;
    v208 = v82;
    v239 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v233;
    *(v83 + 32) = v239;
    v210 = v79;
    *(v83 + 40) = v79;
    *(v83 + 48) = v78;
    sub_1D5E1BAEC(0);
    v85 = v84;
    v86 = sub_1D5B58B84(&qword_1EDF03788, sub_1D5E1BAEC, MEMORY[0x1E69E6F60]);
    v209 = v78;
    swift_retain_n();
    v222 = v85;
    v211 = v86;
    v87 = sub_1D72647CC();
    v239 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v233;
    *(v88 + 40) = v239;
    v89 = &v35[*(v76 + 9)];
    v90 = v51;
    v91 = *(v89 + 3);
    v92 = *(v89 + 4);
    v93 = __swift_project_boxed_opaque_existential_1(v89, v91);
    MEMORY[0x1EEE9AC00](v93, v94);
    MEMORY[0x1EEE9AC00](v95, v96);
    v97 = v225;
    *(&v209 - 4) = sub_1D615B4A4;
    *(&v209 - 3) = v97;
    v207 = sub_1D6708A04;
    v208 = v83;
    v98 = v232;
    v99 = v234;
    sub_1D5D2BC70(v232, sub_1D615B49C, v100, sub_1D615B4A4, (&v209 - 6), v91, v92);
    if (v99)
    {
      v101 = v35;
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v101, sub_1D6685FEC);
    }

    *&v233 = v89;
    v225 = v90;

    sub_1D6686110();
    v101 = v35;
    sub_1D72647EC();
    v234 = 0;
    sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);

    v104 = v223;
    v106 = v226;
    v105 = v227;
    (v227)(v223, v230, v226);
    swift_storeEnumTagMultiPayload();
    v107 = sub_1D5C8DCC0(&unk_1F50F2F08);
    v108 = sub_1D5E21790(v224, v107);

    if (v108)
    {
      v109 = v209;
    }

    else
    {
      LOBYTE(v237) = 0;
      v117 = swift_allocObject();
      v232 = xmmword_1D72BAA70;
      *(v117 + 16) = xmmword_1D72BAA70;
      *(v117 + 32) = v237;
      *(v117 + 40) = v210;
      *(v117 + 48) = v209;

      v118 = sub_1D72647CC();
      LOBYTE(v237) = 0;
      v119 = swift_allocObject();
      *(v119 + 16) = v118;
      *(v119 + 24) = v232;
      *(v119 + 40) = v237;
      v120 = *(v233 + 24);
      v121 = *(v233 + 32);
      v122 = __swift_project_boxed_opaque_existential_1(v233, v120);
      MEMORY[0x1EEE9AC00](v122, v123);
      MEMORY[0x1EEE9AC00](v124, v125);
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708A04;
      v208 = v117;
      v126 = v234;
      v128 = sub_1D5D2F7A4(v104, sub_1D615B49C, v127, sub_1D615B4A4, (&v209 - 6), v120, v121);
      v234 = v126;
      if (v126)
      {
        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v101, sub_1D6685FEC);
      }

      v143 = v128;

      if (v143)
      {
        v144 = v234;
        sub_1D5E085C0(v224, v35, 4, 0, 0);
        v105 = v227;
        if (v144)
        {
          sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CFE8(v101, sub_1D6685FEC);
        }

        v234 = 0;
        v109 = v209;
        v104 = v223;
      }

      else
      {
        v105 = v227;
        v109 = v209;
        v104 = v223;
      }
    }

    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v110 = v210;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v111 = __swift_project_value_buffer(v106, qword_1EDFFCD50);
    v112 = v221;
    v105(v221, v111, v106);
    swift_storeEnumTagMultiPayload();
    v232 = xmmword_1D72BAA80;
    v237 = xmmword_1D72BAA80;
    v238 = 0;
    LOBYTE(v235) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v232;
    *(v114 + 32) = v235;
    *(v114 + 40) = v110;
    *(v114 + 48) = v109;
    if (v240)
    {

      v115 = v112;
      v116 = v219;
    }

    else
    {
      v231 = &v209;
      v235 = v216;
      MEMORY[0x1EEE9AC00](v109, v113);
      v130 = v129;
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708A04;
      v208 = v114;
      v239 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v232;
      *(v131 + 32) = v239;
      *(v131 + 40) = v110;
      *(v131 + 48) = v130;
      swift_retain_n();
      v132 = sub_1D72647CC();
      v239 = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v232;
      *(v133 + 40) = v239;
      v134 = *(v233 + 24);
      v135 = *(v233 + 32);
      v136 = __swift_project_boxed_opaque_existential_1(v233, v134);
      MEMORY[0x1EEE9AC00](v136, v137);
      MEMORY[0x1EEE9AC00](v138, v139);
      *(&v209 - 4) = sub_1D615B4A4;
      *(&v209 - 3) = (&v209 - 6);
      v207 = sub_1D6708A04;
      v208 = v131;
      v140 = v234;
      v142 = sub_1D5D2F7A4(v112, sub_1D615B49C, v141, sub_1D615B4A4, (&v209 - 6), v134, v135);
      v234 = v140;
      if (v140)
      {
        sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v101, sub_1D6685FEC);
      }

      v145 = v142;

      v116 = v219;
      if (v145)
      {
        v146 = v234;
        sub_1D72647EC();
        v106 = v226;
        v105 = v227;
        if (v146)
        {
          sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CFE8(v101, sub_1D6685FEC);
        }

        v234 = 0;
      }

      else
      {
        v106 = v226;
        v105 = v227;
      }

      v109 = v209;
      v110 = v210;
      v115 = v221;
    }

    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

    v105(v116, v230, v106);
    swift_storeEnumTagMultiPayload();
    v147 = v233;
    if (*(v220 + 16))
    {
      LOBYTE(v237) = 0;
      v148 = swift_allocObject();
      v232 = xmmword_1D72BAA90;
      *(v148 + 16) = xmmword_1D72BAA90;
      *(v148 + 32) = v237;
      *(v148 + 40) = v110;
      *(v148 + 48) = v109;

      v149 = sub_1D72647CC();
      LOBYTE(v237) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v149;
      *(v150 + 24) = v232;
      *(v150 + 40) = v237;
      v151 = v147[3];
      v152 = v147[4];
      v153 = __swift_project_boxed_opaque_existential_1(v147, v151);
      MEMORY[0x1EEE9AC00](v153, v154);
      MEMORY[0x1EEE9AC00](v155, v156);
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708A04;
      v208 = v148;
      v157 = v234;
      v159 = sub_1D5D2F7A4(v116, sub_1D615B49C, v158, sub_1D615B4A4, (&v209 - 6), v151, v152);
      v234 = v157;
      if (v157)
      {
        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

        v72 = v101;
        return sub_1D5D2CFE8(v72, sub_1D6685FEC);
      }

      v161 = v159;

      if (v161)
      {
        v237 = v232;
        v238 = 0;
        v235 = v220;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v162 = v234;
        sub_1D72647EC();
        v106 = v226;
        v105 = v227;
        v147 = v233;
        v234 = v162;
        if (v162)
        {

          sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
          v72 = v101;
          return sub_1D5D2CFE8(v72, sub_1D6685FEC);
        }

        v163 = v209;

        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
        v160 = v163;
      }

      else
      {
        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

        v106 = v226;
        v105 = v227;
        v160 = v209;
        v147 = v233;
      }
    }

    else
    {
      sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
      v160 = v109;
    }

    v164 = qword_1EDF31F08;
    v165 = v217;

    v166 = v218;
    if (v164 != -1)
    {
      swift_once();
    }

    v167 = __swift_project_value_buffer(v106, qword_1EDFFCDE0);
    v105(v166, v167, v106);
    swift_storeEnumTagMultiPayload();
    if (*(v165 + 16))
    {
      LOBYTE(v237) = 0;
      v168 = v166;
      v169 = swift_allocObject();
      v232 = xmmword_1D72BAAA0;
      *(v169 + 16) = xmmword_1D72BAAA0;
      *(v169 + 32) = v237;
      *(v169 + 40) = v210;
      *(v169 + 48) = v160;

      v170 = sub_1D72647CC();
      LOBYTE(v237) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v170;
      *(v171 + 24) = v232;
      *(v171 + 40) = v237;
      v172 = v147[3];
      v173 = v147[4];
      v174 = __swift_project_boxed_opaque_existential_1(v147, v172);
      MEMORY[0x1EEE9AC00](v174, v175);
      MEMORY[0x1EEE9AC00](v176, v177);
      *(&v209 - 4) = sub_1D5B4AA6C;
      *(&v209 - 3) = 0;
      v207 = sub_1D6708A04;
      v208 = v169;
      v178 = v234;
      v180 = sub_1D5D2F7A4(v168, sub_1D615B49C, v179, sub_1D615B4A4, (&v209 - 6), v172, v173);
      v234 = v178;
      if (v178)
      {

        v166 = v218;
LABEL_52:
        v181 = v166;
        goto LABEL_69;
      }

      v182 = v180;

      if (v182)
      {
        v183 = v234;
        sub_1D5E08580(v217, v101, 7, 0, 0);
        v166 = v218;
        v106 = v226;
        v105 = v227;
        v234 = v183;
        if (v183)
        {

          goto LABEL_52;
        }
      }

      else
      {
        v166 = v218;
        v106 = v226;
        v105 = v227;
      }

      v160 = v209;
      v147 = v233;
    }

    v184 = v213 | (v214 << 16);

    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v185 = __swift_project_value_buffer(v106, qword_1EDFFCE80);
    v105(v215, v185, v106);
    swift_storeEnumTagMultiPayload();
    v233 = xmmword_1D72BAAB0;
    v237 = xmmword_1D72BAAB0;
    v238 = 0;
    LOBYTE(v235) = 0;
    v186 = swift_allocObject();
    v188 = v186;
    *(v186 + 16) = v233;
    *(v186 + 32) = v235;
    v189 = v210;
    *(v186 + 40) = v210;
    *(v186 + 48) = v160;
    if (BYTE2(v184) == 255)
    {

      sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

LABEL_70:
      v72 = v101;
      return sub_1D5D2CFE8(v72, sub_1D6685FEC);
    }

    *&v232 = &v209;
    v190 = v212;
    v235 = v212;
    LOWORD(v236) = v184;
    BYTE2(v236) = BYTE2(v184);
    MEMORY[0x1EEE9AC00](v186, v187);
    v231 = &v209 - 6;
    *(&v209 - 4) = sub_1D5B4AA6C;
    *(&v209 - 3) = 0;
    v207 = sub_1D6708A04;
    v208 = v188;
    v239 = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v233;
    *(v191 + 32) = v239;
    *(v191 + 40) = v189;
    *(v191 + 48) = v160;
    swift_retain_n();
    sub_1D62B7DCC(v190, v184);
    v192 = sub_1D72647CC();
    v239 = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v233;
    *(v193 + 40) = v239;
    v194 = v147[3];
    v195 = v147[4];
    v196 = __swift_project_boxed_opaque_existential_1(v147, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    v200 = v231;
    *(&v209 - 4) = sub_1D615B4A4;
    *(&v209 - 3) = v200;
    v207 = sub_1D6708A04;
    v208 = v191;
    v201 = v215;
    v202 = v234;
    v204 = sub_1D5D2F7A4(v215, sub_1D615B49C, v203, sub_1D615B4A4, (&v209 - 6), v194, v195);
    v234 = v202;
    if (v202)
    {
    }

    else
    {
      v205 = v204;

      if (v205)
      {
        sub_1D610BD84();
        v206 = v234;
        sub_1D72647EC();
        v234 = v206;
      }
    }

    sub_1D610CA74(v235, v236, SBYTE2(v236), sub_1D60CF6A8, sub_1D60CF6DC);
    v181 = v201;
LABEL_69:
    sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  return sub_1D5D2CFE8(v35, sub_1D6685FEC);
}

uint64_t sub_1D648EE88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66882BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D648EEC0(uint64_t a1)
{
  v2 = sub_1D5C4C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648EEFC(uint64_t a1)
{
  v2 = sub_1D5C4C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDecorationContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v101 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v99 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v100 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v98 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v103 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v102 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v97 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v97 = &v97 - v32;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v2;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatDecorationContent, &type metadata for FormatCodingKeys, v41, v38, &type metadata for FormatDecorationContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v39, v36, v40, &off_1F51F6C78);
  v42 = v37 >> 60;
  if ((v37 >> 60) > 3)
  {
    if (v42 <= 5)
    {
      v43 = v36;
      if (v42 == 4)
      {
        v66 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v109[6] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v109[7] = v66;
        v109[8] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v110 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
        v67 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v109[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v109[3] = v67;
        v68 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v109[4] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v109[5] = v68;
        v69 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v109[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v109[1] = v69;
        sub_1D62B4EA4(v109, v104);
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCDC8);
        v51 = v98;
        (*(*(v70 - 8) + 16))(v98, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6395250(5, v109, v51);
        sub_1D62B4F00(v109);
      }

      else
      {
        v87 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D5B58478(0);
        v89 = *(v88 + 48);
        v90 = v100;
        v91 = &v100[*(v88 + 64)];
        sub_1D6086744(v87);
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD50);
        v94 = *(*(v92 - 8) + 16);
        v94(v90, v93, v92);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v95 = __swift_project_value_buffer(v92, qword_1EDFFCE68);
        v94(v90 + v89, v95, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        *v91 = 0;
        *(v91 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1D6395418(6, v87, v90);
        sub_1D6086768(v87);
        v51 = v90;
      }

      goto LABEL_42;
    }

    v43 = v36;
    if (v42 == 6)
    {
      v72 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v74 = qword_1EDF31F08;

      if (v74 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCDE0);
      v51 = v99;
      (*(*(v75 - 8) + 16))(v99, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63955AC(7, v72, v73, v51);
    }

    else
    {
      if (v42 != 7)
      {
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v85 = sub_1D725BD1C();
        v86 = __swift_project_value_buffer(v85, qword_1EDFFCDE0);
        v51 = v97;
        (*(*(v85 - 8) + 16))(v97, v86, v85);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D641CD20(0, v51);
        goto LABEL_42;
      }

      v44 = v37 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v47 = *(v44 + 32);
      v48 = qword_1EDF31F08;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCDE0);
      v51 = v101;
      (*(*(v49 - 8) + 16))(v101, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395780(8, v45, v46, v47, v51);
    }

LABEL_42:
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    v81 = v43;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v52 = v29;
  v53 = v25;
  v51 = v102;
  v54 = v103;
  if (v42 > 1)
  {
    v43 = v36;
    if (v42 == 2)
    {
      v60 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v106[4] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v106[5] = v60;
      v61 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v106[6] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v106[7] = v61;
      v62 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v106[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v106[1] = v62;
      v63 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v106[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v106[3] = v63;
      sub_1D60865E4(v106, v104);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCCE8);
      (*(*(v64 - 8) + 16))(v51, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6394F00(3, v106, v51);
      sub_1D6086640(v106);
    }

    else
    {
      v82 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v107 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v108[0] = v82;
      *(v108 + 9) = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x29);
      sub_1D66863E8(&v107, v104);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCD30);
      v51 = v54;
      (*(*(v83 - 8) + 16))(v54, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63950B0(4, &v107, v54);
      sub_1D6686444(&v107);
    }

    goto LABEL_42;
  }

  if (v42)
  {
    v77 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v105[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v105[1] = v77;
    v78 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v105[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v105[3] = v78;
    sub_1D6086694(v105, v104);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v79 = sub_1D725BD1C();
    v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
    (*(*(v79 - 8) + 16))(v53, v80, v79);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394D60(2, v105, v53);
    sub_1D60866F0(v105);
    v59 = v53;
  }

  else
  {
    v55 = *(v37 + 16);
    v56 = qword_1EDF31EB0;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
    (*(*(v57 - 8) + 16))(v52, v58, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394BCC(1, v55, v52);

    v59 = v52;
  }

  sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
  v81 = v36;
  return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
}

uint64_t sub_1D648FA98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974706D65;
    v6 = 0x746E656964617267;
    if (a1 != 2)
    {
      v6 = 0x72476C6169646172;
    }

    if (a1)
    {
      v5 = 0x726F6C6F63;
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
    v1 = 0x656E696873;
    v2 = 0x726F7463656C6573;
    if (a1 != 7)
    {
      v2 = 0x7463656C65736E75;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E726574746170;
    if (a1 != 4)
    {
      v3 = 1633905005;
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

uint64_t sub_1D648FBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1D7264A0C();
  a3(v7, v5);
  return sub_1D7264A5C();
}

uint64_t sub_1D648FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1D7264A0C();
  a4(v8, v6);
  return sub_1D7264A5C();
}

uint64_t sub_1D648FC8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D648FA98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatDimensionSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D6686498(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v76 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C71ACC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF252D8, sub_1D5C71ACC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatDimensionSizing, v19, v21, v16, &type metadata for FormatDimensionSizing, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v79 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v85 = 0;
  v29 = swift_allocObject();
  v82 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v85;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v84 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708A08;
  v69 = v31;
  v85 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v85;
  v75 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D668652C(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF032E8, sub_1D668652C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v81 = v34;
  v36 = sub_1D72647CC();
  v85 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v85;
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
  v68 = sub_1D6708A08;
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

    v50 = sub_1D61F84CC();
    sub_1D72647EC();
    v70 = v50;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v52 = v77;
    v74(v77, v49, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v82 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v75;
    v55 = v83;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708A08;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v71 + 3);
    v62 = *(v71 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v71, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708A08;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6686498);
}

unint64_t sub_1D6490570(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274654D746E6F66;
    v6 = 0x4664657A69736572;
    if (a1 != 8)
    {
      v6 = 0x61746E6563726570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0x747265766E69;
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
    v1 = 0x6465786966;
    v2 = 0x736E6D756C6F63;
    v3 = 1819044198;
    if (a1 != 3)
    {
      v3 = 0x69466F54657A6973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x694664656C616373;
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

uint64_t sub_1D64906C8(uint64_t a1)
{
  v2 = sub_1D5C81764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6490704(uint64_t a1)
{
  v2 = sub_1D5C81764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64907A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6490570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatDirectionalGradient.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
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
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    v12 = v6;
    v13 = v31;
    v14 = v32;
    v15 = v9;
    if (v11)
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
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5114B98;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v15, v12);
          goto LABEL_9;
        }
      }
    }

    sub_1D6686624();
    v58 = 0;
    v59 = 0;
    sub_1D726431C();
    v24 = (v13 + 8);
    v41 = xmmword_1D7279980;
    if (v60)
    {
      sub_1D6676230();
      sub_1D726431C();
      (*v24)(v15, v12);
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      sub_1D5C326F0(&v33);
      v54 = v37;
      v55 = v38;
      v56 = v39;
      v57 = v40;
      v50 = v33;
      v51 = v34;
      v25 = v35;
      v26 = v36;
    }

    else
    {
      sub_1D5C4C9E8();
      sub_1D726431C();
      (*v24)(v15, v12);
      v42 = v33;
      v43 = v34;
      v44 = v35;
      v45 = v36;
      sub_1D5C32704(&v42);
      v54 = v46;
      v55 = v47;
      v56 = v48;
      v57 = v49;
      v50 = v42;
      v51 = v43;
      v25 = v44;
      v26 = v45;
    }

    v52 = v25;
    v53 = v26;
    v27 = v55;
    v14[4] = v54;
    v14[5] = v27;
    v28 = v57;
    v14[6] = v56;
    v14[7] = v28;
    v29 = v51;
    *v14 = v50;
    v14[1] = v29;
    v30 = v53;
    v14[2] = v52;
    v14[3] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDirectionalGradient.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatDirectionalGradient, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatDirectionalGradient, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v15, v18, &off_1F51F6BF8);
  v20 = v2[5];
  v39[4] = v2[4];
  v39[5] = v20;
  v21 = v2[7];
  v39[6] = v2[6];
  v39[7] = v21;
  v22 = v2[1];
  v39[0] = *v2;
  v39[1] = v22;
  v23 = v2[3];
  v39[2] = v2[2];
  v39[3] = v23;
  LODWORD(a1) = sub_1D6011280(v39);
  v24 = sub_1D5D756C8(v39);
  if (a1 == 1)
  {
    v25 = v24[5];
    v38[4] = v24[4];
    v38[5] = v25;
    v26 = v24[7];
    v38[6] = v24[6];
    v38[7] = v26;
    v27 = v24[1];
    v38[0] = *v24;
    v38[1] = v27;
    v28 = v24[3];
    v38[2] = v24[2];
    v38[3] = v28;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
    (*(*(v29 - 8) + 16))(v7, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390BC4(1, v38, v7);
    v31 = v7;
  }

  else
  {
    v32 = v24[1];
    v37[0] = *v24;
    v37[1] = v32;
    v33 = v24[3];
    v37[2] = v24[2];
    v37[3] = v33;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
    (*(*(v34 - 8) + 16))(v11, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390A24(0, v37, v11);
    v31 = v11;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6490FA0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C6169646172;
  }

  else
  {
    v2 = 0x7261656E696CLL;
  }

  if (*a2)
  {
    v3 = 0x6C6169646172;
  }

  else
  {
    v3 = 0x7261656E696CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6491020()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6491090(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64910E4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D649115C(uint64_t *a1@<X8>)
{
  v2 = 0x7261656E696CLL;
  if (*v1)
  {
    v2 = 0x6C6169646172;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t FormatDismissAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D6686678(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668670C(0);
  sub_1D5B58B84(&qword_1EC886AD8, sub_1D668670C, &unk_1D7321584);
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

  v13 = v31;
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

      v22 = sub_1D661A650();
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

  sub_1D667CF44();
  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v30;
  v18 = v28;
  v19 = v29;
  *v13 = v27;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDismissAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668688C(0);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v49 = v1[1];
  v50 = v11;
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = *(v1 + 24);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D668670C(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC886AD8, sub_1D668670C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatDismissAction, v18, v20, v15, &type metadata for FormatDismissAction, v18, &type metadata for FormatVersions.LuckCheer, v16, v10, v19, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCC90);
  (*(*(v21 - 8) + 16))(v6, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v57 = v49;
  v56 = v50;
  v58 = v12;
  v59 = v13;
  v60 = v14;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *&v50 = v6;
  v23 = v51;
  v24 = &v10[*(v51 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v61 = 0;
  v27 = swift_allocObject();
  *&v49 = v48;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v61;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v48[-4] = sub_1D5B4AA6C;
  v48[-3] = 0;
  v46 = sub_1D6708A0C;
  v47 = v29;
  v61 = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v61;
  *(v30 + 40) = v26;
  *(v30 + 48) = v25;
  sub_1D6686920(0);
  v32 = v31;
  sub_1D5B58B84(&qword_1EC886AF0, sub_1D6686920, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v48[1] = v32;
  v33 = sub_1D72647CC();
  v61 = 0;
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 16) = v33;
  *(v34 + 40) = v61;
  v35 = *(v23 + 36);
  v36 = v50;
  v37 = *&v10[v35 + 24];
  v38 = *&v10[v35 + 32];
  v39 = __swift_project_boxed_opaque_existential_1(&v10[v35], v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v48[-4] = sub_1D615B4A4;
  v48[-3] = &v48[-6];
  v46 = sub_1D66869B4;
  v47 = v30;
  v43 = v52;
  sub_1D5D2BC70(v36, sub_1D615B49C, v44, sub_1D615B4A4, &v48[-6], v37, v38);
  if (v43)
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D6686A30();
    sub_1D72647EC();
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v10, sub_1D668688C);
}

uint64_t sub_1D6491A4C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1D6491A84(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73C1570 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D6491B7C(uint64_t a1)
{
  v2 = sub_1D66867E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6491BB8(uint64_t a1)
{
  v2 = sub_1D66867E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDurationFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatDurationFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatDurationFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  if (v15)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424E38(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424E38(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6491F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1735290732;
  }

  else
  {
    v3 = 0x74726F6873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1735290732;
  }

  else
  {
    v5 = 0x74726F6873;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D6491FBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6492034(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6492098(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6492118(uint64_t *a1@<X8>)
{
  v2 = 1735290732;
  if (!*v1)
  {
    v2 = 0x74726F6873;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatEdgeInsets.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v114 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v111 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v122 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v111 - v14;
  sub_1D6686AD8(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D5CD91DC(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF256C8, sub_1D5CD91DC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatEdgeInsets, v28, v30, v25, &type metadata for FormatEdgeInsets, v28, &type metadata for FormatVersions.JazzkonC, v26, v20, v29, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v119 = v32;
  v120 = v31;
  v117 = v33 + 16;
  v118 = v34;
  (v34)(v15);
  v116 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v131 = v22;
  v129 = 0uLL;
  v130 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v128 = 0;
  v38 = swift_allocObject();
  v126 = &v111;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v128;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  *(&v111 - 4) = sub_1D5B4AA6C;
  *(&v111 - 3) = 0;
  v109 = sub_1D6708A10;
  v110 = v40;
  v128 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v128;
  v121 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6686B6C(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF03778, sub_1D6686B6C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v123 = v44;
  v124 = v43;
  v45 = sub_1D72647CC();
  v128 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v128;
  v47 = &v20[*(v17 + 36)];
  v125 = v20;
  v48 = *(v47 + 3);
  v49 = *(v47 + 4);
  v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v111 - 4) = sub_1D615B4A4;
  *(&v111 - 3) = (&v111 - 6);
  v109 = sub_1D6686C00;
  v110 = v41;
  v54 = v127;
  sub_1D5D2BC70(v15, sub_1D615B49C, v55, sub_1D615B4A4, (&v111 - 6), v48, v49);
  if (v54)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    v58 = v125;
  }

  else
  {
    v112 = v47;
    v113 = v37;

    v56 = sub_1D5B578C4();
    v57 = v125;
    sub_1D72647EC();
    v111 = v56;
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    v60 = v122;
    v118(v122, v119, v120);
    swift_storeEnumTagMultiPayload();
    v131 = v21;
    v127 = xmmword_1D728CF30;
    v129 = xmmword_1D728CF30;
    v130 = 0;
    v128 = 0;
    v61 = swift_allocObject();
    v126 = &v111;
    *(v61 + 16) = v127;
    *(v61 + 32) = v128;
    v62 = v57;
    v63 = v121;
    v64 = v113;
    *(v61 + 40) = v121;
    *(v61 + 48) = v64;
    MEMORY[0x1EEE9AC00](v61, v65);
    *(&v111 - 4) = sub_1D5B4AA6C;
    *(&v111 - 3) = 0;
    v109 = sub_1D6708A10;
    v110 = v66;
    v128 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v127;
    *(v67 + 32) = v128;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v128 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v127;
    *(v69 + 40) = v128;
    v70 = *(v112 + 3);
    v71 = *(v112 + 4);
    v72 = __swift_project_boxed_opaque_existential_1(v112, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v111 - 4) = sub_1D615B4A4;
    *(&v111 - 3) = (&v111 - 6);
    sub_1D5D2BC70(v60, sub_1D615B49C, v76, sub_1D615B4A4, (&v111 - 6), v70, v71);

    sub_1D72647EC();
    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

    v77 = v115;
    v118(v115, v119, v120);
    swift_storeEnumTagMultiPayload();
    v131 = v24;
    v127 = xmmword_1D7297410;
    v129 = xmmword_1D7297410;
    v130 = 0;
    v128 = 0;
    v78 = swift_allocObject();
    v126 = &v111;
    *(v78 + 16) = v127;
    *(v78 + 32) = v128;
    v79 = v121;
    v80 = v113;
    *(v78 + 40) = v121;
    *(v78 + 48) = v80;
    MEMORY[0x1EEE9AC00](v78, v81);
    *(&v111 - 4) = sub_1D5B4AA6C;
    *(&v111 - 3) = 0;
    v109 = sub_1D6708A10;
    v110 = v82;
    v128 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v127;
    *(v83 + 32) = v128;
    *(v83 + 40) = v79;
    *(v83 + 48) = v80;
    swift_retain_n();
    v84 = sub_1D72647CC();
    v128 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v127;
    *(v85 + 40) = v128;
    v86 = *(v112 + 3);
    v87 = *(v112 + 4);
    v88 = __swift_project_boxed_opaque_existential_1(v112, v86);
    MEMORY[0x1EEE9AC00](v88, v89);
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v111 - 4) = sub_1D615B4A4;
    *(&v111 - 3) = (&v111 - 6);
    sub_1D5D2BC70(v77, sub_1D615B49C, v92, sub_1D615B4A4, (&v111 - 6), v86, v87);

    sub_1D72647EC();
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

    v93 = v114;
    v118(v114, v119, v120);
    swift_storeEnumTagMultiPayload();
    v131 = v23;
    v127 = xmmword_1D72BAA60;
    v129 = xmmword_1D72BAA60;
    v130 = 0;
    v128 = 0;
    v94 = swift_allocObject();
    v126 = &v111;
    *(v94 + 16) = v127;
    *(v94 + 32) = v128;
    v95 = v121;
    v96 = v113;
    *(v94 + 40) = v121;
    *(v94 + 48) = v96;
    MEMORY[0x1EEE9AC00](v94, v97);
    *(&v111 - 4) = sub_1D5B4AA6C;
    *(&v111 - 3) = 0;
    v109 = sub_1D6708A10;
    v110 = v98;
    v128 = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v127;
    *(v99 + 32) = v128;
    *(v99 + 40) = v95;
    *(v99 + 48) = v96;
    swift_retain_n();
    v100 = sub_1D72647CC();
    v128 = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v127;
    *(v101 + 40) = v128;
    v102 = *(v112 + 3);
    v103 = *(v112 + 4);
    v104 = __swift_project_boxed_opaque_existential_1(v112, v102);
    MEMORY[0x1EEE9AC00](v104, v105);
    MEMORY[0x1EEE9AC00](v106, v107);
    *(&v111 - 4) = sub_1D615B4A4;
    *(&v111 - 3) = (&v111 - 6);
    v109 = sub_1D6708A10;
    v110 = v99;
    sub_1D5D2BC70(v93, sub_1D615B49C, v108, sub_1D615B4A4, (&v111 - 6), v102, v103);

    sub_1D72647EC();
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

    v58 = v62;
  }

  return sub_1D5D2CFE8(v58, sub_1D6686AD8);
}

uint64_t sub_1D64930C4(uint64_t a1)
{
  v2 = sub_1D5CD98E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6493100(uint64_t a1)
{
  v2 = sub_1D5CD98E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatEdgeInsetsEquation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v117 = v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v119 = v113 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v127 = v113 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v113 - v14;
  sub_1D6686C7C(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v120 = v1[1];
  v22 = v1[3];
  v118 = v1[2];
  v116 = v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5CBED84(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25138, sub_1D5CBED84, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatEdgeInsetsEquation, v26, v28, v23, &type metadata for FormatEdgeInsetsEquation, v26, &type metadata for FormatVersions.JazzkonC, v24, v20, v27, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v124 = v30;
  v125 = v29;
  v122 = v31 + 16;
  v123 = v32;
  (v32)(v15);
  v121 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v136 = v21;
  v134 = 0uLL;
  v135 = 0;
  v33 = &v20[*(v17 + 44)];
  v34 = *v33;
  v35 = *(v33 + 1);
  v133 = 0;
  v36 = swift_allocObject();
  v131 = v113;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v133;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v113[-4] = sub_1D5B4AA6C;
  v113[-3] = 0;
  v111 = sub_1D6708A10;
  v112 = v38;
  v133 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v133;
  v126 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D6686D10(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF030C8, sub_1D6686D10, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v128 = v42;
  v129 = v41;
  v43 = sub_1D72647CC();
  v133 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v133;
  v45 = *(v17 + 36);
  v46 = v15;
  v47 = &v20[v45];
  v130 = v20;
  v48 = *&v20[v45 + 24];
  v49 = *&v20[v45 + 32];
  v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v113[-4] = sub_1D615B4A4;
  v113[-3] = &v113[-6];
  v111 = sub_1D6708A10;
  v112 = v39;
  v54 = v132;
  sub_1D5D2BC70(v46, sub_1D615B49C, v55, sub_1D615B4A4, &v113[-6], v48, v49);
  if (v54)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v60 = v130;
  }

  else
  {
    v114 = v47;
    v115 = v35;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v57 = v56;
    v58 = sub_1D66582DC();
    v59 = v130;
    sub_1D72647EC();
    v113[0] = v58;
    v113[1] = v57;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v62 = v59;
    v63 = v127;
    v123(v127, v124, v125);
    swift_storeEnumTagMultiPayload();
    v136 = v120;
    v132 = xmmword_1D728CF30;
    v134 = xmmword_1D728CF30;
    v135 = 0;
    v133 = 0;
    v64 = swift_allocObject();
    v131 = v113;
    *(v64 + 16) = v132;
    *(v64 + 32) = v133;
    v65 = v126;
    v66 = v115;
    *(v64 + 40) = v126;
    *(v64 + 48) = v66;
    MEMORY[0x1EEE9AC00](v64, v67);
    v113[-4] = sub_1D5B4AA6C;
    v113[-3] = 0;
    v111 = sub_1D6708A10;
    v112 = v68;
    v133 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v132;
    *(v69 + 32) = v133;
    *(v69 + 40) = v65;
    *(v69 + 48) = v66;
    swift_retain_n();
    v70 = sub_1D72647CC();
    v133 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v132;
    *(v71 + 40) = v133;
    v72 = *(v114 + 3);
    v73 = *(v114 + 4);
    v74 = __swift_project_boxed_opaque_existential_1(v114, v72);
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    v113[-4] = sub_1D615B4A4;
    v113[-3] = &v113[-6];
    sub_1D5D2BC70(v63, sub_1D615B49C, v78, sub_1D615B4A4, &v113[-6], v72, v73);

    sub_1D72647EC();
    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    v79 = v119;
    v123(v119, v124, v125);
    swift_storeEnumTagMultiPayload();
    v136 = v118;
    v132 = xmmword_1D7297410;
    v134 = xmmword_1D7297410;
    v135 = 0;
    v133 = 0;
    v80 = swift_allocObject();
    v131 = v113;
    *(v80 + 16) = v132;
    *(v80 + 32) = v133;
    v81 = v126;
    v82 = v115;
    *(v80 + 40) = v126;
    *(v80 + 48) = v82;
    MEMORY[0x1EEE9AC00](v80, v83);
    v113[-4] = sub_1D5B4AA6C;
    v113[-3] = 0;
    v111 = sub_1D6708A10;
    v112 = v84;
    v133 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v132;
    *(v85 + 32) = v133;
    *(v85 + 40) = v81;
    *(v85 + 48) = v82;
    swift_retain_n();
    v86 = sub_1D72647CC();
    v133 = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v132;
    *(v87 + 40) = v133;
    v88 = *(v114 + 3);
    v89 = *(v114 + 4);
    v90 = __swift_project_boxed_opaque_existential_1(v114, v88);
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    v113[-4] = sub_1D615B4A4;
    v113[-3] = &v113[-6];
    sub_1D5D2BC70(v79, sub_1D615B49C, v94, sub_1D615B4A4, &v113[-6], v88, v89);

    sub_1D72647EC();
    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

    v95 = v117;
    v123(v117, v124, v125);
    swift_storeEnumTagMultiPayload();
    v136 = v116;
    v132 = xmmword_1D72BAA60;
    v134 = xmmword_1D72BAA60;
    v135 = 0;
    v133 = 0;
    v96 = swift_allocObject();
    v131 = v113;
    *(v96 + 16) = v132;
    *(v96 + 32) = v133;
    v97 = v126;
    v98 = v115;
    *(v96 + 40) = v126;
    *(v96 + 48) = v98;
    MEMORY[0x1EEE9AC00](v96, v99);
    v113[-4] = sub_1D5B4AA6C;
    v113[-3] = 0;
    v111 = sub_1D6708A10;
    v112 = v100;
    v133 = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v132;
    *(v101 + 32) = v133;
    *(v101 + 40) = v97;
    *(v101 + 48) = v98;
    swift_retain_n();
    v102 = sub_1D72647CC();
    v133 = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v132;
    *(v103 + 40) = v133;
    v104 = *(v114 + 3);
    v105 = *(v114 + 4);
    v106 = __swift_project_boxed_opaque_existential_1(v114, v104);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    v113[-4] = sub_1D615B4A4;
    v113[-3] = &v113[-6];
    v111 = sub_1D6708A10;
    v112 = v101;
    sub_1D5D2BC70(v95, sub_1D615B49C, v110, sub_1D615B4A4, &v113[-6], v104, v105);

    sub_1D72647EC();
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

    v60 = v62;
  }

  return sub_1D5D2CFE8(v60, sub_1D6686C7C);
}

uint64_t sub_1D6494038(uint64_t a1)
{
  v2 = sub_1D5CBEF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6494074(uint64_t a1)
{
  v2 = sub_1D5CBEF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatEnumPropertyDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v260 = &v254 - v6;
  v261 = sub_1D725B76C();
  v259 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261, v7);
  v258 = &v254 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v262 = &v254 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v257 = &v254 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v263 = (&v254 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v264 = (&v254 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v265 = (&v254 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v266 = &v254 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v267 = &v254 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v268 = (&v254 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v269 = (&v254 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v277 = (&v254 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v254 - v41;
  sub_1D6686E08(0);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v254 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v50 = type metadata accessor for FormatEnumPropertyDefinition(0);
  sub_1D5CE8314(0);
  v52 = v51;
  v53 = sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314, &unk_1D7321584);
  v256 = v50;
  sub_1D5D2EE70(v50, v52, v54, v48, v50, v52, &type metadata for FormatVersions.JazzkonC, v49, v47, v53, &off_1F51F6C78);
  v55 = *v2;
  v56 = v2[1];
  v270 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v57 = sub_1D725BD1C();
  v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
  v59 = *(v57 - 8);
  v60 = *(v59 + 16);
  v274 = v58;
  v271 = v60;
  v272 = v57;
  v276 = v59 + 16;
  (v60)(v42);
  v275 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v286 = v55;
  v287 = v56;
  v284 = 0uLL;
  v285 = 0;
  v61 = &v47[*(v44 + 44)];
  v62 = *v61;
  v63 = *(v61 + 1);
  v288 = 0;
  v64 = swift_allocObject();
  v281 = &v254;
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v288;
  *(v64 + 40) = v62;
  *(v64 + 48) = v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v280 = &v254 - 6;
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v66;
  v288 = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v288;
  v273 = v62;
  *(v67 + 40) = v62;
  *(v67 + 48) = v63;
  sub_1D6686E9C(0);
  v69 = v68;
  v70 = sub_1D5B58B84(&qword_1EDF02E48, sub_1D6686E9C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v278 = v69;
  v279 = v70;
  v71 = sub_1D72647CC();
  v288 = 0;
  v72 = swift_allocObject();
  *(v72 + 24) = 0;
  *(v72 + 32) = 0;
  *(v72 + 16) = v71;
  *(v72 + 40) = v288;
  v73 = *(v44 + 36);
  v74 = v42;
  v283 = v47;
  v75 = &v47[v73];
  v76 = *&v47[v73 + 24];
  v77 = *&v47[v73 + 32];
  v78 = __swift_project_boxed_opaque_existential_1(&v47[v73], v76);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v82 = v280;
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = v82;
  v252 = sub_1D6708A14;
  v253 = v67;
  v83 = v282;
  sub_1D5D2BC70(v74, sub_1D615B49C, v84, sub_1D615B4A4, (&v254 - 6), v76, v77);
  if (v83)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

    v85 = v283;
LABEL_6:
    v104 = v85;
    return sub_1D5D2CFE8(v104, sub_1D6686E08);
  }

  v255 = v75;
  v280 = v63;

  sub_1D72647EC();
  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

  v86 = v270[2];
  v87 = v270[3];
  v271(v277, v274, v272);
  swift_storeEnumTagMultiPayload();
  v286 = v86;
  v287 = v87;
  v282 = xmmword_1D728CF30;
  v284 = xmmword_1D728CF30;
  v285 = 0;
  v288 = 0;
  v88 = swift_allocObject();
  v281 = &v254;
  *(v88 + 16) = v282;
  *(v88 + 32) = v288;
  v89 = v273;
  v90 = v280;
  *(v88 + 40) = v273;
  *(v88 + 48) = v90;
  MEMORY[0x1EEE9AC00](v88, v91);
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v92;
  v288 = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v282;
  *(v93 + 32) = v288;
  *(v93 + 40) = v89;
  *(v93 + 48) = v90;
  swift_retain_n();
  v94 = sub_1D72647CC();
  v288 = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = v282;
  *(v95 + 40) = v288;
  v96 = *(v255 + 3);
  v97 = *(v255 + 4);
  v98 = __swift_project_boxed_opaque_existential_1(v255, v96);
  MEMORY[0x1EEE9AC00](v98, v99);
  MEMORY[0x1EEE9AC00](v100, v101);
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = (&v254 - 6);
  v102 = v277;
  v252 = sub_1D6708A14;
  v253 = v93;
  sub_1D5D2BC70(v277, sub_1D615B49C, v103, sub_1D615B4A4, (&v254 - 6), v96, v97);

  sub_1D72647EC();
  sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

  v106 = v270[4];
  v107 = v270[5];
  v271(v269, v274, v272);
  swift_storeEnumTagMultiPayload();
  v286 = v106;
  v287 = v107;
  v282 = xmmword_1D7297410;
  v284 = xmmword_1D7297410;
  v285 = 0;
  v288 = 0;
  v108 = swift_allocObject();
  v281 = &v254;
  *(v108 + 16) = v282;
  *(v108 + 32) = v288;
  v109 = v273;
  v110 = v280;
  *(v108 + 40) = v273;
  *(v108 + 48) = v110;
  MEMORY[0x1EEE9AC00](v108, v111);
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v112;
  v288 = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = v282;
  *(v113 + 32) = v288;
  *(v113 + 40) = v109;
  *(v113 + 48) = v110;
  swift_retain_n();
  v114 = sub_1D72647CC();
  v288 = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v282;
  *(v115 + 40) = v288;
  v116 = *(v255 + 3);
  v117 = *(v255 + 4);
  v118 = __swift_project_boxed_opaque_existential_1(v255, v116);
  MEMORY[0x1EEE9AC00](v118, v119);
  MEMORY[0x1EEE9AC00](v120, v121);
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = (&v254 - 6);
  v122 = v269;
  v252 = sub_1D6708A14;
  v253 = v113;
  sub_1D5D2BC70(v269, sub_1D615B49C, v123, sub_1D615B4A4, (&v254 - 6), v116, v117);

  sub_1D72647EC();
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

  v124 = v270;
  v125 = v271;
  v126 = v270[6];
  v127 = v270[7];
  v128 = v268;
  v129 = v272;
  v271(v268, v274, v272);
  swift_storeEnumTagMultiPayload();
  v282 = xmmword_1D72BAA60;
  v284 = xmmword_1D72BAA60;
  v285 = 0;
  LOBYTE(v286) = 0;
  v130 = swift_allocObject();
  v132 = v130;
  v133 = v127;
  *(v130 + 16) = v282;
  *(v130 + 32) = v286;
  v134 = v273;
  v135 = v280;
  *(v130 + 40) = v273;
  *(v130 + 48) = v135;
  if (v133)
  {
    v281 = &v254;
    v286 = v126;
    v287 = v133;
    MEMORY[0x1EEE9AC00](v130, v131);
    v136 = v134;
    *(&v254 - 4) = sub_1D5B4AA6C;
    *(&v254 - 3) = 0;
    v252 = sub_1D6708A14;
    v253 = v132;
    v288 = 0;
    v138 = v137;
    v139 = swift_allocObject();
    *(v139 + 16) = v282;
    *(v139 + 32) = v288;
    *(v139 + 40) = v136;
    *(v139 + 48) = v135;
    swift_retain_n();

    v140 = sub_1D72647CC();
    v288 = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v282;
    *(v141 + 40) = v288;
    v142 = *(v255 + 3);
    v143 = *(v255 + 4);
    v144 = __swift_project_boxed_opaque_existential_1(v255, v142);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v254 - 4) = sub_1D615B4A4;
    *(&v254 - 3) = (&v254 - 6);
    v252 = sub_1D6708A14;
    v253 = v139;
    v149 = sub_1D5D2F7A4(v128, sub_1D615B49C, v148, sub_1D615B4A4, (&v254 - 6), v142, v143);
    v150 = v149;
    *&v282 = v138;

    if (v150)
    {
      sub_1D72647EC();
      v135 = v280;
      v129 = v272;
      v134 = v273;
      v125 = v271;
      v281 = 0;

      sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);
      v124 = v270;
    }

    else
    {
      v281 = 0;

      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
      v124 = v270;
      v125 = v271;
      v135 = v280;
      v129 = v272;
      v134 = v273;
    }
  }

  else
  {
    v281 = 0;

    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
  }

  v151 = v124[8];
  v152 = v124[9];
  v125(v267, v274, v129);
  swift_storeEnumTagMultiPayload();
  v286 = v151;
  v287 = v152;
  v282 = xmmword_1D72BAA70;
  v284 = xmmword_1D72BAA70;
  v285 = 0;
  v288 = 0;
  v153 = swift_allocObject();
  v277 = &v254;
  *(v153 + 16) = v282;
  *(v153 + 32) = v288;
  *(v153 + 40) = v134;
  *(v153 + 48) = v135;
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v155;
  v288 = 0;
  v156 = swift_allocObject();
  *(v156 + 16) = v282;
  *(v156 + 32) = v288;
  *(v156 + 40) = v134;
  *(v156 + 48) = v135;
  swift_retain_n();
  v85 = v283;
  v157 = sub_1D72647CC();
  v288 = 0;
  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  *(v158 + 24) = v282;
  *(v158 + 40) = v288;
  v159 = *(v255 + 3);
  v160 = *(v255 + 4);
  v161 = __swift_project_boxed_opaque_existential_1(v255, v159);
  MEMORY[0x1EEE9AC00](v161, v162);
  MEMORY[0x1EEE9AC00](v163, v164);
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = (&v254 - 6);
  v165 = v267;
  v252 = sub_1D6708A14;
  v253 = v156;
  v166 = v281;
  sub_1D5D2BC70(v267, sub_1D615B49C, v167, sub_1D615B4A4, (&v254 - 6), v159, v160);
  if (v166)
  {
    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

    goto LABEL_6;
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

  v168 = *(v270 + 80);
  v169 = v266;
  v271(v266, v274, v272);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v286) = v168;
  v282 = xmmword_1D72BAA80;
  v284 = xmmword_1D72BAA80;
  v285 = 0;
  v288 = 0;
  v170 = swift_allocObject();
  v281 = &v254;
  *(v170 + 16) = v282;
  *(v170 + 32) = v288;
  v171 = v273;
  v172 = v280;
  *(v170 + 40) = v273;
  *(v170 + 48) = v172;
  MEMORY[0x1EEE9AC00](v170, v173);
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v174;
  v288 = 0;
  v175 = swift_allocObject();
  *(v175 + 16) = v282;
  *(v175 + 32) = v288;
  *(v175 + 40) = v171;
  *(v175 + 48) = v172;
  swift_retain_n();
  v176 = sub_1D72647CC();
  v288 = 0;
  v177 = swift_allocObject();
  *(v177 + 16) = v176;
  *(v177 + 24) = v282;
  *(v177 + 40) = v288;
  v178 = *(v255 + 3);
  v179 = *(v255 + 4);
  v180 = __swift_project_boxed_opaque_existential_1(v255, v178);
  MEMORY[0x1EEE9AC00](v180, v181);
  MEMORY[0x1EEE9AC00](v182, v183);
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = (&v254 - 6);
  v252 = sub_1D6708A14;
  v253 = v175;
  sub_1D5D2BC70(v169, sub_1D615B49C, v184, sub_1D615B4A4, (&v254 - 6), v178, v179);

  sub_1D72647EC();
  sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

  v185 = v270[11];
  v186 = v270[12];
  v271(v265, v274, v272);
  swift_storeEnumTagMultiPayload();
  v282 = xmmword_1D72BAA90;
  v284 = xmmword_1D72BAA90;
  v285 = 0;
  LOBYTE(v286) = 0;
  v187 = swift_allocObject();
  v189 = v187;
  *(v187 + 16) = v282;
  *(v187 + 32) = v286;
  v190 = v280;
  *(v187 + 40) = v273;
  *(v187 + 48) = v190;
  if (v186)
  {
    v286 = v185;
    v287 = v186;
    MEMORY[0x1EEE9AC00](v187, v188);
    *(&v254 - 4) = sub_1D5B4AA6C;
    *(&v254 - 3) = 0;
    v252 = sub_1D6708A14;
    v253 = v189;
    v288 = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = v282;
    *(v191 + 32) = v288;
    *(v191 + 40) = v273;
    *(v191 + 48) = v280;
    swift_retain_n();

    v192 = sub_1D72647CC();
    v288 = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v282;
    *(v193 + 40) = v288;
    v194 = *(v255 + 3);
    v195 = *(v255 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v255, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v254 - 4) = sub_1D615B4A4;
    *(&v254 - 3) = (&v254 - 6);
    v252 = sub_1D6708A14;
    v253 = v191;
    v201 = sub_1D5D2F7A4(v265, sub_1D615B49C, v200, sub_1D615B4A4, (&v254 - 6), v194, v195);

    if (v201)
    {
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v265, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v265, type metadata accessor for FormatVersionRequirement);
  }

  v202 = v270[13];
  v203 = v264;
  v271(v264, v274, v272);
  swift_storeEnumTagMultiPayload();
  v286 = v202;
  v282 = xmmword_1D72BAAA0;
  v284 = xmmword_1D72BAAA0;
  v285 = 0;
  v288 = 0;
  v204 = swift_allocObject();
  *(v204 + 16) = v282;
  *(v204 + 32) = v288;
  v205 = v273;
  v206 = v280;
  *(v204 + 40) = v273;
  *(v204 + 48) = v206;
  MEMORY[0x1EEE9AC00](v204, v207);
  *(&v254 - 4) = sub_1D5B4AA6C;
  *(&v254 - 3) = 0;
  v252 = sub_1D6708A14;
  v253 = v208;
  v288 = 0;
  v209 = swift_allocObject();
  *(v209 + 16) = v282;
  *(v209 + 32) = v288;
  *(v209 + 40) = v205;
  *(v209 + 48) = v206;
  swift_retain_n();
  v210 = sub_1D72647CC();
  v288 = 0;
  v211 = swift_allocObject();
  *(v211 + 16) = v210;
  *(v211 + 24) = v282;
  *(v211 + 40) = v288;
  v212 = *(v255 + 3);
  v213 = *(v255 + 4);
  v214 = __swift_project_boxed_opaque_existential_1(v255, v212);
  MEMORY[0x1EEE9AC00](v214, v215);
  MEMORY[0x1EEE9AC00](v216, v217);
  *(&v254 - 4) = sub_1D615B4A4;
  *(&v254 - 3) = (&v254 - 6);
  v252 = sub_1D6708A14;
  v253 = v209;
  sub_1D5D2BC70(v203, sub_1D615B49C, v218, sub_1D615B4A4, (&v254 - 6), v212, v213);

  sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
  sub_1D6686F30();
  sub_1D72647EC();
  sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);

  v219 = *(v270 + 112);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v220 = v272;
  v221 = __swift_project_value_buffer(v272, qword_1EDFFCD50);
  v271(v263, v221, v220);
  swift_storeEnumTagMultiPayload();
  if (v219 & 1) != 0 && (LOBYTE(v284) = 0, v222 = swift_allocObject(), v282 = xmmword_1D72BAAB0, *(v222 + 16) = xmmword_1D72BAAB0, *(v222 + 32) = v284, *(v222 + 40) = v273, *(v222 + 48) = v280, , v223 = sub_1D72647CC(), LOBYTE(v284) = 0, v224 = swift_allocObject(), *(v224 + 16) = v223, *(v224 + 24) = v282, *(v224 + 40) = v284, v225 = *(v255 + 3), v226 = *(v255 + 4), v227 = __swift_project_boxed_opaque_existential_1(v255, v225), MEMORY[0x1EEE9AC00](v227, v228), MEMORY[0x1EEE9AC00](v229, v230), *(&v254 - 4) = sub_1D5B4AA6C, *(&v254 - 3) = 0, v252 = sub_1D6708A14, v253 = v222, LOBYTE(v225) = sub_1D5D2F7A4(v263, sub_1D615B49C, v231, sub_1D615B4A4, (&v254 - 6), v225, v226), , , (v225))
  {
    v284 = v282;
    v285 = 0;
    LOBYTE(v286) = 1;
    sub_1D72647EC();
    sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v232 = v272;
  v233 = __swift_project_value_buffer(v272, qword_1EDFFCD80);
  v234 = v257;
  v235 = v271;
  v271(v257, v233, v232);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);
  v236 = *(v256 + 56);
  v235(v262, v233, v232);
  swift_storeEnumTagMultiPayload();
  v282 = xmmword_1D72BAAD0;
  v284 = xmmword_1D72BAAD0;
  v285 = 0;
  LOBYTE(v286) = 0;
  v237 = swift_allocObject();
  *(v237 + 16) = v282;
  *(v237 + 32) = v286;
  v238 = v280;
  *(v237 + 40) = v273;
  *(v237 + 48) = v238;
  v239 = v260;
  sub_1D5CDE2EC(v270 + v236, v260, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v259 + 48))(v239, 1, v261) != 1)
  {
    v240 = (*(v259 + 32))(v258, v260, v261);
    MEMORY[0x1EEE9AC00](v240, v241);
    *(&v254 - 4) = sub_1D5B4AA6C;
    *(&v254 - 3) = 0;
    v252 = sub_1D6708A14;
    v253 = v237;
    LOBYTE(v286) = 0;
    v242 = swift_allocObject();
    *(v242 + 16) = v282;
    *(v242 + 32) = v286;
    *(v242 + 40) = v273;
    *(v242 + 48) = v280;
    swift_retain_n();
    v243 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v244 = swift_allocObject();
    *(v244 + 16) = v243;
    *(v244 + 24) = v282;
    *(v244 + 40) = v286;
    v245 = *(v255 + 3);
    v246 = *(v255 + 4);
    v247 = __swift_project_boxed_opaque_existential_1(v255, v245);
    MEMORY[0x1EEE9AC00](v247, v248);
    MEMORY[0x1EEE9AC00](v249, v250);
    *(&v254 - 4) = sub_1D615B4A4;
    *(&v254 - 3) = (&v254 - 6);
    v252 = sub_1D6687020;
    v253 = v242;
    LOBYTE(v245) = sub_1D5D2F7A4(v262, sub_1D615B49C, v251, sub_1D615B4A4, (&v254 - 6), v245, v246);

    if (v245)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v259 + 8))(v258, v261);
    sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
    v104 = v283;
    return sub_1D5D2CFE8(v104, sub_1D6686E08);
  }

  sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v283, sub_1D6686E08);
  return sub_1D5D35558(v260, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D649672C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66887A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6496764(uint64_t a1)
{
  v2 = sub_1D5CE83EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64967A0(uint64_t a1)
{
  v2 = sub_1D5CE83EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatExpression.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v144 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v145 = &v133 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v143 = &v133 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v140 = &v133 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v139 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v141 = &v133 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v138 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v136 = &v133 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v135 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v137 = &v133 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v133 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v133 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v134 = &v133 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v133 - v50;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v133 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v2;
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  v59 = sub_1D5C30408();
  v155 = v55;
  sub_1D5D2EE70(&type metadata for FormatExpression, &type metadata for FormatCodingKeys, v60, v57, &type metadata for FormatExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v58, v55, v59, &off_1F51F6C78);
  switch(v56 >> 60)
  {
    case 1uLL:
      v99 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v147[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v147[1] = v99;
      v148 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66874CC(v147, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCD30);
      v102 = v134;
      (*(*(v100 - 8) + 16))(v134, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v155;
      sub_1D63B4D68(1, v147, v102);
      sub_1D6687528(v147);
      v65 = v102;
      goto LABEL_32;
    case 2uLL:
      v87 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v88 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD30);
      (*(*(v89 - 8) + 16))(v44, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v91 = v88;
      v64 = v155;
      sub_1D63B4F08(2, v87, v91, v44);
      v65 = v44;
      goto LABEL_32;
    case 3uLL:
      v92 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v149[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v149[1] = v92;
      v150 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D668741C(v149, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      (*(*(v93 - 8) + 16))(v40, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B50A0(3, v149, v40);
      sub_1D6687478(v149);
      goto LABEL_54;
    case 4uLL:
      v75 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v151[3] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v151[4] = v75;
      v152[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *(v152 + 11) = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x6B);
      v76 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v151[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v151[1] = v76;
      v151[2] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D62B48E4(v151, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
      v40 = v137;
      (*(*(v77 - 8) + 16))(v137, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5240(4, v151, v40);
      sub_1D62B4940(v151);
      goto LABEL_54;
    case 5uLL:
      v104 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v105 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v106 = qword_1EDF31EB0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      v40 = v135;
      (*(*(v107 - 8) + 16))(v135, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B53F0(5, v104, v105, v40);
      goto LABEL_42;
    case 6uLL:
      v115 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v116 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v117 = qword_1EDF31EE8;

      if (v117 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD98);
      v40 = v136;
      (*(*(v118 - 8) + 16))(v136, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5584(6, v115, v116, v40);
      goto LABEL_42;
    case 7uLL:
      v95 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = qword_1EDF31EB0;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD30);
      v40 = v138;
      (*(*(v97 - 8) + 16))(v138, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5718(7, v95, v40);
      goto LABEL_53;
    case 8uLL:
      v127 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v129 = qword_1EDF31EB0;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD30);
      v40 = v141;
      (*(*(v130 - 8) + 16))(v141, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B58AC(8, v127, v128, v40);
      goto LABEL_52;
    case 9uLL:
      v82 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v83 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v84 = qword_1EDF31EB0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      v40 = v142;
      (*(*(v85 - 8) + 16))(v142, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5A40(9, v82, v83, v40);
LABEL_52:

LABEL_53:

      goto LABEL_54;
    case 0xAuLL:
      v120 = v56 & 0xFFFFFFFFFFFFFFFLL;
      v121 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v122 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v123 = *(v120 + 26);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD30);
      v40 = v139;
      (*(*(v124 - 8) + 16))(v139, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v123)
      {
        v126 = 0x10000;
      }

      else
      {
        v126 = 0;
      }

      v71 = v155;
      sub_1D63B5BD4(10, v121, v126 | v122, v40);
      goto LABEL_54;
    case 0xBuLL:
      v72 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
      v40 = v140;
      (*(*(v73 - 8) + 16))(v140, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5D74(11, v72, v40);
      goto LABEL_54;
    case 0xCuLL:
      v79 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v153 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v154[0] = v79;
      *(v154 + 9) = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x29);
      sub_1D668736C(&v153, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v40 = v143;
      (*(*(v80 - 8) + 16))(v143, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5F08(12, &v153, v40);
      sub_1D66873C8(&v153);
      goto LABEL_54;
    case 0xDuLL:
      v109 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v110 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v111 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v112 = qword_1EDF31EA8;

      if (v112 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD18);
      v40 = v145;
      (*(*(v113 - 8) + 16))(v145, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B60A8(13, v109, v110, v111, v40);

      goto LABEL_42;
    case 0xEuLL:
      v66 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v68 = qword_1EDF31ED0;

      if (v68 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
      v40 = v144;
      (*(*(v69 - 8) + 16))(v144, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B6240(14, v66, v67, v40);
LABEL_42:

LABEL_54:
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
      v103 = v71;
      break;
    default:
      v61 = *(v56 + 16);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
      (*(*(v62 - 8) + 16))(v51, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v155;
      sub_1D64859C4(0, v61, v51);
      v65 = v51;
LABEL_32:
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      v103 = v64;
      break;
  }

  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

unint64_t sub_1D64978D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5CC14F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatFile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for FormatBindingContent(0);
  MEMORY[0x1EEE9AC00](v78, v3);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v73, v5);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v72, v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v76 = v10;
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v18 = v89;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();
  }

  else
  {
    v71 = v9;
    v89 = v17;
    v20 = v77;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = sub_1D7264AFC();
    v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

    v23 = v76;
    v24 = v13;
    if (v22)
    {
      v25 = sub_1D726433C();
      v26 = (v25 + 40);
      v27 = *(v25 + 16) + 1;
      while (--v27)
      {
        v28 = v26 + 2;
        v29 = *v26;
        v26 += 2;
        if (v29 >= 4)
        {
          v30 = *(v28 - 3);

          sub_1D5E2D970();
          v19 = swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 16) = &unk_1F5114C88;
          *(v31 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v79 + 8))(v24, v23);
          goto LABEL_9;
        }
      }
    }

    sub_1D668757C();
    *&v81[8] = 0;
    *v81 = 0;
    sub_1D726431C();
    v33 = v79;
    v34 = v75;
    switch(v80)
    {
      case 1:
        v80 = xmmword_1D7279980;
        sub_1D5B4AB4C();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v57 = *&v85[32];
        v37 = v89;
        *(v89 + 6) = *&v85[16];
        *(v37 + 112) = v57;
        *(v37 + 128) = v86;
        v58 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v58;
        v59 = *v85;
        *(v37 + 64) = v84;
        *(v37 + 80) = v59;
        v60 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v60;
        break;
      case 2:
        v80 = xmmword_1D7279980;
        sub_1D5B4B754();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v49 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v49;
        *(v37 + 96) = *&v85[16];
        *(v37 + 105) = *&v85[25];
        v50 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v50;
        v51 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v51;
        break;
      case 3:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF456B8, type metadata accessor for FormatPackage, &protocol conformance descriptor for FormatPackage);
        v52 = v74;
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v63 = v52;
        v37 = v89;
        sub_1D5C8F76C(v63, v89, type metadata accessor for FormatPackage);
        break;
      case 4:
        v80 = xmmword_1D7279980;
        sub_1D66875D0();
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v39 = *&v81[8];
        v37 = v89;
        *v89 = *v81;
        *(v37 + 8) = v39;
        break;
      case 5:
        type metadata accessor for FormatSnippet();
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF455A8, type metadata accessor for FormatSnippet, &protocol conformance descriptor for FormatSnippet);
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v37 = v89;
        *v89 = v80;
        break;
      case 6:
        v80 = xmmword_1D7279980;
        sub_1D5B4AEC0();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v61 = v83;
        v37 = v89;
        *(v89 + 2) = v82;
        *(v37 + 48) = v61;
        *(v37 + 64) = v84;
        v62 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v62;
        break;
      case 7:
        v80 = xmmword_1D7279980;
        sub_1D5B4C658();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v53 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v53;
        *(v37 + 89) = *&v85[9];
        v55 = *&v81[16];
        v54 = v82;
        *v37 = *v81;
        *(v37 + 16) = v55;
        v56 = v83;
        *(v37 + 32) = v54;
        *(v37 + 48) = v56;
        break;
      case 8:
        v80 = xmmword_1D7279980;
        sub_1D5B4C754();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v68 = v83;
        v37 = v89;
        *(v89 + 2) = v82;
        *(v37 + 48) = v68;
        *(v37 + 64) = v84;
        *(v37 + 80) = v85[0];
        v69 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v69;
        break;
      case 9:
        v80 = xmmword_1D7279980;
        sub_1D5B4BD3C();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v45 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v45;
        *(v37 + 91) = *&v85[11];
        v47 = *&v81[16];
        v46 = v82;
        *v37 = *v81;
        *(v37 + 16) = v47;
        v48 = v83;
        *(v37 + 32) = v46;
        *(v37 + 48) = v48;
        break;
      case 10:
        v80 = xmmword_1D7279980;
        sub_1D5B564A8();
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v64 = *&v81[8];
        v65 = v83;
        v66 = *&v81[16];
        v67 = v82;
        v37 = v89;
        *v89 = *v81;
        *(v37 + 8) = v64;
        *(v37 + 16) = v66;
        *(v37 + 32) = v67;
        *(v37 + 48) = v65;
        break;
      case 11:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC882FA0, type metadata accessor for FormatBindingContent, &protocol conformance descriptor for FormatBindingContent);
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v38 = v34;
        v37 = v89;
        sub_1D5C8F76C(v38, v89, type metadata accessor for FormatBindingContent);
        break;
      case 12:
        v80 = xmmword_1D7279980;
        sub_1D5E32FE8();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v40 = v87;
        v37 = v89;
        *(v89 + 8) = v86;
        *(v37 + 144) = v40;
        *(v37 + 160) = *v88;
        *(v37 + 175) = *&v88[15];
        v41 = *v85;
        *(v37 + 64) = v84;
        *(v37 + 80) = v41;
        v42 = *&v85[32];
        *(v37 + 96) = *&v85[16];
        *(v37 + 112) = v42;
        v43 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v43;
        v44 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v44;
        break;
      default:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886260, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
        v35 = v71;
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v36 = v35;
        v37 = v89;
        sub_1D5C8F76C(v36, v89, type metadata accessor for FormatContent);
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5C8F76C(v37, v20, type metadata accessor for FormatFile);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFile.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatBindingContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v143 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v142 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v141 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v138 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v139 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v137 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v135 = &v130 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v136 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v132 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v133 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v134 = &v130 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v131 = &v130 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v130 = &v130 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v130 - v46;
  v48 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v130 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v130 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  v62 = sub_1D5C30408();
  v160 = v59;
  sub_1D5D2EE70(v52, &type metadata for FormatCodingKeys, v63, v61, v52, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v60, v59, v62, &off_1F51F6C78);
  sub_1D6706BB4(v144, v55, type metadata accessor for FormatFile);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v105 = *(v55 + 5);
      v145[4] = *(v55 + 4);
      v146[0] = v105;
      *(v146 + 11) = *(v55 + 91);
      v106 = *(v55 + 1);
      v145[0] = *v55;
      v145[1] = v106;
      v107 = *(v55 + 3);
      v145[2] = *(v55 + 2);
      v145[3] = v107;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v108 = sub_1D725BD1C();
      v109 = __swift_project_value_buffer(v108, qword_1EDFFCD30);
      v70 = v130;
      (*(*(v108 - 8) + 16))(v130, v109, v108);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4754(9, v145, v70);
      sub_1D6687720(v145);
      goto LABEL_41;
    case 2u:
      v90 = *(v55 + 7);
      v147[6] = *(v55 + 6);
      v147[7] = v90;
      v147[8] = *(v55 + 8);
      v91 = *(v55 + 3);
      v147[2] = *(v55 + 2);
      v147[3] = v91;
      v92 = *(v55 + 5);
      v147[4] = *(v55 + 4);
      v147[5] = v92;
      v93 = *(v55 + 1);
      v147[0] = *v55;
      v147[1] = v93;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v94 = sub_1D725BD1C();
      v95 = __swift_project_value_buffer(v94, qword_1EDFFCD30);
      v70 = v131;
      (*(*(v94 - 8) + 16))(v131, v95, v94);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4904(1, v147, v70);
      sub_1D5D68304(v147);
      goto LABEL_41;
    case 3u:
      v96 = *(v55 + 5);
      v148[4] = *(v55 + 4);
      v148[5] = v96;
      v149[0] = *(v55 + 6);
      *(v149 + 9) = *(v55 + 105);
      v97 = *(v55 + 1);
      v148[0] = *v55;
      v148[1] = v97;
      v98 = *(v55 + 3);
      v148[2] = *(v55 + 2);
      v148[3] = v98;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD30);
      v70 = v134;
      (*(*(v99 - 8) + 16))(v134, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4AC4(2, v148, v70);
      sub_1D66876CC(v148);
      goto LABEL_41;
    case 4u:
      v75 = *(v55 + 1);
      v150[0] = *v55;
      v150[1] = v75;
      v150[2] = *(v55 + 2);
      v151 = *(v55 + 6);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v70 = v133;
      (*(*(v76 - 8) + 16))(v133, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4C7C(10, v150, v70);
      sub_1D6687678(v150);
      goto LABEL_41;
    case 5u:
      v110 = v55;
      v70 = v142;
      sub_1D5C8F76C(v110, v142, type metadata accessor for FormatPackage);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      v113 = v132;
      (*(*(v111 - 8) + 16))(v132, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4E24(3, v70, v113);
      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
      v74 = type metadata accessor for FormatPackage;
      goto LABEL_42;
    case 6u:
      v114 = *v55;
      v115 = *(v55 + 1);
      v116 = *(v55 + 2);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      v119 = v136;
      (*(*(v117 - 8) + 16))(v136, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v114;
      v66 = v160;
      sub_1D63C4FF8(4, v120, v115, v116, v119);

      v67 = type metadata accessor for FormatVersionRequirement;
      v68 = v119;
      break;
    case 7u:
      v101 = *v55;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v104 = v135;
      (*(*(v102 - 8) + 16))(v135, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5190(5, v101, v104);

      v67 = type metadata accessor for FormatVersionRequirement;
      v68 = v104;
      break;
    case 8u:
      v125 = *(v55 + 3);
      v152[2] = *(v55 + 2);
      v152[3] = v125;
      v153 = *(v55 + 8);
      v126 = *(v55 + 1);
      v152[0] = *v55;
      v152[1] = v126;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCD30);
      v70 = v137;
      (*(*(v127 - 8) + 16))(v137, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C535C(6, v152, v70);
      sub_1D6687624(v152);
      goto LABEL_41;
    case 9u:
      v85 = *(v55 + 5);
      v154[4] = *(v55 + 4);
      v155[0] = v85;
      *(v155 + 9) = *(v55 + 89);
      v86 = *(v55 + 1);
      v154[0] = *v55;
      v154[1] = v86;
      v87 = *(v55 + 3);
      v154[2] = *(v55 + 2);
      v154[3] = v87;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCD30);
      v70 = v139;
      (*(*(v88 - 8) + 16))(v139, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5504(7, v154, v70);
      sub_1D62E2300(v154);
      goto LABEL_41;
    case 0xAu:
      v121 = *(v55 + 3);
      v156[2] = *(v55 + 2);
      v156[3] = v121;
      v156[4] = *(v55 + 4);
      v157 = v55[80];
      v122 = *(v55 + 1);
      v156[0] = *v55;
      v156[1] = v122;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD30);
      v70 = v140;
      (*(*(v123 - 8) + 16))(v140, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C56B4(8, v156, v70);
      sub_1D62B7D78(v156);
      goto LABEL_41;
    case 0xBu:
      v69 = v55;
      v70 = v143;
      sub_1D5C8F76C(v69, v143, type metadata accessor for FormatBindingContent);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCCE8);
      v73 = v138;
      (*(*(v71 - 8) + 16))(v138, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5864(11, v70, v73);
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
      v74 = type metadata accessor for FormatBindingContent;
      goto LABEL_42;
    case 0xCu:
      v78 = *(v55 + 9);
      v158[8] = *(v55 + 8);
      v158[9] = v78;
      v159[0] = *(v55 + 10);
      *(v159 + 15) = *(v55 + 175);
      v79 = *(v55 + 5);
      v158[4] = *(v55 + 4);
      v158[5] = v79;
      v80 = *(v55 + 7);
      v158[6] = *(v55 + 6);
      v158[7] = v80;
      v81 = *(v55 + 1);
      v158[0] = *v55;
      v158[1] = v81;
      v82 = *(v55 + 3);
      v158[2] = *(v55 + 2);
      v158[3] = v82;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCE38);
      v70 = v141;
      (*(*(v83 - 8) + 16))(v141, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5A38(12, v158, v70);
      sub_1D5ECF21C(v158);
LABEL_41:
      v74 = type metadata accessor for FormatVersionRequirement;
LABEL_42:
      v67 = v74;
      v68 = v70;
      break;
    default:
      sub_1D5C8F76C(v55, v51, type metadata accessor for FormatContent);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
      (*(*(v64 - 8) + 16))(v47, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4580(0, v51, v47);
      sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
      v67 = type metadata accessor for FormatContent;
      v68 = v51;
      break;
  }

  sub_1D5D2CFE8(v68, v67);
  return sub_1D5D2CFE8(v66, sub_1D5D30DC4);
}

uint64_t FormatFileKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v80 = v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v77 = v69 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v76 = v69 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v75 = v69 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v74 = v69 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v73 = v69 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v72 = v69 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v71 = v69 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v70 = v69 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v69 - v44;
  v46 = *v1;
  v83 = a1;
  v84 = v46;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
  v51 = *(*(v49 - 8) + 16);
  v51(v45, v50, v49);
  v52 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v53 = v85;
  sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v48);
  if (v53)
  {
    return sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  v69[1] = v52;
  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v55 = v83;
  v56 = v83[3];
  v85 = v83[4];
  v57 = __swift_project_boxed_opaque_existential_1(v83, v56);
  v58 = v51;
  switch(v84)
  {
    case 1:
      v59 = v71;
      v58(v71, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 2:
      v59 = v72;
      v58(v72, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 3:
      v59 = v73;
      v58(v73, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 4:
      v59 = v74;
      v58(v74, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 5:
      v67 = v75;
      v51(v75, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 6:
      v67 = v76;
      v51(v76, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 7:
      v67 = v77;
      v51(v77, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 8:
      v67 = v78;
      v51(v78, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 9:
      v67 = v79;
      v51(v79, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 10:
      v67 = v80;
      v51(v80, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_25:
      sub_1D5D2BEC4(v67, sub_1D5B4AA6C, 0, v56, v85);
      v68 = v67;
      goto LABEL_26;
    case 11:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(v49, qword_1EDFFCCE8);
      v61 = v81;
      v51(v81, v60, v49);
      swift_storeEnumTagMultiPayload();
      v62 = v61;
      v63 = v56;
      v64 = v85;
      goto LABEL_14;
    case 12:
      v81 = v57;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v65 = __swift_project_value_buffer(v49, qword_1EDFFCE38);
      v66 = v82;
      v51(v82, v65, v49);
      swift_storeEnumTagMultiPayload();
      v61 = v66;
      v62 = v66;
      v63 = v56;
      v64 = v85;
LABEL_14:
      sub_1D5D2BEC4(v62, sub_1D5B4AA6C, 0, v63, v64);
      v68 = v61;
LABEL_26:
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v59 = v70;
      v58(v70, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_20:
      sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v56, v85);
      sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_1D7264B3C();
  v87 = v84;
  FormatFileKind.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t sub_1D649A0B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D649A180(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D649A234(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatFixedColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v66 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v65 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v64 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v76 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v75 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v74 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v73 = &v62 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v72 = &v62 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v71 = &v62 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v62 - v44;
  v46 = *v1;
  v77 = a1;
  v78 = v46;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
  v51 = *(*(v49 - 8) + 16);
  v51(v45, v50, v49);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v79;
  sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v48);
  if (v52)
  {
    return sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v54 = v77;
  v55 = v77[3];
  v63 = v77[4];
  v79 = __swift_project_boxed_opaque_existential_1(v77, v55);
  v56 = v78;
  switch(v78)
  {
    case 1:
      v51(v72, v50, v49);
      v57 = v72;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 2:
      v51(v73, v50, v49);
      v57 = v73;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 3:
      v51(v74, v50, v49);
      v57 = v74;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 4:
      v51(v75, v50, v49);
      v57 = v75;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 5:
      v51(v76, v50, v49);
      v61 = v76;
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v61, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v61;
      goto LABEL_22;
    case 6:
      v58 = v64;
      v51(v64, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 7:
      v58 = v65;
      v51(v65, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 8:
      v58 = v66;
      v51(v66, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 9:
      v58 = v67;
      v51(v67, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 10:
      v58 = v68;
      v51(v68, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 11:
      v58 = v69;
      v51(v69, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_20:
      sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v58;
      goto LABEL_21;
    case 12:
      v59 = v70;
      v51(v70, v50, v49);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v59;
LABEL_21:
      v56 = v78;
LABEL_22:
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v51(v71, v50, v49);
      v57 = v71;
      swift_storeEnumTagMultiPayload();
LABEL_15:
      sub_1D5D2BEC4(v57, sub_1D5B4AA6C, 0, v55, v63);
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1D7264B3C();
  v81 = v56;
  FormatFixedColor.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v80, v80[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t FormatFlexBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v237 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v240 = &v237 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v242 = &v237 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v241 = (&v237 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v243 = &v237 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v249 = &v237 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v248 = &v237 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v247 = &v237 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v237 - v32;
  sub_1D66897B8(0);
  v253 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v237 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D66898E0(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF25638, sub_1D66898E0, &unk_1D7321584);
  v254 = v37;
  sub_1D5D2EE70(v4, v41, v43, v38, v4, v41, &type metadata for FormatVersions.CrystalGlowE, v39, v37, v42, &off_1F51F6C98);
  swift_beginAccess();
  v44 = v2[2];
  v45 = v2[3];
  *&v252 = v2;
  v46 = qword_1EDF31F38;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCE38);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v251 = v49 + 16;
  v50(v33, v48, v47);
  v250 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v51 = sub_1D725895C();
  v52 = (*(*(v51 - 8) + 48))(v8, 1, v51);
  v244 = v47;
  v245 = v48;
  v246 = v50;
  if (v52 == 1)
  {
    v238 = v44;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v53 = v253;
    v54 = v254;
    v55 = &v254[*(v253 + 44)];
    v57 = *v55;
    v56 = *(v55 + 1);
    LOBYTE(v256) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v256;
    *(v58 + 40) = v57;
    *(v58 + 48) = v56;
    sub_1D668984C(0);
    v60 = v59;
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);

    v239 = v60;
    v61 = sub_1D72647CC();
    LOBYTE(v256) = 0;
    v62 = swift_allocObject();
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = v61;
    *(v62 + 40) = v256;
    v63 = (v54 + *(v53 + 36));
    v64 = v63[3];
    v65 = v63[4];
    v66 = __swift_project_boxed_opaque_existential_1(v63, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    *(&v237 - 4) = sub_1D5B4AA6C;
    *(&v237 - 3) = 0;
    v235 = sub_1D6689A60;
    v236 = v58;
    v70 = v255;
    v72 = sub_1D5D2F7A4(v33, sub_1D615B49C, v71, sub_1D615B4A4, (&v237 - 6), v64, v65);
    v255 = v70;
    if (v70)
    {
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v54, sub_1D66897B8);
    }

    v128 = v72;

    if (v128)
    {
      v256 = 0uLL;
      LOBYTE(v257) = 0;
      v266 = v238;
      v267 = v45;
      v129 = v255;
      sub_1D72647EC();

      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      v255 = v129;
      v48 = v245;
      v50 = v246;
      if (v129)
      {
        return sub_1D5D2CFE8(v54, sub_1D66897B8);
      }

      v47 = v244;
    }

    else
    {
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

      v47 = v244;
      v48 = v245;
      v50 = v246;
    }
  }

  else
  {
    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v74 = v248;
  v75 = v247;
  v50(v247, v48, v47);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  v50(v75, v48, v47);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  v76 = v252;
  swift_beginAccess();
  v77 = *(v76 + 64);
  v50(v74, v48, v47);
  swift_storeEnumTagMultiPayload();
  if (((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0x16 && v77 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
    v78 = v253;
    v79 = v254;
  }

  else
  {
    v107 = v253;
    v108 = v254;
    v109 = &v254[*(v253 + 44)];
    v110 = *v109;
    v111 = *(v109 + 1);
    LOBYTE(v256) = 0;
    v112 = swift_allocObject();
    v247 = xmmword_1D72BAA60;
    *(v112 + 16) = xmmword_1D72BAA60;
    *(v112 + 32) = v256;
    *(v112 + 40) = v110;
    *(v112 + 48) = v111;
    sub_1D5C82CD8(v77);
    sub_1D668984C(0);
    v114 = v113;
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);

    v239 = v114;
    v115 = sub_1D72647CC();
    LOBYTE(v256) = 0;
    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    *(v116 + 24) = v247;
    *(v116 + 40) = v256;
    v117 = &v108[*(v107 + 36)];
    v118 = *(v117 + 3);
    v119 = *(v117 + 4);
    v120 = __swift_project_boxed_opaque_existential_1(v117, v118);
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v237 - 4) = sub_1D5B4AA6C;
    *(&v237 - 3) = 0;
    v235 = sub_1D6708A18;
    v236 = v112;
    v124 = v255;
    v126 = sub_1D5D2F7A4(v74, sub_1D615B49C, v125, sub_1D615B4A4, (&v237 - 6), v118, v119);
    if (v124)
    {

      sub_1D5C92A8C(v77);
      v127 = v74;
LABEL_16:
      sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
      v106 = v254;
      return sub_1D5D2CFE8(v106, sub_1D66897B8);
    }

    v130 = v126;
    v131 = v254;

    if (v130)
    {
      v256 = v247;
      LOBYTE(v257) = 0;
      v264 = v77;
      sub_1D5CA1E90();
      v79 = v131;
      sub_1D72647EC();
      v50 = v246;
      v255 = 0;
      sub_1D5C92A8C(v264);
      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      v78 = v253;
      v47 = v244;
      v48 = v245;
    }

    else
    {
      v255 = 0;
      sub_1D5C92A8C(v77);
      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      v79 = v131;
      v78 = v253;
      v47 = v244;
      v48 = v245;
      v50 = v246;
    }
  }

  v80 = *(v252 + 72);
  v81 = *(v252 + 80);
  v50(v249, v48, v47);
  swift_storeEnumTagMultiPayload();
  v248 = xmmword_1D72BAA70;
  v256 = xmmword_1D72BAA70;
  LOBYTE(v257) = 0;
  v82 = &v79[*(v78 + 44)];
  v84 = *v82;
  v83 = *(v82 + 1);
  LOBYTE(v264) = 0;
  v85 = swift_allocObject();
  v87 = v85;
  *(v85 + 16) = v248;
  *(v85 + 32) = v264;
  *(v85 + 40) = v84;
  *(v85 + 48) = v83;
  *&v247 = v84;
  if (!v81)
  {

    sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);

    goto LABEL_28;
  }

  v239 = &v237;
  v264 = v80;
  v265 = v81;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = v83;
  *(&v237 - 4) = sub_1D5B4AA6C;
  *(&v237 - 3) = 0;
  v235 = sub_1D6708A18;
  v236 = v87;
  LOBYTE(v263) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v248;
  *(v89 + 32) = v263;
  *(v89 + 40) = v84;
  *(v89 + 48) = v88;
  sub_1D668984C(0);
  v91 = v90;
  sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);
  swift_retain_n();

  v238 = v91;
  v92 = sub_1D72647CC();
  LOBYTE(v263) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v248;
  *(v93 + 40) = v263;
  v94 = &v79[*(v253 + 36)];
  v95 = *(v94 + 3);
  v96 = *(v94 + 4);
  v97 = __swift_project_boxed_opaque_existential_1(v94, v95);
  MEMORY[0x1EEE9AC00](v97, v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  *(&v237 - 4) = sub_1D615B4A4;
  *(&v237 - 3) = (&v237 - 6);
  v235 = sub_1D6708A18;
  v236 = v89;
  v101 = v249;
  v102 = v255;
  v104 = sub_1D5D2F7A4(v249, sub_1D615B49C, v103, sub_1D615B4A4, (&v237 - 6), v95, v96);
  if (!v102)
  {
    v132 = v104;

    if (v132)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v255 = 0;
      v84 = v247;
      v83 = v88;

      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
      v47 = v244;
      v48 = v245;
      v50 = v246;
    }

    else
    {
      v255 = 0;

      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
      v47 = v244;
      v48 = v245;
      v50 = v246;
      v83 = v88;
      v84 = v247;
    }

LABEL_28:
    v133 = v252;
    swift_beginAccess();
    v134 = *(v133 + 88);
    v135 = v243;
    v50(v243, v48, v47);
    swift_storeEnumTagMultiPayload();
    if (v134[2])
    {
      LOBYTE(v256) = 0;
      v136 = swift_allocObject();
      v248 = xmmword_1D72BAA80;
      *(v136 + 16) = xmmword_1D72BAA80;
      *(v136 + 32) = v256;
      *(v136 + 40) = v84;
      *(v136 + 48) = v83;
      sub_1D668984C(0);
      v138 = v137;
      v139 = sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);

      v140 = v254;
      v239 = v134;
      v238 = v138;
      v237 = v139;
      v141 = sub_1D72647CC();
      LOBYTE(v256) = 0;
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v142 + 24) = v248;
      *(v142 + 40) = v256;
      v143 = (v140 + *(v253 + 36));
      v144 = v143[3];
      v145 = v143[4];
      v146 = __swift_project_boxed_opaque_existential_1(v143, v144);
      MEMORY[0x1EEE9AC00](v146, v147);
      MEMORY[0x1EEE9AC00](v148, v149);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708A18;
      v236 = v136;
      v150 = v255;
      v152 = sub_1D5D2F7A4(v135, sub_1D615B49C, v151, sub_1D615B4A4, (&v237 - 6), v144, v145);
      if (v150)
      {
        sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

LABEL_54:

        goto LABEL_55;
      }

      v153 = v152;
      v154 = v239;
      v155 = v247;
      v249 = v83;

      if (v153)
      {
        v256 = v248;
        LOBYTE(v257) = 0;
        v263 = v154;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v50 = v246;
        v84 = v155;
        v255 = 0;

        sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
        v83 = v249;
      }

      else
      {
        v255 = 0;
        sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);

        v50 = v246;
        v83 = v249;
        v84 = v155;
      }
    }

    else
    {
      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
    }

    v156 = v252;
    swift_beginAccess();
    v157 = *(v156 + 96);
    v158 = v241;
    (v50)();
    swift_storeEnumTagMultiPayload();
    v159 = _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0();

    v161 = _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(v160, v159);

    if (v161)
    {
      v162 = v84;
      v249 = v83;
    }

    else
    {
      LOBYTE(v256) = 0;
      v193 = swift_allocObject();
      v248 = xmmword_1D72BAA90;
      *(v193 + 16) = xmmword_1D72BAA90;
      *(v193 + 32) = v256;
      *(v193 + 40) = v84;
      *(v193 + 48) = v83;
      sub_1D668984C(0);
      v195 = v194;
      v196 = sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);

      v140 = v254;
      v243 = v195;
      v239 = v196;
      v197 = sub_1D72647CC();
      LOBYTE(v256) = 0;
      v198 = v158;
      v199 = swift_allocObject();
      *(v199 + 16) = v197;
      *(v199 + 24) = v248;
      *(v199 + 40) = v256;
      v200 = (v140 + *(v253 + 36));
      v201 = v200[3];
      v202 = v200[4];
      v203 = __swift_project_boxed_opaque_existential_1(v200, v201);
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708A18;
      v236 = v193;
      v207 = v255;
      v209 = sub_1D5D2F7A4(v198, sub_1D615B49C, v208, sub_1D615B4A4, (&v237 - 6), v201, v202);
      if (v207)
      {

        goto LABEL_43;
      }

      v162 = v247;
      v249 = v83;
      v212 = v209;

      if ((v212 & 1) == 0)
      {
        v255 = 0;

        v163 = v241;
        goto LABEL_38;
      }

      v256 = v248;
      LOBYTE(v257) = 0;
      *&v261 = v157;
      type metadata accessor for FormatFlexBoxNodeLayout();
      sub_1D5B58B84(&qword_1EDF0D508, type metadata accessor for FormatFlexBoxNodeLayout, &protocol conformance descriptor for FormatFlexBoxNodeLayout);
      sub_1D72647EC();
      v158 = v241;
      v255 = 0;
    }

    v163 = v158;
LABEL_38:
    sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);
    v164 = *(v252 + 104);
    v165 = *(v252 + 112);
    v166 = *(v252 + 120);
    v167 = *(v252 + 128);
    v169 = *(v252 + 136);
    v168 = *(v252 + 144);
    v170 = v242;
    v246(v242, v245, v244);
    swift_storeEnumTagMultiPayload();
    v248 = xmmword_1D72BAAA0;
    v261 = xmmword_1D72BAAA0;
    v262 = 0;
    LOBYTE(v256) = 0;
    v171 = swift_allocObject();
    v173 = v171;
    *(v171 + 16) = v248;
    *(v171 + 32) = v256;
    v174 = v249;
    *(v171 + 40) = v162;
    *(v171 + 48) = v174;
    if (v164)
    {
      v243 = &v237;
      *&v256 = v164;
      *(&v256 + 1) = v165;
      v257 = v166;
      v258 = v167;
      v259 = v169;
      v260 = v168;
      MEMORY[0x1EEE9AC00](v171, v172);
      v241 = &v237 - 6;
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708A18;
      v236 = v173;
      LOBYTE(v268) = 0;
      v175 = swift_allocObject();
      v176 = v162;
      v177 = v175;
      *(v175 + 16) = v248;
      *(v175 + 32) = v268;
      *(v175 + 40) = v176;
      *(v175 + 48) = v249;
      swift_retain_n();
      sub_1D5EB1D80(v164, v165, v166, v167, v169, v168);
      sub_1D668984C(0);
      sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);
      v178 = v254;
      v179 = sub_1D72647CC();
      LOBYTE(v268) = 0;
      v180 = swift_allocObject();
      *(v180 + 16) = v179;
      *(v180 + 24) = v248;
      *(v180 + 40) = v268;
      v181 = &v178[*(v253 + 36)];
      v182 = *(v181 + 3);
      v183 = *(v181 + 4);
      v184 = __swift_project_boxed_opaque_existential_1(v181, v182);
      MEMORY[0x1EEE9AC00](v184, v185);
      MEMORY[0x1EEE9AC00](v186, v187);
      v188 = v241;
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = v188;
      v235 = sub_1D6708A18;
      v236 = v177;
      v189 = v255;
      v191 = sub_1D5D2F7A4(v242, sub_1D615B49C, v190, sub_1D615B4A4, (&v237 - 6), v182, v183);
      if (v189)
      {

        v192 = v259;

        sub_1D5CBF568(v192);

        v127 = v242;
        goto LABEL_16;
      }

      v213 = v191;
      v214 = v249;

      if (v213)
      {
        sub_1D6659A24();
        sub_1D72647EC();
        v210 = v214;
        v255 = 0;

        v216 = v259;

        sub_1D5CBF568(v216);

        sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v255 = 0;

        v215 = v259;

        sub_1D5CBF568(v215);

        sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
        v210 = v214;
      }

      v211 = v253;
      v140 = v254;
    }

    else
    {
      v210 = v249;

      sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);

      v140 = v254;
      v211 = v253;
    }

    v217 = v252;
    swift_beginAccess();
    v218 = *(v217 + 152);
    v219 = v240;
    v246(v240, v245, v244);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v261) = 0;
    v220 = swift_allocObject();
    v252 = xmmword_1D72BAAB0;
    *(v220 + 16) = xmmword_1D72BAAB0;
    *(v220 + 32) = v261;
    *(v220 + 40) = v247;
    *(v220 + 48) = v210;
    sub_1D668984C(0);
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C, MEMORY[0x1E69E6F60]);

    v251 = v218;

    v221 = sub_1D72647CC();
    LOBYTE(v261) = 0;
    v222 = swift_allocObject();
    *(v222 + 16) = v221;
    *(v222 + 24) = v252;
    *(v222 + 40) = v261;
    v223 = (v140 + *(v211 + 36));
    v224 = v223[3];
    v225 = v223[4];
    v226 = __swift_project_boxed_opaque_existential_1(v223, v224);
    MEMORY[0x1EEE9AC00](v226, v227);
    MEMORY[0x1EEE9AC00](v228, v229);
    *(&v237 - 4) = sub_1D5B4AA6C;
    *(&v237 - 3) = 0;
    v235 = sub_1D6708A18;
    v236 = v220;
    v230 = v255;
    v232 = sub_1D5D2F7A4(v219, sub_1D615B49C, v231, sub_1D615B4A4, (&v237 - 6), v224, v225);
    if (v230)
    {
      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);

      goto LABEL_54;
    }

    v233 = v232;
    v234 = v251;

    if ((v233 & 1) == 0)
    {
      sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);

      goto LABEL_55;
    }

    v261 = v252;
    v262 = 0;
    v268 = v234;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v198 = v240;

LABEL_43:
    sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);
LABEL_55:
    v106 = v140;
    return sub_1D5D2CFE8(v106, sub_1D66897B8);
  }

  v105 = v254;

  sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
  v106 = v105;
  return sub_1D5D2CFE8(v106, sub_1D66897B8);
}

uint64_t sub_1D649CE50(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 2019912806;
    v6 = 0x6E6572646C696863;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656D7473756A6461;
    if (a1 != 5)
    {
      v7 = 0x74756F79616CLL;
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
    v1 = 0x696669746E656469;
    v2 = 0x7470697263736564;
    v3 = 1702521203;
    if (a1 != 3)
    {
      v3 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
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

uint64_t sub_1D649CF80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668C580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D649CFB8(uint64_t a1)
{
  v2 = sub_1D66899B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649CFF4(uint64_t a1)
{
  v2 = sub_1D66899B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexBoxNodeDisplay.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCE38);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatFlexBoxNodeItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  sub_1D6689B44(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6689BD8(0);
  sub_1D5B58B84(&qword_1EDF252C8, sub_1D6689BD8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

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
          goto LABEL_10;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D661AC84();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v14, v5);
      goto LABEL_3;
    }

LABEL_10:
  }

  v35 = 0uLL;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = 0uLL;
    v34 = 0;
    sub_1D6689E3C(0);
    sub_1D5B58B84(&qword_1EDF24720, sub_1D6689E3C, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);
    sub_1D726431C();
    v23 = v31;
    v22 = v32;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = &unk_1F5114D28;
  }

  v30 = xmmword_1D728CF30;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = v30;
    v34 = 0;
    sub_1D6689E3C(0);
    sub_1D5B58B84(&qword_1EDF24720, sub_1D6689E3C, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);
    sub_1D726431C();
    *&v30 = v23;
    v25 = v31;
    v24 = v32;
  }

  else
  {
    *&v30 = v23;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = &unk_1F5114D28;
  }

  v29 = xmmword_1D7297410;
  v35 = xmmword_1D7297410;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = v29;
    v34 = 0;
    sub_1D5C30060(0, &qword_1EDF24708, sub_1D6689D58, &type metadata for FormatFlexBoxNodeItemFlex, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6689DAC();
    sub_1D726431C();
    (*(v6 + 8))(v14, v5);
    v27 = v31;
    v26 = v32;
    sub_1D5DEA234(v31);

    sub_1D5CBF568(v27);
  }

  else
  {
    (*(v6 + 8))(v14, v5);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = 2;
  }

  v28 = v37;
  *v37 = v30;
  v28[1] = v22;
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v27;
  v28[5] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double FormatFlexBoxNodeItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v117 = &v114 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v114 - v12;
  sub_1D6689ED8(0);
  v133 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v123 = v1[3];
  v124 = v20;
  v21 = v1[5];
  v114 = v1[4];
  v115 = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D6689BD8(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF252C8, sub_1D6689BD8, &unk_1D7321584);
  v125 = v17;
  v27 = v23;
  v28 = v19;
  sub_1D5D2EE70(&type metadata for FormatFlexBoxNodeItem, v25, v29, v22, &type metadata for FormatFlexBoxNodeItem, v25, &type metadata for FormatVersions.CrystalGlowE, v27, v17, v26, &off_1F51F6C98);
  v30 = qword_1EDF31F38;

  *&v128 = v18;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v121 = v32;
  v122 = v31;
  v119 = v33 + 16;
  v120 = v34;
  (v34)(v13);
  v35 = type metadata accessor for FormatVersionRequirement.Value(0);
  v126 = v13;
  v118 = v35;
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D633D10C(v19, &unk_1F50F2D18);
  v116 = v6;
  if (v36)
  {
    v37 = v6;
    v38 = v128;

    v39 = MEMORY[0x1E69E7CC0];

    v40 = sub_1D6354F50(v38, v39);

    swift_bridgeObjectRelease_n();
    v41 = v125;
    if (v40)
    {
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

      v42 = v127;
      goto LABEL_12;
    }
  }

  else
  {

    v41 = v125;
  }

  v125 = v28;
  v43 = v133;
  v44 = (v41 + *(v133 + 44));
  v45 = *v44;
  v46 = v44[1];
  LOBYTE(v131) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = v131;
  *(v47 + 40) = v45;
  *(v47 + 48) = v46;
  sub_1D6689F6C(0);
  sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C, MEMORY[0x1E69E6F60]);

  v48 = sub_1D72647CC();
  LOBYTE(v131) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v131;
  v50 = (v41 + *(v43 + 36));
  v51 = v50[3];
  v52 = v50[4];
  v53 = __swift_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v114 - 4) = sub_1D5B4AA6C;
  *(&v114 - 3) = 0;
  v112 = sub_1D668A000;
  v113 = v47;
  v58 = v126;
  v57 = v127;
  v60 = sub_1D5D2F7A4(v126, sub_1D615B49C, v59, sub_1D615B4A4, (&v114 - 6), v51, v52);
  v42 = v57;
  if (v57)
  {
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v41, sub_1D6689ED8);

    goto LABEL_27;
  }

  v61 = v60;

  if (v61)
  {
    v131 = 0uLL;
    v132 = 0;
    v129 = v125;
    v130 = v128;
    sub_1D6689E3C(0);
    sub_1D5B58B84(&qword_1EDF0BF98, sub_1D6689E3C, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);

    sub_1D72647EC();
    v37 = v116;

    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    v37 = v116;
  }

LABEL_12:
  v62 = v117;
  v120(v117, v121, v122);
  swift_storeEnumTagMultiPayload();
  v63 = v124;

  v64 = v123;

  v65 = sub_1D633D10C(v63, &unk_1F50F2D18);
  v66 = v133;
  if (v65)
  {

    v67 = MEMORY[0x1E69E7CC0];

    v68 = sub_1D6354F50(v64, v67);

    swift_bridgeObjectRelease_n();
    if (v68)
    {
      sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v69 = (v41 + *(v66 + 44));
  v70 = *v69;
  v71 = v69[1];
  LOBYTE(v131) = 0;
  v72 = v62;
  v73 = swift_allocObject();
  v128 = xmmword_1D728CF30;
  *(v73 + 16) = xmmword_1D728CF30;
  *(v73 + 32) = v131;
  *(v73 + 40) = v70;
  *(v73 + 48) = v71;
  sub_1D6689F6C(0);
  v75 = v74;
  sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C, MEMORY[0x1E69E6F60]);

  v126 = v75;
  v76 = sub_1D72647CC();
  LOBYTE(v131) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v128;
  *(v77 + 40) = v131;
  v78 = (v41 + *(v66 + 36));
  v79 = v42;
  v80 = v78[3];
  v81 = v78[4];
  v82 = __swift_project_boxed_opaque_existential_1(v78, v80);
  v127 = &v114;
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v114 - 4) = sub_1D5B4AA6C;
  *(&v114 - 3) = 0;
  v112 = sub_1D6708A1C;
  v113 = v73;
  v87 = sub_1D5D2F7A4(v72, sub_1D615B49C, v86, sub_1D615B4A4, (&v114 - 6), v80, v81);
  v42 = v79;
  if (!v79)
  {
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

      v37 = v116;
      v66 = v133;
LABEL_22:
      v120(v37, v121, v122);
      swift_storeEnumTagMultiPayload();
      v89 = v114;
      sub_1D5DEA234(v114);
      v90 = v115;

      LOBYTE(v89) = sub_1D6366448(v89, v90, 2uLL, MEMORY[0x1E69E7CC0]);
      sub_1D5CBF568(2uLL);

      if ((v89 & 1) == 0)
      {
        v91 = (v41 + *(v66 + 44));
        v92 = *v91;
        v93 = v91[1];
        LOBYTE(v131) = 0;
        v94 = swift_allocObject();
        v128 = xmmword_1D7297410;
        *(v94 + 16) = xmmword_1D7297410;
        *(v94 + 32) = v131;
        *(v94 + 40) = v92;
        *(v94 + 48) = v93;
        sub_1D6689F6C(0);
        v96 = v95;
        sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C, MEMORY[0x1E69E6F60]);

        v133 = v96;
        v97 = sub_1D72647CC();
        LOBYTE(v131) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = v97;
        *(v98 + 24) = v128;
        *(v98 + 40) = v131;
        v99 = (v41 + *(v66 + 36));
        v100 = v42;
        v101 = v99[3];
        v102 = v99[4];
        v103 = __swift_project_boxed_opaque_existential_1(v99, v101);
        MEMORY[0x1EEE9AC00](v103, v104);
        MEMORY[0x1EEE9AC00](v105, v106);
        *(&v114 - 4) = sub_1D5B4AA6C;
        *(&v114 - 3) = 0;
        v112 = sub_1D6708A1C;
        v113 = v94;
        v108 = sub_1D5D2F7A4(v37, sub_1D615B49C, v107, sub_1D615B4A4, (&v114 - 6), v101, v102);
        if (v100)
        {
          sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

          goto LABEL_26;
        }

        v110 = v108;

        if (v110)
        {
          v131 = v128;
          v132 = 0;
          v111 = v114;
          v129 = v114;
          v130 = v115;
          sub_1D5DEA234(v114);
          sub_1D5C30060(0, &qword_1EDF24708, sub_1D6689D58, &type metadata for FormatFlexBoxNodeItemFlex, type metadata accessor for FormatSelectorSimpleValue);
          sub_1D668A07C();

          sub_1D72647EC();
          sub_1D5CBF568(v129);

          sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v41, sub_1D6689ED8);
          sub_1D5CBF568(v111);
          goto LABEL_27;
        }

        v37 = v116;
      }

      sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_26:
      sub_1D5D2CFE8(v41, sub_1D6689ED8);
      sub_1D5CBF568(v114);
      goto LABEL_27;
    }

    v131 = v128;
    v132 = 0;
    v129 = v124;
    v130 = v123;
    sub_1D6689E3C(0);
    sub_1D5B58B84(&qword_1EDF0BF98, sub_1D6689E3C, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);

    sub_1D72647EC();
    v37 = v116;
    v66 = v133;

    sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

LABEL_15:

    goto LABEL_22;
  }

  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v41, sub_1D6689ED8);

LABEL_27:

  return result;
}

uint64_t sub_1D649E870()
{
  v1 = 0x726564726FLL;
  v2 = 2019912806;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x797469726F697270;
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

uint64_t sub_1D649E8D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668C8B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D649E910(uint64_t a1)
{
  v2 = sub_1D6689CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649E94C(uint64_t a1)
{
  v2 = sub_1D6689CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexBoxNodeItemFlex.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFlexBoxNodeItemFlex, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatFlexBoxNodeItemFlex, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424A3C(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424A3C(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE38);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63C5F7C(3, v23, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424A3C(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D649EEAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D649EF58(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D649EFF0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D649F098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66635DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D649F0C8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (*v1 != 2)
  {
    v5 = 2003792487;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1869903201;
    v2 = 0xE400000000000000;
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

uint64_t sub_1D649F1E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x61476E6D756C6F63;
    v6 = 0x6C61726765746E69;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6574496E67696C61;
    if (a1 != 5)
    {
      v7 = 0x706147776F72;
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
    v1 = 0x79616C70736964;
    v2 = 1885434487;
    v3 = 0x437966697473756ALL;
    if (a1 != 3)
    {
      v3 = 0x6E6F436E67696C61;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F69746365726964;
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

uint64_t sub_1D649F338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668CA14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D649F370(uint64_t a1)
{
  v2 = sub_1D6665CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649F3AC(uint64_t a1)
{
  v2 = sub_1D6665CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexibleExpression.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668A160(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5CC92D8(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EC886B30, sub_1D5CC92D8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFlexibleExpression, v17, v19, v14, &type metadata for FormatFlexibleExpression, v17, &type metadata for FormatVersions.JazzkonC, v15, v12, v18, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v22 = &v12[*(v9 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v54[0] = 0;
  v25 = swift_allocObject();
  v27 = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v54[0];
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  if (v13 == 3)
  {
  }

  else
  {
    v49 = v47;
    v54[0] = v13;
    MEMORY[0x1EEE9AC00](v25, v26);
    v47[-4] = sub_1D5B4AA6C;
    v47[-3] = 0;
    v45 = sub_1D6708A20;
    v46 = v27;
    v50 = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v50;
    *(v28 + 40) = v24;
    *(v28 + 48) = v23;
    sub_1D668A1F4(0);
    v48 = v2;
    v30 = v29;
    sub_1D5B58B84(&qword_1EC886B48, sub_1D668A1F4, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v47[1] = v30;
    v31 = sub_1D72647CC();
    v50 = 0;
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 16) = v31;
    *(v32 + 40) = v50;
    v33 = &v12[*(v9 + 36)];
    v34 = *(v33 + 3);
    v35 = *(v33 + 4);
    v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
    MEMORY[0x1EEE9AC00](v36, v37);
    MEMORY[0x1EEE9AC00](v38, v39);
    v47[-4] = sub_1D615B4A4;
    v47[-3] = &v47[-6];
    v45 = sub_1D668A288;
    v46 = v28;
    v40 = v48;
    v42 = sub_1D5D2F7A4(v7, sub_1D615B49C, v41, sub_1D615B4A4, &v47[-6], v34, v35);
    if (v40)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D668A160);
    }

    v44 = v42;

    if (v44)
    {
      sub_1D668A304();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v12, sub_1D668A160);
}

void sub_1D649F920(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
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

uint64_t sub_1D649FA14(uint64_t a1)
{
  v2 = sub_1D5CC945C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649FA50(uint64_t a1)
{
  v2 = sub_1D5CC945C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexibleExpression.Direction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD30);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v31;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v31);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatFloatBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v20 + 16) = &unk_1F5114DB0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D668A358();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D665979C();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x20;
      }

      else
      {
        sub_1D5EA5B18();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66597F0();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}