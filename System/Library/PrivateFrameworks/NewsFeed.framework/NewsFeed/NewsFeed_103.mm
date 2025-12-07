uint64_t FormatFloatBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v33 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFloatBinding, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFloatBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v21, v18, v22, &off_1F51F6CB8);
  v24 = (v19 >> 5) & 3;
  if (v24)
  {
    if (v24 == 1)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE80);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AD614(1, v19 & 0x9F, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCE8);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AD7A8(2, v19 & 0x9F, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCCE8);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AD480(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64A06C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7453656C7A7A7570;
  v4 = 0xEF63697473697461;
  if (v2 != 1)
  {
    v3 = 0x70756F7267;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x7453656C7A7A7570;
  v8 = 0xEF63697473697461;
  if (*a2 != 1)
  {
    v7 = 0x70756F7267;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1D64A07DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A0888(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A0920(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64A09C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66638D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64A09F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF63697473697461;
  v5 = 0x7453656C7A7A7570;
  if (v2 != 1)
  {
    v5 = 0x70756F7267;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C64616568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatFocusParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D668A3AC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668A440(0);
  sub_1D5B58B84(&qword_1EDF252B8, sub_1D668A440, &unk_1D7321584);
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

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x65736E4965676465, 0xEA00000000007374, 0x6E6F697469736F70, 0xE800000000000000);
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

  sub_1D5CD49DC();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_1D726427C();
  v25 = v31;
  v26 = v30;
  v17 = v32;
  v30 = xmmword_1D728CF30;
  LOBYTE(v31) = 0;
  sub_1D668A5C0();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v27;
  v24 = v25;
  *v13 = v26;
  *(v13 + 16) = v24;
  *(v13 + 32) = v17;
  *(v13 + 33) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFocusParameters.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v82 - v8;
  sub_1D668A614(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  v84 = *v1;
  v85 = v15;
  v16 = *(v1 + 32);
  v99 = *(v1 + 33);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D668A440(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF252B8, sub_1D668A440, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFocusParameters, v20, v22, v17, &type metadata for FormatFocusParameters, v20, &type metadata for FormatVersions.CrystalGlow, v18, v14, v21, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  *&v90 = v24;
  v87 = v25 + 16;
  v88 = v26;
  v26(v9);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  LOBYTE(v93) = 0;
  v31 = swift_allocObject();
  v33 = v31;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v93;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  v92 = v28;
  v83 = v11;
  if (v16)
  {

    goto LABEL_5;
  }

  v82[2] = v82;
  v93 = v84;
  v94 = v85;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v85 = &v82[-6];
  v82[-4] = sub_1D5B4AA6C;
  v82[-3] = 0;
  v80 = sub_1D6708A24;
  v81 = v33;
  v98 = 0;
  v39 = swift_allocObject();
  v40 = v29;
  v41 = v39;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v98;
  *&v84 = v40;
  *(v39 + 40) = v40;
  *(v39 + 48) = v30;
  sub_1D668A6A8(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF032C8, sub_1D668A6A8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v82[1] = v43;
  v82[0] = v44;
  v45 = v11;
  v46 = sub_1D72647CC();
  v98 = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v98;
  v48 = &v28[*(v45 + 36)];
  v50 = *(v48 + 3);
  v49 = *(v48 + 4);
  v51 = __swift_project_boxed_opaque_existential_1(v48, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v55 = v85;
  v82[-4] = sub_1D615B4A4;
  v82[-3] = v55;
  v80 = sub_1D6708A24;
  v81 = v41;
  v56 = v91;
  v58 = sub_1D5D2F7A4(v9, sub_1D615B49C, v57, sub_1D615B4A4, &v82[-6], v50, v49);
  if (!v56)
  {
    v77 = v58;
    v78 = v84;

    if (v77)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
      v29 = v78;
      v91 = 0;
    }

    else
    {
      v91 = 0;
      v29 = v78;
    }

LABEL_5:
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v34 = v89;
    (v88)(v89, v90, v23);
    swift_storeEnumTagMultiPayload();
    v90 = xmmword_1D728CF30;
    v93 = xmmword_1D728CF30;
    LOBYTE(v94) = 0;
    LOBYTE(v95) = 0;
    v35 = swift_allocObject();
    v37 = v35;
    *(v35 + 16) = v90;
    *(v35 + 32) = v95;
    *(v35 + 40) = v29;
    *(v35 + 48) = v30;
    if (v99 == 3)
    {

      v38 = v92;
    }

    else
    {
      v88 = v82;
      LOBYTE(v95) = v99;
      MEMORY[0x1EEE9AC00](v35, v36);
      v82[-4] = sub_1D5B4AA6C;
      v82[-3] = 0;
      v80 = sub_1D6708A24;
      v81 = v37;
      v98 = 0;
      v60 = swift_allocObject();
      v61 = v29;
      v62 = v60;
      *(v60 + 16) = v90;
      *(v60 + 32) = v98;
      *(v60 + 40) = v61;
      *(v60 + 48) = v30;
      sub_1D668A6A8(0);
      sub_1D5B58B84(&qword_1EDF032C8, sub_1D668A6A8, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v63 = v92;
      v64 = sub_1D72647CC();
      v98 = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      *(v65 + 24) = v90;
      *(v65 + 40) = v98;
      v66 = (v63 + *(v83 + 36));
      v67 = v66[3];
      v68 = v66[4];
      v69 = __swift_project_boxed_opaque_existential_1(v66, v67);
      MEMORY[0x1EEE9AC00](v69, v70);
      MEMORY[0x1EEE9AC00](v71, v72);
      v82[-4] = sub_1D615B4A4;
      v82[-3] = &v82[-6];
      v80 = sub_1D668A73C;
      v81 = v62;
      v73 = v91;
      v75 = sub_1D5D2F7A4(v34, sub_1D615B49C, v74, sub_1D615B4A4, &v82[-6], v67, v68);
      if (v73)
      {
        sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

        v38 = v92;
        goto LABEL_12;
      }

      v79 = v75;

      if (v79)
      {
        sub_1D668A7B8();
        v38 = v92;
        sub_1D72647EC();
      }

      else
      {
        v38 = v92;
      }

      v34 = v89;
    }

    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

LABEL_12:
    v59 = v38;
    return sub_1D5D2CFE8(v59, sub_1D668A614);
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v59 = v92;
  return sub_1D5D2CFE8(v59, sub_1D668A614);
}

uint64_t sub_1D64A17C8()
{
  v1 = 0x6E6F697469736F70;
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
    return 0x65736E4965676465;
  }
}

uint64_t sub_1D64A1820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668CD50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A1858(uint64_t a1)
{
  v2 = sub_1D668A518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A1894(uint64_t a1)
{
  v2 = sub_1D668A518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFocusPosition.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFocusPosition, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFocusPosition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v21, v18, v22, &off_1F51F6B38);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421834(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421834(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE68);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421834(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64A1CF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6564697374756FLL;
  if (v2 != 1)
  {
    v4 = 0x656469736E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6564697374756FLL;
  if (*a2 != 1)
  {
    v8 = 0x656469736E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
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

uint64_t sub_1D64A1DEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A1E90(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A1F20(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64A1FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663BCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64A1FF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE700000000000000;
  v5 = 0x6564697374756FLL;
  if (v2 != 1)
  {
    v5 = 0x656469736E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D64A210C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A21E4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A22A8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatFontAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D668A860(0);
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668A8F4(0);
  sub_1D5B58B84(&qword_1EDF253F8, sub_1D668A8F4, &unk_1D7321584);
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

  v13 = v39;
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

      v25 = *(v17 - 2);
      v24 = *(v17 - 1);

      v26 = sub_1D661AE04();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D668AA74();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726427C();
  v18 = v35;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  v19 = v10;
  v20 = v7;
  v21 = v35;
  v22 = v36;
  v37 = xmmword_1D7297410;
  v38 = 0;
  v23 = sub_1D726426C();
  HIDWORD(v31) = v22;
  v32 = v21;
  v33 = v23;
  v34 = v29;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  sub_1D61508A4();
  sub_1D726427C();
  (*(v39 + 8))(v19, v20);
  v30 = v35;
  *a2 = v18;
  *(a2 + 8) = v32;
  *(a2 + 16) = BYTE4(v31);
  *(a2 + 24) = v33;
  *(a2 + 32) = v34 & 1;
  *(a2 + 33) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontAttributes.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v133 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v139 = v129 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v141 = v129 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v129 - v16;
  sub_1D668AAC8(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = *(v1 + 1);
  LODWORD(v137) = v1[16];
  v131 = *(v1 + 3);
  LODWORD(v136) = v1[32];
  v132 = v1[33];
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D668A8F4(0);
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF253F8, sub_1D668A8F4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFontAttributes, v28, v30, v25, &type metadata for FormatFontAttributes, v28, &type metadata for FormatVersions.StarSky, v26, v22, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v144 = *(v33 + 16);
  *&v145 = v32;
  v143 = v33 + 16;
  v144(v17);
  v142 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v149 = 0uLL;
  v150 = 0;
  v34 = &v22[*(v19 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v22;
  LOBYTE(v148) = 0;
  v38 = swift_allocObject();
  v40 = v19;
  v41 = v38;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v148;
  *(v38 + 40) = v35;
  *(v38 + 48) = v36;
  v146 = v37;
  v135 = v31;
  if (v23 == 10)
  {
    v134 = v40;
    v138 = v2;

    v42 = v139;
  }

  else
  {
    *&v140 = v129;
    LOBYTE(v148) = v23;
    MEMORY[0x1EEE9AC00](v38, v39);
    v138 = &v129[-6];
    v129[-4] = sub_1D5B4AA6C;
    v129[-3] = 0;
    v127 = sub_1D6708A28;
    v128 = v41;
    v147 = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v147;
    *(v48 + 40) = v35;
    *(v48 + 48) = v36;
    sub_1D668AB5C(0);
    v50 = v49;
    v51 = sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v129[1] = v50;
    v129[0] = v51;
    v52 = sub_1D72647CC();
    v130 = v36;
    v53 = v52;
    v147 = 0;
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = v53;
    *(v54 + 40) = v147;
    v55 = &v37[*(v40 + 36)];
    v56 = v3;
    v57 = *(v55 + 3);
    v58 = *(v55 + 4);
    v59 = __swift_project_boxed_opaque_existential_1(v55, v57);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v63 = v138;
    v129[-4] = sub_1D615B4A4;
    v129[-3] = v63;
    v127 = sub_1D6708A28;
    v128 = v48;
    v65 = sub_1D5D2F7A4(v17, sub_1D615B49C, v64, sub_1D615B4A4, &v129[-6], v57, v58);
    if (v56)
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);

LABEL_22:

      goto LABEL_23;
    }

    v81 = v65;
    v36 = v130;
    v134 = v40;

    if (v81)
    {
      sub_1D668AC6C();
      sub_1D72647EC();
      v42 = v139;
      v31 = v135;
      v138 = 0;
    }

    else
    {
      v138 = 0;
      v42 = v139;
      v31 = v135;
    }
  }

  sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);

  v43 = v141;
  (v144)(v141, v145, v31);
  swift_storeEnumTagMultiPayload();
  v140 = xmmword_1D728CF30;
  v149 = xmmword_1D728CF30;
  v150 = 0;
  LOBYTE(v148) = 0;
  v44 = swift_allocObject();
  v46 = v44;
  *(v44 + 16) = v140;
  *(v44 + 32) = v148;
  v47 = v35;
  *(v44 + 40) = v35;
  *(v44 + 48) = v36;
  if (v137)
  {

LABEL_18:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    (v144)(v42, v145, v31);
    swift_storeEnumTagMultiPayload();
    v141 = xmmword_1D7297410;
    v149 = xmmword_1D7297410;
    v150 = 0;
    LOBYTE(v148) = 0;
    v84 = swift_allocObject();
    v86 = v84;
    *(v84 + 16) = v141;
    *(v84 + 32) = v148;
    *(v84 + 40) = v47;
    *(v84 + 48) = v36;
    if (v136)
    {

      v87 = v138;
      goto LABEL_27;
    }

    *&v140 = v129;
    v148 = v131;
    MEMORY[0x1EEE9AC00](v84, v85);
    v129[-4] = sub_1D5B4AA6C;
    v129[-3] = 0;
    v127 = sub_1D6708A28;
    v128 = v86;
    v147 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v141;
    *(v88 + 32) = v147;
    *(v88 + 40) = v47;
    *(v88 + 48) = v36;
    sub_1D668AB5C(0);
    v90 = v89;
    sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v136 = v90;
    v137 = v47;
    v91 = v146;
    v92 = sub_1D72647CC();
    v147 = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    *(v93 + 24) = v141;
    *(v93 + 40) = v147;
    v94 = (v91 + *(v134 + 36));
    v95 = v94[3];
    v96 = v94[4];
    v97 = __swift_project_boxed_opaque_existential_1(v94, v95);
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    v129[-4] = sub_1D615B4A4;
    v129[-3] = &v129[-6];
    v127 = sub_1D6708A28;
    v128 = v88;
    v101 = v138;
    v103 = sub_1D5D2F7A4(v42, sub_1D615B49C, v102, sub_1D615B4A4, &v129[-6], v95, v96);
    v87 = v101;
    if (!v101)
    {
      v105 = v103;

      if (v105)
      {
        sub_1D72647EC();
      }

      v47 = v137;
      v31 = v135;
LABEL_27:
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

      v106 = v133;
      (v144)(v133, v145, v31);
      swift_storeEnumTagMultiPayload();
      v145 = xmmword_1D72BAA60;
      v149 = xmmword_1D72BAA60;
      v150 = 0;
      LOBYTE(v148) = 0;
      v107 = swift_allocObject();
      v109 = v107;
      *(v107 + 16) = v145;
      *(v107 + 32) = v148;
      *(v107 + 40) = v47;
      *(v107 + 48) = v36;
      if (v132 == 4)
      {

        v110 = v146;
      }

      else
      {
        v138 = v87;
        v144 = v129;
        LOBYTE(v148) = v132;
        MEMORY[0x1EEE9AC00](v107, v108);
        v129[-4] = sub_1D5B4AA6C;
        v129[-3] = 0;
        v127 = sub_1D6708A28;
        v128 = v109;
        v147 = 0;
        v111 = swift_allocObject();
        *(v111 + 16) = v145;
        *(v111 + 32) = v147;
        *(v111 + 40) = v47;
        *(v111 + 48) = v36;
        sub_1D668AB5C(0);
        sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v112 = v146;
        v113 = sub_1D72647CC();
        v147 = 0;
        v114 = swift_allocObject();
        *(v114 + 16) = v113;
        *(v114 + 24) = v145;
        *(v114 + 40) = v147;
        v115 = (v112 + *(v134 + 36));
        v116 = v115[3];
        v117 = v115[4];
        v118 = __swift_project_boxed_opaque_existential_1(v115, v116);
        MEMORY[0x1EEE9AC00](v118, v119);
        MEMORY[0x1EEE9AC00](v120, v121);
        v129[-4] = sub_1D615B4A4;
        v129[-3] = &v129[-6];
        v127 = sub_1D668ABF0;
        v128 = v111;
        v122 = v138;
        v124 = sub_1D5D2F7A4(v106, sub_1D615B49C, v123, sub_1D615B4A4, &v129[-6], v116, v117);
        if (v122)
        {
          sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

          v110 = v146;
LABEL_36:
          v104 = v110;
          return sub_1D5D2CFE8(v104, sub_1D668AAC8);
        }

        v125 = v124;

        if (v125)
        {
          sub_1D61508F8();
          v110 = v146;
          sub_1D72647EC();
        }

        else
        {
          v110 = v146;
        }

        v106 = v133;
      }

      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

      goto LABEL_36;
    }

    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    goto LABEL_22;
  }

  v130 = v129;
  v148 = v24;
  MEMORY[0x1EEE9AC00](v44, v45);
  v129[-4] = sub_1D5B4AA6C;
  v129[-3] = 0;
  v127 = sub_1D6708A28;
  v128 = v46;
  v147 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v140;
  *(v66 + 32) = v147;
  *(v66 + 40) = v35;
  *(v66 + 48) = v36;
  sub_1D668AB5C(0);
  sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v137 = v35;
  v67 = v146;
  v68 = sub_1D72647CC();
  v147 = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v140;
  *(v69 + 40) = v147;
  v70 = (v67 + *(v134 + 36));
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v129[-4] = sub_1D615B4A4;
  v129[-3] = &v129[-6];
  v77 = v141;
  v127 = sub_1D6708A28;
  v128 = v66;
  v78 = v138;
  v80 = sub_1D5D2F7A4(v141, sub_1D615B49C, v79, sub_1D615B4A4, &v129[-6], v71, v72);
  if (!v78)
  {
    v82 = v80;
    v83 = v137;

    if (v82)
    {
      sub_1D5B578C4();
      sub_1D72647EC();
      v31 = v135;
      v138 = 0;
      v47 = v83;
    }

    else
    {
      v138 = 0;
      v47 = v83;
      v31 = v135;
    }

    v43 = v141;
    v42 = v139;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

LABEL_23:
  v104 = v146;
  return sub_1D5D2CFE8(v104, sub_1D668AAC8);
}

uint64_t sub_1D64A3870()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x6564617267;
  v4 = 0x6E6769736564;
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
    v2 = 0x746E616C73;
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

uint64_t sub_1D64A38F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668CE70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A392C(uint64_t a1)
{
  v2 = sub_1D668A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A3968(uint64_t a1)
{
  v2 = sub_1D668A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontLineSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D668ACC0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668AD54(0);
  sub_1D5B58B84(&qword_1EDF0C570, sub_1D668AD54, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x656C797473, 0xE500000000000000, 0x664F7265626D756ELL, 0xED000073656E694CLL);
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

  type metadata accessor for FormatTextNodeStyle();
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CD3B58();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontLineSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v93 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v81 - v8;
  sub_1D668AED4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v91 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668AD54(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C570, sub_1D668AD54, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFontLineSizing, v19, v21, v16, &type metadata for FormatFontLineSizing, v19, &type metadata for FormatVersions.CrystalGlow, v17, v14, v20, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE68);
  v24 = *(v22 - 8);
  v88 = *(v24 + 16);
  v89 = v23;
  v87 = v24 + 16;
  v88(v9);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v97 = 0uLL;
  v98 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = v11;
  v27 = *v25;
  v28 = *(v25 + 1);
  LOBYTE(v99) = 0;
  v29 = swift_allocObject();
  v31 = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v99;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  v94 = v14;
  v92 = v26;
  v90 = v27;
  if (v15)
  {
    v32 = v15;
    v82 = v22;
    v84 = &v81;
    v99 = v15;
    MEMORY[0x1EEE9AC00](v29, v30);
    v83 = &v81 - 6;
    *(&v81 - 4) = sub_1D5B4AA6C;
    *(&v81 - 3) = 0;
    v79 = sub_1D6708A2C;
    v80 = v31;
    v96 = 0;
    v33 = v9;
    v34 = v26;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v96;
    *(v35 + 40) = v27;
    *(v35 + 48) = v28;
    sub_1D668AF68(0);
    v37 = v36;
    v38 = sub_1D5B58B84(&qword_1EDF03428, sub_1D668AF68, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v85 = v32;
    v81 = v37;
    v39 = v38;
    v40 = sub_1D72647CC();
    v96 = 0;
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 16) = v40;
    *(v41 + 40) = v96;
    v42 = *(v34 + 36);
    v9 = v33;
    v43 = &v14[v42];
    v44 = *&v14[v42 + 24];
    v45 = *&v14[v42 + 32];
    v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
    MEMORY[0x1EEE9AC00](v46, v47);
    MEMORY[0x1EEE9AC00](v48, v49);
    v50 = v83;
    *(&v81 - 4) = sub_1D615B4A4;
    *(&v81 - 3) = v50;
    v79 = sub_1D668B08C;
    v80 = v35;
    v51 = v95;
    v53 = sub_1D5D2F7A4(v33, sub_1D615B49C, v52, sub_1D615B4A4, (&v81 - 6), v44, v45);
    if (v51)
    {

      v54 = v94;
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      v55 = v54;
      return sub_1D5D2CFE8(v55, sub_1D668AED4);
    }

    v57 = v53;
    v95 = v39;

    if (v57)
    {
      type metadata accessor for FormatTextNodeStyle();
      sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
      v14 = v94;
      sub_1D72647EC();
      v56 = v93;
      v22 = v82;
      v95 = 0;
    }

    else
    {
      v95 = 0;

      v14 = v94;
      v56 = v93;
      v22 = v82;
    }
  }

  else
  {

    v56 = v93;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  (v88)(v56, v89, v22);
  swift_storeEnumTagMultiPayload();
  v99 = v91;
  v93 = xmmword_1D728CF30;
  v97 = xmmword_1D728CF30;
  v98 = 0;
  v96 = 0;
  v58 = swift_allocObject();
  v59 = v56;
  v91 = &v81;
  *(v58 + 16) = v93;
  *(v58 + 32) = v96;
  v60 = v90;
  *(v58 + 40) = v90;
  *(v58 + 48) = v28;
  MEMORY[0x1EEE9AC00](v58, v61);
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6708A2C;
  v80 = v62;
  v96 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v93;
  *(v63 + 32) = v96;
  *(v63 + 40) = v60;
  *(v63 + 48) = v28;
  sub_1D668AF68(0);
  v65 = v64;
  sub_1D5B58B84(&qword_1EDF03428, sub_1D668AF68, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v90 = v65;
  v66 = sub_1D72647CC();
  v96 = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v93;
  *(v67 + 40) = v96;
  v68 = &v14[*(v92 + 36)];
  v69 = *(v68 + 3);
  v70 = *(v68 + 4);
  v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
  MEMORY[0x1EEE9AC00](v71, v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v79 = sub_1D6708A2C;
  v80 = v63;
  v75 = v95;
  sub_1D5D2BC70(v59, sub_1D615B49C, v76, sub_1D615B4A4, (&v81 - 6), v69, v70);
  if (v75)
  {
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v55 = v94;
  }

  else
  {

    sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    sub_1D668AFFC();
    v77 = v94;
    sub_1D72647EC();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v55 = v77;
  }

  return sub_1D5D2CFE8(v55, sub_1D668AED4);
}

uint64_t sub_1D64A4714()
{
  v1 = 0x664F7265626D756ELL;
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
    return 0x656C797473;
  }
}

uint64_t sub_1D64A4770@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A47A8(uint64_t a1)
{
  v2 = sub_1D668AE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A47E4(uint64_t a1)
{
  v2 = sub_1D668AE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64A4820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65646E6563736564;
  }

  else
  {
    v3 = 0x7265646E65637361;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x65646E6563736564;
  }

  else
  {
    v5 = 0x7265646E65637361;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D64A48CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A4954(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A49C8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A4A58(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E65637361;
  if (*v1)
  {
    v2 = 0x65646E6563736564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D64A4B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463617274627573;
  }

  else
  {
    v3 = 6579297;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7463617274627573;
  }

  else
  {
    v5 = 6579297;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1D64A4BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A4C68(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A4CD0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A4D54(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 0x7463617274627573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatFontMetricSizing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D668B108(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668B19C(0);
  sub_1D5B58B84(&qword_1EDF25278, sub_1D668B19C, &unk_1D7321584);
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

      v20 = sub_1D6627E68(1702521203, 0xE400000000000000, 0x656C797473, 0xE500000000000000);
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

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CA9754();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontMetricSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D668B31C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v74 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668B19C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25278, sub_1D668B19C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFontMetricSizing, v19, v21, v16, &type metadata for FormatFontMetricSizing, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v71 = v23;
  v72 = v22;
  v69[1] = v24 + 16;
  v70 = v25;
  v25(v9);
  v69[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  *&v78 = v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708A30;
  v68 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v73 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D668B3B0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03248, sub_1D668B3B0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = *(v11 + 36);
  v80 = v14;
  v39 = &v14[v38];
  v41 = *(v39 + 3);
  v40 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v67 = sub_1D6708A30;
  v68 = v32;
  v46 = v79;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, &v69[-6], v41, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v80, sub_1D668B31C);
  }

  else
  {
    v79 = v39;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v48 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v75;
    v70(v75, v71, v72);
    swift_storeEnumTagMultiPayload();
    v78 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    LOBYTE(v84) = 0;
    v51 = swift_allocObject();
    v53 = v51;
    *(v51 + 16) = v78;
    *(v51 + 32) = v84;
    v54 = v73;
    *(v51 + 40) = v73;
    *(v51 + 48) = v28;
    v55 = v28;
    if (v74 == 12)
    {
    }

    else
    {
      v72 = v69;
      LOBYTE(v84) = v74;
      v56 = v54;
      MEMORY[0x1EEE9AC00](v51, v52);
      v69[-4] = sub_1D5B4AA6C;
      v69[-3] = 0;
      v67 = sub_1D6708A30;
      v68 = v53;
      v81 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v78;
      *(v57 + 32) = v81;
      *(v57 + 40) = v56;
      *(v57 + 48) = v55;
      swift_retain_n();
      v58 = sub_1D72647CC();
      v81 = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v78;
      *(v59 + 40) = v81;
      v60 = *(v79 + 3);
      v61 = *(v79 + 4);
      v62 = __swift_project_boxed_opaque_existential_1(v79, v60);
      MEMORY[0x1EEE9AC00](v62, v63);
      MEMORY[0x1EEE9AC00](v64, v65);
      v69[-4] = sub_1D615B4A4;
      v69[-3] = &v69[-6];
      v50 = v75;
      v67 = sub_1D668B444;
      v68 = v57;
      LOBYTE(v61) = sub_1D5D2F7A4(v75, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6], v60, v61);

      if (v61)
      {
        sub_1D668B4C0();
        v48 = v80;
        sub_1D72647EC();
      }

      else
      {
        v48 = v80;
      }
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v48, sub_1D668B31C);
  }
}

uint64_t sub_1D64A5AA8()
{
  v1 = 0x656C797473;
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

uint64_t sub_1D64A5AF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D12C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A5B28(uint64_t a1)
{
  v2 = sub_1D668B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A5B64(uint64_t a1)
{
  v2 = sub_1D668B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontScaling.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFontScaling, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatFontScaling, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v18, v14, v19, &off_1F51F6C78);
  if ((v16 & 0xFF00) == 0xC00)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422FCC(0, v10);
    v23 = v10;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B17D8(1, v15, v16 & 0xFF01, v6);
    v23 = v6;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64A5EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656C616373;
  }

  else
  {
    v3 = 0x656C616353746F6ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656C616373;
  }

  else
  {
    v5 = 0x656C616353746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
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

uint64_t sub_1D64A5F60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A5FE4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A6054(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A60D4(uint64_t *a1@<X8>)
{
  v2 = 0x656C616353746F6ELL;
  if (*v1)
  {
    v2 = 0x64656C616373;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatFontScalingData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v85 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v75 - v8;
  sub_1D668B514(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  LODWORD(v83) = *(v1 + 9);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CA9428(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF252A8, sub_1D5CA9428, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFontScalingData, v20, v22, v17, &type metadata for FormatFontScalingData, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v81 = v25 + 16;
  v26(v9, v24, v23);
  v80 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = 0uLL;
  v90 = 0;
  v27 = &v14[*(v11 + 44)];
  v84 = v11;
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v88) = 0;
  v30 = swift_allocObject();
  v32 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v88;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  v82 = v28;
  if (v16)
  {

LABEL_5:
    v33 = v85;
    goto LABEL_6;
  }

  v76 = v26;
  v77 = v24;
  v79 = v75;
  v88 = v15;
  MEMORY[0x1EEE9AC00](v30, v31);
  v78 = &v75[-6];
  v75[-4] = sub_1D5B4AA6C;
  v75[-3] = 0;
  v73 = sub_1D6708A34;
  v74 = v32;
  v87 = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v87;
  *(v53 + 40) = v28;
  *(v53 + 48) = v29;
  sub_1D668B5A8(0);
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF032B8, sub_1D668B5A8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v75[1] = v56;
  v75[2] = v55;
  v57 = sub_1D72647CC();
  v87 = 0;
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 16) = v57;
  *(v58 + 40) = v87;
  v59 = &v14[*(v84 + 36)];
  v60 = *(v59 + 3);
  v61 = *(v59 + 4);
  v62 = __swift_project_boxed_opaque_existential_1(v59, v60);
  MEMORY[0x1EEE9AC00](v62, v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  v66 = v78;
  v75[-4] = sub_1D615B4A4;
  v75[-3] = v66;
  v73 = sub_1D668B63C;
  v74 = v53;
  v67 = v86;
  v69 = sub_1D5D2F7A4(v9, sub_1D615B49C, v68, sub_1D615B4A4, &v75[-6], v60, v61);
  v86 = v67;
  if (v67)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v14, sub_1D668B514);
  }

  v71 = v69;

  if (v71)
  {
    sub_1D5B578C4();
    v72 = v86;
    sub_1D72647EC();
    v26 = v76;
    v24 = v77;
    if (v72)
    {
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
      goto LABEL_11;
    }

    v86 = 0;
    goto LABEL_5;
  }

  v33 = v85;
  v26 = v76;
  v24 = v77;
LABEL_6:
  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v26(v33, v24, v23);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v88) = v83;
  v85 = xmmword_1D728CF30;
  v89 = xmmword_1D728CF30;
  v90 = 0;
  v87 = 0;
  v34 = swift_allocObject();
  v83 = v75;
  *(v34 + 16) = v85;
  *(v34 + 32) = v87;
  v35 = v82;
  *(v34 + 40) = v82;
  *(v34 + 48) = v29;
  MEMORY[0x1EEE9AC00](v34, v36);
  v75[-4] = sub_1D5B4AA6C;
  v75[-3] = 0;
  v73 = sub_1D6708A34;
  v74 = v37;
  v87 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v85;
  *(v38 + 32) = v87;
  *(v38 + 40) = v35;
  *(v38 + 48) = v29;
  sub_1D668B5A8(0);
  v40 = v39;
  sub_1D5B58B84(&qword_1EDF032B8, sub_1D668B5A8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v41 = v33;
  v82 = v40;
  v42 = sub_1D72647CC();
  v87 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v85;
  *(v43 + 40) = v87;
  v44 = &v14[*(v84 + 36)];
  v45 = *(v44 + 3);
  v46 = *(v44 + 4);
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v75[-4] = sub_1D615B4A4;
  v75[-3] = &v75[-6];
  v73 = sub_1D6708A34;
  v74 = v38;
  v51 = v86;
  sub_1D5D2BC70(v41, sub_1D615B49C, v52, sub_1D615B4A4, &v75[-6], v45, v46);
  if (!v51)
  {

    sub_1D668B4C0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
LABEL_11:

    return sub_1D5D2CFE8(v14, sub_1D668B514);
  }

  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v14, sub_1D668B514);
}

uint64_t sub_1D64A6A48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A6A80(uint64_t a1)
{
  v2 = sub_1D5CA95AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A6ABC(uint64_t a1)
{
  v2 = sub_1D5CA95AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontScalingStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = v60 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = v60 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v69 = v60 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = v60 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v67 = v60 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = v60 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v65 = v60 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v64 = v60 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v63 = v60 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v62 = v60 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v61 = v60 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v60 - v41;
  v76 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(*(v45 - 8) + 16);
  v47(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v74;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v73;
  v51 = v73[3];
  v74 = v73[4];
  v60[1] = __swift_project_boxed_opaque_existential_1(v73, v51);
  if (v76 > 5)
  {
    v55 = v47;
    if (v76 > 8)
    {
      if (v76 == 9)
      {
        v53 = 9;
        v56 = v70;
        v55(v70, v46, v45);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v76;
        if (v76 != 10)
        {
          v59 = v72;
          v55(v72, v46, v45);
          swift_storeEnumTagMultiPayload();
          sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v51, v74);
          v57 = v59;
          goto LABEL_31;
        }

        v56 = v71;
        v55(v71, v46, v45);
        swift_storeEnumTagMultiPayload();
      }
    }

    else if (v76 == 6)
    {
      v53 = 6;
      v56 = v67;
      v55(v67, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = v76;
      if (v76 == 7)
      {
        v56 = v68;
        v55(v68, v46, v45);
      }

      else
      {
        v56 = v69;
        v55(v69, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

LABEL_30:
    sub_1D5D2BEC4(v56, sub_1D5B4AA6C, 0, v51, v74);
    v57 = v56;
LABEL_31:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    goto LABEL_32;
  }

  v52 = v47;
  if (v76 <= 2)
  {
    if (v76)
    {
      v53 = v76;
      if (v76 == 1)
      {
        v54 = v62;
        v52(v62, v46, v45);
      }

      else
      {
        v54 = v63;
        v52(v63, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = 0;
      v54 = v61;
      v52(v61, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_27;
  }

  if (v76 == 3)
  {
    v53 = 3;
    v54 = v64;
    v52(v64, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v53 = v76;
  if (v76 != 4)
  {
    v56 = v66;
    v52(v66, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  v54 = v65;
  v52(v65, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_27:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v51, v74);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_32:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D7264B3C();
  v77 = v53;
  FormatFontScalingStyle.rawValue.getter(v58);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v75[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t FormatFontWidth.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v55 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v54 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v53 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v52 = &v50 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v51 = &v50 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v50 - v35;
  v61 = *v1;
  v37 = a1[3];
  v38 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(*(v39 - 8) + 16);
  v41(v36, v40, v39);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v64;
  sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v37, v38);
  if (v42)
  {
    return sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  v44 = v62;
  v45 = v62[3];
  v64 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v45);
  if (v61 > 4)
  {
    v48 = v40;
    if (v61 <= 6)
    {
      if (v61 == 5)
      {
        v47 = v56;
        v41(v56, v48, v39);
      }

      else
      {
        v47 = v57;
        v41(v57, v48, v39);
      }
    }

    else if (v61 == 7)
    {
      v47 = v58;
      v41(v58, v48, v39);
    }

    else
    {
      v47 = v59;
      v41(v59, v48, v39);
    }

    goto LABEL_15;
  }

  v46 = v40;
  if (v61 > 1)
  {
    if (v61 == 2)
    {
      v47 = v53;
      v41(v53, v46, v39);
    }

    else
    {
      v47 = v54;
      v41(v54, v46, v39);
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v47, sub_1D5B4AA6C, 0, v45, v64);
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
    goto LABEL_19;
  }

  v49 = v51;
  v41(v51, v40, v39);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v49, sub_1D5B4AA6C, 0, v45, v64);
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t FormatFrameExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D668B6B8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668B74C(0);
  sub_1D5B58B84(&qword_1EDF0C530, sub_1D668B74C, &unk_1D7321584);
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

  v13 = v35;
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D66251A4(0x6369676F6CLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v32 = 0uLL;
  LOBYTE(v33) = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D6057B10();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v33;
  v28 = v34;
  v29 = v32;
  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v29;
  *(v13 + 32) = v27;
  *(v13 + 40) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D668B8CC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v77 = v1[3];
  v78 = v17;
  v76 = v1[4];
  v93 = *(v1 + 40);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D668B74C(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF0C530, sub_1D668B74C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFrameExpression, v21, v23, v18, &type metadata for FormatFrameExpression, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v74 = v25;
  v80 = v24;
  v72 = v26 + 16;
  v73(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v86 = v15;
  *(&v86 + 1) = v16;
  v88 = 0;
  v89 = 0;
  LOBYTE(v90) = 0;
  v27 = &v14[*(v11 + 44)];
  v83 = v9;
  v28 = *v27;
  v29 = *(v27 + 1);
  v92 = 0;
  v30 = swift_allocObject();
  v84 = &v69;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v92;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708A38;
  v68 = v32;
  v92 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v92;
  v75 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D668B960(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF032A8, sub_1D668B960, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v36;
  v82 = v35;
  v37 = sub_1D72647CC();
  v92 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v92;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v46 = v83;
  v67 = sub_1D668B9F4;
  v68 = v33;
  v47 = v85;
  sub_1D5D2BC70(v83, sub_1D615B49C, v48, sub_1D615B4A4, (&v69 - 6), v40, v41);
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69 = v39;
    v49 = v80;
    v70 = v29;

    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v51 = v79;
    (v73)(v79, v74, v49);
    swift_storeEnumTagMultiPayload();
    v88 = v78;
    v89 = v77;
    v90 = v76;
    v91 = v93;
    v85 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v92 = 0;
    v52 = swift_allocObject();
    v84 = &v69;
    *(v52 + 16) = v85;
    *(v52 + 32) = v92;
    v53 = v75;
    v54 = v70;
    *(v52 + 40) = v75;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708A38;
    v68 = v56;
    v92 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v85;
    *(v57 + 32) = v92;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v92 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v85;
    *(v59 + 40) = v92;
    v60 = *(v69 + 3);
    v61 = *(v69 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v69, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708A38;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D6057B64();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D668B8CC);
}

uint64_t sub_1D64A89A8()
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
    return 0xD000000000000010;
  }
}

uint64_t sub_1D64A89FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64A8A34(uint64_t a1)
{
  v2 = sub_1D668B824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A8A70(uint64_t a1)
{
  v2 = sub_1D668B824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64A8AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 0x656E694C74786574;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (*a2 != 1)
  {
    v8 = 0x656E694C74786574;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6874646977;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_1D64A8BAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64A8C4C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64A8CD8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64A8D74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664500(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64A8DA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746867696568;
  if (v2 != 1)
  {
    v5 = 0x656E694C74786574;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatFrameExpressionLogicCompare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v70 - v8);
  sub_1D668BC84(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668BB04(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C400, sub_1D668BB04, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogicCompare, v19, v21, v16, &type metadata for FormatFrameExpressionLogicCompare, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v74 = *(v24 + 16);
  v75 = v23;
  v73 = v24 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v85 = 0;
  v28 = swift_allocObject();
  v81 = &v70;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v85;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v83 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708908;
  v69 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D668BD18(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02D38, sub_1D668BD18, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  v85 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v85;
  v37 = *(v11 + 36);
  v82 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v46 = v83;
  v45 = v84;
  v68 = sub_1D6708908;
  v69 = v31;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v82;
  }

  else
  {
    v70 = v38;
    v71 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v48 = v82;
    sub_1D72647EC();
    v49 = v48;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v52 = v78;
    (v74)(v78, v75, v22);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v88) = v77;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v83 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v76;
    v55 = v71;
    *(v53 + 40) = v76;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D6708908;
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
    v61 = *(v70 + 3);
    v62 = *(v70 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v70, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D6708908;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v49;
  }

  return sub_1D5D2CFE8(v50, sub_1D668BC84);
}

uint64_t sub_1D64A97C4(uint64_t a1)
{
  v2 = sub_1D668BBDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A9800(uint64_t a1)
{
  v2 = sub_1D668BBDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFrameExpressionLogicTextLines.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D668BE10(0);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668BEA4(0);
  sub_1D5B58B84(&qword_1EC886B88, sub_1D668BEA4, &unk_1D7321584);
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

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D661AFD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v18 = v29;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  v24 = v29;
  type metadata accessor for FormatTextNodeStyle();
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
  sub_1D726431C();
  v25 = v29;
  v27 = xmmword_1D72BAA60;
  v31 = xmmword_1D72BAA60;
  v32 = 0;
  if (sub_1D726434C())
  {
    v29 = v27;
    v30 = 0;
    sub_1D726431C();
    (*(v28 + 8))(v10, v7);
    v26 = v33;
  }

  else
  {
    (*(v28 + 8))(v10, v7);
    v26 = 1;
  }

  *a2 = v18;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpressionLogicTextLines.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v110 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v104 - v14;
  sub_1D668C024(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v111 = *(v1 + 8);
  v109 = v1[2];
  v107 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D668BEA4(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EC886B88, sub_1D668BEA4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogicTextLines, v25, v27, v22, &type metadata for FormatFrameExpressionLogicTextLines, v25, &type metadata for FormatVersions.JazzkonC, v23, v20, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v116 = v29;
  v117 = v28;
  v114 = v30 + 16;
  v115 = v31;
  (v31)(v15);
  v113 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v128 = v21;
  v126 = 0uLL;
  v127 = 0;
  v32 = &v20[*(v17 + 44)];
  v122 = v15;
  v33 = *v32;
  v34 = *(v32 + 1);
  v125 = 0;
  v35 = swift_allocObject();
  v123 = &v104;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v125;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v104 - 4) = sub_1D5B4AA6C;
  *(&v104 - 3) = 0;
  v102 = sub_1D6708A3C;
  v103 = v37;
  v125 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v125;
  v112 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D668C0B8(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EC886BA0, sub_1D668C0B8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v119 = v41;
  v120 = v40;
  v42 = sub_1D72647CC();
  v125 = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v125;
  v44 = &v20[*(v17 + 36)];
  v45 = *(v44 + 3);
  v46 = *(v44 + 4);
  v121 = v20;
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v104 - 4) = sub_1D615B4A4;
  *(&v104 - 3) = (&v104 - 6);
  v102 = sub_1D6708A3C;
  v103 = v38;
  v51 = v122;
  v52 = v124;
  sub_1D5D2BC70(v122, sub_1D615B49C, v53, sub_1D615B4A4, (&v104 - 6), v45, v46);
  if (v52)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v54 = v121;
LABEL_7:
    v72 = v54;
    return sub_1D5D2CFE8(v72, sub_1D668C024);
  }

  v105 = v44;
  v106 = v34;

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();
  v54 = v121;
  sub_1D72647EC();
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v55 = v118;
  v115(v118, v116, v117);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v128) = v111;
  v124 = xmmword_1D728CF30;
  v126 = xmmword_1D728CF30;
  v127 = 0;
  v125 = 0;
  v56 = swift_allocObject();
  v123 = &v104;
  *(v56 + 16) = v124;
  *(v56 + 32) = v125;
  v57 = v112;
  v58 = v106;
  *(v56 + 40) = v112;
  *(v56 + 48) = v58;
  MEMORY[0x1EEE9AC00](v56, v59);
  v122 = 0;
  *(&v104 - 4) = sub_1D5B4AA6C;
  *(&v104 - 3) = 0;
  v102 = sub_1D6708A3C;
  v103 = v60;
  v125 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v124;
  *(v61 + 32) = v125;
  *(v61 + 40) = v57;
  *(v61 + 48) = v58;
  swift_retain_n();
  v62 = sub_1D72647CC();
  v125 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v124;
  *(v63 + 40) = v125;
  v64 = *(v105 + 3);
  v65 = *(v105 + 4);
  v66 = __swift_project_boxed_opaque_existential_1(v105, v64);
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  *(&v104 - 4) = sub_1D615B4A4;
  *(&v104 - 3) = (&v104 - 6);
  v102 = sub_1D6708A3C;
  v103 = v61;
  v70 = v122;
  sub_1D5D2BC70(v55, sub_1D615B49C, v71, sub_1D615B4A4, (&v104 - 6), v64, v65);
  if (v70)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    goto LABEL_7;
  }

  sub_1D60566E4();
  sub_1D72647EC();
  sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

  v74 = v110;
  v115(v110, v116, v117);
  swift_storeEnumTagMultiPayload();
  v128 = v109;
  v124 = xmmword_1D7297410;
  v126 = xmmword_1D7297410;
  v127 = 0;
  v125 = 0;
  v75 = swift_allocObject();
  v123 = &v104;
  *(v75 + 16) = v124;
  *(v75 + 32) = v125;
  v76 = v112;
  v77 = v106;
  *(v75 + 40) = v112;
  *(v75 + 48) = v77;
  MEMORY[0x1EEE9AC00](v75, v78);
  *(&v104 - 4) = sub_1D5B4AA6C;
  *(&v104 - 3) = 0;
  v102 = sub_1D6708A3C;
  v103 = v79;
  v125 = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v124;
  *(v80 + 32) = v125;
  *(v80 + 40) = v76;
  *(v80 + 48) = v77;
  swift_retain_n();
  v81 = sub_1D72647CC();
  v125 = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v124;
  *(v82 + 40) = v125;
  v83 = *(v105 + 3);
  v84 = *(v105 + 4);
  v85 = __swift_project_boxed_opaque_existential_1(v105, v83);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v104 - 4) = sub_1D615B4A4;
  *(&v104 - 3) = (&v104 - 6);
  v102 = sub_1D6708A3C;
  v103 = v80;
  sub_1D5D2BC70(v74, sub_1D615B49C, v89, sub_1D615B4A4, (&v104 - 6), v83, v84);

  type metadata accessor for FormatTextNodeStyle();
  sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
  sub_1D72647EC();
  v90 = v54;
  sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

  v91 = v108;
  v115(v108, v116, v117);
  swift_storeEnumTagMultiPayload();
  if ((v107 & 1) == 0)
  {
    LOBYTE(v126) = 0;
    v92 = swift_allocObject();
    v124 = xmmword_1D72BAA60;
    *(v92 + 16) = xmmword_1D72BAA60;
    *(v92 + 32) = v126;
    *(v92 + 40) = v112;
    *(v92 + 48) = v106;

    v93 = sub_1D72647CC();
    LOBYTE(v126) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v124;
    *(v94 + 40) = v126;
    v95 = *(v105 + 3);
    v96 = *(v105 + 4);
    v97 = __swift_project_boxed_opaque_existential_1(v105, v95);
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v104 - 4) = sub_1D5B4AA6C;
    *(&v104 - 3) = 0;
    v102 = sub_1D668C14C;
    v103 = v92;
    LOBYTE(v95) = sub_1D5D2F7A4(v91, sub_1D615B49C, v101, sub_1D615B4A4, (&v104 - 6), v95, v96);

    if (v95)
    {
      v126 = v124;
      v127 = 0;
      LOBYTE(v128) = 0;
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
  v72 = v90;
  return sub_1D5D2CFE8(v72, sub_1D668C024);
}

uint64_t sub_1D64AAC4C()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0x656C797473;
  v4 = 0x6C61726765746E69;
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
    v2 = 0x726F74617265706FLL;
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

uint64_t sub_1D64AACD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D474(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64AAD10(uint64_t a1)
{
  v2 = sub_1D668BF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AAD4C(uint64_t a1)
{
  v2 = sub_1D668BF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64AAD98(uint64_t a1)
{
  v2 = sub_1D5CC242C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AADD4(uint64_t a1)
{
  v2 = sub_1D5CC242C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGeometryAdjustment.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D668C1C8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668C25C(0);
  sub_1D5B58B84(&qword_1EC886BD0, sub_1D668C25C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v31;
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

      v22 = sub_1D661B1A8();
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

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v33 = 0uLL;
  v34 = 0;
  sub_1D726431C();
  v19 = v35;
  v33 = xmmword_1D728CF30;
  v34 = 0;
  sub_1D726431C();
  v24 = v35;
  v33 = xmmword_1D7297410;
  v34 = 0;
  sub_1D726431C();
  v29 = v35;
  v30 = v24;
  v33 = xmmword_1D72BAA60;
  v34 = 0;
  sub_1D726431C();
  (*(v31 + 8))(v14, v6);
  v26 = v35;
  v27 = v29;
  v28 = v30;
  *v11 = v19;
  v11[1] = v28;
  v11[2] = v27;
  v11[3] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGeometryAdjustment.encode(to:)(void *a1)
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
  sub_1D668C3DC(0);
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
  sub_1D668C25C(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886BD0, sub_1D668C25C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGeometryAdjustment, v26, v28, v23, &type metadata for FormatGeometryAdjustment, v26, &type metadata for FormatVersions.StarSky, v24, v20, v27, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
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
  v111 = sub_1D6708A40;
  v112 = v38;
  v133 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v133;
  v126 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D668C470(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EC886BE8, sub_1D668C470, MEMORY[0x1E69E6F60]);
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
  v111 = sub_1D668C504;
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
    v111 = sub_1D6708A40;
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
    v111 = sub_1D6708A40;
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
    v111 = sub_1D6708A40;
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
    v111 = sub_1D6708A40;
    v112 = v101;
    sub_1D5D2BC70(v95, sub_1D615B49C, v110, sub_1D615B4A4, &v113[-6], v104, v105);

    sub_1D72647EC();
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

    v60 = v62;
  }

  return sub_1D5D2CFE8(v60, sub_1D668C3DC);
}

uint64_t sub_1D64AC168()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x6874646977;
  v4 = 0x746867696568;
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
    v2 = 121;
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

uint64_t sub_1D64AC1DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668D61C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64AC214(uint64_t a1)
{
  v2 = sub_1D668C334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AC250(uint64_t a1)
{
  v2 = sub_1D668C334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGeometryNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v178 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v181 = v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v182 = v178 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v183 = v178 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v191 = v178 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v178 - v23;
  sub_1D668DF18(0);
  *&v193 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D668E040(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF255B8, sub_1D668E040, &unk_1D7321584);
  v194 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.StarSky, v30, v28, v33, &off_1F51F6CD8);
  swift_beginAccess();
  v36 = v2[2];
  v35 = v2[3];
  v188 = v2;
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
  v190 = v39;
  v41(v24);
  v43 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v44 = sub_1D725895C();
  v45 = (*(*(v44 - 8) + 48))(v8, 1, v44);
  v184 = v38;
  v185 = v41;
  v186 = v42;
  v187 = v43;
  if (v45 == 1)
  {
    v180 = v36;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v46 = v193;
    v47 = v194;
    v48 = &v194[*(v193 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v195) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v195;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D668DFAC(0);
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC, MEMORY[0x1E69E6F60]);

    *&v189 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v195) = 0;
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = v54;
    *(v55 + 40) = v195;
    v56 = (v47 + *(v46 + 36));
    v57 = v56[3];
    v58 = v56[4];
    v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v178[-4] = sub_1D5B4AA6C;
    v178[-3] = 0;
    v176 = sub_1D668E1C0;
    v177 = v51;
    v63 = v192;
    v65 = sub_1D5D2F7A4(v24, sub_1D615B49C, v64, sub_1D615B4A4, &v178[-6], v57, v58);
    if (v63)
    {
      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

LABEL_27:
      v94 = v47;
      return sub_1D5D2CFE8(v94, sub_1D668DF18);
    }

    v66 = v65;

    if (v66)
    {
      v195 = 0uLL;
      LOBYTE(v196) = 0;
      v203 = v180;
      v204 = v35;
      sub_1D72647EC();

      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
      v38 = v184;
      *&v192 = 0;
    }

    else
    {
      *&v192 = 0;
      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

      v38 = v184;
    }

    v41 = v185;
  }

  else
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v67 = v188;
  v69 = v188[4];
  v68 = v188[5];
  (v41)(v191, v190, v38);
  swift_storeEnumTagMultiPayload();
  v189 = xmmword_1D728CF30;
  v195 = xmmword_1D728CF30;
  LOBYTE(v196) = 0;
  v70 = v194;
  v71 = &v194[*(v193 + 44)];
  v73 = *v71;
  v72 = *(v71 + 1);
  LOBYTE(v203) = 0;
  v74 = swift_allocObject();
  v76 = v74;
  *(v74 + 16) = v189;
  *(v74 + 32) = v203;
  *(v74 + 40) = v73;
  *(v74 + 48) = v72;
  v180 = v72;
  v179 = v73;
  if (v68)
  {
    v178[1] = v178;
    v203 = v69;
    v204 = v68;
    MEMORY[0x1EEE9AC00](v74, v75);
    v178[-4] = sub_1D5B4AA6C;
    v178[-3] = 0;
    v176 = sub_1D6708A44;
    v177 = v76;
    LOBYTE(v202) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v189;
    *(v77 + 32) = v202;
    *(v77 + 40) = v73;
    *(v77 + 48) = v72;
    sub_1D668DFAC(0);
    v79 = v78;
    sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v178[0] = v79;
    v80 = sub_1D72647CC();
    LOBYTE(v202) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v189;
    *(v81 + 40) = v202;
    v82 = (v70 + *(v193 + 36));
    v83 = v82[3];
    v84 = v82[4];
    v85 = __swift_project_boxed_opaque_existential_1(v82, v83);
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    v178[-4] = sub_1D615B4A4;
    v178[-3] = &v178[-6];
    v176 = sub_1D6708A44;
    v177 = v77;
    v89 = v191;
    v90 = v192;
    v92 = sub_1D5D2F7A4(v191, sub_1D615B49C, v91, sub_1D615B4A4, &v178[-6], v83, v84);
    v93 = v90;
    if (v90)
    {

      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      v94 = v194;
      return sub_1D5D2CFE8(v94, sub_1D668DF18);
    }

    v96 = v92;

    if (v96)
    {
      sub_1D72647EC();
      v67 = v188;
      v95 = v179;

      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
      v38 = v184;
    }

    else
    {

      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      v67 = v188;
      v38 = v184;
      v95 = v179;
    }
  }

  else
  {

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

    v93 = v192;
    v95 = v73;
  }

  swift_beginAccess();
  v97 = v67[6];
  v98 = v183;
  v99 = v185;
  (v185)(v183, v190, v38);
  swift_storeEnumTagMultiPayload();
  if (*(v97 + 16))
  {
    LOBYTE(v195) = 0;
    v100 = swift_allocObject();
    v101 = v95;
    v102 = v100;
    v192 = xmmword_1D7297410;
    *(v100 + 16) = xmmword_1D7297410;
    *(v100 + 32) = v195;
    v103 = v180;
    *(v100 + 40) = v101;
    *(v100 + 48) = v103;
    sub_1D668DFAC(0);
    v105 = v104;
    v106 = sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC, MEMORY[0x1E69E6F60]);

    v107 = v194;
    *&v191 = v105;
    *&v189 = v106;
    v108 = sub_1D72647CC();
    LOBYTE(v195) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = v108;
    *(v109 + 24) = v192;
    *(v109 + 40) = v195;
    v110 = (v107 + *(v193 + 36));
    v111 = v93;
    v112 = v110[3];
    v113 = v110[4];
    v114 = __swift_project_boxed_opaque_existential_1(v110, v112);
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    v178[-4] = sub_1D5B4AA6C;
    v178[-3] = 0;
    v176 = sub_1D6708A44;
    v177 = v102;
    v119 = sub_1D5D2F7A4(v98, sub_1D615B49C, v118, sub_1D615B4A4, &v178[-6], v112, v113);
    if (v111)
    {
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

      v94 = v107;
      return sub_1D5D2CFE8(v94, sub_1D668DF18);
    }

    v121 = v119;
    v122 = v179;

    if (v121)
    {
      v195 = v192;
      LOBYTE(v196) = 0;
      v202 = v97;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v67 = v188;
      v123 = v193;
      v95 = v122;
      *&v192 = 0;

      sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
      v99 = v185;
      v120 = v123;
    }

    else
    {
      *&v192 = 0;
      sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);

      v67 = v188;
      v99 = v185;
      v120 = v193;
      v95 = v122;
    }
  }

  else
  {
    *&v192 = v93;
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
    v120 = v193;
  }

  swift_beginAccess();
  v124 = v67[7];
  v125 = v182;
  (v99)(v182, v190, v184);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v195) = 0;
  v126 = swift_allocObject();
  v191 = xmmword_1D72BAA60;
  *(v126 + 16) = xmmword_1D72BAA60;
  *(v126 + 32) = v195;
  *(v126 + 40) = v95;
  *(v126 + 48) = v180;
  sub_1D668DFAC(0);
  v128 = v127;
  v129 = sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC, MEMORY[0x1E69E6F60]);

  v190 = v124;

  v47 = v194;
  *&v189 = v128;
  v130 = sub_1D72647CC();
  LOBYTE(v195) = 0;
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = v191;
  *(v131 + 40) = v195;
  v132 = (v47 + *(v120 + 36));
  v133 = v132[3];
  v134 = v132[4];
  v135 = __swift_project_boxed_opaque_existential_1(v132, v133);
  *&v193 = v178;
  MEMORY[0x1EEE9AC00](v135, v136);
  MEMORY[0x1EEE9AC00](v137, v138);
  v178[-4] = sub_1D5B4AA6C;
  v178[-3] = 0;
  v176 = sub_1D6708A44;
  v177 = v126;
  v139 = v192;
  v141 = sub_1D5D2F7A4(v125, sub_1D615B49C, v140, sub_1D615B4A4, &v178[-6], v133, v134);
  if (v139)
  {
    sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);

    goto LABEL_27;
  }

  v143 = v141;
  v144 = v190;
  v183 = v129;

  if (v143)
  {
    v195 = v191;
    LOBYTE(v196) = 0;
    *&v200 = v144;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v145 = v188;
    v146 = v182;

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);

    v145 = v188;
  }

  *&v192 = 0;
  v147 = v145[8];
  v148 = v145[9];
  v149 = v145[11];
  *&v191 = v145[10];
  v151 = v145[12];
  v150 = v145[13];
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v152 = v184;
  v153 = __swift_project_value_buffer(v184, qword_1EDFFCE38);
  (v185)(v181, v153, v152);
  swift_storeEnumTagMultiPayload();
  v193 = xmmword_1D72BAA70;
  v200 = xmmword_1D72BAA70;
  v201 = 0;
  LOBYTE(v195) = 0;
  v154 = swift_allocObject();
  v156 = v154;
  *(v154 + 16) = v193;
  *(v154 + 32) = v195;
  v157 = v179;
  v158 = v180;
  *(v154 + 40) = v179;
  *(v154 + 48) = v158;
  if (v147)
  {
    v190 = v178;
    v182 = v147;
    *&v195 = v147;
    *(&v195 + 1) = v148;
    v196 = v191;
    v197 = v149;
    v198 = v151;
    v199 = v150;
    MEMORY[0x1EEE9AC00](v154, v155);
    v188 = &v178[-6];
    v178[-4] = sub_1D5B4AA6C;
    v178[-3] = 0;
    v176 = sub_1D6708A44;
    v177 = v156;
    v205 = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v193;
    *(v159 + 32) = v205;
    *(v159 + 40) = v157;
    *(v159 + 48) = v158;
    swift_retain_n();
    sub_1D5EB1D80(v182, v148, v191, v149, v151, v150);
    v160 = sub_1D72647CC();
    v205 = 0;
    v161 = swift_allocObject();
    *(v161 + 16) = v160;
    *(v161 + 24) = v193;
    *(v161 + 40) = v205;
    v162 = v132[3];
    v163 = v132[4];
    v164 = __swift_project_boxed_opaque_existential_1(v132, v162);
    MEMORY[0x1EEE9AC00](v164, v165);
    MEMORY[0x1EEE9AC00](v166, v167);
    v168 = v188;
    v178[-4] = sub_1D615B4A4;
    v178[-3] = v168;
    v176 = sub_1D6708A44;
    v177 = v159;
    v169 = v181;
    v170 = v192;
    v172 = sub_1D5D2F7A4(v181, sub_1D615B49C, v171, sub_1D615B4A4, &v178[-6], v162, v163);
    *&v192 = v170;
    if (v170)
    {
    }

    else
    {
      v173 = v172;

      if (v173)
      {
        sub_1D6659A24();
        v174 = v192;
        sub_1D72647EC();
        *&v192 = v174;
      }
    }

    v175 = v198;

    sub_1D5CBF568(v175);

    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v194, sub_1D668DF18);
}

uint64_t sub_1D64ADB94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  v4 = 2019912806;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65706F6373;
  if (v1 != 1)
  {
    v5 = 0x636E657265666572;
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

uint64_t sub_1D64ADC40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668FB50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64ADC78(uint64_t a1)
{
  v2 = sub_1D668E118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64ADCB4(uint64_t a1)
{
  v2 = sub_1D668E118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGlassEffect.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  sub_1D668E2D0(0);
  v4 = v3;
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668E3FC(0);
  v9 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1B918(0);
  sub_1D5B58B84(&qword_1EDF25628, sub_1D5E1B918, &unk_1D7321584);
  v13 = v65;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  if (v16)
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

      v22 = *(v19 - 2);
      v21 = *(v19 - 1);

      v23 = sub_1D661B50C();
      sub_1D5E2D970();
      v24 = swift_allocError();
      *v25 = v22;
      *(v25 + 8) = v21;
      v14 = v24;
      *(v25 + 16) = v23;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v64 + 8))(v12, v9);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
  sub_1D5CD3B58();
  v72 = 0uLL;
  LOBYTE(v73) = 0;
  sub_1D726427C();
  v20 = v70;
  v72 = xmmword_1D728CF30;
  LOBYTE(v73) = 0;
  sub_1D668E490();
  sub_1D726427C();
  v65 = v20;
  LODWORD(v20) = v70;
  v72 = xmmword_1D7297410;
  LOBYTE(v73) = 0;
  v27 = sub_1D668E4E4();
  sub_1D726427C();
  v61 = v27;
  LODWORD(v27) = v70;
  v70 = xmmword_1D72BAA60;
  v71 = 0;
  sub_1D667CF44();
  sub_1D726427C();
  v55 = v27;
  v56 = v20;
  v57 = v72;
  v60 = v74;
  v28 = v75;
  v58 = v73;
  v59 = v76;
  v29 = v77;
  v72 = xmmword_1D72BAA70;
  LOBYTE(v73) = 0;
  sub_1D668E538();
  sub_1D726427C();
  v54 = v29;
  v53 = v28;
  v51 = v70;
  v52 = xmmword_1D72BAA80;
  v72 = xmmword_1D72BAA80;
  LOBYTE(v73) = 0;
  if (sub_1D726434C())
  {
    v70 = v52;
    v71 = 0;
    sub_1D5B58B84(&qword_1EDF3BE10, sub_1D668E2D0, MEMORY[0x1E69D6380]);
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v63 + 1))(v7, v4);
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CD0];
  }

  v72 = xmmword_1D72BAA90;
  LOBYTE(v73) = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v50 = v70;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v72 = xmmword_1D72BAAA0;
  LOBYTE(v73) = 0;
  sub_1D5C35368();
  v63 = v12;
  sub_1D726427C();
  v30 = v70;
  v70 = xmmword_1D72BAAB0;
  v71 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v48 = v72;
  v49 = v73;
  v70 = xmmword_1D72BAAC0;
  v71 = 0;
  sub_1D726427C();
  v31 = v30;
  v45 = v72;
  v46 = v73;
  v72 = xmmword_1D72BAAD0;
  LOBYTE(v73) = 0;
  sub_1D668E58C();
  v47 = v9;
  v32 = v63;
  sub_1D726427C();
  v44 = v70;
  v70 = xmmword_1D72BAAE0;
  v71 = 0;
  sub_1D726427C();
  v43 = v72;
  v33 = v73;
  v72 = xmmword_1D72BAAF0;
  LOBYTE(v73) = 0;
  sub_1D726427C();
  (*(v64 + 8))(v32, v47);
  v34 = v80;
  v35 = v62;
  *v62 = v65;
  *(v35 + 8) = v56;
  *(v35 + 9) = v55;
  *(v35 + 10) = v78;
  *(v35 + 7) = v79;
  v36 = *(&v57 + 1);
  v35[2] = v57;
  v35[3] = v36;
  v37 = v60;
  v35[4] = v58;
  v35[5] = v37;
  v38 = v59;
  v35[6] = v53;
  v35[7] = v38;
  *(v35 + 32) = v54;
  *(v35 + 66) = v51;
  *(v35 + 67) = v68;
  *(v35 + 71) = v69;
  v39 = v50;
  v35[9] = v52;
  v35[10] = v39;
  v40 = v48;
  v35[11] = v31;
  *(v35 + 6) = __PAIR128__(*(&v48 + 1), v40);
  *(v35 + 112) = v49;
  *(v35 + 113) = v70;
  *(v35 + 29) = *(&v70 + 3);
  v41 = *(&v45 + 1);
  v35[15] = v45;
  v35[16] = v41;
  *(v35 + 136) = v46;
  *(v35 + 137) = v44;
  *(v35 + 71) = v67;
  *(v35 + 138) = v66;
  v42 = *(&v43 + 1);
  v35[18] = v43;
  v35[19] = v42;
  *(v35 + 160) = v33;
  *(v35 + 161) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGlassEffect.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v387 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v397 = &v387 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v400 = &v387 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v404 = &v387 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v406 = &v387 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v409 = &v387 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v417 = &v387 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v420 = &v387 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v419 = &v387 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v426 = &v387 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v425 = &v387 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v428 = &v387 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v387 - v42;
  sub_1D668E5E0(0);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v387 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  LODWORD(v427) = *(v1 + 8);
  v447 = *(v1 + 9);
  v50 = v1[3];
  v416 = v1[2];
  v415 = v50;
  v51 = v1[5];
  v414 = v1[4];
  v413 = v51;
  v52 = v1[7];
  v412 = v1[6];
  v411 = v52;
  v421 = *(v1 + 32);
  v418 = *(v1 + 66);
  v53 = v1[10];
  v410 = v1[9];
  v408 = v53;
  v54 = v1[12];
  v407 = v1[11];
  v403 = v54;
  v402 = v1[13];
  v405 = *(v1 + 112);
  v55 = v1[16];
  v399 = v1[15];
  v398 = v55;
  v401 = *(v1 + 136);
  v396 = *(v1 + 137);
  v56 = v1[19];
  v393 = v1[18];
  v392 = v56;
  v395 = *(v1 + 160);
  v391 = *(v1 + 161);
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_1D5E1B918(0);
  v60 = v59;
  v61 = sub_1D5B58B84(&qword_1EDF25628, sub_1D5E1B918, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGlassEffect, v60, v62, v57, &type metadata for FormatGlassEffect, v60, &type metadata for FormatVersions.LuckCheer, v58, v48, v61, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v63 = sub_1D725BD1C();
  v64 = __swift_project_value_buffer(v63, qword_1EDFFCC90);
  v65 = *(v63 - 8);
  v66 = *(v65 + 16);
  v432 = (v65 + 16);
  *&v433 = v66;
  v66(v43, v64, v63);
  v431 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v438 = 0uLL;
  LOBYTE(v439) = 0;
  v67 = &v48[*(v45 + 44)];
  *&v430 = v43;
  v69 = *v67;
  v68 = *(v67 + 1);
  LOBYTE(v444) = 0;
  v70 = swift_allocObject();
  v72 = v70;
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = v444;
  v437 = v69;
  *(v70 + 40) = v69;
  *(v70 + 48) = v68;
  v394 = v6;
  v423 = v63;
  v435 = v48;
  v424 = v64;
  if (!v49)
  {

    sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);

    v94 = v45;
    goto LABEL_11;
  }

  v422 = &v387;
  *&v444 = v49;
  MEMORY[0x1EEE9AC00](v70, v71);
  v429 = v45;
  *(&v387 - 4) = sub_1D5B4AA6C;
  *(&v387 - 3) = 0;
  v385 = sub_1D6708A48;
  v386 = v72;
  v446 = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  *(v73 + 32) = v446;
  *(v73 + 40) = v437;
  *(v73 + 48) = v68;
  sub_1D5E1B8DC(0);
  v75 = v74;
  v76 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
  swift_retain_n();

  v390 = v75;
  v389 = v76;
  v77 = v68;
  v78 = sub_1D72647CC();
  v446 = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v446;
  v80 = v429;
  v81 = &v48[*(v429 + 9)];
  v82 = *(v81 + 3);
  v83 = *(v81 + 4);
  v84 = __swift_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v387 - 4) = sub_1D615B4A4;
  *(&v387 - 3) = (&v387 - 6);
  v385 = sub_1D6708A48;
  v386 = v73;
  v88 = v430;
  v89 = v436;
  v91 = sub_1D5D2F7A4(v430, sub_1D615B49C, v90, sub_1D615B4A4, (&v387 - 6), v82, v83);
  if (!v89)
  {
    v95 = v91;
    v388 = v77;

    if (v95)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v94 = v80;
      v436 = 0;

      sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v436 = 0;

      sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);
      v94 = v80;
    }

    v68 = v388;
    v63 = v423;
    v64 = v424;
LABEL_11:
    v96 = v428;
    (v433)(v428, v64, v63);
    swift_storeEnumTagMultiPayload();
    v430 = xmmword_1D728CF30;
    v438 = xmmword_1D728CF30;
    LOBYTE(v439) = 0;
    LOBYTE(v444) = 0;
    v97 = swift_allocObject();
    v99 = v97;
    *(v97 + 16) = v430;
    *(v97 + 32) = v444;
    *(v97 + 40) = v437;
    *(v97 + 48) = v68;
    if (v427 == 14)
    {
    }

    else
    {
      v429 = &v387;
      LOBYTE(v444) = v427;
      MEMORY[0x1EEE9AC00](v97, v98);
      *(&v387 - 4) = sub_1D5B4AA6C;
      *(&v387 - 3) = 0;
      v385 = sub_1D6708A48;
      v386 = v99;
      v446 = 0;
      v109 = v96;
      v110 = swift_allocObject();
      *(v110 + 16) = v430;
      *(v110 + 32) = v446;
      *(v110 + 40) = v437;
      *(v110 + 48) = v68;
      sub_1D5E1B8DC(0);
      v112 = v111;
      v113 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v114 = v435;
      v427 = v112;
      v422 = v113;
      v115 = sub_1D72647CC();
      v446 = 0;
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      v117 = v109;
      *(v116 + 24) = v430;
      *(v116 + 40) = v446;
      v118 = (v114 + *(v94 + 9));
      v119 = v94;
      v120 = v118[3];
      v121 = v118[4];
      v122 = __swift_project_boxed_opaque_existential_1(v118, v120);
      MEMORY[0x1EEE9AC00](v122, v123);
      MEMORY[0x1EEE9AC00](v124, v125);
      *(&v387 - 4) = sub_1D615B4A4;
      *(&v387 - 3) = (&v387 - 6);
      v385 = sub_1D6708A48;
      v386 = v110;
      v126 = v436;
      v128 = sub_1D5D2F7A4(v117, sub_1D615B49C, v127, sub_1D615B4A4, (&v387 - 6), v120, v121);
      v436 = v126;
      if (v126)
      {
        sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v175 = v128;
      v94 = v119;

      if ((v175 & 1) == 0)
      {
        v63 = v423;
        v64 = v424;
        v100 = v425;
        v96 = v428;
        goto LABEL_14;
      }

      sub_1D668E814();
      v176 = v436;
      sub_1D72647EC();
      v96 = v428;
      if (v176)
      {
        v177 = v428;
LABEL_43:
        sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v436 = 0;
      v63 = v423;
      v64 = v424;
    }

    v100 = v425;
LABEL_14:
    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

    (v433)(v100, v64, v63);
    swift_storeEnumTagMultiPayload();
    v430 = xmmword_1D7297410;
    v438 = xmmword_1D7297410;
    LOBYTE(v439) = 0;
    LOBYTE(v444) = 0;
    v101 = swift_allocObject();
    v103 = v101;
    *(v101 + 16) = v430;
    *(v101 + 32) = v444;
    *(v101 + 40) = v437;
    *(v101 + 48) = v68;
    if (v447 == 2)
    {
      v429 = v94;

      goto LABEL_16;
    }

    v429 = &v387;
    LOBYTE(v444) = v447 & 1;
    MEMORY[0x1EEE9AC00](v101, v102);
    *(&v387 - 4) = sub_1D5B4AA6C;
    *(&v387 - 3) = 0;
    v385 = sub_1D6708A48;
    v386 = v103;
    v446 = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = v430;
    *(v129 + 32) = v446;
    *(v129 + 40) = v437;
    *(v129 + 48) = v68;
    sub_1D5E1B8DC(0);
    v131 = v130;
    v132 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v133 = v435;
    v428 = v131;
    v427 = v132;
    v134 = sub_1D72647CC();
    v446 = 0;
    v135 = v68;
    v136 = v100;
    v137 = swift_allocObject();
    *(v137 + 16) = v134;
    *(v137 + 24) = v430;
    *(v137 + 40) = v446;
    v138 = (v133 + *(v94 + 9));
    v139 = v138[3];
    v140 = v138[4];
    v141 = __swift_project_boxed_opaque_existential_1(v138, v139);
    MEMORY[0x1EEE9AC00](v141, v142);
    MEMORY[0x1EEE9AC00](v143, v144);
    *(&v387 - 4) = sub_1D615B4A4;
    *(&v387 - 3) = (&v387 - 6);
    v385 = sub_1D6708A48;
    v386 = v129;
    v145 = v436;
    v147 = sub_1D5D2F7A4(v136, sub_1D615B49C, v146, sub_1D615B4A4, (&v387 - 6), v139, v140);
    if (!v145)
    {
      v178 = v147;

      if (v178)
      {
        sub_1D668E704();
        sub_1D72647EC();
        v100 = v425;
        v436 = 0;
        v429 = v94;
        v68 = v135;
        v63 = v423;
        v64 = v424;
      }

      else
      {
        v436 = 0;
        v429 = v94;
        v68 = v135;
        v63 = v423;
        v64 = v424;
        v100 = v425;
      }

LABEL_16:
      sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);

      v104 = v426;
      (v433)(v426, v64, v63);
      swift_storeEnumTagMultiPayload();
      v430 = xmmword_1D72BAA60;
      v444 = xmmword_1D72BAA60;
      v445 = 0;
      LOBYTE(v438) = 0;
      v105 = swift_allocObject();
      v107 = v105;
      *(v105 + 16) = v430;
      *(v105 + 32) = v438;
      *(v105 + 40) = v437;
      *(v105 + 48) = v68;
      v108 = v421;
      if (v421 >> 11 <= 0x1E)
      {
        v428 = &v387;
        v148 = v416;
        v149 = v68;
        v150 = v415;
        *&v438 = v416;
        *(&v438 + 1) = v415;
        v151 = v414;
        v152 = v413;
        v439 = v414;
        v440 = v413;
        v153 = v412;
        v154 = v411;
        v441 = v412;
        v442 = v411;
        v443 = v421;
        MEMORY[0x1EEE9AC00](v105, v106);
        v427 = &v387 - 6;
        *(&v387 - 4) = sub_1D5B4AA6C;
        *(&v387 - 3) = 0;
        v385 = sub_1D6708A48;
        v386 = v107;
        v446 = 0;
        v155 = swift_allocObject();
        v156 = v149;
        v157 = v155;
        *(v155 + 16) = v430;
        *(v155 + 32) = v446;
        *(v155 + 40) = v437;
        *(v155 + 48) = v156;
        v388 = v156;
        swift_retain_n();
        sub_1D668E800(v148, v150, v151, v152, v153, v154, v108);
        sub_1D5E1B8DC(0);
        sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
        v158 = v435;
        v159 = sub_1D72647CC();
        v446 = 0;
        v160 = swift_allocObject();
        *(v160 + 16) = v159;
        *(v160 + 24) = v430;
        *(v160 + 40) = v446;
        v161 = v429;
        v162 = (v158 + *(v429 + 9));
        v163 = v162[3];
        v164 = v162[4];
        v165 = __swift_project_boxed_opaque_existential_1(v162, v163);
        MEMORY[0x1EEE9AC00](v165, v166);
        MEMORY[0x1EEE9AC00](v167, v168);
        v169 = v427;
        *(&v387 - 4) = sub_1D615B4A4;
        *(&v387 - 3) = v169;
        v385 = sub_1D6708A48;
        v386 = v157;
        v170 = v436;
        v172 = sub_1D5D2F7A4(v426, sub_1D615B49C, v171, sub_1D615B4A4, (&v387 - 6), v163, v164);
        if (v170)
        {

          v173 = v426;
          sub_1D5E1DE98(v438, *(&v438 + 1), v439, v440, v441, v442, v443);
LABEL_24:
          v174 = v173;
LABEL_57:
          sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
          goto LABEL_58;
        }

        v179 = v172;
        v180 = v388;
        v429 = v161;

        if (v179)
        {
          sub_1D6686A30();
          sub_1D72647EC();
          v68 = v180;
          v436 = 0;

          sub_1D5E1DE98(v438, *(&v438 + 1), v439, v440, v441, v442, v443);
          sub_1D5D2CFE8(v426, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v436 = 0;

          sub_1D5E1DE98(v438, *(&v438 + 1), v439, v440, v441, v442, v443);
          sub_1D5D2CFE8(v426, type metadata accessor for FormatVersionRequirement);
          v68 = v180;
        }

        v63 = v423;
        v64 = v424;
      }

      else
      {

        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      }

      v181 = v419;
      (v433)(v419, v64, v63);
      swift_storeEnumTagMultiPayload();
      v430 = xmmword_1D72BAA70;
      v438 = xmmword_1D72BAA70;
      LOBYTE(v439) = 0;
      LOBYTE(v444) = 0;
      v182 = swift_allocObject();
      v184 = v182;
      *(v182 + 16) = v430;
      *(v182 + 32) = v444;
      *(v182 + 40) = v437;
      *(v182 + 48) = v68;
      if (v418 == 4)
      {

        v185 = v181;
LABEL_46:
        sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

        v204 = v420;
        (v433)(v420, v64, v63);
        swift_storeEnumTagMultiPayload();
        if (*(v410 + 16))
        {
          LOBYTE(v438) = 0;
          v205 = swift_allocObject();
          v430 = xmmword_1D72BAA80;
          *(v205 + 16) = xmmword_1D72BAA80;
          *(v205 + 32) = v438;
          *(v205 + 40) = v437;
          *(v205 + 48) = v68;
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);

          v206 = v435;
          v207 = sub_1D72647CC();
          LOBYTE(v438) = 0;
          v208 = swift_allocObject();
          *(v208 + 16) = v207;
          *(v208 + 24) = v430;
          *(v208 + 40) = v438;
          v209 = (v206 + *(v429 + 9));
          v210 = v209[3];
          v211 = v209[4];
          v212 = __swift_project_boxed_opaque_existential_1(v209, v210);
          MEMORY[0x1EEE9AC00](v212, v213);
          MEMORY[0x1EEE9AC00](v214, v215);
          *(&v387 - 4) = sub_1D5B4AA6C;
          *(&v387 - 3) = 0;
          v385 = sub_1D668E674;
          v386 = v205;
          v216 = v436;
          v218 = sub_1D5D2F7A4(v204, sub_1D615B49C, v217, sub_1D615B4A4, (&v387 - 6), v210, v211);
          if (v216)
          {

            v174 = v420;
            goto LABEL_57;
          }

          v220 = v218;

          if (v220)
          {
            sub_1D5E07C38(v410, v435, 5, 0, 0);
          }

          v64 = v424;
          v219 = v417;
          v436 = 0;

          v63 = v423;
        }

        else
        {
          v219 = v417;
        }

        sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);
        (v433)(v219, v64, v63);
        swift_storeEnumTagMultiPayload();
        v430 = xmmword_1D72BAA90;
        v438 = xmmword_1D72BAA90;
        LOBYTE(v439) = 0;
        LOBYTE(v444) = 0;
        v221 = swift_allocObject();
        v223 = v221;
        *(v221 + 16) = v430;
        *(v221 + 32) = v444;
        *(v221 + 40) = v437;
        *(v221 + 48) = v68;
        if ((~v408 & 0xF000000000000007) != 0)
        {
          v428 = &v387;
          *&v444 = v408;
          MEMORY[0x1EEE9AC00](v221, v222);
          *(&v387 - 4) = sub_1D5B4AA6C;
          *(&v387 - 3) = 0;
          v385 = sub_1D6708A48;
          v386 = v223;
          v446 = 0;
          v225 = v224;
          v226 = swift_allocObject();
          *(v226 + 16) = v430;
          *(v226 + 32) = v446;
          *(v226 + 40) = v437;
          *(v226 + 48) = v68;
          swift_retain_n();
          sub_1D5CFCFAC(v225);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
          v227 = v435;
          v228 = sub_1D72647CC();
          v446 = 0;
          v229 = swift_allocObject();
          *(v229 + 16) = v228;
          *(v229 + 24) = v430;
          *(v229 + 40) = v446;
          v230 = (v227 + *(v429 + 9));
          v231 = v230[3];
          v232 = v230[4];
          v233 = __swift_project_boxed_opaque_existential_1(v230, v231);
          MEMORY[0x1EEE9AC00](v233, v234);
          MEMORY[0x1EEE9AC00](v235, v236);
          *(&v387 - 4) = sub_1D615B4A4;
          *(&v387 - 3) = (&v387 - 6);
          v385 = sub_1D6708A48;
          v386 = v226;
          v237 = v436;
          sub_1D5D2F7A4(v417, sub_1D615B49C, v238, sub_1D615B4A4, (&v387 - 6), v231, v232);
          if (v237)
          {

            v174 = v417;
            goto LABEL_57;
          }

          sub_1D5B55CBC();
          sub_1D72647EC();
          v436 = 0;

          v63 = v423;
          v64 = v424;
        }

        else
        {
        }

        sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);
        v240 = v409;
        (v433)(v409, v64, v63);
        swift_storeEnumTagMultiPayload();
        v430 = xmmword_1D72BAAA0;
        v438 = xmmword_1D72BAAA0;
        LOBYTE(v439) = 0;
        LOBYTE(v444) = 0;
        v241 = swift_allocObject();
        v243 = v241;
        *(v241 + 16) = v430;
        *(v241 + 32) = v444;
        *(v241 + 40) = v437;
        *(v241 + 48) = v68;
        if (v407)
        {
          v428 = &v387;
          *&v444 = v407;
          MEMORY[0x1EEE9AC00](v241, v242);
          *(&v387 - 4) = sub_1D5B4AA6C;
          *(&v387 - 3) = 0;
          v385 = sub_1D6708A48;
          v386 = v243;
          v446 = 0;
          v244 = v68;
          v245 = swift_allocObject();
          *(v245 + 16) = v430;
          *(v245 + 32) = v446;
          *(v245 + 40) = v437;
          *(v245 + 48) = v244;
          sub_1D5E1B8DC(0);
          v246 = v429;
          v248 = v247;
          v249 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
          swift_retain_n();

          v250 = v435;
          v427 = v248;
          v426 = v249;
          v251 = sub_1D72647CC();
          v446 = 0;
          v252 = swift_allocObject();
          *(v252 + 16) = v251;
          *(v252 + 24) = v430;
          *(v252 + 40) = v446;
          v253 = (v250 + *(v246 + 9));
          v254 = v253[3];
          v255 = v253[4];
          v256 = __swift_project_boxed_opaque_existential_1(v253, v254);
          MEMORY[0x1EEE9AC00](v256, v257);
          MEMORY[0x1EEE9AC00](v258, v259);
          *(&v387 - 4) = sub_1D615B4A4;
          *(&v387 - 3) = (&v387 - 6);
          v385 = sub_1D6708A48;
          v386 = v245;
          v260 = v436;
          v262 = sub_1D5D2F7A4(v240, sub_1D615B49C, v261, sub_1D615B4A4, (&v387 - 6), v254, v255);
          if (v260)
          {

            v173 = v409;

            goto LABEL_24;
          }

          v263 = v262;
          v388 = v244;

          if (v263)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v64 = v424;
            v436 = 0;

            sub_1D5D2CFE8(v409, type metadata accessor for FormatVersionRequirement);
            v68 = v388;
            v63 = v423;
          }

          else
          {
            v436 = 0;

            sub_1D5D2CFE8(v409, type metadata accessor for FormatVersionRequirement);
            v68 = v388;
            v63 = v423;
            v64 = v424;
          }
        }

        else
        {

          sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);
        }

        v264 = v406;
        (v433)(v406, v64, v63);
        swift_storeEnumTagMultiPayload();
        v430 = xmmword_1D72BAAB0;
        v438 = xmmword_1D72BAAB0;
        LOBYTE(v439) = 0;
        LOBYTE(v444) = 0;
        v265 = swift_allocObject();
        v267 = v265;
        *(v265 + 16) = v430;
        *(v265 + 32) = v444;
        *(v265 + 40) = v437;
        *(v265 + 48) = v68;
        v268 = v405;
        v388 = v68;
        if (v405 == 255)
        {

          sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v428 = &v387;
          v269 = v403;
          v270 = v68;
          v271 = v402;
          *&v444 = v403;
          *(&v444 + 1) = v402;
          v445 = v405 & 1;
          MEMORY[0x1EEE9AC00](v265, v266);
          v427 = &v387 - 6;
          *(&v387 - 4) = sub_1D5B4AA6C;
          *(&v387 - 3) = 0;
          v385 = sub_1D6708A48;
          v386 = v267;
          v446 = 0;
          v272 = swift_allocObject();
          v273 = v270;
          v274 = v272;
          *(v272 + 16) = v430;
          *(v272 + 32) = v446;
          *(v272 + 40) = v437;
          *(v272 + 48) = v273;
          swift_retain_n();
          sub_1D6189668(v269, v271, v268);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
          v275 = v435;
          v276 = sub_1D72647CC();
          v446 = 0;
          v277 = swift_allocObject();
          *(v277 + 16) = v276;
          *(v277 + 24) = v430;
          *(v277 + 40) = v446;
          v278 = (v275 + *(v429 + 9));
          v279 = v278[3];
          v280 = v278[4];
          v281 = __swift_project_boxed_opaque_existential_1(v278, v279);
          MEMORY[0x1EEE9AC00](v281, v282);
          MEMORY[0x1EEE9AC00](v283, v284);
          v285 = v427;
          *(&v387 - 4) = sub_1D615B4A4;
          *(&v387 - 3) = v285;
          v385 = sub_1D6708A48;
          v386 = v274;
          v286 = v436;
          v288 = sub_1D5D2F7A4(v264, sub_1D615B49C, v287, sub_1D615B4A4, (&v387 - 6), v279, v280);
          if (v286)
          {

            v289 = &v436;
LABEL_90:
            v173 = *(v289 - 32);
            sub_1D5D2F2C8(v444, *(&v444 + 1), v445);
            goto LABEL_24;
          }

          v290 = v288;
          v68 = v388;

          if (v290)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          v436 = 0;

          sub_1D5D2F2C8(v444, *(&v444 + 1), v445);
          sub_1D5D2CFE8(v406, type metadata accessor for FormatVersionRequirement);
          v63 = v423;
          v64 = v424;
        }

        v291 = v404;
        (v433)(v404, v64, v63);
        swift_storeEnumTagMultiPayload();
        v430 = xmmword_1D72BAAC0;
        v438 = xmmword_1D72BAAC0;
        LOBYTE(v439) = 0;
        LOBYTE(v444) = 0;
        v292 = swift_allocObject();
        v294 = v292;
        *(v292 + 16) = v430;
        *(v292 + 32) = v444;
        *(v292 + 40) = v437;
        *(v292 + 48) = v68;
        v295 = v401;
        if (v401 == 255)
        {

          sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v428 = &v387;
          v296 = v399;
          v297 = v68;
          v298 = v398;
          *&v444 = v399;
          *(&v444 + 1) = v398;
          v445 = v401 & 1;
          MEMORY[0x1EEE9AC00](v292, v293);
          v427 = &v387 - 6;
          *(&v387 - 4) = sub_1D5B4AA6C;
          *(&v387 - 3) = 0;
          v385 = sub_1D6708A48;
          v386 = v294;
          v446 = 0;
          v299 = swift_allocObject();
          v300 = v297;
          v301 = v299;
          *(v299 + 16) = v430;
          *(v299 + 32) = v446;
          *(v299 + 40) = v437;
          *(v299 + 48) = v300;
          swift_retain_n();
          sub_1D6189668(v296, v298, v295);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
          v302 = v435;
          v303 = sub_1D72647CC();
          v446 = 0;
          v304 = swift_allocObject();
          *(v304 + 16) = v303;
          *(v304 + 24) = v430;
          *(v304 + 40) = v446;
          v305 = (v302 + *(v429 + 9));
          v306 = v305[3];
          v307 = v305[4];
          v308 = __swift_project_boxed_opaque_existential_1(v305, v306);
          MEMORY[0x1EEE9AC00](v308, v309);
          MEMORY[0x1EEE9AC00](v310, v311);
          v312 = v427;
          *(&v387 - 4) = sub_1D615B4A4;
          *(&v387 - 3) = v312;
          v385 = sub_1D6708A48;
          v386 = v301;
          v313 = v436;
          v315 = sub_1D5D2F7A4(v291, sub_1D615B49C, v314, sub_1D615B4A4, (&v387 - 6), v306, v307);
          if (v313)
          {

            v289 = &v434;
            goto LABEL_90;
          }

          v316 = v315;
          v68 = v388;

          if (v316)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          v436 = 0;

          sub_1D5D2F2C8(v444, *(&v444 + 1), v445);
          sub_1D5D2CFE8(v404, type metadata accessor for FormatVersionRequirement);
          v63 = v423;
          v64 = v424;
        }

        v181 = v400;
        (v433)(v400, v64, v63);
        swift_storeEnumTagMultiPayload();
        v430 = xmmword_1D72BAAD0;
        v438 = xmmword_1D72BAAD0;
        LOBYTE(v439) = 0;
        LOBYTE(v444) = 0;
        v317 = swift_allocObject();
        v319 = v317;
        *(v317 + 16) = v430;
        *(v317 + 32) = v444;
        *(v317 + 40) = v437;
        *(v317 + 48) = v68;
        if (v396 == 5)
        {

          v320 = v181;
LABEL_87:
          sub_1D5D2CFE8(v320, type metadata accessor for FormatVersionRequirement);

          v336 = v397;
          (v433)(v397, v64, v63);
          swift_storeEnumTagMultiPayload();
          v430 = xmmword_1D72BAAE0;
          v438 = xmmword_1D72BAAE0;
          LOBYTE(v439) = 0;
          LOBYTE(v444) = 0;
          v337 = swift_allocObject();
          v339 = v337;
          *(v337 + 16) = v430;
          *(v337 + 32) = v444;
          *(v337 + 40) = v437;
          *(v337 + 48) = v68;
          if (v395 == 255)
          {

            sub_1D5D2CFE8(v336, type metadata accessor for FormatVersionRequirement);

            v362 = v436;
            v363 = v391;
            v364 = v394;
          }

          else
          {
            v428 = &v387;
            v340 = v393;
            v341 = v392;
            *&v444 = v393;
            *(&v444 + 1) = v392;
            v445 = v395 & 1;
            MEMORY[0x1EEE9AC00](v337, v338);
            v427 = &v387 - 6;
            *(&v387 - 4) = sub_1D5B4AA6C;
            *(&v387 - 3) = 0;
            v385 = sub_1D6708A48;
            v386 = v339;
            v446 = 0;
            v342 = v68;
            v344 = v343;
            v345 = swift_allocObject();
            *(v345 + 16) = v430;
            *(v345 + 32) = v446;
            *(v345 + 40) = v437;
            *(v345 + 48) = v342;
            swift_retain_n();
            sub_1D6189668(v340, v341, v344);
            sub_1D5E1B8DC(0);
            v347 = v346;
            sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
            v348 = v435;
            v426 = v347;
            v349 = sub_1D72647CC();
            v446 = 0;
            v350 = swift_allocObject();
            *(v350 + 16) = v349;
            *(v350 + 24) = v430;
            *(v350 + 40) = v446;
            v351 = (v348 + *(v429 + 9));
            v352 = v351[3];
            v353 = v351[4];
            v354 = __swift_project_boxed_opaque_existential_1(v351, v352);
            MEMORY[0x1EEE9AC00](v354, v355);
            MEMORY[0x1EEE9AC00](v356, v357);
            v358 = v427;
            *(&v387 - 4) = sub_1D615B4A4;
            *(&v387 - 3) = v358;
            v385 = sub_1D6708A48;
            v386 = v345;
            v359 = v436;
            v361 = sub_1D5D2F7A4(v336, sub_1D615B49C, v360, sub_1D615B4A4, (&v387 - 6), v352, v353);
            v362 = v359;
            if (v359)
            {

              v289 = &v429;
              goto LABEL_90;
            }

            v365 = v361;

            if (v365)
            {
              sub_1D60ED320();
              sub_1D72647EC();
            }

            sub_1D5D2F2C8(v444, *(&v444 + 1), v445);
            sub_1D5D2CFE8(v397, type metadata accessor for FormatVersionRequirement);
            v364 = v394;
            v363 = v391;
            v68 = v342;
            v64 = v424;
          }

          (v433)(v364, v64, v423);
          swift_storeEnumTagMultiPayload();
          v433 = xmmword_1D72BAAF0;
          v438 = xmmword_1D72BAAF0;
          LOBYTE(v439) = 0;
          LOBYTE(v444) = 0;
          v366 = swift_allocObject();
          v368 = v366;
          *(v366 + 16) = v433;
          *(v366 + 32) = v444;
          *(v366 + 40) = v437;
          *(v366 + 48) = v68;
          if (v363 == 2)
          {

            v177 = v364;
          }

          else
          {
            v432 = &v387;
            LOBYTE(v444) = v363 & 1;
            MEMORY[0x1EEE9AC00](v366, v367);
            v436 = v362;
            *(&v387 - 4) = sub_1D5B4AA6C;
            *(&v387 - 3) = 0;
            v385 = sub_1D6708A48;
            v386 = v368;
            v446 = 0;
            v369 = v68;
            v370 = swift_allocObject();
            *(v370 + 16) = v433;
            *(v370 + 32) = v446;
            *(v370 + 40) = v437;
            *(v370 + 48) = v369;
            sub_1D5E1B8DC(0);
            sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
            swift_retain_n();
            v371 = v435;
            v372 = sub_1D72647CC();
            v446 = 0;
            v373 = swift_allocObject();
            *(v373 + 16) = v372;
            *(v373 + 24) = v433;
            *(v373 + 40) = v446;
            v374 = (v371 + *(v429 + 9));
            v375 = v374[3];
            v376 = v374[4];
            v377 = __swift_project_boxed_opaque_existential_1(v374, v375);
            MEMORY[0x1EEE9AC00](v377, v378);
            MEMORY[0x1EEE9AC00](v379, v380);
            *(&v387 - 4) = sub_1D615B4A4;
            *(&v387 - 3) = (&v387 - 6);
            v385 = sub_1D6708A48;
            v386 = v370;
            v381 = v436;
            v383 = sub_1D5D2F7A4(v364, sub_1D615B49C, v382, sub_1D615B4A4, (&v387 - 6), v375, v376);
            if (v381)
            {
              sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);

              goto LABEL_58;
            }

            v384 = v383;

            if (v384)
            {
              sub_1D668E704();
              sub_1D72647EC();
            }

            v177 = v394;
          }

          goto LABEL_43;
        }

        v428 = &v387;
        LOBYTE(v444) = v396;
        MEMORY[0x1EEE9AC00](v317, v318);
        *(&v387 - 4) = sub_1D5B4AA6C;
        *(&v387 - 3) = 0;
        v385 = sub_1D6708A48;
        v386 = v319;
        v446 = 0;
        v321 = swift_allocObject();
        *(v321 + 16) = v430;
        *(v321 + 32) = v446;
        *(v321 + 40) = v437;
        *(v321 + 48) = v68;
        sub_1D5E1B8DC(0);
        v323 = v322;
        sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v324 = v435;
        v427 = v323;
        v325 = sub_1D72647CC();
        v446 = 0;
        v326 = swift_allocObject();
        *(v326 + 16) = v325;
        *(v326 + 24) = v430;
        *(v326 + 40) = v446;
        v327 = (v324 + *(v429 + 9));
        v328 = v327[3];
        v329 = v327[4];
        v330 = __swift_project_boxed_opaque_existential_1(v327, v328);
        MEMORY[0x1EEE9AC00](v330, v331);
        MEMORY[0x1EEE9AC00](v332, v333);
        *(&v387 - 4) = sub_1D615B4A4;
        *(&v387 - 3) = (&v387 - 6);
        v385 = sub_1D6708A48;
        v386 = v321;
        v334 = v436;
        sub_1D5D2F7A4(v181, sub_1D615B49C, v335, sub_1D615B4A4, (&v387 - 6), v328, v329);
        if (!v334)
        {

          sub_1D668E758();
          sub_1D72647EC();
          v436 = 0;
          v63 = v423;
          v64 = v424;
          v320 = v400;
          goto LABEL_87;
        }

LABEL_85:
        sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v428 = &v387;
      LOBYTE(v444) = v418;
      MEMORY[0x1EEE9AC00](v182, v183);
      *(&v387 - 4) = sub_1D5B4AA6C;
      *(&v387 - 3) = 0;
      v385 = sub_1D6708A48;
      v386 = v184;
      v446 = 0;
      v186 = swift_allocObject();
      *(v186 + 16) = v430;
      *(v186 + 32) = v446;
      *(v186 + 40) = v437;
      *(v186 + 48) = v68;
      sub_1D5E1B8DC(0);
      v188 = v187;
      sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v189 = v435;
      v427 = v188;
      v190 = sub_1D72647CC();
      v446 = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v430;
      *(v191 + 40) = v446;
      v192 = (v189 + *(v429 + 9));
      v193 = v192[3];
      v194 = v192[4];
      v195 = __swift_project_boxed_opaque_existential_1(v192, v193);
      MEMORY[0x1EEE9AC00](v195, v196);
      MEMORY[0x1EEE9AC00](v197, v198);
      *(&v387 - 4) = sub_1D615B4A4;
      *(&v387 - 3) = (&v387 - 6);
      v385 = sub_1D6708A48;
      v386 = v186;
      v199 = v436;
      v201 = sub_1D5D2F7A4(v181, sub_1D615B49C, v200, sub_1D615B4A4, (&v387 - 6), v193, v194);
      v436 = v199;
      if (v199)
      {
        goto LABEL_85;
      }

      v202 = v201;

      if (v202)
      {
        sub_1D668E7AC();
        v203 = v436;
        sub_1D72647EC();
        if (v203)
        {
          v177 = v419;
          goto LABEL_43;
        }

        v436 = 0;
      }

      v63 = v423;
      v64 = v424;
      v185 = v419;
      goto LABEL_46;
    }

    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);

LABEL_58:
    v93 = v435;
    return sub_1D5D2CFE8(v93, sub_1D668E5E0);
  }

  v92 = v435;

  sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
  v93 = v92;
  return sub_1D5D2CFE8(v93, sub_1D668E5E0);
}

unint64_t sub_1D64B22EC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x6169726176627573;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x736E6F6974706FLL;
      break;
    case 6:
      result = 0x6F6C6F43746E6974;
      break;
    case 7:
      result = 0x656E68746F6F6D73;
      break;
    case 8:
      result = 0x4C746E65746E6F63;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
    case 12:
      result = 0x6576697470616461;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64B2470@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D668FD54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64B24A8(uint64_t a1)
{
  v2 = sub_1D5E1B9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B24E4(uint64_t a1)
{
  v2 = sub_1D5E1B9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64B2520(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v46 = v26;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectInteractionState, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatGlassEffectInteractionState, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v27, v26, v29, &off_1F51F6AB8);
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCC90);
      (*(*(v42 - 8) + 16))(v18, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419444(1, v18);
      v34 = v18;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCC90);
      (*(*(v35 - 8) + 16))(v22, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419444(0, v22);
      v34 = v22;
    }
  }

  else if (a2 == 2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCC90);
    (*(*(v37 - 8) + 16))(v14, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(2, v14);
    v34 = v14;
  }

  else if (a2 == 3)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCC90);
    (*(*(v31 - 8) + 16))(v10, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(3, v10);
    v34 = v10;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCC90);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D64B2AEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64B2BD4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64B2CA8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64B2D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664898(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64B2DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE800000000000000;
  v6 = 0x7265766F6C6C6F72;
  v7 = 0xE700000000000000;
  v8 = 0x64657373657270;
  if (v2 != 3)
  {
    v8 = 0x7250796C70656564;
    v7 = 0xED00006465737365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
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

uint64_t sub_1D64B2F10(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v64 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v65 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v62 - v30;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = sub_1D5C30408();
  v67 = v35;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectOption, &type metadata for FormatCodingKeys, v39, v36, &type metadata for FormatGlassEffectOption, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v37, v35, v38, &off_1F51F6AB8);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v44 = v67;
      if (a2 == 6)
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCC90);
        v27 = v64;
        (*(*(v51 - 8) + 16))(v64, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 6;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCC90);
        v27 = v66;
        (*(*(v60 - 8) + 16))(v66, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 7;
      }
    }

    else
    {
      v44 = v67;
      if (a2 == 4)
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCC90);
        v27 = v63;
        (*(*(v45 - 8) + 16))(v63, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 4;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCC90);
        v27 = v65;
        (*(*(v56 - 8) + 16))(v65, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 5;
      }
    }

    v55 = v27;
    goto LABEL_33;
  }

  if (a2 > 1u)
  {
    v44 = v67;
    if (a2 == 2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCC90);
      (*(*(v48 - 8) + 16))(v23, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641CBCC(2, v23);
      v50 = v23;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCC90);
      (*(*(v58 - 8) + 16))(v19, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641CBCC(3, v19);
      v50 = v19;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCC90);
    (*(*(v53 - 8) + 16))(v27, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v47 = 1;
    v55 = v27;
    v44 = v67;
LABEL_33:
    sub_1D641CBCC(v47, v55);
    v50 = v27;
LABEL_34:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v44, sub_1D5D30DC4);
  }

  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v40 = sub_1D725BD1C();
  v41 = __swift_project_value_buffer(v40, qword_1EDFFCC90);
  (*(*(v40 - 8) + 16))(v31, v41, v40);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v67;
  sub_1D641CBCC(0, v31);
  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v42, sub_1D5D30DC4);
}

unint64_t sub_1D64B3748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664208(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64B3778(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0x80000001D73BB880;
    v9 = 0xD000000000000017;
    if (v2 != 6)
    {
      v9 = 0xD00000000000001CLL;
      v3 = 0x80000001D73BB8A0;
    }

    v6 = 0xEC00000064657564;
    v10 = 0xD000000000000016;
    if (v2 == 4)
    {
      v10 = 0x6275536563726F66;
    }

    else
    {
      v6 = 0x80000001D73BB860;
    }

    v7 = *v1 <= 5u;
    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xEF776F6461685367;
    v4 = 0x6E6964756C637865;
    if (v2 != 2)
    {
      v4 = 0x7263536563726F66;
      v3 = 0xEA00000000006D69;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001D73BB800;
    if (*v1)
    {
      v5 = 0xD000000000000013;
      v6 = 0x80000001D73BB820;
    }

    v7 = *v1 <= 1u;
    if (*v1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1D64B3948(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGlassEffectSize, &type metadata for FormatCodingKeys, v27, v25, &type metadata for FormatGlassEffectSize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v24, v23, v26, &off_1F51F6AB8);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCC90);
      (*(*(v31 - 8) + 16))(v11, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641F5DC(2, v11);
      v30 = v11;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCC90);
      (*(*(v35 - 8) + 16))(v7, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641F5DC(3, v7);
      v30 = v7;
    }
  }

  else if (a2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCC90);
    (*(*(v33 - 8) + 16))(v15, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F5DC(1, v15);
    v30 = v15;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCC90);
    (*(*(v28 - 8) + 16))(v19, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F5DC(0, v19);
    v30 = v19;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v23, sub_1D5D30DC4);
}

uint64_t sub_1D64B3E1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64B3ED0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64B3F70(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64B4020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663FA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64B4050(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x63696D616E7964;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
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

uint64_t sub_1D64B4170(void *a1, uint64_t a2)
{
  v101 = a2;
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v91 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v90 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v90 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v90 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v90 - v48;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v90 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  v56 = sub_1D5C30408();
  v100 = v53;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectVariant, &type metadata for FormatCodingKeys, v57, v55, &type metadata for FormatGlassEffectVariant, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v54, v53, v56, &off_1F51F6AB8);
  switch(v101)
  {
    case 1:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCC90);
      (*(*(v77 - 8) + 16))(v45, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(1, v45);
      v61 = v45;
      break;
    case 2:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCC90);
      (*(*(v71 - 8) + 16))(v41, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(2, v41);
      v61 = v41;
      break;
    case 3:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCC90);
      (*(*(v73 - 8) + 16))(v37, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(3, v37);
      v61 = v37;
      break;
    case 4:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCC90);
      (*(*(v65 - 8) + 16))(v33, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 4;
      goto LABEL_44;
    case 5:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCC90);
      v33 = v91;
      (*(*(v79 - 8) + 16))(v91, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 5;
      goto LABEL_44;
    case 6:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCC90);
      v33 = v92;
      (*(*(v83 - 8) + 16))(v92, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 6;
      goto LABEL_44;
    case 7:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCC90);
      v33 = v93;
      (*(*(v75 - 8) + 16))(v93, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 7;
      goto LABEL_44;
    case 8:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCC90);
      v33 = v94;
      (*(*(v87 - 8) + 16))(v94, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCC90);
      v33 = v95;
      (*(*(v69 - 8) + 16))(v95, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 9;
      goto LABEL_44;
    case 10:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCC90);
      v33 = v96;
      (*(*(v85 - 8) + 16))(v96, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 10;
      goto LABEL_44;
    case 11:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCC90);
      v33 = v97;
      (*(*(v62 - 8) + 16))(v97, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 11;
      goto LABEL_44;
    case 12:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCC90);
      v33 = v98;
      (*(*(v67 - 8) + 16))(v98, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 12;
      goto LABEL_44;
    case 13:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCC90);
      v33 = v99;
      (*(*(v81 - 8) + 16))(v99, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 13;
LABEL_44:
      v60 = v100;
      sub_1D641C13C(v64, v33);
      v61 = v33;
      break;
    default:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCC90);
      (*(*(v58 - 8) + 16))(v49, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(0, v49);
      v61 = v49;
      break;
  }

  sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
}

uint64_t sub_1D64B4DBC(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 0x7261656C63;
      break;
    case 2:
      result = 1801678692;
      break;
    case 3:
      result = 0x736E6F6349707061;
      break;
    case 4:
      result = 0x73746567646977;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x726579616C707661;
      break;
    case 7:
      result = 0x656D697465636166;
      break;
    case 8:
      result = 0x436C6F72746E6F63;
      break;
    case 9:
      result = 0x72616265646973;
      break;
    case 10:
      result = 0x5364657474756261;
      break;
    case 11:
      result = 0x6F74636570736E69;
      break;
    case 12:
      result = 0x6D6172676F6E6F6DLL;
      break;
    case 13:
      result = 0x73656C62627562;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D64B4F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66642EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D64B4FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64B4DBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatGradient.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v130 = (v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v133 = v126 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v141 = (v126 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v126 - v14;
  sub_1D668E868(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v140 = v1[1];
  v22 = *(v1 + 1);
  v131 = *(v1 + 2);
  v132 = v22;
  v23 = v1[7];
  v129 = v1[6];
  v128 = v23;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D5C4CA84(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF24C58, sub_1D5C4CA84, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGradient, v27, v29, v24, &type metadata for FormatGradient, v27, &type metadata for FormatVersions.JazzkonC, v25, v20, v28, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v136 = v31;
  v134 = v30;
  v138 = v32 + 16;
  v139 = v33;
  v33(v15);
  v137 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v147 = v21;
  v149 = 0uLL;
  LOBYTE(v150) = 0;
  v34 = &v20[*(v17 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v151 = 0;
  v37 = swift_allocObject();
  v38 = v20;
  *&v144 = v126;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v151;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v39);
  v126[-4] = sub_1D5B4AA6C;
  v126[-3] = 0;
  v124 = sub_1D6708A4C;
  v125 = v40;
  v151 = 0;
  v41 = v17;
  v42 = v15;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v151;
  v135 = v35;
  *(v43 + 40) = v35;
  *(v43 + 48) = v36;
  sub_1D668E8FC(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02B18, sub_1D668E8FC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v142 = v46;
  v143 = v45;
  v47 = sub_1D72647CC();
  v151 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v151;
  v49 = *(v41 + 36);
  v146 = v38;
  v50 = &v38[v49];
  v51 = *&v38[v49 + 24];
  v52 = *(v50 + 4);
  v53 = __swift_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v126[-4] = sub_1D615B4A4;
  v126[-3] = &v126[-6];
  v124 = sub_1D6708A4C;
  v125 = v43;
  v57 = v145;
  sub_1D5D2BC70(v42, sub_1D615B49C, v58, sub_1D615B4A4, &v126[-6], v51, v52);
  if (v57)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v59 = v146;
  }

  else
  {
    v127 = v50;
    v145 = v36;

    sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
    sub_1D668E990();
    v60 = v146;
    sub_1D72647EC();
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v61 = v141;
    v62 = v134;
    v139(v141, v136, v134);
    swift_storeEnumTagMultiPayload();
    v144 = xmmword_1D728CF30;
    v149 = xmmword_1D728CF30;
    LOBYTE(v150) = 0;
    LOBYTE(v147) = 0;
    v63 = swift_allocObject();
    v65 = v63;
    *(v63 + 16) = v144;
    *(v63 + 32) = v147;
    v66 = v135;
    v67 = v145;
    *(v63 + 40) = v135;
    *(v63 + 48) = v67;
    if (v140)
    {
      v126[1] = v126;
      *&v147 = v140;
      MEMORY[0x1EEE9AC00](v63, v64);
      v126[0] = &v126[-6];
      v126[-4] = sub_1D5B4AA6C;
      v126[-3] = 0;
      v124 = sub_1D6708A4C;
      v125 = v65;
      v151 = 0;
      v68 = swift_allocObject();
      *(v68 + 16) = v144;
      *(v68 + 32) = v151;
      *(v68 + 40) = v66;
      *(v68 + 48) = v67;
      swift_retain_n();

      v69 = sub_1D72647CC();
      v151 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v144;
      *(v70 + 40) = v151;
      v71 = *(v127 + 3);
      v72 = *(v127 + 4);
      v73 = __swift_project_boxed_opaque_existential_1(v127, v71);
      MEMORY[0x1EEE9AC00](v73, v74);
      MEMORY[0x1EEE9AC00](v75, v76);
      v78 = v126[0];
      v126[-4] = sub_1D615B4A4;
      v126[-3] = v78;
      v124 = sub_1D6708A4C;
      v125 = v68;
      v80 = sub_1D5D2F7A4(v141, sub_1D615B49C, v77, sub_1D615B4A4, &v126[-6], v71, v72);

      v79 = v133;
      if (v80)
      {
        v81 = MEMORY[0x1E69E63B0];
        sub_1D5C34D84(0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
        sub_1D668EAFC(&unk_1EDF04A78, &qword_1EDF1AF00, v81);
        v60 = v146;
        sub_1D72647EC();

        sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
        v60 = v146;
      }

      v67 = v145;
      v66 = v135;
      v62 = v134;
    }

    else
    {

      sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

      v79 = v133;
    }

    v139(v79, v136, v62);
    swift_storeEnumTagMultiPayload();
    v149 = v132;
    v150 = v131;
    v144 = xmmword_1D7297410;
    v147 = xmmword_1D7297410;
    v148 = 0;
    v151 = 0;
    v82 = swift_allocObject();
    v142 = v126;
    *(v82 + 16) = v144;
    *(v82 + 32) = v151;
    *(v82 + 40) = v66;
    *(v82 + 48) = v67;
    MEMORY[0x1EEE9AC00](v82, v83);
    v126[-4] = sub_1D5B4AA6C;
    v126[-3] = 0;
    v124 = sub_1D6708A4C;
    v125 = v84;
    v151 = 0;
    v85 = swift_allocObject();
    v86 = v66;
    v87 = v85;
    *(v85 + 16) = v144;
    *(v85 + 32) = v151;
    *(v85 + 40) = v86;
    *(v85 + 48) = v67;
    swift_retain_n();
    v88 = sub_1D72647CC();
    v151 = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v144;
    *(v89 + 40) = v151;
    v90 = v60;
    v91 = *(v127 + 3);
    v92 = *(v127 + 4);
    v93 = __swift_project_boxed_opaque_existential_1(v127, v91);
    MEMORY[0x1EEE9AC00](v93, v94);
    MEMORY[0x1EEE9AC00](v95, v96);
    v126[-4] = sub_1D615B4A4;
    v126[-3] = &v126[-6];
    v97 = v133;
    v124 = sub_1D6708A4C;
    v125 = v87;
    sub_1D5D2BC70(v133, sub_1D615B49C, v98, sub_1D615B4A4, &v126[-6], v91, v92);

    sub_1D668EA2C();
    sub_1D72647EC();
    v59 = v90;
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v100 = v134;
    v101 = __swift_project_value_buffer(v134, qword_1EDFFCCE8);
    v102 = v130;
    v139(v130, v101, v100);
    swift_storeEnumTagMultiPayload();
    v144 = xmmword_1D72BAA60;
    v149 = xmmword_1D72BAA60;
    LOBYTE(v150) = 0;
    LOBYTE(v147) = 0;
    v103 = swift_allocObject();
    v105 = v103;
    *(v103 + 16) = v144;
    *(v103 + 32) = v147;
    v106 = v135;
    v107 = v145;
    *(v103 + 40) = v135;
    *(v103 + 48) = v107;
    v108 = v129;
    if (v129)
    {
      v142 = v126;
      v109 = v106;
      v110 = v128;
      *&v147 = v129;
      *(&v147 + 1) = v128;
      MEMORY[0x1EEE9AC00](v103, v104);
      v141 = &v126[-6];
      v126[-4] = sub_1D5B4AA6C;
      v126[-3] = 0;
      v124 = sub_1D6708A4C;
      v125 = v105;
      v151 = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v144;
      *(v111 + 32) = v151;
      *(v111 + 40) = v109;
      *(v111 + 48) = v107;
      swift_retain_n();
      sub_1D5D615EC(v108, v110);
      v112 = sub_1D72647CC();
      v151 = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v144;
      *(v113 + 40) = v151;
      v114 = *(v127 + 3);
      v115 = *(v127 + 4);
      v116 = __swift_project_boxed_opaque_existential_1(v127, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      v121 = v141;
      v126[-4] = sub_1D615B4A4;
      v126[-3] = v121;
      v122 = v130;
      v124 = sub_1D668EA80;
      v125 = v111;
      v123 = sub_1D5D2F7A4(v130, sub_1D615B49C, v120, sub_1D615B4A4, &v126[-6], v114, v115);

      if (v123)
      {
        sub_1D6676B58();
        v59 = v146;
        sub_1D72647EC();

        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
        v59 = v146;
      }
    }

    else
    {

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v59, sub_1D668E868);
}

uint64_t sub_1D64B61A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6690598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64B61E0(uint64_t a1)
{
  v2 = sub_1D5C4CB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B621C(uint64_t a1)
{
  v2 = sub_1D5C4CB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGradientDirection.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v73 - v8;
  sub_1D668EB74(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C4CDE0(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF251D8, sub_1D5C4CDE0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGradientDirection, v22, v24, v19, &type metadata for FormatGradientDirection, v22, &type metadata for FormatVersions.JazzkonC, v20, v14, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v80 = v26;
  v81 = v25;
  v76 = v27 + 16;
  v77 = v28;
  (v28)(v9);
  v75 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = v15;
  v90 = v16;
  v87 = 0uLL;
  v88 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v91 = 0;
  v32 = swift_allocObject();
  v84 = v73;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v91;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v86 = v9;
  v73[-4] = sub_1D5B4AA6C;
  v73[-3] = 0;
  v71 = sub_1D6708A50;
  v72 = v34;
  v91 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v91;
  v78 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D668EC08(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03198, sub_1D668EC08, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v82 = v38;
  v83 = v37;
  v39 = sub_1D72647CC();
  v91 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v91;
  v41 = &v14[*(v11 + 36)];
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v73[-4] = sub_1D615B4A4;
  v73[-3] = &v73[-6];
  v48 = v85;
  v49 = v86;
  v71 = sub_1D668EC9C;
  v72 = v35;
  sub_1D5D2BC70(v86, sub_1D615B49C, v50, sub_1D615B4A4, &v73[-6], v42, v43);
  if (v48)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v74 = v41;
    v52 = v80;
    v51 = v81;
    v85 = v31;

    v53 = sub_1D5F5A70C();
    sub_1D72647EC();
    v73[1] = v53;
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

    v55 = v79;
    v77(v79, v52, v51);
    swift_storeEnumTagMultiPayload();
    v89 = v17;
    v90 = v18;
    v86 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    v91 = 0;
    v56 = swift_allocObject();
    v84 = v73;
    *(v56 + 16) = v86;
    *(v56 + 32) = v91;
    v57 = v78;
    v58 = v85;
    *(v56 + 40) = v78;
    *(v56 + 48) = v58;
    MEMORY[0x1EEE9AC00](v56, v59);
    v73[-4] = sub_1D5B4AA6C;
    v73[-3] = 0;
    v71 = sub_1D6708A50;
    v72 = v60;
    v91 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v86;
    *(v61 + 32) = v91;
    *(v61 + 40) = v57;
    *(v61 + 48) = v58;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v91 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v86;
    *(v63 + 40) = v91;
    v64 = *(v74 + 3);
    v65 = *(v74 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v74, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v73[-4] = sub_1D615B4A4;
    v73[-3] = &v73[-6];
    v71 = sub_1D6708A50;
    v72 = v61;
    sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, &v73[-6], v64, v65);

    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D668EB74);
}

uint64_t sub_1D64B6AE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669074C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64B6B18(uint64_t a1)
{
  v2 = sub_1D5C4D1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B6B54(uint64_t a1)
{
  v2 = sub_1D5C4D1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGrayscaleColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D668ED18(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668EDAC(0);
  sub_1D5B58B84(&qword_1EC886C20, sub_1D668EDAC, &unk_1D7321584);
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

  v13 = v26;
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

      v20 = sub_1D6627E68(0x6574696877, 0xE500000000000000, 0x6168706C61, 0xE500000000000000);
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

  sub_1D5B57870();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v17 = v27;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v27;
  v24 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGrayscaleColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D668EF2C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  v76 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D668EDAC(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886C20, sub_1D668EDAC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGrayscaleColor, v20, v22, v17, &type metadata for FormatGrayscaleColor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v72 = v24;
  v73 = v23;
  v70[1] = v25 + 16;
  v71 = v26;
  (v26)(v9);
  v70[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v16;
  v84 = 0uLL;
  v85 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v83 = 0;
  v30 = swift_allocObject();
  v79 = v70;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v83;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v81 = v9;
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D6708A54;
  v69 = v32;
  v83 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v83;
  v74 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D668EFC0(0);
  v35 = v34;
  sub_1D5B58B84(&qword_1EC886C38, sub_1D668EFC0, MEMORY[0x1E69E6F60]);
  v75 = v29;
  swift_retain_n();
  v78 = v35;
  v36 = sub_1D72647CC();
  v83 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v83;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v70[-4] = sub_1D615B4A4;
  v70[-3] = &v70[-6];
  v45 = v80;
  v46 = v81;
  v68 = sub_1D6708A54;
  v69 = v33;
  sub_1D5D2BC70(v81, sub_1D615B49C, v47, sub_1D615B4A4, &v70[-6], v39, v40);
  v82 = v14;
  if (!v45)
  {

    v48 = sub_1D5B578C4();
    sub_1D72647EC();
    v80 = v48;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v51 = v77;
    v71(v77, v72, v73);
    swift_storeEnumTagMultiPayload();
    v81 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    LOBYTE(v86) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v81;
    *(v52 + 32) = v86;
    v56 = v74;
    v55 = v75;
    *(v52 + 40) = v74;
    *(v52 + 48) = v55;
    if (v76)
    {
    }

    else
    {
      v79 = v70;
      v86 = v15;
      MEMORY[0x1EEE9AC00](v52, v53);
      v70[-4] = sub_1D5B4AA6C;
      v70[-3] = 0;
      v68 = sub_1D6708A54;
      v69 = v54;
      v83 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v81;
      *(v58 + 32) = v83;
      *(v58 + 40) = v56;
      *(v58 + 48) = v55;
      swift_retain_n();
      v59 = sub_1D72647CC();
      v83 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v81;
      *(v60 + 40) = v83;
      v61 = *(v38 + 3);
      v62 = *(v38 + 4);
      v63 = __swift_project_boxed_opaque_existential_1(v38, v61);
      MEMORY[0x1EEE9AC00](v63, v64);
      MEMORY[0x1EEE9AC00](v65, v66);
      v70[-4] = sub_1D615B4A4;
      v70[-3] = &v70[-6];
      v51 = v77;
      v68 = sub_1D668F054;
      v69 = v58;
      LOBYTE(v61) = sub_1D5D2F7A4(v77, sub_1D615B49C, v67, sub_1D615B4A4, &v70[-6], v61, v62);

      if (v61)
      {
        v57 = v82;
        sub_1D72647EC();
        goto LABEL_10;
      }
    }

    v57 = v82;
LABEL_10:
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v49 = v57;
    return sub_1D5D2CFE8(v49, sub_1D668EF2C);
  }

  sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

  v49 = v82;
  return sub_1D5D2CFE8(v49, sub_1D668EF2C);
}

uint64_t sub_1D64B7784()
{
  v1 = 0x6168706C61;
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
    return 0x6574696877;
  }
}

uint64_t sub_1D64B77D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6690860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64B7808(uint64_t a1)
{
  v2 = sub_1D668EE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B7844(uint64_t a1)
{
  v2 = sub_1D668EE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroup.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v291 = &v288 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v300 = &v288 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v294 = &v288 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v296 = &v288 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v298 = &v288 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v299 = &v288 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v302 = &v288 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v308 = &v288 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v307 = &v288 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v310 = &v288 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v312 = &v288 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v311 = &v288 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v288 - v41;
  sub_1D668F160(0);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v288 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  v48 = *(v1 + 8);
  LODWORD(v313) = *(v1 + 48);
  v50 = *(v1 + 64);
  v309 = *(v1 + 56);
  v304 = v50;
  v51 = *(v1 + 80);
  v306 = *(v1 + 72);
  v305 = v51;
  v52 = *(v1 + 96);
  v303 = *(v1 + 88);
  v301 = v52;
  v53 = *(v1 + 112);
  v297 = *(v1 + 104);
  v295 = v53;
  v293 = *(v1 + 120);
  v331 = *(v1 + 128);
  v292 = *(v1 + 136);
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_1D5C50B9C(0);
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF24CE8, sub_1D5C50B9C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGroup, v57, v59, v54, &type metadata for FormatGroup, v57, &type metadata for FormatVersions.JazzkonC, v55, v47, v58, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
  v62 = *(v60 - 8);
  v316 = *(v62 + 16);
  v317 = v61;
  v314 = v60;
  v318 = v62 + 16;
  (v316)(v42);
  v319 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v327 = v49;
  v328 = v48;
  v325 = 0uLL;
  v326 = 0;
  v63 = &v47[*(v44 + 44)];
  v64 = *v63;
  v65 = *(v63 + 1);
  v330 = 0;
  v66 = swift_allocObject();
  *&v323 = &v288;
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v330;
  *(v66 + 40) = v64;
  *(v66 + 48) = v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  *&v322 = &v288 - 6;
  *(&v288 - 4) = sub_1D5B4AA6C;
  *(&v288 - 3) = 0;
  v286 = sub_1D6708A58;
  v287 = v68;
  v330 = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = v330;
  v315 = v64;
  *(v69 + 40) = v64;
  *(v69 + 48) = v65;
  sub_1D5E1B808(0);
  v71 = v70;
  v72 = sub_1D5B58B84(&qword_1EDF02BC8, sub_1D5E1B808, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v320 = v71;
  v321 = v72;
  v73 = sub_1D72647CC();
  v330 = 0;
  v74 = swift_allocObject();
  *(v74 + 24) = 0;
  *(v74 + 32) = 0;
  *(v74 + 16) = v73;
  *(v74 + 40) = v330;
  v75 = v47;
  v76 = v42;
  v77 = (v75 + *(v44 + 36));
  v78 = v77[3];
  v79 = v77[4];
  v80 = __swift_project_boxed_opaque_existential_1(v77, v78);
  MEMORY[0x1EEE9AC00](v80, v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  v84 = v322;
  *(&v288 - 4) = sub_1D615B4A4;
  *(&v288 - 3) = v84;
  v286 = sub_1D6708A58;
  v287 = v69;
  v85 = v324;
  sub_1D5D2BC70(v76, sub_1D615B49C, v86, sub_1D615B4A4, (&v288 - 6), v78, v79);
  if (!v85)
  {
    v324 = v77;
    v290 = v65;

    sub_1D72647EC();
    *&v323 = 0;
    v289 = v75;
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v88 = v311;
    v90 = v316;
    v89 = v317;
    v91 = v314;
    (v316)(v311, v317, v314);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
    (v90)(v88, v89, v91);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
    v92 = v312;
    v90();
    swift_storeEnumTagMultiPayload();
    if (v313 > 1)
    {
      v93 = v290;
      if (v313 == 2)
      {

        v94 = v323;
        goto LABEL_10;
      }
    }

    else
    {
      v93 = v290;
    }

    v95 = sub_1D72646CC();

    v94 = v323;
    if ((v95 & 1) == 0)
    {
      LOBYTE(v325) = 0;
      v110 = swift_allocObject();
      v322 = xmmword_1D72BAA60;
      *(v110 + 16) = xmmword_1D72BAA60;
      *(v110 + 32) = v325;
      *(v110 + 40) = v315;
      *(v110 + 48) = v93;

      v111 = v289;
      v112 = sub_1D72647CC();
      LOBYTE(v325) = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v322;
      *(v113 + 40) = v325;
      v114 = v324[3];
      v115 = v324[4];
      v116 = __swift_project_boxed_opaque_existential_1(v324, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v288 - 4) = sub_1D5B4AA6C;
      *(&v288 - 3) = 0;
      v286 = sub_1D668F1F4;
      v287 = v110;
      v121 = sub_1D5D2F7A4(v92, sub_1D615B49C, v120, sub_1D615B4A4, (&v288 - 6), v114, v115);
      if (v94)
      {
        sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

        v87 = v111;
        return sub_1D5D2CFE8(v87, sub_1D668F160);
      }

      v126 = v121;

      if (v126)
      {
        v325 = v322;
        v326 = 0;
        LOBYTE(v327) = v313;
        sub_1D61DEDCC();
        sub_1D72647EC();
        sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
        v96 = v317;
        v94 = 0;
        v91 = v314;
        v93 = v290;
        v90 = v316;
LABEL_12:
        v97 = v310;
        (v90)(v310, v96, v91);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v325) = 0;
        v98 = swift_allocObject();
        v323 = xmmword_1D72BAA70;
        *(v98 + 16) = xmmword_1D72BAA70;
        *(v98 + 32) = v325;
        *(v98 + 40) = v315;
        *(v98 + 48) = v93;

        v99 = sub_1D72647CC();
        LOBYTE(v325) = 0;
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        *(v100 + 24) = v323;
        *(v100 + 40) = v325;
        v101 = v324[3];
        v102 = v324[4];
        v103 = __swift_project_boxed_opaque_existential_1(v324, v101);
        MEMORY[0x1EEE9AC00](v103, v104);
        MEMORY[0x1EEE9AC00](v105, v106);
        *(&v288 - 4) = sub_1D5B4AA6C;
        *(&v288 - 3) = 0;
        v286 = sub_1D6708A58;
        v287 = v98;
        v108 = sub_1D5D2F7A4(v97, sub_1D615B49C, v107, sub_1D615B4A4, (&v288 - 6), v101, v102);
        if (v94)
        {
          sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

          v109 = v289;
LABEL_14:
          v87 = v109;
          return sub_1D5D2CFE8(v87, sub_1D668F160);
        }

        v122 = v108;

        if (v122)
        {
          sub_1D5E093B4(v309, v289, 4, 0, 0);
        }

        v124 = v314;
        v123 = v315;
        v125 = v290;
        sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);

        v127 = v308;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v128 = __swift_project_value_buffer(v124, qword_1EDFFCD50);
        v129 = v307;
        (v316)(v307, v128, v124);
        swift_storeEnumTagMultiPayload();
        v323 = xmmword_1D72BAA80;
        v325 = xmmword_1D72BAA80;
        v326 = 0;
        LOBYTE(v327) = 0;
        v130 = swift_allocObject();
        v132 = v130;
        *(v130 + 16) = v323;
        *(v130 + 32) = v327;
        *(v130 + 40) = v123;
        *(v130 + 48) = v125;
        if (v306 == 2)
        {

          sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          *&v322 = &v288;
          v145 = v304;
          v327 = v304;
          v328 = v306;
          MEMORY[0x1EEE9AC00](v130, v131);
          v313 = &v288 - 6;
          *(&v288 - 4) = sub_1D5B4AA6C;
          *(&v288 - 3) = 0;
          v286 = sub_1D6708A58;
          v287 = v132;
          v330 = 0;
          v147 = v146;
          v148 = swift_allocObject();
          *(v148 + 16) = v323;
          *(v148 + 32) = v330;
          *(v148 + 40) = v123;
          *(v148 + 48) = v125;
          swift_retain_n();
          sub_1D5D5FDA4(v145, v147);
          v149 = sub_1D72647CC();
          v330 = 0;
          v150 = swift_allocObject();
          *(v150 + 16) = v149;
          *(v150 + 24) = v323;
          *(v150 + 40) = v330;
          v151 = v324[3];
          v152 = v324[4];
          v153 = __swift_project_boxed_opaque_existential_1(v324, v151);
          MEMORY[0x1EEE9AC00](v153, v154);
          MEMORY[0x1EEE9AC00](v155, v156);
          v157 = v313;
          *(&v288 - 4) = sub_1D615B4A4;
          *(&v288 - 3) = v157;
          v286 = sub_1D6708A58;
          v287 = v148;
          v159 = sub_1D5D2F7A4(v129, sub_1D615B49C, v158, sub_1D615B4A4, (&v288 - 6), v151, v152);
          v167 = v159;

          if (v167)
          {
            sub_1D668F320();
            sub_1D72647EC();
            v123 = v315;

            sub_1D5F33294(v327, v328);
            sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
            v124 = v314;
          }

          else
          {

            sub_1D5F33294(v327, v328);
            sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
            v124 = v314;
            v123 = v315;
          }

          v125 = v290;
          v127 = v308;
        }

        (v316)(v127, v317, v124);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v325) = 0;
        v133 = swift_allocObject();
        v322 = xmmword_1D72BAA90;
        *(v133 + 16) = xmmword_1D72BAA90;
        *(v133 + 32) = v325;
        *(v133 + 40) = v123;
        *(v133 + 48) = v125;

        v134 = v127;
        v135 = sub_1D72647CC();
        LOBYTE(v325) = 0;
        v136 = swift_allocObject();
        *(v136 + 16) = v135;
        *(v136 + 24) = v322;
        *(v136 + 40) = v325;
        v137 = v324[3];
        v138 = v324[4];
        v139 = __swift_project_boxed_opaque_existential_1(v324, v137);
        MEMORY[0x1EEE9AC00](v139, v140);
        MEMORY[0x1EEE9AC00](v141, v142);
        *(&v288 - 4) = sub_1D5B4AA6C;
        *(&v288 - 3) = 0;
        v286 = sub_1D6708A58;
        v287 = v133;
        v144 = sub_1D5D2F7A4(v134, sub_1D615B49C, v143, sub_1D615B4A4, (&v288 - 6), v137, v138);
        *&v323 = 0;
        v160 = v144;
        v161 = v290;
        v162 = v314;

        if (v160)
        {
          v325 = v322;
          v326 = 0;
          v327 = v305;
          sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
          sub_1D66594A0();
          v163 = v289;
          v164 = v323;
          sub_1D72647EC();
          v165 = v315;
          v166 = v303;
          *&v323 = v164;
          if (v164)
          {

            sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
            v87 = v163;
            return sub_1D5D2CFE8(v87, sub_1D668F160);
          }

          sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
          v168 = v165;
        }

        else
        {
          sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);

          v168 = v315;
          v166 = v303;
        }

        v169 = v302;
        (v316)(v302, v317, v162);
        swift_storeEnumTagMultiPayload();
        v109 = v289;
        if (*(v166 + 16))
        {
          LOBYTE(v325) = 0;
          v170 = v169;
          v171 = swift_allocObject();
          v322 = xmmword_1D72BAAA0;
          *(v171 + 16) = xmmword_1D72BAAA0;
          *(v171 + 32) = v325;
          *(v171 + 40) = v168;
          *(v171 + 48) = v161;

          v172 = sub_1D72647CC();
          LOBYTE(v325) = 0;
          v173 = swift_allocObject();
          *(v173 + 16) = v172;
          *(v173 + 24) = v322;
          *(v173 + 40) = v325;
          v174 = v324[3];
          v175 = v324[4];
          v176 = __swift_project_boxed_opaque_existential_1(v324, v174);
          MEMORY[0x1EEE9AC00](v176, v177);
          MEMORY[0x1EEE9AC00](v178, v179);
          *(&v288 - 4) = sub_1D5B4AA6C;
          *(&v288 - 3) = 0;
          v286 = sub_1D6708A58;
          v287 = v171;
          v180 = v323;
          v182 = sub_1D5D2F7A4(v170, sub_1D615B49C, v181, sub_1D615B4A4, (&v288 - 6), v174, v175);
          *&v323 = v180;
          if (v180)
          {
            sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
LABEL_53:

            goto LABEL_54;
          }

          v184 = v182;

          if ((v184 & 1) == 0)
          {
            sub_1D5D2CFE8(v302, type metadata accessor for FormatVersionRequirement);

            v168 = v315;
LABEL_48:
            v187 = qword_1EDF31EF8;
            v188 = v301;

            v189 = v300;
            if (v187 != -1)
            {
              swift_once();
            }

            v190 = __swift_project_value_buffer(v162, qword_1EDFFCDC8);
            v191 = v299;
            (v316)(v299, v190, v162);
            swift_storeEnumTagMultiPayload();
            if (*(v188 + 16))
            {
              LOBYTE(v325) = 0;
              v192 = swift_allocObject();
              v322 = xmmword_1D72BAAB0;
              *(v192 + 16) = xmmword_1D72BAAB0;
              *(v192 + 32) = v325;
              *(v192 + 40) = v168;
              *(v192 + 48) = v161;

              v193 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v194 = swift_allocObject();
              *(v194 + 16) = v193;
              *(v194 + 24) = v322;
              *(v194 + 40) = v325;
              v195 = v324[3];
              v196 = v324[4];
              v197 = __swift_project_boxed_opaque_existential_1(v324, v195);
              MEMORY[0x1EEE9AC00](v197, v198);
              MEMORY[0x1EEE9AC00](v199, v200);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v192;
              v201 = v323;
              v203 = sub_1D5D2F7A4(v191, sub_1D615B49C, v202, sub_1D615B4A4, (&v288 - 6), v195, v196);
              *&v323 = v201;
              if (v201)
              {
                sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
                goto LABEL_53;
              }

              v205 = v203;

              if (v205)
              {
                v325 = v322;
                v326 = 0;
                v327 = v301;
                sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
                sub_1D66775F8();
                v206 = v323;
                sub_1D72647EC();
                v207 = v299;
                if (v206)
                {

                  sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
                  goto LABEL_14;
                }

                *&v323 = 0;

                sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
                v189 = v300;
                v168 = v315;
              }

              else
              {
                sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);

                v189 = v300;
                v168 = v315;
              }
            }

            else
            {
              sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
            }

            v208 = v298;
            (v316)(v298, v317, v162);
            swift_storeEnumTagMultiPayload();
            if (*(v297 + 16))
            {
              LOBYTE(v325) = 0;
              v209 = v208;
              v210 = swift_allocObject();
              v322 = xmmword_1D72BAAC0;
              *(v210 + 16) = xmmword_1D72BAAC0;
              *(v210 + 32) = v325;
              *(v210 + 40) = v168;
              *(v210 + 48) = v161;

              v211 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v212 = swift_allocObject();
              *(v212 + 16) = v211;
              *(v212 + 24) = v322;
              *(v212 + 40) = v325;
              v213 = v324[3];
              v214 = v324[4];
              v215 = __swift_project_boxed_opaque_existential_1(v324, v213);
              MEMORY[0x1EEE9AC00](v215, v216);
              MEMORY[0x1EEE9AC00](v217, v218);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v210;
              v219 = v323;
              v221 = sub_1D5D2F7A4(v209, sub_1D615B49C, v220, sub_1D615B4A4, (&v288 - 6), v213, v214);
              *&v323 = v219;
              if (v219)
              {

LABEL_66:
                v222 = &v326;
LABEL_67:
                sub_1D5D2CFE8(*(v222 - 32), type metadata accessor for FormatVersionRequirement);
                goto LABEL_14;
              }

              v223 = v221;

              if (v223)
              {
                v224 = v323;
                sub_1D5E09374(v297, v109, 9, 0, 0);
                if (v224)
                {

                  goto LABEL_66;
                }

                *&v323 = 0;
                v189 = v300;
                v168 = v315;
              }

              else
              {
                v189 = v300;
                v168 = v315;
              }
            }

            sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);
            (v316)(v296, v317, v162);
            swift_storeEnumTagMultiPayload();
            if (*(v295 + 16))
            {
              LOBYTE(v325) = 0;
              v225 = swift_allocObject();
              v322 = xmmword_1D72BAAD0;
              *(v225 + 16) = xmmword_1D72BAAD0;
              *(v225 + 32) = v325;
              *(v225 + 40) = v168;
              *(v225 + 48) = v161;

              v226 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v227 = swift_allocObject();
              *(v227 + 16) = v226;
              *(v227 + 24) = v322;
              *(v227 + 40) = v325;
              v228 = v324[3];
              v229 = v324[4];
              v230 = __swift_project_boxed_opaque_existential_1(v324, v228);
              MEMORY[0x1EEE9AC00](v230, v231);
              MEMORY[0x1EEE9AC00](v232, v233);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v225;
              v234 = v296;
              v235 = v323;
              v237 = sub_1D5D2F7A4(v296, sub_1D615B49C, v236, sub_1D615B4A4, (&v288 - 6), v228, v229);
              *&v323 = v235;
              if (v235)
              {
                goto LABEL_86;
              }

              v238 = v237;

              if (v238)
              {
                v325 = v322;
                v326 = 0;
                v327 = v295;
                sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
                sub_1D60AD304();
                v239 = v323;
                sub_1D72647EC();
                *&v323 = v239;
                if (v239)
                {

                  v186 = &v325;
                  goto LABEL_46;
                }

                sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
                v189 = v300;
                v162 = v314;
                v161 = v290;
              }

              else
              {
                sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);

                v189 = v300;
              }

              v168 = v315;
            }

            else
            {
              sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
            }

            (v316)(v294, v317, v162);
            swift_storeEnumTagMultiPayload();
            if (*(v293 + 16))
            {
              LOBYTE(v325) = 0;
              v240 = swift_allocObject();
              v322 = xmmword_1D72BAAE0;
              *(v240 + 16) = xmmword_1D72BAAE0;
              *(v240 + 32) = v325;
              *(v240 + 40) = v168;
              *(v240 + 48) = v161;

              v241 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v242 = swift_allocObject();
              *(v242 + 16) = v241;
              *(v242 + 24) = v322;
              *(v242 + 40) = v325;
              v243 = v324[3];
              v244 = v324[4];
              v245 = __swift_project_boxed_opaque_existential_1(v324, v243);
              MEMORY[0x1EEE9AC00](v245, v246);
              MEMORY[0x1EEE9AC00](v247, v248);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v240;
              v234 = v294;
              v249 = v323;
              v251 = sub_1D5D2F7A4(v294, sub_1D615B49C, v250, sub_1D615B4A4, (&v288 - 6), v243, v244);
              *&v323 = v249;
              if (v249)
              {
LABEL_86:
                sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);
                goto LABEL_53;
              }

              v252 = v251;

              if (v252)
              {
                v325 = v322;
                v326 = 0;
                v327 = v293;
                sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
                sub_1D6659404();
                v253 = v323;
                sub_1D72647EC();
                if (v253)
                {

                  sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
                  v87 = v109;
                  return sub_1D5D2CFE8(v87, sub_1D668F160);
                }

                sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
                v162 = v314;
                v168 = v315;
                v161 = v290;
                *&v323 = 0;
                v189 = v300;
              }

              else
              {
                sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);

                v189 = v300;
                v168 = v315;
              }
            }

            else
            {
              sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
            }

            (v316)(v189, v317, v162);
            swift_storeEnumTagMultiPayload();
            if (v331 == 192)
            {
              v254 = v189;
              v255 = v323;
            }

            else
            {
              LOBYTE(v325) = 0;
              v256 = swift_allocObject();
              v322 = xmmword_1D72BAAF0;
              *(v256 + 16) = xmmword_1D72BAAF0;
              *(v256 + 32) = v325;
              *(v256 + 40) = v168;
              *(v256 + 48) = v161;

              v257 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v258 = swift_allocObject();
              *(v258 + 16) = v257;
              *(v258 + 24) = v322;
              *(v258 + 40) = v325;
              v259 = v324[3];
              v260 = v324[4];
              v261 = __swift_project_boxed_opaque_existential_1(v324, v259);
              MEMORY[0x1EEE9AC00](v261, v262);
              MEMORY[0x1EEE9AC00](v263, v264);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v256;
              v265 = v323;
              v267 = sub_1D5D2F7A4(v189, sub_1D615B49C, v266, sub_1D615B4A4, (&v288 - 6), v259, v260);
              v255 = v265;
              if (v265)
              {
                sub_1D5D2CFE8(v300, type metadata accessor for FormatVersionRequirement);
LABEL_105:

LABEL_111:
                v87 = v109;
                return sub_1D5D2CFE8(v87, sub_1D668F160);
              }

              v268 = v267;

              if (v268)
              {
                v325 = v322;
                v326 = 0;
                LOBYTE(v327) = v331;
                sub_1D6684C90();
                sub_1D72647EC();
              }

              v254 = v300;
            }

            sub_1D5D2CFE8(v254, type metadata accessor for FormatVersionRequirement);
            v269 = qword_1EDF31E90;
            v270 = v292;

            if (v269 != -1)
            {
              swift_once();
            }

            v271 = v314;
            v272 = __swift_project_value_buffer(v314, qword_1EDFFCCE8);
            v273 = v291;
            (v316)(v291, v272, v271);
            swift_storeEnumTagMultiPayload();
            if (*(v270 + 16))
            {
              LOBYTE(v325) = 0;
              v274 = swift_allocObject();
              v323 = xmmword_1D7282A80;
              *(v274 + 16) = xmmword_1D7282A80;
              *(v274 + 32) = v325;
              *(v274 + 40) = v315;
              *(v274 + 48) = v290;

              v275 = sub_1D72647CC();
              LOBYTE(v325) = 0;
              v276 = swift_allocObject();
              *(v276 + 16) = v275;
              *(v276 + 24) = v323;
              *(v276 + 40) = v325;
              v277 = v324[3];
              v278 = v324[4];
              v279 = __swift_project_boxed_opaque_existential_1(v324, v277);
              MEMORY[0x1EEE9AC00](v279, v280);
              MEMORY[0x1EEE9AC00](v281, v282);
              *(&v288 - 4) = sub_1D5B4AA6C;
              *(&v288 - 3) = 0;
              v286 = sub_1D6708A58;
              v287 = v274;
              v284 = sub_1D5D2F7A4(v273, sub_1D615B49C, v283, sub_1D615B4A4, (&v288 - 6), v277, v278);
              if (v255)
              {
                sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);

                goto LABEL_105;
              }

              v285 = v284;

              if (v285)
              {
                v325 = v323;
                v326 = 0;
                v327 = v292;
                sub_1D5C34D84(0, &qword_1EDF04DD0, &type metadata for FormatGroupRequirement, MEMORY[0x1E69E62F8]);
                sub_1D668F284();
                sub_1D72647EC();

                v222 = &v322 + 8;
                goto LABEL_67;
              }

              sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
            }

            goto LABEL_111;
          }

          v325 = v322;
          v326 = 0;
          v327 = v303;
          sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
          sub_1D5D2FA60();
          v185 = v323;
          sub_1D72647EC();
          v168 = v315;
          *&v323 = v185;
          if (v185)
          {

            v186 = &v329;
LABEL_46:
            sub_1D5D2CFE8(*(v186 - 32), type metadata accessor for FormatVersionRequirement);
LABEL_54:
            v87 = v109;
            return sub_1D5D2CFE8(v87, sub_1D668F160);
          }

          v183 = v302;
        }

        else
        {
          v183 = v169;
        }

        sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
        goto LABEL_48;
      }

      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
      v91 = v314;
      v93 = v290;
      v90 = v316;
LABEL_11:
      v96 = v317;
      goto LABEL_12;
    }

LABEL_10:
    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v87 = v75;
  return sub_1D5D2CFE8(v87, sub_1D668F160);
}

uint64_t sub_1D64BA4E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6690970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64BA520(uint64_t a1)
{
  v2 = sub_1D5C50C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64BA55C(uint64_t a1)
{
  v2 = sub_1D5C50C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupBindExpression.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v78 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v86 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v78 - v12;
  sub_1D668F374(0);
  v88 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v85 = v1[2];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C9B120(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25088, sub_1D5C9B120, &unk_1D7321584);
  *&v87 = v17;
  sub_1D5D2EE70(&type metadata for FormatGroupBindExpression, v23, v25, v20, &type metadata for FormatGroupBindExpression, v23, &type metadata for FormatVersions.JazzkonG, v21, v17, v24, &off_1F51F6BF8);
  v26 = qword_1EDF31EA8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD18);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v13, v28, v27);
  v84 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v18;
  sub_1D725892C();
  v32 = sub_1D725895C();
  if ((*(*(v32 - 8) + 48))(v6, 1, v32) != 1)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v34 = v87;
    v54 = v88;
    goto LABEL_12;
  }

  v82 = v19;
  v78[1] = v31;
  v79 = v30;
  v80 = v28;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v33 = v88;
  v34 = v87;
  v35 = (v87 + *(v88 + 44));
  v37 = *v35;
  v36 = v35[1];
  LOBYTE(v91) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v91;
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  sub_1D5E1B7CC(0);
  v40 = v39;
  sub_1D5B58B84(&qword_1EDF03018, sub_1D5E1B7CC, MEMORY[0x1E69E6F60]);

  v81 = v40;
  v41 = sub_1D72647CC();
  LOBYTE(v91) = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v91;
  v43 = (v34 + *(v33 + 36));
  v44 = v43[3];
  v45 = v43[4];
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v78[-4] = sub_1D5B4AA6C;
  v78[-3] = 0;
  v76 = sub_1D668F408;
  v77 = v38;
  v50 = v94;
  v52 = sub_1D5D2F7A4(v13, sub_1D615B49C, v51, sub_1D615B4A4, &v78[-6], v44, v45);
  v94 = v50;
  if (v50)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v34, sub_1D668F374);
  }

  v55 = v52;

  if ((v55 & 1) == 0)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    v54 = v88;
    goto LABEL_11;
  }

  v91 = 0;
  v92 = 0;
  v93 = 0;
  v89 = v83;
  v90 = v82;
  v56 = v94;
  sub_1D72647EC();

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  v54 = v88;
  if (!v56)
  {
    v94 = 0;
LABEL_11:
    v30 = v79;
    v28 = v80;
LABEL_12:
    v57 = v86;
    v30(v86, v28, v27);
    swift_storeEnumTagMultiPayload();
    v58 = (v34 + *(v54 + 44));
    v60 = *v58;
    v59 = v58[1];
    LOBYTE(v91) = 0;
    v61 = swift_allocObject();
    v87 = xmmword_1D728CF30;
    *(v61 + 16) = xmmword_1D728CF30;
    *(v61 + 32) = v91;
    *(v61 + 40) = v60;
    *(v61 + 48) = v59;
    sub_1D5E1B7CC(0);
    sub_1D5B58B84(&qword_1EDF03018, sub_1D5E1B7CC, MEMORY[0x1E69E6F60]);
    v62 = v85;

    v63 = sub_1D72647CC();
    LOBYTE(v91) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v87;
    *(v64 + 40) = v91;
    v65 = (v34 + *(v54 + 36));
    v66 = v65[3];
    v67 = v65[4];
    v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    v78[-4] = sub_1D5B4AA6C;
    v78[-3] = 0;
    v76 = sub_1D6708A5C;
    v77 = v61;
    v72 = v94;
    v74 = sub_1D5D2F7A4(v57, sub_1D615B49C, v73, sub_1D615B4A4, &v78[-6], v66, v67);
    if (v72)
    {
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v75 = v74;

      if (v75)
      {
        sub_1D5E06F48(v62, v34, 1, 0, 0);
      }

      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v34, sub_1D668F374);
}

uint64_t sub_1D64BAEF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6690E30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64BAF30(uint64_t a1)
{
  v2 = sub_1D5C9B610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64BAF6C(uint64_t a1)
{
  v2 = sub_1D5C9B610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v80 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v77 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v76 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v75 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v75 - v34;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 9);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1D5C30408();
  v83 = v39;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Bool, &type metadata for FormatCodingKeys, v45, v42, &type metadata for FormatGroupBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v43, v39, v44, &off_1F51F6BF8);
  v46 = ((2 * v41) | ((v40 & 0x20) != 0));
  if (v46 > 4)
  {
    if (((2 * v41) | ((v40 & 0x20) != 0)) <= 6u)
    {
      v54 = v83;
      if (v46 == 5)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD68);
        v53 = v80;
        (*(*(v58 - 8) + 16))(v80, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = 5;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCC90);
        v53 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = 6;
      }

      sub_1D63ABCF4(v60, v84, v53);
    }

    else if (v46 == 7)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD68);
      v53 = v79;
      (*(*(v64 - 8) + 16))(v79, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC348(7, v84, v53);
    }

    else if (v46 == 8)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD68);
      v53 = v81;
      (*(*(v51 - 8) + 16))(v81, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC4DC(8, v84, v40, v53);
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE80);
      v53 = v82;
      (*(*(v69 - 8) + 16))(v82, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC674(9, v84, v53);
    }

    v57 = v53;
    goto LABEL_43;
  }

  if (((2 * v41) | ((v40 & 0x20) != 0)) <= 1u)
  {
    v54 = v83;
    if ((2 * v41) | ((v40 & 0x20) != 0))
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCDF8);
      (*(*(v71 - 8) + 16))(v31, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ABCF4(1, v84, v31);
      v57 = v31;
    }

    else
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCDC8);
      (*(*(v55 - 8) + 16))(v35, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ABB60(0, v84, v35);
      v57 = v35;
    }

LABEL_43:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    v68 = v54;
    return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
  }

  v47 = v83;
  if (v46 != 2)
  {
    if (v46 == 3)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD18);
      v50 = v76;
      (*(*(v48 - 8) + 16))(v76, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC01C(3, v84 & 1, v50);
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD98);
      v50 = v77;
      (*(*(v66 - 8) + 16))(v77, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC1B4(4, v84, v50);
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v68 = v47;
    return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD98);
  (*(*(v61 - 8) + 16))(v27, v62, v61);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63ABE88(2, v84, v27);
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
}

uint64_t sub_1D64BBA48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6465626D45626577;
    v6 = 0x76457374726F7073;
    if (a1 != 8)
    {
      v6 = 0x7453656C7A7A7570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1684366694;
    if (a1 != 5)
    {
      v7 = 0x7463655364656566;
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
    v1 = 0x656E696C64616568;
    v2 = 0x6575737369;
    v3 = 0x72656874616577;
    if (a1 != 3)
    {
      v3 = 0x6C6C6177796170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 6775156;
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

uint64_t sub_1D64BBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64BBA48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatGroupBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
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
    v12 = a1;
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
          *(v21 + 16) = &unk_1F5115058;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F4D8();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27 <= 2u)
    {
      v23 = v30;
      a1 = v12;
      if (v27)
      {
        v29 = xmmword_1D7279980;
        if (v27 == 1)
        {
          sub_1D5CDAA88();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v26 = 0;
          v24 = v27;
          v25 = 32;
        }

        else
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v27;
          v26 = 1;
        }
      }

      else
      {
        v29 = xmmword_1D7279980;
        sub_1D63281C4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v26 = 0;
        v24 = v27;
      }
    }

    else
    {
      v23 = v30;
      a1 = v12;
      if (v27 > 4u)
      {
        v29 = xmmword_1D7279980;
        if (v27 == 5)
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v26 = 2;
          v25 = 32;
        }

        else
        {
          sub_1D667EB6C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v25 = v28;
          v26 = 3;
        }
      }

      else
      {
        v29 = xmmword_1D7279980;
        if (v27 == 3)
        {
          sub_1D667EB18();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v25 = v28 | 0x20;
          v26 = 1;
        }

        else
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v27;
          v26 = 2;
        }
      }
    }

    *v23 = v24;
    *(v23 + 8) = v25;
    *(v23 + 9) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v58 - v25;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *v1;
  v31 = *(v1 + 8);
  v32 = *(v1 + 9);
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  v62 = v30;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Color, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatGroupBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v34, v30, v35, &off_1F51F6CD8);
  v37 = ((2 * v32) | ((v31 & 0x20) != 0));
  if (v37 > 2)
  {
    if (((2 * v32) | ((v31 & 0x20) != 0)) > 4u)
    {
      v38 = v62;
      if (v37 != 5)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v18 = v61;
        (*(*(v56 - 8) + 16))(v61, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AA34C(6, v63, v31, v18);
        goto LABEL_30;
      }

      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCC90);
      v18 = v60;
      (*(*(v44 - 8) + 16))(v60, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v46 = 5;
    }

    else
    {
      v38 = v62;
      if (v37 == 3)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
        v18 = v58;
        (*(*(v39 - 8) + 16))(v58, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AA1B4(3, v63, v31 & 0xDF, v18);
        goto LABEL_30;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v54 = sub_1D725BD1C();
      v55 = __swift_project_value_buffer(v54, qword_1EDFFCD68);
      v18 = v59;
      (*(*(v54 - 8) + 16))(v59, v55, v54);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v46 = 4;
    }

    v53 = v63;
LABEL_26:
    sub_1D63AA020(v46, v53, v18);
LABEL_30:
    v43 = v18;
LABEL_31:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v38, sub_1D5D30DC4);
  }

  if ((2 * v32) | ((v31 & 0x20) != 0))
  {
    if (v37 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
      (*(*(v41 - 8) + 16))(v22, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38 = v62;
      sub_1D63A9E8C(1, v63, v22);
      v43 = v22;
      goto LABEL_31;
    }

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCCE8);
    (*(*(v51 - 8) + 16))(v18, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v46 = 2;
    v38 = v62;
    v53 = v63;
    goto LABEL_26;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCD50);
  (*(*(v47 - 8) + 16))(v26, v48, v47);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v62;
  sub_1D63A9CF8(0, v63, v26);
  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v49, sub_1D5D30DC4);
}