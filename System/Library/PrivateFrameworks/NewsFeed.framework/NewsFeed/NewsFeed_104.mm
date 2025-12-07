double sub_1D64BC9E4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D64BCAFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663A04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64BCB2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6575737369;
  v5 = 0xEB000000006E6F69;
  v6 = 0x7463655364656566;
  if (v2 != 5)
  {
    v6 = 0x76457374726F7073;
    v5 = 0xEB00000000746E65;
  }

  v7 = 0xEA00000000006570;
  v8 = 0x7954656C7A7A7570;
  if (v2 != 3)
  {
    v8 = 1684366694;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 1)
  {
    v10 = 6775156;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_1D64BCCC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64BCDAC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64BCE7C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64BCF5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6775156;
  v5 = 0xE400000000000000;
  v6 = 1684366694;
  v7 = 0xEB000000006E6F69;
  v8 = 0x7463655364656566;
  if (v2 != 3)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656874616577;
    v3 = 0xE700000000000000;
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

uint64_t FormatGroupBinding.DateTime.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v21 + 16) = &unk_1F51150A8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F52C();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 2u)
    {
      v23 = v26;
      if (v28 == 3)
      {
        v27 = xmmword_1D7279980;
        sub_1D6139ED4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x60;
      }

      else
      {
        v27 = xmmword_1D7279980;
        if (v28 == 4)
        {
          sub_1D6139ED4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x80;
        }

        else
        {
          sub_1D6139ED4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0xA0;
        }
      }
    }

    else
    {
      v23 = v26;
      if (v28)
      {
        v27 = xmmword_1D7279980;
        if (v28 == 1)
        {
          sub_1D5DF40A8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x20;
        }

        else
        {
          sub_1D6685E54();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x40;
        }
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D6685EA8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.DateTime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v55 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - v23;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v2;
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = sub_1D5C30408();
  v33 = v28;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.DateTime, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatGroupBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v30, v28, v32, &off_1F51F6CF8);
  v35 = v29 >> 5;
  if (v29 >> 5 > 2)
  {
    if (v35 == 3)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCCA8);
      v41 = v54;
      (*(*(v46 - 8) + 16))(v54, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 3;
    }

    else if (v35 == 4)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
      v41 = v55;
      (*(*(v39 - 8) + 16))(v55, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 4;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCC90);
      v41 = v56;
      (*(*(v50 - 8) + 16))(v56, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 5;
    }

    sub_1D63A89DC(v43, v42, v41);
    v38 = v41;
  }

  else if (v35)
  {
    if (v35 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCCA8);
      (*(*(v36 - 8) + 16))(v20, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A86B0(1, v29 & 0x1F, v20);
      v38 = v20;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCCA8);
      (*(*(v48 - 8) + 16))(v16, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A8844(2, v29 & 1, v16);
      v38 = v16;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCCA8);
    (*(*(v44 - 8) + 16))(v24, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A8524(0, v24);
    v38 = v24;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

double sub_1D64BDC34(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D64BDD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663A9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64BDD4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C7A7A7570;
  v5 = 0xE300000000000000;
  v6 = 6775156;
  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 4)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 1)
  {
    v10 = 0x6575737369;
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

uint64_t sub_1D64BDEAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7453656C7A7A7570;
  }

  else
  {
    v3 = 0x656E696C64616568;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF63697473697461;
  }

  if (*a2)
  {
    v5 = 0x7453656C7A7A7570;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v6 = 0xEF63697473697461;
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

uint64_t sub_1D64BDF60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64BDFF0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64BE06C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64BE104(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C64616568;
  if (*v1)
  {
    v2 = 0x7453656C7A7A7570;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF63697473697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatGroupBinding.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
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
          *(v21 + 16) = &unk_1F51150F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F580();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26 <= 1u)
    {
      v23 = v30;
      a1 = v12;
      if (v26)
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0x200000;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D6664DE4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16);
      }
    }

    else
    {
      v23 = v30;
      a1 = v12;
      if (v26 == 2)
      {
        v26 = xmmword_1D7279980;
        sub_1D6664D90();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | 0x400000;
      }

      else if (v26 == 3)
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0x600000;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0xFF800000;
      }
    }

    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 18) = BYTE2(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Font.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 8);
  v50 = *v1;
  v52 = v26;
  v27 = *(v1 + 18);
  v51 = *(v1 + 16) | (*(v1 + 18) << 16);
  v29 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v30 = sub_1D5C30408();
  v53 = v25;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Font, &type metadata for FormatCodingKeys, v31, v29, &type metadata for FormatGroupBinding.Font, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v30, &off_1F51F6C78);
  v32 = v27 >> 5;
  if (v32 <= 1)
  {
    if (v27 >> 5)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCD30);
      (*(*(v46 - 8) + 16))(v17, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v51 & 0x1FFFFF;
      v45 = 1;
      goto LABEL_20;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v21, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v53;
    sub_1D63AB684(0, *&v50, v52, v51, v21);
    v36 = v21;
  }

  else
  {
    if (v32 != 2)
    {
      if (v32 == 3)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v33 = sub_1D725BD1C();
        v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
        (*(*(v33 - 8) + 16))(v9, v34, v33);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v53;
        sub_1D63AB824(3, *&v50, v52, v51 & 0x1FFFFF, v9);
        v36 = v9;
        goto LABEL_21;
      }

      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCC90);
      v17 = v49;
      (*(*(v42 - 8) + 16))(v49, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v51 & 0x1FFFFF;
      v45 = 4;
LABEL_20:
      v35 = v53;
      sub_1D63AB824(v45, *&v50, v52, v44, v17);
      v36 = v17;
      goto LABEL_21;
    }

    v39 = v50;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v13, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v53;
    sub_1D63AB9C4(2, v52, v51, v13, v39);
    v36 = v13;
  }

LABEL_21:
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t sub_1D64BED28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64BEE00(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64BEEC4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64BEF98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66639B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64BEFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 3)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
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

uint64_t FormatGroupBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30[-v9 - 16];
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
          *(v21 + 16) = &unk_1F5115148;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F5D4();
    *v30 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v29 > 3u)
    {
      v23 = v34;
      if (v29 > 5u)
      {
        if (v29 == 6)
        {
          v29 = xmmword_1D7279980;
          sub_1D668F67C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v27 = *v30;
          v28 = *&v30[8];
          v24 = v31;
          v25 = v32;
          v26 = v33 | 0xC0;
        }

        else
        {
          *v30 = xmmword_1D7279980;
          sub_1D668F628();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          v27 = v29;
          v28 = 0uLL;
          v26 = -32;
        }
      }

      else
      {
        if (v29 == 4)
        {
          v29 = xmmword_1D7279980;
          sub_1D668F6D0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v27 = *v30;
          v28 = *&v30[8];
          v26 = 0x80;
        }

        else
        {
          v29 = xmmword_1D7279980;
          sub_1D668F6D0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v27 = *v30;
          v28 = *&v30[8];
          v26 = -96;
        }

        v24 = v31;
      }
    }

    else
    {
      v23 = v34;
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          *v30 = xmmword_1D7279980;
          sub_1D5CD3BE8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          v27 = v29;
          v28 = 0uLL;
          v26 = 64;
        }

        else
        {
          v29 = xmmword_1D7279980;
          sub_1D5EBCA6C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          *&v28 = *&v30[8];
          v27 = *v30;
          *(&v28 + 1) = *&v30[16];
          v26 = 96;
        }
      }

      else if (v29)
      {
        v29 = xmmword_1D7279980;
        sub_1D668F6D0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v27 = *v30;
        v28 = *&v30[8];
        v26 = 32;
        v24 = v31;
      }

      else
      {
        *v30 = xmmword_1D7279980;
        sub_1D5CBE610();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = v29;
        v28 = 0uLL;
      }
    }

    *v23 = v27;
    *(v23 + 8) = v28;
    *(v23 + 24) = v24;
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v69 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v67 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v67 - v28;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v35 = *(v1 + 8);
  v36 = *(v1 + 24);
  v74 = *(v1 + 16);
  v75 = v34;
  v72 = v36;
  v73 = v35;
  v37 = *(v1 + 32);
  v38 = *(v1 + 40);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = sub_1D5C30408();
  v81 = v33;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Image, &type metadata for FormatCodingKeys, v42, v39, &type metadata for FormatGroupBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v40, v33, v41, &off_1F51F6C78);
  v43 = v38 >> 5;
  if (v38 >> 5 > 3)
  {
    if (v38 >> 5 > 5)
    {
      if (v43 == 6)
      {
        *&v76 = v75;
        *(&v76 + 1) = v73;
        v77 = v74;
        v78 = v72;
        v79 = v37;
        v80 = v38 & 1;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v51 = v71;
        (*(*(v56 - 8) + 16))(v71, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v48 = v81;
        sub_1D63A9698(6, &v76, v51);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v65 = sub_1D725BD1C();
        v66 = __swift_project_value_buffer(v65, qword_1EDFFCE38);
        v51 = v70;
        (*(*(v65 - 8) + 16))(v70, v66, v65);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v48 = v81;
        sub_1D63A9838(7, v75 & 1, v51);
      }
    }

    else
    {
      if (v43 == 4)
      {
        v48 = v81;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v49 = sub_1D725BD1C();
        v50 = __swift_project_value_buffer(v49, qword_1EDFFCD68);
        v51 = v69;
        (*(*(v49 - 8) + 16))(v69, v50, v49);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = 4;
      }

      else
      {
        v48 = v81;
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v61 = sub_1D725BD1C();
        v62 = __swift_project_value_buffer(v61, qword_1EDFFCC90);
        v51 = v68;
        (*(*(v61 - 8) + 16))(v68, v62, v61);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = 5;
      }

      sub_1D63A91C4(v52, v75, v73, v74, v72, v51);
    }

    goto LABEL_33;
  }

  if (v38 >> 5 > 1)
  {
    v48 = v81;
    if (v43 == 2)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD98);
      (*(*(v53 - 8) + 16))(v21, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A935C(2, v75 & 1, v21);
      v55 = v21;
      goto LABEL_34;
    }

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCDE0);
    v51 = v67;
    (*(*(v63 - 8) + 16))(v67, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A94F4(3, v75, v73, v74, v51);
LABEL_33:
    v55 = v51;
LABEL_34:
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    v60 = v48;
    return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
  }

  v44 = v81;
  if (v43)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v25, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A91C4(1, v75, v73, v74, v72, v25);
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    v60 = v44;
    return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD50);
  (*(*(v45 - 8) + 16))(v29, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A9030(0, v75, v29);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v44, sub_1D5D30DC4);
}

unint64_t sub_1D64C00A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663A50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64C00D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xEB00000000746E65;
  v6 = 0x76457374726F7073;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 4)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6575737369;
  if (v2 != 2)
  {
    v10 = 0x72656874616577;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
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

uint64_t FormatGroupBinding.IssueCover.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v16 = *v13;
        v13 += 2;
        if (v16 >= 4)
        {
          v17 = *(v15 - 3);

          sub_1D5E2D970();
          v2 = swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v16;
          *(v18 + 16) = &unk_1F5115198;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D668F724();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D668F778();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.IssueCover.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.IssueCover, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatGroupBinding.IssueCover, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AD304(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.SourceItemTip.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
          *(v21 + 16) = &unk_1F51151E8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F7CC();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28 <= 1u)
    {
      v23 = v26;
      a1 = v12;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x20;
      }

      else
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    else
    {
      v23 = v26;
      a1 = v12;
      if (v28 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D668F8C8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x40;
      }

      else
      {
        v27 = xmmword_1D7279980;
        if (v28 == 3)
        {
          sub_1D668F874();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x60;
        }

        else
        {
          sub_1D668F820();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0x80;
        }
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.SourceItemTip.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v50 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v51 = v25;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.SourceItemTip, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatGroupBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v28, v25, v29, &off_1F51F6B38);
  v31 = v26 >> 5;
  if (v26 >> 5 <= 1)
  {
    if (v31)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCC90);
      (*(*(v46 - 8) + 16))(v17, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v48 = v26 & 1;
      v35 = v51;
      sub_1D63ACCC0(1, v48, v17);
      v36 = v17;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE68);
      (*(*(v37 - 8) + 16))(v21, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v26 & 1;
      v35 = v51;
      sub_1D63ACCC0(0, v39, v21);
      v36 = v21;
    }
  }

  else if (v31 == 2)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCE50);
    (*(*(v40 - 8) + 16))(v13, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v26 & 1;
    v35 = v51;
    sub_1D63ACE58(2, v42, v13);
    v36 = v13;
  }

  else if (v31 == 3)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCE68);
    (*(*(v32 - 8) + 16))(v9, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v26 & 1;
    v35 = v51;
    sub_1D63ACCC0(3, v34, v9);
    v36 = v9;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v43 = sub_1D725BD1C();
    v44 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
    v45 = v50;
    (*(*(v43 - 8) + 16))(v50, v44, v43);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D63ACFF0(4, v45);
    v36 = v45;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t sub_1D64C1360()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64C143C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64C1504(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64C15DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663920(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64C160C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684366694;
  v5 = 0xE800000000000000;
  v6 = 0x656E696C64616568;
  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (v2 != 3)
  {
    v8 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463655364656566;
    v3 = 0xEB000000006E6F69;
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

uint64_t FormatGroupBinding.Sponsorship.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Sponsorship, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatGroupBinding.Sponsorship, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v11, v9, v12, &off_1F51F6B58);
  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE20);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422D34(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
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
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v27;
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
          *(v21 + 16) = &unk_1F5115288;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D668F970();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D668F9C4();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Temperature.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Temperature, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatGroupBinding.Temperature, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v15, v10, v16, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD18);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AD17C(v11, v12, v13, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D64C2010(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x6575737369;
      break;
    case 3:
      result = 0x72656874616577;
      break;
    case 4:
      result = 0x6C6C6177796170;
      break;
    case 5:
      result = 1684366694;
      break;
    case 6:
      result = 0x7463655364656566;
      break;
    case 7:
      result = 0x6465626D45626577;
      break;
    case 8:
      result = 0x76457374726F7073;
      break;
    case 9:
      result = 0x656C7A7A7570;
      break;
    case 10:
      result = 0x7954656C7A7A7570;
      break;
    case 11:
      result = 0x7453656C7A7A7570;
      break;
    case 12:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64C22EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64C2010(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D64C2368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (v2 != 1)
  {
    v5 = 6775156;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656E696C64616568;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6465626D45626577;
  if (*a2 != 1)
  {
    v8 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1D64C2458()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64C24F4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64C257C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64C2614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666396C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64C2644(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (v2 != 1)
  {
    v5 = 6775156;
    v4 = 0xE300000000000000;
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

uint64_t FormatGroupColumnSystem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
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
    v12 = v29;
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
          *(v22 + 16) = &unk_1F51152D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D668FA18();
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    if (v26)
    {
      if (v26 == 1)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 1;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2C0F0, sub_1D668FA6C, &type metadata for FormatGroupColumnSystemKind, type metadata accessor for FormatSelectorValue);
        v26 = xmmword_1D7279980;
        sub_1D668FAC0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v27;
        v25 = v28;
      }
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0;
    }

    *v12 = v24;
    v12[1] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupColumnSystem.encode(to:)(void *a1)
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
  v20 = v1[1];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupColumnSystem, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatGroupColumnSystem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v22, v18, v23, &off_1F51F6CD8);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641CA78(1, v10);
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
      sub_1D63949F0(2, v19 & 1, v20, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641CA78(0, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64C2EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  if (v2 != 1)
  {
    v4 = 0x726F7463656C6573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685217635;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (*a2 != 1)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685217635;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_1D64C2FF0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64C308C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64C3114(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64C31AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664254(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64C31DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685217635;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatGroupColumnSystemKind.encode(to:)(void *a1)
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
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCCE8);
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

uint64_t FormatGroupItemKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v56 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v52 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v51 = &v51 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - v26;
  LODWORD(v58) = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v61;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  v35 = v32;
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v36 = v59;
  v37 = v59[3];
  v38 = v59[4];
  v61 = __swift_project_boxed_opaque_existential_1(v59, v37);
  if (v58 <= 2)
  {
    if (v58)
    {
      if (v58 == 1)
      {
        v58 = v37;
        v41 = v52;
        v35(v52, v31, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v58, v38);
        sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v45 = __swift_project_value_buffer(v30, qword_1EDFFCD98);
        v46 = v53;
        v35(v53, v45, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v46, sub_1D5B4AA6C, 0, v37, v38);
        sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      v58 = v37;
      v44 = v51;
      v35(v51, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v44, sub_1D5B4AA6C, 0, v58, v38);
      sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
    }
  }

  else if (v58 > 4)
  {
    if (v58 == 5)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
      v43 = v56;
      v35(v56, v42, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v43, sub_1D5B4AA6C, 0, v37, v38);
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v49 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
      v50 = v57;
      v35(v57, v49, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v50, sub_1D5B4AA6C, 0, v37, v38);
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    }
  }

  else if (v58 == 3)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
    v40 = v54;
    v35(v54, v39, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v37, v38);
    sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
    v48 = v55;
    v35(v55, v47, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v48, sub_1D5B4AA6C, 0, v37, v38);
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v60[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t FormatGroupNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v428 = &v407 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v408 = &v407 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v409 = &v407 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v410 = &v407 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v411 = &v407 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v412 = &v407 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v413 = &v407 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v417 = (&v407 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v414 = &v407 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v415 = &v407 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v418 = &v407 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v420 = &v407 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v423 = (&v407 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v422 = &v407 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  *&v427 = &v407 - v49;
  sub_1D6690F4C(0);
  *&v430 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v407 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_1D5CC8B58(0);
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF24BA8, sub_1D5CC8B58, &unk_1D7321584);
  v431 = v53;
  sub_1D5D2EE70(v4, v57, v59, v54, v4, v57, &type metadata for FormatVersions.AzdenE, v55, v53, v58, &off_1F51F6C18);
  v60 = v2;
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v63 = qword_1EDF31EE8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD98);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v427;
  v425 = v65;
  v429 = (v66 + 16);
  v67(v427);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v428;
  v416 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v419 = v60;
  v421 = v64;
  v424 = v67;
  v426 = v69;
  if (v72 != 1)
  {
    v95 = v60;
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v96 = v431;
    v97 = v422;
    goto LABEL_7;
  }

  v407 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v430;
  v74 = v431;
  v75 = &v431[*(v430 + 44)];
  v76 = v68;
  v78 = *v75;
  v77 = *(v75 + 1);
  LOBYTE(v433) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v433;
  *(v79 + 40) = v78;
  *(v79 + 48) = v77;
  sub_1D5E1B75C(0);
  v81 = v80;
  sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

  *&v428 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v433) = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v433;
  v84 = (v74 + *(v73 + 36));
  v85 = v84[3];
  v86 = v84[4];
  v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v407 - 4) = sub_1D5B4AA6C;
  *(&v407 - 3) = 0;
  v405 = sub_1D6690FE0;
  v406 = v79;
  v91 = v432;
  v93 = sub_1D5D2F7A4(v76, sub_1D615B49C, v92, sub_1D615B4A4, (&v407 - 6), v85, v86);
  *&v432 = v91;
  if (!v91)
  {
    v147 = v93;

    if (v147)
    {
      v148 = v424;
      v433 = 0uLL;
      LOBYTE(v434) = 0;
      v448 = v416;
      v449 = v407;
      v96 = v431;
      v149 = v432;
      sub_1D72647EC();

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v97 = v422;
      if (v149)
      {
        goto LABEL_16;
      }

      *&v432 = 0;
      v95 = v419;
      v67 = v148;
      v64 = v421;
    }

    else
    {
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

      v96 = v431;
      v95 = v419;
      v64 = v421;
      v97 = v422;
      v67 = v424;
    }

LABEL_7:
    swift_beginAccess();
    v98 = v95[4];
    (v67)(v97, v425, v64);
    swift_storeEnumTagMultiPayload();
    if (((v98 >> 59) & 0x1E | (v98 >> 2) & 1) == 0x16 && v98 == 0xB000000000000008)
    {
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
      v99 = v432;
    }

    else
    {
      v125 = v97;
      v126 = v430;
      v127 = (v96 + *(v430 + 44));
      v128 = *v127;
      v129 = v127[1];
      LOBYTE(v433) = 0;
      v130 = swift_allocObject();
      v428 = xmmword_1D728CF30;
      *(v130 + 16) = xmmword_1D728CF30;
      *(v130 + 32) = v433;
      *(v130 + 40) = v128;
      *(v130 + 48) = v129;
      sub_1D5C82CD8(v98);
      sub_1D5E1B75C(0);
      v132 = v131;
      v133 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

      *&v427 = v132;
      v416 = v133;
      v134 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v134;
      *(v135 + 24) = v428;
      *(v135 + 40) = v433;
      v136 = (v96 + *(v126 + 36));
      v137 = v136[3];
      v138 = v136[4];
      v139 = __swift_project_boxed_opaque_existential_1(v136, v137);
      MEMORY[0x1EEE9AC00](v139, v140);
      MEMORY[0x1EEE9AC00](v141, v142);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v130;
      v143 = v432;
      v145 = sub_1D5D2F7A4(v125, sub_1D615B49C, v144, sub_1D615B4A4, (&v407 - 6), v137, v138);
      if (v143)
      {

        sub_1D5C92A8C(v98);
        v146 = v125;
        goto LABEL_19;
      }

      v150 = v145;

      if (v150)
      {
        v433 = v428;
        LOBYTE(v434) = 0;
        v447 = v98;
        sub_1D5CA1E90();
        v96 = v431;
        sub_1D72647EC();
        v151 = v421;
        v99 = 0;
        sub_1D5C92A8C(v447);
        sub_1D5D2CFE8(v422, type metadata accessor for FormatVersionRequirement);
        v95 = v419;
        v64 = v151;
      }

      else
      {
        v99 = 0;
        sub_1D5C92A8C(v98);
        sub_1D5D2CFE8(v422, type metadata accessor for FormatVersionRequirement);
        v96 = v431;
        v95 = v419;
        v64 = v421;
      }
    }

    *&v427 = v95[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    *&v432 = v99;
    v100 = __swift_project_value_buffer(v64, qword_1EDFFCD68);
    v101 = v424;
    (v424)(v423, v100, v64);
    swift_storeEnumTagMultiPayload();
    v428 = xmmword_1D7297410;
    v433 = xmmword_1D7297410;
    LOBYTE(v434) = 0;
    v102 = (v96 + *(v430 + 44));
    v103 = *v102;
    v104 = v102[1];
    LOBYTE(v447) = 0;
    v105 = swift_allocObject();
    v107 = v105;
    *(v105 + 16) = v428;
    *(v105 + 32) = v447;
    *(v105 + 40) = v103;
    *(v105 + 48) = v104;
    v422 = v103;
    if (v427)
    {
      v407 = &v407;
      v447 = v427;
      MEMORY[0x1EEE9AC00](v105, v106);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v107;
      LOBYTE(v446) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v428;
      *(v108 + 32) = v446;
      *(v108 + 40) = v103;
      *(v108 + 48) = v104;
      sub_1D5E1B75C(0);
      v110 = v109;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      *&v427 = v110;
      v111 = sub_1D72647CC();
      LOBYTE(v446) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      *(v112 + 24) = v428;
      *(v112 + 40) = v446;
      v113 = (v96 + *(v430 + 36));
      v114 = v113[3];
      v115 = v113[4];
      v116 = __swift_project_boxed_opaque_existential_1(v113, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v407 - 4) = sub_1D615B4A4;
      *(&v407 - 3) = (&v407 - 6);
      v405 = sub_1D6708A60;
      v406 = v108;
      v120 = v423;
      v121 = v432;
      v123 = sub_1D5D2F7A4(v423, sub_1D615B49C, v122, sub_1D615B4A4, (&v407 - 6), v114, v115);
      if (v121)
      {

        v96 = v431;

        v124 = v120;
LABEL_15:
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
LABEL_16:
        v94 = v96;
        return sub_1D5D2CFE8(v94, sub_1D6690F4C);
      }

      v152 = v123;
      v416 = v104;

      if (v152)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        *&v432 = 0;
        v64 = v421;

        v95 = v419;
      }

      else
      {
        *&v432 = 0;

        v95 = v419;
        v64 = v421;
      }

      v101 = v424;
      v104 = v416;
    }

    else
    {
    }

    sub_1D5D2CFE8(v423, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v153 = v95[6];
    v154 = v425;
    v101(v420, v425, v64);
    swift_storeEnumTagMultiPayload();
    v155 = *(v153 + 16);
    v416 = v104;
    if (v155)
    {
      LOBYTE(v433) = 0;
      v156 = swift_allocObject();
      v428 = xmmword_1D72BAA60;
      *(v156 + 16) = xmmword_1D72BAA60;
      *(v156 + 32) = v433;
      *(v156 + 40) = v422;
      *(v156 + 48) = v104;
      sub_1D5E1B75C(0);
      v158 = v157;
      v159 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

      v160 = v431;
      *&v427 = v158;
      v423 = v159;
      v161 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v161;
      *(v162 + 24) = v428;
      *(v162 + 40) = v433;
      v163 = (v160 + *(v430 + 36));
      v164 = v163[3];
      v165 = v163[4];
      v166 = __swift_project_boxed_opaque_existential_1(v163, v164);
      MEMORY[0x1EEE9AC00](v166, v167);
      MEMORY[0x1EEE9AC00](v168, v169);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v156;
      v170 = v420;
      v171 = v432;
      v173 = sub_1D5D2F7A4(v420, sub_1D615B49C, v172, sub_1D615B4A4, (&v407 - 6), v164, v165);
      if (v171)
      {
LABEL_34:
        sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);

        goto LABEL_35;
      }

      v175 = v173;

      if (v175)
      {
        v433 = v428;
        LOBYTE(v434) = 0;
        v446 = v153;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v176 = v420;
        v177 = v421;
        v178 = v425;
        v179 = v418;
        *&v432 = 0;

        sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
        v95 = v419;
        v64 = v177;
        v154 = v178;
        goto LABEL_42;
      }

      *&v432 = 0;
      sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);

      v95 = v419;
      v64 = v421;
      v154 = v425;
    }

    else
    {
      sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);
    }

    v179 = v418;
LABEL_42:
    swift_beginAccess();
    v180 = v95[7];
    (v424)(v179, v154, v64);
    swift_storeEnumTagMultiPayload();
    v181 = v422;
    if (v180)
    {
      v423 = v180;
      LOBYTE(v433) = 0;
      v182 = swift_allocObject();
      v428 = xmmword_1D72BAA70;
      *(v182 + 16) = xmmword_1D72BAA70;
      *(v182 + 32) = v433;
      *(v182 + 40) = v181;
      *(v182 + 48) = v416;
      sub_1D5E1B75C(0);
      v184 = v183;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

      v185 = v431;
      *&v427 = v184;
      v186 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v186;
      *(v187 + 24) = v428;
      *(v187 + 40) = v433;
      v188 = (v185 + *(v430 + 36));
      v189 = v188[3];
      v190 = v188[4];
      v191 = __swift_project_boxed_opaque_existential_1(v188, v189);
      MEMORY[0x1EEE9AC00](v191, v192);
      MEMORY[0x1EEE9AC00](v193, v194);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v182;
      v195 = v432;
      v197 = sub_1D5D2F7A4(v179, sub_1D615B49C, v196, sub_1D615B4A4, (&v407 - 6), v189, v190);
      if (v195)
      {
        sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

        v94 = v431;
        return sub_1D5D2CFE8(v94, sub_1D6690F4C);
      }

      v198 = v197;

      if (v198)
      {
        v433 = v428;
        LOBYTE(v434) = 0;
        v445 = v423;
        sub_1D72647EC();
        v199 = v421;
        v200 = v417;
        *&v432 = 0;
        sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
        v95 = v419;
        v64 = v199;
        goto LABEL_50;
      }

      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
      *&v432 = 0;
      v95 = v419;
      v64 = v421;
    }

    else
    {
      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
    }

    v200 = v417;
LABEL_50:
    swift_beginAccess();
    v201 = v95[8];
    sub_1D5EB1500(v201);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v202 = __swift_project_value_buffer(v64, qword_1EDFFCD50);
    v203 = v415;
    *&v428 = v202;
    v424(v415);
    swift_storeEnumTagMultiPayload();
    if (v201 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v433) = 0;
      v233 = swift_allocObject();
      v427 = xmmword_1D72BAA80;
      *(v233 + 16) = xmmword_1D72BAA80;
      *(v233 + 32) = v433;
      v234 = v416;
      *(v233 + 40) = v422;
      *(v233 + 48) = v234;
      sub_1D5E1B75C(0);
      v236 = v235;
      v237 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

      v238 = v431;
      v420 = v236;
      v418 = v237;
      v239 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = v239;
      *(v240 + 24) = v427;
      *(v240 + 40) = v433;
      v241 = (v238 + *(v430 + 36));
      v242 = v241[3];
      v243 = v241[4];
      v244 = __swift_project_boxed_opaque_existential_1(v241, v242);
      v423 = &v407;
      MEMORY[0x1EEE9AC00](v244, v245);
      MEMORY[0x1EEE9AC00](v246, v247);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v233;
      v248 = v432;
      v250 = sub_1D5D2F7A4(v203, sub_1D615B49C, v249, sub_1D615B4A4, (&v407 - 6), v242, v243);
      if (v248)
      {

        sub_1D5EB15C4(v201);
        sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
        v94 = v238;
        return sub_1D5D2CFE8(v94, sub_1D6690F4C);
      }

      v267 = v250;

      v200 = v417;
      if (v267)
      {
        v433 = v427;
        LOBYTE(v434) = 0;
        v444 = v201;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v268 = v421;
        *&v432 = 0;
        sub_1D5EB15C4(v444);
        sub_1D5D2CFE8(v415, type metadata accessor for FormatVersionRequirement);
        v95 = v419;
        v64 = v268;
      }

      else
      {
        *&v432 = 0;
        sub_1D5EB15C4(v201);
        sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
        v95 = v419;
        v64 = v421;
      }
    }

    swift_beginAccess();
    v204 = *(v95 + 72);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v205 = __swift_project_value_buffer(v64, qword_1EDFFCD00);
    v206 = v414;
    (v424)(v414, v205, v64);
    swift_storeEnumTagMultiPayload();
    v207 = v432;
    if (v204)
    {
      sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v433) = 0;
      v251 = swift_allocObject();
      v427 = xmmword_1D72BAA90;
      *(v251 + 16) = xmmword_1D72BAA90;
      *(v251 + 32) = v433;
      v252 = v416;
      *(v251 + 40) = v422;
      *(v251 + 48) = v252;
      sub_1D5E1B75C(0);
      v254 = v253;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

      v255 = v431;
      v423 = v254;
      v256 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v257 = swift_allocObject();
      *(v257 + 16) = v256;
      *(v257 + 24) = v427;
      *(v257 + 40) = v433;
      v258 = (v255 + *(v430 + 36));
      v259 = v258[3];
      v260 = v258[4];
      v261 = __swift_project_boxed_opaque_existential_1(v258, v259);
      MEMORY[0x1EEE9AC00](v261, v262);
      MEMORY[0x1EEE9AC00](v263, v264);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v251;
      v266 = sub_1D5D2F7A4(v206, sub_1D615B49C, v265, sub_1D615B4A4, (&v407 - 6), v259, v260);
      if (v207)
      {
        sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);

        v94 = v255;
        return sub_1D5D2CFE8(v94, sub_1D6690F4C);
      }

      v269 = v266;

      if (v269)
      {
        v433 = v427;
        LOBYTE(v434) = 0;
        LOBYTE(v443) = 0;
        sub_1D72647EC();
        v207 = 0;
        v200 = v417;
        sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
        v207 = 0;
        v200 = v417;
      }
    }

    *&v432 = v207;
    v208 = v419;
    v209 = v419[10];
    v210 = v424;
    (v424)(v200, v428, v421);
    swift_storeEnumTagMultiPayload();
    v427 = xmmword_1D72BAAA0;
    v433 = xmmword_1D72BAAA0;
    LOBYTE(v434) = 0;
    LOBYTE(v443) = 0;
    v211 = swift_allocObject();
    v213 = v211;
    *(v211 + 16) = v427;
    *(v211 + 32) = v443;
    v214 = v422;
    v215 = v416;
    *(v211 + 40) = v422;
    *(v211 + 48) = v215;
    v96 = v431;
    if (v209)
    {
      v423 = &v407;
      v443 = v209;
      MEMORY[0x1EEE9AC00](v211, v212);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v213;
      LOBYTE(v441) = 0;
      v216 = swift_allocObject();
      *(v216 + 16) = v427;
      *(v216 + 32) = v441;
      *(v216 + 40) = v214;
      *(v216 + 48) = v215;
      sub_1D5E1B75C(0);
      v218 = v217;
      v219 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v420 = v218;
      v418 = v219;
      v220 = sub_1D72647CC();
      LOBYTE(v441) = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = v220;
      *(v221 + 24) = v427;
      *(v221 + 40) = v441;
      v222 = (v96 + *(v430 + 36));
      v223 = v222[3];
      v224 = v222[4];
      v225 = __swift_project_boxed_opaque_existential_1(v222, v223);
      MEMORY[0x1EEE9AC00](v225, v226);
      MEMORY[0x1EEE9AC00](v227, v228);
      *(&v407 - 4) = sub_1D615B4A4;
      *(&v407 - 3) = (&v407 - 6);
      v405 = sub_1D6708A60;
      v406 = v216;
      v229 = v417;
      v230 = v432;
      v232 = sub_1D5D2F7A4(v417, sub_1D615B49C, v231, sub_1D615B4A4, (&v407 - 6), v223, v224);
      *&v432 = v230;
      if (v230)
      {

        v96 = v431;
LABEL_61:
        v124 = v229;
        goto LABEL_15;
      }

      v270 = v232;

      if (v270)
      {
        type metadata accessor for FormatGroupNodeStyle();
        sub_1D5B58B84(&qword_1EDF0F108, type metadata accessor for FormatGroupNodeStyle, &protocol conformance descriptor for FormatGroupNodeStyle);
        v96 = v431;
        v271 = v432;
        sub_1D72647EC();
        v272 = v425;
        if (v271)
        {

          v229 = v417;
          goto LABEL_61;
        }

        *&v432 = 0;

        v208 = v419;
        v210 = v424;
        v215 = v416;
        goto LABEL_78;
      }

      v96 = v431;
      v208 = v419;
      v210 = v424;
      v215 = v416;
    }

    else
    {
    }

    v272 = v425;
LABEL_78:

    sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v273 = v208[11];
    v170 = v413;
    v210(v413, v272, v421);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v433) = 0;
    v274 = swift_allocObject();
    v427 = xmmword_1D72BAAB0;
    *(v274 + 16) = xmmword_1D72BAAB0;
    *(v274 + 32) = v433;
    *(v274 + 40) = v422;
    *(v274 + 48) = v215;
    sub_1D5E1B75C(0);
    v276 = v275;
    v277 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C, MEMORY[0x1E69E6F60]);

    v423 = v273;

    v420 = v276;
    v278 = sub_1D72647CC();
    LOBYTE(v433) = 0;
    v279 = swift_allocObject();
    *(v279 + 16) = v278;
    *(v279 + 24) = v427;
    *(v279 + 40) = v433;
    v280 = (v96 + *(v430 + 36));
    v281 = v280[3];
    v282 = v280[4];
    v283 = __swift_project_boxed_opaque_existential_1(v280, v281);
    *&v430 = &v407;
    MEMORY[0x1EEE9AC00](v283, v284);
    MEMORY[0x1EEE9AC00](v285, v286);
    *(&v407 - 4) = sub_1D5B4AA6C;
    *(&v407 - 3) = 0;
    v405 = sub_1D6708A60;
    v406 = v274;
    v287 = v432;
    v289 = sub_1D5D2F7A4(v170, sub_1D615B49C, v288, sub_1D615B4A4, (&v407 - 6), v281, v282);
    if (v287)
    {
      goto LABEL_34;
    }

    v290 = v423;
    v417 = v280;
    v418 = v277;
    v291 = v289;

    if (v291)
    {
      v433 = v427;
      LOBYTE(v434) = 0;
      v441 = v290;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();
      v292 = v421;
      v294 = v412;
      v293 = v413;

      sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v413, type metadata accessor for FormatVersionRequirement);

      v292 = v421;
      v294 = v412;
    }

    v295 = v419[12];
    v296 = *(v419 + 104);
    (v424)(v294, v425, v292);
    swift_storeEnumTagMultiPayload();
    v432 = xmmword_1D72BAAC0;
    v433 = xmmword_1D72BAAC0;
    LOBYTE(v434) = 0;
    LOBYTE(v441) = 0;
    v297 = swift_allocObject();
    v299 = v297;
    *(v297 + 16) = v432;
    *(v297 + 32) = v441;
    v300 = v422;
    v301 = v416;
    *(v297 + 40) = v422;
    *(v297 + 48) = v301;
    if (v296 <= 0xFD)
    {
      *&v430 = &v407;
      v441 = v295;
      v442 = v296;
      MEMORY[0x1EEE9AC00](v297, v298);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v299;
      LOBYTE(v440) = 0;
      v303 = swift_allocObject();
      *(v303 + 16) = v432;
      *(v303 + 32) = v440;
      *(v303 + 40) = v300;
      *(v303 + 48) = v301;
      swift_retain_n();
      v304 = sub_1D72647CC();
      LOBYTE(v440) = 0;
      v305 = swift_allocObject();
      *(v305 + 16) = v304;
      *(v305 + 24) = v432;
      *(v305 + 40) = v440;
      v306 = v417[3];
      v307 = v417[4];
      v308 = __swift_project_boxed_opaque_existential_1(v417, v306);
      MEMORY[0x1EEE9AC00](v308, v309);
      MEMORY[0x1EEE9AC00](v310, v311);
      *(&v407 - 4) = sub_1D615B4A4;
      *(&v407 - 3) = (&v407 - 6);
      v294 = v412;
      v405 = sub_1D6708A60;
      v406 = v303;
      LOBYTE(v306) = sub_1D5D2F7A4(v412, sub_1D615B49C, v312, sub_1D615B4A4, (&v407 - 6), v306, v307);

      if (v306)
      {
        sub_1D5F8F434();
        sub_1D72647EC();
      }

      v292 = v421;
      v302 = v425;
    }

    else
    {

      v302 = v425;
    }

    sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);

    v313 = v419;
    swift_beginAccess();
    v314 = v313[14];
    v315 = v411;
    (v424)(v411, v302, v292);
    swift_storeEnumTagMultiPayload();
    if (*(v314 + 16))
    {
      LOBYTE(v433) = 0;
      v316 = swift_allocObject();
      v432 = xmmword_1D72BAAD0;
      *(v316 + 16) = xmmword_1D72BAAD0;
      *(v316 + 32) = v433;
      *(v316 + 40) = v422;
      *(v316 + 48) = v416;

      v317 = sub_1D72647CC();
      LOBYTE(v433) = 0;
      v318 = swift_allocObject();
      *(v318 + 16) = v317;
      *(v318 + 24) = v432;
      *(v318 + 40) = v433;
      v319 = v417[3];
      v320 = v417[4];
      v321 = __swift_project_boxed_opaque_existential_1(v417, v319);
      MEMORY[0x1EEE9AC00](v321, v322);
      MEMORY[0x1EEE9AC00](v323, v324);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v316;
      LOBYTE(v319) = sub_1D5D2F7A4(v315, sub_1D615B49C, v325, sub_1D615B4A4, (&v407 - 6), v319, v320);

      if (v319)
      {
        sub_1D5E08CAC(v314, v431, 0xA, 0, 0);
      }

      v292 = v421;
    }

    v326 = v419;
    *&v432 = 0;
    sub_1D5D2CFE8(v315, type metadata accessor for FormatVersionRequirement);
    v327 = v326[15];
    v328 = v410;
    v329 = v424;
    (v424)(v410, v428, v292);
    swift_storeEnumTagMultiPayload();
    v430 = xmmword_1D72BAAE0;
    v433 = xmmword_1D72BAAE0;
    LOBYTE(v434) = 0;
    LOBYTE(v440) = 0;
    v330 = swift_allocObject();
    v332 = v330;
    *(v330 + 16) = v430;
    *(v330 + 32) = v440;
    v333 = v422;
    v334 = v416;
    *(v330 + 40) = v422;
    *(v330 + 48) = v334;
    if (v327)
    {
      *&v427 = &v407;
      v440 = v327;
      MEMORY[0x1EEE9AC00](v330, v331);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v332;
      LOBYTE(v438) = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = v430;
      *(v335 + 32) = v438;
      *(v335 + 40) = v333;
      *(v335 + 48) = v334;
      swift_retain_n();

      v336 = sub_1D72647CC();
      LOBYTE(v438) = 0;
      v337 = v328;
      v338 = swift_allocObject();
      *(v338 + 16) = v336;
      *(v338 + 24) = v430;
      *(v338 + 40) = v438;
      v339 = v417[3];
      v340 = v417[4];
      v341 = __swift_project_boxed_opaque_existential_1(v417, v339);
      MEMORY[0x1EEE9AC00](v341, v342);
      MEMORY[0x1EEE9AC00](v343, v344);
      *(&v407 - 4) = sub_1D615B4A4;
      *(&v407 - 3) = (&v407 - 6);
      v405 = sub_1D6708A60;
      v406 = v335;
      v345 = v432;
      v347 = sub_1D5D2F7A4(v337, sub_1D615B49C, v346, sub_1D615B4A4, (&v407 - 6), v339, v340);
      *&v432 = v345;
      if (v345)
      {

        v96 = v431;
LABEL_95:
        v124 = v410;
        goto LABEL_15;
      }

      v348 = v347;

      if (v348)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        v96 = v431;
        v349 = v432;
        sub_1D72647EC();
        if (v349)
        {

          goto LABEL_95;
        }

        *&v432 = 0;
      }

      v326 = v419;
      v292 = v421;
      v329 = v424;
      v328 = v410;
      v334 = v416;
    }

    else
    {
    }

    sub_1D5D2CFE8(v328, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v350 = v326[16];
    v351 = v409;
    v329(v409, v428, v292);
    swift_storeEnumTagMultiPayload();
    v430 = xmmword_1D72BAAF0;
    v433 = xmmword_1D72BAAF0;
    LOBYTE(v434) = 0;
    LOBYTE(v438) = 0;
    v352 = swift_allocObject();
    v354 = v352;
    *(v352 + 16) = v430;
    *(v352 + 32) = v438;
    v355 = v422;
    *(v352 + 40) = v422;
    *(v352 + 48) = v334;
    if (v350)
    {
      *&v428 = &v407;
      *&v438 = v350;
      MEMORY[0x1EEE9AC00](v352, v353);
      *(&v407 - 4) = sub_1D5B4AA6C;
      *(&v407 - 3) = 0;
      v405 = sub_1D6708A60;
      v406 = v354;
      v450 = 0;
      v356 = swift_allocObject();
      *(v356 + 16) = v430;
      *(v356 + 32) = v450;
      *(v356 + 40) = v355;
      *(v356 + 48) = v334;
      swift_retain_n();
      swift_retain_n();
      v357 = sub_1D72647CC();
      v450 = 0;
      v358 = v351;
      v359 = swift_allocObject();
      *(v359 + 16) = v357;
      *(v359 + 24) = v430;
      *(v359 + 40) = v450;
      v360 = v417[3];
      v361 = v417[4];
      v362 = __swift_project_boxed_opaque_existential_1(v417, v360);
      MEMORY[0x1EEE9AC00](v362, v363);
      MEMORY[0x1EEE9AC00](v364, v365);
      *(&v407 - 4) = sub_1D615B4A4;
      *(&v407 - 3) = (&v407 - 6);
      v405 = sub_1D6708A60;
      v406 = v356;
      v366 = v432;
      v368 = sub_1D5D2F7A4(v358, sub_1D615B49C, v367, sub_1D615B4A4, (&v407 - 6), v360, v361);
      *&v432 = v366;
      if (v366)
      {

LABEL_105:
        v369 = v409;
LABEL_106:
        sub_1D5D2CFE8(v369, type metadata accessor for FormatVersionRequirement);
LABEL_119:
        v94 = v431;
        return sub_1D5D2CFE8(v94, sub_1D6690F4C);
      }

      v370 = v368;

      if (v370)
      {
        type metadata accessor for FormatGroupNodeMask();
        sub_1D5B58B84(&qword_1EDF0FC20, type metadata accessor for FormatGroupNodeMask, &protocol conformance descriptor for FormatGroupNodeMask);
        v371 = v432;
        sub_1D72647EC();
        *&v432 = v371;
        if (v371)
        {

          goto LABEL_105;
        }
      }

      v326 = v419;
      v351 = v409;
    }

    else
    {
    }

    sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
    v372 = v326[17];
    *&v428 = v326[18];
    v374 = v326[19];
    v373 = v326[20];
    v376 = v326[21];
    v375 = v326[22];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v377 = v421;
    v378 = __swift_project_value_buffer(v421, qword_1EDFFCE38);
    (v424)(v408, v378, v377);
    swift_storeEnumTagMultiPayload();
    v430 = xmmword_1D7282A80;
    v438 = xmmword_1D7282A80;
    v439 = 0;
    LOBYTE(v433) = 0;
    v379 = swift_allocObject();
    v381 = v379;
    *(v379 + 16) = v430;
    *(v379 + 32) = v433;
    v382 = v422;
    v383 = v416;
    *(v379 + 40) = v422;
    *(v379 + 48) = v383;
    if (!v372)
    {

      sub_1D5D2CFE8(v408, type metadata accessor for FormatVersionRequirement);

      goto LABEL_119;
    }

    v429 = &v407;
    *&v433 = v372;
    v384 = v428;
    *(&v433 + 1) = v428;
    v434 = v374;
    v435 = v373;
    v436 = v376;
    v425 = v375;
    v437 = v375;
    MEMORY[0x1EEE9AC00](v379, v380);
    *&v427 = &v407 - 6;
    *(&v407 - 4) = sub_1D5B4AA6C;
    *(&v407 - 3) = 0;
    v405 = sub_1D6708A60;
    v406 = v381;
    v450 = 0;
    v386 = v385;
    v387 = v384;
    v388 = swift_allocObject();
    *(v388 + 16) = v430;
    *(v388 + 32) = v450;
    *(v388 + 40) = v382;
    *(v388 + 48) = v383;
    swift_retain_n();
    sub_1D5EB1D80(v386, v387, v374, v373, v376, v425);
    v389 = sub_1D72647CC();
    v450 = 0;
    v390 = swift_allocObject();
    *(v390 + 16) = v389;
    *(v390 + 24) = v430;
    *(v390 + 40) = v450;
    v391 = v417[3];
    v392 = v417[4];
    v393 = __swift_project_boxed_opaque_existential_1(v417, v391);
    MEMORY[0x1EEE9AC00](v393, v394);
    MEMORY[0x1EEE9AC00](v395, v396);
    v397 = v427;
    *(&v407 - 4) = sub_1D615B4A4;
    *(&v407 - 3) = v397;
    v405 = sub_1D6708A60;
    v406 = v388;
    v398 = v432;
    v400 = sub_1D5D2F7A4(v408, sub_1D615B49C, v399, sub_1D615B4A4, (&v407 - 6), v391, v392);
    if (v398)
    {
    }

    else
    {
      v402 = v400;
      *&v432 = 0;

      if ((v402 & 1) == 0 || (sub_1D6659A24(), v403 = v432, sub_1D72647EC(), (*&v432 = v403) == 0))
      {

        v404 = v436;

        sub_1D5CBF568(v404);

        v369 = v408;
        goto LABEL_106;
      }
    }

    v401 = v436;

    sub_1D5CBF568(v401);

    v146 = v408;
LABEL_19:
    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
LABEL_35:
    v94 = v431;
    return sub_1D5D2CFE8(v94, sub_1D6690F4C);
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v94 = v74;
  return sub_1D5D2CFE8(v94, sub_1D6690F4C);
}

uint64_t sub_1D64C7724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6691070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64C775C(uint64_t a1)
{
  v2 = sub_1D5CC8C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64C7798(uint64_t a1)
{
  v2 = sub_1D5CC8C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupNodeMask.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v123 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v127 = v121 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v131 = v121 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v121 - v16;
  sub_1D6691B50(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D6691C78(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF254E8, sub_1D6691C78, &unk_1D7321584);
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.StarSky, v24, v22, v27, &off_1F51F6CD8);
  v136 = v2;
  v29 = v2[2];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
  v32 = *(v30 - 8);
  v134 = *(v32 + 16);
  v135 = v31;
  v133 = v32 + 16;
  v134(v17);
  v132 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v143 = 0uLL;
  v144 = 0;
  v33 = &v22[*(v19 + 44)];
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v141) = 0;
  v36 = swift_allocObject();
  v38 = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v141;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  v138 = v22;
  v126 = v35;
  v129 = v30;
  v128 = v34;
  if (!v29)
  {

    goto LABEL_8;
  }

  v125 = v121;
  *&v141 = v29;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v130 = &v121[-6];
  v121[-4] = sub_1D5B4AA6C;
  v121[-3] = 0;
  v119 = sub_1D6708A64;
  v120 = v38;
  LOBYTE(v139) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v139;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D6691BE4(0);
  v41 = v40;
  sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4, MEMORY[0x1E69E6F60]);
  swift_retain_n();

  v121[1] = v41;
  v42 = sub_1D72647CC();
  LOBYTE(v139) = 0;
  v43 = swift_allocObject();
  v124 = v29;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v139;
  v44 = &v22[*(v19 + 36)];
  v45 = *(v44 + 3);
  v46 = *(v44 + 4);
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = v130;
  v121[-4] = sub_1D615B4A4;
  v121[-3] = v51;
  v119 = sub_1D6708A64;
  v120 = v39;
  *&v130 = v17;
  v52 = v137;
  sub_1D5D2F7A4(v17, sub_1D615B49C, v53, sub_1D615B4A4, &v121[-6], v45, v46);
  if (!v52)
  {

    type metadata accessor for FormatGroupNodeMaskStyle();
    sub_1D5B58B84(&qword_1EDF0CF48, type metadata accessor for FormatGroupNodeMaskStyle, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
    sub_1D72647EC();
    *&v137 = 0;

    v35 = v126;
    v30 = v129;
    v34 = v128;
    v17 = v130;
LABEL_8:
    v122 = v19;

    sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
    v56 = v136[3];
    v57 = v131;
    (v134)(v131, v135, v30);
    swift_storeEnumTagMultiPayload();
    v130 = xmmword_1D728CF30;
    v143 = xmmword_1D728CF30;
    v144 = 0;
    LOBYTE(v141) = 0;
    v58 = swift_allocObject();
    v60 = v58;
    *(v58 + 16) = v130;
    *(v58 + 32) = v141;
    *(v58 + 40) = v34;
    *(v58 + 48) = v35;
    if (v56)
    {
      v125 = v121;
      *&v141 = v56;
      MEMORY[0x1EEE9AC00](v58, v59);
      v121[-4] = sub_1D5B4AA6C;
      v121[-3] = 0;
      v119 = sub_1D6708A64;
      v120 = v60;
      LOBYTE(v139) = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v130;
      *(v61 + 32) = v139;
      *(v61 + 40) = v34;
      *(v61 + 48) = v35;
      sub_1D6691BE4(0);
      v63 = v62;
      sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v64 = v138;
      v124 = v63;
      v65 = sub_1D72647CC();
      LOBYTE(v139) = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      *(v66 + 24) = v130;
      *(v66 + 40) = v139;
      v67 = (v64 + *(v122 + 36));
      v68 = v67[3];
      v69 = v67[4];
      v70 = __swift_project_boxed_opaque_existential_1(v67, v68);
      MEMORY[0x1EEE9AC00](v70, v71);
      MEMORY[0x1EEE9AC00](v72, v73);
      v121[-4] = sub_1D615B4A4;
      v121[-3] = &v121[-6];
      v119 = sub_1D6708A64;
      v120 = v61;
      v74 = v137;
      v76 = sub_1D5D2F7A4(v57, sub_1D615B49C, v75, sub_1D615B4A4, &v121[-6], v68, v69);
      if (v74)
      {

        v77 = v138;
        v78 = v131;
LABEL_26:
        sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
LABEL_27:
        v55 = v77;
        return sub_1D5D2CFE8(v55, sub_1D6691B50);
      }

      v79 = v76;

      if (v79)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        v77 = v138;
        sub_1D72647EC();
        *&v137 = 0;
      }

      else
      {
        *&v137 = 0;

        v77 = v138;
      }

      v35 = v126;
      v30 = v129;
      v34 = v128;
      v57 = v131;
    }

    else
    {

      v77 = v138;
    }

    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    v80 = v136;
    swift_beginAccess();
    v81 = v80[4];
    v82 = v127;
    (v134)(v127, v135, v30);
    swift_storeEnumTagMultiPayload();
    if (((v81 >> 59) & 0x1E | (v81 >> 2) & 1) == 0x16 && v81 == 0xB000000000000000)
    {
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
      v83 = v137;
      v84 = v123;
    }

    else
    {
      LOBYTE(v141) = 0;
      v101 = swift_allocObject();
      v131 = xmmword_1D7297410;
      *(v101 + 16) = xmmword_1D7297410;
      *(v101 + 32) = v141;
      *(v101 + 40) = v34;
      *(v101 + 48) = v35;

      sub_1D5C82CD8(v81);
      sub_1D6691BE4(0);
      sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4, MEMORY[0x1E69E6F60]);
      v102 = sub_1D72647CC();
      LOBYTE(v141) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v131;
      *(v103 + 40) = v141;
      v104 = (v77 + *(v122 + 36));
      v105 = v104[3];
      v106 = v104[4];
      v107 = __swift_project_boxed_opaque_existential_1(v104, v105);
      MEMORY[0x1EEE9AC00](v107, v108);
      MEMORY[0x1EEE9AC00](v109, v110);
      v121[-4] = sub_1D5B4AA6C;
      v121[-3] = 0;
      v119 = sub_1D6691DF8;
      v120 = v101;
      v111 = v137;
      v113 = sub_1D5D2F7A4(v82, sub_1D615B49C, v112, sub_1D615B4A4, &v121[-6], v105, v106);
      if (v111)
      {

        sub_1D5C92A8C(v81);
        sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v138, sub_1D6691B50);
      }

      v115 = v138;
      v116 = v113;

      if (v116)
      {
        v141 = v131;
        v142 = 0;
        *&v139 = v81;
        sub_1D5CA1E90();
        sub_1D72647EC();
        v83 = 0;
        sub_1D5C92A8C(v139);
        sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5C92A8C(v81);
        sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
        v83 = 0;
      }

      v84 = v123;
      v35 = v126;
      v77 = v115;
    }

    v85 = v136;
    swift_beginAccess();
    v86 = v85[5];
    (v134)(v84, v135, v129);
    swift_storeEnumTagMultiPayload();
    if (!*(v86 + 16))
    {
      v78 = v84;
      goto LABEL_26;
    }

    LOBYTE(v139) = 0;
    v87 = swift_allocObject();
    v137 = xmmword_1D72BAA60;
    *(v87 + 16) = xmmword_1D72BAA60;
    *(v87 + 32) = v139;
    *(v87 + 40) = v128;
    *(v87 + 48) = v35;
    sub_1D6691BE4(0);
    v89 = v88;
    sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4, MEMORY[0x1E69E6F60]);

    v136 = v89;
    v90 = sub_1D72647CC();
    LOBYTE(v139) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v137;
    *(v91 + 40) = v139;
    v92 = (v77 + *(v122 + 36));
    v93 = v92[3];
    v94 = v92[4];
    v95 = __swift_project_boxed_opaque_existential_1(v92, v93);
    MEMORY[0x1EEE9AC00](v95, v96);
    MEMORY[0x1EEE9AC00](v97, v98);
    v121[-4] = sub_1D5B4AA6C;
    v121[-3] = 0;
    v119 = sub_1D6708A64;
    v120 = v87;
    v100 = sub_1D5D2F7A4(v84, sub_1D615B49C, v99, sub_1D615B4A4, &v121[-6], v93, v94);
    if (!v83)
    {
      v117 = v100;
      v118 = v138;

      if (v117)
      {
        v139 = v137;
        v140 = 0;
        v145 = v86;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();

        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        v55 = v118;
        return sub_1D5D2CFE8(v55, sub_1D6691B50);
      }

      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);

      v77 = v118;
      goto LABEL_27;
    }

    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v138, sub_1D6691B50);
  }

  v54 = v138;
  sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
  v55 = v54;
  return sub_1D5D2CFE8(v55, sub_1D6691B50);
}

uint64_t sub_1D64C8A48()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 1702521203;
  v4 = 0x656D7473756A6461;
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
    v2 = 0x6F6974616D696E61;
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

uint64_t sub_1D64C8ADC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6691E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64C8B14(uint64_t a1)
{
  v2 = sub_1D6691D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64C8B50(uint64_t a1)
{
  v2 = sub_1D6691D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64C8B98()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64C8C60(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64C8D14(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64C8DD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66642A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64C8E08(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073756964;
  v3 = 0x615272656E726F63;
  v4 = 0xE400000000000000;
  v5 = 1818326639;
  if (*v1 != 2)
  {
    v5 = 0x746E656964617267;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61507265697A6562;
    v2 = 0xEA00000000006874;
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

uint64_t FormatGroupNodeMaskStyle.encode(to:)(void *a1)
{
  v3 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v205 = &v184 - v6;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v189 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v190 = &v184 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v191 = &v184 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v192 = &v184 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  *&v204 = &v184 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v184 - v24;
  sub_1D66927C0(0);
  v202 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D66928E8(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF25128, sub_1D66928E8, &unk_1D7321584);
  v203 = v29;
  sub_1D5D2EE70(v3, v33, v35, v30, v3, v33, &type metadata for FormatVersions.StarSky, v31, v29, v34, &off_1F51F6CD8);
  swift_beginAccess();
  v201 = v1;
  v36 = v1[2];
  v37 = v201[3];
  v38 = qword_1EDF31ED0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v43 = v41 + 16;
  v42(v25, v40, v39);
  v200 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v205;
  v196 = v36;
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
  v193 = v39;
  v198 = v42;
  v199 = v40;
  v197 = v43;
  if (v46 != 1)
  {
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v205, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v69 = v203;
    v70 = v201;
    goto LABEL_13;
  }

  v195 = v37;
  sub_1D5D35558(v205, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v47 = v202;
  v48 = v203;
  v49 = &v203[*(v202 + 11)];
  v50 = v25;
  v52 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v221) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v221;
  *(v53 + 40) = v52;
  *(v53 + 48) = v51;
  sub_1D6692854(0);
  v55 = v54;
  sub_1D5B58B84(&qword_1EDF030B8, sub_1D6692854, MEMORY[0x1E69E6F60]);

  *&v205 = v55;
  v56 = sub_1D72647CC();
  LOBYTE(v221) = 0;
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 16) = v56;
  *(v57 + 40) = v221;
  v58 = (v48 + *(v47 + 9));
  v59 = v58[3];
  v60 = v58[4];
  v61 = __swift_project_boxed_opaque_existential_1(v58, v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v184 - 4) = sub_1D5B4AA6C;
  *(&v184 - 3) = 0;
  v182 = sub_1D6692A68;
  v183 = v53;
  v65 = v206;
  v67 = sub_1D5D2F7A4(v50, sub_1D615B49C, v66, sub_1D615B4A4, (&v184 - 6), v59, v60);
  *&v206 = v65;
  if (v65)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v48, sub_1D66927C0);
  }

  v71 = v67;

  if ((v71 & 1) == 0)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v69 = v203;
    v70 = v201;
LABEL_12:
    v39 = v193;
    v42 = v198;
    v40 = v199;
LABEL_13:
    v75 = v70[4];
    v74 = v70[5];
    v42(v204, v40, v39);
    swift_storeEnumTagMultiPayload();
    *&v213 = v75;
    *(&v213 + 1) = v74;
    v205 = xmmword_1D728CF30;
    v221 = xmmword_1D728CF30;
    LOBYTE(v222) = 0;
    v76 = v202;
    v77 = (v69 + *(v202 + 11));
    v79 = *v77;
    v78 = v77[1];
    LOBYTE(v207) = 0;
    v80 = swift_allocObject();
    v196 = &v184;
    *(v80 + 16) = v205;
    *(v80 + 32) = v207;
    *(v80 + 40) = v79;
    *(v80 + 48) = v78;
    MEMORY[0x1EEE9AC00](v80, v81);
    v194 = &v184 - 6;
    v195 = v82;
    *(&v184 - 4) = sub_1D5B4AA6C;
    *(&v184 - 3) = 0;
    v182 = sub_1D6708A68;
    v183 = v82;
    LOBYTE(v207) = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v205;
    *(v83 + 32) = v207;
    v186 = v79;
    *(v83 + 40) = v79;
    *(v83 + 48) = v78;
    sub_1D6692854(0);
    v85 = v84;
    v86 = sub_1D5B58B84(&qword_1EDF030B8, sub_1D6692854, MEMORY[0x1E69E6F60]);
    v185 = v78;
    swift_retain_n();
    v187 = v86;
    v188 = v85;
    v87 = sub_1D72647CC();
    LOBYTE(v207) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v205;
    *(v88 + 40) = v207;
    v89 = (v69 + *(v76 + 9));
    v91 = v89[3];
    v90 = v89[4];
    v92 = __swift_project_boxed_opaque_existential_1(v89, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    v96 = v194;
    *(&v184 - 4) = sub_1D615B4A4;
    *(&v184 - 3) = v96;
    v182 = sub_1D6708A68;
    v183 = v83;
    v97 = v204;
    v98 = v206;
    sub_1D5D2BC70(v204, sub_1D615B49C, v99, sub_1D615B4A4, (&v184 - 6), v91, v90);
    if (v98)
    {
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

      v100 = v69;
LABEL_16:
      v73 = v100;
      return sub_1D5D2CFE8(v73, sub_1D66927C0);
    }

    *&v205 = v89;

    sub_1D72647EC();
    v100 = v69;
    sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);

    v101 = v201;
    swift_beginAccess();
    v102 = v101[6];
    v104 = v192;
    v103 = v193;
    v198(v192, v199, v193);
    swift_storeEnumTagMultiPayload();
    if (*(v102 + 16))
    {
      LOBYTE(v221) = 0;
      v105 = swift_allocObject();
      v206 = xmmword_1D7297410;
      *(v105 + 16) = xmmword_1D7297410;
      *(v105 + 32) = v221;
      *(v105 + 40) = v186;
      *(v105 + 48) = v185;

      v106 = sub_1D72647CC();
      LOBYTE(v221) = 0;
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      *(v107 + 24) = v206;
      *(v107 + 40) = v221;
      v108 = *(v205 + 24);
      v109 = *(v205 + 32);
      v110 = __swift_project_boxed_opaque_existential_1(v205, v108);
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v184 - 4) = sub_1D5B4AA6C;
      *(&v184 - 3) = 0;
      v182 = sub_1D6708A68;
      v183 = v105;
      v115 = sub_1D5D2F7A4(v104, sub_1D615B49C, v114, sub_1D615B4A4, (&v184 - 6), v108, v109);
      v116 = v115;

      if (v116)
      {
        v221 = v206;
        LOBYTE(v222) = 0;
        *&v213 = v102;
        sub_1D5C34D84(0, &qword_1EDF04D20, &type metadata for FormatGroupNodeMaskStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D6692AE4();
        v100 = v203;
        sub_1D72647EC();
        v101 = v201;
        v117 = v192;
        v103 = v193;

        sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

        v100 = v203;
        v101 = v201;
        v103 = v193;
      }
    }

    else
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    }

    v118 = *(v101 + 9);
    v119 = *(v101 + 13);
    v231 = *(v101 + 11);
    v232 = v119;
    v233 = *(v101 + 120);
    v229 = *(v101 + 7);
    v230 = v118;
    v120 = v191;
    v198(v191, v199, v103);
    swift_storeEnumTagMultiPayload();
    v206 = xmmword_1D72BAA60;
    v207 = xmmword_1D72BAA60;
    LOBYTE(v208) = 0;
    LOBYTE(v221) = 0;
    v121 = swift_allocObject();
    v123 = v121;
    *(v121 + 16) = v206;
    *(v121 + 32) = v221;
    v124 = v185;
    v125 = v186;
    *(v121 + 40) = v186;
    *(v121 + 48) = v124;
    if (v233 == 255)
    {
      *&v206 = 0;

      sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v204 = &v184;
      v223 = v231;
      v224 = v232;
      LOBYTE(v225) = v233;
      v221 = v229;
      v222 = v230;
      MEMORY[0x1EEE9AC00](v121, v122);
      v202 = &v184 - 6;
      *(&v184 - 4) = sub_1D5B4AA6C;
      *(&v184 - 3) = 0;
      v182 = sub_1D6708A68;
      v183 = v123;
      LOBYTE(v213) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v206;
      *(v126 + 32) = v213;
      *(v126 + 40) = v125;
      *(v126 + 48) = v124;
      swift_retain_n();
      sub_1D5D355B8(&v229, &v213, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v127 = sub_1D72647CC();
      LOBYTE(v213) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = v206;
      *(v128 + 40) = v213;
      v129 = *(v205 + 24);
      v130 = *(v205 + 32);
      v131 = __swift_project_boxed_opaque_existential_1(v205, v129);
      MEMORY[0x1EEE9AC00](v131, v132);
      MEMORY[0x1EEE9AC00](v133, v134);
      v135 = v202;
      *(&v184 - 4) = sub_1D615B4A4;
      *(&v184 - 3) = v135;
      v136 = v191;
      v182 = sub_1D6708A68;
      v183 = v126;
      v138 = sub_1D5D2F7A4(v191, sub_1D615B49C, v137, sub_1D615B4A4, (&v184 - 6), v129, v130);
      v139 = v138;

      if (v139)
      {
        sub_1D61984E8();
        v100 = v203;
        sub_1D72647EC();
        v103 = v193;
        *&v206 = 0;

        v215 = v223;
        v216 = v224;
        LOBYTE(v217) = v225;
        v213 = v221;
        v214 = v222;
        sub_1D61992B0(&v213);
        sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v206 = 0;

        v215 = v223;
        v216 = v224;
        LOBYTE(v217) = v225;
        v213 = v221;
        v214 = v222;
        sub_1D61992B0(&v213);
        sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
        v100 = v203;
        v103 = v193;
      }

      v124 = v185;
    }

    v140 = v101[16];
    v141 = v190;
    v198(v190, v199, v103);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D72BAA70;
    v227 = xmmword_1D72BAA70;
    v228 = 0;
    LOBYTE(v221) = 0;
    v142 = swift_allocObject();
    v144 = v142;
    *(v142 + 16) = v204;
    *(v142 + 32) = v221;
    v145 = v186;
    *(v142 + 40) = v186;
    *(v142 + 48) = v124;
    if (v140)
    {
      v202 = &v184;
      v234 = v140;
      MEMORY[0x1EEE9AC00](v142, v143);
      v196 = &v184 - 6;
      *(&v184 - 4) = sub_1D5B4AA6C;
      *(&v184 - 3) = 0;
      v182 = sub_1D6708A68;
      v183 = v144;
      LOBYTE(v221) = 0;
      v146 = swift_allocObject();
      *(v146 + 16) = v204;
      *(v146 + 32) = v221;
      *(v146 + 40) = v145;
      *(v146 + 48) = v124;
      swift_retain_n();

      v147 = sub_1D72647CC();
      LOBYTE(v221) = 0;
      v148 = swift_allocObject();
      *(v148 + 16) = v147;
      *(v148 + 24) = v204;
      *(v148 + 40) = v221;
      v149 = *(v205 + 24);
      v150 = *(v205 + 32);
      v151 = __swift_project_boxed_opaque_existential_1(v205, v149);
      MEMORY[0x1EEE9AC00](v151, v152);
      MEMORY[0x1EEE9AC00](v153, v154);
      v155 = v196;
      *(&v184 - 4) = sub_1D615B4A4;
      *(&v184 - 3) = v155;
      v182 = sub_1D6708A68;
      v183 = v146;
      v156 = v206;
      v158 = sub_1D5D2F7A4(v190, sub_1D615B49C, v157, sub_1D615B4A4, (&v184 - 6), v149, v150);
      v159 = v156;
      if (v156)
      {

        v100 = v203;
        v160 = v190;
LABEL_43:
        sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
        goto LABEL_16;
      }

      v161 = v158;

      if (v161)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v100 = v203;
        sub_1D72647EC();
        v103 = v193;
        v124 = v185;

        sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
        v100 = v203;
        v103 = v193;
        v124 = v185;
      }
    }

    else
    {

      sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);

      v159 = v206;
    }

    v162 = *(v101 + 23);
    v223 = *(v101 + 21);
    v224 = v162;
    v225 = *(v101 + 25);
    v226 = *(v101 + 216);
    v163 = *(v101 + 19);
    v221 = *(v101 + 17);
    v222 = v163;
    v164 = v189;
    v198(v189, v199, v103);
    swift_storeEnumTagMultiPayload();
    v206 = xmmword_1D72BAA80;
    v219 = xmmword_1D72BAA80;
    v220 = 0;
    LOBYTE(v213) = 0;
    v165 = swift_allocObject();
    v167 = v165;
    *(v165 + 16) = v206;
    *(v165 + 32) = v213;
    v168 = v186;
    *(v165 + 40) = v186;
    *(v165 + 48) = v124;
    if (v226 == 254)
    {
    }

    else
    {
      *&v204 = &v184;
      v215 = v223;
      v216 = v224;
      v217 = v225;
      v218 = v226;
      v213 = v221;
      v214 = v222;
      MEMORY[0x1EEE9AC00](v165, v166);
      v202 = &v184 - 6;
      *(&v184 - 4) = sub_1D5B4AA6C;
      *(&v184 - 3) = 0;
      v182 = sub_1D6708A68;
      v183 = v167;
      LOBYTE(v207) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v206;
      *(v169 + 32) = v207;
      *(v169 + 40) = v168;
      *(v169 + 48) = v124;
      swift_retain_n();
      sub_1D5D355B8(&v221, &v207, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v170 = sub_1D72647CC();
      LOBYTE(v207) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v170;
      *(v171 + 24) = v206;
      *(v171 + 40) = v207;
      v172 = *(v205 + 24);
      v173 = *(v205 + 32);
      v174 = __swift_project_boxed_opaque_existential_1(v205, v172);
      MEMORY[0x1EEE9AC00](v174, v175);
      MEMORY[0x1EEE9AC00](v176, v177);
      v178 = v202;
      *(&v184 - 4) = sub_1D615B4A4;
      *(&v184 - 3) = v178;
      v182 = sub_1D6708A68;
      v183 = v169;
      v180 = sub_1D5D2F7A4(v164, sub_1D615B49C, v179, sub_1D615B4A4, (&v184 - 6), v172, v173);
      if (v159)
      {

        v209 = v215;
        v210 = v216;
        v211 = v217;
        v212 = v218;
        v207 = v213;
        v208 = v214;
        sub_1D601144C(&v207);
        v100 = v203;
        v160 = v189;
        goto LABEL_43;
      }

      v181 = v180;

      if (v181)
      {
        sub_1D6661204();
        v100 = v203;
        sub_1D72647EC();

        v209 = v215;
        v210 = v216;
        v211 = v217;
        v212 = v218;
        v207 = v213;
        v208 = v214;
        sub_1D601144C(&v207);
      }

      else
      {

        v209 = v215;
        v210 = v216;
        v211 = v217;
        v212 = v218;
        v207 = v213;
        v208 = v214;
        sub_1D601144C(&v207);
        v100 = v203;
      }

      v164 = v189;
    }

    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
    goto LABEL_16;
  }

  v221 = 0uLL;
  LOBYTE(v222) = 0;
  *&v213 = v196;
  *(&v213 + 1) = v195;
  v69 = v203;
  v72 = v206;
  sub_1D72647EC();

  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  v70 = v201;
  if (!v72)
  {
    *&v206 = 0;
    goto LABEL_12;
  }

  v73 = v69;
  return sub_1D5D2CFE8(v73, sub_1D66927C0);
}

uint64_t sub_1D64CAA3C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x776F64616873;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 1752457584;
  if (v1 != 3)
  {
    v4 = 0x73726564726F62;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
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

uint64_t sub_1D64CAB04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66932B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64CAB3C(uint64_t a1)
{
  v2 = sub_1D66929C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CAB78(uint64_t a1)
{
  v2 = sub_1D66929C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupNodeMaskStyle.Selector.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D6692BD4(0);
  v6 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6692C68(0);
  sub_1D5B58B84(&qword_1EDF25118, sub_1D6692C68, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v10 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1D7264AFC();
  LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v12 = v53;
  v13 = v9;
  if (v10)
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

      v20 = sub_1D661C43C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v12 + 8))(v13, v6);
      a1 = v30;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v35 = 0uLL;
  LOBYTE(v36) = 0;
  sub_1D726431C();
  v17 = v48;
  v46 = xmmword_1D728CF30;
  v47 = 0;
  sub_1D6198494();
  sub_1D726427C();
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v41 = v48;
  v42 = v49;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v35 = xmmword_1D7297410;
  LOBYTE(v36) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v29 = v33;
  v33 = xmmword_1D72BAA60;
  v34 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  (*(v12 + 8))(v9, v6);
  v23 = v31;
  *v31 = v17;
  v24 = v44;
  v23[3] = v43;
  v23[4] = v24;
  *(v23 + 80) = v45;
  v25 = v42;
  v23[1] = v41;
  v23[2] = v25;
  *(v23 + 81) = *v32;
  *(v23 + 21) = *&v32[3];
  v26 = v30;
  *(v23 + 11) = v29;
  v27 = v36;
  v23[6] = v35;
  v23[7] = v27;
  *(v23 + 176) = v40;
  v28 = v39;
  v23[9] = v38;
  v23[10] = v28;
  v23[8] = v37;
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t FormatGroupNodeMaskStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v126 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v128 = &v124 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v129 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v124 - v14);
  sub_1D6692DE8(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  *&v140 = v1[1];
  v22 = *(v1 + 4);
  v165 = *(v1 + 3);
  v166 = v22;
  v167 = *(v1 + 80);
  v23 = *(v1 + 2);
  v163 = *(v1 + 1);
  v164 = v23;
  v127 = v1[11];
  v173 = *(v1 + 176);
  v24 = *(v1 + 10);
  v171 = *(v1 + 9);
  v172 = v24;
  v25 = *(v1 + 8);
  v169 = *(v1 + 7);
  v170 = v25;
  v168 = *(v1 + 6);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D6692C68(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF25118, sub_1D6692C68, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGroupNodeMaskStyle.Selector, v29, v31, v26, &type metadata for FormatGroupNodeMaskStyle.Selector, v29, &type metadata for FormatVersions.StarSky, v27, v20, v30, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v131 = v33;
  v132 = v32;
  v134 = v35;
  v136 = v34 + 16;
  (v35)(v15);
  v135 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v161 = v21;
  v162 = v140;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v36 = &v20[*(v17 + 44)];
  v37 = *v36;
  v38 = *(v36 + 1);
  v139 = v15;
  LOBYTE(v148) = 0;
  v39 = swift_allocObject();
  *&v140 = &v124;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v148;
  *(v39 + 40) = v37;
  *(v39 + 48) = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v124 - 4) = sub_1D5B4AA6C;
  *(&v124 - 3) = 0;
  v122 = sub_1D6708A6C;
  v123 = v41;
  LOBYTE(v148) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v148;
  v133 = v37;
  *(v42 + 40) = v37;
  *(v42 + 48) = v38;
  sub_1D6692E7C(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF030A8, sub_1D6692E7C, MEMORY[0x1E69E6F60]);
  v130 = v38;
  swift_retain_n();
  v137 = v44;
  v138 = v45;
  v46 = sub_1D72647CC();
  LOBYTE(v148) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v148;
  v48 = v20;
  v49 = &v20[*(v17 + 36)];
  v50 = *(v49 + 3);
  v51 = *(v49 + 4);
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v124 - 4) = sub_1D615B4A4;
  *(&v124 - 3) = (&v124 - 6);
  v122 = sub_1D6708A6C;
  v123 = v42;
  v56 = v139;
  v57 = v141;
  sub_1D5D2BC70(v139, sub_1D615B49C, v58, sub_1D615B4A4, (&v124 - 6), v50, v51);
  if (v57)
  {
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v48, sub_1D6692DE8);
  }

  v125 = v49;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v141 = 0;
  v124 = v48;
  sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

  v60 = v129;
  v61 = v131;
  v62 = v132;
  v63 = v134;
  v134(v129, v131, v132);
  swift_storeEnumTagMultiPayload();
  v140 = xmmword_1D728CF30;
  v156 = xmmword_1D728CF30;
  v157 = 0;
  LOBYTE(v148) = 0;
  v64 = swift_allocObject();
  v66 = v64;
  *(v64 + 16) = v140;
  *(v64 + 32) = v148;
  v67 = v133;
  v68 = v130;
  *(v64 + 40) = v133;
  *(v64 + 48) = v68;
  if (v167 == 255)
  {

    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

    goto LABEL_14;
  }

  v139 = &v124;
  v150 = v165;
  v151 = v166;
  LOBYTE(v152) = v167;
  v148 = v163;
  v149 = v164;
  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v124 - 4) = sub_1D5B4AA6C;
  *(&v124 - 3) = 0;
  v122 = sub_1D6708A6C;
  v123 = v66;
  LOBYTE(v142) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v140;
  *(v69 + 32) = v142;
  *(v69 + 40) = v67;
  *(v69 + 48) = v68;
  swift_retain_n();
  sub_1D5D355B8(&v163, &v142, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v70 = sub_1D72647CC();
  LOBYTE(v142) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = v140;
  *(v71 + 40) = v142;
  v72 = *(v125 + 3);
  v73 = *(v125 + 4);
  v74 = __swift_project_boxed_opaque_existential_1(v125, v72);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v124 - 4) = sub_1D615B4A4;
  *(&v124 - 3) = (&v124 - 6);
  v122 = sub_1D6708A6C;
  v123 = v69;
  v78 = v141;
  v80 = sub_1D5D2F7A4(v60, sub_1D615B49C, v79, sub_1D615B4A4, (&v124 - 6), v72, v73);
  v141 = v78;
  if (v78)
  {

    v144 = v150;
    v145 = v151;
    LOBYTE(v146) = v152;
    v142 = v148;
    v143 = v149;
    sub_1D61992B0(&v142);
LABEL_17:
    v82 = v124;
    goto LABEL_18;
  }

  v81 = v80;

  if ((v81 & 1) == 0)
  {

    v144 = v150;
    v145 = v151;
    LOBYTE(v146) = v152;
    v142 = v148;
    v143 = v149;
    sub_1D61992B0(&v142);
    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
    v68 = v130;
    v61 = v131;
    v62 = v132;
    v67 = v133;
    v63 = v134;
    goto LABEL_14;
  }

  sub_1D61984E8();
  v82 = v124;
  v83 = v141;
  sub_1D72647EC();
  v61 = v131;
  v62 = v132;
  v63 = v134;
  v141 = v83;
  if (!v83)
  {

    v144 = v150;
    v145 = v151;
    LOBYTE(v146) = v152;
    v142 = v148;
    v143 = v149;
    sub_1D61992B0(&v142);
    sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
    v68 = v130;
    v67 = v133;
LABEL_14:
    v84 = v128;
    v63(v128, v61, v62);
    swift_storeEnumTagMultiPayload();
    v140 = xmmword_1D7297410;
    v156 = xmmword_1D7297410;
    v157 = 0;
    LOBYTE(v148) = 0;
    v85 = swift_allocObject();
    v87 = v85;
    *(v85 + 16) = v140;
    *(v85 + 32) = v148;
    *(v85 + 40) = v67;
    *(v85 + 48) = v68;
    if (v127)
    {
      v174 = v127;
      MEMORY[0x1EEE9AC00](v85, v86);
      *(&v124 - 4) = sub_1D5B4AA6C;
      *(&v124 - 3) = 0;
      v122 = sub_1D6708A6C;
      v123 = v87;
      LOBYTE(v148) = 0;
      v88 = swift_allocObject();
      *(v88 + 16) = v140;
      *(v88 + 32) = v148;
      *(v88 + 40) = v67;
      *(v88 + 48) = v68;
      swift_retain_n();

      v89 = sub_1D72647CC();
      LOBYTE(v148) = 0;
      v90 = swift_allocObject();
      *(v90 + 16) = v89;
      *(v90 + 24) = v140;
      *(v90 + 40) = v148;
      v91 = *(v125 + 3);
      v92 = *(v125 + 4);
      v93 = __swift_project_boxed_opaque_existential_1(v125, v91);
      MEMORY[0x1EEE9AC00](v93, v94);
      MEMORY[0x1EEE9AC00](v95, v96);
      *(&v124 - 4) = sub_1D615B4A4;
      *(&v124 - 3) = (&v124 - 6);
      v60 = v128;
      v122 = sub_1D6708A6C;
      v123 = v88;
      v97 = v141;
      v99 = sub_1D5D2F7A4(v128, sub_1D615B49C, v98, sub_1D615B4A4, (&v124 - 6), v91, v92);
      v141 = v97;
      if (v97)
      {

        goto LABEL_17;
      }

      v101 = v99;

      if (v101)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v82 = v124;
        v102 = v141;
        sub_1D72647EC();
        v68 = v130;
        v61 = v131;
        v62 = v132;
        v141 = v102;
        if (v102)
        {

          goto LABEL_18;
        }

        sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
        v82 = v124;
        v68 = v130;
        v61 = v131;
        v62 = v132;
      }
    }

    else
    {

      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

      v82 = v124;
    }

    v103 = v126;
    v134(v126, v61, v62);
    swift_storeEnumTagMultiPayload();
    v140 = xmmword_1D72BAA60;
    v154 = xmmword_1D72BAA60;
    v155 = 0;
    LOBYTE(v148) = 0;
    v104 = swift_allocObject();
    v106 = v104;
    *(v104 + 16) = v140;
    *(v104 + 32) = v148;
    v107 = v133;
    *(v104 + 40) = v133;
    *(v104 + 48) = v68;
    if (v173 == 254)
    {

LABEL_32:
      v100 = v103;
      goto LABEL_33;
    }

    v150 = v170;
    v151 = v171;
    v152 = v172;
    v153 = v173;
    v148 = v168;
    v149 = v169;
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v124 - 4) = sub_1D5B4AA6C;
    *(&v124 - 3) = 0;
    v122 = sub_1D6708A6C;
    v123 = v106;
    LOBYTE(v142) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v140;
    *(v108 + 32) = v142;
    *(v108 + 40) = v107;
    *(v108 + 48) = v68;
    swift_retain_n();
    sub_1D5D355B8(&v168, &v142, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v109 = sub_1D72647CC();
    LOBYTE(v142) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v140;
    *(v110 + 40) = v142;
    v111 = *(v125 + 3);
    v112 = *(v125 + 4);
    v113 = __swift_project_boxed_opaque_existential_1(v125, v111);
    MEMORY[0x1EEE9AC00](v113, v114);
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v124 - 4) = sub_1D615B4A4;
    *(&v124 - 3) = (&v124 - 6);
    v122 = sub_1D6692F10;
    v123 = v108;
    v117 = v141;
    v119 = sub_1D5D2F7A4(v126, sub_1D615B49C, v118, sub_1D615B4A4, (&v124 - 6), v111, v112);
    v141 = v117;
    if (v117)
    {

      v144 = v150;
      v145 = v151;
      v146 = v152;
      v147 = v153;
      v142 = v148;
      v143 = v149;
      sub_1D601144C(&v142);
    }

    else
    {
      v120 = v119;

      if (v120)
      {
        sub_1D6661204();
        v82 = v124;
        v121 = v141;
        sub_1D72647EC();
        v103 = v126;
        v141 = v121;

        v144 = v150;
        v145 = v151;
        v146 = v152;
        v147 = v153;
        v142 = v148;
        v143 = v149;
        sub_1D601144C(&v142);
        goto LABEL_32;
      }

      v144 = v150;
      v145 = v151;
      v146 = v152;
      v147 = v153;
      v142 = v148;
      v143 = v149;
      sub_1D601144C(&v142);
    }

    v82 = v124;
    v103 = v126;
    goto LABEL_32;
  }

  v144 = v150;
  v145 = v151;
  LOBYTE(v146) = v152;
  v142 = v148;
  v143 = v149;
  sub_1D61992B0(&v142);
  v60 = v129;
LABEL_18:
  v100 = v60;
LABEL_33:
  sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v82, sub_1D6692DE8);
}

uint64_t sub_1D64CC2B0()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x73726564726F62;
  v4 = 0x776F64616873;
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
    v2 = 1752457584;
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

uint64_t sub_1D64CC338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6693500(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64CC370(uint64_t a1)
{
  v2 = sub_1D6692D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC3AC(uint64_t a1)
{
  v2 = sub_1D6692D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64CC3E8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x726F7463656C6573;
    v8 = 0x6168706C61;
    if (a1 != 3)
    {
      v8 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0x66456C6175736976;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    v4 = 0x776F64616873;
    if (a1 != 6)
    {
      v4 = 0x426F547370696C63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D64CC560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66936AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64CC598(uint64_t a1)
{
  v2 = sub_1D6661078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC5D4(uint64_t a1)
{
  v2 = sub_1D6661078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64CC610(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F7463656C6573;
    v6 = 0x615272656E726F63;
    if (a1 != 2)
    {
      v6 = 0x776F64616873;
    }

    if (a1)
    {
      v5 = 0x73726564726F62;
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
    v1 = 0xD000000000000018;
    v2 = 0x66456C6175736976;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6168706C61;
    if (a1 != 4)
    {
      v3 = 0x426F547370696C63;
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

uint64_t sub_1D64CC744@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6693A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64CC77C(uint64_t a1)
{
  v2 = sub_1D6661550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC7B8(uint64_t a1)
{
  v2 = sub_1D6661550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupPriority.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v34 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = v37;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v26 = v35[3];
    v27 = v35[4];
    v37 = __swift_project_boxed_opaque_existential_1(v35, v26);
    if (v34 > 1)
    {
      v28 = v32;
      v23(v32, v22, v21);
    }

    else
    {
      v28 = v30;
      v23(v30, v22, v21);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v26, v27);
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t FormatGroupRequirement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v27;
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
          v10 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5115328;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6692F8C();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    switch(v25)
    {
      case 6:
      case 7:
        sub_1D5C34D84(0, &qword_1EDF1B3D0, &type metadata for FormatBundle, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D66931C0();
        goto LABEL_16;
      case 8:
      case 9:
        sub_1D5C34D84(0, &qword_1EC886C70, &type metadata for FormatPlatform, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D66930D0();
        goto LABEL_16;
      case 10:
      case 11:
        sub_1D5C34D84(0, &qword_1EDF1AFF8, &type metadata for FormatGroupColumnSystemKind, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D6692FE0();
        goto LABEL_16;
      case 12:
        sub_1D5C30060(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
        v25 = xmmword_1D7279980;
        sub_1D666DA50();
        sub_1D726431C();
        (*(v6 + 8))(v9, v5);
        v23 = *(&v26 + 1);
        v24 = v26;
        goto LABEL_17;
      default:
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v26 = xmmword_1D7279980;
        sub_1D665B74C();
LABEL_16:
        sub_1D726431C();
        (*(v6 + 8))(v9, v5);
        v23 = 0;
        v24 = v25;
LABEL_17:
        *v13 = v24;
        *(v13 + 8) = v23;
        *(v13 + 16) = v22;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupRequirement.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v104 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v103 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v101 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v100 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v99 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v95 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v97 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v95 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v95 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v95 - v44;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 8);
  v106 = *v1;
  v96 = v50;
  v51 = *(v1 + 16);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v54 = sub_1D5C30408();
  v107 = v49;
  sub_1D5D2EE70(&type metadata for FormatGroupRequirement, &type metadata for FormatCodingKeys, v55, v52, &type metadata for FormatGroupRequirement, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v53, v49, v54, &off_1F51F6CB8);
  switch(v51)
  {
    case 1:
      v83 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCCE8);
      (*(*(v84 - 8) + 16))(v41, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(1, v41, v83);
      v60 = v41;
      break;
    case 2:
      v73 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCCE8);
      (*(*(v74 - 8) + 16))(v37, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(2, v37, v73);
      v60 = v37;
      break;
    case 3:
      v76 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCCE8);
      v79 = v97;
      (*(*(v77 - 8) + 16))(v97, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(3, v79, v76);
      v60 = v79;
      break;
    case 4:
      v64 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCCE8);
      (*(*(v65 - 8) + 16))(v30, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v67 = 4;
      goto LABEL_32;
    case 5:
      v64 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v86 = sub_1D725BD1C();
      v87 = __swift_project_value_buffer(v86, qword_1EDFFCCE8);
      v30 = v98;
      (*(*(v86 - 8) + 16))(v98, v87, v86);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v67 = 5;
LABEL_32:
      v59 = v107;
      sub_1D639A5D8(v67, v30, v64);
      goto LABEL_45;
    case 6:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCCE8);
      v30 = v99;
      (*(*(v88 - 8) + 16))(v99, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = 6;
      goto LABEL_36;
    case 7:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCCE8);
      v30 = v100;
      (*(*(v80 - 8) + 16))(v100, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = 7;
LABEL_36:
      v59 = v107;
      sub_1D639A7AC(v82, *&v106, v30);
      goto LABEL_45;
    case 8:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCCE8);
      v30 = v101;
      (*(*(v92 - 8) + 16))(v101, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v72 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCCE8);
      v30 = v102;
      (*(*(v70 - 8) + 16))(v102, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v72 = 9;
LABEL_44:
      v59 = v107;
      sub_1D639A96C(v72, *&v106, v30);
      goto LABEL_45;
    case 10:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCCE8);
      v30 = v103;
      (*(*(v90 - 8) + 16))(v103, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 10;
      goto LABEL_40;
    case 11:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCCE8);
      v30 = v104;
      (*(*(v61 - 8) + 16))(v104, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 11;
LABEL_40:
      v59 = v107;
      sub_1D639AB2C(v63, *&v106, v30);
      goto LABEL_45;
    case 12:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCE80);
      v30 = v105;
      (*(*(v68 - 8) + 16))(v105, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639ACEC(12, *&v106, v96, v30);
LABEL_45:
      v60 = v30;
      break;
    default:
      v56 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCE8);
      (*(*(v57 - 8) + 16))(v45, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(0, v45, v56);
      v60 = v45;
      break;
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

unint64_t sub_1D64CDE98(char a1)
{
  result = 0x426564756C636E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      return result;
    case 7:
      result = 0x426564756C637865;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x726F7463656C6573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1D64CE03C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666408C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D64CE06C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D64CDE98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatHBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v265 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v270 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v271 = &v265 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v272 = &v265 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v273 = &v265 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v274 = &v265 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v280 = &v265 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v278 = &v265 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v277 = &v265 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v265 - v35;
  sub_1D6693D30(0);
  v284 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v265 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D5C9EC54(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF24C48, sub_1D5C9EC54, &unk_1D7321584);
  v285 = v40;
  sub_1D5D2EE70(v4, v44, v46, v41, v4, v44, &type metadata for FormatVersions.JazzkonC, v42, v40, v45, &off_1F51F6C78);
  swift_beginAccess();
  v47 = v2[2];
  v48 = v2[3];
  v281 = v2;
  v49 = qword_1EDF31EB0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v54 = (v52 + 16);
  *&v283 = v51;
  v53(v36);
  v282 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v55 = sub_1D725895C();
  v56 = (*(*(v55 - 8) + 48))(v8, 1, v55);
  v276 = v53;
  v279 = v54;
  v275 = v50;
  if (v56 == 1)
  {
    v268 = v47;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v57 = v284;
    v58 = v285;
    v59 = &v285[*(v284 + 44)];
    v61 = *v59;
    v60 = *(v59 + 1);
    LOBYTE(v287) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v287;
    *(v62 + 40) = v61;
    *(v62 + 48) = v60;
    sub_1D6693DC4(0);
    v64 = v63;
    v65 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4, MEMORY[0x1E69E6F60]);

    v269 = v64;
    v66 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 16) = v66;
    *(v67 + 40) = v287;
    v68 = (v58 + *(v57 + 36));
    v69 = v68[3];
    v70 = v68[4];
    v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
    MEMORY[0x1EEE9AC00](v71, v72);
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6693E58;
    v264 = v62;
    v75 = v286;
    v77 = sub_1D5D2F7A4(v36, sub_1D615B49C, v76, sub_1D615B4A4, (&v265 - 6), v69, v70);
    if (v75)
    {
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_20:
      v113 = v58;
      return sub_1D5D2CFE8(v113, sub_1D6693D30);
    }

    v133 = v77;
    v286 = v65;

    if (v133)
    {
      v287 = 0uLL;
      LOBYTE(v288) = 0;
      v299 = v268;
      v300 = v48;
      sub_1D72647EC();

      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
      v78 = v284;
      v286 = 0;
      v53 = v276;
      goto LABEL_8;
    }

    v286 = 0;
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    v50 = v275;
    v53 = v276;
  }

  else
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v78 = v284;
LABEL_8:
  v79 = v277;
  v80 = v283;
  (v53)(v277, v283, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  (v53)(v79, v80, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  v81 = v281;
  swift_beginAccess();
  v82 = v81[8];
  v83 = v278;
  (v53)();
  swift_storeEnumTagMultiPayload();
  if (((v82 >> 59) & 0x1E | (v82 >> 2) & 1) == 0x16 && v82 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    v84 = v286;
    v85 = v280;
  }

  else
  {
    v58 = v285;
    v114 = &v285[*(v78 + 44)];
    v116 = *v114;
    v115 = *(v114 + 1);
    LOBYTE(v287) = 0;
    v117 = swift_allocObject();
    v277 = xmmword_1D72BAA60;
    *(v117 + 16) = xmmword_1D72BAA60;
    *(v117 + 32) = v287;
    *(v117 + 40) = v116;
    *(v117 + 48) = v115;
    sub_1D5C82CD8(v82);
    sub_1D6693DC4(0);
    v119 = v118;
    sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4, MEMORY[0x1E69E6F60]);

    v269 = v119;
    v120 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v277;
    *(v121 + 40) = v287;
    v122 = (v58 + *(v78 + 36));
    v123 = v122[3];
    v124 = v122[4];
    v125 = __swift_project_boxed_opaque_existential_1(v122, v123);
    MEMORY[0x1EEE9AC00](v125, v126);
    MEMORY[0x1EEE9AC00](v127, v128);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v117;
    v129 = v286;
    v131 = sub_1D5D2F7A4(v83, sub_1D615B49C, v130, sub_1D615B4A4, (&v265 - 6), v123, v124);
    v132 = v83;
    v84 = v129;
    if (v129)
    {

      sub_1D5C92A8C(v82);
      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v137 = v131;

    if (v137)
    {
      v287 = v277;
      LOBYTE(v288) = 0;
      v297 = v82;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v81 = v281;
      v53 = v276;
      v85 = v280;
      v78 = v284;
      sub_1D5C92A8C(v297);
      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
    }

    else
    {
      sub_1D5C92A8C(v82);
      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v85 = v280;
      v78 = v284;
    }
  }

  v286 = v84;
  v86 = v81[10];
  v268 = v81[9];
  *&v277 = v86;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v50, qword_1EDFFCE98);
  (v53)(v85, v87, v50);
  swift_storeEnumTagMultiPayload();
  v278 = xmmword_1D72BAA70;
  v287 = xmmword_1D72BAA70;
  LOBYTE(v288) = 0;
  v88 = *(v78 + 44);
  v89 = v285;
  v90 = &v285[v88];
  v92 = *v90;
  v91 = *(v90 + 1);
  LOBYTE(v297) = 0;
  v93 = swift_allocObject();
  v95 = v93;
  *(v93 + 16) = v278;
  *(v93 + 32) = v297;
  *(v93 + 40) = v92;
  *(v93 + 48) = v91;
  v269 = v92;
  if (v277)
  {
    v267 = &v265;
    v297 = v268;
    v298 = v277;
    MEMORY[0x1EEE9AC00](v93, v94);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v95;
    LOBYTE(v296) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v278;
    *(v96 + 32) = v296;
    *(v96 + 40) = v92;
    *(v96 + 48) = v91;
    sub_1D6693DC4(0);
    v98 = v97;
    sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    *&v277 = v98;
    v99 = sub_1D72647CC();
    LOBYTE(v296) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v278;
    *(v100 + 40) = v296;
    v101 = (v89 + *(v284 + 36));
    v102 = v101[3];
    v103 = v101[4];
    v104 = __swift_project_boxed_opaque_existential_1(v101, v102);
    MEMORY[0x1EEE9AC00](v104, v105);
    MEMORY[0x1EEE9AC00](v106, v107);
    *(&v265 - 4) = sub_1D615B4A4;
    *(&v265 - 3) = (&v265 - 6);
    v263 = sub_1D6708A70;
    v264 = v96;
    v108 = v280;
    v109 = v286;
    v111 = sub_1D5D2F7A4(v280, sub_1D615B49C, v110, sub_1D615B4A4, (&v265 - 6), v102, v103);
    if (v109)
    {

      v112 = v285;

      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
      v113 = v112;
      return sub_1D5D2CFE8(v113, sub_1D6693D30);
    }

    v138 = v111;

    if (v138)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v135 = v274;
      v286 = 0;
      v136 = v91;

      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);
      v286 = 0;
      v81 = v281;
      v50 = v275;
      v53 = v276;
      v136 = v91;
      v135 = v274;
    }
  }

  else
  {

    sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);

    v135 = v274;
    v136 = v91;
  }

  swift_beginAccess();
  v139 = v81[11];
  (v53)(v135, v283, v50);
  swift_storeEnumTagMultiPayload();
  v140 = *(v139 + 16);
  v266 = v136;
  if (!v140)
  {
    sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
    goto LABEL_37;
  }

  LOBYTE(v287) = 0;
  v141 = swift_allocObject();
  v280 = xmmword_1D72BAA80;
  *(v141 + 16) = xmmword_1D72BAA80;
  *(v141 + 32) = v287;
  *(v141 + 40) = v269;
  *(v141 + 48) = v136;
  sub_1D6693DC4(0);
  v143 = v142;
  v144 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4, MEMORY[0x1E69E6F60]);

  v145 = v285;
  *&v278 = v143;
  v146 = sub_1D72647CC();
  LOBYTE(v287) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  *(v147 + 24) = v280;
  *(v147 + 40) = v287;
  v148 = (v145 + *(v284 + 36));
  v149 = v148[3];
  v150 = v148[4];
  v151 = __swift_project_boxed_opaque_existential_1(v148, v149);
  MEMORY[0x1EEE9AC00](v151, v152);
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v265 - 4) = sub_1D5B4AA6C;
  *(&v265 - 3) = 0;
  v263 = sub_1D6708A70;
  v264 = v141;
  v155 = v286;
  v157 = sub_1D5D2F7A4(v135, sub_1D615B49C, v156, sub_1D615B4A4, (&v265 - 6), v149, v150);
  if (!v155)
  {
    v158 = v157;
    v286 = v144;

    if (v158)
    {
      v287 = v280;
      LOBYTE(v288) = 0;
      v296 = v139;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v81 = v281;
      v136 = v266;
      v286 = 0;

      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
      v50 = v275;
    }

    else
    {
      v286 = 0;
      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

      v81 = v281;
      v50 = v275;
      v136 = v266;
    }

LABEL_37:
    swift_beginAccess();
    v159 = v81[12];
    v160 = v273;
    (v276)(v273, v283, v50);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v287) = 0;
    v161 = swift_allocObject();
    v283 = xmmword_1D72BAA90;
    *(v161 + 16) = xmmword_1D72BAA90;
    *(v161 + 32) = v287;
    *(v161 + 40) = v269;
    *(v161 + 48) = v136;
    sub_1D6693DC4(0);
    v163 = v162;
    v164 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4, MEMORY[0x1E69E6F60]);

    *&v280 = v159;

    v165 = v285;
    *&v278 = v163;
    v166 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v166;
    *(v167 + 24) = v283;
    *(v167 + 40) = v287;
    v168 = (v165 + *(v284 + 36));
    v169 = v168[3];
    v170 = v168[4];
    v171 = __swift_project_boxed_opaque_existential_1(v168, v169);
    MEMORY[0x1EEE9AC00](v171, v172);
    MEMORY[0x1EEE9AC00](v173, v174);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v161;
    v175 = v286;
    v177 = sub_1D5D2F7A4(v160, sub_1D615B49C, v176, sub_1D615B4A4, (&v265 - 6), v169, v170);
    v286 = v175;
    if (v175)
    {
      sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

      v113 = v165;
      return sub_1D5D2CFE8(v113, sub_1D6693D30);
    }

    v178 = v177;
    v179 = v280;
    *&v277 = v168;
    v284 = v164;

    if (v178)
    {
      v287 = v283;
      LOBYTE(v288) = 0;
      v295 = v179;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v180 = v285;
      v181 = v286;
      sub_1D72647EC();
      v286 = v181;
      v182 = v281;
      v183 = v275;
      v184 = v273;
      if (v181)
      {

        v185 = v184;
LABEL_65:
        sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);
        v113 = v180;
        return sub_1D5D2CFE8(v113, sub_1D6693D30);
      }

      sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);

      v182 = v281;
      v183 = v275;
    }

    swift_beginAccess();
    v186 = *(v182 + 104);
    sub_1D5B58478(0);
    v188 = *(v187 + 48);
    v189 = v272;
    v190 = &v272[*(v187 + 64)];
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v191 = __swift_project_value_buffer(v183, qword_1EDFFCD98);
    v192 = v276;
    (v276)(v189, v191, v183);
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    *&v283 = __swift_project_value_buffer(v183, qword_1EDFFCE50);
    v192(v189 + v188);
    *v190 = 0;
    *(v190 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    if (v186)
    {
      LOBYTE(v287) = 0;
      v193 = swift_allocObject();
      v280 = xmmword_1D72BAAA0;
      *(v193 + 16) = xmmword_1D72BAAA0;
      *(v193 + 32) = v287;
      *(v193 + 40) = v269;
      *(v193 + 48) = v266;

      v194 = sub_1D72647CC();
      LOBYTE(v287) = 0;
      v195 = swift_allocObject();
      *(v195 + 16) = v194;
      *(v195 + 24) = v280;
      *(v195 + 40) = v287;
      v196 = v277;
      v197 = *(v277 + 24);
      v198 = *(v277 + 32);
      v199 = __swift_project_boxed_opaque_existential_1(v277, v197);
      MEMORY[0x1EEE9AC00](v199, v200);
      MEMORY[0x1EEE9AC00](v201, v202);
      *(&v265 - 4) = sub_1D5B4AA6C;
      *(&v265 - 3) = 0;
      v263 = sub_1D6708A70;
      v264 = v193;
      v203 = v286;
      v205 = sub_1D5D2F7A4(v189, sub_1D615B49C, v204, sub_1D615B4A4, (&v265 - 6), v197, v198);
      v286 = v203;
      if (v203)
      {
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

LABEL_57:
        v113 = v285;
        return sub_1D5D2CFE8(v113, sub_1D6693D30);
      }

      v223 = v205;

      if (v223)
      {
        v287 = v280;
        LOBYTE(v288) = 0;
        v294[0] = 1;
        v180 = v285;
        v224 = v286;
        sub_1D72647EC();
        v286 = v224;
        v182 = v281;
        v206 = v271;
        v183 = v275;
        if (v224)
        {
LABEL_64:
          v185 = v189;
          goto LABEL_65;
        }

        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
        v182 = v281;
        v206 = v271;
        v183 = v275;
      }
    }

    else
    {
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      v206 = v271;
      v196 = v277;
    }

    swift_beginAccess();
    v208 = v182[14];
    v207 = v182[15];
    v209 = *(v182 + 128);
    (v276)(v206, v283, v183);
    swift_storeEnumTagMultiPayload();
    if (v209)
    {
      sub_1D5C75A4C(v208, v207, 1);

      sub_1D5D2F2C8(v208, v207, 1);
      sub_1D5D2F2C8(0, 0, 0);
    }

    else
    {
      sub_1D5D2F2C8(v208, v207, 0);
      sub_1D5D2F2C8(0, 0, 0);
      if ((v208 & 1) == 0)
      {
        v227 = v206;
        goto LABEL_67;
      }
    }

    *&v277 = v207;
    LOBYTE(v287) = 0;
    v210 = swift_allocObject();
    v283 = xmmword_1D72BAAB0;
    *(v210 + 16) = xmmword_1D72BAAB0;
    *(v210 + 32) = v287;
    *(v210 + 40) = v269;
    *(v210 + 48) = v266;

    v211 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v212 = v206;
    v213 = swift_allocObject();
    *(v213 + 16) = v211;
    *(v213 + 24) = v283;
    *(v213 + 40) = v287;
    v214 = v196[3];
    v215 = v196[4];
    v216 = __swift_project_boxed_opaque_existential_1(v196, v214);
    *&v280 = &v265;
    MEMORY[0x1EEE9AC00](v216, v217);
    MEMORY[0x1EEE9AC00](v218, v219);
    *(&v265 - 4) = sub_1D5B4AA6C;
    *(&v265 - 3) = 0;
    v263 = sub_1D6708A70;
    v264 = v210;
    v220 = v286;
    v222 = sub_1D5D2F7A4(v212, sub_1D615B49C, v221, sub_1D615B4A4, (&v265 - 6), v214, v215);
    v286 = v220;
    if (v220)
    {
      sub_1D5D2CFE8(v212, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v208, v277, v209);
      goto LABEL_57;
    }

    v225 = v222;

    if ((v225 & 1) == 0)
    {
      sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2F2C8(v208, v277, v209);
      v182 = v281;
LABEL_70:
      v228 = v182[17];
      v281 = v182[18];
      v229 = v182[19];
      v282 = v182[20];
      v231 = v182[21];
      v230 = v182[22];
      v232 = v270;
      v233 = v269;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v234 = v275;
      v235 = __swift_project_value_buffer(v275, qword_1EDFFCE38);
      (v276)(v232, v235, v234);
      swift_storeEnumTagMultiPayload();
      v283 = xmmword_1D72BAAC0;
      v292 = xmmword_1D72BAAC0;
      v293 = 0;
      LOBYTE(v287) = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v283;
      *(v237 + 32) = v287;
      *(v237 + 40) = v233;
      v238 = v266;
      *(v237 + 48) = v266;
      if (v228)
      {
        v239 = v228;
        *&v280 = &v265;
        *&v287 = v228;
        v240 = v281;
        *(&v287 + 1) = v281;
        v241 = v229;
        v288 = v229;
        v242 = v282;
        v289 = v282;
        v290 = v231;
        v291 = v230;
        *&v277 = v239;
        MEMORY[0x1EEE9AC00](v238, v236);
        v243 = v196;
        v245 = v244;
        v279 = &v265 - 6;
        *(&v265 - 4) = sub_1D5B4AA6C;
        *(&v265 - 3) = 0;
        v263 = sub_1D6708A70;
        v264 = v237;
        v301 = 0;
        v246 = swift_allocObject();
        *(v246 + 16) = v283;
        *(v246 + 32) = v301;
        *(v246 + 40) = v269;
        *(v246 + 48) = v245;
        swift_retain_n();
        sub_1D5EB1D80(v277, v240, v241, v242, v231, v230);
        v247 = sub_1D72647CC();
        v301 = 0;
        v248 = swift_allocObject();
        *(v248 + 16) = v247;
        *(v248 + 24) = v283;
        *(v248 + 40) = v301;
        v249 = v243[3];
        v250 = v243[4];
        v251 = __swift_project_boxed_opaque_existential_1(v243, v249);
        MEMORY[0x1EEE9AC00](v251, v252);
        MEMORY[0x1EEE9AC00](v253, v254);
        v255 = v279;
        *(&v265 - 4) = sub_1D615B4A4;
        *(&v265 - 3) = v255;
        v263 = sub_1D6708A70;
        v264 = v246;
        v256 = v286;
        v258 = sub_1D5D2F7A4(v270, sub_1D615B49C, v257, sub_1D615B4A4, (&v265 - 6), v249, v250);
        if (v256)
        {

          v259 = v285;
LABEL_78:
          v261 = v290;

          sub_1D5CBF568(v261);

          sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
LABEL_82:
          v113 = v259;
          return sub_1D5D2CFE8(v113, sub_1D6693D30);
        }

        v260 = v258;

        if (v260)
        {
          sub_1D6659A24();
          v259 = v285;
          sub_1D72647EC();

          goto LABEL_78;
        }

        v262 = v290;

        sub_1D5CBF568(v262);

        sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
      }

      v259 = v285;
      goto LABEL_82;
    }

    v287 = v283;
    LOBYTE(v288) = 0;
    *&v292 = v208;
    *(&v292 + 1) = v277;
    v293 = v209;
    sub_1D60ED320();
    v180 = v285;
    v226 = v286;
    sub_1D72647EC();
    v286 = v226;
    v182 = v281;
    v189 = v271;
    if (v226)
    {
      sub_1D5D2F2C8(v292, *(&v292 + 1), v293);
      goto LABEL_64;
    }

    sub_1D5D2F2C8(v292, *(&v292 + 1), v293);
    v227 = v189;
LABEL_67:
    sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v285, sub_1D6693D30);
}

uint64_t sub_1D64D0AEC(uint64_t a1)
{
  v2 = sub_1D5C9ED6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64D0B28(uint64_t a1)
{
  v2 = sub_1D5C9ED6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatHOverlayNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v260 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v265 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v266 = &v260 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v267 = &v260 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v268 = &v260 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v269 = &v260 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v271 = &v260 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v270 = &v260 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v272 = &v260 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v281 = &v260 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v260 - v38;
  sub_1D6694E04(0);
  v285 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D6694F2C(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF255A8, sub_1D6694F2C, &unk_1D7321584);
  v282 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.JazzkonC, v45, v43, v48, &off_1F51F6C78);
  swift_beginAccess();
  v50 = v2[2];
  v51 = v2[3];
  v52 = qword_1EDF31EB0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = (v55 + 16);
  v56(v39, v54, v53);
  v280 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v58 = sub_1D725895C();
  v59 = (*(*(v58 - 8) + 48))(v8, 1, v58);
  v276 = v2;
  v278 = v53;
  v277 = v56;
  v279 = v57;
  v275 = v54;
  if (v59 == 1)
  {
    v274 = v50;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v285;
    v61 = v282;
    v62 = &v282[*(v285 + 11)];
    v64 = *v62;
    v63 = *(v62 + 1);
    LOBYTE(v286) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v286;
    *(v65 + 40) = v64;
    *(v65 + 48) = v63;
    sub_1D6694E98(0);
    v67 = v66;
    sub_1D5B58B84(&qword_1EDF03608, sub_1D6694E98, MEMORY[0x1E69E6F60]);

    *&v284 = v67;
    v68 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v69 = swift_allocObject();
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = v68;
    *(v69 + 40) = v286;
    v70 = (v61 + *(v60 + 9));
    v71 = v70[3];
    v72 = v70[4];
    v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D66950AC;
    v259 = v65;
    v77 = v283;
    v79 = sub_1D5D2F7A4(v39, sub_1D615B49C, v78, sub_1D615B4A4, (&v260 - 6), v71, v72);
    if (v77)
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v80 = v61;
      return sub_1D5D2CFE8(v80, sub_1D6694E04);
    }

    v108 = v79;

    if (v108)
    {
      v286 = 0uLL;
      LOBYTE(v287) = 0;
      v298 = v274;
      v299 = v51;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      v53 = v278;
      v56 = v277;
      v54 = v275;
      v283 = 0;
      v2 = v276;
    }

    else
    {
      v283 = 0;
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v2 = v276;
      v53 = v278;
      v56 = v277;
      v54 = v275;
    }
  }

  else
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v81 = v2[4];
  v82 = v2[5];
  v83 = v281;
  v56(v281, v54, v53);
  swift_storeEnumTagMultiPayload();
  v298 = v81;
  v299 = v82;
  v284 = xmmword_1D728CF30;
  v286 = xmmword_1D728CF30;
  LOBYTE(v287) = 0;
  v84 = v282;
  v85 = &v282[*(v285 + 11)];
  v87 = *v85;
  v86 = *(v85 + 1);
  LOBYTE(v297) = 0;
  v88 = swift_allocObject();
  v274 = &v260;
  *(v88 + 16) = v284;
  *(v88 + 32) = v297;
  *(v88 + 40) = v87;
  *(v88 + 48) = v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v273 = &v260 - 6;
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v90;
  LOBYTE(v297) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v284;
  *(v91 + 32) = v297;
  v262 = v87;
  *(v91 + 40) = v87;
  *(v91 + 48) = v86;
  sub_1D6694E98(0);
  v93 = v92;
  v94 = sub_1D5B58B84(&qword_1EDF03608, sub_1D6694E98, MEMORY[0x1E69E6F60]);
  v261 = v86;
  swift_retain_n();
  v264 = v93;
  v263 = v94;
  v95 = sub_1D72647CC();
  LOBYTE(v297) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v284;
  *(v96 + 40) = v297;
  v97 = (v84 + *(v285 + 9));
  v98 = v97[3];
  v99 = v97[4];
  v100 = __swift_project_boxed_opaque_existential_1(v97, v98);
  MEMORY[0x1EEE9AC00](v100, v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v104 = v273;
  *(&v260 - 4) = sub_1D615B4A4;
  *(&v260 - 3) = v104;
  v258 = sub_1D6708A74;
  v259 = v91;
  v105 = v283;
  sub_1D5D2BC70(v83, sub_1D615B49C, v106, sub_1D615B4A4, (&v260 - 6), v98, v99);
  if (v105)
  {
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v80 = v84;
    return sub_1D5D2CFE8(v80, sub_1D6694E04);
  }

  v285 = v97;

  sub_1D72647EC();
  sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);

  v109 = v276;
  swift_beginAccess();
  v110 = v109[6];
  v111 = qword_1EDF31ED0;

  if (v111 != -1)
  {
    swift_once();
  }

  v112 = v278;
  v113 = __swift_project_value_buffer(v278, qword_1EDFFCD50);
  v114 = v272;
  v115 = v277;
  v277(v272, v113, v112);
  swift_storeEnumTagMultiPayload();
  if (*(v110 + 16))
  {
    v283 = v110;
    LOBYTE(v286) = 0;
    v116 = swift_allocObject();
    v284 = xmmword_1D7297410;
    *(v116 + 16) = xmmword_1D7297410;
    *(v116 + 32) = v286;
    *(v116 + 40) = v262;
    *(v116 + 48) = v261;

    v117 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = v284;
    *(v118 + 40) = v286;
    v119 = v285[3];
    v120 = v285[4];
    v121 = __swift_project_boxed_opaque_existential_1(v285, v119);
    MEMORY[0x1EEE9AC00](v121, v122);
    MEMORY[0x1EEE9AC00](v123, v124);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v116;
    v126 = sub_1D5D2F7A4(v114, sub_1D615B49C, v125, sub_1D615B4A4, (&v260 - 6), v119, v120);
    v127 = v126;

    if (v127)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v297 = v283;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v112 = v278;
      v115 = v277;
      v128 = v272;

      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);

      v112 = v278;
      v115 = v277;
    }
  }

  else
  {
    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
  }

  v129 = v270;
  v130 = v275;
  v115(v270, v275, v112);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v115(v129, v130, v112);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v131 = v276;
  swift_beginAccess();
  v132 = v131[11];
  v115(v271, v130, v112);
  swift_storeEnumTagMultiPayload();
  if (((v132 >> 59) & 0x1E | (v132 >> 2) & 1) == 0x16 && v132 == 0xB000000000000000)
  {
    sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
    v133 = v269;
    v134 = v115;
    v135 = v278;
    v136 = v276;
  }

  else
  {
    LOBYTE(v286) = 0;
    v150 = swift_allocObject();
    v284 = xmmword_1D72BAA80;
    *(v150 + 16) = xmmword_1D72BAA80;
    *(v150 + 32) = v286;
    *(v150 + 40) = v262;
    *(v150 + 48) = v261;

    sub_1D5C82CD8(v132);
    v283 = v132;
    v151 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = v284;
    *(v152 + 40) = v286;
    v153 = v285[3];
    v154 = v285[4];
    v155 = __swift_project_boxed_opaque_existential_1(v285, v153);
    MEMORY[0x1EEE9AC00](v155, v156);
    MEMORY[0x1EEE9AC00](v157, v158);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v150;
    v160 = sub_1D5D2F7A4(v271, sub_1D615B49C, v159, sub_1D615B4A4, (&v260 - 6), v153, v154);
    v161 = v160;
    v162 = v283;

    if (v161)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v296 = v162;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v135 = v278;
      v163 = v277;
      v164 = v271;
      sub_1D5C92A8C(v296);
      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
      v133 = v269;
      v134 = v163;
    }

    else
    {
      sub_1D5C92A8C(v162);
      sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
      v135 = v278;
      v134 = v277;
      v133 = v269;
    }
  }

  swift_beginAccess();
  v137 = v136[12];
  v134(v133, v275, v135);
  swift_storeEnumTagMultiPayload();
  if (*(v137 + 16))
  {
    LOBYTE(v286) = 0;
    v138 = swift_allocObject();
    v284 = xmmword_1D72BAA90;
    *(v138 + 16) = xmmword_1D72BAA90;
    *(v138 + 32) = v286;
    *(v138 + 40) = v262;
    *(v138 + 48) = v261;

    v139 = v133;
    v140 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v141 = swift_allocObject();
    v283 = v137;
    *(v141 + 16) = v140;
    *(v141 + 24) = v284;
    *(v141 + 40) = v286;
    v142 = v285[3];
    v143 = v285[4];
    v144 = __swift_project_boxed_opaque_existential_1(v285, v142);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708A74;
    v259 = v138;
    v149 = sub_1D5D2F7A4(v139, sub_1D615B49C, v148, sub_1D615B4A4, (&v260 - 6), v142, v143);
    v165 = v283;
    v166 = v149;

    if (v166)
    {
      v286 = v284;
      LOBYTE(v287) = 0;
      v295 = v165;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v135 = v278;
      v134 = v277;

      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
      v136 = v276;
    }

    else
    {
      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);

      v136 = v276;
      v135 = v278;
      v134 = v277;
    }
  }

  else
  {
    sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v167 = v136[13];
  v168 = v268;
  v134(v268, v275, v135);
  v169 = v167;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v286) = 0;
  v170 = swift_allocObject();
  v284 = xmmword_1D72BAAA0;
  *(v170 + 16) = xmmword_1D72BAAA0;
  *(v170 + 32) = v286;
  *(v170 + 40) = v262;
  *(v170 + 48) = v261;

  v171 = sub_1D72647CC();
  LOBYTE(v286) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = v171;
  *(v172 + 24) = v284;
  *(v172 + 40) = v286;
  v173 = v285[3];
  v174 = v285[4];
  v175 = __swift_project_boxed_opaque_existential_1(v285, v173);
  MEMORY[0x1EEE9AC00](v175, v176);
  MEMORY[0x1EEE9AC00](v177, v178);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v170;
  LOBYTE(v173) = sub_1D5D2F7A4(v168, sub_1D615B49C, v179, sub_1D615B4A4, (&v260 - 6), v173, v174);

  if (v173)
  {
    v286 = v284;
    LOBYTE(v287) = 0;
    v294 = v169;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v180 = v278;
    v181 = v277;
    v182 = v268;

    sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

    v180 = v278;
    v181 = v277;
  }

  v183 = v276;
  swift_beginAccess();
  LODWORD(v284) = *(v183 + 112);
  sub_1D5B58478(0);
  v185 = *(v184 + 48);
  v186 = v267;
  v187 = &v267[*(v184 + 64)];
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v283 = 0;
  v188 = __swift_project_value_buffer(v180, qword_1EDFFCD98);
  v181(v186, v188, v180);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v189 = __swift_project_value_buffer(v180, qword_1EDFFCE50);
  v181(v186 + v185, v189, v180);
  *v187 = 0;
  *(v187 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  if (!v284)
  {
    goto LABEL_49;
  }

  LOBYTE(v286) = 0;
  v190 = swift_allocObject();
  v284 = xmmword_1D72BAAB0;
  *(v190 + 16) = xmmword_1D72BAAB0;
  *(v190 + 32) = v286;
  *(v190 + 40) = v262;
  *(v190 + 48) = v261;

  v191 = sub_1D72647CC();
  LOBYTE(v286) = 0;
  v192 = swift_allocObject();
  *(v192 + 16) = v191;
  *(v192 + 24) = v284;
  *(v192 + 40) = v286;
  v193 = v285[3];
  v194 = v285[4];
  v195 = __swift_project_boxed_opaque_existential_1(v285, v193);
  MEMORY[0x1EEE9AC00](v195, v196);
  MEMORY[0x1EEE9AC00](v197, v198);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708A74;
  v259 = v190;
  v199 = v283;
  v201 = sub_1D5D2F7A4(v186, sub_1D615B49C, v200, sub_1D615B4A4, (&v260 - 6), v193, v194);
  v283 = v199;
  if (!v199)
  {
    v202 = v201;

    if ((v202 & 1) == 0)
    {
      v204 = v84;
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
      v180 = v278;
LABEL_50:
      v205 = v276;
      swift_beginAccess();
      v207 = v205[15];
      v206 = v205[16];
      v208 = *(v205 + 136);
      v209 = v266;
      v277(v266, v189, v180);
      swift_storeEnumTagMultiPayload();
      if (v208)
      {
        sub_1D5C75A4C(v207, v206, 1);

        sub_1D5D2F2C8(v207, v206, 1);
        sub_1D5D2F2C8(0, 0, 0);
        v210 = v285;
      }

      else
      {
        sub_1D5D2F2C8(v207, v206, 0);
        sub_1D5D2F2C8(0, 0, 0);
        v210 = v285;
        if ((v207 & 1) == 0)
        {
          sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
          goto LABEL_60;
        }
      }

      LODWORD(v281) = v208;
      LOBYTE(v286) = 0;
      v211 = swift_allocObject();
      v284 = xmmword_1D72BAAC0;
      *(v211 + 16) = xmmword_1D72BAAC0;
      *(v211 + 32) = v286;
      *(v211 + 40) = v262;
      *(v211 + 48) = v261;

      v212 = v204;
      v213 = sub_1D72647CC();
      LOBYTE(v286) = 0;
      v214 = swift_allocObject();
      *(v214 + 16) = v213;
      *(v214 + 24) = v284;
      *(v214 + 40) = v286;
      v215 = v210;
      v216 = v210[3];
      v217 = v210[4];
      v218 = __swift_project_boxed_opaque_existential_1(v215, v216);
      MEMORY[0x1EEE9AC00](v218, v219);
      MEMORY[0x1EEE9AC00](v220, v221);
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708A74;
      v259 = v211;
      v222 = v283;
      v224 = sub_1D5D2F7A4(v209, sub_1D615B49C, v223, sub_1D615B4A4, (&v260 - 6), v216, v217);
      if (v222)
      {
        sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2F2C8(v207, v206, v281);
        v80 = v212;
        return sub_1D5D2CFE8(v80, sub_1D6694E04);
      }

      v225 = v224;

      if (v225)
      {
        v286 = v284;
        LOBYTE(v287) = 0;
        *&v291 = v207;
        *(&v291 + 1) = v206;
        v292 = v281;
        sub_1D60ED320();
        sub_1D72647EC();
        v180 = v278;
        v283 = 0;
        sub_1D5D2F2C8(v291, *(&v291 + 1), v292);
        sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
        v205 = v276;
      }

      else
      {
        v283 = 0;
        sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v207, v206, v281);
        v205 = v276;
        v180 = v278;
      }

LABEL_60:
      v226 = v205[18];
      v227 = v205[19];
      v228 = v205[21];
      v281 = v205[20];
      v230 = v205[22];
      v229 = v205[23];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v231 = __swift_project_value_buffer(v180, qword_1EDFFCE38);
      v232 = v180;
      v233 = v265;
      v277(v265, v231, v232);
      swift_storeEnumTagMultiPayload();
      v284 = xmmword_1D72BAAD0;
      v291 = xmmword_1D72BAAD0;
      v292 = 0;
      LOBYTE(v286) = 0;
      v234 = swift_allocObject();
      v236 = v234;
      *(v234 + 16) = v284;
      *(v234 + 32) = v286;
      v237 = v261;
      *(v234 + 40) = v262;
      *(v234 + 48) = v237;
      if (v226)
      {
        v280 = &v260;
        *&v286 = v226;
        *(&v286 + 1) = v227;
        v287 = v281;
        v288 = v228;
        v289 = v230;
        v290 = v229;
        MEMORY[0x1EEE9AC00](v234, v235);
        v278 = v228;
        v279 = &v260 - 6;
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708A74;
        v259 = v236;
        v300 = 0;
        v239 = v238;
        v240 = swift_allocObject();
        *(v240 + 16) = v284;
        *(v240 + 32) = v300;
        *(v240 + 40) = v262;
        *(v240 + 48) = v237;
        swift_retain_n();
        sub_1D5EB1D80(v226, v227, v239, v278, v230, v229);
        v241 = sub_1D72647CC();
        v300 = 0;
        v242 = swift_allocObject();
        *(v242 + 16) = v241;
        *(v242 + 24) = v284;
        *(v242 + 40) = v300;
        v243 = v285[3];
        v244 = v285[4];
        v245 = __swift_project_boxed_opaque_existential_1(v285, v243);
        MEMORY[0x1EEE9AC00](v245, v246);
        MEMORY[0x1EEE9AC00](v247, v248);
        v249 = v279;
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = v249;
        v258 = sub_1D6708A74;
        v259 = v240;
        v250 = v265;
        v251 = v283;
        v253 = sub_1D5D2F7A4(v265, sub_1D615B49C, v252, sub_1D615B4A4, (&v260 - 6), v243, v244);
        if (v251)
        {

          v254 = v282;
LABEL_68:
          v256 = v289;

          sub_1D5CBF568(v256);

          sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
LABEL_71:
          v80 = v254;
          return sub_1D5D2CFE8(v80, sub_1D6694E04);
        }

        v255 = v253;

        if (v255)
        {
          sub_1D6659A24();
          v254 = v282;
          sub_1D72647EC();

          goto LABEL_68;
        }

        v257 = v289;

        sub_1D5CBF568(v257);

        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
      }

      v254 = v282;
      goto LABEL_71;
    }

    v286 = v284;
    LOBYTE(v287) = 0;
    v293[0] = 1;
    v203 = v283;
    sub_1D72647EC();
    v283 = v203;
    v180 = v278;
    if (v203)
    {
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v84, sub_1D6694E04);
    }

LABEL_49:
    v204 = v84;
    sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
    goto LABEL_50;
  }

  sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v84, sub_1D6694E04);
}

uint64_t sub_1D64D362C(uint64_t a1)
{
  v2 = sub_1D6695004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64D3668(uint64_t a1)
{
  v2 = sub_1D6695004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatHeadlineBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Action, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E61C(1, v6);
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
    sub_1D641E61C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64D39DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 1970169197;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001D73BB1E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1970169197;
  }

  if (*a2)
  {
    v6 = 0x80000001D73BB1E0;
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

uint64_t sub_1D64D3A80()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64D3B00(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64D3B6C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D3BF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BB1E0;
  v3 = 1970169197;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t FormatHeadlineBinding.ActivityItemsConfiguration.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641EF68(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v155 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v154 = &v136 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v136 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v136 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v151 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v150 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v149 = &v136 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v148 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v147 = &v136 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v146 = &v136 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v144 = &v136 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v142 = &v136 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v141 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v140 = &v136 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v139 = &v136 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v138 = &v136 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v137 = &v136 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v143 = &v136 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v136 = &v136 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v136 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v136 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v136 - v73;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = &v136 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *v1;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  v82 = sub_1D5C30408();
  v156 = v78;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Bool, &type metadata for FormatCodingKeys, v83, v80, &type metadata for FormatHeadlineBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v81, v78, v82, &off_1F51F6C78);
  switch(v79)
  {
    case 1:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCDF8);
      (*(*(v111 - 8) + 16))(v70, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D641ECC0(1, v70);
      v104 = v70;
      break;
    case 2:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD18);
      (*(*(v101 - 8) + 16))(v66, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D641ECC0(2, v66);
      v104 = v66;
      break;
    case 3:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCCE8);
      v74 = v136;
      (*(*(v107 - 8) + 16))(v136, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 3;
      goto LABEL_32;
    case 4:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD18);
      v89 = v143;
      (*(*(v95 - 8) + 16))(v143, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 4;
      goto LABEL_72;
    case 5:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD00);
      v89 = v137;
      (*(*(v117 - 8) + 16))(v137, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_72;
    case 6:
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCDC8);
      v89 = v138;
      (*(*(v123 - 8) + 16))(v138, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_72;
    case 7:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v109 = sub_1D725BD1C();
      v110 = __swift_project_value_buffer(v109, qword_1EDFFCD30);
      v89 = v139;
      (*(*(v109 - 8) + 16))(v139, v110, v109);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_72;
    case 8:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD30);
      v89 = v140;
      (*(*(v129 - 8) + 16))(v140, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_72;
    case 9:
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCE98);
      v89 = v141;
      (*(*(v99 - 8) + 16))(v141, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 21;
      goto LABEL_72;
    case 10:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCD30);
      v89 = v142;
      (*(*(v127 - 8) + 16))(v142, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_72;
    case 11:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      v89 = v144;
      (*(*(v93 - 8) + 16))(v144, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_72;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD50);
      v89 = v145;
      (*(*(v97 - 8) + 16))(v145, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_72;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCD50);
      v89 = v146;
      (*(*(v121 - 8) + 16))(v146, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 12;
      goto LABEL_72;
    case 14:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCD50);
      v89 = v147;
      (*(*(v91 - 8) + 16))(v147, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 13;
      goto LABEL_72;
    case 15:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
      v89 = v148;
      (*(*(v105 - 8) + 16))(v148, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_72;
    case 16:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD80);
      v89 = v149;
      (*(*(v87 - 8) + 16))(v149, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 15;
      goto LABEL_72;
    case 17:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD80);
      v89 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 16;
      goto LABEL_72;
    case 18:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCD80);
      v89 = v151;
      (*(*(v125 - 8) + 16))(v151, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 17;
      goto LABEL_72;
    case 19:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD80);
      v89 = v152;
      (*(*(v133 - 8) + 16))(v152, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 18;
      goto LABEL_72;
    case 20:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD80);
      v89 = v153;
      (*(*(v115 - 8) + 16))(v153, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 19;
      goto LABEL_72;
    case 21:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCCA8);
      v89 = v154;
      (*(*(v119 - 8) + 16))(v154, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 20;
      goto LABEL_72;
    case 22:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v131 = sub_1D725BD1C();
      v132 = __swift_project_value_buffer(v131, qword_1EDFFCE38);
      v89 = v155;
      (*(*(v131 - 8) + 16))(v155, v132, v131);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 22;
LABEL_72:
      v103 = v156;
      sub_1D641ECC0(v90, v89);
      v104 = v89;
      break;
    default:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD30);
      (*(*(v84 - 8) + 16))(v74, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 0;
LABEL_32:
      v103 = v156;
      sub_1D641ECC0(v86, v74);
      v104 = v74;
      break;
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v143 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v142 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v141 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v140 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v138 = &v127 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v137 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v136 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v135 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v134 = &v127 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v133 = &v127 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v132 = &v127 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v130 = &v127 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v129 = &v127 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v131 = &v127 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v128 = &v127 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v127 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v127 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v127 - v61;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v127 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *v1;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  v70 = sub_1D5C30408();
  v144 = v66;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Command, &type metadata for FormatCodingKeys, v71, v68, &type metadata for FormatHeadlineBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v69, v66, v70, &off_1F51F6C78);
  switch(v67)
  {
    case 1:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
      (*(*(v105 - 8) + 16))(v58, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(1, v58);
      v75 = v58;
      break;
    case 2:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD50);
      (*(*(v97 - 8) + 16))(v54, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(2, v54);
      v75 = v54;
      break;
    case 3:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD50);
      v87 = v128;
      (*(*(v101 - 8) + 16))(v128, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 3;
      goto LABEL_64;
    case 4:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCD30);
      v87 = v131;
      (*(*(v91 - 8) + 16))(v131, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 4;
      goto LABEL_64;
    case 5:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD30);
      v87 = v129;
      (*(*(v114 - 8) + 16))(v129, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 5;
      goto LABEL_64;
    case 6:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD18);
      v87 = v130;
      (*(*(v118 - 8) + 16))(v130, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 6;
      goto LABEL_64;
    case 7:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v103 = sub_1D725BD1C();
      v104 = __swift_project_value_buffer(v103, qword_1EDFFCD50);
      v87 = v132;
      (*(*(v103 - 8) + 16))(v132, v104, v103);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 7;
      goto LABEL_64;
    case 8:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD50);
      v87 = v133;
      (*(*(v124 - 8) + 16))(v133, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 8;
      goto LABEL_64;
    case 9:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD50);
      v87 = v134;
      (*(*(v95 - 8) + 16))(v134, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 9;
      goto LABEL_64;
    case 10:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v122 = sub_1D725BD1C();
      v123 = __swift_project_value_buffer(v122, qword_1EDFFCD50);
      v87 = v135;
      (*(*(v122 - 8) + 16))(v135, v123, v122);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 10;
      goto LABEL_64;
    case 11:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD50);
      v87 = v136;
      (*(*(v89 - 8) + 16))(v136, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 11;
      goto LABEL_64;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD50);
      v87 = v137;
      (*(*(v93 - 8) + 16))(v137, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 12;
      goto LABEL_64;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCD50);
      v87 = v138;
      (*(*(v116 - 8) + 16))(v138, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 13;
      goto LABEL_64;
    case 14:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCCE8);
      v87 = v139;
      (*(*(v85 - 8) + 16))(v139, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 16;
      goto LABEL_64;
    case 15:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCCE8);
      v87 = v140;
      (*(*(v99 - 8) + 16))(v140, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 17;
      goto LABEL_64;
    case 16:
      sub_1D5B58478(0);
      v77 = *(v76 + 48);
      v78 = v141;
      v79 = &v141[*(v76 + 64)];
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD00);
      v82 = *(*(v80 - 8) + 16);
      v82(v78, v81, v80);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v83 = __swift_project_value_buffer(v80, qword_1EDFFCCE8);
      v82(v78 + v77, v83, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v79 = 0;
      *(v79 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v84 = 14;
      goto LABEL_45;
    case 17:
      sub_1D5B58478(0);
      v108 = *(v107 + 48);
      v78 = v142;
      v109 = &v142[*(v107 + 64)];
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD00);
      v112 = *(*(v110 - 8) + 16);
      v112(v78, v111, v110);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v113 = __swift_project_value_buffer(v110, qword_1EDFFCCE8);
      v112(v78 + v108, v113, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v109 = 0;
      *(v109 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v84 = 15;
LABEL_45:
      v74 = v144;
      sub_1D641E4C8(v84, v78);
      v87 = v78;
      goto LABEL_65;
    case 18:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCE38);
      v87 = v143;
      (*(*(v120 - 8) + 16))(v143, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 18;
LABEL_64:
      v74 = v144;
      sub_1D641E4C8(v88, v87);
LABEL_65:
      v75 = v87;
      break;
    default:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD50);
      (*(*(v72 - 8) + 16))(v62, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(0, v62);
      v75 = v62;
      break;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Float.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Float, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatHeadlineBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v21, v18, v22, &off_1F51F6CB8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641E8C4(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE38);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641E8C4(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E8C4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64D6964@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v33 = a4;
  v38 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v7);
    swift_willThrow();
  }

  else
  {
    v14 = v38;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v34;
    v19 = v13;
    if (v16)
    {
      v20 = sub_1D726433C();
      v21 = (v20 + 40);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 2;
        v24 = *v21;
        v21 += 2;
        if (v24 >= 4)
        {
          v25 = *(v23 - 3);

          sub_1D5E2D970();
          v7 = swift_allocError();
          *v26 = v25;
          *(v26 + 8) = v24;
          *(v26 + 16) = a2;
          *(v26 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v19, v10);
          goto LABEL_9;
        }
      }
    }

    (v14)(v17);
    v36 = 0uLL;
    sub_1D726431C();
    v28 = v35;
    v35 = xmmword_1D7279980;
    sub_1D6659898();
    sub_1D726431C();
    (*(v18 + 8))(v19, v10);
    v29 = v37;
    v30 = v32;
    *v32 = v36;
    *(v30 + 8) = v29;
    *(v30 + 18) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D64D6CD0(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, char *, double))
{
  v38 = a3;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v3;
  v36 = *(v3 + 8);
  v37 = *(v3 + 16);
  v23 = *(v3 + 18);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v27, v24, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v21, v26, &off_1F51F6C78);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
      (*(*(v28 - 8) + 16))(v13, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38(1, v36, v37, v13, v22);
      v30 = v13;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      (*(*(v33 - 8) + 16))(v9, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38(2, v36, v37, v9, v22);
      v30 = v9;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
    (*(*(v31 - 8) + 16))(v17, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38(0, v36, v37, v17, v22);
    v30 = v17;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v21, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Image, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641E770(1, v17);
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
      sub_1D641E770(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD00);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCDE0);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D64D7700()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64D7800(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64D78EC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D79E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0x69616E626D756874;
  v5 = 0xEA00000000006C6CLL;
  v6 = 0x6974536F65646976;
  v7 = 0x80000001D73BB1A0;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v7 = 0x80000001D73BB1C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656873696C627570;
    v3 = 0xED00006F676F4C72;
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

uint64_t FormatHeadlineBinding.LayeredMedia.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.LayeredMedia, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.LayeredMedia, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v11, v9, v12, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDB0);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641F354(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.SharedItem.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SharedItem, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.SharedItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641F498(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.SharedMenuItem.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SharedMenuItem, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.SharedMenuItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
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
    sub_1D641F0AC(1, v6);
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
    sub_1D641F0AC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64D84D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261685365646968;
  }

  else
  {
    v3 = 0x536F54796C706572;
  }

  if (v2)
  {
    v4 = 0xED00007265726168;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7261685365646968;
  }

  else
  {
    v5 = 0x536F54796C706572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xED00007265726168;
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

uint64_t sub_1D64D8588()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64D861C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64D869C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D8738(uint64_t *a1@<X8>)
{
  v2 = 0x536F54796C706572;
  if (*v1)
  {
    v2 = 0x7261685365646968;
  }

  v3 = 0xED00007265726168;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatHeadlineBinding.SourceItemTip.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SourceItemTip, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
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
    sub_1D641F200(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F200(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v139 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v138 = &v138 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v155 = &v138 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v154 = &v138 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v140 = &v138 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v142 = &v138 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v141 = &v138 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v143 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v144 = &v138 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v145 = &v138 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v146 = &v138 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v147 = &v138 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v148 = &v138 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v149 = &v138 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v150 = &v138 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v138 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v138 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v151 = &v138 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v152 = &v138 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v153 = &v138 - v64;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v68 = &v138 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *v1;
  v70 = v1[1];
  v71 = v1[2];
  v158 = v1[3];
  v159 = v69;
  v72 = v1[5];
  v156 = v1[4];
  v157 = v72;
  v73 = *(v1 + 48);
  v74 = a1[3];
  v75 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  v76 = sub_1D5C30408();
  v172 = v68;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Text, &type metadata for FormatCodingKeys, v77, v74, &type metadata for FormatHeadlineBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v75, v68, v76, &off_1F51F6C78);
  if (v73 <= 1)
  {
    if (!v73)
    {
      *&v161 = v159;
      *(&v161 + 1) = v70;
      v162 = v71;
      v163 = v158;
      v164 = v156;
      v165 = v157;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD50);
      (*(*(v81 - 8) + 16))(v55, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v80 = v172;
      sub_1D6484FBC(3, &v161, v55);
      v83 = v55;
      goto LABEL_24;
    }

    *&v166 = v159;
    *(&v166 + 1) = v70;
    v167 = v71;
    v168 = v158;
    v169 = v156;
    v170 = v157;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v91 = sub_1D725BD1C();
    v92 = __swift_project_value_buffer(v91, qword_1EDFFCD30);
    (*(*(v91 - 8) + 16))(v51, v92, v91);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D6484FBC(4, &v166, v51);
LABEL_23:
    v83 = v51;
LABEL_24:
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
  }

  if (v73 == 2)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v84 = sub_1D725BD1C();
    v85 = __swift_project_value_buffer(v84, qword_1EDFFCD00);
    v51 = v154;
    (*(*(v84 - 8) + 16))(v154, v85, v84);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D639FBB4(16, v159 & 1, v51);
    goto LABEL_23;
  }

  if (v73 == 3)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v78 = sub_1D725BD1C();
    v79 = __swift_project_value_buffer(v78, qword_1EDFFCCE8);
    v51 = v155;
    (*(*(v78 - 8) + 16))(v155, v79, v78);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D639FD4C(17, v51);
    goto LABEL_23;
  }

  if (v71 | v70 | v159 | v158 | v156 | v157)
  {
    v86 = v71 | v70 | v158 | v156 | v157;
    if (v159 == 1 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD30);
      v89 = v152;
      (*(*(v87 - 8) + 16))(v152, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 1;
LABEL_73:
      v97 = v89;
      v94 = v172;
      goto LABEL_74;
    }

    if (v159 == 2 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD50);
      v89 = v151;
      (*(*(v98 - 8) + 16))(v151, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 2;
      goto LABEL_73;
    }

    if (v159 == 3 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCD50);
      v89 = v150;
      (*(*(v100 - 8) + 16))(v150, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_73;
    }

    if (v159 == 4 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v89 = v149;
      (*(*(v102 - 8) + 16))(v149, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_73;
    }

    if (v159 == 5 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v104 = sub_1D725BD1C();
      v105 = __swift_project_value_buffer(v104, qword_1EDFFCD30);
      v89 = v148;
      (*(*(v104 - 8) + 16))(v148, v105, v104);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_73;
    }

    if (v159 == 6 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EDFFCD50);
      v89 = v147;
      (*(*(v106 - 8) + 16))(v147, v107, v106);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_73;
    }

    if (v159 == 7 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v108 = sub_1D725BD1C();
      v109 = __swift_project_value_buffer(v108, qword_1EDFFCD50);
      v89 = v146;
      (*(*(v108 - 8) + 16))(v146, v109, v108);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_73;
    }

    if (v159 == 8 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD30);
      v89 = v145;
      (*(*(v110 - 8) + 16))(v145, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_73;
    }

    if (v159 == 9 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD30);
      v89 = v144;
      (*(*(v112 - 8) + 16))(v144, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_73;
    }

    if (v159 == 10 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD30);
      v89 = v143;
      (*(*(v114 - 8) + 16))(v143, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_73;
    }

    if (v159 == 11 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD30);
      v89 = v141;
      (*(*(v118 - 8) + 16))(v141, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v94 = v172;
      v120 = v160;
      sub_1D641EB6C(12, v89);
      if (v120)
      {
        goto LABEL_75;
      }

LABEL_76:
      v117 = v89;
      goto LABEL_77;
    }

    if (v159 != 12 || v86)
    {
      if (v159 != 13 || v86)
      {
        if (v159 != 14 || v86)
        {
          if (qword_1EDF31ED8 != -1)
          {
            swift_once();
          }

          v134 = sub_1D725BD1C();
          v135 = __swift_project_value_buffer(v134, qword_1EDFFCD68);
          v136 = v139;
          (*(*(v134 - 8) + 16))(v139, v135, v134);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v137 = v160;
          sub_1D641EB6C(19, v136);
          if (!v137)
          {
            v94 = v172;
            v117 = v139;
            goto LABEL_77;
          }

          v125 = &v169;
        }

        else
        {
          if (qword_1EDF31EE0 != -1)
          {
            swift_once();
          }

          v130 = sub_1D725BD1C();
          v131 = __swift_project_value_buffer(v130, qword_1EDFFCD80);
          v132 = v138;
          (*(*(v130 - 8) + 16))(v138, v131, v130);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v133 = v160;
          sub_1D641EB6C(18, v132);
          v125 = &v168;
          if (!v133)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v126 = sub_1D725BD1C();
        v127 = __swift_project_value_buffer(v126, qword_1EDFFCD50);
        v128 = v140;
        (*(*(v126 - 8) + 16))(v140, v127, v126);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v129 = v160;
        sub_1D641EB6C(15, v128);
        v125 = &v170;
        if (!v129)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCDF8);
      v123 = v142;
      (*(*(v121 - 8) + 16))(v142, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v124 = v160;
      sub_1D641EB6C(13, v123);
      v125 = &v171;
      if (!v124)
      {
LABEL_101:
        v117 = *(v125 - 32);
        v94 = v172;
        goto LABEL_77;
      }
    }

    v89 = *(v125 - 32);
    v94 = v172;
    goto LABEL_75;
  }

  v94 = v172;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v95 = sub_1D725BD1C();
  v96 = __swift_project_value_buffer(v95, qword_1EDFFCD30);
  v89 = v153;
  (*(*(v95 - 8) + 16))(v153, v96, v95);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v90 = 0;
  v97 = v89;
LABEL_74:
  v116 = v160;
  sub_1D641EB6C(v90, v97);
  if (!v116)
  {
    goto LABEL_76;
  }

LABEL_75:
  v117 = v89;
LABEL_77:
  sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v94, sub_1D5D30DC4);
}