uint64_t FormatHeadlineBinding.URL.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.URL, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatHeadlineBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v25, v22, v26, &off_1F51F6B18);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD80);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641EE14(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD80);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641EE14(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD80);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641EE14(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD00);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641EE14(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatHeadlineTrackDurationFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineTrackDurationFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineTrackDurationFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v17, v14, v18, &off_1F51F6CB8);
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
    sub_1D64248E8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCE8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64248E8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64DA830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6269737365636361;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xED00007974696C69;
  }

  if (*a2)
  {
    v5 = 0x6269737365636361;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xED00007974696C69;
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

uint64_t sub_1D64DA8E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64DA974(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64DA9F0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64DAA88(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6269737365636361;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xED00007974696C69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatHeadlineTrackProgressFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineTrackProgressFormat, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineTrackProgressFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v11, v9, v12, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCE8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D64247A4(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D64DAEEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x646E656C62;
  if (v2 != 1)
  {
    v4 = 0x7265746C6966;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802723693;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x646E656C62;
  if (*a2 != 1)
  {
    v8 = 0x7265746C6966;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802723693;
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

uint64_t sub_1D64DAFD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64DB06C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64DB0EC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64DB17C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663FF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64DB1AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x646E656C62;
  if (v2 != 1)
  {
    v5 = 0x7265746C6966;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802723693;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatImageAdjustmentBlend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - v8;
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

    v12 = v66;
    v13 = v6;
    v14 = v34;
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
          *(v22 + 16) = &unk_1F5115828;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v13);
          goto LABEL_9;
        }
      }
    }

    sub_1D6695580();
    v63 = 0;
    v64 = 0;
    sub_1D726431C();
    v24 = v14;
    v25 = v12;
    v26 = (v24 + 8);
    if (v65)
    {
      v35 = xmmword_1D7279980;
      sub_1D66955D4();
      sub_1D726431C();
      (*v26)(v15, v13);
      *&v45 = v44;
      BYTE8(v45) = BYTE8(v44);
      sub_1D6011240(&v45);
      v60 = v51;
      v61 = v52;
      v62 = v53;
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v28 = v45;
      v27 = v46;
    }

    else
    {
      v44 = xmmword_1D7279980;
      sub_1D6695628();
      sub_1D726431C();
      (*v26)(v15, v13);
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v35 = v45;
      v36 = v46;
      sub_1D601128C(&v35);
      v60 = v41;
      v61 = v42;
      v62 = v43;
      v56 = v37;
      v57 = v38;
      v58 = v39;
      v59 = v40;
      v28 = v35;
      v27 = v36;
    }

    v54 = v28;
    v55 = v27;
    v29 = v61;
    *(v25 + 96) = v60;
    *(v25 + 112) = v29;
    *(v25 + 128) = v62;
    v30 = v57;
    *(v25 + 32) = v56;
    *(v25 + 48) = v30;
    v31 = v59;
    *(v25 + 64) = v58;
    *(v25 + 80) = v31;
    v32 = v55;
    *v25 = v54;
    *(v25 + 16) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatImageAdjustmentBlend, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v15, v18, &off_1F51F6BF8);
  v20 = *(v2 + 112);
  v39[6] = *(v2 + 96);
  v39[7] = v20;
  v40 = *(v2 + 128);
  v21 = *(v2 + 48);
  v39[2] = *(v2 + 32);
  v39[3] = v21;
  v22 = *(v2 + 80);
  v39[4] = *(v2 + 64);
  v39[5] = v22;
  v23 = *(v2 + 16);
  v39[0] = *v2;
  v39[1] = v23;
  LODWORD(a1) = sub_1D6011234(v39);
  v24 = sub_1D5D756B8(v39);
  if (a1 == 1)
  {
    v25 = *v24;
    v26 = *(v24 + 8);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD00);
    (*(*(v27 - 8) + 16))(v7, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D2A0(1, v25, v26, v7);
    v29 = v7;
  }

  else
  {
    v30 = *(v24 + 112);
    v37[6] = *(v24 + 96);
    v37[7] = v30;
    v38 = *(v24 + 128);
    v31 = *(v24 + 48);
    v37[2] = *(v24 + 32);
    v37[3] = v31;
    v32 = *(v24 + 80);
    v37[4] = *(v24 + 64);
    v37[5] = v32;
    v33 = *(v24 + 16);
    v37[0] = *v24;
    v37[1] = v33;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
    (*(*(v34 - 8) + 16))(v11, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D0E8(0, v37, v11);
    v29 = v11;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D64DBA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F6C6F63;
  }

  else
  {
    v3 = 0x746E656964617267;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F6C6F63;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D64DBB10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64DBB90(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64DBBFC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64DBC84(uint64_t *a1@<X8>)
{
  v2 = 0x746E656964617267;
  if (*v1)
  {
    v2 = 0x726F6C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatImageAdjustmentBlend.ColorData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D669567C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695710(0);
  sub_1D5B58B84(&qword_1EDF25008, sub_1D6695710, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x646F4D646E656C62, 0xE900000000000065);
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

  sub_1D5B570F8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5E4FBA0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.ColorData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D6695890(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6695710(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25008, sub_1D6695710, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend.ColorData, v19, v21, v16, &type metadata for FormatImageAdjustmentBlend.ColorData, v19, &type metadata for FormatVersions.StarSkyC, v17, v14, v20, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
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
  v85 = 0uLL;
  v86 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v81 = &v69;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v83 = v9;
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708A78;
  v68 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6695924(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02F88, sub_1D6695924, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v35;
  v80 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
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
  v67 = sub_1D66959B8;
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

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);

    v51 = v76;
    v73(v76, v49, v48);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v87) = v75;
    v83 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v84 = 0;
    v52 = swift_allocObject();
    v81 = &v69;
    *(v52 + 16) = v83;
    *(v52 + 32) = v84;
    v53 = v74;
    v54 = v82;
    *(v52 + 40) = v74;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708A78;
    v68 = v56;
    v84 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v83;
    *(v57 + 32) = v84;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v84 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v83;
    *(v59 + 40) = v84;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708A78;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D5E4FBF4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6695890);
}

uint64_t sub_1D64DC928()
{
  v1 = 0x646F4D646E656C62;
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
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D64DC97C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66962A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64DC9B4(uint64_t a1)
{
  v2 = sub_1D66957E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DC9F0(uint64_t a1)
{
  v2 = sub_1D66957E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageAdjustmentBlend.GradientData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D6695A34(0);
  v6 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695AC8(0);
  sub_1D5B58B84(&qword_1EC886CC8, sub_1D6695AC8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  v13 = v27;
  v12 = v28;
  if (v11)
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

      v19 = sub_1D6627E68(0x746E656964617267, 0xE800000000000000, 0x646F4D646E656C62, 0xE900000000000065);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v9, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D6695C48();
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_1D726431C();
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D5E4FBA0();
  sub_1D726431C();
  (*(v13 + 8))(v9, v6);
  v22 = v50;
  v23 = v36;
  *(v12 + 64) = v35;
  *(v12 + 80) = v23;
  v24 = v38;
  *(v12 + 96) = v37;
  *(v12 + 112) = v24;
  v25 = v32;
  *v12 = v31;
  *(v12 + 16) = v25;
  v26 = v34;
  *(v12 + 32) = v33;
  *(v12 + 48) = v26;
  *(v12 + 128) = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.GradientData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v72 - v8;
  sub_1D6695C9C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 80);
  v99 = *(v1 + 64);
  v100 = v15;
  v16 = *(v1 + 112);
  v101 = *(v1 + 96);
  v102 = v16;
  v17 = *(v1 + 16);
  v95 = *v1;
  v96 = v17;
  v18 = *(v1 + 48);
  v97 = *(v1 + 32);
  v98 = v18;
  v104 = *(v1 + 128);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6695AC8(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC886CC8, sub_1D6695AC8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend.GradientData, v22, v24, v19, &type metadata for FormatImageAdjustmentBlend.GradientData, v22, &type metadata for FormatVersions.JazzkonG, v20, v14, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v74 = v26;
  v75 = v25;
  v72[2] = v27 + 16;
  v73 = v28;
  (v28)(v9);
  v72[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v91 = v99;
  v92 = v100;
  v93 = v101;
  v94 = v102;
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v103 = 0;
  v32 = swift_allocObject();
  v80 = v72;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v103;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v82 = v9;
  v72[-4] = sub_1D5B4AA6C;
  v72[-3] = 0;
  v70 = sub_1D6708A7C;
  v71 = v34;
  v103 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v103;
  v76 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6695D30(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC886CE8, sub_1D6695D30, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v38;
  v79 = v37;
  v39 = sub_1D72647CC();
  v103 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v103;
  v41 = *(v11 + 36);
  v83 = v14;
  v42 = &v14[v41];
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v72[-4] = sub_1D615B4A4;
  v72[-3] = &v72[-6];
  v49 = v81;
  v50 = v82;
  v70 = sub_1D6695DC4;
  v71 = v35;
  sub_1D5D2BC70(v82, sub_1D615B49C, v51, sub_1D615B4A4, &v72[-6], v43, v44);
  if (v49)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v52 = v83;
  }

  else
  {
    v81 = v42;

    sub_1D6695E40();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v54 = v77;
    v73(v77, v74, v75);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v84) = v104;
    v82 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    LOBYTE(v88) = 0;
    v103 = 0;
    v55 = swift_allocObject();
    v80 = v72;
    *(v55 + 16) = v82;
    *(v55 + 32) = v103;
    v56 = v76;
    *(v55 + 40) = v76;
    *(v55 + 48) = v31;
    MEMORY[0x1EEE9AC00](v55, v57);
    v72[-4] = sub_1D5B4AA6C;
    v72[-3] = 0;
    v70 = sub_1D6708A7C;
    v71 = v58;
    v103 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v82;
    *(v59 + 32) = v103;
    *(v59 + 40) = v56;
    *(v59 + 48) = v31;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v103 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v82;
    *(v61 + 40) = v103;
    v62 = *(v81 + 3);
    v63 = *(v81 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v81, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    v72[-4] = sub_1D615B4A4;
    v72[-3] = &v72[-6];
    v70 = sub_1D6708A7C;
    v71 = v59;
    sub_1D5D2BC70(v54, sub_1D615B49C, v68, sub_1D615B4A4, &v72[-6], v62, v63);

    sub_1D5E4FBF4();
    v69 = v83;
    sub_1D72647EC();
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v52 = v69;
  }

  return sub_1D5D2CFE8(v52, sub_1D6695C9C);
}

unint64_t sub_1D64DD684(char a1)
{
  result = 0x6E616964656DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x766E49726F6C6F63;
      break;
    case 4:
      result = 0x6C416F546B73616DLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 10:
    case 11:
      result = 0x6666456F746F6870;
      break;
    case 9:
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6E6F546169706573;
      break;
    case 16:
      result = 0x6E61697373756167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64DD864()
{
  v1 = 0x646F4D646E656C62;
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
    return 0x746E656964617267;
  }
}

uint64_t sub_1D64DD8BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66963BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64DD8F4(uint64_t a1)
{
  v2 = sub_1D6695BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DD930(uint64_t a1)
{
  v2 = sub_1D6695BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64DD9CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664598(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D64DD9FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D64DD684(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatImageAdjustmentMask.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
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

    v12 = v26;
    v13 = v23;
    if (v11)
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
          *(v20 + 16) = &unk_1F5115878;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v9, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6695E94();
    v25[0] = 0uLL;
    sub_1D726431C();
    v24[8] = xmmword_1D7279980;
    sub_1D6695C48();
    sub_1D726431C();
    (*(v13 + 8))(v9, v6);
    v24[4] = v25[4];
    v24[5] = v25[5];
    v24[6] = v25[6];
    v24[7] = v25[7];
    v24[0] = v25[0];
    v24[1] = v25[1];
    v24[2] = v25[2];
    v24[3] = v25[3];
    nullsub_1();
    sub_1D5F78F40(v24, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentMask.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F78F40(v1, v19);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentMask, &type metadata for FormatCodingKeys, v14, v11, &type metadata for FormatImageAdjustmentMask, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v12, v10, v13, &off_1F51F6BF8);
  sub_1D5F78F40(v19, v20);
  v18[4] = v20[4];
  v18[5] = v20[5];
  v18[6] = v20[6];
  v18[7] = v20[7];
  v18[0] = v20[0];
  v18[1] = v20[1];
  v18[2] = v20[2];
  v18[3] = v20[3];
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD18);
  (*(*(v15 - 8) + 16))(v6, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6390884(v18, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatImageBackground.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6695EE8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695F7C(0);
  sub_1D5B58B84(&qword_1EDF0C520, sub_1D6695F7C, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 0x656C797473, 0xE500000000000000);
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

  sub_1D5B57A54();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  type metadata accessor for FormatImageNodeStyle(0);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v74 - v8;
  sub_1D66960FC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v79 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6695F7C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C520, sub_1D6695F7C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageBackground, v19, v21, v16, &type metadata for FormatImageBackground, v19, &type metadata for FormatVersions.Azden, v17, v14, v20, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCDF8);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v76 = v23;
  v77 = v22;
  v74[2] = v24 + 16;
  v75 = v25;
  v25(v9);
  v74[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v90 = v15;
  v88 = 0uLL;
  v89 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v87 = 0;
  v29 = swift_allocObject();
  *&v84 = v74;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v87;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v83 = &v74[-6];
  v74[-4] = sub_1D5B4AA6C;
  v74[-3] = 0;
  v72 = sub_1D6708A80;
  v73 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v78 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6696190(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03298, sub_1D6696190, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v35;
  v82 = v34;
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
  v45 = v83;
  v74[-4] = sub_1D615B4A4;
  v74[-3] = v45;
  v72 = sub_1D6708A80;
  v73 = v32;
  v46 = v85;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, &v74[-6], v39, v40);
  v86 = v14;
  if (!v46)
  {
    v85 = v28;

    sub_1D5B55E48();
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v80;
    v75(v80, v76, v77);
    swift_storeEnumTagMultiPayload();
    v84 = xmmword_1D728CF30;
    v88 = xmmword_1D728CF30;
    v89 = 0;
    LOBYTE(v90) = 0;
    v51 = swift_allocObject();
    v53 = v51;
    *(v51 + 16) = v84;
    *(v51 + 32) = v90;
    v54 = v79;
    v55 = v85;
    *(v51 + 40) = v78;
    *(v51 + 48) = v55;
    if (v54)
    {
      v83 = v74;
      v90 = v54;
      MEMORY[0x1EEE9AC00](v51, v52);
      v57 = v56;
      v77 = &v74[-6];
      v74[-4] = sub_1D5B4AA6C;
      v74[-3] = 0;
      v72 = sub_1D6708A80;
      v73 = v53;
      v87 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v84;
      *(v58 + 32) = v87;
      *(v58 + 40) = v57;
      *(v58 + 48) = v55;
      swift_retain_n();

      v59 = sub_1D72647CC();
      v87 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v84;
      *(v60 + 40) = v87;
      v61 = *(v38 + 3);
      v62 = *(v38 + 4);
      v63 = __swift_project_boxed_opaque_existential_1(v38, v61);
      MEMORY[0x1EEE9AC00](v63, v64);
      MEMORY[0x1EEE9AC00](v65, v66);
      v67 = v77;
      v74[-4] = sub_1D615B4A4;
      v74[-3] = v67;
      v50 = v80;
      v72 = sub_1D6696224;
      v73 = v58;
      v69 = sub_1D5D2F7A4(v80, sub_1D615B49C, v68, sub_1D615B4A4, &v74[-6], v61, v62);
      v70 = v69;

      if (v70)
      {
        type metadata accessor for FormatImageNodeStyle(0);
        sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
        v71 = v86;
        sub_1D72647EC();

LABEL_14:

        sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
        v48 = v71;
        return sub_1D5D2CFE8(v48, sub_1D66960FC);
      }
    }

    else
    {
    }

    v71 = v86;
    goto LABEL_14;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v48 = v86;
  return sub_1D5D2CFE8(v48, sub_1D66960FC);
}

uint64_t sub_1D64DEE04()
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
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D64DEE54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66964DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64DEE8C(uint64_t a1)
{
  v2 = sub_1D6696054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DEEC8(uint64_t a1)
{
  v2 = sub_1D6696054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageGravity.encode(to:)(void *a1)
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
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
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
  v58 = sub_1D7264B3C();
  v77 = v53;
  FormatImageGravity.rawValue.getter(v58);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v75[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t FormatImageNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v353 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v357 = &v353 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v356 = &v353 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v359 = &v353 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v358 = &v353 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v360 = &v353 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v361 = &v353 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v362 = &v353 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v363 = &v353 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v366 = &v353 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v367 = &v353 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v368 = &v353 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v369 = &v353 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v370 = &v353 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *&v377 = &v353 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v353 - v53;
  sub_1D66965F0(0);
  v379 = v55;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v353 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_1D5C92B28(0);
  v62 = v61;
  v63 = sub_1D5B58B84(&qword_1EDF24B98, sub_1D5C92B28, &unk_1D7321584);
  sub_1D5D2EE70(v4, v62, v64, v59, v4, v62, &type metadata for FormatVersions.JazzkonC, v60, v58, v63, &off_1F51F6C78);
  swift_beginAccess();
  v375 = v2;
  v65 = v2[2];
  v66 = v2[3];
  v67 = qword_1EDF31EB0;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = sub_1D725BD1C();
  v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
  v70 = *(v68 - 8);
  v71 = *(v70 + 16);
  v72 = v70 + 16;
  v374 = v69;
  v376 = v68;
  v71(v54);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v74 = sub_1D725895C();
  v75 = (*(*(v74 - 8) + 48))(v8, 1, v74);
  v372 = v71;
  v373 = v73;
  if (v75 != 1)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v96 = v377;
    v97 = v379;
    goto LABEL_8;
  }

  v365 = v65;
  *&v378 = v72;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v76 = v379;
  v77 = &v58[*(v379 + 11)];
  v79 = *v77;
  v78 = *(v77 + 1);
  LOBYTE(v381) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  *(v80 + 32) = v381;
  *(v80 + 40) = v79;
  *(v80 + 48) = v78;
  sub_1D5E1B6EC(0);
  v82 = v81;
  sub_1D5B58B84(&qword_1EDF02A58, sub_1D5E1B6EC, MEMORY[0x1E69E6F60]);

  v371 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v381) = 0;
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 32) = 0;
  *(v84 + 16) = v83;
  *(v84 + 40) = v381;
  v85 = &v58[*(v76 + 36)];
  v86 = *(v85 + 3);
  v87 = *(v85 + 4);
  v88 = __swift_project_boxed_opaque_existential_1(v85, v86);
  MEMORY[0x1EEE9AC00](v88, v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D6696684;
  v352 = v80;
  v92 = v380;
  v94 = sub_1D5D2F7A4(v54, sub_1D615B49C, v93, sub_1D615B4A4, (&v353 - 6), v86, v87);
  *&v380 = v92;
  if (v92)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v95 = v58;
    return sub_1D5D2CFE8(v95, sub_1D66965F0);
  }

  v123 = v94;

  if ((v123 & 1) == 0)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v71 = v372;
    v72 = v378;
    goto LABEL_7;
  }

  v381 = 0uLL;
  LOBYTE(v382) = 0;
  v394 = v365;
  v395 = v66;
  v124 = v380;
  sub_1D72647EC();

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  v71 = v372;
  v72 = v378;
  v96 = v377;
  v97 = v379;
  if (v124)
  {
    v95 = v58;
    return sub_1D5D2CFE8(v95, sub_1D66965F0);
  }

  *&v380 = 0;
LABEL_8:
  v98 = v375[4];
  (v71)(v96, v374, v376);
  swift_storeEnumTagMultiPayload();
  v394 = v98;
  v378 = xmmword_1D728CF30;
  v381 = xmmword_1D728CF30;
  LOBYTE(v382) = 0;
  v99 = &v58[*(v97 + 44)];
  v101 = *v99;
  v100 = *(v99 + 1);
  LOBYTE(v393) = 0;
  v102 = swift_allocObject();
  v371 = &v353;
  *(v102 + 16) = v378;
  *(v102 + 32) = v393;
  *(v102 + 40) = v101;
  *(v102 + 48) = v100;
  MEMORY[0x1EEE9AC00](v102, v103);
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D6708A84;
  v352 = v104;
  LOBYTE(v393) = 0;
  v105 = v96;
  v106 = swift_allocObject();
  *(v106 + 16) = v378;
  *(v106 + 32) = v393;
  v355 = v101;
  *(v106 + 40) = v101;
  *(v106 + 48) = v100;
  sub_1D5E1B6EC(0);
  v108 = v107;
  v109 = sub_1D5B58B84(&qword_1EDF02A58, sub_1D5E1B6EC, MEMORY[0x1E69E6F60]);
  v354 = v100;
  swift_retain_n();
  v365 = v108;
  v364 = v109;
  v110 = sub_1D72647CC();
  LOBYTE(v393) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = v378;
  *(v111 + 40) = v393;
  v112 = *(v379 + 9);
  v379 = v58;
  v113 = &v58[v112];
  v114 = v72;
  v115 = *(v113 + 3);
  v116 = *(v113 + 4);
  v117 = __swift_project_boxed_opaque_existential_1(v113, v115);
  MEMORY[0x1EEE9AC00](v117, v118);
  MEMORY[0x1EEE9AC00](v119, v120);
  *(&v353 - 4) = sub_1D615B4A4;
  *(&v353 - 3) = (&v353 - 6);
  v351 = sub_1D6708A84;
  v352 = v106;
  v121 = v380;
  sub_1D5D2BC70(v105, sub_1D615B49C, v122, sub_1D615B4A4, (&v353 - 6), v115, v116);
  if (v121)
  {
    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

LABEL_20:
    v95 = v379;
    return sub_1D5D2CFE8(v95, sub_1D66965F0);
  }

  v353 = v113;
  *&v378 = v114;

  sub_1D5CA1E90();
  sub_1D72647EC();
  *&v380 = 0;
  sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);

  v125 = v375;
  v126 = v375[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v127 = v376;
  v128 = __swift_project_value_buffer(v376, qword_1EDFFCD68);
  v129 = v370;
  v130 = v372;
  (v372)(v370, v128, v127);
  swift_storeEnumTagMultiPayload();
  v377 = xmmword_1D7297410;
  v381 = xmmword_1D7297410;
  LOBYTE(v382) = 0;
  LOBYTE(v394) = 0;
  v131 = swift_allocObject();
  v133 = v131;
  *(v131 + 16) = v377;
  *(v131 + 32) = v394;
  v134 = v355;
  v135 = v354;
  *(v131 + 40) = v355;
  *(v131 + 48) = v135;
  if (v126)
  {
    v394 = v126;
    MEMORY[0x1EEE9AC00](v131, v132);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708A84;
    v352 = v133;
    LOBYTE(v393) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v377;
    *(v136 + 32) = v393;
    *(v136 + 40) = v134;
    *(v136 + 48) = v135;
    swift_retain_n();

    v137 = sub_1D72647CC();
    LOBYTE(v393) = 0;
    v138 = swift_allocObject();
    *(v138 + 16) = v137;
    *(v138 + 24) = v377;
    *(v138 + 40) = v393;
    v139 = *(v353 + 3);
    v140 = *(v353 + 4);
    v141 = __swift_project_boxed_opaque_existential_1(v353, v139);
    MEMORY[0x1EEE9AC00](v141, v142);
    MEMORY[0x1EEE9AC00](v143, v144);
    *(&v353 - 4) = sub_1D615B4A4;
    *(&v353 - 3) = (&v353 - 6);
    v351 = sub_1D6708A84;
    v352 = v136;
    v145 = v380;
    v147 = sub_1D5D2F7A4(v129, sub_1D615B49C, v146, sub_1D615B4A4, (&v353 - 6), v139, v140);
    if (v145)
    {

      sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v152 = v147;

    if (v152)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v130 = v372;
      v149 = v355;
      v150 = v369;
      v125 = v375;
      v151 = 0;

      v135 = v354;
    }

    else
    {
      v151 = 0;

      v130 = v372;
      v135 = v354;
      v149 = v355;
      v150 = v369;
      v125 = v375;
    }
  }

  else
  {

    v149 = v134;
    v150 = v369;
    v151 = v380;
  }

  sub_1D5D2CFE8(v370, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v153 = v125[6];
  v130(v150, v374, v376);
  swift_storeEnumTagMultiPayload();
  if (!*(v153 + 16))
  {
    *&v380 = v151;
    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
    goto LABEL_34;
  }

  LOBYTE(v381) = 0;
  v154 = swift_allocObject();
  v380 = xmmword_1D72BAA60;
  *(v154 + 16) = xmmword_1D72BAA60;
  *(v154 + 32) = v381;
  *(v154 + 40) = v149;
  *(v154 + 48) = v135;

  v155 = v379;
  v156 = sub_1D72647CC();
  LOBYTE(v381) = 0;
  v157 = swift_allocObject();
  *(v157 + 16) = v156;
  *(v157 + 24) = v380;
  *(v157 + 40) = v381;
  v158 = *(v353 + 3);
  v159 = *(v353 + 4);
  v160 = __swift_project_boxed_opaque_existential_1(v353, v158);
  MEMORY[0x1EEE9AC00](v160, v161);
  MEMORY[0x1EEE9AC00](v162, v163);
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D6708A84;
  v352 = v154;
  v165 = sub_1D5D2F7A4(v150, sub_1D615B49C, v164, sub_1D615B4A4, (&v353 - 6), v158, v159);
  if (!v151)
  {
    v166 = v165;

    if (v166)
    {
      v381 = v380;
      LOBYTE(v382) = 0;
      v393 = v153;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v130 = v372;
      v125 = v375;
      v149 = v355;
      *&v380 = 0;

      sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
      v135 = v354;
    }

    else
    {
      *&v380 = 0;
      sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);

      v130 = v372;
      v135 = v354;
      v125 = v375;
      v149 = v355;
    }

LABEL_34:
    v167 = v125[7];
    v168 = v368;
    v130(v368, v374, v376);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAA70;
    v381 = xmmword_1D72BAA70;
    LOBYTE(v382) = 0;
    LOBYTE(v393) = 0;
    v169 = swift_allocObject();
    v171 = v169;
    *(v169 + 16) = v377;
    *(v169 + 32) = v393;
    *(v169 + 40) = v149;
    *(v169 + 48) = v135;
    if (v167)
    {
      v371 = &v353;
      v393 = v167;
      MEMORY[0x1EEE9AC00](v169, v170);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v171;
      LOBYTE(v392) = 0;
      v172 = v149;
      v173 = swift_allocObject();
      *(v173 + 16) = v377;
      *(v173 + 32) = v392;
      *(v173 + 40) = v172;
      *(v173 + 48) = v135;
      swift_retain_n();

      v174 = sub_1D72647CC();
      LOBYTE(v392) = 0;
      v175 = swift_allocObject();
      *(v175 + 16) = v174;
      *(v175 + 24) = v377;
      *(v175 + 40) = v392;
      v176 = *(v353 + 3);
      v177 = *(v353 + 4);
      v178 = __swift_project_boxed_opaque_existential_1(v353, v176);
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708A84;
      v352 = v173;
      v182 = v380;
      v184 = sub_1D5D2F7A4(v168, sub_1D615B49C, v183, sub_1D615B4A4, (&v353 - 6), v176, v177);
      v185 = v182;
      if (v182)
      {

        sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
LABEL_54:
        v95 = v379;
        return sub_1D5D2CFE8(v95, sub_1D66965F0);
      }

      v188 = v184;

      if (v188)
      {
        type metadata accessor for FormatImageNodeStyle(0);
        sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
        sub_1D72647EC();
        v186 = v376;
        v130 = v372;
        v187 = v375;
        v149 = v355;
      }

      else
      {

        v186 = v376;
        v130 = v372;
        v187 = v375;
        v149 = v355;
      }
    }

    else
    {

      v185 = v380;
      v186 = v376;
      v187 = v375;
    }

    sub_1D5D2CFE8(v368, type metadata accessor for FormatVersionRequirement);
    v189 = v187[8];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v370 = __swift_project_value_buffer(v186, qword_1EDFFCD50);
    (v130)(v367);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAA80;
    v381 = xmmword_1D72BAA80;
    LOBYTE(v382) = 0;
    LOBYTE(v393) = 0;
    v190 = swift_allocObject();
    v192 = v190;
    *(v190 + 16) = v377;
    *(v190 + 32) = v393;
    v193 = v354;
    *(v190 + 40) = v149;
    *(v190 + 48) = v193;
    if (v189)
    {
      v194 = v149;
      v371 = &v353;
      v393 = v189;
      MEMORY[0x1EEE9AC00](v190, v191);
      *&v380 = v185;
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v192;
      LOBYTE(v392) = 0;
      v195 = v189;
      v196 = swift_allocObject();
      *(v196 + 16) = v377;
      *(v196 + 32) = v392;
      *(v196 + 40) = v194;
      *(v196 + 48) = v193;
      swift_retain_n();

      v197 = sub_1D72647CC();
      LOBYTE(v392) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v197;
      *(v198 + 24) = v377;
      *(v198 + 40) = v392;
      v199 = *(v353 + 3);
      v200 = *(v353 + 4);
      v201 = __swift_project_boxed_opaque_existential_1(v353, v199);
      MEMORY[0x1EEE9AC00](v201, v202);
      MEMORY[0x1EEE9AC00](v203, v204);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708A84;
      v352 = v196;
      v205 = v367;
      v206 = v380;
      v208 = sub_1D5D2F7A4(v367, sub_1D615B49C, v207, sub_1D615B4A4, (&v353 - 6), v199, v200);
      v185 = v206;
      if (v206)
      {

        sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
        goto LABEL_54;
      }

      v209 = v208;
      *&v380 = v195;

      if (v209)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        sub_1D72647EC();
        v186 = v376;
        v130 = v372;
      }

      else
      {

        v186 = v376;
        v130 = v372;
      }

      v193 = v354;
    }

    else
    {

      v205 = v367;
    }

    sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
    v210 = v375[9];
    v130(v366, v374, v186);
    swift_storeEnumTagMultiPayload();
    v393 = v210;
    v380 = xmmword_1D72BAA90;
    v381 = xmmword_1D72BAA90;
    LOBYTE(v382) = 0;
    LOBYTE(v392) = 0;
    v211 = swift_allocObject();
    *&v377 = &v353;
    *(v211 + 16) = v380;
    *(v211 + 32) = v392;
    v212 = v355;
    *(v211 + 40) = v355;
    *(v211 + 48) = v193;
    MEMORY[0x1EEE9AC00](v211, v213);
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708A84;
    v352 = v214;
    LOBYTE(v392) = 0;
    v215 = swift_allocObject();
    *(v215 + 16) = v380;
    *(v215 + 32) = v392;
    *(v215 + 40) = v212;
    *(v215 + 48) = v193;
    swift_retain_n();
    v216 = sub_1D72647CC();
    LOBYTE(v392) = 0;
    v217 = swift_allocObject();
    *(v217 + 16) = v216;
    *(v217 + 24) = v380;
    *(v217 + 40) = v392;
    v218 = *(v353 + 3);
    v219 = *(v353 + 4);
    v220 = __swift_project_boxed_opaque_existential_1(v353, v218);
    MEMORY[0x1EEE9AC00](v220, v221);
    MEMORY[0x1EEE9AC00](v222, v223);
    *(&v353 - 4) = sub_1D615B4A4;
    *(&v353 - 3) = (&v353 - 6);
    v224 = v366;
    v351 = sub_1D6708A84;
    v352 = v215;
    sub_1D5D2BC70(v366, sub_1D615B49C, v225, sub_1D615B4A4, (&v353 - 6), v218, v219);
    if (v185)
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

      goto LABEL_54;
    }

    sub_1D5B55E48();
    sub_1D72647EC();
    sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

    v226 = v375;
    swift_beginAccess();
    v227 = v226[10];
    v228 = v363;
    v229 = v376;
    v230 = v372;
    (v372)(v363, v374, v376);
    swift_storeEnumTagMultiPayload();
    if (v227)
    {
      LOBYTE(v381) = 0;
      v231 = swift_allocObject();
      v380 = xmmword_1D72BAAA0;
      *(v231 + 16) = xmmword_1D72BAAA0;
      *(v231 + 32) = v381;
      *(v231 + 40) = v355;
      *(v231 + 48) = v354;

      v232 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v233 = swift_allocObject();
      *(v233 + 16) = v232;
      *(v233 + 24) = v380;
      *(v233 + 40) = v381;
      v234 = *(v353 + 3);
      v235 = *(v353 + 4);
      v236 = __swift_project_boxed_opaque_existential_1(v353, v234);
      MEMORY[0x1EEE9AC00](v236, v237);
      MEMORY[0x1EEE9AC00](v238, v239);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v231;
      sub_1D5D2F7A4(v228, sub_1D615B49C, v240, sub_1D615B4A4, (&v353 - 6), v234, v235);

      v381 = v380;
      LOBYTE(v382) = 0;
      v392 = v227;
      sub_1D72647EC();
      sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
      v229 = v376;
      v230 = v372;
    }

    else
    {
      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
    }

    v241 = v354;
    v242 = v362;
    v243 = v375;
    swift_beginAccess();
    v244 = v243[11];
    v230(v242, v370, v229);
    swift_storeEnumTagMultiPayload();
    if (v244 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v381) = 0;
      v245 = swift_allocObject();
      v380 = xmmword_1D72BAAB0;
      *(v245 + 16) = xmmword_1D72BAAB0;
      *(v245 + 32) = v381;
      *(v245 + 40) = v355;
      *(v245 + 48) = v241;

      sub_1D5EB1500(v244);
      v246 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v247 = swift_allocObject();
      *(v247 + 16) = v246;
      *(v247 + 24) = v380;
      *(v247 + 40) = v381;
      v248 = *(v353 + 3);
      v249 = *(v353 + 4);
      v250 = __swift_project_boxed_opaque_existential_1(v353, v248);
      MEMORY[0x1EEE9AC00](v250, v251);
      MEMORY[0x1EEE9AC00](v252, v253);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v245;
      LOBYTE(v248) = sub_1D5D2F7A4(v242, sub_1D615B49C, v254, sub_1D615B4A4, (&v353 - 6), v248, v249);

      if (v248)
      {
        v381 = v380;
        LOBYTE(v382) = 0;
        v391 = v244;
        sub_1D5DF6A60();
        sub_1D72647EC();
        sub_1D5EB15C4(v391);
        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v243 = v375;
      }

      else
      {
        sub_1D5EB15C4(v244);
        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
      }

      v229 = v376;
      v230 = v372;
    }

    swift_beginAccess();
    v255 = *(v243 + 96);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v256 = __swift_project_value_buffer(v229, qword_1EDFFCD00);
    v257 = v361;
    v230(v361, v256, v229);
    swift_storeEnumTagMultiPayload();
    if (v255)
    {
      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v381) = 0;
      v258 = swift_allocObject();
      v380 = xmmword_1D72BAAC0;
      *(v258 + 16) = xmmword_1D72BAAC0;
      *(v258 + 32) = v381;
      *(v258 + 40) = v355;
      *(v258 + 48) = v354;

      v259 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v260 = swift_allocObject();
      *(v260 + 16) = v259;
      *(v260 + 24) = v380;
      *(v260 + 40) = v381;
      v261 = *(v353 + 3);
      v262 = *(v353 + 4);
      v263 = __swift_project_boxed_opaque_existential_1(v353, v261);
      MEMORY[0x1EEE9AC00](v263, v264);
      MEMORY[0x1EEE9AC00](v265, v266);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v258;
      sub_1D5D2F7A4(v257, sub_1D615B49C, v267, sub_1D615B4A4, (&v353 - 6), v261, v262);

      v381 = v380;
      LOBYTE(v382) = 0;
      v390[0] = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v361, type metadata accessor for FormatVersionRequirement);
      v243 = v375;
      v229 = v376;
      v230 = v372;
    }

    swift_beginAccess();
    v268 = *(v243 + 97);
    v269 = v360;
    v230(v360, v256, v229);
    swift_storeEnumTagMultiPayload();
    if (v268)
    {
      LOBYTE(v381) = 0;
      v270 = swift_allocObject();
      v377 = xmmword_1D72BAAD0;
      *(v270 + 16) = xmmword_1D72BAAD0;
      *(v270 + 32) = v381;
      *(v270 + 40) = v355;
      *(v270 + 48) = v354;

      v271 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v272 = swift_allocObject();
      *(v272 + 16) = v271;
      *(v272 + 24) = v377;
      *(v272 + 40) = v381;
      v273 = *(v353 + 3);
      v274 = *(v353 + 4);
      v275 = __swift_project_boxed_opaque_existential_1(v353, v273);
      MEMORY[0x1EEE9AC00](v275, v276);
      MEMORY[0x1EEE9AC00](v277, v278);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v270;
      v280 = sub_1D5D2F7A4(v269, sub_1D615B49C, v279, sub_1D615B4A4, (&v353 - 6), v273, v274);
      *&v380 = 0;

      if (v280)
      {
        v381 = v377;
        LOBYTE(v382) = 0;
        LOBYTE(v388) = 1;
        v281 = v380;
        sub_1D72647EC();
        *&v380 = v281;
        if (v281)
        {
          v282 = (&v386 + 8);
LABEL_104:
          sub_1D5D2CFE8(*(v282 - 32), type metadata accessor for FormatVersionRequirement);
          goto LABEL_105;
        }
      }

      sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);
      v243 = v375;
      v229 = v376;
      v230 = v372;
    }

    else
    {
      *&v380 = 0;
      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
    }

    v283 = v243[13];
    v284 = *(v243 + 112);
    v285 = v358;
    v230(v358, v374, v229);
    swift_storeEnumTagMultiPayload();
    v377 = xmmword_1D72BAAE0;
    v381 = xmmword_1D72BAAE0;
    LOBYTE(v382) = 0;
    LOBYTE(v388) = 0;
    v286 = swift_allocObject();
    v288 = v286;
    *(v286 + 16) = v377;
    *(v286 + 32) = v388;
    v289 = v354;
    *(v286 + 40) = v355;
    *(v286 + 48) = v289;
    if (v284 <= 0xFD)
    {
      v388 = v283;
      v389 = v284;
      MEMORY[0x1EEE9AC00](v286, v287);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v288;
      LOBYTE(v386) = 0;
      v290 = swift_allocObject();
      *(v290 + 16) = v377;
      *(v290 + 32) = v386;
      *(v290 + 40) = v355;
      *(v290 + 48) = v289;
      swift_retain_n();
      v291 = sub_1D72647CC();
      LOBYTE(v386) = 0;
      v292 = swift_allocObject();
      *(v292 + 16) = v291;
      *(v292 + 24) = v377;
      *(v292 + 40) = v386;
      v293 = *(v353 + 3);
      v294 = *(v353 + 4);
      v295 = __swift_project_boxed_opaque_existential_1(v353, v293);
      MEMORY[0x1EEE9AC00](v295, v296);
      MEMORY[0x1EEE9AC00](v297, v298);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708A84;
      v352 = v290;
      v299 = v380;
      v301 = sub_1D5D2F7A4(v285, sub_1D615B49C, v300, sub_1D615B4A4, (&v353 - 6), v293, v294);
      *&v380 = v299;
      if (v299)
      {
        sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);

LABEL_105:
        v95 = v379;
        return sub_1D5D2CFE8(v95, sub_1D66965F0);
      }

      v302 = v301;

      if (v302)
      {
        sub_1D5F8F434();
        v303 = v380;
        sub_1D72647EC();
        *&v380 = v303;
        if (v303)
        {
          v304 = &v385;
LABEL_99:
          sub_1D5D2CFE8(*(v304 - 32), type metadata accessor for FormatVersionRequirement);

          goto LABEL_105;
        }
      }

      v243 = v375;
      v285 = v358;
    }

    else
    {
    }

    sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v305 = v243[15];
    v306 = qword_1EDF31EA8;

    if (v306 != -1)
    {
      swift_once();
    }

    v307 = v376;
    v308 = __swift_project_value_buffer(v376, qword_1EDFFCD18);
    (v372)(v359, v308, v307);
    swift_storeEnumTagMultiPayload();
    if (*(v305 + 16))
    {
      LOBYTE(v381) = 0;
      v309 = swift_allocObject();
      v377 = xmmword_1D72BAAF0;
      *(v309 + 16) = xmmword_1D72BAAF0;
      *(v309 + 32) = v381;
      *(v309 + 40) = v355;
      *(v309 + 48) = v354;

      v310 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v311 = swift_allocObject();
      *(v311 + 16) = v310;
      *(v311 + 24) = v377;
      *(v311 + 40) = v381;
      v312 = *(v353 + 3);
      v313 = *(v353 + 4);
      v314 = __swift_project_boxed_opaque_existential_1(v353, v312);
      MEMORY[0x1EEE9AC00](v314, v315);
      MEMORY[0x1EEE9AC00](v316, v317);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v309;
      v318 = v380;
      v320 = sub_1D5D2F7A4(v359, sub_1D615B49C, v319, sub_1D615B4A4, (&v353 - 6), v312, v313);
      *&v380 = v318;
      if (v318)
      {

LABEL_89:
        v282 = &v386;
        goto LABEL_104;
      }

      v321 = v320;

      if (v321)
      {
        v322 = v380;
        sub_1D5E08C6C(v305, v379, 0xC, 0, 0);
        *&v380 = v322;
        if (v322)
        {

          goto LABEL_89;
        }
      }
    }

    sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
    v323 = v356;
    (v372)(v356, v370, v376);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
    v324 = v375[18];
    v325 = v375[19];
    v326 = v375[20];
    v327 = v375[21];
    v328 = v375[22];
    v329 = v375[23];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v330 = v376;
    v331 = __swift_project_value_buffer(v376, qword_1EDFFCE38);
    (v372)(v357, v331, v330);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAB00;
    v386 = xmmword_1D72BAB00;
    v387 = 0;
    LOBYTE(v381) = 0;
    v332 = swift_allocObject();
    v334 = v332;
    *(v332 + 16) = v378;
    *(v332 + 32) = v381;
    v335 = v354;
    *(v332 + 40) = v355;
    *(v332 + 48) = v335;
    if (v324)
    {
      *&v377 = &v353;
      *&v381 = v324;
      *(&v381 + 1) = v325;
      v382 = v326;
      v383 = v327;
      v384 = v328;
      v385 = v329;
      MEMORY[0x1EEE9AC00](v332, v333);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708A84;
      v352 = v334;
      v396 = 0;
      v336 = swift_allocObject();
      *(v336 + 16) = v378;
      *(v336 + 32) = v396;
      *(v336 + 40) = v355;
      *(v336 + 48) = v354;
      swift_retain_n();
      sub_1D5EB1D80(v324, v325, v326, v327, v328, v329);
      v337 = sub_1D72647CC();
      v396 = 0;
      v338 = swift_allocObject();
      *(v338 + 16) = v337;
      *(v338 + 24) = v378;
      *(v338 + 40) = v396;
      v339 = *(v353 + 3);
      v340 = *(v353 + 4);
      v341 = __swift_project_boxed_opaque_existential_1(v353, v339);
      MEMORY[0x1EEE9AC00](v341, v342);
      MEMORY[0x1EEE9AC00](v343, v344);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708A84;
      v352 = v336;
      v345 = v380;
      v347 = sub_1D5D2F7A4(v357, sub_1D615B49C, v346, sub_1D615B4A4, (&v353 - 6), v339, v340);
      *&v380 = v345;
      if (v345)
      {
      }

      else
      {
        v348 = v347;

        if (v348)
        {
          sub_1D6659A24();
          v349 = v380;
          sub_1D72647EC();
          *&v380 = v349;
        }
      }

      v350 = v384;

      sub_1D5CBF568(v350);

      v282 = &v384;
      goto LABEL_104;
    }

    v304 = &v384;
    goto LABEL_99;
  }

  sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v155, sub_1D66965F0);
}

uint64_t sub_1D64E3358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66976EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64E3390(uint64_t a1)
{
  v2 = sub_1D5C83F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E33CC(uint64_t a1)
{
  v2 = sub_1D5C83F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v77 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v75 - v35;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v1;
  v42 = *(v1 + 8);
  v43 = *(v1 + 24);
  v85 = *(v1 + 16);
  v86 = v41;
  v83 = v43;
  v84 = v42;
  v82 = *(v1 + 32);
  v44 = *(v1 + 40);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = sub_1D5C30408();
  v97 = v40;
  sub_1D5D2EE70(&type metadata for FormatImageNodeBinding, &type metadata for FormatCodingKeys, v48, v45, &type metadata for FormatImageNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v46, v40, v47, &off_1F51F6C78);
  v49 = (v44 >> 1) & 0xF;
  if (v49 > 4)
  {
    if (((v44 >> 1) & 0xF) <= 6)
    {
      v50 = v97;
      if (v49 == 5)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCCA8);
        (*(*(v58 - 8) + 16))(v18, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6399DE4(5, v18);
      }

      else
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCE80);
        v18 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6399F70(6, v86 & 1, v18);
      }
    }

    else if (v49 == 7)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD98);
      v18 = v79;
      (*(*(v62 - 8) + 16))(v79, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A108(7, v86, v84, v85, v18);
    }

    else if (v49 == 8)
    {
      *&v92 = v86;
      *(&v92 + 1) = v84;
      v93 = v85;
      v94 = v83;
      v95 = v82;
      v96 = v44 & 1;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD68);
      v18 = v80;
      (*(*(v53 - 8) + 16))(v80, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A2A0(8, &v92, v18);
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE38);
      v18 = v81;
      (*(*(v69 - 8) + 16))(v81, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A440(9, v86 & 1, v18);
    }

    v57 = v18;
    goto LABEL_42;
  }

  if (((v44 >> 1) & 0xF) <= 1)
  {
    if (v49)
    {
      v50 = v97;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCD98);
      (*(*(v71 - 8) + 16))(v32, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6399780(1, v86 & 1, v32);
      v57 = v32;
    }

    else
    {
      v50 = v97;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD30);
      (*(*(v55 - 8) + 16))(v36, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63995EC(0, v86, v36);
      v57 = v36;
    }

    goto LABEL_42;
  }

  if (v49 == 2)
  {
    *&v87 = v86;
    *(&v87 + 1) = v84;
    v88 = v85;
    v89 = v83;
    v90 = v82;
    v91 = v44 & 0xE1;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v60 = sub_1D725BD1C();
    v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
    (*(*(v60 - 8) + 16))(v28, v61, v60);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v50 = v97;
    sub_1D6399918(2, &v87, v28);
    goto LABEL_25;
  }

  if (v49 == 3)
  {
    v50 = v97;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCD98);
    v28 = v76;
    (*(*(v51 - 8) + 16))(v76, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6399AB8(3, v86, v84, v85, v83, v28);
LABEL_25:
    v57 = v28;
LABEL_42:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v50, sub_1D5D30DC4);
  }

  v64 = v97;
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v65 = sub_1D725BD1C();
  v66 = __swift_project_value_buffer(v65, qword_1EDFFCCA8);
  v67 = v77;
  (*(*(v65 - 8) + 16))(v77, v66, v65);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6399C50(4, v86, v67);
  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
}

uint64_t sub_1D64E3EF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6974706FLL;
    v6 = 0x76457374726F7073;
    if (a1 != 8)
    {
      v6 = 0x657069636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7954656C7A7A7570;
    if (a1 != 5)
    {
      v7 = 0x7453656C7A7A7570;
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
    v2 = 0x70756F7267;
    v3 = 6775156;
    if (a1 != 3)
    {
      v3 = 0x656C7A7A7570;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6575737369;
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

uint64_t sub_1D64E408C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64E3EF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatImageNodeRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6696864(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66968F8(0);
  sub_1D5B58B84(&qword_1EDF25268, sub_1D66968F8, &unk_1D7321584);
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

      v20 = sub_1D6627E68(1702521203, 0xE400000000000000, 1752457584, 0xE400000000000000);
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

  sub_1D6696A78();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D6696ACC();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequest.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v80 - v8;
  sub_1D6696B20(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  *&v90 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66968F8(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25268, sub_1D66968F8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequest, v19, v21, v16, &type metadata for FormatImageNodeRequest, v19, &type metadata for FormatVersions.StarSkyC, v17, v14, v20, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v88 = v24 + 16;
  v89 = v25;
  (v25)(v9, v23, v22);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v94 = 0uLL;
  v95 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v96) = 0;
  v29 = swift_allocObject();
  v31 = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v96;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  if (v15)
  {
    v80[2] = v23;
    v84 = v80;
    v96 = v15;
    MEMORY[0x1EEE9AC00](v29, v30);
    v85 = v9;
    v80[-4] = sub_1D5B4AA6C;
    v80[-3] = 0;
    v78 = sub_1D6708A88;
    v79 = v31;
    v93 = 0;
    v32 = swift_allocObject();
    v33 = v27;
    v34 = v32;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v93;
    v82 = v33;
    *(v32 + 40) = v33;
    *(v32 + 48) = v28;
    sub_1D6696BB4(0);
    v35 = v14;
    v37 = v36;
    v38 = sub_1D5B58B84(&qword_1EDF03238, sub_1D6696BB4, MEMORY[0x1E69E6F60]);
    v81 = v28;
    swift_retain_n();

    v39 = v11;
    v80[1] = v37;
    v40 = v38;
    v41 = sub_1D72647CC();
    v93 = 0;
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 16) = v41;
    *(v42 + 40) = v93;
    v43 = *(v39 + 36);
    v86 = v35;
    v44 = &v35[v43];
    v45 = *&v35[v43 + 24];
    v46 = *(v44 + 4);
    v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
    MEMORY[0x1EEE9AC00](v47, v48);
    MEMORY[0x1EEE9AC00](v49, v50);
    v80[-4] = sub_1D615B4A4;
    v80[-3] = &v80[-6];
    v51 = v85;
    v78 = sub_1D6708A88;
    v79 = v34;
    v52 = v92;
    v54 = sub_1D5D2F7A4(v85, sub_1D615B49C, v53, sub_1D615B4A4, &v80[-6], v45, v46);
    if (v52)
    {

      v14 = v86;

      v55 = v51;
LABEL_18:
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v14, sub_1D6696B20);
    }

    v57 = v54;
    v92 = v40;
    v83 = v39;

    if (v57)
    {
      sub_1D6696D18();
      v14 = v86;
      sub_1D72647EC();
      v56 = v90;
      v27 = v82;
      v92 = 0;

      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
      v28 = v81;
    }

    else
    {
      v92 = 0;

      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
      v14 = v86;
      v56 = v90;
      v28 = v81;
      v27 = v82;
    }
  }

  else
  {
    v83 = v11;

    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v56 = v90;
  }

  v58 = v91;
  v89();
  swift_storeEnumTagMultiPayload();
  v90 = xmmword_1D728CF30;
  v94 = xmmword_1D728CF30;
  v95 = 0;
  LOBYTE(v96) = 0;
  v59 = swift_allocObject();
  v61 = v59;
  *(v59 + 16) = v90;
  *(v59 + 32) = v96;
  *(v59 + 40) = v27;
  *(v59 + 48) = v28;
  if (v56)
  {
    v89 = v80;
    v96 = v56;
    MEMORY[0x1EEE9AC00](v59, v60);
    v80[-4] = sub_1D5B4AA6C;
    v80[-3] = 0;
    v78 = sub_1D6708A88;
    v79 = v61;
    v93 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v90;
    *(v62 + 32) = v93;
    *(v62 + 40) = v27;
    *(v62 + 48) = v28;
    sub_1D6696BB4(0);
    sub_1D5B58B84(&qword_1EDF03238, sub_1D6696BB4, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v63 = sub_1D72647CC();
    v93 = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v90;
    *(v64 + 40) = v93;
    v65 = &v14[*(v83 + 36)];
    v66 = *(v65 + 3);
    v67 = *(v65 + 4);
    v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    v80[-4] = sub_1D615B4A4;
    v80[-3] = &v80[-6];
    v73 = v91;
    v72 = v92;
    v78 = sub_1D6696C48;
    v79 = v62;
    v75 = sub_1D5D2F7A4(v91, sub_1D615B49C, v74, sub_1D615B4A4, &v80[-6], v66, v67);
    if (v72)
    {
    }

    else
    {
      v76 = v75;

      if (v76)
      {
        sub_1D6696CC4();
        sub_1D72647EC();
      }
    }

    v55 = v73;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v14, sub_1D6696B20);
}

uint64_t sub_1D64E4DD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6697BE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64E4E10(uint64_t a1)
{
  v2 = sub_1D66969D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E4E4C(uint64_t a1)
{
  v2 = sub_1D66969D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeRequestAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28[-v8 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_22:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v30;
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
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115918;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v9, v5);
          goto LABEL_22;
        }
      }
    }

    sub_1D6696D6C();
    *v28 = 0;
    *&v28[8] = 0;
    sub_1D726431C();
    switch(v27)
    {
      case 1:
        v27 = xmmword_1D7279980;
        sub_1D5CBE83C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v25 = 0;
        v22 = *v28;
        v24 = *&v28[8];
        v23 = v29;
        break;
      case 2:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 1;
        break;
      case 3:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 2;
        break;
      case 4:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 3;
        break;
      case 5:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 4;
        break;
      case 6:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 5;
        break;
      case 7:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 6;
        break;
      case 8:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 7;
        break;
      case 9:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 8;
        break;
      case 10:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 9;
        break;
      case 11:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 10;
        break;
      case 12:
        sub_1D5C71DC8(0);
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 11;
        break;
      default:
        (*(v11 + 8))(v9, v5);
        v22 = 0;
        v23 = 0;
        v24 = 0uLL;
        v25 = 12;
        break;
    }

    *v12 = v22;
    *(v12 + 8) = v24;
    *(v12 + 24) = v23;
    *(v12 + 32) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequestAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v88 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v91 = &v88 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v88 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v88 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v88 - v44;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 8);
  v100 = *v1;
  v51 = *(v1 + 24);
  v89 = *(v1 + 16);
  v90 = v50;
  v88 = v51;
  v52 = *(v1 + 32);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  v55 = sub_1D5C30408();
  v101 = v49;
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestAdjustment, &type metadata for FormatCodingKeys, v56, v53, &type metadata for FormatImageNodeRequestAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v54, v49, v55, &off_1F51F6B18);
  switch(v52)
  {
    case 1:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD00);
      (*(*(v77 - 8) + 16))(v37, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(2, v100, v37);
      v60 = v37;
      break;
    case 2:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCD00);
      (*(*(v70 - 8) + 16))(v33, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(3, v100, v33);
      v60 = v33;
      break;
    case 3:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD00);
      v74 = v91;
      (*(*(v72 - 8) + 16))(v91, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(4, v100, v74);
      v60 = v74;
      break;
    case 4:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD80);
      v45 = v92;
      (*(*(v64 - 8) + 16))(v92, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 5;
      goto LABEL_41;
    case 5:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCD80);
      v45 = v93;
      (*(*(v79 - 8) + 16))(v93, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 6;
      goto LABEL_41;
    case 6:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD00);
      v45 = v94;
      (*(*(v81 - 8) + 16))(v94, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 7;
      goto LABEL_41;
    case 7:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCD00);
      v45 = v95;
      (*(*(v75 - 8) + 16))(v95, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 8;
      goto LABEL_41;
    case 8:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD80);
      v45 = v96;
      (*(*(v85 - 8) + 16))(v96, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 9;
      goto LABEL_41;
    case 9:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD80);
      v45 = v97;
      (*(*(v68 - 8) + 16))(v97, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 10;
      goto LABEL_41;
    case 10:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCD80);
      v45 = v98;
      (*(*(v83 - 8) + 16))(v98, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 11;
      goto LABEL_41;
    case 11:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCD80);
      v45 = v99;
      (*(*(v61 - 8) + 16))(v99, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 12;
LABEL_41:
      v59 = v101;
      sub_1D6388544(v63, v100, v45);
      goto LABEL_42;
    case 12:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD00);
      (*(*(v66 - 8) + 16))(v45, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6419994(0, v45);
LABEL_42:
      v60 = v45;
      break;
    default:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCD00);
      (*(*(v57 - 8) + 16))(v41, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D63883AC(1, v100, v90, v89, v88, v41);
      v60 = v41;
      break;
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

uint64_t sub_1D64E6584(char a1)
{
  result = 0x6C61726765746E69;
  switch(a1)
  {
    case 1:
      return 0x7465736E69;
    case 2:
      return 0x6874646977;
    case 3:
      return 0x746867696568;
    case 4:
      return 0x656C616373;
    case 5:
      return 0x646957656C616373;
    case 6:
      return 0x696548656C616373;
    case 7:
      v3 = 1467507053;
      return v3 | 0x6874646900000000;
    case 8:
      v4 = 1215848813;
      goto LABEL_15;
    case 9:
      v3 = 1466853741;
      return v3 | 0x6874646900000000;
    case 10:
      v4 = 1215195501;
LABEL_15:
      result = v4 | 0x6867696500000000;
      break;
    case 11:
      result = 0x576563616C706572;
      break;
    case 12:
      result = 0x486563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D64E6738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66647B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D64E6768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64E6584(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D64E68A0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v43 = a5;
  v40 = a6;
  sub_1D5C2E60C(0, &qword_1EDF3BBA0, sub_1D6696DC0, sub_1D6696E14, &type metadata for FormatImageNodeRequestAdjustment);
  v11 = v10;
  v41 = *(v10 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v39 = &v38 - v14;
  v15 = a2(0, v13);
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, v43, &unk_1D7321584);
  v19 = v50;
  sub_1D7264B0C();
  if (v19)
  {
    v20 = v19;
LABEL_3:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v11;
  v21 = v40;
  v22 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D7264AFC();
  LOBYTE(v22) = Dictionary<>.errorOnUnknownKeys.getter(v23);

  v24 = v15;
  v25 = v41;
  v26 = v39;
  if (v22)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
    a1 = v50;
    if (v28)
    {
      v29 = (v27 + 48);
      while (*v29 != 1)
      {
        v29 += 24;
        if (!--v28)
        {
          goto LABEL_9;
        }
      }

      v32 = *(v29 - 2);
      v31 = *(v29 - 1);

      v33 = sub_1D6628490(0x656D7473756A6461, 0xEB0000000073746ELL);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v42 + 8))(v18, v24);
      goto LABEL_3;
    }

LABEL_9:
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (sub_1D726434C())
  {
    sub_1D669707C();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v30 = v43;
    sub_1D726431C();
    a1 = v50;
    v35 = sub_1D725A74C();
    (*(v25 + 8))(v26, v30);
    v36 = v42;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v42;
    a1 = v50;
  }

  (*(v36 + 8))(v18, v24);
  *v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequestPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669710C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6696EFC(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24FF8, sub_1D6696EFC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestPath, v16, v18, v13, &type metadata for FormatImageNodeRequestPath, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  v19 = qword_1EDF31E98;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v47) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v47;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66971A0(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF02F78, sub_1D66971A0, MEMORY[0x1E69E6F60]);

  v45[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v47) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v47;
  v31 = &v11[*(v8 + 36)];
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6697234;
  v44 = v25;
  v38 = v46;
  v40 = sub_1D5D2F7A4(v6, sub_1D615B49C, v39, sub_1D615B4A4, &v45[-6], v32, v33);
  if (!v38)
  {
    v41 = v40;
    v46 = v28;

    if (v41)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = v12;
      sub_1D5C34D84(0, &qword_1EDF04AF8, &type metadata for FormatImageNodeRequestAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D66972B0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D669710C);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D669710C);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D669710C);
}

uint64_t sub_1D64E71CC(uint64_t a1)
{
  v2 = sub_1D6696FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E7208(uint64_t a1)
{
  v2 = sub_1D6696FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeRequestSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6697560(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66973E0(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24FE8, sub_1D66973E0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestSize, v16, v18, v13, &type metadata for FormatImageNodeRequestSize, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  v19 = qword_1EDF31E98;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v47) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v47;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66975F4(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF02F68, sub_1D66975F4, MEMORY[0x1E69E6F60]);

  v45[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v47) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v47;
  v31 = &v11[*(v8 + 36)];
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6708A8C;
  v44 = v25;
  v38 = v46;
  v40 = sub_1D5D2F7A4(v6, sub_1D615B49C, v39, sub_1D615B4A4, &v45[-6], v32, v33);
  if (!v38)
  {
    v41 = v40;
    v46 = v28;

    if (v41)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = v12;
      sub_1D5C34D84(0, &qword_1EDF04AF8, &type metadata for FormatImageNodeRequestAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D66972B0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D6697560);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D6697560);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D6697560);
}

void sub_1D64E779C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D7473756A6461 && a2 == 0xEB0000000073746ELL;
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

uint64_t sub_1D64E788C(uint64_t a1)
{
  v2 = sub_1D66974B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E78C8(uint64_t a1)
{
  v2 = sub_1D66974B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v467 = &v463 - v8;
  v9 = sub_1D725B76C();
  v468 = *(v9 - 8);
  v469 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v466 = &v463 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], v5);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  *&v496 = &v463 - v14;
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v471 = &v463 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v470 = &v463 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v472 = &v463 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v473 = &v463 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v474 = &v463 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v475 = &v463 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v476 = &v463 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v477 = &v463 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v478 = &v463 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v479 = &v463 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v481 = &v463 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v482 = &v463 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v483 = &v463 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v484 = &v463 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v485 = &v463 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v494 = (&v463 - v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v463 - v65;
  sub_1D6697D00(0);
  *&v495 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v463 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1[3];
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  sub_1D5C84234(0);
  v74 = v73;
  v75 = sub_1D5B58B84(&qword_1EDF253D8, sub_1D5C84234, &unk_1D7321584);
  v518 = v70;
  sub_1D5D2EE70(v4, v74, v76, v71, v4, v74, &type metadata for FormatVersions.JazzkonC, v72, v70, v75, &off_1F51F6C78);
  swift_beginAccess();
  v77 = v2[2];
  v78 = v2[3];
  v492 = v2;
  v79 = qword_1EDF31EB0;

  if (v79 != -1)
  {
    swift_once();
  }

  v80 = sub_1D725BD1C();
  v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
  v82 = *(v80 - 8);
  v83 = *(v82 + 16);
  v84 = v82 + 16;
  v493 = v80;
  v83(v66, v81, v80);
  v85 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v496;
  v487 = v77;
  sub_1D725892C();
  v87 = sub_1D725895C();
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
  v488 = v84;
  v489 = v83;
  v490 = v81;
  v491 = v85;
  if (v88 == 1)
  {
    v486 = v78;
    sub_1D5D35558(v496, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v89 = v495;
    v90 = v518;
    v91 = &v518[*(v495 + 44)];
    v92 = v66;
    v94 = *v91;
    v93 = *(v91 + 1);
    LOBYTE(v512) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    *(v95 + 24) = 0;
    *(v95 + 32) = v512;
    *(v95 + 40) = v94;
    *(v95 + 48) = v93;
    sub_1D6697D94(0);
    v97 = v96;
    v98 = sub_1D5B58B84(&qword_1EDF03408, sub_1D6697D94, MEMORY[0x1E69E6F60]);

    *&v496 = v97;
    v480 = v98;
    v99 = sub_1D72647CC();
    LOBYTE(v512) = 0;
    v100 = swift_allocObject();
    *(v100 + 24) = 0;
    *(v100 + 32) = 0;
    *(v100 + 16) = v99;
    *(v100 + 40) = v512;
    v101 = (v90 + *(v89 + 36));
    v102 = v101[3];
    v103 = v101[4];
    v104 = __swift_project_boxed_opaque_existential_1(v101, v102);
    MEMORY[0x1EEE9AC00](v104, v105);
    MEMORY[0x1EEE9AC00](v106, v107);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6697E28;
    v462 = v95;
    v108 = v497;
    v110 = sub_1D5D2F7A4(v92, sub_1D615B49C, v109, sub_1D615B4A4, (&v463 - 6), v102, v103);
    *&v497 = v108;
    if (v108)
    {
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      v111 = v90;
      return sub_1D5D2CFE8(v111, sub_1D6697D00);
    }

    v139 = v110;
    v465 = v92;

    if (v139)
    {
      v512 = 0uLL;
      LOBYTE(v513) = 0;
      *&v504 = v487;
      *(&v504 + 1) = v486;
      v140 = v518;
      v141 = v497;
      sub_1D72647EC();
      *&v497 = v141;
      v83 = v489;
      v81 = v490;
      if (v141)
      {

        sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);
        v111 = v140;
        return sub_1D5D2CFE8(v111, sub_1D6697D00);
      }

      sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);

      v83 = v489;
      v81 = v490;
    }
  }

  else
  {
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v496, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v113 = v492[4];
  v114 = v492[5];
  v115 = v494;
  v83(v494, v81, v493);
  swift_storeEnumTagMultiPayload();
  *&v504 = v113;
  *(&v504 + 1) = v114;
  v496 = xmmword_1D728CF30;
  v512 = xmmword_1D728CF30;
  LOBYTE(v513) = 0;
  v116 = v518;
  v117 = &v518[*(v495 + 44)];
  v118 = *v117;
  v119 = *(v117 + 1);
  LOBYTE(v498) = 0;
  v120 = swift_allocObject();
  v487 = &v463;
  *(v120 + 16) = v496;
  *(v120 + 32) = v498;
  *(v120 + 40) = v118;
  *(v120 + 48) = v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v486 = &v463 - 6;
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v122;
  LOBYTE(v498) = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = v496;
  *(v123 + 32) = v498;
  v464 = v118;
  *(v123 + 40) = v118;
  *(v123 + 48) = v119;
  sub_1D6697D94(0);
  v125 = v124;
  v126 = sub_1D5B58B84(&qword_1EDF03408, sub_1D6697D94, MEMORY[0x1E69E6F60]);
  v463 = v119;
  swift_retain_n();
  v465 = v125;
  v480 = v126;
  v127 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  *(v128 + 24) = v496;
  *(v128 + 40) = v498;
  v129 = (v116 + *(v495 + 36));
  v130 = v129[3];
  v131 = v129[4];
  v132 = __swift_project_boxed_opaque_existential_1(v129, v130);
  MEMORY[0x1EEE9AC00](v132, v133);
  MEMORY[0x1EEE9AC00](v134, v135);
  v136 = v486;
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = v136;
  v461 = sub_1D6708A90;
  v462 = v123;
  v137 = v497;
  sub_1D5D2BC70(v115, sub_1D615B49C, v138, sub_1D615B4A4, (&v463 - 6), v130, v131);
  if (v137)
  {
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v518, sub_1D6697D00);
  }

  *&v496 = v129;

  sub_1D72647EC();
  sub_1D5D2CFE8(v494, type metadata accessor for FormatVersionRequirement);

  v142 = v492;
  swift_beginAccess();
  v143 = v142[6];
  v144 = v485;
  v145 = v489;
  v489(v485, v490, v493);
  swift_storeEnumTagMultiPayload();
  if (!*(v143 + 16))
  {
    *&v497 = 0;
    v157 = v144;
LABEL_19:
    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
    goto LABEL_23;
  }

  LOBYTE(v512) = 0;
  v146 = swift_allocObject();
  v497 = xmmword_1D7297410;
  *(v146 + 16) = xmmword_1D7297410;
  *(v146 + 32) = v512;
  *(v146 + 40) = v464;
  *(v146 + 48) = v463;

  v147 = sub_1D72647CC();
  LOBYTE(v512) = 0;
  v148 = swift_allocObject();
  *(v148 + 16) = v147;
  *(v148 + 24) = v497;
  *(v148 + 40) = v512;
  v149 = *(v496 + 24);
  v150 = *(v496 + 32);
  v151 = __swift_project_boxed_opaque_existential_1(v496, v149);
  MEMORY[0x1EEE9AC00](v151, v152);
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v146;
  v156 = sub_1D5D2F7A4(v144, sub_1D615B49C, v155, sub_1D615B4A4, (&v463 - 6), v149, v150);
  v158 = v156;

  if (v158)
  {
    v512 = v497;
    LOBYTE(v513) = 0;
    *&v504 = v143;
    sub_1D5C34D84(0, &qword_1EDF04EA8, &type metadata for FormatImageNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D669820C();
    sub_1D72647EC();
    v142 = v492;
    v145 = v489;
    *&v497 = 0;

    v157 = v485;
    goto LABEL_19;
  }

  *&v497 = 0;
  sub_1D5D2CFE8(v485, type metadata accessor for FormatVersionRequirement);

  v142 = v492;
  v145 = v489;
LABEL_23:
  v159 = v142[7];
  v160 = v484;
  v145(v484, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAA60;
  v512 = xmmword_1D72BAA60;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = v495;
  *(v162 + 32) = v504;
  v163 = v464;
  *(v162 + 40) = v464;
  v164 = v463;
  *(v162 + 48) = v463;
  if (!v159)
  {

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

    v170 = v496;
LABEL_34:
    v183 = v483;
    goto LABEL_35;
  }

  v494 = &v463;
  *&v504 = v159;
  MEMORY[0x1EEE9AC00](v164, v161);
  v166 = v165;
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v162;
  LOBYTE(v498) = 0;
  v167 = swift_allocObject();
  *(v167 + 16) = v495;
  *(v167 + 32) = v498;
  *(v167 + 40) = v163;
  *(v167 + 48) = v166;
  swift_retain_n();

  v168 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v169 = swift_allocObject();
  *(v169 + 16) = v168;
  *(v169 + 24) = v495;
  *(v169 + 40) = v498;
  v170 = v496;
  v171 = *(v496 + 24);
  v172 = *(v496 + 32);
  v173 = __swift_project_boxed_opaque_existential_1(v496, v171);
  MEMORY[0x1EEE9AC00](v173, v174);
  MEMORY[0x1EEE9AC00](v175, v176);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v167;
  v177 = v497;
  v179 = sub_1D5D2F7A4(v160, sub_1D615B49C, v178, sub_1D615B4A4, (&v463 - 6), v171, v172);
  *&v497 = v177;
  if (v177)
  {

LABEL_26:

    v180 = v484;
LABEL_27:
    sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
LABEL_28:
    v111 = v518;
    return sub_1D5D2CFE8(v111, sub_1D6697D00);
  }

  v181 = v179;

  if ((v181 & 1) == 0)
  {

    sub_1D5D2CFE8(v484, type metadata accessor for FormatVersionRequirement);
    v145 = v489;
    v142 = v492;
    goto LABEL_34;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();
  v182 = v497;
  sub_1D72647EC();
  v145 = v489;
  v142 = v492;
  v183 = v483;
  *&v497 = v182;
  if (v182)
  {

    goto LABEL_26;
  }

  sub_1D5D2CFE8(v484, type metadata accessor for FormatVersionRequirement);
LABEL_35:
  swift_beginAccess();
  v184 = v142[8];
  v185 = qword_1EDF31EA8;

  if (v185 != -1)
  {
    swift_once();
  }

  v186 = v493;
  v187 = __swift_project_value_buffer(v493, qword_1EDFFCD18);
  v145(v183, v187, v186);
  swift_storeEnumTagMultiPayload();
  if (!v184)
  {
    v201 = v183;
LABEL_41:
    sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
    goto LABEL_45;
  }

  LOBYTE(v512) = 0;
  v188 = swift_allocObject();
  v495 = xmmword_1D72BAA70;
  *(v188 + 16) = xmmword_1D72BAA70;
  *(v188 + 32) = v512;
  *(v188 + 40) = v464;
  *(v188 + 48) = v463;

  v189 = sub_1D72647CC();
  LOBYTE(v512) = 0;
  v190 = swift_allocObject();
  *(v190 + 16) = v189;
  *(v190 + 24) = v495;
  *(v190 + 40) = v512;
  v191 = v170[3];
  v192 = v170[4];
  v193 = __swift_project_boxed_opaque_existential_1(v170, v191);
  MEMORY[0x1EEE9AC00](v193, v194);
  MEMORY[0x1EEE9AC00](v195, v196);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v188;
  v197 = v497;
  v199 = sub_1D5D2F7A4(v183, sub_1D615B49C, v198, sub_1D615B4A4, (&v463 - 6), v191, v192);
  if (v197)
  {

    v200 = v183;
LABEL_51:
    sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v518, sub_1D6697D00);
  }

  v202 = v199;

  if (v202)
  {
    v512 = v495;
    LOBYTE(v513) = 0;
    *&v504 = v184;
    sub_1D667412C(0, &qword_1EDF1B0A0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment);
    sub_1D66980E0();
    sub_1D72647EC();
    v142 = v492;
    v145 = v489;
    v203 = v483;
    *&v497 = 0;

    v201 = v203;
    goto LABEL_41;
  }

  *&v497 = 0;

  sub_1D5D2CFE8(v483, type metadata accessor for FormatVersionRequirement);
  v142 = v492;
  v145 = v489;
LABEL_45:
  v204 = v142[9];
  v205 = v482;
  v145(v482, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAA80;
  v512 = xmmword_1D72BAA80;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v206 = swift_allocObject();
  v208 = v206;
  *(v206 + 16) = v495;
  *(v206 + 32) = v504;
  v210 = v463;
  v209 = v464;
  *(v206 + 40) = v464;
  *(v206 + 48) = v210;
  if ((~v204 & 0xF000000000000007) == 0)
  {

    v211 = v205;
LABEL_47:
    v212 = v496;
    goto LABEL_48;
  }

  v494 = &v463;
  *&v504 = v204;
  MEMORY[0x1EEE9AC00](v206, v207);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v208;
  LOBYTE(v498) = 0;
  v231 = swift_allocObject();
  *(v231 + 16) = v495;
  *(v231 + 32) = v498;
  *(v231 + 40) = v209;
  *(v231 + 48) = v210;
  swift_retain_n();
  sub_1D5D04BD4(v204);
  v232 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v233 = swift_allocObject();
  *(v233 + 16) = v232;
  *(v233 + 24) = v495;
  *(v233 + 40) = v498;
  v234 = *(v496 + 24);
  v235 = *(v496 + 32);
  v236 = __swift_project_boxed_opaque_existential_1(v496, v234);
  MEMORY[0x1EEE9AC00](v236, v237);
  MEMORY[0x1EEE9AC00](v238, v239);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v231;
  v240 = v497;
  v242 = sub_1D5D2F7A4(v205, sub_1D615B49C, v241, sub_1D615B4A4, (&v463 - 6), v234, v235);
  if (v240)
  {

    v243 = v482;

LABEL_55:
    v200 = v243;
    goto LABEL_51;
  }

  v245 = v242;

  if ((v245 & 1) == 0)
  {
    *&v497 = 0;

    v145 = v489;
    v210 = v463;
    v142 = v492;
    v211 = v482;
    goto LABEL_47;
  }

  sub_1D5D4A808();
  sub_1D72647EC();
  v145 = v489;
  v142 = v492;
  v212 = v496;
  *&v497 = 0;

  v210 = v463;
  v211 = v482;
LABEL_48:
  sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);
  v213 = v142[10];
  v214 = v481;
  v145(v481, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAA90;
  v512 = xmmword_1D72BAA90;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v215 = swift_allocObject();
  v217 = v215;
  *(v215 + 16) = v495;
  *(v215 + 32) = v504;
  v218 = v464;
  *(v215 + 40) = v464;
  *(v215 + 48) = v210;
  if (v213)
  {
    v494 = &v463;
    *&v504 = v213;
    MEMORY[0x1EEE9AC00](v215, v216);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v217;
    LOBYTE(v498) = 0;
    v219 = swift_allocObject();
    *(v219 + 16) = v495;
    *(v219 + 32) = v498;
    *(v219 + 40) = v218;
    *(v219 + 48) = v210;
    swift_retain_n();

    v220 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v221 = swift_allocObject();
    *(v221 + 16) = v220;
    *(v221 + 24) = v495;
    *(v221 + 40) = v498;
    v222 = v212[3];
    v223 = v212[4];
    v224 = __swift_project_boxed_opaque_existential_1(v212, v222);
    MEMORY[0x1EEE9AC00](v224, v225);
    MEMORY[0x1EEE9AC00](v226, v227);
    *(&v463 - 4) = sub_1D615B4A4;
    *(&v463 - 3) = (&v463 - 6);
    v461 = sub_1D6708A90;
    v462 = v219;
    v228 = v497;
    v230 = sub_1D5D2F7A4(v481, sub_1D615B49C, v229, sub_1D615B4A4, (&v463 - 6), v222, v223);
    if (v228)
    {

      v200 = v481;
      goto LABEL_51;
    }

    v246 = v230;

    v244 = v479;
    if (v246)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      sub_1D72647EC();
      v145 = v489;
      *&v497 = 0;

      sub_1D5D2CFE8(v481, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v497 = 0;

      sub_1D5D2CFE8(v481, type metadata accessor for FormatVersionRequirement);
      v145 = v489;
    }

    v210 = v463;
  }

  else
  {

    sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);

    v244 = v479;
  }

  v247 = *(v492 + 88);
  v145(v244, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAAA0;
  v512 = xmmword_1D72BAAA0;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v248 = swift_allocObject();
  v250 = v248;
  *(v248 + 16) = v495;
  *(v248 + 32) = v504;
  v251 = v464;
  *(v248 + 40) = v464;
  *(v248 + 48) = v210;
  if (v247 == 9)
  {

    v252 = v478;
  }

  else
  {
    v494 = &v463;
    LOBYTE(v504) = v247;
    MEMORY[0x1EEE9AC00](v248, v249);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v250;
    LOBYTE(v498) = 0;
    v263 = swift_allocObject();
    *(v263 + 16) = v495;
    *(v263 + 32) = v498;
    *(v263 + 40) = v251;
    *(v263 + 48) = v210;
    swift_retain_n();
    v264 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v265 = swift_allocObject();
    *(v265 + 16) = v264;
    *(v265 + 24) = v495;
    *(v265 + 40) = v498;
    v266 = v212[3];
    v267 = v212[4];
    v268 = __swift_project_boxed_opaque_existential_1(v212, v266);
    MEMORY[0x1EEE9AC00](v268, v269);
    MEMORY[0x1EEE9AC00](v270, v271);
    *(&v463 - 4) = sub_1D615B4A4;
    *(&v463 - 3) = (&v463 - 6);
    v461 = sub_1D6708A90;
    v462 = v263;
    v272 = v497;
    v274 = sub_1D5D2F7A4(v244, sub_1D615B49C, v273, sub_1D615B4A4, (&v463 - 6), v266, v267);
    if (v272)
    {
      goto LABEL_88;
    }

    v287 = v274;

    if (v287)
    {
      sub_1D669808C();
      sub_1D72647EC();
      v252 = v478;
      v244 = v479;
      *&v497 = 0;
      v210 = v463;
    }

    else
    {
      *&v497 = 0;
      v210 = v463;
      v252 = v478;
      v244 = v479;
    }
  }

  sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

  v254 = v492[12];
  v253 = v492[13];
  v255 = *(v492 + 112);
  v489(v252, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAAB0;
  v512 = xmmword_1D72BAAB0;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v256 = swift_allocObject();
  v258 = v256;
  *(v256 + 16) = v495;
  *(v256 + 32) = v504;
  v259 = v464;
  *(v256 + 40) = v464;
  *(v256 + 48) = v210;
  if (v255 > 0xFD)
  {

    sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);

    v260 = v489;
    v261 = v490;
    v262 = v496;
    goto LABEL_80;
  }

  v494 = &v463;
  *&v504 = v254;
  *(&v504 + 1) = v253;
  LOBYTE(v505) = v255;
  MEMORY[0x1EEE9AC00](v256, v257);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v258;
  LOBYTE(v498) = 0;
  v275 = swift_allocObject();
  *(v275 + 16) = v495;
  *(v275 + 32) = v498;
  *(v275 + 40) = v259;
  *(v275 + 48) = v210;
  swift_retain_n();
  sub_1D5ED34B0(v254, v253, v255);
  v276 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v277 = swift_allocObject();
  *(v277 + 16) = v276;
  *(v277 + 24) = v495;
  *(v277 + 40) = v498;
  v262 = v496;
  v278 = *(v496 + 24);
  v279 = *(v496 + 32);
  v280 = __swift_project_boxed_opaque_existential_1(v496, v278);
  MEMORY[0x1EEE9AC00](v280, v281);
  MEMORY[0x1EEE9AC00](v282, v283);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v275;
  v284 = v497;
  v286 = sub_1D5D2F7A4(v478, sub_1D615B49C, v285, sub_1D615B4A4, (&v463 - 6), v278, v279);
  if (v284)
  {

    v243 = v478;
    sub_1D5ED34A0(v504, *(&v504 + 1), v505);
    goto LABEL_55;
  }

  v288 = v286;

  if (v288)
  {
    sub_1D6661258();
    sub_1D72647EC();
    v289 = v478;
    *&v497 = 0;

    sub_1D5ED34A0(v504, *(&v504 + 1), v505);
    v290 = v289;
  }

  else
  {
    *&v497 = 0;

    sub_1D5ED34A0(v504, *(&v504 + 1), v505);
    v290 = v478;
  }

  sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
  v260 = v489;
  v210 = v463;
  v259 = v464;
  v261 = v490;
LABEL_80:
  v291 = v492[15];
  v292 = v477;
  v260(v477, v261, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAAC0;
  v512 = xmmword_1D72BAAC0;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v293 = swift_allocObject();
  v295 = v293;
  *(v293 + 16) = v495;
  *(v293 + 32) = v504;
  *(v293 + 40) = v259;
  *(v293 + 48) = v210;
  if (v291 == 3)
  {

    v296 = v210;
    v297 = v497;
  }

  else
  {
    v494 = &v463;
    *&v504 = v291;
    MEMORY[0x1EEE9AC00](v293, v294);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v295;
    LOBYTE(v498) = 0;
    v305 = swift_allocObject();
    *(v305 + 16) = v495;
    *(v305 + 32) = v498;
    *(v305 + 40) = v259;
    *(v305 + 48) = v210;
    swift_retain_n();
    sub_1D5D0AF9C(v291);
    v306 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v307 = swift_allocObject();
    *(v307 + 16) = v306;
    *(v307 + 24) = v495;
    *(v307 + 40) = v498;
    v308 = v262[3];
    v309 = v262[4];
    v310 = __swift_project_boxed_opaque_existential_1(v262, v308);
    MEMORY[0x1EEE9AC00](v310, v311);
    MEMORY[0x1EEE9AC00](v312, v313);
    *(&v463 - 4) = sub_1D615B4A4;
    *(&v463 - 3) = (&v463 - 6);
    v461 = sub_1D6708A90;
    v462 = v305;
    v314 = v497;
    v316 = sub_1D5D2F7A4(v292, sub_1D615B49C, v315, sub_1D615B4A4, (&v463 - 6), v308, v309);
    v297 = v314;
    if (v314)
    {

      v317 = v477;
      sub_1D5D0AFCC(v504);
LABEL_86:
      v200 = v317;
      goto LABEL_51;
    }

    v330 = v316;

    if (v330)
    {
      sub_1D5CD90A4();
      sub_1D72647EC();
      v292 = v477;

      sub_1D5D0AFCC(v504);
      v296 = v463;
    }

    else
    {

      sub_1D5D0AFCC(v504);
      v296 = v463;
      v292 = v477;
    }
  }

  sub_1D5D2CFE8(v292, type metadata accessor for FormatVersionRequirement);
  v298 = *(v492 + 128);
  v244 = v476;
  v489(v476, v490, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAAD0;
  v512 = xmmword_1D72BAAD0;
  LOBYTE(v513) = 0;
  LOBYTE(v504) = 0;
  v299 = swift_allocObject();
  v301 = v299;
  *(v299 + 16) = v495;
  *(v299 + 32) = v504;
  v302 = v464;
  *(v299 + 40) = v464;
  *(v299 + 48) = v296;
  if (v298 == 4)
  {

    v303 = v490;
    v304 = v244;
    goto LABEL_95;
  }

  v494 = &v463;
  LOBYTE(v504) = v298;
  MEMORY[0x1EEE9AC00](v299, v300);
  *&v497 = v297;
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v301;
  LOBYTE(v498) = 0;
  v318 = swift_allocObject();
  *(v318 + 16) = v495;
  *(v318 + 32) = v498;
  *(v318 + 40) = v302;
  *(v318 + 48) = v296;
  swift_retain_n();
  v319 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v320 = swift_allocObject();
  *(v320 + 16) = v319;
  *(v320 + 24) = v495;
  *(v320 + 40) = v498;
  v321 = v262[3];
  v322 = v262[4];
  v323 = __swift_project_boxed_opaque_existential_1(v262, v321);
  MEMORY[0x1EEE9AC00](v323, v324);
  MEMORY[0x1EEE9AC00](v325, v326);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v318;
  v327 = v497;
  v329 = sub_1D5D2F7A4(v244, sub_1D615B49C, v328, sub_1D615B4A4, (&v463 - 6), v321, v322);
  v297 = v327;
  if (v327)
  {
LABEL_88:
    sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v518, sub_1D6697D00);
  }

  v331 = v329;

  if (v331)
  {
    sub_1D6698038();
    sub_1D72647EC();
  }

  v302 = v464;
  v303 = v490;
  v304 = v476;
LABEL_95:
  sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);

  v332 = v492;
  swift_beginAccess();
  v333 = v332[17];
  v334 = qword_1EDF31F38;

  if (v334 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v493, qword_1EDFFCE38);
  v335 = v475;
  (v489)();
  swift_storeEnumTagMultiPayload();
  if (v333)
  {
    LOBYTE(v512) = 0;
    v336 = swift_allocObject();
    v497 = xmmword_1D72BAAE0;
    *(v336 + 16) = xmmword_1D72BAAE0;
    *(v336 + 32) = v512;
    *(v336 + 40) = v302;
    *(v336 + 48) = v463;

    v337 = v262;
    v338 = v335;
    v339 = sub_1D72647CC();
    LOBYTE(v512) = 0;
    v340 = swift_allocObject();
    *(v340 + 16) = v339;
    *(v340 + 24) = v497;
    *(v340 + 40) = v512;
    v341 = v337[3];
    v342 = v337[4];
    v343 = __swift_project_boxed_opaque_existential_1(v337, v341);
    MEMORY[0x1EEE9AC00](v343, v344);
    MEMORY[0x1EEE9AC00](v345, v346);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v336;
    v348 = sub_1D5D2F7A4(v338, sub_1D615B49C, v347, sub_1D615B4A4, (&v463 - 6), v341, v342);
    if (v297)
    {

      v200 = v338;
      goto LABEL_51;
    }

    v349 = v348;

    if (v349)
    {
      v512 = v497;
      LOBYTE(v513) = 0;
      *&v504 = v333;
      sub_1D667412C(0, &qword_1EDF04E90, &qword_1EDF1B110, &type metadata for FormatImageTransform);
      sub_1D6697F0C();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v475, type metadata accessor for FormatVersionRequirement);
    v303 = v490;
    v302 = v464;
    v262 = v496;
  }

  else
  {
    sub_1D5D2CFE8(v335, type metadata accessor for FormatVersionRequirement);
  }

  v350 = *(v492 + 12);
  v514 = *(v492 + 11);
  v515 = v350;
  v516 = *(v492 + 13);
  v517 = *(v492 + 224);
  v351 = *(v492 + 10);
  v512 = *(v492 + 9);
  v513 = v351;
  v317 = v474;
  v489(v474, v303, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAAF0;
  v510 = xmmword_1D72BAAF0;
  v511 = 0;
  LOBYTE(v504) = 0;
  v352 = swift_allocObject();
  v354 = v352;
  *(v352 + 16) = v495;
  *(v352 + 32) = v504;
  v355 = v463;
  *(v352 + 40) = v302;
  *(v352 + 48) = v355;
  if (v517 == 254)
  {

    goto LABEL_111;
  }

  v494 = &v463;
  v506 = v514;
  v507 = v515;
  v508 = v516;
  v509 = v517;
  v504 = v512;
  v505 = v513;
  MEMORY[0x1EEE9AC00](v352, v353);
  *&v497 = v297;
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v354;
  LOBYTE(v498) = 0;
  v356 = swift_allocObject();
  *(v356 + 16) = v495;
  *(v356 + 32) = v498;
  *(v356 + 40) = v302;
  *(v356 + 48) = v355;
  swift_retain_n();
  sub_1D5D355B8(&v512, &v498, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v357 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v358 = swift_allocObject();
  *(v358 + 16) = v357;
  *(v358 + 24) = v495;
  *(v358 + 40) = v498;
  v359 = v262[3];
  v360 = v262[4];
  v361 = __swift_project_boxed_opaque_existential_1(v262, v359);
  MEMORY[0x1EEE9AC00](v361, v362);
  MEMORY[0x1EEE9AC00](v363, v364);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v356;
  v365 = v497;
  v367 = sub_1D5D2F7A4(v317, sub_1D615B49C, v366, sub_1D615B4A4, (&v463 - 6), v359, v360);
  v297 = v365;
  if (v365)
  {

    v500 = v506;
    v501 = v507;
    v502 = v508;
    v503 = v509;
    v498 = v504;
    v499 = v505;
    sub_1D601144C(&v498);
    goto LABEL_86;
  }

  v368 = v367;

  if (v368)
  {
    sub_1D6661204();
    sub_1D72647EC();
  }

  v500 = v506;
  v501 = v507;
  v502 = v508;
  v503 = v509;
  v498 = v504;
  v499 = v505;
  sub_1D601144C(&v498);
  v355 = v463;
  v262 = v496;
  v303 = v490;
LABEL_111:
  *&v497 = v297;
  sub_1D5D2CFE8(v474, type metadata accessor for FormatVersionRequirement);
  v369 = v492[29];
  v370 = v303;
  v371 = v489;
  v489(v473, v370, v493);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D7282A80;
  v504 = xmmword_1D7282A80;
  LOBYTE(v505) = 0;
  LOBYTE(v498) = 0;
  v372 = swift_allocObject();
  v374 = v372;
  *(v372 + 16) = v495;
  *(v372 + 32) = v498;
  *(v372 + 40) = v464;
  *(v372 + 48) = v355;
  v375 = v355;
  if ((~v369 & 0xF000000000000007) == 0)
  {

    goto LABEL_120;
  }

  *&v498 = v369;
  MEMORY[0x1EEE9AC00](v372, v373);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v374;
  LOBYTE(v510) = 0;
  v376 = swift_allocObject();
  *(v376 + 16) = v495;
  *(v376 + 32) = v510;
  *(v376 + 40) = v464;
  *(v376 + 48) = v355;
  swift_retain_n();
  sub_1D5CFCFAC(v369);
  v377 = sub_1D72647CC();
  LOBYTE(v510) = 0;
  v378 = swift_allocObject();
  *(v378 + 16) = v377;
  *(v378 + 24) = v495;
  *(v378 + 40) = v510;
  v379 = v262[3];
  v380 = v262[4];
  v381 = __swift_project_boxed_opaque_existential_1(v262, v379);
  MEMORY[0x1EEE9AC00](v381, v382);
  MEMORY[0x1EEE9AC00](v383, v384);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v376;
  v385 = v497;
  v387 = sub_1D5D2F7A4(v473, sub_1D615B49C, v386, sub_1D615B4A4, (&v463 - 6), v379, v380);
  *&v497 = v385;
  if (v385)
  {

LABEL_115:

    v180 = v473;
    goto LABEL_27;
  }

  v388 = v387;

  if (v388)
  {
    sub_1D5B55CBC();
    v389 = v497;
    sub_1D72647EC();
    *&v497 = v389;
    if (v389)
    {

      goto LABEL_115;
    }
  }

  v371 = v489;
  v375 = v463;
LABEL_120:
  sub_1D5D2CFE8(v473, type metadata accessor for FormatVersionRequirement);
  v390 = *(v492 + 240);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v391 = v493;
  v392 = __swift_project_value_buffer(v493, qword_1EDFFCDE0);
  v371(v472, v392, v391);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAB00;
  v504 = xmmword_1D72BAB00;
  LOBYTE(v505) = 0;
  LOBYTE(v498) = 0;
  v393 = swift_allocObject();
  v395 = v393;
  *(v393 + 16) = v495;
  *(v393 + 32) = v498;
  v396 = v464;
  *(v393 + 40) = v464;
  *(v393 + 48) = v375;
  if (v390 == 2)
  {
  }

  else
  {
    LOBYTE(v498) = v390 & 1;
    MEMORY[0x1EEE9AC00](v393, v394);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v395;
    LOBYTE(v510) = 0;
    v406 = swift_allocObject();
    *(v406 + 16) = v495;
    *(v406 + 32) = v510;
    *(v406 + 40) = v396;
    *(v406 + 48) = v375;
    swift_retain_n();
    v407 = sub_1D72647CC();
    LOBYTE(v510) = 0;
    v408 = swift_allocObject();
    *(v408 + 16) = v407;
    *(v408 + 24) = v495;
    *(v408 + 40) = v510;
    v409 = *(v496 + 24);
    v410 = *(v496 + 32);
    v411 = __swift_project_boxed_opaque_existential_1(v496, v409);
    MEMORY[0x1EEE9AC00](v411, v412);
    MEMORY[0x1EEE9AC00](v413, v414);
    *(&v463 - 4) = sub_1D615B4A4;
    *(&v463 - 3) = (&v463 - 6);
    v461 = sub_1D6708A90;
    v462 = v406;
    v415 = v497;
    v417 = sub_1D5D2F7A4(v472, sub_1D615B49C, v416, sub_1D615B4A4, (&v463 - 6), v409, v410);
    *&v497 = v415;
    if (v415)
    {
      sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);

      goto LABEL_28;
    }

    v430 = v417;

    if (v430)
    {
      v431 = v497;
      sub_1D72647EC();
      *&v497 = v431;
      if (v431)
      {
        sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);

        goto LABEL_28;
      }
    }
  }

  sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);

  v397 = v492[31];
  v398 = v492[32];
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v399 = v493;
  v400 = __swift_project_value_buffer(v493, qword_1EDFFCD00);
  v401 = v470;
  v489(v470, v400, v399);
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAB10;
  v504 = xmmword_1D72BAB10;
  LOBYTE(v505) = 0;
  LOBYTE(v498) = 0;
  v402 = swift_allocObject();
  v404 = v402;
  *(v402 + 16) = v495;
  *(v402 + 32) = v498;
  v405 = v463;
  *(v402 + 40) = v464;
  *(v402 + 48) = v405;
  if (v397 == 1)
  {

    sub_1D5D2CFE8(v401, type metadata accessor for FormatVersionRequirement);

    goto LABEL_140;
  }

  v494 = &v463;
  *&v498 = v397;
  *(&v498 + 1) = v398;
  MEMORY[0x1EEE9AC00](v402, v403);
  *(&v463 - 4) = sub_1D5B4AA6C;
  *(&v463 - 3) = 0;
  v461 = sub_1D6708A90;
  v462 = v404;
  LOBYTE(v510) = 0;
  v418 = swift_allocObject();
  *(v418 + 16) = v495;
  *(v418 + 32) = v510;
  *(v418 + 40) = v464;
  *(v418 + 48) = v405;
  swift_retain_n();
  sub_1D62B5D88(v397);
  v419 = sub_1D72647CC();
  LOBYTE(v510) = 0;
  v420 = swift_allocObject();
  *(v420 + 16) = v419;
  *(v420 + 24) = v495;
  *(v420 + 40) = v510;
  v421 = *(v496 + 24);
  v422 = *(v496 + 32);
  v423 = __swift_project_boxed_opaque_existential_1(v496, v421);
  MEMORY[0x1EEE9AC00](v423, v424);
  MEMORY[0x1EEE9AC00](v425, v426);
  *(&v463 - 4) = sub_1D615B4A4;
  *(&v463 - 3) = (&v463 - 6);
  v461 = sub_1D6708A90;
  v462 = v418;
  v427 = v497;
  v429 = sub_1D5D2F7A4(v401, sub_1D615B49C, v428, sub_1D615B4A4, (&v463 - 6), v421, v422);
  *&v497 = v427;
  if (v427)
  {

LABEL_132:

    v180 = v470;
    goto LABEL_27;
  }

  v432 = v429;

  if (v432)
  {
    sub_1D6697EB8();
    v433 = v497;
    sub_1D72647EC();
    *&v497 = v433;
    if (v433)
    {

      goto LABEL_132;
    }
  }

  sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);
LABEL_140:
  v434 = OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask;
  sub_1D5B58478(0);
  v436 = *(v435 + 48);
  v437 = &v471[*(v435 + 64)];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v438 = v493;
  v439 = __swift_project_value_buffer(v493, qword_1EDFFCD50);
  v440 = v471;
  v441 = v489;
  v489(v471, v439, v438);
  v441(v440 + v436, v400, v438);
  *v437 = 0;
  v437[1] = 0;
  swift_storeEnumTagMultiPayload();
  v495 = xmmword_1D72BAB20;
  v504 = xmmword_1D72BAB20;
  LOBYTE(v505) = 0;
  LOBYTE(v498) = 0;
  v442 = swift_allocObject();
  *(v442 + 16) = v495;
  *(v442 + 32) = v498;
  v443 = v463;
  *(v442 + 40) = v464;
  *(v442 + 48) = v443;
  v444 = v492 + v434;
  v445 = v467;
  sub_1D5CDE2EC(v444, v467, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v468 + 48))(v445, 1, v469) != 1)
  {
    v446 = (*(v468 + 32))(v466, v467, v469);
    MEMORY[0x1EEE9AC00](v446, v447);
    *(&v463 - 4) = sub_1D5B4AA6C;
    *(&v463 - 3) = 0;
    v461 = sub_1D6708A90;
    v462 = v442;
    LOBYTE(v498) = 0;
    v448 = swift_allocObject();
    *(v448 + 16) = v495;
    *(v448 + 32) = v498;
    *(v448 + 40) = v464;
    *(v448 + 48) = v463;
    swift_retain_n();
    v449 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v450 = swift_allocObject();
    *(v450 + 16) = v449;
    *(v450 + 24) = v495;
    *(v450 + 40) = v498;
    v451 = *(v496 + 24);
    v452 = *(v496 + 32);
    v453 = __swift_project_boxed_opaque_existential_1(v496, v451);
    MEMORY[0x1EEE9AC00](v453, v454);
    MEMORY[0x1EEE9AC00](v455, v456);
    *(&v463 - 4) = sub_1D615B4A4;
    *(&v463 - 3) = (&v463 - 6);
    v461 = sub_1D6708A90;
    v462 = v448;
    v457 = v497;
    v459 = sub_1D5D2F7A4(v471, sub_1D615B49C, v458, sub_1D615B4A4, (&v463 - 6), v451, v452);
    if (v457)
    {
    }

    else
    {
      v460 = v459;

      if (v460)
      {
        sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
        sub_1D72647EC();
      }
    }

    (*(v468 + 8))(v466, v469);
    v200 = v471;
    goto LABEL_51;
  }

  sub_1D5D2CFE8(v471, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v518, sub_1D6697D00);
  return sub_1D5D35558(v467, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D64EBC5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6698DBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64EBC94(uint64_t a1)
{
  v2 = sub_1D5C93ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64EBCD0(uint64_t a1)
{
  v2 = sub_1D5C93ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v378 = &v373 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v380 = &v373 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v382 = &v373 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v385 = &v373 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v386 = &v373 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v387 = &v373 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v391 = &v373 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v392 = &v373 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v394 = &v373 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v398 = &v373 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v399 = &v373 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v400 = &v373 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v406 = &v373 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v373 - v44;
  sub_1D66982A8(0);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v373 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v1 + 8);
  *&v413 = *v1;
  v52 = *(v1 + 16);
  v401 = *(v1 + 24);
  v402 = v52;
  v53 = *(v1 + 32);
  v396 = *(v1 + 40);
  v397 = v53;
  v395 = *(v1 + 48);
  v54 = *(v1 + 104);
  v436 = *(v1 + 88);
  v437 = v54;
  v438 = *(v1 + 120);
  v439 = *(v1 + 136);
  v55 = *(v1 + 72);
  v434 = *(v1 + 56);
  v435 = v55;
  v393 = *(v1 + 144);
  v390 = *(v1 + 152);
  v388 = *(v1 + 153);
  v389 = *(v1 + 160);
  v384 = *(v1 + 168);
  v56 = *(v1 + 184);
  v383 = *(v1 + 176);
  v381 = v56;
  v57 = *(v1 + 200);
  v379 = *(v1 + 192);
  v376 = *(v1 + 208);
  v377 = v57;
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5C86B30(0);
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF253C8, sub_1D5C86B30, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageNodeStyle.Selector, v61, v63, v58, &type metadata for FormatImageNodeStyle.Selector, v61, &type metadata for FormatVersions.JazzkonC, v59, v50, v62, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v407 = v64;
  v408 = v65;
  v403 = v66 + 16;
  v404 = v67;
  (v67)(v45);
  v409 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v415 = v413;
  *(&v415 + 1) = v51;
  v421 = 0uLL;
  LOBYTE(v422) = 0;
  v68 = &v50[*(v47 + 44)];
  v70 = *v68;
  v69 = *(v68 + 1);
  v440 = v45;
  LOBYTE(v432) = 0;
  v71 = swift_allocObject();
  *&v413 = &v373;
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = v432;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v73;
  LOBYTE(v432) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v432;
  v405 = v70;
  *(v74 + 40) = v70;
  *(v74 + 48) = v69;
  sub_1D669833C(0);
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF033F8, sub_1D669833C, MEMORY[0x1E69E6F60]);
  v412 = v69;
  swift_retain_n();
  v410 = v76;
  v411 = v77;
  v78 = sub_1D72647CC();
  LOBYTE(v432) = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v432;
  v80 = *(v47 + 36);
  v81 = v50;
  v82 = &v50[v80];
  v83 = *(v82 + 3);
  v84 = *(v82 + 4);
  v85 = __swift_project_boxed_opaque_existential_1(v82, v83);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v74;
  v89 = v440;
  v90 = v414;
  sub_1D5D2BC70(v440, sub_1D615B49C, v91, sub_1D615B4A4, (&v373 - 6), v83, v84);
  if (v90)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v92 = v81;
LABEL_6:
    v94 = v92;
    return sub_1D5D2CFE8(v94, sub_1D66982A8);
  }

  v375 = v82;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v93 = v81;
  *&v414 = 0;
  sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

  v97 = v406;
  v96 = v407;
  v98 = v404;
  v404(v406, v408, v407);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D728CF30;
  v421 = xmmword_1D728CF30;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v99 = swift_allocObject();
  v101 = v99;
  *(v99 + 16) = v413;
  *(v99 + 32) = v415;
  v102 = v405;
  v103 = v412;
  *(v99 + 40) = v405;
  *(v99 + 48) = v103;
  v374 = v93;
  if ((~v402 & 0xF000000000000007) == 0)
  {

    goto LABEL_10;
  }

  v440 = &v373;
  *&v415 = v402;
  MEMORY[0x1EEE9AC00](v99, v100);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v101;
  LOBYTE(v432) = 0;
  v124 = v123;
  v125 = swift_allocObject();
  *(v125 + 16) = v413;
  *(v125 + 32) = v432;
  *(v125 + 40) = v102;
  *(v125 + 48) = v412;
  swift_retain_n();
  sub_1D5D04BD4(v124);
  v126 = sub_1D72647CC();
  LOBYTE(v432) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v413;
  *(v127 + 40) = v432;
  v128 = *(v375 + 3);
  v129 = *(v375 + 4);
  v130 = __swift_project_boxed_opaque_existential_1(v375, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v125;
  v134 = v414;
  v136 = sub_1D5D2F7A4(v97, sub_1D615B49C, v135, sub_1D615B4A4, (&v373 - 6), v128, v129);
  *&v414 = v134;
  if (v134)
  {

    v121 = v374;
LABEL_16:

    v122 = v97;
    goto LABEL_17;
  }

  v139 = v136;

  if (v139)
  {
    sub_1D5D4A808();
    v121 = v374;
    v140 = v414;
    sub_1D72647EC();
    v98 = v404;
    v102 = v405;
    v96 = v407;
    if (v140)
    {

      v97 = v406;
      goto LABEL_16;
    }

    *&v414 = 0;
  }

  else
  {

    v98 = v404;
    v102 = v405;
    v96 = v407;
  }

LABEL_10:
  sub_1D5D2CFE8(v406, type metadata accessor for FormatVersionRequirement);
  v104 = v400;
  v98(v400, v408, v96);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D7297410;
  v421 = xmmword_1D7297410;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v105 = swift_allocObject();
  v107 = v105;
  *(v105 + 16) = v413;
  *(v105 + 32) = v415;
  v108 = v412;
  *(v105 + 40) = v102;
  *(v105 + 48) = v108;
  if (v401)
  {
    v440 = &v373;
    *&v415 = v401;
    MEMORY[0x1EEE9AC00](v105, v106);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v107;
    LOBYTE(v432) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = v413;
    *(v109 + 32) = v432;
    *(v109 + 40) = v102;
    *(v109 + 48) = v412;
    swift_retain_n();

    v110 = sub_1D72647CC();
    LOBYTE(v432) = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v413;
    *(v111 + 40) = v432;
    v112 = *(v375 + 3);
    v113 = *(v375 + 4);
    v114 = __swift_project_boxed_opaque_existential_1(v375, v112);
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v109;
    v118 = v414;
    v120 = sub_1D5D2F7A4(v104, sub_1D615B49C, v119, sub_1D615B4A4, (&v373 - 6), v112, v113);
    *&v414 = v118;
    if (v118)
    {

      v121 = v374;
LABEL_13:
      v122 = v104;
LABEL_17:
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v121, sub_1D66982A8);
    }

    v141 = v120;

    if (v141)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      v142 = v374;
      v143 = v414;
      sub_1D72647EC();
      v137 = v404;
      v138 = v405;
      if (v143)
      {

        v121 = v142;
        goto LABEL_13;
      }

      *&v414 = 0;

      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      v92 = v142;
    }

    else
    {

      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      v92 = v374;
      v137 = v404;
      v138 = v405;
    }
  }

  else
  {
    v137 = v98;
    v138 = v102;

    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v92 = v374;
  }

  v144 = v399;
  v137(v399, v408, v407);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAA60;
  v432 = xmmword_1D72BAA60;
  v433 = 0;
  LOBYTE(v421) = 0;
  v145 = swift_allocObject();
  v147 = v145;
  *(v145 + 16) = v413;
  *(v145 + 32) = v421;
  v148 = v412;
  *(v145 + 40) = v138;
  *(v145 + 48) = v148;
  if (v395 > 0xFD)
  {

    sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);

    v149 = v138;
    v150 = v137;
    v151 = v407;
    goto LABEL_31;
  }

  v440 = &v373;
  v429 = v397;
  v430 = v396;
  v192 = v412;
  v431 = v395;
  MEMORY[0x1EEE9AC00](v145, v146);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v147;
  LOBYTE(v421) = 0;
  v194 = v193;
  v195 = swift_allocObject();
  *(v195 + 16) = v413;
  *(v195 + 32) = v421;
  *(v195 + 40) = v138;
  *(v195 + 48) = v192;
  swift_retain_n();
  sub_1D5ED34B0(v397, v396, v194);
  v196 = sub_1D72647CC();
  LOBYTE(v421) = 0;
  v197 = swift_allocObject();
  *(v197 + 16) = v196;
  *(v197 + 24) = v413;
  *(v197 + 40) = v421;
  v198 = *(v375 + 3);
  v199 = *(v375 + 4);
  v200 = __swift_project_boxed_opaque_existential_1(v375, v198);
  MEMORY[0x1EEE9AC00](v200, v201);
  MEMORY[0x1EEE9AC00](v202, v203);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v195;
  v204 = v399;
  v205 = v414;
  v207 = sub_1D5D2F7A4(v399, sub_1D615B49C, v206, sub_1D615B4A4, (&v373 - 6), v198, v199);
  *&v414 = v205;
  if (v205)
  {

    v92 = v374;
LABEL_48:
    sub_1D5ED34A0(v429, v430, v431);
    sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v232 = v207;

  if (v232)
  {
    sub_1D6661258();
    v92 = v374;
    v233 = v414;
    sub_1D72647EC();
    v150 = v404;
    v149 = v405;
    v151 = v407;
    if (v233)
    {

      v204 = v399;
      goto LABEL_48;
    }

    *&v414 = 0;

    sub_1D5ED34A0(v429, v430, v431);
    sub_1D5D2CFE8(v399, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5ED34A0(v429, v430, v431);
    sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    v92 = v374;
    v150 = v404;
    v149 = v405;
    v151 = v407;
  }

LABEL_31:
  v152 = v398;
  v150(v398, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAA70;
  v427 = xmmword_1D72BAA70;
  v428 = 0;
  LOBYTE(v421) = 0;
  v153 = swift_allocObject();
  v155 = v153;
  *(v153 + 16) = v413;
  *(v153 + 32) = v421;
  v156 = v412;
  *(v153 + 40) = v149;
  *(v153 + 48) = v156;
  if (v439 == 254)
  {

    goto LABEL_33;
  }

  v440 = &v373;
  v423 = v436;
  v424 = v437;
  v425 = v438;
  v426 = v439;
  v421 = v434;
  v422 = v435;
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v155;
  LOBYTE(v415) = 0;
  v208 = swift_allocObject();
  *(v208 + 16) = v413;
  *(v208 + 32) = v415;
  *(v208 + 40) = v149;
  *(v208 + 48) = v412;
  swift_retain_n();
  sub_1D5D355B8(&v434, &v415, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v209 = sub_1D72647CC();
  LOBYTE(v415) = 0;
  v210 = swift_allocObject();
  *(v210 + 16) = v209;
  *(v210 + 24) = v413;
  *(v210 + 40) = v415;
  v211 = *(v375 + 3);
  v212 = *(v375 + 4);
  v213 = __swift_project_boxed_opaque_existential_1(v375, v211);
  MEMORY[0x1EEE9AC00](v213, v214);
  MEMORY[0x1EEE9AC00](v215, v216);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v208;
  v217 = v414;
  v219 = sub_1D5D2F7A4(v152, sub_1D615B49C, v218, sub_1D615B4A4, (&v373 - 6), v211, v212);
  *&v414 = v217;
  if (v217)
  {

    v417 = v423;
    v418 = v424;
    v419 = v425;
    v420 = v426;
    v415 = v421;
    v416 = v422;
    sub_1D601144C(&v415);
    v92 = v374;
LABEL_51:
    sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v246 = v219;

  if (v246)
  {
    sub_1D6661204();
    v92 = v374;
    v247 = v414;
    sub_1D72647EC();
    v150 = v404;
    v149 = v405;
    v151 = v407;
    if (v247)
    {

      v417 = v423;
      v418 = v424;
      v419 = v425;
      v420 = v426;
      v415 = v421;
      v416 = v422;
      sub_1D601144C(&v415);
      v152 = v398;
      goto LABEL_51;
    }

    *&v414 = 0;

    v417 = v423;
    v418 = v424;
    v419 = v425;
    v420 = v426;
    v415 = v421;
    v416 = v422;
    sub_1D601144C(&v415);
  }

  else
  {

    v417 = v423;
    v418 = v424;
    v419 = v425;
    v420 = v426;
    v415 = v421;
    v416 = v422;
    sub_1D601144C(&v415);
    v92 = v374;
    v150 = v404;
    v149 = v405;
    v151 = v407;
  }

LABEL_33:
  sub_1D5D2CFE8(v398, type metadata accessor for FormatVersionRequirement);
  v157 = v394;
  v150(v394, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAA80;
  v421 = xmmword_1D72BAA80;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v158 = swift_allocObject();
  v160 = v158;
  *(v158 + 16) = v413;
  *(v158 + 32) = v415;
  v161 = v412;
  *(v158 + 40) = v149;
  *(v158 + 48) = v161;
  v162 = v393;
  if ((~v393 & 0xF000000000000007) != 0)
  {
    v440 = &v373;
    *&v415 = v393;
    MEMORY[0x1EEE9AC00](v158, v159);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v160;
    LOBYTE(v427) = 0;
    v220 = swift_allocObject();
    *(v220 + 16) = v413;
    *(v220 + 32) = v427;
    *(v220 + 40) = v149;
    *(v220 + 48) = v412;
    swift_retain_n();
    sub_1D5CFCFAC(v162);
    v221 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v222 = swift_allocObject();
    *(v222 + 16) = v221;
    *(v222 + 24) = v413;
    *(v222 + 40) = v427;
    v223 = *(v375 + 3);
    v224 = *(v375 + 4);
    v225 = __swift_project_boxed_opaque_existential_1(v375, v223);
    MEMORY[0x1EEE9AC00](v225, v226);
    MEMORY[0x1EEE9AC00](v227, v228);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v220;
    v229 = v414;
    v231 = sub_1D5D2F7A4(v157, sub_1D615B49C, v230, sub_1D615B4A4, (&v373 - 6), v223, v224);
    if (v229)
    {

      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
      v94 = v374;
      return sub_1D5D2CFE8(v94, sub_1D66982A8);
    }

    v260 = v231;

    if (v260)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v163 = 0;
      v150 = v404;
      v149 = v405;
      v151 = v407;

      v92 = v374;
    }

    else
    {

      v163 = 0;
      v92 = v374;
      v150 = v404;
      v149 = v405;
      v151 = v407;
    }
  }

  else
  {

    v163 = v414;
  }

  sub_1D5D2CFE8(v394, type metadata accessor for FormatVersionRequirement);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  *&v414 = v163;
  v164 = __swift_project_value_buffer(v151, qword_1EDFFCDE0);
  v165 = v392;
  v150(v392, v164, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAA90;
  v421 = xmmword_1D72BAA90;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v166 = swift_allocObject();
  v168 = v166;
  *(v166 + 16) = v413;
  *(v166 + 32) = v415;
  v169 = v412;
  *(v166 + 40) = v149;
  *(v166 + 48) = v169;
  if (v390 == 2)
  {
  }

  else
  {
    v440 = &v373;
    LOBYTE(v415) = v390 & 1;
    MEMORY[0x1EEE9AC00](v166, v167);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v168;
    LOBYTE(v427) = 0;
    v234 = swift_allocObject();
    *(v234 + 16) = v413;
    *(v234 + 32) = v427;
    *(v234 + 40) = v149;
    *(v234 + 48) = v412;
    swift_retain_n();
    v235 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v236 = swift_allocObject();
    *(v236 + 16) = v235;
    *(v236 + 24) = v413;
    *(v236 + 40) = v427;
    v237 = *(v375 + 3);
    v238 = *(v375 + 4);
    v239 = __swift_project_boxed_opaque_existential_1(v375, v237);
    MEMORY[0x1EEE9AC00](v239, v240);
    MEMORY[0x1EEE9AC00](v241, v242);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v234;
    v243 = v414;
    v245 = sub_1D5D2F7A4(v165, sub_1D615B49C, v244, sub_1D615B4A4, (&v373 - 6), v237, v238);
    *&v414 = v243;
    if (v243)
    {
      goto LABEL_64;
    }

    v261 = v245;

    if (v261)
    {
      v92 = v374;
      v262 = v414;
      sub_1D72647EC();
      v150 = v404;
      v149 = v405;
      v151 = v407;
      if (v262)
      {
        v263 = v392;
LABEL_90:
        sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      *&v414 = 0;
      v165 = v392;
    }

    else
    {
      v92 = v374;
      v150 = v404;
      v149 = v405;
      v151 = v407;
    }
  }

  sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

  v165 = v391;
  v150(v391, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAAA0;
  v421 = xmmword_1D72BAAA0;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v170 = swift_allocObject();
  v172 = v170;
  *(v170 + 16) = v413;
  *(v170 + 32) = v415;
  v173 = v412;
  *(v170 + 40) = v149;
  *(v170 + 48) = v173;
  if (v388 == 4)
  {

    v174 = v414;
  }

  else
  {
    v440 = &v373;
    LOBYTE(v415) = v388;
    MEMORY[0x1EEE9AC00](v170, v171);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v172;
    LOBYTE(v427) = 0;
    v248 = swift_allocObject();
    *(v248 + 16) = v413;
    *(v248 + 32) = v427;
    *(v248 + 40) = v149;
    *(v248 + 48) = v412;
    swift_retain_n();
    v249 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v250 = swift_allocObject();
    *(v250 + 16) = v249;
    *(v250 + 24) = v413;
    *(v250 + 40) = v427;
    v251 = *(v375 + 3);
    v252 = *(v375 + 4);
    v253 = __swift_project_boxed_opaque_existential_1(v375, v251);
    MEMORY[0x1EEE9AC00](v253, v254);
    MEMORY[0x1EEE9AC00](v255, v256);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v248;
    v257 = v414;
    v259 = sub_1D5D2F7A4(v165, sub_1D615B49C, v258, sub_1D615B4A4, (&v373 - 6), v251, v252);
    if (v257)
    {
      goto LABEL_64;
    }

    v264 = v259;

    if (v264)
    {
      sub_1D6698038();
      v92 = v374;
      sub_1D72647EC();
      v174 = 0;
    }

    else
    {
      v174 = 0;
      v92 = v374;
    }

    v150 = v404;
    v149 = v405;
    v151 = v407;
  }

  sub_1D5D2CFE8(v391, type metadata accessor for FormatVersionRequirement);

  v175 = qword_1EDF31F38;
  v176 = v389;

  if (v175 != -1)
  {
    swift_once();
  }

  v177 = __swift_project_value_buffer(v151, qword_1EDFFCE38);
  v178 = v387;
  v150(v387, v177, v151);
  swift_storeEnumTagMultiPayload();
  if (v176)
  {
    LOBYTE(v421) = 0;
    v179 = swift_allocObject();
    v414 = xmmword_1D72BAAB0;
    *(v179 + 16) = xmmword_1D72BAAB0;
    *(v179 + 32) = v421;
    *(v179 + 40) = v149;
    *(v179 + 48) = v412;

    v180 = v178;
    v181 = v174;
    v182 = sub_1D72647CC();
    LOBYTE(v421) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v182;
    *(v183 + 24) = v414;
    *(v183 + 40) = v421;
    v184 = *(v375 + 3);
    v185 = *(v375 + 4);
    v186 = __swift_project_boxed_opaque_existential_1(v375, v184);
    *&v413 = &v373;
    MEMORY[0x1EEE9AC00](v186, v187);
    MEMORY[0x1EEE9AC00](v188, v189);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v179;
    v191 = sub_1D5D2F7A4(v180, sub_1D615B49C, v190, sub_1D615B4A4, (&v373 - 6), v184, v185);
    if (v181)
    {

      sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v92, sub_1D66982A8);
    }

    v265 = v191;

    if (v265)
    {
      v421 = v414;
      LOBYTE(v422) = 0;
      *&v415 = v389;
      sub_1D667412C(0, &qword_1EDF04E90, &qword_1EDF1B110, &type metadata for FormatImageTransform);
      sub_1D6697F0C();
      sub_1D72647EC();
      v149 = v405;
      v266 = v387;
      *&v414 = 0;

      sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
      v151 = v407;
      v150 = v404;
    }

    else
    {
      *&v414 = 0;

      sub_1D5D2CFE8(v387, type metadata accessor for FormatVersionRequirement);
      v150 = v404;
      v149 = v405;
      v151 = v407;
    }
  }

  else
  {
    *&v414 = v174;
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
  }

  v267 = v386;
  v150(v386, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAAC0;
  v421 = xmmword_1D72BAAC0;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v268 = swift_allocObject();
  v270 = v268;
  *(v268 + 16) = v413;
  *(v268 + 32) = v415;
  v271 = v412;
  *(v268 + 40) = v149;
  *(v268 + 48) = v271;
  if (v384 == 9)
  {

    goto LABEL_94;
  }

  v440 = &v373;
  LOBYTE(v415) = v384;
  MEMORY[0x1EEE9AC00](v268, v269);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v270;
  LOBYTE(v427) = 0;
  v272 = swift_allocObject();
  *(v272 + 16) = v413;
  *(v272 + 32) = v427;
  *(v272 + 40) = v149;
  *(v272 + 48) = v412;
  swift_retain_n();
  v165 = v267;
  v273 = sub_1D72647CC();
  LOBYTE(v427) = 0;
  v274 = swift_allocObject();
  *(v274 + 16) = v273;
  *(v274 + 24) = v413;
  *(v274 + 40) = v427;
  v275 = *(v375 + 3);
  v276 = *(v375 + 4);
  v277 = __swift_project_boxed_opaque_existential_1(v375, v275);
  MEMORY[0x1EEE9AC00](v277, v278);
  MEMORY[0x1EEE9AC00](v279, v280);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v272;
  v281 = v414;
  v283 = sub_1D5D2F7A4(v165, sub_1D615B49C, v282, sub_1D615B4A4, (&v373 - 6), v275, v276);
  *&v414 = v281;
  if (v281)
  {
LABEL_64:
    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

    v92 = v374;
    goto LABEL_6;
  }

  v284 = v283;

  if (v284)
  {
    sub_1D669808C();
    v92 = v374;
    v285 = v414;
    sub_1D72647EC();
    if (v285)
    {
      v263 = v165;
      goto LABEL_90;
    }

    *&v414 = 0;
  }

  else
  {
    v92 = v374;
  }

  v150 = v404;
  v149 = v405;
  v151 = v407;
LABEL_94:
  sub_1D5D2CFE8(v386, type metadata accessor for FormatVersionRequirement);

  v286 = v385;
  v150(v385, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAAD0;
  v421 = xmmword_1D72BAAD0;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v287 = swift_allocObject();
  v289 = v287;
  *(v287 + 16) = v413;
  *(v287 + 32) = v415;
  v290 = v412;
  *(v287 + 40) = v149;
  *(v287 + 48) = v290;
  if (v383 == 3)
  {

    goto LABEL_105;
  }

  v440 = &v373;
  *&v415 = v383;
  MEMORY[0x1EEE9AC00](v287, v288);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D6708A94;
  v372 = v289;
  LOBYTE(v427) = 0;
  v292 = v291;
  v293 = swift_allocObject();
  *(v293 + 16) = v413;
  *(v293 + 32) = v427;
  *(v293 + 40) = v149;
  *(v293 + 48) = v412;
  swift_retain_n();
  sub_1D5D0AF9C(v292);
  v294 = v286;
  v295 = sub_1D72647CC();
  LOBYTE(v427) = 0;
  v296 = swift_allocObject();
  *(v296 + 16) = v295;
  *(v296 + 24) = v413;
  *(v296 + 40) = v427;
  v297 = *(v375 + 3);
  v298 = *(v375 + 4);
  v299 = __swift_project_boxed_opaque_existential_1(v375, v297);
  MEMORY[0x1EEE9AC00](v299, v300);
  MEMORY[0x1EEE9AC00](v301, v302);
  *(&v373 - 4) = sub_1D615B4A4;
  *(&v373 - 3) = (&v373 - 6);
  v371 = sub_1D6708A94;
  v372 = v293;
  v303 = v414;
  v305 = sub_1D5D2F7A4(v294, sub_1D615B49C, v304, sub_1D615B4A4, (&v373 - 6), v297, v298);
  *&v414 = v303;
  if (v303)
  {

    v92 = v374;
LABEL_98:
    sub_1D5D0AFCC(v415);
LABEL_109:
    sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v306 = v305;

  if (v306)
  {
    sub_1D5CD90A4();
    v92 = v374;
    v307 = v414;
    sub_1D72647EC();
    if (v307)
    {

      goto LABEL_98;
    }

    *&v414 = 0;

    sub_1D5D0AFCC(v415);
  }

  else
  {

    sub_1D5D0AFCC(v415);
    v92 = v374;
  }

  v150 = v404;
  v149 = v405;
  v151 = v407;
LABEL_105:
  sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
  v308 = v382;
  v150(v382, v408, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAAE0;
  v421 = xmmword_1D72BAAE0;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v309 = swift_allocObject();
  v311 = v309;
  *(v309 + 16) = v413;
  *(v309 + 32) = v415;
  v312 = v412;
  *(v309 + 40) = v149;
  *(v309 + 48) = v312;
  if (v381)
  {
    v440 = &v373;
    *&v415 = v381;
    MEMORY[0x1EEE9AC00](v309, v310);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v311;
    LOBYTE(v427) = 0;
    v313 = swift_allocObject();
    *(v313 + 16) = v413;
    *(v313 + 32) = v427;
    *(v313 + 40) = v149;
    *(v313 + 48) = v412;
    swift_retain_n();

    v294 = v308;
    v314 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v315 = swift_allocObject();
    *(v315 + 16) = v314;
    *(v315 + 24) = v413;
    *(v315 + 40) = v427;
    v316 = *(v375 + 3);
    v317 = *(v375 + 4);
    v318 = __swift_project_boxed_opaque_existential_1(v375, v316);
    MEMORY[0x1EEE9AC00](v318, v319);
    MEMORY[0x1EEE9AC00](v320, v321);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v313;
    v322 = v414;
    v324 = sub_1D5D2F7A4(v294, sub_1D615B49C, v323, sub_1D615B4A4, (&v373 - 6), v316, v317);
    *&v414 = v322;
    if (v322)
    {

      v92 = v374;
LABEL_108:

      goto LABEL_109;
    }

    v325 = v324;

    if (v325)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v92 = v374;
      v326 = v414;
      sub_1D72647EC();
      if (v326)
      {

        goto LABEL_108;
      }

      *&v414 = 0;

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
      v92 = v374;
    }

    v150 = v404;
    v149 = v405;
    v151 = v407;
  }

  else
  {

    sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
  }

  v327 = v380;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v328 = __swift_project_value_buffer(v151, qword_1EDFFCD50);
  v150(v327, v328, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D72BAAF0;
  v421 = xmmword_1D72BAAF0;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v329 = swift_allocObject();
  v331 = v329;
  *(v329 + 16) = v413;
  *(v329 + 32) = v415;
  v332 = v412;
  *(v329 + 40) = v149;
  *(v329 + 48) = v332;
  if (v379)
  {
    v440 = &v373;
    *&v415 = v379;
    MEMORY[0x1EEE9AC00](v329, v330);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v331;
    LOBYTE(v427) = 0;
    v333 = swift_allocObject();
    *(v333 + 16) = v413;
    *(v333 + 32) = v427;
    *(v333 + 40) = v149;
    *(v333 + 48) = v412;
    swift_retain_n();

    v334 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v335 = swift_allocObject();
    *(v335 + 16) = v334;
    *(v335 + 24) = v413;
    *(v335 + 40) = v427;
    v336 = *(v375 + 3);
    v337 = *(v375 + 4);
    v338 = __swift_project_boxed_opaque_existential_1(v375, v336);
    MEMORY[0x1EEE9AC00](v338, v339);
    MEMORY[0x1EEE9AC00](v340, v341);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708A94;
    v372 = v333;
    v342 = v414;
    v344 = sub_1D5D2F7A4(v327, sub_1D615B49C, v343, sub_1D615B4A4, (&v373 - 6), v336, v337);
    *&v414 = v342;
    if (v342)
    {

LABEL_122:
      v345 = v380;
LABEL_138:
      sub_1D5D2CFE8(v345, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v92, sub_1D66982A8);
    }

    v346 = v344;

    if (v346)
    {
      sub_1D5C34D84(0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6698170();
      v347 = v414;
      sub_1D72647EC();
      *&v414 = v347;
      if (v347)
      {

        goto LABEL_122;
      }
    }

    sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);
    v150 = v404;
    v149 = v405;
    v151 = v407;
  }

  else
  {

    sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);
  }

  v348 = v378;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v349 = __swift_project_value_buffer(v151, qword_1EDFFCD00);
  v150(v348, v349, v151);
  swift_storeEnumTagMultiPayload();
  v413 = xmmword_1D7282A80;
  v421 = xmmword_1D7282A80;
  LOBYTE(v422) = 0;
  LOBYTE(v415) = 0;
  v350 = swift_allocObject();
  v352 = v348;
  v353 = v350;
  *(v350 + 16) = v413;
  *(v350 + 32) = v415;
  v354 = v412;
  *(v350 + 40) = v149;
  *(v350 + 48) = v354;
  v355 = v377;
  if (v377 != 1)
  {
    v440 = &v373;
    *&v415 = v377;
    *(&v415 + 1) = v376;
    MEMORY[0x1EEE9AC00](v350, v351);
    v409 = &v373 - 6;
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708A94;
    v372 = v353;
    LOBYTE(v427) = 0;
    v356 = swift_allocObject();
    *(v356 + 16) = v413;
    *(v356 + 32) = v427;
    *(v356 + 40) = v149;
    *(v356 + 48) = v354;
    swift_retain_n();
    sub_1D62B5D88(v355);
    v357 = sub_1D72647CC();
    LOBYTE(v427) = 0;
    v358 = swift_allocObject();
    *(v358 + 16) = v357;
    *(v358 + 24) = v413;
    *(v358 + 40) = v427;
    v359 = *(v375 + 3);
    v360 = *(v375 + 4);
    v361 = __swift_project_boxed_opaque_existential_1(v375, v359);
    MEMORY[0x1EEE9AC00](v361, v362);
    MEMORY[0x1EEE9AC00](v363, v364);
    v365 = v409;
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = v365;
    v371 = sub_1D66983D0;
    v372 = v356;
    v366 = v414;
    v368 = sub_1D5D2F7A4(v378, sub_1D615B49C, v367, sub_1D615B4A4, (&v373 - 6), v359, v360);
    *&v414 = v366;
    if (v366)
    {
    }

    else
    {
      v369 = v368;

      if (v369)
      {
        sub_1D6697EB8();
        v370 = v414;
        sub_1D72647EC();
        *&v414 = v370;
      }
    }

    v345 = v378;
    goto LABEL_138;
  }

  sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v92, sub_1D66982A8);
}

uint64_t sub_1D64EF40C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6699360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64EF444(uint64_t a1)
{
  v2 = sub_1D5C74254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64EF480(uint64_t a1)
{
  v2 = sub_1D5C74254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageRenderingMode.encode(to:)(void *a1)
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
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageRenderingMode, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatImageRenderingMode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
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
      sub_1D641BFE8(1, v14);
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
      sub_1D641BFE8(2, v10);
      v30 = v10;
    }

    else
    {
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      sub_1D5D0AFBC(v36);
      sub_1D5D0AFBC(v35);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639310C(3, v36, v35, v6);
      sub_1D5D0AFCC(v36);
      sub_1D5D0AFCC(v35);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641BFE8(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D64EF9D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64EFAAC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64EFB6C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64EFC3C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C616E696769726FLL;
  v4 = 0xE900000000000063;
  v5 = 0x6974616D6F747561;
  if (*v1 != 2)
  {
    v5 = 0x65746E4972657375;
    v4 = 0xED00006563616672;
  }

  if (*v1)
  {
    v3 = 0x6574616C706D6574;
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

uint64_t FormatImageResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v36 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v35 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v39 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
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
  v24 = v42;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v27 = v40[3];
    v26 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v27);
    if (v39 > 1)
    {
      v29 = v26;
      if (v39 == 2)
      {
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
        v31 = v37;
        v23(v37, v30, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v27, v29);
        sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v32 = __swift_project_value_buffer(v21, qword_1EDFFCD80);
        v33 = v38;
        v23(v38, v32, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v27, v29);
        sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      v42 = v27;
      v28 = v35;
      v23(v35, v22, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v42, v26);
      sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return result;
}

uint64_t sub_1D64F02B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5870696C66;
  if (v2 != 1)
  {
    v3 = 0x5970696C66;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x657461746F72;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x5870696C66;
  if (*a2 != 1)
  {
    v6 = 0x5970696C66;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x657461746F72;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
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

uint64_t sub_1D64F03A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64F043C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64F04C0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64F0554@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663D94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64F0584(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x5870696C66;
  if (v2 != 1)
  {
    v4 = 0x5970696C66;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x657461746F72;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatImageTransformRotate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6698460(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66984F4(0);
  sub_1D5B58B84(&qword_1EC886D28, sub_1D66984F4, &unk_1D7321584);
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

      v19 = sub_1D6628490(0x73656572676564, 0xE700000000000000);
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

  sub_1D5B57870();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageTransformRotate.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6698674(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66984F4(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886D28, sub_1D66984F4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatImageTransformRotate, v16, v18, v13, &type metadata for FormatImageTransformRotate, v16, &type metadata for FormatVersions.CrystalGlowE, v14, v11, v17, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCE38);
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
  v44[1] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D6708A98;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6698708(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886D40, sub_1D6698708, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[0] = v29;
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
  v42 = sub_1D669879C;
  v43 = v27;
  v39 = v44[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6698674);
}

uint64_t sub_1D64F0E7C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x73656572676564;
  }
}

void sub_1D64F0EB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656572676564 && a2 == 0xE700000000000000;
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

uint64_t sub_1D64F0F9C(uint64_t a1)
{
  v2 = sub_1D66985CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F0FD8(uint64_t a1)
{
  v2 = sub_1D66985CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssueBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Action, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D64222D4(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.ActivityItemsConfiguration.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422968(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Bool, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatIssueBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v28, v25, v29, &off_1F51F6C18);
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
      sub_1D6422814(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD98);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6422814(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD98);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD80);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.DateTime, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
  if (v15)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642202C(1, v6);
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
    sub_1D642202C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v29;
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
          *(v21 + 16) = &unk_1F5115AF8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698968();
    v26 = 0;
    v27 = 0;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D6659898();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v27;
    v24 = v28;
    *v14 = v26;
    *(v14 + 8) = v23;
    *(v14 + 16) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueBinding.Font.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Font, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatIssueBinding.Font, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v15, v10, v16, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A8398(v12, v13, v6, v11);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v17, v14, v18, &off_1F51F6C18);
  if (v15)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422418(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD98);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422418(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.IssueCover.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.IssueCover, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.IssueCover, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422BF0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.LayeredMedia.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.LayeredMedia, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.LayeredMedia, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v11, v9, v12, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD98);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422AAC(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Text.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Text, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatIssueBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v34, v31, v35, &off_1F51F6C18);
  if (v32 > 2)
  {
    if (v32 > 4)
    {
      if (v32 == 5)
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCD98);
        v27 = v56;
        (*(*(v43 - 8) + 16))(v56, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 5;
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD98);
        v27 = v57;
        (*(*(v51 - 8) + 16))(v57, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 6;
      }
    }

    else if (v32 == 3)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD98);
      v27 = v54;
      (*(*(v37 - 8) + 16))(v54, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 3;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD98);
      v27 = v55;
      (*(*(v49 - 8) + 16))(v55, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 4;
    }

LABEL_28:
    sub_1D64226C0(v39, v27);
    v42 = v27;
    goto LABEL_29;
  }

  if (!v32)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
    (*(*(v45 - 8) + 16))(v27, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    goto LABEL_28;
  }

  if (v32 == 1)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v23, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64226C0(1, v23);
    v42 = v23;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCD98);
    (*(*(v47 - 8) + 16))(v19, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64226C0(2, v19);
    v42 = v19;
  }

LABEL_29:
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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

    v13 = v24;
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
          *(v20 + 16) = &unk_1F5115C88;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698A64();
    v25 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    v25 = xmmword_1D7279980;
    if (v26)
    {
      sub_1D668F778();
    }

    else
    {
      sub_1D6698AB8();
    }

    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueCoverBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueCoverBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueCoverBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
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
    sub_1D6394398(1, v6);
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
    sub_1D639420C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64F3B6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6575737369;
  }

  else
  {
    v2 = 0x70756F7267;
  }

  if (*a2)
  {
    v3 = 0x6575737369;
  }

  else
  {
    v3 = 0x70756F7267;
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

uint64_t sub_1D64F3BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64F3C5C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D64F3CB0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64F3D28(uint64_t *a1@<X8>)
{
  v2 = 0x70756F7267;
  if (*v1)
  {
    v2 = 0x6575737369;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t FormatIssueCoverContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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
          *(v20 + 16) = &unk_1F5115CD8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698B0C();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C30060(0, &qword_1EC886D68, sub_1D6698B60, &type metadata for FormatIssueCoverContent, type metadata accessor for FormatSelectorValue);
      v27 = xmmword_1D7279980;
      sub_1D6698BB4();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = v28;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D6698C44();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v26 = v27;
      v25 = swift_allocObject();
      *(v25 + 16) = v26;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueCoverContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatIssueCoverContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueCoverContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15 < 0)
  {
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v26 = qword_1EDF31ED0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD50);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394038(1, v24, v25, v6);

    v23 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6393EA0(0, v20, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

unint64_t sub_1D64F45E8(char a1)
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

  return result;
}

uint64_t sub_1D64F4788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669982C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64F47C0(uint64_t a1)
{
  v2 = sub_1D5E1C658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F47FC(uint64_t a1)
{
  v2 = sub_1D5E1C658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64F4838(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000018;
    v6 = 0x737469617274;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x615272656E726F63;
    if (a1 != 5)
    {
      v7 = 0x776F64616873;
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
    v2 = 0x726F7463656C6573;
    v3 = 0x6168706C61;
    if (a1 != 3)
    {
      v3 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7373616C63;
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

uint64_t sub_1D64F4978@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6699CE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64F49B0(uint64_t a1)
{
  v2 = sub_1D6669A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F49EC(uint64_t a1)
{
  v2 = sub_1D6669A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64F4A28()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x737469617274;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x776F64616873;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73726564726F62;
  if (v1 != 2)
  {
    v5 = 0x615272656E726F63;
  }

  if (*v0)
  {
    v2 = 0x6168706C61;
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

uint64_t sub_1D64F4B1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669A020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64F4B54(uint64_t a1)
{
  v2 = sub_1D6669EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F4B90(uint64_t a1)
{
  v2 = sub_1D6669EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssueCoverTraits.encode(to:)(void *a1)
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
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
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

uint64_t FormatItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v256 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v255 = &v253 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v259 = &v253 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v261 = &v253 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v263 = &v253 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v264 = &v253 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v267 = &v253 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v269 = &v253 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v279 = (&v253 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v272 = (&v253 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v253 - v35;
  sub_1D6698C98(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v253 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v1;
  v43 = v1[1];
  v44 = v1[7];
  v271 = v1[6];
  v270 = v44;
  v45 = v1[9];
  v268 = v1[8];
  v266 = v45;
  v46 = v1[11];
  v265 = v1[10];
  v262 = v46;
  v47 = v1[13];
  v260 = v1[12];
  v258 = v47;
  v257 = v1[14];
  v291 = *(v1 + 120);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5CBC450(0);
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF24D18, sub_1D5CBC450, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatItem, v51, v53, v48, &type metadata for FormatItem, v51, &type metadata for FormatVersions.JazzkonC, v49, v41, v52, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v274 = v55;
  v277 = v57;
  v278 = v54;
  v276 = v56 + 16;
  (v57)(v36);
  v275 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v287 = v42;
  v288 = v43;
  v285 = 0uLL;
  v286 = 0;
  v58 = &v41[*(v38 + 44)];
  v59 = *v58;
  v60 = *(v58 + 1);
  v290 = 0;
  v61 = swift_allocObject();
  *&v283 = &v253;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v290;
  *(v61 + 40) = v59;
  *(v61 + 48) = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v282 = &v253 - 6;
  *(&v253 - 4) = sub_1D5B4AA6C;
  *(&v253 - 3) = 0;
  v251 = sub_1D6708A9C;
  v252 = v63;
  v290 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v290;
  v273 = v59;
  *(v64 + 40) = v59;
  *(v64 + 48) = v60;
  sub_1D5E1B67C(0);
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF02BF8, sub_1D5E1B67C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v280 = v66;
  v281 = v67;
  v68 = sub_1D72647CC();
  v290 = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v290;
  v70 = v41;
  v71 = v36;
  v72 = &v70[*(v38 + 36)];
  v73 = *(v72 + 3);
  v74 = *(v72 + 4);
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v79 = v282;
  *(&v253 - 4) = sub_1D615B4A4;
  *(&v253 - 3) = v79;
  v251 = sub_1D6708A9C;
  v252 = v64;
  v80 = v284;
  sub_1D5D2BC70(v71, sub_1D615B49C, v81, sub_1D615B4A4, (&v253 - 6), v73, v74);
  v284 = v80;
  if (!v80)
  {
    v254 = v72;
    v282 = v60;

    v83 = v284;
    sub_1D72647EC();
    v82 = v70;
    v284 = v83;
    if (v83)
    {
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
LABEL_7:

      goto LABEL_10;
    }

    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

    v84 = v272;
    v85 = v274;
    v87 = v277;
    v86 = v278;
    v277(v272, v274, v278);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
    v87(v84, v85, v86);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
    v87(v279, v85, v86);
    swift_storeEnumTagMultiPayload();
    v287 = v271;
    v288 = v270;
    v283 = xmmword_1D72BAA60;
    v285 = xmmword_1D72BAA60;
    v286 = 0;
    v290 = 0;
    v88 = swift_allocObject();
    v272 = &v253;
    *(v88 + 16) = v283;
    *(v88 + 32) = v290;
    v89 = v273;
    v90 = v282;
    *(v88 + 40) = v273;
    *(v88 + 48) = v90;
    MEMORY[0x1EEE9AC00](v88, v91);
    v92 = v284;
    *(&v253 - 4) = sub_1D5B4AA6C;
    *(&v253 - 3) = 0;
    v251 = sub_1D6708A9C;
    v252 = v93;
    v290 = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v283;
    *(v94 + 32) = v290;
    *(v94 + 40) = v89;
    *(v94 + 48) = v90;
    swift_retain_n();
    v95 = sub_1D72647CC();
    v290 = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v283;
    *(v96 + 40) = v290;
    v97 = v82;
    v98 = *(v254 + 3);
    v99 = *(v254 + 4);
    v100 = __swift_project_boxed_opaque_existential_1(v254, v98);
    MEMORY[0x1EEE9AC00](v100, v101);
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v253 - 4) = sub_1D615B4A4;
    *(&v253 - 3) = (&v253 - 6);
    v104 = v279;
    v251 = sub_1D6708A9C;
    v252 = v94;
    sub_1D5D2BC70(v279, sub_1D615B49C, v105, sub_1D615B4A4, (&v253 - 6), v98, v99);
    v284 = v92;
    if (v92)
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

      v82 = v97;
      goto LABEL_10;
    }

    sub_1D5B4C410();
    v108 = v284;
    sub_1D72647EC();
    v82 = v97;
    v284 = v108;
    if (v108)
    {
      sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);
      goto LABEL_7;
    }

    sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);

    v109 = v269;
    v110 = v274;
    v112 = v277;
    v111 = v278;
    v277(v269, v274, v278);
    swift_storeEnumTagMultiPayload();
    if (*(v268 + 16))
    {
      LOBYTE(v285) = 0;
      v113 = swift_allocObject();
      v283 = xmmword_1D72BAA70;
      *(v113 + 16) = xmmword_1D72BAA70;
      *(v113 + 32) = v285;
      *(v113 + 40) = v273;
      *(v113 + 48) = v282;

      v114 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v115 = swift_allocObject();
      *(v115 + 16) = v114;
      *(v115 + 24) = v283;
      *(v115 + 40) = v285;
      v116 = v97;
      v117 = *(v254 + 3);
      v118 = *(v254 + 4);
      v119 = __swift_project_boxed_opaque_existential_1(v254, v117);
      MEMORY[0x1EEE9AC00](v119, v120);
      MEMORY[0x1EEE9AC00](v121, v122);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6698D2C;
      v252 = v113;
      v123 = v284;
      v125 = sub_1D5D2F7A4(v109, sub_1D615B49C, v124, sub_1D615B4A4, (&v253 - 6), v117, v118);
      v284 = v123;
      if (v123)
      {
LABEL_16:
        sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

        v106 = v116;
        return sub_1D5D2CFE8(v106, sub_1D6698C98);
      }

      v126 = v125;

      if (v126)
      {
        v285 = v283;
        v286 = 0;
        v287 = v268;
        sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
        sub_1D66775F8();
        v82 = v97;
        v127 = v284;
        sub_1D72647EC();
        v128 = v269;
        v284 = v127;
        if (v127)
        {

          sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
          goto LABEL_10;
        }

        sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);

        v82 = v97;
      }

      v112 = v277;
      v111 = v278;
      v110 = v274;
    }

    else
    {
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    }

    v129 = v267;
    v112(v267, v110, v111);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v285) = 0;
    v130 = swift_allocObject();
    v283 = xmmword_1D72BAA80;
    *(v130 + 16) = xmmword_1D72BAA80;
    *(v130 + 32) = v285;
    *(v130 + 40) = v273;
    *(v130 + 48) = v282;

    v131 = sub_1D72647CC();
    LOBYTE(v285) = 0;
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v283;
    *(v132 + 40) = v285;
    v133 = v82;
    v134 = *(v254 + 3);
    v135 = *(v254 + 4);
    v136 = __swift_project_boxed_opaque_existential_1(v254, v134);
    MEMORY[0x1EEE9AC00](v136, v137);
    MEMORY[0x1EEE9AC00](v138, v139);
    *(&v253 - 4) = sub_1D5B4AA6C;
    *(&v253 - 3) = 0;
    v251 = sub_1D6708A9C;
    v252 = v130;
    v140 = v284;
    v142 = sub_1D5D2F7A4(v129, sub_1D615B49C, v141, sub_1D615B4A4, (&v253 - 6), v134, v135);
    v284 = v140;
    if (v140)
    {
      sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);

      v106 = v133;
      return sub_1D5D2CFE8(v106, sub_1D6698C98);
    }

    v143 = v142;
    v253 = v133;

    if (v143)
    {
      v285 = v283;
      v286 = 0;
      v287 = v266;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v144 = v253;
      v145 = v284;
      sub_1D72647EC();

      sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
      v146 = v282;
      v147 = v278;
      v284 = v145;
      if (v145)
      {
LABEL_35:
        v106 = v144;
        return sub_1D5D2CFE8(v106, sub_1D6698C98);
      }
    }

    else
    {
      sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);

      v144 = v253;
      v146 = v282;
      v147 = v278;
    }

    v148 = v264;
    v277(v264, v274, v147);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAA90;
    v285 = xmmword_1D72BAA90;
    v286 = 0;
    LOBYTE(v287) = 0;
    v149 = swift_allocObject();
    v151 = v149;
    *(v149 + 16) = v283;
    *(v149 + 32) = v287;
    v152 = v273;
    *(v149 + 40) = v273;
    *(v149 + 48) = v146;
    if (v265)
    {
      v279 = &v253;
      v287 = v265;
      MEMORY[0x1EEE9AC00](v149, v150);
      v153 = v152;
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v151;
      v290 = 0;
      v154 = swift_allocObject();
      *(v154 + 16) = v283;
      *(v154 + 32) = v290;
      *(v154 + 40) = v153;
      *(v154 + 48) = v146;
      swift_retain_n();

      v155 = sub_1D72647CC();
      v290 = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v283;
      *(v156 + 40) = v290;
      v157 = *(v254 + 3);
      v158 = *(v254 + 4);
      v159 = __swift_project_boxed_opaque_existential_1(v254, v157);
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v253 - 4) = sub_1D615B4A4;
      *(&v253 - 3) = (&v253 - 6);
      v251 = sub_1D6708A9C;
      v252 = v154;
      v163 = v284;
      v165 = sub_1D5D2F7A4(v148, sub_1D615B49C, v164, sub_1D615B4A4, (&v253 - 6), v157, v158);
      v284 = v163;
      if (v163)
      {

        v144 = v253;
LABEL_33:
        v166 = v148;
LABEL_34:
        sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
        goto LABEL_35;
      }

      v167 = v165;

      if (v167)
      {
        type metadata accessor for FormatItemNodeStyle(0);
        sub_1D5B58B84(&qword_1EDF0FC10, type metadata accessor for FormatItemNodeStyle, &protocol conformance descriptor for FormatItemNodeStyle);
        v144 = v253;
        v168 = v284;
        sub_1D72647EC();
        v284 = v168;
        if (v168)
        {

          goto LABEL_33;
        }
      }

      else
      {

        v144 = v253;
      }

      v146 = v282;
      v152 = v273;
    }

    else
    {
    }

    sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);
    v169 = v263;
    v170 = v274;
    v277(v263, v274, v278);
    swift_storeEnumTagMultiPayload();
    if (*(v262 + 16))
    {
      LOBYTE(v285) = 0;
      v109 = v169;
      v171 = swift_allocObject();
      v283 = xmmword_1D72BAAA0;
      *(v171 + 16) = xmmword_1D72BAAA0;
      *(v171 + 32) = v285;
      *(v171 + 40) = v152;
      *(v171 + 48) = v146;

      v116 = v144;
      v172 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v173 = swift_allocObject();
      *(v173 + 16) = v172;
      *(v173 + 24) = v283;
      *(v173 + 40) = v285;
      v175 = *(v254 + 3);
      v174 = *(v254 + 4);
      v176 = __swift_project_boxed_opaque_existential_1(v254, v175);
      MEMORY[0x1EEE9AC00](v176, v177);
      MEMORY[0x1EEE9AC00](v178, v179);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v171;
      v180 = v284;
      v182 = sub_1D5D2F7A4(v109, sub_1D615B49C, v181, sub_1D615B4A4, (&v253 - 6), v175, v174);
      v284 = v180;
      if (v180)
      {
        goto LABEL_16;
      }

      v183 = v182;

      if (v183)
      {
        v285 = v283;
        v286 = 0;
        v287 = v262;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        v144 = v253;
        v184 = v284;
        sub_1D72647EC();
        v185 = v263;
        v284 = v184;
        if (v184)
        {

          v166 = v185;
          goto LABEL_34;
        }

        sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);

        v144 = v253;
      }

      v146 = v282;
      v170 = v274;
      v186 = v259;
      v187 = v261;
    }

    else
    {
      sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
      v186 = v259;
      v187 = v261;
    }

    v188 = v278;
    v277(v187, v170, v278);
    swift_storeEnumTagMultiPayload();
    if (*(v260 + 16))
    {
      LOBYTE(v285) = 0;
      v189 = swift_allocObject();
      v283 = xmmword_1D72BAAB0;
      *(v189 + 16) = xmmword_1D72BAAB0;
      *(v189 + 32) = v285;
      *(v189 + 40) = v273;
      *(v189 + 48) = v146;

      v190 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v283;
      *(v191 + 40) = v285;
      v192 = *(v254 + 3);
      v193 = *(v254 + 4);
      v194 = __swift_project_boxed_opaque_existential_1(v254, v192);
      MEMORY[0x1EEE9AC00](v194, v195);
      MEMORY[0x1EEE9AC00](v196, v197);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v189;
      v198 = v284;
      v200 = sub_1D5D2F7A4(v261, sub_1D615B49C, v199, sub_1D615B4A4, (&v253 - 6), v192, v193);
      v284 = v198;
      if (v198)
      {

LABEL_55:
        v201 = &v289;
LABEL_56:
        sub_1D5D2CFE8(*(v201 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_86;
      }

      v202 = v200;

      if (v202)
      {
        v144 = v253;
        v203 = v284;
        sub_1D5E09594(v260, v253, 8, 0, 0);
        v284 = v203;
        if (v203)
        {

          goto LABEL_55;
        }
      }

      else
      {
        v144 = v253;
      }

      v146 = v282;
      v186 = v259;
      v187 = v261;
    }

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    v277(v186, v170, v188);
    swift_storeEnumTagMultiPayload();
    if (*(v258 + 16))
    {
      LOBYTE(v285) = 0;
      v204 = swift_allocObject();
      v283 = xmmword_1D72BAAC0;
      *(v204 + 16) = xmmword_1D72BAAC0;
      *(v204 + 32) = v285;
      *(v204 + 40) = v273;
      *(v204 + 48) = v146;

      v205 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = v205;
      *(v206 + 24) = v283;
      *(v206 + 40) = v285;
      v208 = *(v254 + 3);
      v207 = *(v254 + 4);
      v209 = __swift_project_boxed_opaque_existential_1(v254, v208);
      MEMORY[0x1EEE9AC00](v209, v210);
      MEMORY[0x1EEE9AC00](v211, v212);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v204;
      v213 = v284;
      v215 = sub_1D5D2F7A4(v186, sub_1D615B49C, v214, sub_1D615B4A4, (&v253 - 6), v208, v207);
      v284 = v213;
      if (v213)
      {
        sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);

        goto LABEL_86;
      }

      v216 = v215;

      if (v216)
      {
        v285 = v283;
        v286 = 0;
        v287 = v258;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v217 = v284;
        sub_1D72647EC();
        v284 = v217;
        if (v217)
        {

          v201 = &v288;
          goto LABEL_56;
        }

        sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
        v144 = v253;
        v146 = v282;
        v188 = v278;
        v170 = v274;
      }

      else
      {
        sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);

        v144 = v253;
        v146 = v282;
        v188 = v278;
      }
    }

    else
    {
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
    }

    v218 = v255;
    v277(v255, v170, v188);
    swift_storeEnumTagMultiPayload();
    if (*(v257 + 16))
    {
      LOBYTE(v285) = 0;
      v219 = swift_allocObject();
      v283 = xmmword_1D72BAAD0;
      *(v219 + 16) = xmmword_1D72BAAD0;
      *(v219 + 32) = v285;
      *(v219 + 40) = v273;
      *(v219 + 48) = v146;

      v220 = sub_1D72647CC();
      LOBYTE(v285) = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = v220;
      *(v221 + 24) = v283;
      *(v221 + 40) = v285;
      v223 = *(v254 + 3);
      v222 = *(v254 + 4);
      v224 = __swift_project_boxed_opaque_existential_1(v254, v223);
      MEMORY[0x1EEE9AC00](v224, v225);
      MEMORY[0x1EEE9AC00](v226, v227);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v219;
      v228 = v284;
      v230 = sub_1D5D2F7A4(v218, sub_1D615B49C, v229, sub_1D615B4A4, (&v253 - 6), v223, v222);
      v284 = v228;
      if (v228)
      {
        sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);

        v106 = v144;
        return sub_1D5D2CFE8(v106, sub_1D6698C98);
      }

      v231 = v230;

      if (v231)
      {
        v285 = v283;
        v286 = 0;
        v287 = v257;
        sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
        sub_1D6659404();
        v232 = v284;
        sub_1D72647EC();
        v284 = v232;
        if (v232)
        {

          v201 = &v285;
          goto LABEL_56;
        }

        sub_1D5D2CFE8(v255, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v255, type metadata accessor for FormatVersionRequirement);
      }

      v146 = v282;
      v188 = v278;
    }

    else
    {
      sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
    }

    v277(v256, v274, v188);
    swift_storeEnumTagMultiPayload();
    v283 = xmmword_1D72BAAE0;
    v285 = xmmword_1D72BAAE0;
    v286 = 0;
    LOBYTE(v287) = 0;
    v233 = swift_allocObject();
    v235 = v233;
    *(v233 + 16) = v283;
    *(v233 + 32) = v287;
    v236 = v273;
    *(v233 + 40) = v273;
    *(v233 + 48) = v146;
    if (v291 == 7)
    {
    }

    else
    {
      LOBYTE(v287) = v291;
      MEMORY[0x1EEE9AC00](v233, v234);
      *(&v253 - 4) = sub_1D5B4AA6C;
      *(&v253 - 3) = 0;
      v251 = sub_1D6708A9C;
      v252 = v235;
      v290 = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v283;
      *(v237 + 32) = v290;
      *(v237 + 40) = v236;
      *(v237 + 48) = v146;
      swift_retain_n();
      v238 = sub_1D72647CC();
      v290 = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v238;
      *(v239 + 24) = v283;
      *(v239 + 40) = v290;
      v240 = *(v254 + 3);
      v241 = *(v254 + 4);
      v242 = __swift_project_boxed_opaque_existential_1(v254, v240);
      MEMORY[0x1EEE9AC00](v242, v243);
      MEMORY[0x1EEE9AC00](v244, v245);
      *(&v253 - 4) = sub_1D615B4A4;
      *(&v253 - 3) = (&v253 - 6);
      v251 = sub_1D6708A9C;
      v252 = v237;
      v246 = v284;
      v248 = sub_1D5D2F7A4(v256, sub_1D615B49C, v247, sub_1D615B4A4, (&v253 - 6), v240, v241);
      v284 = v246;
      if (v246)
      {
        sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);

        goto LABEL_86;
      }

      v249 = v248;

      if (v249)
      {
        sub_1D6327494();
        v250 = v284;
        sub_1D72647EC();
        v284 = v250;
      }
    }

    sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);

LABEL_86:
    v106 = v253;
    return sub_1D5D2CFE8(v106, sub_1D6698C98);
  }

  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  v82 = v70;
LABEL_10:
  v106 = v82;
  return sub_1D5D2CFE8(v106, sub_1D6698C98);
}