uint64_t sub_1D65F9424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D2AA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65F945C(uint64_t a1)
{
  v2 = sub_1D5CC4E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F9498(uint64_t a1)
{
  v2 = sub_1D5CC4E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F94EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D3504(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65F9524(uint64_t a1)
{
  v2 = sub_1D5C8C280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F9560(uint64_t a1)
{
  v2 = sub_1D5C8C280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F959C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66D3848(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65F95D4(uint64_t a1)
{
  v2 = sub_1D5C8C5B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F9610(uint64_t a1)
{
  v2 = sub_1D5C8C5B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F9658()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65F9714(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65F97BC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65F9874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66637F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65F98A4(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7465736E75;
  v4 = 0xE700000000000000;
  v5 = 0x74697265686E69;
  if (*v1 != 2)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6564646968;
    v2 = 0xE600000000000000;
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

uint64_t FormatVisualEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v9 = v2;
  if (!v2)
  {
    v10 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v5;
    v14 = v8;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      v18 = v73;
      while (--v17)
      {
        v19 = v16 + 2;
        v20 = *v16;
        v16 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v9 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51180D0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v14, v5);
          goto LABEL_15;
        }
      }
    }

    sub_1D66D3030();
    v70 = 0;
    v71 = 0;
    sub_1D726431C();
    if (v72 > 1u)
    {
      v23 = v35;
      v24 = v10;
      if (v72 != 2)
      {
        (*(v73 + 8))(v14, v13);
        sub_1D66D3084(&v59);
LABEL_20:
        v29 = v68;
        *(v23 + 128) = v67;
        *(v23 + 144) = v29;
        *(v23 + 160) = v69;
        v30 = v64;
        *(v23 + 64) = v63;
        *(v23 + 80) = v30;
        v31 = v66;
        *(v23 + 96) = v65;
        *(v23 + 112) = v31;
        v32 = v60;
        *v23 = v59;
        *(v23 + 16) = v32;
        v33 = v62;
        *(v23 + 32) = v61;
        *(v23 + 48) = v33;
        v27 = v24;
        return __swift_destroy_boxed_opaque_existential_1(v27);
      }

      v47 = xmmword_1D7279980;
      sub_1D66D30AC();
      sub_1D726431C();
      (*(v73 + 8))(v14, v13);
      v44 = v56;
      v45 = v57;
      v46 = v58;
      v40 = v52;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      v36 = v48;
      v37 = v49;
      v38 = v50;
      v39 = v51;
      sub_1D66D3100(&v36);
      v67 = v44;
      v68 = v45;
      v69 = v46;
      v63 = v40;
      v64 = v41;
      v65 = v42;
      v66 = v43;
      v59 = v36;
      v60 = v37;
      v26 = v38;
      v25 = v39;
    }

    else
    {
      v23 = v35;
      v24 = v10;
      if (v72)
      {
        v36 = xmmword_1D7279980;
        sub_1D66D312C();
        sub_1D726431C();
        (*(v73 + 8))(v14, v13);
        LOWORD(v48) = v47;
        sub_1D66D3180(&v48);
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF12788, sub_1D66D31AC, &type metadata for FormatBlurEffectStyle, type metadata accessor for FormatValue);
        v36 = xmmword_1D7279980;
        sub_1D66D3200();
        sub_1D726431C();
        (*(v73 + 8))(v14, v13);
        LOBYTE(v48) = v47;
        sub_1D66D3290(&v48);
      }

      v67 = v56;
      v68 = v57;
      v69 = v58;
      v63 = v52;
      v64 = v53;
      v65 = v54;
      v66 = v55;
      v59 = v48;
      v60 = v49;
      v26 = v50;
      v25 = v51;
    }

    v61 = v26;
    v62 = v25;
    goto LABEL_20;
  }

  v10 = a1;
LABEL_15:
  sub_1D61E4FBC(v10, v9);
  swift_willThrow();

  v27 = v10;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t FormatVisualEffect.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = v57 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v57 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v57 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = sub_1D5C30408();
  v61 = v22;
  sub_1D5D2EE70(&type metadata for FormatVisualEffect, &type metadata for FormatCodingKeys, v26, v24, &type metadata for FormatVisualEffect, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v23, v22, v25, &off_1F51F6C18);
  v27 = *(v2 + 144);
  v59[8] = *(v2 + 128);
  v59[9] = v27;
  v60 = *(v2 + 160);
  v28 = *(v2 + 80);
  v59[4] = *(v2 + 64);
  v59[5] = v28;
  v29 = *(v2 + 112);
  v59[6] = *(v2 + 96);
  v59[7] = v29;
  v30 = *(v2 + 16);
  v59[0] = *v2;
  v59[1] = v30;
  v31 = *(v2 + 48);
  v59[2] = *(v2 + 32);
  v59[3] = v31;
  v32 = sub_1D62B4E2C(v59);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v38 = sub_1D5D04BC4(v59);
      v39 = *(v38 + 144);
      v57[8] = *(v38 + 128);
      v57[9] = v39;
      v58 = *(v38 + 160);
      v40 = *(v38 + 80);
      v57[4] = *(v38 + 64);
      v57[5] = v40;
      v41 = *(v38 + 112);
      v57[6] = *(v38 + 96);
      v57[7] = v41;
      v42 = *(v38 + 16);
      v57[0] = *v38;
      v57[1] = v42;
      v43 = *(v38 + 48);
      v57[2] = *(v38 + 32);
      v57[3] = v43;
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCC90);
      v46 = v56;
      (*(*(v44 - 8) + 16))(v56, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v61;
      sub_1D63A6F88(2, v57, v46);
      v37 = v46;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCC90);
      (*(*(v53 - 8) + 16))(v7, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v61;
      sub_1D6421ADC(3, v7);
      v37 = v7;
    }
  }

  else if (v32)
  {
    v47 = sub_1D5D04BC4(v59);
    v48 = *v47;
    v49 = v47[1];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v50 = sub_1D725BD1C();
    v51 = __swift_project_value_buffer(v50, qword_1EDFFCE38);
    (*(*(v50 - 8) + 16))(v14, v51, v50);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v52 = v48 | (v49 << 8);
    v36 = v61;
    sub_1D63A6DF4(1, v52, v14);
    v37 = v14;
  }

  else
  {
    v33 = *sub_1D5D04BC4(v59);
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
    (*(*(v34 - 8) + 16))(v18, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v61;
    sub_1D63A6C20(0, v33, v18);
    v37 = v18;
  }

  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v36, sub_1D5D30DC4);
}

uint64_t sub_1D65FA4FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65FA5C0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65FA670(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65FA730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663B80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65FA760(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1920298082;
  v4 = 0xE500000000000000;
  v5 = 0x7373616C67;
  if (*v1 != 2)
  {
    v5 = 0x6F72477373616C67;
    v4 = 0xEA00000000007075;
  }

  if (*v1)
  {
    v3 = 0x7262695672756C62;
    v2 = 0xEC00000079636E61;
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

uint64_t FormatWeatherBinding.Command.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Command, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatWeatherBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v11, v9, v12, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDE0);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641F730(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatWeatherBinding.Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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
          *(v21 + 16) = &unk_1F5118170;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D66D330C();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v26 > 1u)
    {
      v23 = v29;
      if (v26 == 2)
      {
        v26 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | 0x20;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | 0x30;
      }
    }

    else
    {
      v23 = v29;
      if (v26)
      {
        v26 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | 0x10;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28;
      }
    }

    *v23 = v24;
    *(v23 + 16) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWeatherBinding.Temperature.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 8);
  v40 = *v1;
  v41 = v23;
  v24 = *(v1 + 16);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Temperature, &type metadata for FormatCodingKeys, v28, v25, &type metadata for FormatWeatherBinding.Temperature, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v26, v22, v27, &off_1F51F6BF8);
  v29 = (v24 >> 4) & 3;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD18);
      (*(*(v33 - 8) + 16))(v10, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A19E4(2, v40, v41, v24 & 0xCF, v10);
      v32 = v10;
    }

    else
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD18);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A19E4(3, v40, v41, v24 & 0xCF, v6);
      v32 = v6;
    }
  }

  else if (v29)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD18);
    (*(*(v35 - 8) + 16))(v14, v36, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A19E4(1, v40, v41, v24 & 0xCF, v14);
    v32 = v14;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
    (*(*(v30 - 8) + 16))(v18, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A19E4(0, v40, v41, v24, v18);
    v32 = v18;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatWeatherBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = v6;
    v12 = v30;
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
          *(v22 + 16) = &unk_1F51181C0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66D3360();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27 <= 2u)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v27 = xmmword_1D7279980;
          sub_1D61D3D04();
          sub_1D726427C();
          (*(v11 + 8))(v15, v5);
          v24 = v28;
          v25 = v29;
          v26 = 1;
        }

        else
        {
          v27 = xmmword_1D7279980;
          sub_1D61D3D04();
          sub_1D726427C();
          (*(v11 + 8))(v15, v5);
          v24 = v28;
          v25 = v29;
          v26 = 2;
        }
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v26 = 0;
        v24 = v28;
        v25 = v29;
      }

      goto LABEL_25;
    }

    if (v27 > 4u)
    {
      if (v27 == 5)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = xmmword_1D728CF30;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = xmmword_1D7297410;
      }
    }

    else
    {
      if (v27 == 3)
      {
        v27 = xmmword_1D7279980;
        sub_1D61D3D04();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v24 = v28;
        v25 = v29;
        v26 = 3;
LABEL_25:
        *v12 = v24;
        *(v12 + 16) = v25;
        *(v12 + 17) = v26;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v15, v5);
      v25 = 0;
      v24 = 0uLL;
    }

    v26 = 4;
    goto LABEL_25;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWeatherBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v58 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v60 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57 - v26;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v1 + 8);
  *&v61 = *v1;
  *(&v61 + 1) = v32;
  v62 = *(v1 + 16);
  v33 = *(v1 + 17);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = sub_1D5C30408();
  v64 = v31;
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Text, &type metadata for FormatCodingKeys, v37, v34, &type metadata for FormatWeatherBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v35, v31, v36, &off_1F51F6BF8);
  if (v33 <= 1)
  {
    if (v33)
    {
      v40 = v64;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD18);
      (*(*(v48 - 8) + 16))(v23, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6438A04(1, v61, *(&v61 + 1), v62, v23);
      v43 = v23;
    }

    else
    {
      v40 = v64;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD18);
      (*(*(v41 - 8) + 16))(v27, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6438A04(0, v61, *(&v61 + 1), v62, v27);
      v43 = v27;
    }
  }

  else if (v33 == 2)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD18);
    (*(*(v44 - 8) + 16))(v19, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v40 = v64;
    sub_1D6438A04(2, v61, *(&v61 + 1), v62, v19);
    v43 = v19;
  }

  else
  {
    if (v33 == 3)
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCD00);
      (*(*(v38 - 8) + 16))(v15, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v40 = v64;
      sub_1D6438A04(3, v61, *(&v61 + 1), v62, v15);
    }

    else if (v61 != 0 || v62)
    {
      if (v61 != 1 || v62)
      {
        v40 = v64;
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v54 = sub_1D725BD1C();
        v55 = __swift_project_value_buffer(v54, qword_1EDFFCDE0);
        v15 = v59;
        (*(*(v54 - 8) + 16))(v59, v55, v54);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 6;
      }

      else
      {
        v40 = v64;
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD18);
        v15 = v58;
        (*(*(v51 - 8) + 16))(v58, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 5;
      }

      v56 = v63;
      sub_1D641F874(v53, v15);
      if (!v56)
      {
        v43 = v15;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCD18);
      v15 = v60;
      (*(*(v46 - 8) + 16))(v60, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v40 = v64;
      sub_1D641F874(4, v15);
    }

    v43 = v15;
  }

LABEL_23:
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v40, sub_1D5D30DC4);
}

uint64_t FormatWeatherConditionCode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v245 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v244 = &v197 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v243 = &v197 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v242 = &v197 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v239 = &v197 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v238 = &v197 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v237 = &v197 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v241 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v235 = &v197 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v240 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v234 = &v197 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v233 = &v197 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v232 = &v197 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v236 = &v197 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v231 = &v197 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v230 = &v197 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v229 = &v197 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v228 = &v197 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v227 = &v197 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v226 = &v197 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v225 = &v197 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v224 = &v197 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v223 = &v197 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v222 = &v197 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v221 = &v197 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v220 = &v197 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v219 = &v197 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v218 = &v197 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v216 = &v197 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v215 = &v197 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v214 = &v197 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v213 = &v197 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v211 = &v197 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v217 = &v197 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v208 = &v197 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v207 = &v197 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v205 = &v197 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v212 = &v197 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v210 = &v197 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v209 = &v197 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v203 = &v197 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v206 = &v197 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v202 = &v197 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v201 = &v197 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v204 = &v197 - v137;
  MEMORY[0x1EEE9AC00](v138, v139);
  v200 = &v197 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v144 = &v197 - v143;
  v145 = *v1;
  v246 = a1;
  v247 = v145;
  v146 = a1[3];
  v147 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v146);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v148 = sub_1D725BD1C();
  v149 = __swift_project_value_buffer(v148, qword_1EDFFCD18);
  v150 = *(*(v148 - 8) + 16);
  v150(v144, v149, v148);
  v151 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v152 = v248;
  sub_1D5D2BEC4(v144, sub_1D5B4AA6C, 0, v146, v147);
  if (v152)
  {
    return sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
  }

  v199 = v150;
  v248 = v151;
  sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
  v154 = v246;
  v155 = v246[4];
  v198 = v246[3];
  v156 = __swift_project_boxed_opaque_existential_1(v246, v198);
  v157 = v247;
  v158 = v148;
  v159 = v149;
  switch(v247)
  {
    case 1:
      v245 = v156;
      v164 = v148;
      v179 = v149;
      sub_1D5B58478(0);
      v167 = *(v180 + 48);
      v168 = v204;
      v169 = &v204[*(v180 + 64)];
      v170 = v199;
      v199(v204, v179, v164);
      if (qword_1EDF31F08 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_68;
    case 2:
      v160 = v201;
      v199(v201, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 3:
      v160 = v202;
      v199(v202, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 4:
      v245 = v156;
      v164 = v148;
      v173 = v149;
      sub_1D5B58478(0);
      v167 = *(v174 + 48);
      v168 = v206;
      v169 = &v206[*(v174 + 64)];
      v170 = v199;
      v199(v206, v173, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 5:
      v160 = v203;
      v199(v203, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 6:
      v245 = v156;
      v164 = v148;
      v181 = v149;
      sub_1D5B58478(0);
      v167 = *(v182 + 48);
      v168 = v209;
      v169 = &v209[*(v182 + 64)];
      v170 = v199;
      v199(v209, v181, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 7:
      v245 = v156;
      v164 = v148;
      v177 = v149;
      sub_1D5B58478(0);
      v167 = *(v178 + 48);
      v168 = v210;
      v169 = &v210[*(v178 + 64)];
      v170 = v199;
      v199(v210, v177, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 8:
      v245 = v156;
      v164 = v148;
      v183 = v149;
      sub_1D5B58478(0);
      v167 = *(v184 + 48);
      v168 = v212;
      v169 = &v212[*(v184 + 64)];
      v170 = v199;
      v199(v212, v183, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 9:
      v160 = v205;
      v199(v205, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 10:
      v160 = v207;
      v199(v207, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 11:
      v160 = v208;
      v199(v208, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 12:
      v245 = v156;
      v164 = v148;
      v175 = v149;
      sub_1D5B58478(0);
      v167 = *(v176 + 48);
      v168 = v217;
      v169 = &v217[*(v176 + 64)];
      v170 = v199;
      v199(v217, v175, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 13:
      v160 = v211;
      v199(v211, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 14:
      v160 = v213;
      v199(v213, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 15:
      v160 = v214;
      v199(v214, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 16:
      v160 = v215;
      v199(v215, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 17:
      v160 = v216;
      v199(v216, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 18:
      v160 = v218;
      v199(v218, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 19:
      v160 = v219;
      v199(v219, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 20:
      v160 = v220;
      v199(v220, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 21:
      v160 = v221;
      v199(v221, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 22:
      v160 = v222;
      v199(v222, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 23:
      v160 = v223;
      v199(v223, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 24:
      v160 = v224;
      v199(v224, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 25:
      v160 = v225;
      v199(v225, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 26:
      v160 = v226;
      v199(v226, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 27:
      v160 = v227;
      v199(v227, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 28:
      v160 = v228;
      v199(v228, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 29:
      v160 = v229;
      v199(v229, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 30:
      v160 = v230;
      v199(v230, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 31:
      v160 = v231;
      v199(v231, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 32:
      v245 = v156;
      v164 = v148;
      v185 = v149;
      sub_1D5B58478(0);
      v167 = *(v186 + 48);
      v168 = v236;
      v169 = &v236[*(v186 + 64)];
      v170 = v199;
      v199(v236, v185, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 33:
      v160 = v232;
      v199(v232, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 34:
      v160 = v233;
      v199(v233, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 35:
      v160 = v234;
      v199(v234, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 36:
      v245 = v156;
      v164 = v148;
      v165 = v149;
      sub_1D5B58478(0);
      v167 = *(v166 + 48);
      v168 = v240;
      v169 = &v240[*(v166 + 64)];
      v170 = v199;
      v199(v240, v165, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 37:
      v160 = v235;
      v199(v235, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 38:
      v245 = v156;
      v164 = v148;
      v194 = v149;
      sub_1D5B58478(0);
      v167 = *(v195 + 48);
      v168 = v241;
      v169 = &v241[*(v195 + 64)];
      v170 = v199;
      v199(v241, v194, v164);
      if (qword_1EDF31F08 == -1)
      {
        goto LABEL_68;
      }

LABEL_73:
      swift_once();
LABEL_68:
      v196 = __swift_project_value_buffer(v164, qword_1EDFFCDE0);
      v170(v168 + v167, v196, v164);
      *v169 = 0;
      *(v169 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v168, sub_1D5B4AA6C, 0, v198, v155);
      v193 = v168;
      v157 = v247;
      goto LABEL_72;
    case 39:
      v160 = v237;
      v199(v237, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 40:
      v160 = v238;
      v199(v238, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 41:
      v160 = v239;
      v199(v239, v159, v148);
      swift_storeEnumTagMultiPayload();
      goto LABEL_70;
    case 42:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v158 = v148;
      }

      v191 = v158;
      v192 = __swift_project_value_buffer(v158, qword_1EDFFCDE0);
      v163 = v242;
      v199(v242, v192, v191);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
    case 43:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v158 = v148;
      }

      v161 = v158;
      v162 = __swift_project_value_buffer(v158, qword_1EDFFCDE0);
      v163 = v243;
      v199(v243, v162, v161);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
    case 44:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v158 = v148;
      }

      v171 = v158;
      v172 = __swift_project_value_buffer(v158, qword_1EDFFCDE0);
      v163 = v244;
      v199(v244, v172, v171);
      swift_storeEnumTagMultiPayload();
LABEL_63:
      sub_1D5D2BEC4(v163, sub_1D5B4AA6C, 0, v198, v155);
      v193 = v163;
      goto LABEL_72;
    case 45:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v158 = v148;
      }

      v187 = v158;
      v188 = __swift_project_value_buffer(v158, qword_1EDFFCDE0);
      v189 = v245;
      v199(v245, v188, v187);
      swift_storeEnumTagMultiPayload();
      v160 = v189;
      v190 = v189;
      goto LABEL_71;
    default:
      v160 = v200;
      v199(v200, v159, v148);
      swift_storeEnumTagMultiPayload();
LABEL_70:
      v190 = v160;
LABEL_71:
      sub_1D5D2BEC4(v190, sub_1D5B4AA6C, 0, v198, v155);
      v193 = v160;
LABEL_72:
      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v154, v154[3]);
      sub_1D7264B3C();
      v250 = v157;
      FormatWeatherConditionCode.rawValue.getter();
      __swift_mutable_project_boxed_opaque_existential_1(v249, v249[3]);
      sub_1D726473C();

      result = __swift_destroy_boxed_opaque_existential_1(v249);
      break;
  }

  return result;
}

uint64_t FormatWebEmbedBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.Action, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatWebEmbedBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v11, v9, v12, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCE8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641DE44(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatWebEmbedBinding.Bool.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v79 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v76 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v75 - v36;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v2;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v45 = sub_1D5C30408();
  v82 = v41;
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.Bool, &type metadata for FormatCodingKeys, v46, v43, &type metadata for FormatWebEmbedBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v44, v41, v45, &off_1F51F6C78);
  if (v42 > 4)
  {
    if (v42 <= 6)
    {
      if (v42 == 5)
      {
        v47 = v82;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD68);
        (*(*(v58 - 8) + 16))(v19, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 5;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCD68);
        v19 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 6;
      }
    }

    else
    {
      if (v42 == 7)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v64 = sub_1D725BD1C();
        v65 = __swift_project_value_buffer(v64, qword_1EDFFCD68);
        v19 = v79;
        (*(*(v64 - 8) + 16))(v79, v65, v64);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 7;
        v66 = v19;
        v47 = v82;
        goto LABEL_42;
      }

      if (v42 == 8)
      {
        v47 = v82;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCD68);
        v19 = v80;
        (*(*(v52 - 8) + 16))(v80, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 8;
      }

      else
      {
        v47 = v82;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD68);
        v19 = v81;
        (*(*(v69 - 8) + 16))(v81, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = 9;
      }
    }

    v66 = v19;
LABEL_42:
    sub_1D641E0DC(v54, v66);
    v57 = v19;
LABEL_43:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
  }

  if (v42 <= 1)
  {
    if (v42)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCCE8);
      (*(*(v71 - 8) + 16))(v33, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641E0DC(1, v33);
      v57 = v33;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD30);
      (*(*(v55 - 8) + 16))(v37, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v82;
      sub_1D641E0DC(0, v37);
      v57 = v37;
    }

    goto LABEL_43;
  }

  if (v42 != 2)
  {
    if (v42 == 3)
    {
      v47 = v82;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCDE0);
      v50 = v76;
      (*(*(v48 - 8) + 16))(v76, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 3;
    }

    else
    {
      v47 = v82;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD80);
      v50 = v77;
      (*(*(v67 - 8) + 16))(v77, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    sub_1D641E0DC(v51, v50);
    v57 = v50;
    goto LABEL_43;
  }

  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCDE0);
  (*(*(v60 - 8) + 16))(v29, v61, v60);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v62 = v82;
  sub_1D641E0DC(2, v29);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v62, sub_1D5D30DC4);
}

uint64_t FormatWebEmbedBinding.SourceItemTip.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.SourceItemTip, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatWebEmbedBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v11, v9, v12, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE68);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641E384(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D65FEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D65FEF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t FormatWebEmbedBinding.Text.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    v11 = v7;
    v12 = v25;
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
          *(v21 + 16) = &unk_1F5118300;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66D345C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      (*(v11 + 8))(v10, v6);
      v23 = -4;
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66D34B0();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWebEmbedBinding.Text.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.Text, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWebEmbedBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v17, v14, v18, &off_1F51F6C38);
  if (v15 <= 0xFB)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDE0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639D33C(0, v15, v10);
    v22 = v10;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641DF88(1, v6);
    v22 = v6;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatWebEmbedNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v435 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v441 = &v435 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v442 = &v435 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v443 = &v435 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v444 = &v435 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v445 = &v435 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v446 = &v435 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v447 = &v435 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v448 = &v435 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v449 = &v435 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v450 = &v435 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v451 = &v435 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v452 = &v435 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v453 = &v435 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v454 = &v435 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  *&v463 = &v435 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v435 - v56;
  sub_1D66D3AE8(0);
  *&v464 = v58;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v435 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  sub_1D5CCA9F8(0);
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EDF25538, sub_1D5CCA9F8, &unk_1D7321584);
  sub_1D5D2EE70(v4, v65, v67, v62, v4, v65, &type metadata for FormatVersions.JazzkonC, v63, v61, v66, &off_1F51F6C78);
  swift_beginAccess();
  v69 = v2[2];
  v68 = v2[3];
  v462 = v2;
  v70 = qword_1EDF31EB0;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = sub_1D725BD1C();
  v72 = __swift_project_value_buffer(v71, qword_1EDFFCD30);
  v73 = *(v71 - 8);
  v74 = *(v73 + 16);
  v75 = v73 + 16;
  v74(v57, v72, v71);
  v461 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v76 = sub_1D725895C();
  v77 = (*(*(v76 - 8) + 48))(v8, 1, v76);
  v459 = v71;
  v458 = v74;
  v457 = v75;
  if (v77 != 1)
  {
    v99 = v72;
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_13;
  }

  v440 = v69;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v78 = v464;
  v79 = &v61[*(v464 + 44)];
  v81 = *v79;
  v80 = *(v79 + 1);
  LOBYTE(v466) = 0;
  v82 = v61;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  *(v83 + 32) = v466;
  *(v83 + 40) = v81;
  *(v83 + 48) = v80;
  sub_1D5E194A8(0);
  v85 = v84;
  sub_1D5B58B84(&qword_1EDF03578, sub_1D5E194A8, MEMORY[0x1E69E6F60]);

  v455 = v85;
  v86 = sub_1D72647CC();
  LOBYTE(v466) = 0;
  v87 = swift_allocObject();
  *(v87 + 24) = 0;
  *(v87 + 32) = 0;
  *(v87 + 16) = v86;
  *(v87 + 40) = v466;
  v88 = &v82[*(v78 + 36)];
  v89 = *(v88 + 3);
  v90 = *(v88 + 4);
  v91 = __swift_project_boxed_opaque_existential_1(v88, v89);
  v456 = &v435;
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v435 - 4) = sub_1D5B4AA6C;
  *(&v435 - 3) = 0;
  v433 = sub_1D66D3B7C;
  v434 = v83;
  v95 = v465;
  v97 = sub_1D5D2F7A4(v57, sub_1D615B49C, v96, sub_1D615B4A4, (&v435 - 6), v89, v90);
  v465 = v95;
  if (!v95)
  {
    v100 = v97;

    if (v100)
    {
      v466 = 0uLL;
      LOBYTE(v467) = 0;
      v480 = v440;
      v481 = v68;
      v61 = v82;
      v101 = v465;
      sub_1D72647EC();

      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
      v465 = v101;
      if (v101)
      {
        v98 = v82;
        return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
      }

      v99 = v72;
    }

    else
    {
      v99 = v72;
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

      v61 = v82;
    }

    v74 = v458;
    v71 = v459;
LABEL_13:
    v102 = v463;
    v103 = v464;
    v104 = v462[4];
    v437 = v99;
    v74(v463, v99, v71);
    swift_storeEnumTagMultiPayload();
    v480 = v104;
    v464 = xmmword_1D728CF30;
    v466 = xmmword_1D728CF30;
    LOBYTE(v467) = 0;
    v105 = &v61[*(v103 + 44)];
    v106 = v61;
    v108 = *v105;
    v107 = *(v105 + 1);
    LOBYTE(v479) = 0;
    v109 = swift_allocObject();
    v456 = &v435;
    *(v109 + 16) = v464;
    *(v109 + 32) = v479;
    *(v109 + 40) = v108;
    *(v109 + 48) = v107;
    MEMORY[0x1EEE9AC00](v109, v110);
    v111 = v102;
    v455 = &v435 - 6;
    *(&v435 - 4) = sub_1D5B4AA6C;
    *(&v435 - 3) = 0;
    v433 = sub_1D6708C34;
    v434 = v112;
    LOBYTE(v479) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v464;
    *(v113 + 32) = v479;
    v438 = v108;
    *(v113 + 40) = v108;
    *(v113 + 48) = v107;
    v114 = v106;
    v115 = v111;
    sub_1D5E194A8(0);
    v117 = v116;
    v118 = sub_1D5B58B84(&qword_1EDF03578, sub_1D5E194A8, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v439 = v117;
    v440 = v118;
    v119 = sub_1D72647CC();
    LOBYTE(v479) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v464;
    *(v120 + 40) = v479;
    v121 = (v114 + *(v103 + 36));
    v122 = v121[3];
    v123 = v121[4];
    v124 = __swift_project_boxed_opaque_existential_1(v121, v122);
    MEMORY[0x1EEE9AC00](v124, v125);
    MEMORY[0x1EEE9AC00](v126, v127);
    v128 = v455;
    *(&v435 - 4) = sub_1D615B4A4;
    *(&v435 - 3) = v128;
    v433 = sub_1D6708C34;
    v434 = v113;
    v129 = v465;
    sub_1D5D2BC70(v115, sub_1D615B49C, v130, sub_1D615B4A4, (&v435 - 6), v122, v123);
    v465 = v129;
    v460 = v114;
    if (v129)
    {
      v131 = v115;
LABEL_15:
      sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);

LABEL_37:
      v98 = v460;
      return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
    }

    v436 = v121;
    *&v464 = v107;

    sub_1D66D3C0C();
    v132 = v465;
    sub_1D72647EC();
    v465 = v132;
    if (v132)
    {
      v133 = &v482;
LABEL_18:
      sub_1D5D2CFE8(*(v133 - 32), type metadata accessor for FormatVersionRequirement);

      goto LABEL_37;
    }

    sub_1D5D2CFE8(v463, type metadata accessor for FormatVersionRequirement);

    v134 = v462;
    v135 = v462[5];
    v136 = v462[6];
    v137 = v454;
    v458(v454, v437, v459);
    swift_storeEnumTagMultiPayload();
    v463 = xmmword_1D7297410;
    v466 = xmmword_1D7297410;
    LOBYTE(v467) = 0;
    LOBYTE(v480) = 0;
    v138 = swift_allocObject();
    v140 = v138;
    *(v138 + 16) = v463;
    *(v138 + 32) = v480;
    v141 = v438;
    v142 = v464;
    *(v138 + 40) = v438;
    *(v138 + 48) = v142;
    if (v136)
    {
      v456 = &v435;
      v480 = v135;
      v481 = v136;
      MEMORY[0x1EEE9AC00](v138, v139);
      *(&v435 - 4) = sub_1D5B4AA6C;
      *(&v435 - 3) = 0;
      v433 = sub_1D6708C34;
      v434 = v140;
      LOBYTE(v479) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v463;
      *(v143 + 32) = v479;
      *(v143 + 40) = v141;
      *(v143 + 48) = v142;
      swift_retain_n();

      v144 = sub_1D72647CC();
      LOBYTE(v479) = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = v144;
      *(v145 + 24) = v463;
      *(v145 + 40) = v479;
      v146 = v436[3];
      v147 = v436[4];
      v148 = __swift_project_boxed_opaque_existential_1(v436, v146);
      MEMORY[0x1EEE9AC00](v148, v149);
      MEMORY[0x1EEE9AC00](v150, v151);
      *(&v435 - 4) = sub_1D615B4A4;
      *(&v435 - 3) = (&v435 - 6);
      v433 = sub_1D6708C34;
      v434 = v143;
      v152 = v465;
      v154 = sub_1D5D2F7A4(v137, sub_1D615B49C, v153, sub_1D615B4A4, (&v435 - 6), v146, v147);
      v465 = v152;
      if (v152)
      {

LABEL_22:
        v155 = v454;
LABEL_36:
        sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
        goto LABEL_37;
      }

      v156 = v154;

      if (v156)
      {
        v157 = v465;
        sub_1D72647EC();
        v134 = v462;
        v465 = v157;
        if (v157)
        {

          goto LABEL_22;
        }

        sub_1D5D2CFE8(v454, type metadata accessor for FormatVersionRequirement);
        v142 = v464;
      }

      else
      {

        sub_1D5D2CFE8(v454, type metadata accessor for FormatVersionRequirement);
        v142 = v464;
        v134 = v462;
      }
    }

    else
    {

      sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
    }

    v158 = v134[7];
    v159 = v453;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v455 = __swift_project_value_buffer(v459, qword_1EDFFCD68);
    (v458)(v159);
    swift_storeEnumTagMultiPayload();
    v463 = xmmword_1D72BAA60;
    v466 = xmmword_1D72BAA60;
    LOBYTE(v467) = 0;
    LOBYTE(v480) = 0;
    v160 = swift_allocObject();
    v162 = v160;
    *(v160 + 16) = v463;
    *(v160 + 32) = v480;
    v163 = v438;
    *(v160 + 40) = v438;
    *(v160 + 48) = v142;
    if (v158)
    {
      v456 = &v435;
      v480 = v158;
      MEMORY[0x1EEE9AC00](v160, v161);
      *(&v435 - 4) = sub_1D5B4AA6C;
      *(&v435 - 3) = 0;
      v433 = sub_1D6708C34;
      v434 = v162;
      LOBYTE(v479) = 0;
      v164 = swift_allocObject();
      *(v164 + 16) = v463;
      *(v164 + 32) = v479;
      *(v164 + 40) = v163;
      *(v164 + 48) = v142;
      swift_retain_n();

      v165 = sub_1D72647CC();
      LOBYTE(v479) = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v165;
      *(v166 + 24) = v463;
      *(v166 + 40) = v479;
      v167 = v436[3];
      v168 = v436[4];
      v169 = __swift_project_boxed_opaque_existential_1(v436, v167);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      *(&v435 - 4) = sub_1D615B4A4;
      *(&v435 - 3) = (&v435 - 6);
      v433 = sub_1D6708C34;
      v434 = v164;
      v173 = v465;
      v175 = sub_1D5D2F7A4(v453, sub_1D615B49C, v174, sub_1D615B4A4, (&v435 - 6), v167, v168);
      v465 = v173;
      if (v173)
      {

LABEL_34:
        v176 = &v478;
LABEL_35:
        v155 = *(v176 - 32);
        goto LABEL_36;
      }

      v178 = v175;

      if (v178)
      {
        type metadata accessor for FormatJsonConfig();
        sub_1D5B58B84(&unk_1EDF11310, type metadata accessor for FormatJsonConfig, &protocol conformance descriptor for FormatJsonConfig);
        v179 = v465;
        sub_1D72647EC();
        v142 = v464;
        v180 = v462;
        v465 = v179;
        if (v179)
        {

          goto LABEL_34;
        }

LABEL_45:

        sub_1D5D2CFE8(v453, type metadata accessor for FormatVersionRequirement);
        v181 = v180[8];
        v182 = v452;
        v458(v452, v437, v459);
        swift_storeEnumTagMultiPayload();
        v480 = v181;
        v463 = xmmword_1D72BAA70;
        v466 = xmmword_1D72BAA70;
        LOBYTE(v467) = 0;
        LOBYTE(v479) = 0;
        v183 = swift_allocObject();
        v456 = &v435;
        *(v183 + 16) = v463;
        *(v183 + 32) = v479;
        v184 = v438;
        *(v183 + 40) = v438;
        *(v183 + 48) = v142;
        MEMORY[0x1EEE9AC00](v183, v185);
        *(&v435 - 4) = sub_1D5B4AA6C;
        *(&v435 - 3) = 0;
        v433 = sub_1D6708C34;
        v434 = v186;
        LOBYTE(v479) = 0;
        v187 = swift_allocObject();
        *(v187 + 16) = v463;
        *(v187 + 32) = v479;
        *(v187 + 40) = v184;
        *(v187 + 48) = v142;
        swift_retain_n();
        v188 = sub_1D72647CC();
        LOBYTE(v479) = 0;
        v189 = swift_allocObject();
        *(v189 + 16) = v188;
        *(v189 + 24) = v463;
        *(v189 + 40) = v479;
        v190 = v436[3];
        v191 = v436[4];
        v192 = __swift_project_boxed_opaque_existential_1(v436, v190);
        MEMORY[0x1EEE9AC00](v192, v193);
        MEMORY[0x1EEE9AC00](v194, v195);
        *(&v435 - 4) = sub_1D615B4A4;
        *(&v435 - 3) = (&v435 - 6);
        v433 = sub_1D6708C34;
        v434 = v187;
        v196 = v465;
        sub_1D5D2BC70(v182, sub_1D615B49C, v197, sub_1D615B4A4, (&v435 - 6), v190, v191);
        v465 = v196;
        if (v196)
        {
          v131 = v182;
          goto LABEL_15;
        }

        sub_1D5CA1E90();
        v198 = v465;
        sub_1D72647EC();
        v465 = v198;
        if (v198)
        {
          v133 = &v477;
          goto LABEL_18;
        }

        sub_1D5D2CFE8(v452, type metadata accessor for FormatVersionRequirement);

        v199 = v462[9];
        v200 = v451;
        v201 = v459;
        v202 = v458;
        v458(v451, v455, v459);
        swift_storeEnumTagMultiPayload();
        v463 = xmmword_1D72BAA80;
        v466 = xmmword_1D72BAA80;
        LOBYTE(v467) = 0;
        LOBYTE(v480) = 0;
        v203 = swift_allocObject();
        v205 = v203;
        *(v203 + 16) = v463;
        *(v203 + 32) = v480;
        v206 = v438;
        v207 = v464;
        *(v203 + 40) = v438;
        *(v203 + 48) = v207;
        if (v199)
        {
          v480 = v199;
          MEMORY[0x1EEE9AC00](v203, v204);
          v209 = v208;
          *(&v435 - 4) = sub_1D5B4AA6C;
          *(&v435 - 3) = 0;
          v433 = sub_1D6708C34;
          v434 = v205;
          LOBYTE(v479) = 0;
          v210 = swift_allocObject();
          *(v210 + 16) = v463;
          *(v210 + 32) = v479;
          *(v210 + 40) = v206;
          *(v210 + 48) = v209;
          swift_retain_n();

          v211 = sub_1D72647CC();
          LOBYTE(v479) = 0;
          v212 = swift_allocObject();
          *(v212 + 16) = v211;
          *(v212 + 24) = v463;
          *(v212 + 40) = v479;
          v213 = v436[3];
          v214 = v436[4];
          v215 = __swift_project_boxed_opaque_existential_1(v436, v213);
          MEMORY[0x1EEE9AC00](v215, v216);
          MEMORY[0x1EEE9AC00](v217, v218);
          *(&v435 - 4) = sub_1D615B4A4;
          *(&v435 - 3) = (&v435 - 6);
          v433 = sub_1D6708C34;
          v434 = v210;
          v219 = v465;
          v221 = sub_1D5D2F7A4(v200, sub_1D615B49C, v220, sub_1D615B4A4, (&v435 - 6), v213, v214);
          v465 = v219;
          if (v219)
          {

LABEL_52:

            v155 = v200;
            goto LABEL_36;
          }

          v223 = v221;

          if ((v223 & 1) == 0)
          {

            v201 = v459;
            v202 = v458;
            v222 = v464;
LABEL_60:
            sub_1D5D2CFE8(v451, type metadata accessor for FormatVersionRequirement);
            v225 = v462;
            swift_beginAccess();
            v226 = v225[10];
            v227 = v450;
            v202(v450, v437, v201);
            swift_storeEnumTagMultiPayload();
            v228 = v436;
            if (*(v226 + 16))
            {
              LOBYTE(v466) = 0;
              v229 = swift_allocObject();
              v463 = xmmword_1D72BAA90;
              *(v229 + 16) = xmmword_1D72BAA90;
              *(v229 + 32) = v466;
              *(v229 + 40) = v438;
              *(v229 + 48) = v222;

              v230 = v460;
              v231 = sub_1D72647CC();
              LOBYTE(v466) = 0;
              v232 = swift_allocObject();
              *(v232 + 16) = v231;
              *(v232 + 24) = v463;
              *(v232 + 40) = v466;
              v233 = v228;
              v234 = v228[3];
              v235 = v228[4];
              v236 = __swift_project_boxed_opaque_existential_1(v233, v234);
              MEMORY[0x1EEE9AC00](v236, v237);
              MEMORY[0x1EEE9AC00](v238, v239);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v229;
              v240 = v465;
              v242 = sub_1D5D2F7A4(v227, sub_1D615B49C, v241, sub_1D615B4A4, (&v435 - 6), v234, v235);
              v465 = v240;
              if (v240)
              {
                sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);

                v98 = v230;
                return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
              }

              v243 = v242;

              if (v243)
              {
                v466 = v463;
                LOBYTE(v467) = 0;
                v479 = v226;
                sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
                sub_1D6659C88();
                v244 = v460;
                v245 = v465;
                sub_1D72647EC();
                v246 = v450;
                v465 = v245;
                if (v245)
                {

                  sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
                  v98 = v244;
                  return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
                }

                sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
                v202 = v458;
              }

              else
              {
                sub_1D5D2CFE8(v450, type metadata accessor for FormatVersionRequirement);

                v202 = v458;
              }

              v222 = v464;
            }

            else
            {
              sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);
            }

            v247 = v438;
            v248 = v462[11];
            v249 = v449;
            v202(v449, v437, v459);
            swift_storeEnumTagMultiPayload();
            v463 = xmmword_1D72BAAA0;
            v466 = xmmword_1D72BAAA0;
            LOBYTE(v467) = 0;
            LOBYTE(v479) = 0;
            v251 = swift_allocObject();
            *(v251 + 16) = v463;
            *(v251 + 32) = v479;
            *(v251 + 40) = v247;
            *(v251 + 48) = v222;
            if (v248)
            {
              v456 = &v435;
              v479 = v248;
              MEMORY[0x1EEE9AC00](v222, v250);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v251;
              LOBYTE(v477) = 0;
              v253 = v252;
              v254 = swift_allocObject();
              *(v254 + 16) = v463;
              *(v254 + 32) = v477;
              *(v254 + 40) = v247;
              *(v254 + 48) = v253;
              swift_retain_n();

              v255 = sub_1D72647CC();
              LOBYTE(v477) = 0;
              v256 = swift_allocObject();
              *(v256 + 16) = v255;
              *(v256 + 24) = v463;
              *(v256 + 40) = v477;
              v257 = v436[3];
              v258 = v436[4];
              v259 = __swift_project_boxed_opaque_existential_1(v436, v257);
              MEMORY[0x1EEE9AC00](v259, v260);
              MEMORY[0x1EEE9AC00](v261, v262);
              *(&v435 - 4) = sub_1D615B4A4;
              *(&v435 - 3) = (&v435 - 6);
              v433 = sub_1D6708C34;
              v434 = v254;
              v263 = v465;
              v265 = sub_1D5D2F7A4(v249, sub_1D615B49C, v264, sub_1D615B4A4, (&v435 - 6), v257, v258);
              v465 = v263;
              if (v263)
              {

LABEL_74:
                v176 = &v476;
                goto LABEL_35;
              }

              v267 = v265;

              if (v267)
              {
                type metadata accessor for FormatWebEmbedNodeStyle();
                sub_1D5B58B84(&qword_1EDF0D2F0, type metadata accessor for FormatWebEmbedNodeStyle, &protocol conformance descriptor for FormatWebEmbedNodeStyle);
                v268 = v465;
                sub_1D72647EC();
                v465 = v268;
                if (v268)
                {

                  goto LABEL_74;
                }
              }

              v266 = v459;
              v222 = v464;
              v249 = v449;
            }

            else
            {

              v266 = v459;
            }

            sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
            v269 = v462;
            swift_beginAccess();
            v270 = v269[12];
            v271 = v448;
            v458(v448, v437, v266);
            swift_storeEnumTagMultiPayload();
            if (v270)
            {
              LOBYTE(v466) = 0;
              v272 = swift_allocObject();
              v463 = xmmword_1D72BAAB0;
              *(v272 + 16) = xmmword_1D72BAAB0;
              *(v272 + 32) = v466;
              *(v272 + 40) = v438;
              *(v272 + 48) = v222;

              v273 = v460;
              v274 = sub_1D72647CC();
              LOBYTE(v466) = 0;
              v275 = swift_allocObject();
              *(v275 + 16) = v274;
              *(v275 + 24) = v463;
              *(v275 + 40) = v466;
              v276 = v436[3];
              v277 = v436[4];
              v278 = __swift_project_boxed_opaque_existential_1(v436, v276);
              MEMORY[0x1EEE9AC00](v278, v279);
              MEMORY[0x1EEE9AC00](v280, v281);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v272;
              v282 = v465;
              v284 = sub_1D5D2F7A4(v271, sub_1D615B49C, v283, sub_1D615B4A4, (&v435 - 6), v276, v277);
              v465 = v282;
              if (v282)
              {
                sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

LABEL_94:
                v98 = v273;
                return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
              }

              v285 = v284;

              if (v285)
              {
                v466 = v463;
                LOBYTE(v467) = 0;
                v477 = v270;
                v286 = v465;
                sub_1D72647EC();
                v465 = v286;
                if (v286)
                {
                  v176 = &v475;
                  goto LABEL_35;
                }
              }

              sub_1D5D2CFE8(v448, type metadata accessor for FormatVersionRequirement);
              v266 = v459;
              v222 = v464;
            }

            else
            {
              sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
            }

            v287 = v462;
            swift_beginAccess();
            v288 = v287[13];
            sub_1D5EB1500(v288);
            v289 = v458;
            v290 = v447;
            if (qword_1EDF31ED0 != -1)
            {
              swift_once();
            }

            v291 = __swift_project_value_buffer(v266, qword_1EDFFCD50);
            v289(v290, v291, v266);
            swift_storeEnumTagMultiPayload();
            if (v288 == 0x8000000000000000)
            {
              sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              LOBYTE(v466) = 0;
              v292 = swift_allocObject();
              v463 = xmmword_1D72BAAC0;
              *(v292 + 16) = xmmword_1D72BAAC0;
              *(v292 + 32) = v466;
              *(v292 + 40) = v438;
              *(v292 + 48) = v222;

              v273 = v460;
              v293 = sub_1D72647CC();
              LOBYTE(v466) = 0;
              v294 = swift_allocObject();
              *(v294 + 16) = v293;
              *(v294 + 24) = v463;
              *(v294 + 40) = v466;
              v295 = v436[3];
              v296 = v436[4];
              v297 = __swift_project_boxed_opaque_existential_1(v436, v295);
              MEMORY[0x1EEE9AC00](v297, v298);
              MEMORY[0x1EEE9AC00](v299, v300);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v292;
              v301 = v465;
              v303 = sub_1D5D2F7A4(v290, sub_1D615B49C, v302, sub_1D615B4A4, (&v435 - 6), v295, v296);
              v465 = v301;
              if (v301)
              {

                sub_1D5EB15C4(v288);
                sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
                goto LABEL_94;
              }

              v304 = v303;

              if (v304)
              {
                v466 = v463;
                LOBYTE(v467) = 0;
                v476 = v288;
                sub_1D5DF6A60();
                sub_1D72647EC();
                v465 = 0;
                v305 = v476;
              }

              else
              {
                v305 = v288;
              }

              sub_1D5EB15C4(v305);
              sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);
              v266 = v459;
              v289 = v458;
              v222 = v464;
            }

            v306 = v462;
            swift_beginAccess();
            v307 = *(v306 + 112);
            if (qword_1EDF31E98 != -1)
            {
              swift_once();
            }

            v308 = __swift_project_value_buffer(v266, qword_1EDFFCD00);
            v309 = v446;
            v289(v446, v308, v266);
            swift_storeEnumTagMultiPayload();
            if (v307)
            {
              sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              LOBYTE(v466) = 0;
              v310 = swift_allocObject();
              v463 = xmmword_1D72BAAD0;
              *(v310 + 16) = xmmword_1D72BAAD0;
              *(v310 + 32) = v466;
              *(v310 + 40) = v438;
              *(v310 + 48) = v222;

              v311 = sub_1D72647CC();
              LOBYTE(v466) = 0;
              v312 = swift_allocObject();
              *(v312 + 16) = v311;
              *(v312 + 24) = v463;
              *(v312 + 40) = v466;
              v313 = v436[3];
              v314 = v436[4];
              v315 = __swift_project_boxed_opaque_existential_1(v436, v313);
              MEMORY[0x1EEE9AC00](v315, v316);
              MEMORY[0x1EEE9AC00](v317, v318);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v310;
              v319 = v465;
              v321 = sub_1D5D2F7A4(v309, sub_1D615B49C, v320, sub_1D615B4A4, (&v435 - 6), v313, v314);
              v465 = v319;
              if (v319)
              {
                sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);

                goto LABEL_37;
              }

              v322 = v321;

              if (v322)
              {
                v466 = v463;
                LOBYTE(v467) = 0;
                LOBYTE(v473) = 0;
                v323 = v465;
                sub_1D72647EC();
                v465 = v323;
                if (v323)
                {
                  v176 = &v473;
                  goto LABEL_35;
                }
              }

              sub_1D5D2CFE8(v446, type metadata accessor for FormatVersionRequirement);
              v266 = v459;
              v289 = v458;
              v222 = v464;
            }

            v324 = v462[15];
            v325 = *(v462 + 128);
            v326 = v445;
            v289(v445, v437, v266);
            swift_storeEnumTagMultiPayload();
            v463 = xmmword_1D72BAAE0;
            v466 = xmmword_1D72BAAE0;
            LOBYTE(v467) = 0;
            LOBYTE(v473) = 0;
            v327 = swift_allocObject();
            v329 = v327;
            *(v327 + 16) = v463;
            *(v327 + 32) = v473;
            *(v327 + 40) = v438;
            *(v327 + 48) = v222;
            if (v325 <= 0xFD)
            {
              v473 = v324;
              LOBYTE(v474) = v325;
              MEMORY[0x1EEE9AC00](v327, v328);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v329;
              LOBYTE(v471) = 0;
              v331 = swift_allocObject();
              *(v331 + 16) = v463;
              *(v331 + 32) = v471;
              *(v331 + 40) = v438;
              *(v331 + 48) = v222;
              swift_retain_n();
              v332 = sub_1D72647CC();
              LOBYTE(v471) = 0;
              v333 = swift_allocObject();
              *(v333 + 16) = v332;
              *(v333 + 24) = v463;
              *(v333 + 40) = v471;
              v334 = v436[3];
              v335 = v436[4];
              v336 = __swift_project_boxed_opaque_existential_1(v436, v334);
              MEMORY[0x1EEE9AC00](v336, v337);
              MEMORY[0x1EEE9AC00](v338, v339);
              *(&v435 - 4) = sub_1D615B4A4;
              *(&v435 - 3) = (&v435 - 6);
              v433 = sub_1D6708C34;
              v434 = v331;
              v340 = v465;
              v342 = sub_1D5D2F7A4(v326, sub_1D615B49C, v341, sub_1D615B4A4, (&v435 - 6), v334, v335);
              v465 = v340;
              if (v340)
              {
                sub_1D5D2CFE8(v445, type metadata accessor for FormatVersionRequirement);

                goto LABEL_37;
              }

              v343 = v342;

              if (v343)
              {
                sub_1D5F8F434();
                v344 = v465;
                sub_1D72647EC();
                v465 = v344;
                if (v344)
                {
                  v133 = &v472;
                  goto LABEL_18;
                }
              }

              v330 = v464;
              v326 = v445;
            }

            else
            {

              v330 = v222;
            }

            sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

            v345 = v462[17];
            v346 = v462[18];
            v347 = v444;
            v458(v444, v455, v459);
            swift_storeEnumTagMultiPayload();
            v463 = xmmword_1D72BAAF0;
            v466 = xmmword_1D72BAAF0;
            LOBYTE(v467) = 0;
            LOBYTE(v473) = 0;
            v348 = swift_allocObject();
            v350 = v348;
            *(v348 + 16) = v463;
            *(v348 + 32) = v473;
            *(v348 + 40) = v438;
            *(v348 + 48) = v330;
            if (v346)
            {
              v473 = v345;
              v474 = v346;
              MEMORY[0x1EEE9AC00](v348, v349);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v350;
              LOBYTE(v471) = 0;
              v351 = swift_allocObject();
              *(v351 + 16) = v463;
              *(v351 + 32) = v471;
              *(v351 + 40) = v438;
              *(v351 + 48) = v330;
              swift_retain_n();

              v352 = sub_1D72647CC();
              LOBYTE(v471) = 0;
              v353 = swift_allocObject();
              *(v353 + 16) = v352;
              *(v353 + 24) = v463;
              *(v353 + 40) = v471;
              v354 = v436[3];
              v355 = v436[4];
              v356 = __swift_project_boxed_opaque_existential_1(v436, v354);
              MEMORY[0x1EEE9AC00](v356, v357);
              MEMORY[0x1EEE9AC00](v358, v359);
              *(&v435 - 4) = sub_1D615B4A4;
              *(&v435 - 3) = (&v435 - 6);
              v433 = sub_1D6708C34;
              v434 = v351;
              v360 = v465;
              v362 = sub_1D5D2F7A4(v347, sub_1D615B49C, v361, sub_1D615B4A4, (&v435 - 6), v354, v355);
              v465 = v360;
              if (v360)
              {

LABEL_121:
                v176 = (&v471 + 8);
                goto LABEL_35;
              }

              v363 = v362;

              if (v363)
              {
                v364 = v465;
                sub_1D72647EC();
                v465 = v364;
                if (v364)
                {

                  goto LABEL_121;
                }
              }

              sub_1D5D2CFE8(v444, type metadata accessor for FormatVersionRequirement);
            }

            else
            {

              sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);
            }

            v365 = v462;
            swift_beginAccess();
            v366 = v365[19];
            v367 = qword_1EDF31EA8;

            if (v367 != -1)
            {
              swift_once();
            }

            v368 = v459;
            v369 = __swift_project_value_buffer(v459, qword_1EDFFCD18);
            v458(v443, v369, v368);
            swift_storeEnumTagMultiPayload();
            if (*(v366 + 16))
            {
              LOBYTE(v466) = 0;
              v370 = swift_allocObject();
              v463 = xmmword_1D7282A80;
              *(v370 + 16) = xmmword_1D7282A80;
              *(v370 + 32) = v466;
              *(v370 + 40) = v438;
              *(v370 + 48) = v464;

              v371 = sub_1D72647CC();
              LOBYTE(v466) = 0;
              v372 = swift_allocObject();
              *(v372 + 16) = v371;
              *(v372 + 24) = v463;
              *(v372 + 40) = v466;
              v373 = v436[3];
              v374 = v436[4];
              v375 = __swift_project_boxed_opaque_existential_1(v436, v373);
              MEMORY[0x1EEE9AC00](v375, v376);
              MEMORY[0x1EEE9AC00](v377, v378);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v370;
              v379 = v465;
              v381 = sub_1D5D2F7A4(v443, sub_1D615B49C, v380, sub_1D615B4A4, (&v435 - 6), v373, v374);
              v465 = v379;
              if (v379)
              {

LABEL_132:
                v176 = &v471;
                goto LABEL_35;
              }

              v382 = v381;

              if (v382)
              {
                v383 = v465;
                sub_1D5E07BB8(v366, v460, 0xD, 0, 0);
                v465 = v383;
                if (v383)
                {

                  goto LABEL_132;
                }
              }
            }

            sub_1D5D2CFE8(v443, type metadata accessor for FormatVersionRequirement);
            v384 = v462[20];
            v385 = v462[21];
            v386 = v462[22];
            v387 = v462[23];
            v388 = v462[24];
            v389 = v462[25];
            if (qword_1EDF31F38 != -1)
            {
              swift_once();
            }

            v390 = v459;
            v391 = __swift_project_value_buffer(v459, qword_1EDFFCE38);
            v458(v442, v391, v390);
            swift_storeEnumTagMultiPayload();
            v463 = xmmword_1D72BAB00;
            v471 = xmmword_1D72BAB00;
            v472 = 0;
            LOBYTE(v466) = 0;
            v392 = swift_allocObject();
            v394 = v392;
            *(v392 + 16) = v463;
            *(v392 + 32) = v466;
            v395 = v464;
            *(v392 + 40) = v438;
            *(v392 + 48) = v395;
            if (v384)
            {
              v456 = &v435;
              *&v466 = v384;
              *(&v466 + 1) = v385;
              v467 = v386;
              v468 = v387;
              v469 = v388;
              v470 = v389;
              MEMORY[0x1EEE9AC00](v392, v393);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v394;
              v483 = 0;
              v396 = swift_allocObject();
              *(v396 + 16) = v463;
              *(v396 + 32) = v483;
              *(v396 + 40) = v438;
              *(v396 + 48) = v464;
              swift_retain_n();
              sub_1D5EB1D80(v384, v385, v386, v387, v388, v389);
              v397 = sub_1D72647CC();
              v483 = 0;
              v398 = swift_allocObject();
              *(v398 + 16) = v397;
              *(v398 + 24) = v463;
              *(v398 + 40) = v483;
              v399 = v436[3];
              v400 = v436[4];
              v401 = __swift_project_boxed_opaque_existential_1(v436, v399);
              MEMORY[0x1EEE9AC00](v401, v402);
              MEMORY[0x1EEE9AC00](v403, v404);
              *(&v435 - 4) = sub_1D615B4A4;
              *(&v435 - 3) = (&v435 - 6);
              v433 = sub_1D6708C34;
              v434 = v396;
              v405 = v465;
              v407 = sub_1D5D2F7A4(v442, sub_1D615B49C, v406, sub_1D615B4A4, (&v435 - 6), v399, v400);
              v465 = v405;
              if (v405)
              {

LABEL_141:
                v408 = v469;

                sub_1D5CBF568(v408);

                v176 = &v470;
                goto LABEL_35;
              }

              v409 = v407;

              if (v409)
              {
                sub_1D6659A24();
                v410 = v465;
                sub_1D72647EC();
                v465 = v410;
                if (v410)
                {

                  goto LABEL_141;
                }
              }

              v411 = v469;

              sub_1D5CBF568(v411);

              sub_1D5D2CFE8(v442, type metadata accessor for FormatVersionRequirement);
            }

            else
            {

              sub_1D5D2CFE8(v442, type metadata accessor for FormatVersionRequirement);
            }

            v412 = v462[26];
            if (qword_1EDF31E78 != -1)
            {
              swift_once();
            }

            v413 = v459;
            v414 = __swift_project_value_buffer(v459, qword_1EDFFCC90);
            v458(v441, v414, v413);
            swift_storeEnumTagMultiPayload();
            v463 = xmmword_1D72BAB10;
            v466 = xmmword_1D72BAB10;
            LOBYTE(v467) = 0;
            LOBYTE(v471) = 0;
            v415 = swift_allocObject();
            v417 = v415;
            *(v415 + 16) = v463;
            *(v415 + 32) = v471;
            v418 = v464;
            *(v415 + 40) = v438;
            *(v415 + 48) = v418;
            if (v412 == 2)
            {
            }

            else
            {
              *&v471 = v412;
              MEMORY[0x1EEE9AC00](v415, v416);
              *(&v435 - 4) = sub_1D5B4AA6C;
              *(&v435 - 3) = 0;
              v433 = sub_1D6708C34;
              v434 = v417;
              v483 = 0;
              v419 = swift_allocObject();
              *(v419 + 16) = v463;
              *(v419 + 32) = v483;
              *(v419 + 40) = v438;
              *(v419 + 48) = v464;
              swift_retain_n();
              sub_1D5D0A59C(v412);
              v420 = sub_1D72647CC();
              v483 = 0;
              v421 = swift_allocObject();
              *(v421 + 16) = v420;
              *(v421 + 24) = v463;
              *(v421 + 40) = v483;
              v422 = v436[3];
              v423 = v436[4];
              v424 = __swift_project_boxed_opaque_existential_1(v436, v422);
              MEMORY[0x1EEE9AC00](v424, v425);
              MEMORY[0x1EEE9AC00](v426, v427);
              *(&v435 - 4) = sub_1D615B4A4;
              *(&v435 - 3) = (&v435 - 6);
              v433 = sub_1D6708C34;
              v434 = v419;
              v428 = v465;
              v430 = sub_1D5D2F7A4(v441, sub_1D615B49C, v429, sub_1D615B4A4, (&v435 - 6), v422, v423);
              v465 = v428;
              if (v428)
              {
              }

              else
              {
                v431 = v430;

                if (v431)
                {
                  sub_1D66D3C60();
                  v432 = v465;
                  sub_1D72647EC();
                  v465 = v432;
                }
              }

              sub_1D5D0A58C(v471);
            }

            v176 = &v469;
            goto LABEL_35;
          }

          sub_1D6659D24();
          v224 = v465;
          sub_1D72647EC();
          v201 = v459;
          v202 = v458;
          v222 = v464;
          v465 = v224;
          if (v224)
          {

            v200 = v451;
            goto LABEL_52;
          }
        }

        else
        {
          v222 = v207;
        }

        goto LABEL_60;
      }

      v142 = v464;
    }

    else
    {
    }

    v180 = v462;
    goto LABEL_45;
  }

  sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

  v98 = v82;
  return sub_1D5D2CFE8(v98, sub_1D66D3AE8);
}

uint64_t sub_1D66039A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66EC3CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D66039D8(uint64_t a1)
{
  v2 = sub_1D5CCAB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6603A14(uint64_t a1)
{
  v2 = sub_1D5CCAB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatWebEmbedNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v29 = *v1;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWebEmbedNodeBinding, &type metadata for FormatCodingKeys, v21, v19, &type metadata for FormatWebEmbedNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v18, v14, v20, &off_1F51F6C78);
  if (v17)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F604(1, v29, v15, v16, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F46C(0, v29 & 1, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6603D78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6974706FLL;
  }

  else
  {
    v3 = 0x6465626D45626577;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6974706FLL;
  }

  else
  {
    v5 = 0x6465626D45626577;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D6603E1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6603E9C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6603F08(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6603F84(uint64_t *a1@<X8>)
{
  v2 = 0x6465626D45626577;
  if (*v1)
  {
    v2 = 0x6E6F6974706FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatWebEmbedNodeContent.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5C5039C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v54 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v2;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v57 = v26;
  sub_1D5D2EE70(&type metadata for FormatWebEmbedNodeContent, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatWebEmbedNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v26, v30, &off_1F51F6C78);
  if (!(v27 >> 62))
  {
    v41 = *(v27 + 16);
    v42 = *(v27 + 24);
    v43 = *(v27 + 32);
    v44 = *(v27 + 40);
    sub_1D62B6164(v41, v42, v43, v44);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
    (*(*(v45 - 8) + 16))(v22, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v47 = v57;
    sub_1D638EF24(0, v41, v42, v43, v44, v22);
    sub_1D62B61A8(v41, v42, v43, v44);
    v48 = v22;
    goto LABEL_12;
  }

  if (v27 >> 62 != 1)
  {
    v49 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v50 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v51 = qword_1EDF31ED0;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCD50);
    (*(*(v52 - 8) + 16))(v14, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v47 = v57;
    sub_1D638F298(2, v49, v50, v14);

    v48 = v14;
LABEL_12:
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
  }

  v32 = swift_projectBox();
  v34 = v55;
  v33 = v56;
  v35 = *(v55 + 16);
  v35(v10, v32, v56);
  v36 = v54;
  v35(v54, v10, v33);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
  (*(*(v37 - 8) + 16))(v18, v38, v37);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = v57;
  sub_1D638F0C4(1, v36, v18);
  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v36, sub_1D5C5039C);
  (*(v34 + 8))(v10, v33);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D66045EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
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
    v5 = 0x676E69646E6962;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E69;
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
    v9 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1D66046E8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6604788(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6604814(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D66048B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
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
    v7 = 0x676E69646E6962;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatWebEmbedNodeRendering.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
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
    v11 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v30;
    v15 = v9;
    if (v13)
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
          *(v22 + 16) = &unk_1F51183F0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66D3E0C();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        (*(v14 + 8))(v15, v6);
        v24 = 1;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2C0E0, sub_1D66D3E60, &type metadata for FormatWebEmbedNodeRendering, type metadata accessor for FormatSelectorValue);
        v27 = xmmword_1D7279980;
        sub_1D66D3EB4();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v25 = v28;
        v26 = v29;
        v24 = swift_allocObject();
        *(v24 + 16) = v25;
        *(v24 + 24) = v26;
      }
    }

    else
    {
      (*(v14 + 8))(v15, v6);
      v24 = 0;
    }

    *v11 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWebEmbedNodeRendering.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v35 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWebEmbedNodeRendering, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatWebEmbedNodeRendering, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v21, v18, v22, &off_1F51F6AB8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCC90);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A974(1, v10);
      v26 = v10;
    }

    else
    {
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      sub_1D5D0A57C(v30);
      v31 = qword_1EDF31E78;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCC90);
      (*(*(v32 - 8) + 16))(v6, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638C05C(2, v30, v29, v6);
      sub_1D5D0A58C(v30);

      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCC90);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A974(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6605134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6567616D69;
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
    v5 = 0x77656956626577;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6567616D69;
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
    v9 = 0x77656956626577;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1D6605230()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D66052D0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D660535C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D66053F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66645EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6605428(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
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
    v7 = 0x77656956626577;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6605534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66EC910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D660556C(uint64_t a1)
{
  v2 = sub_1D5CCC9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D66055A8(uint64_t a1)
{
  v2 = sub_1D5CCC9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D66055E4()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000013;
  if (v1 != 4)
  {
    v3 = 1885433183;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x615272656E726F63;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1D66056AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66ECBBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D66056E4(uint64_t a1)
{
  v2 = sub_1D666C13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6605720(uint64_t a1)
{
  v2 = sub_1D666C13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660575C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x64656B636F6CLL;
      break;
    case 4:
      result = 0x73656D656874;
      break;
    case 5:
      result = 0x7370756F7267;
      break;
    case 6:
      result = 1684366694;
      break;
    case 7:
      result = 6775156;
      break;
    case 8:
      result = 0x656C6369747261;
      break;
    case 9:
      result = 0x6575737369;
      break;
    case 10:
      result = 0x657069636572;
      break;
    case 11:
      result = 0x736E6F6974706FLL;
      break;
    case 12:
      result = 0x726F7463656C6573;
      break;
    case 13:
      result = 0x73676E6974746573;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D66058CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66ECDC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6605904(uint64_t a1)
{
  v2 = sub_1D5E1CA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6605940(uint64_t a1)
{
  v2 = sub_1D5E1CA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660597C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66EFB94(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D66EECD0(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC8897C0, sub_1D66EECD0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceArticle, v18, v20, v15, &type metadata for FormatWorkspaceArticle, v18, &type metadata for FormatVersions.CrystalGlowE, v16, v14, v19, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = a2;
  v49 = a3;
  v46[3] = 0;
  v46[4] = 0;
  v47 = 0;
  v23 = &v14[*(v11 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v50 = 0;
  v26 = swift_allocObject();
  v46[1] = v46;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v50;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v46[-4] = sub_1D5B4AA6C;
  v46[-3] = 0;
  v44 = sub_1D67088B4;
  v45 = v28;
  v50 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v50;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66EFC28(0);
  v31 = v30;
  sub_1D5B58B84(&qword_1EC8898E0, sub_1D66EFC28, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v46[0] = v31;
  v32 = sub_1D72647CC();
  v50 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v50;
  v34 = &v14[*(v11 + 36)];
  v35 = *(v34 + 3);
  v36 = *(v34 + 4);
  v37 = __swift_project_boxed_opaque_existential_1(v34, v35);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v46[-4] = sub_1D615B4A4;
  v46[-3] = &v46[-6];
  v44 = sub_1D67088B4;
  v45 = v29;
  v41 = v46[2];
  sub_1D5D2BC70(v9, sub_1D615B49C, v42, sub_1D615B4A4, &v46[-6], v35, v36);
  if (v41)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66EFB94);
}

uint64_t sub_1D6605E8C(uint64_t a1)
{
  v2 = sub_1D66EEDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6605EC8(uint64_t a1)
{
  v2 = sub_1D66EEDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6605F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v77 - v12;
  sub_1D66EF4E0(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66ED6D8(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC889758, sub_1D66ED6D8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceFeed, v22, v24, v19, &type metadata for FormatWorkspaceFeed, v22, &type metadata for FormatVersions.CrystalGlowE, v20, v18, v23, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCE38);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v82 = v26;
  v83 = v25;
  v80 = v27 + 16;
  v81 = v28;
  (v28)(v13);
  v79 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v94 = a2;
  v95 = a3;
  v92 = 0uLL;
  v93 = 0;
  v29 = &v18[*(v15 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v96 = 0;
  v32 = swift_allocObject();
  *&v89 = &v77;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v96;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v77 - 4) = sub_1D5B4AA6C;
  *(&v77 - 3) = 0;
  v75 = sub_1D6708C3C;
  v76 = v34;
  v96 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v96;
  v84 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66EF574(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC889870, sub_1D66EF574, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v87 = v37;
  v88 = v38;
  v39 = sub_1D72647CC();
  v96 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v96;
  v41 = *(v15 + 36);
  v91 = v18;
  v42 = &v18[v41];
  v43 = *&v18[v41 + 24];
  v44 = *&v18[v41 + 32];
  v45 = __swift_project_boxed_opaque_existential_1(&v18[v41], v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v77 - 4) = sub_1D615B4A4;
  *(&v77 - 3) = (&v77 - 6);
  v75 = sub_1D6708C3C;
  v76 = v35;
  v49 = v90;
  sub_1D5D2BC70(v13, sub_1D615B49C, v50, sub_1D615B4A4, (&v77 - 6), v43, v44);
  if (v49)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    v51 = v91;
  }

  else
  {
    v78 = v42;
    v90 = v31;

    v51 = v91;
    sub_1D72647EC();
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    v53 = v86;
    v81(v86, v82, v83);
    swift_storeEnumTagMultiPayload();
    v89 = xmmword_1D728CF30;
    v92 = xmmword_1D728CF30;
    v93 = 0;
    LOBYTE(v94) = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v89;
    *(v55 + 32) = v94;
    v57 = v84;
    v56 = v85;
    *(v55 + 40) = v84;
    v58 = v90;
    *(v55 + 48) = v90;
    if (v56)
    {
      v83 = &v77;
      v94 = v56;
      MEMORY[0x1EEE9AC00](v58, v54);
      v82 = &v77 - 6;
      *(&v77 - 4) = sub_1D5B4AA6C;
      *(&v77 - 3) = 0;
      v75 = sub_1D6708C3C;
      v76 = v55;
      v96 = 0;
      v60 = v59;
      v61 = swift_allocObject();
      *(v61 + 16) = v89;
      *(v61 + 32) = v96;
      *(v61 + 40) = v57;
      *(v61 + 48) = v60;
      swift_retain_n();

      v62 = sub_1D72647CC();
      v96 = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = v89;
      *(v63 + 40) = v96;
      v64 = *(v78 + 3);
      v65 = *(v78 + 4);
      v66 = __swift_project_boxed_opaque_existential_1(v78, v64);
      MEMORY[0x1EEE9AC00](v66, v67);
      MEMORY[0x1EEE9AC00](v68, v69);
      v70 = v82;
      *(&v77 - 4) = sub_1D615B4A4;
      *(&v77 - 3) = v70;
      v71 = v86;
      v75 = sub_1D66EF608;
      v76 = v61;
      v73 = sub_1D5D2F7A4(v86, sub_1D615B49C, v72, sub_1D615B4A4, (&v77 - 6), v64, v65);
      v74 = v73;

      if (v74)
      {
        type metadata accessor for FormatWorkspaceFeedDescriptor();
        sub_1D5B58B84(&qword_1EC889878, type metadata accessor for FormatWorkspaceFeedDescriptor, &unk_1D739D62C);
        v51 = v91;
        sub_1D72647EC();

        sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
        v51 = v91;
      }
    }

    else
    {

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v51, sub_1D66EF4E0);
}

uint64_t sub_1D6606810()
{
  v1 = 0x6373654464656566;
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
    return 1684366694;
  }
}

uint64_t sub_1D6606868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66ED858(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D66068A0(uint64_t a1)
{
  v2 = sub_1D66ED7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D66068DC(uint64_t a1)
{
  v2 = sub_1D66ED7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6606918(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v148 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v149 = &v144 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v150 = (&v144 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v158 = (&v144 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v144 - v19;
  sub_1D66F3F58(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D66F3D84(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EC889A80, sub_1D66F3D84, &unk_1D7321584);
  v147 = v4;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.CrystalGlowE, v27, v25, v30, &off_1F51F6C98);
  v32 = v2[2];
  v33 = v2[3];
  v152 = v2;
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCE38);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v151 = v35;
  v153 = v34;
  v155 = v36 + 16;
  v156 = v37;
  (v37)(v20);
  v154 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v166 = v32;
  v167 = v33;
  v164 = 0uLL;
  v165 = 0;
  v38 = &v25[*(v22 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  v168 = 0;
  v41 = swift_allocObject();
  v161 = &v144;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v168;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v144 - 4) = sub_1D5B4AA6C;
  *(&v144 - 3) = 0;
  v142 = sub_1D6708C48;
  v143 = v43;
  v168 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v168;
  v157 = v40;
  *(v44 + 40) = v40;
  *(v44 + 48) = v39;
  sub_1D66F3FEC(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC889AA0, sub_1D66F3FEC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v159 = v47;
  v160 = v46;
  v48 = sub_1D72647CC();
  v168 = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v168;
  v50 = *(v22 + 36);
  v51 = v20;
  v52 = &v25[v50];
  v163 = v25;
  v53 = *&v25[v50 + 24];
  v54 = *&v25[v50 + 32];
  v55 = __swift_project_boxed_opaque_existential_1(v52, v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  *(&v144 - 4) = sub_1D615B4A4;
  *(&v144 - 3) = (&v144 - 6);
  v142 = sub_1D6708C48;
  v143 = v44;
  v59 = v162;
  sub_1D5D2BC70(v51, sub_1D615B49C, v60, sub_1D615B4A4, (&v144 - 6), v53, v54);
  if (v59)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v79 = v163;
  }

  else
  {
    v145 = v52;
    v146 = v39;

    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v61 = v152[4];
    v62 = v152[5];
    v156(v158, v151, v153);
    swift_storeEnumTagMultiPayload();
    v166 = v61;
    v167 = v62;
    v162 = xmmword_1D728CF30;
    v164 = xmmword_1D728CF30;
    v165 = 0;
    v168 = 0;
    v63 = swift_allocObject();
    v161 = &v144;
    *(v63 + 16) = v162;
    *(v63 + 32) = v168;
    v64 = v157;
    v65 = v146;
    *(v63 + 40) = v157;
    *(v63 + 48) = v65;
    MEMORY[0x1EEE9AC00](v63, v66);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708C48;
    v143 = v67;
    v168 = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v162;
    *(v68 + 32) = v168;
    *(v68 + 40) = v64;
    *(v68 + 48) = v65;
    swift_retain_n();
    v69 = sub_1D72647CC();
    v168 = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v162;
    *(v70 + 40) = v168;
    v71 = *(v145 + 3);
    v72 = *(v145 + 4);
    v73 = __swift_project_boxed_opaque_existential_1(v145, v71);
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = (&v144 - 6);
    v77 = v158;
    v142 = sub_1D6708C48;
    v143 = v68;
    sub_1D5D2BC70(v158, sub_1D615B49C, v78, sub_1D615B4A4, (&v144 - 6), v71, v72);

    sub_1D72647EC();
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

    v81 = v152;
    v82 = *(v152 + 48);
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v83 = v153;
    v84 = __swift_project_value_buffer(v153, qword_1EDFFCC90);
    v85 = v150;
    v156(v150, v84, v83);
    swift_storeEnumTagMultiPayload();
    v162 = xmmword_1D7297410;
    v164 = xmmword_1D7297410;
    v165 = 0;
    LOBYTE(v166) = 0;
    v86 = swift_allocObject();
    v88 = v86;
    *(v86 + 16) = v162;
    *(v86 + 32) = v166;
    v89 = v157;
    v90 = v146;
    *(v86 + 40) = v157;
    *(v86 + 48) = v90;
    if (v82 == 2)
    {
      v91 = v90;

      v92 = v149;
      v93 = v151;
    }

    else
    {
      v161 = &v144;
      LOBYTE(v166) = v82 & 1;
      MEMORY[0x1EEE9AC00](v86, v87);
      v158 = &v144 - 6;
      *(&v144 - 4) = sub_1D5B4AA6C;
      *(&v144 - 3) = 0;
      v142 = sub_1D6708C48;
      v143 = v88;
      v168 = 0;
      v95 = v94;
      v96 = swift_allocObject();
      *(v96 + 16) = v162;
      *(v96 + 32) = v168;
      *(v96 + 40) = v89;
      *(v96 + 48) = v95;
      swift_retain_n();
      v97 = sub_1D72647CC();
      v168 = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = v97;
      *(v98 + 24) = v162;
      *(v98 + 40) = v168;
      v99 = *(v145 + 3);
      v100 = *(v145 + 4);
      v101 = __swift_project_boxed_opaque_existential_1(v145, v99);
      MEMORY[0x1EEE9AC00](v101, v102);
      MEMORY[0x1EEE9AC00](v103, v104);
      v105 = v158;
      *(&v144 - 4) = sub_1D615B4A4;
      *(&v144 - 3) = v105;
      v142 = sub_1D6708C48;
      v143 = v96;
      LOBYTE(v99) = sub_1D5D2F7A4(v85, sub_1D615B49C, v106, sub_1D615B4A4, (&v144 - 6), v99, v100);

      v92 = v149;
      v93 = v151;
      if (v99)
      {
        sub_1D66F40FC();
        sub_1D72647EC();
        v83 = v153;
        v81 = v152;
      }

      else
      {
        v81 = v152;
        v83 = v153;
      }

      v91 = v146;
    }

    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);

    v107 = v81[7];
    v156(v92, v93, v83);
    swift_storeEnumTagMultiPayload();
    v166 = v107;
    v162 = xmmword_1D72BAA60;
    v164 = xmmword_1D72BAA60;
    v165 = 0;
    v168 = 0;
    v108 = swift_allocObject();
    v161 = &v144;
    *(v108 + 16) = v162;
    *(v108 + 32) = v168;
    v109 = v157;
    *(v108 + 40) = v157;
    *(v108 + 48) = v91;
    MEMORY[0x1EEE9AC00](v108, v110);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708C48;
    v143 = v111;
    v168 = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = v162;
    *(v112 + 32) = v168;
    *(v112 + 40) = v109;
    *(v112 + 48) = v91;
    swift_retain_n();
    v113 = sub_1D72647CC();
    v168 = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = v162;
    *(v114 + 40) = v168;
    v115 = *(v145 + 3);
    v116 = *(v145 + 4);
    v117 = __swift_project_boxed_opaque_existential_1(v145, v115);
    MEMORY[0x1EEE9AC00](v117, v118);
    MEMORY[0x1EEE9AC00](v119, v120);
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = (&v144 - 6);
    v121 = v149;
    v142 = sub_1D6708C48;
    v143 = v112;
    sub_1D5D2BC70(v149, sub_1D615B49C, v122, sub_1D615B4A4, (&v144 - 6), v115, v116);

    sub_1D72647EC();
    sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

    v123 = v152[8];
    v124 = v148;
    v156(v148, v151, v153);
    swift_storeEnumTagMultiPayload();
    v162 = xmmword_1D72BAA70;
    v164 = xmmword_1D72BAA70;
    v165 = 0;
    LOBYTE(v166) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v162;
    *(v125 + 32) = v166;
    v128 = v157;
    v129 = v146;
    *(v125 + 40) = v157;
    *(v125 + 48) = v129;
    if (v123)
    {
      v161 = &v144;
      v166 = v123;
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v144 - 4) = sub_1D5B4AA6C;
      *(&v144 - 3) = 0;
      v142 = sub_1D6708C48;
      v143 = v127;
      v168 = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v162;
      *(v130 + 32) = v168;
      *(v130 + 40) = v128;
      *(v130 + 48) = v129;
      swift_retain_n();

      v131 = sub_1D72647CC();
      v168 = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = v131;
      *(v132 + 24) = v162;
      *(v132 + 40) = v168;
      v133 = *(v145 + 3);
      v134 = *(v145 + 4);
      v135 = __swift_project_boxed_opaque_existential_1(v145, v133);
      MEMORY[0x1EEE9AC00](v135, v136);
      MEMORY[0x1EEE9AC00](v137, v138);
      *(&v144 - 4) = sub_1D615B4A4;
      *(&v144 - 3) = (&v144 - 6);
      v142 = sub_1D66F4080;
      v143 = v130;
      v140 = sub_1D5D2F7A4(v148, sub_1D615B49C, v139, sub_1D615B4A4, (&v144 - 6), v133, v134);
      v141 = v140;

      if (v141)
      {
        sub_1D5B58B84(&qword_1EC889878, type metadata accessor for FormatWorkspaceFeedDescriptor, &unk_1D739D62C);
        sub_1D72647EC();
      }

      v124 = v148;
    }

    else
    {
    }

    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
    v79 = v163;
  }

  return sub_1D5D2CFE8(v79, sub_1D66F3F58);
}

uint64_t sub_1D6607C84()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x72756769666E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 1684957547;
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

uint64_t sub_1D6607D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66EDDF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6607D70(uint64_t a1)
{
  v2 = sub_1D66F3E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6607DAC(uint64_t a1)
{
  v2 = sub_1D66F3E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6607DE8(void *a1, char a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWorkspaceFeedDescriptorKind, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWorkspaceFeedDescriptorKind, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v17, v15, v18, &off_1F51F6AB8);
  if (a2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCC90);
    (*(*(v20 - 8) + 16))(v7, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424CE4(1, v7);
    v22 = v7;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCC90);
    (*(*(v23 - 8) + 16))(v11, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424CE4(0, v11);
    v22 = v11;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D66080D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463655364656566;
  }

  else
  {
    v3 = 1684366694;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7463655364656566;
  }

  else
  {
    v5 = 1684366694;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
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

uint64_t sub_1D660817C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6608200(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6608270(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D66082FC(uint64_t *a1@<X8>)
{
  v2 = 1684366694;
  if (*v1)
  {
    v2 = 0x7463655364656566;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatWorkspaceGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = type metadata accessor for FormatContentSubgroup(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66D3F44(0);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66D3FD8(0);
  sub_1D5B58B84(&qword_1EC887878, sub_1D66D3FD8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v5;
  v40 = v8;
  v13 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v47;
  v17 = v42;
  v18 = v12;
  if (v15)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v21 - 2);
      v26 = *(v21 - 1);

      v28 = sub_1D6628164();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v18, v17);
      goto LABEL_10;
    }

LABEL_7:
  }

  v45 = 0uLL;
  v46 = 0;
  v22 = sub_1D72642BC();
  v24 = v23;
  v25 = v22;
  v45 = xmmword_1D728CF30;
  v46 = 0;
  sub_1D60CEE3C();
  sub_1D726431C();
  v37 = v25;
  v36 = v43;
  v38 = v44;
  v45 = xmmword_1D7297410;
  v46 = 0;
  sub_1D5B58B84(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  v31 = v40;
  sub_1D726431C();
  (*(v13 + 8))(v18, v17);
  v32 = type metadata accessor for FormatWorkspaceGroup(0);
  sub_1D5C8F76C(v31, v16 + *(v32 + 24), type metadata accessor for FormatContentSubgroup);
  v33 = v36;
  *v16 = v37;
  v16[1] = v24;
  v34 = v38;
  v16[2] = v33;
  v16[3] = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWorkspaceGroup.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v97 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v94 - v12;
  sub_1D66D4158(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = type metadata accessor for FormatWorkspaceGroup(0);
  sub_1D66D3FD8(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC887878, sub_1D66D3FD8, &unk_1D7321584);
  v96 = v21;
  sub_1D5D2EE70(v21, v23, v25, v19, v21, v23, &type metadata for FormatVersions.CrystalGlowE, v20, v18, v24, &off_1F51F6C98);
  v26 = *v2;
  v27 = v2[1];
  v99 = v2;
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v103 = v29;
  v104 = v28;
  v101 = v30 + 16;
  v102 = v31;
  (v31)(v13);
  v100 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v113 = v26;
  v114 = v27;
  v111 = 0uLL;
  v112 = 0;
  v32 = &v18[*(v15 + 44)];
  v108 = v13;
  v33 = *v32;
  v34 = *(v32 + 1);
  v115 = 0;
  v35 = swift_allocObject();
  v109 = &v94;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v115;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v94 - 4) = sub_1D5B4AA6C;
  *(&v94 - 3) = 0;
  v92 = sub_1D6708C38;
  v93 = v37;
  v115 = 0;
  v38 = v18;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v115;
  v105 = v33;
  *(v39 + 40) = v33;
  *(v39 + 48) = v34;
  sub_1D66D41EC(0);
  v41 = v40;
  v42 = sub_1D5B58B84(qword_1EC887890, sub_1D66D41EC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v106 = v42;
  v107 = v41;
  v43 = sub_1D72647CC();
  v115 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v115;
  v45 = &v38[*(v15 + 36)];
  v47 = *(v45 + 3);
  v46 = *(v45 + 4);
  v48 = __swift_project_boxed_opaque_existential_1(v45, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v94 - 4) = sub_1D615B4A4;
  *(&v94 - 3) = (&v94 - 6);
  v52 = v108;
  v92 = sub_1D66D4280;
  v93 = v39;
  v53 = v110;
  sub_1D5D2BC70(v108, sub_1D615B49C, v54, sub_1D615B4A4, (&v94 - 6), v47, v46);
  if (v53)
  {
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v55 = v38;
  }

  else
  {
    v95 = v45;

    sub_1D72647EC();
    v55 = v38;
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v56 = v98;
    v108 = 0;
    v57 = v99[2];
    v58 = v99[3];
    v102(v98, v103, v104);
    swift_storeEnumTagMultiPayload();
    v113 = v57;
    v114 = v58;
    v110 = xmmword_1D728CF30;
    v111 = xmmword_1D728CF30;
    v112 = 0;
    v115 = 0;
    v59 = swift_allocObject();
    v109 = &v94;
    *(v59 + 16) = v110;
    *(v59 + 32) = v115;
    v60 = v105;
    *(v59 + 40) = v105;
    *(v59 + 48) = v34;
    MEMORY[0x1EEE9AC00](v59, v61);
    *(&v94 - 4) = sub_1D5B4AA6C;
    *(&v94 - 3) = 0;
    v92 = sub_1D6708C38;
    v93 = v62;
    v115 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v110;
    *(v63 + 32) = v115;
    *(v63 + 40) = v60;
    *(v63 + 48) = v34;
    swift_retain_n();
    v64 = sub_1D72647CC();
    v115 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v110;
    *(v65 + 40) = v115;
    v66 = *(v95 + 3);
    v67 = *(v95 + 4);
    v68 = __swift_project_boxed_opaque_existential_1(v95, v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v94 - 4) = sub_1D615B4A4;
    *(&v94 - 3) = (&v94 - 6);
    v92 = sub_1D6708C38;
    v93 = v63;
    v72 = v108;
    sub_1D5D2BC70(v56, sub_1D615B49C, v73, sub_1D615B4A4, (&v94 - 6), v66, v67);
    if (!v72)
    {

      sub_1D60CEE90();
      sub_1D72647EC();
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

      v76 = v97;
      v98 = *(v96 + 24);
      v102(v97, v103, v104);
      swift_storeEnumTagMultiPayload();
      v110 = xmmword_1D7297410;
      v111 = xmmword_1D7297410;
      v112 = 0;
      LOBYTE(v113) = 0;
      v77 = swift_allocObject();
      v108 = &v94;
      *(v77 + 16) = v110;
      *(v77 + 32) = v113;
      v78 = v105;
      *(v77 + 40) = v105;
      *(v77 + 48) = v34;
      MEMORY[0x1EEE9AC00](v77, v79);
      *(&v94 - 4) = sub_1D5B4AA6C;
      *(&v94 - 3) = 0;
      v92 = sub_1D6708C38;
      v93 = v80;
      LOBYTE(v113) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v110;
      *(v81 + 32) = v113;
      *(v81 + 40) = v78;
      *(v81 + 48) = v34;
      swift_retain_n();
      v109 = v55;
      v82 = sub_1D72647CC();
      LOBYTE(v113) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v110;
      *(v83 + 40) = v113;
      v84 = *(v95 + 3);
      v85 = *(v95 + 4);
      v86 = __swift_project_boxed_opaque_existential_1(v95, v84);
      MEMORY[0x1EEE9AC00](v86, v87);
      MEMORY[0x1EEE9AC00](v88, v89);
      *(&v94 - 4) = sub_1D615B4A4;
      *(&v94 - 3) = (&v94 - 6);
      v92 = sub_1D6708C38;
      v93 = v81;
      sub_1D5D2BC70(v76, sub_1D615B49C, v90, sub_1D615B4A4, (&v94 - 6), v84, v85);

      type metadata accessor for FormatContentSubgroup(0);
      sub_1D5B58B84(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
      v91 = v109;
      sub_1D72647EC();
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

      v74 = v91;
      return sub_1D5D2CFE8(v74, sub_1D66D4158);
    }

    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
  }

  v74 = v55;
  return sub_1D5D2CFE8(v74, sub_1D66D4158);
}

uint64_t sub_1D66093F4()
{
  v1 = 0x696669746E656469;
  v2 = 0x70756F7267627573;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x74756F79616CLL;
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

uint64_t sub_1D6609468@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66EE044(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D66094A0(uint64_t a1)
{
  v2 = sub_1D66D40B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D66094DC(uint64_t a1)
{
  v2 = sub_1D66D40B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6609518(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66EFA08(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D66EEEE4(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC8897F0, sub_1D66EEEE4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceIssue, v18, v20, v15, &type metadata for FormatWorkspaceIssue, v18, &type metadata for FormatVersions.CrystalGlowE, v16, v14, v19, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = a2;
  v49 = a3;
  v46[3] = 0;
  v46[4] = 0;
  v47 = 0;
  v23 = &v14[*(v11 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v50 = 0;
  v26 = swift_allocObject();
  v46[1] = v46;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v50;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v46[-4] = sub_1D5B4AA6C;
  v46[-3] = 0;
  v44 = sub_1D67088B4;
  v45 = v28;
  v50 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v50;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66EFA9C(0);
  v31 = v30;
  sub_1D5B58B84(&qword_1EC8898C8, sub_1D66EFA9C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v46[0] = v31;
  v32 = sub_1D72647CC();
  v50 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v50;
  v34 = &v14[*(v11 + 36)];
  v35 = *(v34 + 3);
  v36 = *(v34 + 4);
  v37 = __swift_project_boxed_opaque_existential_1(v34, v35);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v46[-4] = sub_1D615B4A4;
  v46[-3] = &v46[-6];
  v44 = sub_1D67088B4;
  v45 = v29;
  v41 = v46[2];
  sub_1D5D2BC70(v9, sub_1D615B49C, v42, sub_1D615B4A4, &v46[-6], v35, v36);
  if (v41)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66EFA08);
}

uint64_t sub_1D6609A28(uint64_t a1)
{
  v2 = sub_1D66EEFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6609A64(uint64_t a1)
{
  v2 = sub_1D66EEFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6609AA0(void *a1, char a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWorkspaceLayoutOrder, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWorkspaceLayoutOrder, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v17, v15, v18, &off_1F51F6C98);
  if (a2)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE38);
    (*(*(v20 - 8) + 16))(v7, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641AEC4(1, v7);
    v22 = v7;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE38);
    (*(*(v23 - 8) + 16))(v11, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641AEC4(0, v11);
    v22 = v11;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6609D8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69796C7265646E75;
  }

  else
  {
    v3 = 0x79614C6C61656469;
  }

  if (v2)
  {
    v4 = 0xEB0000000074756FLL;
  }

  else
  {
    v4 = 0xEF6C65646F4D676ELL;
  }

  if (*a2)
  {
    v5 = 0x69796C7265646E75;
  }

  else
  {
    v5 = 0x79614C6C61656469;
  }

  if (*a2)
  {
    v6 = 0xEF6C65646F4D676ELL;
  }

  else
  {
    v6 = 0xEB0000000074756FLL;
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

uint64_t sub_1D6609E48()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6609EE0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6609F64(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D660A004(uint64_t *a1@<X8>)
{
  v2 = 0x79614C6C61656469;
  if (*v1)
  {
    v2 = 0x69796C7265646E75;
  }

  v3 = 0xEB0000000074756FLL;
  if (*v1)
  {
    v3 = 0xEF6C65646F4D676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D660A118(uint64_t a1)
{
  v2 = sub_1D666E910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D660A154(uint64_t a1)
{
  v2 = sub_1D666E910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660A190(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66EF87C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D66EF0F8(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC889820, sub_1D66EF0F8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceRecipe, v18, v20, v15, &type metadata for FormatWorkspaceRecipe, v18, &type metadata for FormatVersions.CrystalGlowE, v16, v14, v19, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = a2;
  v49 = a3;
  v46[3] = 0;
  v46[4] = 0;
  v47 = 0;
  v23 = &v14[*(v11 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v50 = 0;
  v26 = swift_allocObject();
  v46[1] = v46;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v50;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v46[-4] = sub_1D5B4AA6C;
  v46[-3] = 0;
  v44 = sub_1D67088B4;
  v45 = v28;
  v50 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v50;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66EF910(0);
  v31 = v30;
  sub_1D5B58B84(&qword_1EC8898B0, sub_1D66EF910, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v46[0] = v31;
  v32 = sub_1D72647CC();
  v50 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v50;
  v34 = &v14[*(v11 + 36)];
  v35 = *(v34 + 3);
  v36 = *(v34 + 4);
  v37 = __swift_project_boxed_opaque_existential_1(v34, v35);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v46[-4] = sub_1D615B4A4;
  v46[-3] = &v46[-6];
  v44 = sub_1D67088B4;
  v45 = v29;
  v41 = v46[2];
  sub_1D5D2BC70(v9, sub_1D615B49C, v42, sub_1D615B4A4, &v46[-6], v35, v36);
  if (v41)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66EF87C);
}

uint64_t sub_1D660A6A0(uint64_t a1)
{
  v2 = sub_1D66EF1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D660A6DC(uint64_t a1)
{
  v2 = sub_1D66EF1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660A718@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = a2;
  sub_1D66EF278(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66EF30C(0);
  sub_1D5B58B84(&qword_1EC889850, sub_1D66EF30C, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v6;
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

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D66282F4();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_9;
    }

LABEL_7:
  }

  sub_1D66EF48C();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v19 = v28;
  v26 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v26;
    v29 = 0;
    sub_1D726431C();
    v20 = v32;
  }

  else
  {
    v20 = 0;
  }

  v26 = xmmword_1D7297410;
  v30 = xmmword_1D7297410;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v26;
    v29 = 0;
    sub_1D726431C();
    (*(v14 + 8))(v9, v5);
    v25 = v32;
  }

  else
  {
    (*(v14 + 8))(v9, v5);
    v25 = 0;
  }

  *v13 = v19;
  v13[1] = v20;
  v13[2] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D660AAF8(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v88 - v11;
  sub_1D66EF684(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v90 = v1[2];
  v91 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66EF30C(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC889850, sub_1D66EF30C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceSettings, v23, v25, v20, &type metadata for FormatWorkspaceSettings, v23, &type metadata for FormatVersions.CrystalGlowE, v21, v17, v24, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCE38);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v96 = v27;
  v94 = v26;
  v98 = v28 + 16;
  v99 = v29;
  (v29)(v12);
  v97 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v18;
  v105 = 0uLL;
  v106 = 0;
  v30 = &v17[*(v14 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v107 = 0;
  v33 = swift_allocObject();
  *&v103 = &v88;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v107;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v88 - 4) = sub_1D5B4AA6C;
  *(&v88 - 3) = 0;
  v86 = sub_1D6708C40;
  v87 = v35;
  v107 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v107;
  v95 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D66EF718(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EC889890, sub_1D66EF718, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v100 = v38;
  v101 = v39;
  v40 = sub_1D72647CC();
  v107 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v107;
  v42 = *(v14 + 36);
  v43 = v12;
  v44 = &v17[v42];
  v102 = v17;
  v45 = *&v17[v42 + 24];
  v46 = *&v17[v42 + 32];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v88 - 4) = sub_1D615B4A4;
  *(&v88 - 3) = (&v88 - 6);
  v86 = sub_1D6708C40;
  v87 = v36;
  v51 = v104;
  sub_1D5D2BC70(v43, sub_1D615B49C, v52, sub_1D615B4A4, (&v88 - 6), v45, v46);
  if (v51)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v53 = v102;
  }

  else
  {
    v89 = v44;
    v104 = v32;

    sub_1D66EF7AC();
    v53 = v102;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v54 = v92;
    v55 = v96;
    v56 = v94;
    v99(v92, v96, v94);
    swift_storeEnumTagMultiPayload();
    if (v91)
    {
      LOBYTE(v105) = 0;
      v57 = swift_allocObject();
      v103 = xmmword_1D728CF30;
      *(v57 + 16) = xmmword_1D728CF30;
      *(v57 + 32) = v105;
      *(v57 + 40) = v95;
      *(v57 + 48) = v104;

      v58 = sub_1D72647CC();
      LOBYTE(v105) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v103;
      *(v59 + 40) = v105;
      v60 = *(v89 + 3);
      v61 = *(v89 + 4);
      v62 = __swift_project_boxed_opaque_existential_1(v89, v60);
      MEMORY[0x1EEE9AC00](v62, v63);
      MEMORY[0x1EEE9AC00](v64, v65);
      *(&v88 - 4) = sub_1D5B4AA6C;
      *(&v88 - 3) = 0;
      v86 = sub_1D6708C40;
      v87 = v57;
      v67 = sub_1D5D2F7A4(v54, sub_1D615B49C, v66, sub_1D615B4A4, (&v88 - 6), v60, v61);
      v68 = v93;
      v83 = v67;

      if (v83)
      {
        v105 = v103;
        v106 = 0;
        v108 = 1;
        sub_1D72647EC();
        sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
        v55 = v96;
        v56 = v94;
      }

      else
      {
        sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
        v56 = v94;
        v55 = v96;
      }
    }

    else
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
      v68 = v93;
    }

    v99(v68, v55, v56);
    swift_storeEnumTagMultiPayload();
    v69 = v104;
    v70 = v95;
    v71 = v89;
    if (v90)
    {
      LOBYTE(v105) = 0;
      v72 = swift_allocObject();
      v103 = xmmword_1D7297410;
      *(v72 + 16) = xmmword_1D7297410;
      *(v72 + 32) = v105;
      *(v72 + 40) = v70;
      *(v72 + 48) = v69;

      v73 = sub_1D72647CC();
      LOBYTE(v105) = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      *(v74 + 24) = v103;
      *(v74 + 40) = v105;
      v75 = *(v71 + 3);
      v76 = *(v71 + 4);
      v77 = __swift_project_boxed_opaque_existential_1(v71, v75);
      MEMORY[0x1EEE9AC00](v77, v78);
      MEMORY[0x1EEE9AC00](v79, v80);
      *(&v88 - 4) = sub_1D5B4AA6C;
      *(&v88 - 3) = 0;
      v86 = sub_1D66EF800;
      v87 = v72;
      v82 = sub_1D5D2F7A4(v68, sub_1D615B49C, v81, sub_1D615B4A4, (&v88 - 6), v75, v76);
      v84 = v82;

      if (v84)
      {
        v105 = v103;
        v106 = 0;
        v108 = 1;
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v53, sub_1D66EF684);
}

unint64_t sub_1D660B5D8()
{
  v1 = 0x724F74756F79616CLL;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1D660B660@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66EE57C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D660B698(uint64_t a1)
{
  v2 = sub_1D66EF3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D660B6D4(uint64_t a1)
{
  v2 = sub_1D66EF3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660B710(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66EFD20(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D66EEABC(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC889790, sub_1D66EEABC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspaceTag, v18, v20, v15, &type metadata for FormatWorkspaceTag, v18, &type metadata for FormatVersions.CrystalGlowE, v16, v14, v19, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = a2;
  v49 = a3;
  v46[3] = 0;
  v46[4] = 0;
  v47 = 0;
  v23 = &v14[*(v11 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v50 = 0;
  v26 = swift_allocObject();
  v46[1] = v46;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v50;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v46[-4] = sub_1D5B4AA6C;
  v46[-3] = 0;
  v44 = sub_1D67088B4;
  v45 = v28;
  v50 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v50;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66EFDB4(0);
  v31 = v30;
  sub_1D5B58B84(&qword_1EC8898F8, sub_1D66EFDB4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v46[0] = v31;
  v32 = sub_1D72647CC();
  v50 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v50;
  v34 = &v14[*(v11 + 36)];
  v35 = *(v34 + 3);
  v36 = *(v34 + 4);
  v37 = __swift_project_boxed_opaque_existential_1(v34, v35);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v46[-4] = sub_1D615B4A4;
  v46[-3] = &v46[-6];
  v44 = sub_1D66EFE48;
  v45 = v29;
  v41 = v46[2];
  sub_1D5D2BC70(v9, sub_1D615B49C, v42, sub_1D615B4A4, &v46[-6], v35, v36);
  if (v41)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66EFD20);
}

void sub_1D660BC10(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
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

uint64_t sub_1D660BD04(uint64_t a1)
{
  v2 = sub_1D66EEB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D660BD40(uint64_t a1)
{
  v2 = sub_1D66EEB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D660BE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  swift_beginAccess();
  v7 = *(a2 + 16);

  LOBYTE(a3) = a3(v6, v7);

  return a3 & 1;
}

double sub_1D660BFEC@<D0>(uint64_t a4@<X8>)
{
  sub_1D6704854(0);
  if (sub_1D726434C())
  {
    sub_1D613BA94(0);
    sub_1D5B58B84(&qword_1EDF24730, sub_1D613BA94, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);
    sub_1D726431C();
    if (!v4)
    {
      result = *&v10;
      *a4 = v10;
    }
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    sub_1D5F3FE24(0);
    v8 = swift_allocObject();
    *&result = 1;
    *(v8 + 16) = xmmword_1D7273AE0;
    *(v8 + 32) = v7;
    *(v8 + 40) = 0;
    v9 = MEMORY[0x1E69E7CC0];
    *a4 = v8;
    *(a4 + 8) = v9;
  }

  return result;
}

void *sub_1D660C130@<X0>(uint64_t (*a4)(void)@<X4>, void *a5@<X8>, double a6@<D0>)
{
  a4(0);
  if (sub_1D726434C())
  {
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D5C35368();
    result = sub_1D726431C();
    if (!v6)
    {
      *a5 = v11;
    }
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a6;
    sub_1D5F3FE24(0);
    result = swift_allocObject();
    *(result + 1) = xmmword_1D7273AE0;
    result[4] = v10;
    *(result + 40) = 0;
    *a5 = result;
  }

  return result;
}

uint64_t sub_1D660C284(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 3u)
  {
    v7 = 1885433183;
    if (a1 == 6)
    {
      v7 = 0xD000000000000012;
    }

    v8 = 0xD000000000000018;
    if (a1 == 4)
    {
      v8 = 0x64656C6C69666E75;
    }

    if (a1 <= 5u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x726F7463656C6573;
    if (a1 != 2)
    {
      v6 = 0x6F4364656C6C6966;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
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
}

uint64_t sub_1D660C3D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 3u)
  {
    v8 = 0x696669746E656469;
    v9 = 0x7470697263736564;
    if (a1 != 2)
    {
      v9 = 0x69747265706F7270;
    }

    if (a1)
    {
      v8 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x736D657469;
    v6 = 0xD000000000000010;
    if (a1 != 7)
    {
      v6 = 1885433183;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v7 = 0x726F66736E617274;
    if (a1 != 4)
    {
      v7 = 0x746E756F63;
    }

    if (a1 <= 5u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660C520(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000018;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x73736572676F7270;
    if (a1 != 4)
    {
      v7 = 0x6C6F436B63617274;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 0x726F7463656C6573;
    if (a1 != 2)
    {
      v8 = 0x6168706C61;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660C65C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x7373616C63;
        break;
      case 2:
        result = 0x726F7463656C6573;
        break;
      case 3:
        result = 0x6168706C61;
        break;
      case 4:
        result = 0x756F72676B636162;
        break;
      case 5:
        v5 = 1685221218;
        goto LABEL_14;
      case 6:
        result = 0x615272656E726F63;
        break;
      case 7:
        result = 0x776F64616873;
        break;
      case 8:
        result = 0x6F65646976;
        break;
      case 9:
        result = 0x6E6F69746F6DLL;
        break;
      case 10:
        result = 0xD000000000000018;
        break;
      case 11:
        v5 = 1953261926;
LABEL_14:
        result = v5 | 0x73726500000000;
        break;
      case 12:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D660C7E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x726F7463656C6573;
    v10 = 0x756F72676B636162;
    v11 = 0x73726564726F62;
    if (a1 != 3)
    {
      v11 = 0x615272656E726F63;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0x6168706C61;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0xD000000000000018;
    v6 = 0x737265746C6966;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0x776F64616873;
    v8 = 0x6F65646976;
    if (a1 != 6)
    {
      v8 = 0x6E6F69746F6DLL;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660C974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0x726F7463656C6573;
    v10 = 2019912806;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x696C696269736976;
    v12 = 0xD000000000000018;
    if (a1 != 7)
    {
      v12 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x657A69736572;
    v7 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v7 = 0x7865646E497ALL;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 0x746E65746E6F63;
    if (a1 != 1)
    {
      v8 = 1702521203;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660CB28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0x72656C69706D6F63;
    v9 = 0xD000000000000010;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x746C7561666564;
    if (a1 != 5)
    {
      v10 = 0x7461636572706564;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 1701667182;
    v7 = 0x7470697263736564;
    if (a1 != 3)
    {
      v7 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 1701869940;
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
}

uint64_t sub_1D660CCA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x696669746E656469;
    v10 = 0x657A69736572;
    v11 = 0x656D7473756A6461;
    if (a1 != 3)
    {
      v11 = 0x696C696269736976;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 1702521203;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0x656C797473;
    v6 = 2019912806;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    v8 = 0xD000000000000011;
    if (a1 != 6)
    {
      v8 = 0x726F7463656C6573;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660CE38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0xD000000000000018;
    v9 = 0x737469617274;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x615272656E726F63;
    if (a1 != 5)
    {
      v10 = 0x776F64616873;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x726F7463656C6573;
    v7 = 0x6168706C61;
    if (a1 != 3)
    {
      v7 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
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
}

uint64_t sub_1D660CFAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x726F7463656C6573;
    v6 = 0x737469617274;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x776F64616873;
    if (a1 != 4)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 0x73726564726F62;
    if (a1 != 2)
    {
      v8 = 0x615272656E726F63;
    }

    if (a1)
    {
      v5 = 0x6168706C61;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660D0DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0x72656C69706D6F63;
    v10 = 0xD000000000000010;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x746C7561666564;
    v12 = 0x7365736163;
    if (a1 != 7)
    {
      v12 = 0x7461636572706564;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 1701869940;
    v6 = 0x656D614E6D756E65;
    v7 = 0x7470697263736564;
    if (a1 != 4)
    {
      v7 = 0x6465726975716572;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 0x696669746E656469;
    if (a1 != 1)
    {
      v8 = 1701667182;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660D29C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0x72656C69706D6F63;
    v9 = 0xD000000000000010;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x746C7561666564;
    if (a1 != 5)
    {
      v10 = 0x7461636572706564;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 1701869940;
    v6 = 1701667182;
    v7 = 0x7470697263736564;
    if (a1 != 3)
    {
      v7 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
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
}

uint64_t sub_1D660D420(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 3u)
  {
    v7 = 0x726F7463656C6573;
    if (a1 != 6)
    {
      v7 = 1885433183;
    }

    v8 = 0xD000000000000013;
    if (a1 == 4)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x615272656E726F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
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
}

uint64_t sub_1D660D568(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0x7865646E497ALL;
    v10 = 2019912806;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x726F7463656C6573;
    v12 = 0x736E6F6974706FLL;
    if (a1 != 7)
    {
      v12 = 0x736B636F6C62;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x657A69736572;
    v7 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v7 = 0x73656C797473;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    if (a1 != 1)
    {
      v8 = 1702521203;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660D70C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0x61476E6D756C6F63;
    v9 = 0x6C61726765746E69;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x6574496E67696C61;
    if (a1 != 5)
    {
      v10 = 0x706147776F72;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x79616C70736964;
    v6 = 1885434487;
    v7 = 0x437966697473756ALL;
    if (a1 != 3)
    {
      v7 = 0x6E6F436E67696C61;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6F69746365726964;
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
}

unint64_t sub_1D660D898(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
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
  }

  return result;
}

unint64_t sub_1D660DA20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x746E65746E6F63;
        break;
      case 2:
        result = 0x656C797473;
        break;
      case 3:
        result = 0x6F6974616D696E61;
        break;
      case 4:
        result = 1702521203;
        break;
      case 5:
        result = 0x657A69736572;
        break;
      case 6:
        result = 0x656D7473756A6461;
        break;
      case 7:
        result = 0x7865646E497ALL;
        break;
      case 8:
        result = 0x696C696269736976;
        break;
      case 9:
        result = 0xD000000000000018;
        break;
      case 10:
        result = 0xD000000000000011;
        break;
      case 11:
        result = 0x726F7463656C6573;
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
  }

  return result;
}

uint64_t sub_1D660DBC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 3u)
  {
    v8 = 0x6172476F65646976;
    v9 = 0x6B63616279616C70;
    if (a1 != 2)
    {
      v9 = 0xD000000000000013;
    }

    if (a1)
    {
      v8 = 0x676E69706F6F6CLL;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x6F69746341646E65;
    v6 = 0xD000000000000016;
    if (a1 != 7)
    {
      v6 = 1885433183;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v7 = 0x646574756DLL;
    if (a1 != 4)
    {
      v7 = 0x6172476567616D69;
    }

    if (a1 <= 5u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

unint64_t sub_1D660DD28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
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
  }

  return result;
}

uint64_t sub_1D660DEEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x696669746E656469;
    v10 = 0x726F7463656C6573;
    v11 = 0x6168706C61;
    if (a1 != 3)
    {
      v11 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0x6F6C6F43746E6974;
    v6 = 0xD000000000000018;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0x73726564726F62;
    v8 = 0x615272656E726F63;
    if (a1 != 6)
    {
      v8 = 0x776F64616873;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660E08C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 3u)
  {
    v8 = 0x726F7463656C6573;
    v9 = 0x756F72676B636162;
    if (a1 != 2)
    {
      v9 = 0x73726564726F62;
    }

    if (a1)
    {
      v8 = 0x6168706C61;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x6F6C6F43746E6974;
    v6 = 0xD000000000000018;
    if (a1 != 7)
    {
      v6 = 1885433183;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v7 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v7 = 0x776F64616873;
    }

    if (a1 <= 5u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660E1E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000010;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x726F66736E617274;
    if (a1 != 4)
    {
      v7 = 0x69747265706F7270;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 0x7470697263736564;
    if (a1 != 2)
    {
      v8 = 0x736D657469;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D660E31C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x6E656D6E67696C61;
    switch(a1)
    {
      case 1:
        result = 0xD000000000000013;
        break;
      case 2:
        v5 = 1684104552;
        goto LABEL_14;
      case 3:
        v5 = 1818845556;
LABEL_14:
        result = v5 | 0x65646E4900000000;
        break;
      case 4:
        result = 0x61657242656E696CLL;
        break;
      case 5:
        result = 0xD000000000000011;
        break;
      case 6:
        result = 0xD000000000000011;
        break;
      case 7:
        result = 0xD000000000000011;
        break;
      case 8:
        result = 0x63617053656E696CLL;
        break;
      case 9:
        result = 0xD000000000000010;
        break;
      case 10:
        result = 0xD000000000000016;
        break;
      case 11:
      case 13:
        result = 0xD000000000000012;
        break;
      case 12:
        result = 0xD000000000000019;
        break;
      case 14:
        result = 0xD000000000000011;
        break;
      case 15:
        result = 0xD000000000000024;
        break;
      case 16:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D660E530(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
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
        result = 0x656C797473;
        break;
      case 5:
        result = 0x6F6974616D696E61;
        break;
      case 6:
        result = 0x746E65746E6F63;
        break;
      case 7:
        result = 0x7865646E497ALL;
        break;
      case 8:
        result = 0x696C696269736976;
        break;
      case 9:
        result = 0xD000000000000018;
        break;
      case 10:
        result = 0xD000000000000011;
        break;
      case 11:
        result = 0x726F7463656C6573;
        break;
      case 12:
        result = 0x736E6F43657A6973;
        break;
      case 13:
        result = 2019912806;
        break;
      case 14:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D660E6FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x7373616C63;
        break;
      case 2:
        result = 0x726F7463656C6573;
        break;
      case 3:
        result = 0x6168706C61;
        break;
      case 4:
        result = 0x656D7473756A6461;
        break;
      case 5:
        result = 0x756F72676B636162;
        break;
      case 6:
        result = 0x73726564726F62;
        break;
      case 7:
        result = 0x4D746E65746E6F63;
        break;
      case 8:
        result = 0x615272656E726F63;
        break;
      case 9:
        result = 0x6E697265646E6572;
        break;
      case 10:
        result = 0x657A69736572;
        break;
      case 11:
        result = 0x726F66736E617274;
        break;
      case 12:
        result = 0x776F64616873;
        break;
      case 13:
        result = 0x6F6C6F43746E6974;
        break;
      case 14:
        result = 0xD000000000000018;
        break;
      case 15:
        result = 0x74736575716572;
        break;
      case 16:
        result = 0x73614D6567616D69;
        break;
      case 17:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D660E934(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x726F7463656C6573;
    switch(a1)
    {
      case 1:
        result = 0x756F72676B636162;
        break;
      case 2:
        result = 0x73726564726F62;
        break;
      case 3:
        result = 0x615272656E726F63;
        break;
      case 4:
        result = 0x776F64616873;
        break;
      case 5:
        result = 0x6F6C6F43746E6974;
        break;
      case 6:
        result = 0xD000000000000018;
        break;
      case 7:
        result = 0x657A69736572;
        break;
      case 8:
        result = 0x726F66736E617274;
        break;
      case 9:
        result = 0x4D746E65746E6F63;
        break;
      case 10:
        result = 0x6E697265646E6572;
        break;
      case 11:
        result = 0x6168706C61;
        break;
      case 12:
        result = 0x656D7473756A6461;
        break;
      case 13:
        result = 0x74736575716572;
        break;
      case 14:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D660EB18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x696669746E656469;
    v10 = 0x726F7463656C6573;
    v11 = 0x6168706C61;
    if (a1 != 3)
    {
      v11 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0xD000000000000018;
    v6 = 0x66456C6175736976;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0x615272656E726F63;
    v8 = 0x776F64616873;
    if (a1 != 6)
    {
      v8 = 0x426F547370696C63;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660ECC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 3u)
  {
    v8 = 0x726F7463656C6573;
    v9 = 0x615272656E726F63;
    if (a1 != 2)
    {
      v9 = 0x776F64616873;
    }

    if (a1)
    {
      v8 = 0x73726564726F62;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0xD000000000000018;
    v6 = 0x66456C6175736976;
    if (a1 != 7)
    {
      v6 = 1885433183;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v7 = 0x6168706C61;
    if (a1 != 4)
    {
      v7 = 0x426F547370696C63;
    }

    if (a1 <= 5u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660EE2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0x776F64616873;
    v9 = 0xD000000000000018;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x73726564726F62;
    if (a1 != 5)
    {
      v10 = 0x615272656E726F63;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x726F7463656C6573;
    v7 = 0x6168706C61;
    if (a1 != 3)
    {
      v7 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7373616C63;
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
}

uint64_t sub_1D660EFA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x726F7463656C6573;
    v6 = 0xD000000000000018;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x776F64616873;
    if (a1 != 4)
    {
      v7 = 0x6168706C61;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 0x73726564726F62;
    if (a1 != 2)
    {
      v8 = 0x615272656E726F63;
    }

    if (a1)
    {
      v5 = 0x756F72676B636162;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

unint64_t sub_1D660F0DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x7373616C63;
        break;
      case 2:
        result = 0x726F7463656C6573;
        break;
      case 3:
        result = 1953394534;
        break;
      case 4:
        result = 1819044198;
        break;
      case 5:
        result = 0x73726564726F62;
        break;
      case 6:
        result = 0x776F64616873;
        break;
      case 7:
        result = 0x726F66736E617274;
        break;
      case 8:
        result = 0x7061726761726170;
        break;
      case 9:
        result = 0x676E696B63617274;
        break;
      case 10:
        result = 0x6168706C61;
        break;
      case 11:
        result = 0x6874656B69727473;
        break;
      case 12:
        result = 0x6E696C7265646E75;
        break;
      case 13:
        result = 0xD000000000000018;
        break;
      case 14:
        result = 0x656E696C65736162;
        break;
      case 15:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D660F2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x726F7463656C6573;
    switch(a1)
    {
      case 1:
        result = 1953394534;
        break;
      case 2:
        result = 1819044198;
        break;
      case 3:
        result = 0x73726564726F62;
        break;
      case 4:
        result = 0x776F64616873;
        break;
      case 5:
        result = 0x726F66736E617274;
        break;
      case 6:
        result = 0x7061726761726170;
        break;
      case 7:
        result = 0x676E696B63617274;
        break;
      case 8:
        result = 0x6168706C61;
        break;
      case 9:
        result = 0x6874656B69727473;
        break;
      case 10:
        result = 0x6E696C7265646E75;
        break;
      case 11:
        result = 0xD000000000000018;
        break;
      case 12:
        result = 0x656E696C65736162;
        break;
      case 13:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D660F47C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0x7365707974;
    v10 = 0xD000000000000011;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x726F7463656C6573;
    v12 = 1684957547;
    if (a1 != 7)
    {
      v12 = 0x736E6F6974706FLL;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E6572646C696863;
    v7 = 0x656C797473;
    if (a1 != 4)
    {
      v7 = 0x73656C797473;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 1701667182;
    if (a1 != 1)
    {
      v8 = 0x7470697263736564;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

unint64_t sub_1D660F620(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
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
        result = 0xD000000000000010;
        break;
      case 5:
        result = 0x736574617473;
        break;
      case 6:
        result = 0x7865646E497ALL;
        break;
      case 7:
        result = 0x696C696269736976;
        break;
      case 8:
        result = 0xD000000000000018;
        break;
      case 9:
        result = 0x6F6974616D696E61;
        break;
      case 10:
        result = 0x726F7463656C6573;
        break;
      case 11:
        result = 2019912806;
        break;
      case 12:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D660F7B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 3u)
  {
    v8 = 0x696669746E656469;
    v9 = 0x726F7463656C6573;
    if (a1 != 2)
    {
      v9 = 0x6168706C61;
    }

    if (a1)
    {
      v8 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x776F64616873;
    v6 = 0xD000000000000018;
    if (a1 != 7)
    {
      v6 = 1885433183;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v7 = 0x73726564726F62;
    if (a1 != 4)
    {
      v7 = 0x615272656E726F63;
    }

    if (a1 <= 5u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

unint64_t sub_1D660F904(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x7373616C63;
        break;
      case 2:
        result = 0xD000000000000011;
        break;
      case 3:
        result = 0x656C65536C6C6563;
        break;
      case 4:
        result = 0x697463416C6C6563;
        break;
      case 5:
        result = 0x426F547370696C63;
        break;
      case 6:
        result = 0xD000000000000018;
        break;
      case 7:
        result = 0xD000000000000010;
        break;
      case 8:
        result = 0x726F7463656C6573;
        break;
      case 9:
        result = 0x7261507375636F66;
        break;
      case 10:
        result = 0xD000000000000017;
        break;
      case 11:
        result = 0xD000000000000010;
        break;
      case 12:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D660FAD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x726F7463656C6573;
    v10 = 0x656C65536C6C6563;
    v11 = 0x697463416C6C6563;
    if (a1 != 3)
    {
      v11 = 0x426F547370696C63;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0xD000000000000017;
    v6 = 1885433183;
    if (a1 == 9)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    v8 = 0xD000000000000010;
    if (a1 != 6)
    {
      v8 = 0x7261507375636F66;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D660FCA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x696669746E656469;
    v10 = 0xD00000000000001CLL;
    v11 = 1702521203;
    if (a1 != 3)
    {
      v11 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0x746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0xD000000000000018;
    v6 = 2019912806;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0x656D7473756A6461;
    v8 = 0x7865646E497ALL;
    if (a1 != 6)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

unint64_t sub_1D660FE34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x696669746E656469;
    switch(a1)
    {
      case 1:
        result = 0x746E65746E6F63;
        break;
      case 2:
        result = 0xD000000000000016;
        break;
      case 3:
        result = 0x6769666E6F63;
        break;
      case 4:
        result = 1702521203;
        break;
      case 5:
        result = 0x657A69736572;
        break;
      case 6:
        result = 0x656D7473756A6461;
        break;
      case 7:
        result = 0x656C797473;
        break;
      case 8:
        result = 0x7865646E497ALL;
        break;
      case 9:
        result = 0x696C696269736976;
        break;
      case 10:
        result = 0xD000000000000018;
        break;
      case 11:
        result = 0xD000000000000011;
        break;
      case 12:
        result = 0x6E6F697461636F6CLL;
        break;
      case 13:
        result = 0x726F7463656C6573;
        break;
      case 14:
        result = 2019912806;
        break;
      case 15:
        result = 0x6E697265646E6572;
        break;
      case 16:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D6610028(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x656C616373;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x6E6F69746F6DLL;
    if (a1 != 4)
    {
      v7 = 0x73646E656C62;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 0x72657A6973;
    if (a1 != 2)
    {
      v8 = 0x6152657461746F72;
    }

    if (a1)
    {
      v5 = 0x726F6C6F63;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D6610154(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0x65737265766572;
    v10 = 2019912806;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x656D7473756A6461;
    v12 = 0x6E6572646C696863;
    if (a1 != 7)
    {
      v12 = 0x6465737265766572;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 1701667182;
    v7 = 0x7470697263736564;
    if (a1 != 4)
    {
      v7 = 1702521203;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (a1 != 1)
    {
      v8 = 0x6150746567726174;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D6610304(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x736B636F6C62;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x726F7463656C6573;
    if (a1 != 4)
    {
      v7 = 0x736E6F6974706FLL;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 1701667182;
    if (a1 != 2)
    {
      v8 = 0x7470697263736564;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D661043C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    result = 0x4C52553178;
    switch(a1)
    {
      case 1:
        return 0x4C52553278;
      case 2:
        return 0x4C52553378;
      case 3:
        return 0x365F4C52553178;
      case 4:
        v6 = 0x365F4C52553178;
        return v6 + 256;
      case 5:
        v7 = 0x365F4C52553178;
        return v7 | 0x200;
      case 6:
        return 0x385F4C52553178;
      case 7:
        v6 = 0x385F4C52553178;
        return v6 + 256;
      case 8:
        v7 = 0x385F4C52553178;
        return v7 | 0x200;
      case 9:
        return 0x32315F4C52553178;
      case 10:
        v8 = 0x32315F4C52553178;
        goto LABEL_21;
      case 11:
        v5 = 0x32315F4C52553178;
        goto LABEL_8;
      case 12:
        return 0x38315F4C52553178;
      case 13:
        v8 = 0x38315F4C52553178;
LABEL_21:
        result = v8 + 256;
        break;
      case 14:
        v5 = 0x38315F4C52553178;
LABEL_8:
        result = v5 | 0x200;
        break;
      case 15:
        result = 1885433183;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D66105E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 <= 4u)
  {
    v9 = 0x6E6F697461727564;
    v10 = 0x6D69546E69676562;
    v11 = 0x7366664F656D6974;
    if (a1 != 3)
    {
      v11 = 0x65646F4D6C6C6966;
    }

    if (a1 != 2)
    {
      v10 = v11;
    }

    if (a1)
    {
      v9 = 0x6465657073;
    }

    if (a1 <= 1u)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v5 = 0x7546676E696D6974;
    v6 = 0xD000000000000012;
    if (a1 != 9)
    {
      v6 = 1885433183;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v7 = 0x6F43746165706572;
    v8 = 0x7544746165706572;
    if (a1 != 6)
    {
      v8 = 0x657665726F747561;
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 <= 7u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }
}

unint64_t sub_1D66107AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
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
  }

  return result;
}

uint64_t sub_1D661095C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 2019912806;
    v9 = 0x6E6572646C696863;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x656D7473756A6461;
    if (a1 != 5)
    {
      v10 = 0x74756F79616CLL;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x7470697263736564;
    v7 = 1702521203;
    if (a1 != 3)
    {
      v7 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 1701667182;
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
}

uint64_t sub_1D6610AC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E6572646C696863;
    if (a1 != 6)
    {
      v6 = 1885433183;
    }

    v7 = 0x656469727473;
    if (a1 != 4)
    {
      v7 = 0x65706F6373;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
    }

    v8 = 7235949;
    if (a1 != 2)
    {
      v8 = 7889261;
    }

    if (a1)
    {
      v5 = 0x6F69746172657469;
    }

    if (a1 > 1u)
    {
      v5 = v8;
    }

    if (a1 <= 3u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D6610BE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 4u)
  {
    v8 = 0x726F7463656C6573;
    v9 = 7235952;
    if (a1 != 8)
    {
      v9 = 1885433183;
    }

    if (a1 != 7)
    {
      v8 = v9;
    }

    v10 = 0x7865646E497ALL;
    if (a1 != 5)
    {
      v10 = 0x736E6F6974706FLL;
    }

    if (a1 <= 6u)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x7470697263736564;
    v7 = 0x746E65746E6F63;
    if (a1 != 3)
    {
      v7 = 0x736E6D756C6F63;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 1701667182;
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
}

uint64_t sub_1D6610D4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else if (a1 > 5u)
  {
    v9 = 0xD000000000000018;
    v10 = 2019912806;
    if (a1 != 10)
    {
      v10 = 1885433183;
    }

    if (a1 != 9)
    {
      v9 = v10;
    }

    v11 = 0x6F6974616D696E61;
    v12 = 0x7865646E497ALL;
    if (a1 != 7)
    {
      v12 = 0x696C696269736976;
    }

    if (a1 != 6)
    {
      v11 = v12;
    }

    if (a1 <= 8u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0x657A69736572;
    v7 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v7 = 0x656C797473;
    }

    if (a1 != 3)
    {
      v6 = v7;
    }

    v8 = 1701667182;
    if (a1 != 1)
    {
      v8 = 1702521203;
    }

    if (a1)
    {
      v5 = v8;
    }

    if (a1 <= 2u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}