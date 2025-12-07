uint64_t FormatRatio.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRatio, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatRatio, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v22, v18, v23, &off_1F51F6C78);
  if (v20)
  {
    if (v20 == 1)
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
      sub_1D63BC944(1, v19, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BC944(2, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BC944(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65681E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746867696568;
  if (v2 != 1)
  {
    v3 = 0x746365707361;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6874646977;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x746867696568;
  if (*a2 != 1)
  {
    v6 = 0x746365707361;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
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

uint64_t sub_1D65682D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6568370(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65683F4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6568488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 0x746365707361;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6874646977;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatRecipeBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Bool, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatRecipeBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420F08(2, v10);
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
      sub_1D6420F08(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420F08(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420F08(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Command.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Command, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatRecipeBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v18, &off_1F51F6C98);
  if (v15)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCC90);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64209B8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE38);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64209B8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.DateTime, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatRecipeBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v21, v18, v22, &off_1F51F6C98);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE38);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420864(1, v10);
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
      sub_1D6420864(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE38);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420864(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatRecipeBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v18, &off_1F51F6C98);
  if (v15)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE38);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420B0C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE38);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420B0C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    v11 = v6;
    v12 = v33;
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
          *(v22 + 16) = &unk_1F5116F00;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B203C();
    v29 = 0uLL;
    sub_1D726431C();
    if (v28 <= 3u)
    {
      if (v28 > 1u)
      {
        if (v28 == 2)
        {
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = 0uLL;
          v26 = 5;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = 0uLL;
          v26 = 6;
        }
      }

      else if (v28)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 4;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 3;
      }
    }

    else if (v28 <= 5u)
    {
      if (v28 == 4)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 7;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 8;
      }
    }

    else if (v28 == 6)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0uLL;
      v26 = 9;
    }

    else if (v28 == 7)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0uLL;
      v26 = 10;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5CCD298();
      sub_1D726427C();
      (*(v11 + 8))(v15, v5);
      v26 = v30;
      if (v30 != 3)
      {
        v24 = v32;
        v27 = v31;
        v25 = v29;
        goto LABEL_30;
      }

      v24 = 0;
      v25 = 0uLL;
      v26 = 1;
    }

    v27 = 0uLL;
LABEL_30:
    *v12 = v25;
    *(v12 + 16) = v26;
    *(v12 + 24) = v27;
    *(v12 + 40) = v24;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRecipeBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v72 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v71 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v68 - v33;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 16);
  v70 = *v1;
  v75 = v39;
  v40 = *(v1 + 32);
  v68 = *(v1 + 40);
  v69 = v40;
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = sub_1D5C30408();
  v79 = v38;
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Text, &type metadata for FormatCodingKeys, v44, v41, &type metadata for FormatRecipeBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v42, v38, v43, &off_1F51F6C98);
  if (v75 > 6)
  {
    if (v75 > 8)
    {
      if (v75 == 9)
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v64 = sub_1D725BD1C();
        v65 = __swift_project_value_buffer(v64, qword_1EDFFCE38);
        v18 = v72;
        (*(*(v64 - 8) + 16))(v72, v65, v64);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 6;
      }

      else
      {
        if (v75 != 10)
        {
          goto LABEL_35;
        }

        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCE38);
        v18 = v73;
        (*(*(v56 - 8) + 16))(v73, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 7;
      }
    }

    else if (v75 == 7)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
      (*(*(v60 - 8) + 16))(v18, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCE38);
      v18 = v71;
      (*(*(v49 - 8) + 16))(v71, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 5;
    }

    v54 = v79;
    sub_1D6420DB4(v51, v18);
    v55 = v18;
LABEL_39:
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  if (v75 > 4)
  {
    if (v75 != 5)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v52 = sub_1D725BD1C();
      v53 = __swift_project_value_buffer(v52, qword_1EDFFCE38);
      (*(*(v52 - 8) + 16))(v22, v53, v52);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v79;
      sub_1D6420DB4(3, v22);
      v55 = v22;
      goto LABEL_39;
    }

    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCE38);
    (*(*(v62 - 8) + 16))(v26, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D6420DB4(2, v26);
    goto LABEL_38;
  }

  if (v75 == 3)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCE38);
    (*(*(v58 - 8) + 16))(v34, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D6420DB4(0, v34);
    v55 = v34;
    goto LABEL_39;
  }

  if (v75 != 4)
  {
LABEL_35:
    v76[0] = v70;
    v76[1] = v75;
    v77 = v69;
    v78 = v68;
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v66 = sub_1D725BD1C();
    v67 = __swift_project_value_buffer(v66, qword_1EDFFCE38);
    v26 = v74;
    (*(*(v66 - 8) + 16))(v74, v67, v66);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D64851F8(8, v76, v26);
LABEL_38:
    v55 = v26;
    goto LABEL_39;
  }

  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCE38);
  (*(*(v45 - 8) + 16))(v30, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v79;
  sub_1D6420DB4(1, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
}

uint64_t sub_1D656A304()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1702521203;
  v4 = 0x676E696C616373;
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
    v2 = 7107189;
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

uint64_t sub_1D656A380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B3284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D656A3B8(uint64_t a1)
{
  v2 = sub_1D66600E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D656A3F4(uint64_t a1)
{
  v2 = sub_1D66600E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRemoteImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v353 = v348 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v355 = v348 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v357 = v348 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v359 = v348 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v361 = v348 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v363 = v348 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v365 = v348 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v367 = v348 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v369 = v348 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v371 = v348 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v373 = v348 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v374 = v348 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v376 = v348 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v384 = v348 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = (v348 - v47);
  sub_1D66B2090(0);
  v50 = v49;
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = v348 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v1;
  v377 = v1[1];
  v55 = v1[3];
  v375 = v1[2];
  v372 = v55;
  v56 = v1[5];
  v370 = v1[4];
  v368 = v56;
  v57 = v1[7];
  v366 = v1[6];
  v364 = v57;
  v58 = v1[9];
  v362 = v1[8];
  v360 = v58;
  v59 = v1[11];
  v358 = v1[10];
  v356 = v59;
  v60 = v1[13];
  v354 = v1[12];
  v352 = v60;
  v351 = v1[14];
  v61 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_1D5CA20E8(0);
  v64 = v63;
  v65 = sub_1D5B58B84(&qword_1EDF3ED68, sub_1D5CA20E8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRemoteImage, v64, v66, v61, &type metadata for FormatRemoteImage, v64, &type metadata for FormatVersions.JazzkonC, v62, v53, v65, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v379 = v68;
  v380 = v67;
  v378 = v70;
  v382 = v69 + 16;
  (v70)(v48);
  v383 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v393 = v54;
  v391 = 0uLL;
  v392 = 0;
  v71 = &v53[*(v50 + 44)];
  v72 = *v71;
  v73 = *(v71 + 1);
  v390 = 0;
  v74 = swift_allocObject();
  v386 = v348;
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v390;
  *(v74 + 40) = v72;
  *(v74 + 48) = v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v387 = v48;
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v76;
  v390 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  *(v77 + 32) = v390;
  v381 = v72;
  *(v77 + 40) = v72;
  *(v77 + 48) = v73;
  sub_1D66B2124(0);
  v79 = v78;
  v80 = sub_1D5B58B84(&qword_1EDF03678, sub_1D66B2124, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v385[0] = v79;
  v385[1] = v80;
  v81 = sub_1D72647CC();
  v390 = 0;
  v82 = swift_allocObject();
  *(v82 + 24) = 0;
  *(v82 + 32) = 0;
  *(v82 + 16) = v81;
  *(v82 + 40) = v390;
  v83 = &v53[*(v50 + 36)];
  v84 = *(v83 + 3);
  v85 = *(v83 + 4);
  v86 = __swift_project_boxed_opaque_existential_1(v83, v84);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v91 = v387;
  v90 = v388;
  v346 = sub_1D6708B4C;
  v347 = v77;
  sub_1D5D2BC70(v387, sub_1D615B49C, v92, sub_1D615B4A4, &v348[-6], v84, v85);
  if (v90)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    v94 = v53;
    return sub_1D5D2CFE8(v94, sub_1D66B2090);
  }

  v349 = v83;
  v350 = v73;

  v93 = sub_1D60B27FC();
  sub_1D72647EC();
  v348[1] = v93;
  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  v96 = v384;
  v378(v384, v379, v380);
  swift_storeEnumTagMultiPayload();
  v393 = v377;
  v388 = xmmword_1D728CF30;
  v391 = xmmword_1D728CF30;
  v392 = 0;
  v390 = 0;
  v97 = swift_allocObject();
  v386 = v348;
  *(v97 + 16) = v388;
  *(v97 + 32) = v390;
  v98 = v381;
  v99 = v350;
  *(v97 + 40) = v381;
  *(v97 + 48) = v99;
  MEMORY[0x1EEE9AC00](v97, v100);
  v387 = 0;
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v101;
  v390 = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v388;
  *(v102 + 32) = v390;
  *(v102 + 40) = v98;
  *(v102 + 48) = v99;
  swift_retain_n();
  v103 = sub_1D72647CC();
  v390 = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v388;
  *(v104 + 40) = v390;
  v105 = *(v349 + 3);
  v106 = *(v349 + 4);
  v107 = __swift_project_boxed_opaque_existential_1(v349, v105);
  MEMORY[0x1EEE9AC00](v107, v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v346 = sub_1D6708B4C;
  v347 = v102;
  v111 = v387;
  sub_1D5D2BC70(v96, sub_1D615B49C, v112, sub_1D615B4A4, &v348[-6], v105, v106);
  if (v111)
  {
    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

    v94 = v53;
    return sub_1D5D2CFE8(v94, sub_1D66B2090);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v384, type metadata accessor for FormatVersionRequirement);

  v378(v376, v379, v380);
  swift_storeEnumTagMultiPayload();
  v393 = v375;
  v388 = xmmword_1D7297410;
  v391 = xmmword_1D7297410;
  v392 = 0;
  v390 = 0;
  v113 = swift_allocObject();
  v387 = v348;
  *(v113 + 16) = v388;
  *(v113 + 32) = v390;
  v114 = v381;
  v115 = v350;
  *(v113 + 40) = v381;
  *(v113 + 48) = v115;
  MEMORY[0x1EEE9AC00](v113, v116);
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v117;
  v390 = 0;
  v118 = swift_allocObject();
  *(v118 + 16) = v388;
  *(v118 + 32) = v390;
  *(v118 + 40) = v114;
  *(v118 + 48) = v115;
  swift_retain_n();
  v119 = sub_1D72647CC();
  v390 = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v388;
  *(v120 + 40) = v390;
  v121 = *(v349 + 3);
  v122 = *(v349 + 4);
  v123 = __swift_project_boxed_opaque_existential_1(v349, v121);
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v127 = v376;
  v346 = sub_1D6708B4C;
  v347 = v118;
  sub_1D5D2BC70(v376, sub_1D615B49C, v128, sub_1D615B4A4, &v348[-6], v121, v122);
  v348[0] = v53;

  sub_1D72647EC();
  sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

  v129 = v374;
  v131 = v379;
  v130 = v380;
  v132 = v378;
  v378(v374, v379, v380);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAA60;
  v391 = xmmword_1D72BAA60;
  v392 = 0;
  LOBYTE(v393) = 0;
  v133 = swift_allocObject();
  v135 = v133;
  *(v133 + 16) = v388;
  *(v133 + 32) = v393;
  v136 = v381;
  v137 = v350;
  *(v133 + 40) = v381;
  *(v133 + 48) = v137;
  if ((~v372 & 0xF000000000000007) != 0)
  {
    v387 = v348;
    v393 = v372;
    MEMORY[0x1EEE9AC00](v133, v134);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v135;
    v390 = 0;
    v146 = v145;
    v147 = swift_allocObject();
    *(v147 + 16) = v388;
    *(v147 + 32) = v390;
    *(v147 + 40) = v136;
    *(v147 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v146);
    v148 = sub_1D72647CC();
    v390 = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v148;
    *(v149 + 24) = v388;
    *(v149 + 40) = v390;
    v150 = *(v349 + 3);
    v151 = *(v349 + 4);
    v152 = __swift_project_boxed_opaque_existential_1(v349, v150);
    MEMORY[0x1EEE9AC00](v152, v153);
    MEMORY[0x1EEE9AC00](v154, v155);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v147;
    v157 = sub_1D5D2F7A4(v129, sub_1D615B49C, v156, sub_1D615B4A4, &v348[-6], v150, v151);
    v171 = v157;

    if (v171)
    {
      sub_1D72647EC();
      v129 = v374;
      v387 = 0;

      v137 = v350;
      v131 = v379;
      v130 = v380;
      v132 = v378;
    }

    else
    {
      v387 = 0;

      v137 = v350;
      v131 = v379;
      v130 = v380;
      v132 = v378;
      v129 = v374;
    }
  }

  else
  {
    v387 = 0;
  }

  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v138 = v373;
  v132(v373, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAA70;
  v391 = xmmword_1D72BAA70;
  v392 = 0;
  LOBYTE(v393) = 0;
  v139 = swift_allocObject();
  v141 = v139;
  *(v139 + 16) = v388;
  *(v139 + 32) = v393;
  v142 = v381;
  *(v139 + 40) = v381;
  *(v139 + 48) = v137;
  v143 = v370;
  if ((~v370 & 0xF000000000000007) != 0)
  {
    v393 = v370;
    MEMORY[0x1EEE9AC00](v139, v140);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v141;
    v390 = 0;
    v158 = swift_allocObject();
    *(v158 + 16) = v388;
    *(v158 + 32) = v390;
    *(v158 + 40) = v142;
    *(v158 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v143);
    v159 = sub_1D72647CC();
    v390 = 0;
    v160 = swift_allocObject();
    *(v160 + 16) = v159;
    *(v160 + 24) = v388;
    *(v160 + 40) = v390;
    v161 = *(v349 + 3);
    v162 = *(v349 + 4);
    v163 = __swift_project_boxed_opaque_existential_1(v349, v161);
    MEMORY[0x1EEE9AC00](v163, v164);
    MEMORY[0x1EEE9AC00](v165, v166);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v158;
    v167 = v387;
    v169 = sub_1D5D2F7A4(v138, sub_1D615B49C, v168, sub_1D615B4A4, &v348[-6], v161, v162);
    v144 = v167;
    if (v167)
    {

      v170 = v348[0];

      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
      v94 = v170;
      return sub_1D5D2CFE8(v94, sub_1D66B2090);
    }

    v172 = v169;

    if (v172)
    {
      sub_1D72647EC();
    }

    v137 = v350;
    v130 = v380;
    v142 = v381;
    v132 = v378;
    v131 = v379;
  }

  else
  {

    v144 = v387;
  }

  sub_1D5D2CFE8(v373, type metadata accessor for FormatVersionRequirement);
  v173 = v371;
  v132(v371, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAA80;
  v391 = xmmword_1D72BAA80;
  v392 = 0;
  LOBYTE(v393) = 0;
  v174 = swift_allocObject();
  v176 = v174;
  *(v174 + 16) = v388;
  *(v174 + 32) = v393;
  *(v174 + 40) = v142;
  *(v174 + 48) = v137;
  if ((~v368 & 0xF000000000000007) != 0)
  {
    v387 = v348;
    v393 = v368;
    MEMORY[0x1EEE9AC00](v174, v175);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v176;
    v390 = 0;
    v179 = v178;
    v180 = swift_allocObject();
    *(v180 + 16) = v388;
    *(v180 + 32) = v390;
    *(v180 + 40) = v142;
    *(v180 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v179);
    v181 = sub_1D72647CC();
    v390 = 0;
    v182 = swift_allocObject();
    *(v182 + 16) = v181;
    *(v182 + 24) = v388;
    *(v182 + 40) = v390;
    v183 = v144;
    v184 = *(v349 + 3);
    v185 = *(v349 + 4);
    v186 = __swift_project_boxed_opaque_existential_1(v349, v184);
    MEMORY[0x1EEE9AC00](v186, v187);
    MEMORY[0x1EEE9AC00](v188, v189);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v180;
    v191 = sub_1D5D2F7A4(v173, sub_1D615B49C, v190, sub_1D615B4A4, &v348[-6], v184, v185);
    v144 = v183;
    if (v183)
    {

      sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
LABEL_10:
      v94 = v348[0];
      return sub_1D5D2CFE8(v94, sub_1D66B2090);
    }

    v192 = v191;

    if (v192)
    {
      sub_1D72647EC();
    }

    v137 = v350;
    v130 = v380;
    v142 = v381;
    v132 = v378;
    v131 = v379;
    v177 = v366;
  }

  else
  {

    v177 = v366;
  }

  sub_1D5D2CFE8(v371, type metadata accessor for FormatVersionRequirement);
  v132(v369, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAA90;
  v391 = xmmword_1D72BAA90;
  v392 = 0;
  LOBYTE(v393) = 0;
  v193 = swift_allocObject();
  v195 = v193;
  *(v193 + 16) = v388;
  *(v193 + 32) = v393;
  *(v193 + 40) = v142;
  *(v193 + 48) = v137;
  if ((~v177 & 0xF000000000000007) != 0)
  {
    v393 = v177;
    MEMORY[0x1EEE9AC00](v193, v194);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v195;
    v390 = 0;
    v196 = swift_allocObject();
    *(v196 + 16) = v388;
    *(v196 + 32) = v390;
    *(v196 + 40) = v142;
    *(v196 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v177);
    v197 = sub_1D72647CC();
    v390 = 0;
    v198 = swift_allocObject();
    *(v198 + 16) = v197;
    *(v198 + 24) = v388;
    *(v198 + 40) = v390;
    v199 = v144;
    v200 = *(v349 + 3);
    v201 = *(v349 + 4);
    v202 = __swift_project_boxed_opaque_existential_1(v349, v200);
    MEMORY[0x1EEE9AC00](v202, v203);
    MEMORY[0x1EEE9AC00](v204, v205);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v196;
    v206 = v369;
    v208 = sub_1D5D2F7A4(v369, sub_1D615B49C, v207, sub_1D615B4A4, &v348[-6], v200, v201);
    v144 = v199;
    if (v199)
    {
      goto LABEL_48;
    }

    v209 = v208;

    if (v209)
    {
      sub_1D72647EC();

      v137 = v350;
    }

    else
    {
    }

    v130 = v380;
    v142 = v381;
    v132 = v378;
    v131 = v379;
  }

  else
  {
  }

  sub_1D5D2CFE8(v369, type metadata accessor for FormatVersionRequirement);
  v132(v367, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAA0;
  v391 = xmmword_1D72BAAA0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v210 = swift_allocObject();
  v212 = v210;
  *(v210 + 16) = v388;
  *(v210 + 32) = v393;
  *(v210 + 40) = v142;
  *(v210 + 48) = v137;
  if ((~v364 & 0xF000000000000007) == 0)
  {

    goto LABEL_45;
  }

  v393 = v364;
  MEMORY[0x1EEE9AC00](v210, v211);
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v212;
  v390 = 0;
  v214 = v213;
  v215 = swift_allocObject();
  *(v215 + 16) = v388;
  *(v215 + 32) = v390;
  *(v215 + 40) = v142;
  *(v215 + 48) = v137;
  swift_retain_n();
  sub_1D66B21E4(v214);
  v216 = sub_1D72647CC();
  v390 = 0;
  v217 = swift_allocObject();
  *(v217 + 16) = v216;
  *(v217 + 24) = v388;
  *(v217 + 40) = v390;
  v218 = v144;
  v219 = *(v349 + 3);
  v220 = *(v349 + 4);
  v221 = __swift_project_boxed_opaque_existential_1(v349, v219);
  MEMORY[0x1EEE9AC00](v221, v222);
  MEMORY[0x1EEE9AC00](v223, v224);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v346 = sub_1D6708B4C;
  v347 = v215;
  v206 = v367;
  v226 = sub_1D5D2F7A4(v367, sub_1D615B49C, v225, sub_1D615B4A4, &v348[-6], v219, v220);
  v144 = v218;
  if (v218)
  {
LABEL_48:

    sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
    goto LABEL_10;
  }

  v227 = v226;

  if (v227)
  {
    sub_1D72647EC();

    v137 = v350;
  }

  else
  {
  }

  v130 = v380;
  v142 = v381;
  v132 = v378;
  v131 = v379;
LABEL_45:
  sub_1D5D2CFE8(v367, type metadata accessor for FormatVersionRequirement);
  v132(v365, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAB0;
  v391 = xmmword_1D72BAAB0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v228 = swift_allocObject();
  v230 = v228;
  *(v228 + 16) = v388;
  *(v228 + 32) = v393;
  *(v228 + 40) = v142;
  *(v228 + 48) = v137;
  v231 = v362;
  if ((~v362 & 0xF000000000000007) == 0)
  {

    goto LABEL_52;
  }

  v393 = v362;
  MEMORY[0x1EEE9AC00](v228, v229);
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v230;
  v390 = 0;
  v232 = swift_allocObject();
  *(v232 + 16) = v388;
  *(v232 + 32) = v390;
  *(v232 + 40) = v142;
  *(v232 + 48) = v137;
  swift_retain_n();
  sub_1D66B21E4(v231);
  v233 = sub_1D72647CC();
  v390 = 0;
  v234 = swift_allocObject();
  *(v234 + 16) = v233;
  *(v234 + 24) = v388;
  *(v234 + 40) = v390;
  v235 = v144;
  v236 = *(v349 + 3);
  v237 = *(v349 + 4);
  v238 = __swift_project_boxed_opaque_existential_1(v349, v236);
  MEMORY[0x1EEE9AC00](v238, v239);
  MEMORY[0x1EEE9AC00](v240, v241);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v346 = sub_1D6708B4C;
  v347 = v232;
  v206 = v365;
  v243 = sub_1D5D2F7A4(v365, sub_1D615B49C, v242, sub_1D615B4A4, &v348[-6], v236, v237);
  v144 = v235;
  if (v235)
  {
    goto LABEL_48;
  }

  v244 = v243;

  if (v244)
  {
    sub_1D72647EC();
  }

  v137 = v350;
  v131 = v379;
  v130 = v380;
  v132 = v378;
LABEL_52:
  v245 = v144;
  sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);
  v132(v363, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAC0;
  v391 = xmmword_1D72BAAC0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v246 = swift_allocObject();
  v248 = v246;
  *(v246 + 16) = v388;
  *(v246 + 32) = v393;
  *(v246 + 40) = v381;
  *(v246 + 48) = v137;
  v249 = v360;
  if ((~v360 & 0xF000000000000007) != 0)
  {
    v393 = v360;
    MEMORY[0x1EEE9AC00](v246, v247);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v248;
    v390 = 0;
    v250 = swift_allocObject();
    *(v250 + 16) = v388;
    *(v250 + 32) = v390;
    *(v250 + 40) = v381;
    *(v250 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v249);
    v251 = sub_1D72647CC();
    v390 = 0;
    v252 = swift_allocObject();
    *(v252 + 16) = v251;
    *(v252 + 24) = v388;
    *(v252 + 40) = v390;
    v253 = *(v349 + 3);
    v254 = *(v349 + 4);
    v255 = __swift_project_boxed_opaque_existential_1(v349, v253);
    MEMORY[0x1EEE9AC00](v255, v256);
    MEMORY[0x1EEE9AC00](v257, v258);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v250;
    v260 = sub_1D5D2F7A4(v363, sub_1D615B49C, v259, sub_1D615B4A4, &v348[-6], v253, v254);
    if (v245)
    {

      v261 = &v392;
      goto LABEL_95;
    }

    v262 = v260;

    if (v262)
    {
      sub_1D72647EC();
    }

    v137 = v350;
    v131 = v379;
    v130 = v380;
    v132 = v378;
  }

  else
  {
  }

  sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
  v132(v361, v131, v130);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAD0;
  v391 = xmmword_1D72BAAD0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v263 = swift_allocObject();
  v265 = v263;
  *(v263 + 16) = v388;
  *(v263 + 32) = v393;
  *(v263 + 40) = v381;
  *(v263 + 48) = v137;
  v266 = v358;
  if ((~v358 & 0xF000000000000007) != 0)
  {
    v393 = v358;
    MEMORY[0x1EEE9AC00](v263, v264);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v265;
    v390 = 0;
    v267 = swift_allocObject();
    *(v267 + 16) = v388;
    *(v267 + 32) = v390;
    *(v267 + 40) = v381;
    *(v267 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v266);
    v268 = sub_1D72647CC();
    v390 = 0;
    v269 = swift_allocObject();
    *(v269 + 16) = v268;
    *(v269 + 24) = v388;
    *(v269 + 40) = v390;
    v270 = *(v349 + 3);
    v271 = *(v349 + 4);
    v272 = __swift_project_boxed_opaque_existential_1(v349, v270);
    MEMORY[0x1EEE9AC00](v272, v273);
    MEMORY[0x1EEE9AC00](v274, v275);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v267;
    v277 = sub_1D5D2F7A4(v361, sub_1D615B49C, v276, sub_1D615B4A4, &v348[-6], v270, v271);
    if (v245)
    {

      v261 = &v391;
      goto LABEL_95;
    }

    v278 = v277;

    if (v278)
    {
      sub_1D72647EC();
    }

    v137 = v350;
  }

  else
  {
  }

  sub_1D5D2CFE8(v361, type metadata accessor for FormatVersionRequirement);
  v378(v359, v379, v380);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAE0;
  v391 = xmmword_1D72BAAE0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v279 = swift_allocObject();
  v281 = v279;
  *(v279 + 16) = v388;
  *(v279 + 32) = v393;
  *(v279 + 40) = v381;
  *(v279 + 48) = v137;
  if ((~v356 & 0xF000000000000007) != 0)
  {
    v282 = v356;
    v393 = v356;
    MEMORY[0x1EEE9AC00](v279, v280);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v281;
    v390 = 0;
    v283 = swift_allocObject();
    *(v283 + 16) = v388;
    *(v283 + 32) = v390;
    *(v283 + 40) = v381;
    *(v283 + 48) = v137;
    swift_retain_n();
    sub_1D66B21E4(v282);
    v284 = sub_1D72647CC();
    v390 = 0;
    v285 = swift_allocObject();
    *(v285 + 16) = v284;
    *(v285 + 24) = v388;
    *(v285 + 40) = v390;
    v286 = *(v349 + 3);
    v287 = *(v349 + 4);
    v288 = __swift_project_boxed_opaque_existential_1(v349, v286);
    MEMORY[0x1EEE9AC00](v288, v289);
    MEMORY[0x1EEE9AC00](v290, v291);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v283;
    v293 = sub_1D5D2F7A4(v359, sub_1D615B49C, v292, sub_1D615B4A4, &v348[-6], v286, v287);
    if (v245)
    {

      v261 = &v389;
      goto LABEL_95;
    }

    v294 = v293;

    if (v294)
    {
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
  v378(v357, v379, v380);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAF0;
  v391 = xmmword_1D72BAAF0;
  v392 = 0;
  LOBYTE(v393) = 0;
  v295 = swift_allocObject();
  v297 = v295;
  *(v295 + 16) = v388;
  *(v295 + 32) = v393;
  v298 = v350;
  *(v295 + 40) = v381;
  *(v295 + 48) = v298;
  if ((~v354 & 0xF000000000000007) != 0)
  {
    v299 = v354;
    v393 = v354;
    MEMORY[0x1EEE9AC00](v295, v296);
    v348[-4] = sub_1D5B4AA6C;
    v348[-3] = 0;
    v346 = sub_1D6708B4C;
    v347 = v297;
    v390 = 0;
    v300 = swift_allocObject();
    *(v300 + 16) = v388;
    *(v300 + 32) = v390;
    *(v300 + 40) = v381;
    *(v300 + 48) = v350;
    swift_retain_n();
    sub_1D66B21E4(v299);
    v301 = sub_1D72647CC();
    v390 = 0;
    v302 = swift_allocObject();
    *(v302 + 16) = v301;
    *(v302 + 24) = v388;
    *(v302 + 40) = v390;
    v303 = *(v349 + 3);
    v304 = *(v349 + 4);
    v305 = __swift_project_boxed_opaque_existential_1(v349, v303);
    MEMORY[0x1EEE9AC00](v305, v306);
    MEMORY[0x1EEE9AC00](v307, v308);
    v348[-4] = sub_1D615B4A4;
    v348[-3] = &v348[-6];
    v346 = sub_1D6708B4C;
    v347 = v300;
    v310 = sub_1D5D2F7A4(v357, sub_1D615B49C, v309, sub_1D615B4A4, &v348[-6], v303, v304);
    if (v245)
    {

      v261 = &v388;
      goto LABEL_95;
    }

    v311 = v310;

    if (v311)
    {
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
  v378(v355, v379, v380);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D7282A80;
  v391 = xmmword_1D7282A80;
  v392 = 0;
  LOBYTE(v393) = 0;
  v312 = swift_allocObject();
  v314 = v312;
  *(v312 + 16) = v388;
  *(v312 + 32) = v393;
  v315 = v350;
  *(v312 + 40) = v381;
  *(v312 + 48) = v315;
  if ((~v352 & 0xF000000000000007) == 0)
  {

LABEL_87:

    sub_1D5D2CFE8(v355, type metadata accessor for FormatVersionRequirement);
    v378(v353, v379, v380);
    swift_storeEnumTagMultiPayload();
    v388 = xmmword_1D72BAB00;
    v391 = xmmword_1D72BAB00;
    v392 = 0;
    LOBYTE(v393) = 0;
    v329 = swift_allocObject();
    v331 = v329;
    *(v329 + 16) = v388;
    *(v329 + 32) = v393;
    v332 = v350;
    *(v329 + 40) = v381;
    *(v329 + 48) = v332;
    if ((~v351 & 0xF000000000000007) != 0)
    {
      v333 = v351;
      v393 = v351;
      MEMORY[0x1EEE9AC00](v329, v330);
      v348[-4] = sub_1D5B4AA6C;
      v348[-3] = 0;
      v346 = sub_1D6708B4C;
      v347 = v331;
      v390 = 0;
      v334 = swift_allocObject();
      *(v334 + 16) = v388;
      *(v334 + 32) = v390;
      *(v334 + 40) = v381;
      *(v334 + 48) = v350;
      swift_retain_n();
      sub_1D66B21E4(v333);
      v335 = sub_1D72647CC();
      v390 = 0;
      v336 = swift_allocObject();
      *(v336 + 16) = v335;
      *(v336 + 24) = v388;
      *(v336 + 40) = v390;
      v337 = *(v349 + 3);
      v338 = *(v349 + 4);
      v339 = __swift_project_boxed_opaque_existential_1(v349, v337);
      MEMORY[0x1EEE9AC00](v339, v340);
      MEMORY[0x1EEE9AC00](v341, v342);
      v348[-4] = sub_1D615B4A4;
      v348[-3] = &v348[-6];
      v346 = sub_1D66B21B8;
      v347 = v334;
      v344 = sub_1D5D2F7A4(v353, sub_1D615B49C, v343, sub_1D615B4A4, &v348[-6], v337, v338);
      if (v245)
      {
      }

      else
      {
        v345 = v344;

        if (v345)
        {
          sub_1D72647EC();
        }
      }
    }

    else
    {
    }

    v261 = v385;
    goto LABEL_95;
  }

  v316 = v352;
  v393 = v352;
  MEMORY[0x1EEE9AC00](v312, v313);
  v348[-4] = sub_1D5B4AA6C;
  v348[-3] = 0;
  v346 = sub_1D6708B4C;
  v347 = v314;
  v390 = 0;
  v317 = swift_allocObject();
  *(v317 + 16) = v388;
  *(v317 + 32) = v390;
  *(v317 + 40) = v381;
  *(v317 + 48) = v350;
  swift_retain_n();
  sub_1D66B21E4(v316);
  v318 = sub_1D72647CC();
  v390 = 0;
  v319 = swift_allocObject();
  *(v319 + 16) = v318;
  *(v319 + 24) = v388;
  *(v319 + 40) = v390;
  v320 = *(v349 + 3);
  v321 = *(v349 + 4);
  v322 = __swift_project_boxed_opaque_existential_1(v349, v320);
  MEMORY[0x1EEE9AC00](v322, v323);
  MEMORY[0x1EEE9AC00](v324, v325);
  v348[-4] = sub_1D615B4A4;
  v348[-3] = &v348[-6];
  v346 = sub_1D6708B4C;
  v347 = v317;
  v327 = sub_1D5D2F7A4(v355, sub_1D615B49C, v326, sub_1D615B4A4, &v348[-6], v320, v321);
  if (!v245)
  {
    v328 = v327;

    if (v328)
    {
      sub_1D72647EC();
    }

    goto LABEL_87;
  }

  v261 = &v386;
LABEL_95:
  sub_1D5D2CFE8(*(v261 - 32), type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v348[0], sub_1D66B2090);
}

uint64_t sub_1D656DA74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B3434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D656DAAC(uint64_t a1)
{
  v2 = sub_1D5CA2E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D656DAE8(uint64_t a1)
{
  v2 = sub_1D5CA2E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRemoteVideo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D66B2260(0);
  v7 = v6;
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B22F4(0);
  sub_1D5B58B84(&qword_1EDF0C5B0, sub_1D66B22F4, &unk_1D7321584);
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v80;
    v11 = a1;
    v15 = v7;
    v16 = v10;
    if (v13)
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
            goto LABEL_8;
          }
        }

        v21 = v14;
        v22 = *(v19 - 2);
        v23 = *(v19 - 1);

        v24 = sub_1D6621F78();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v25 = v22;
        *(v25 + 8) = v23;
        *(v25 + 16) = v24;
        *(v25 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v21 + 8))(v16, v15);
        goto LABEL_11;
      }

LABEL_8:
    }

    sub_1D5CA2FA0();
    v81 = 0uLL;
    v82 = 0;
    sub_1D726431C();
    v20 = v83;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    sub_1D726431C();
    v26 = v83;
    v81 = xmmword_1D7297410;
    v82 = 0;
    sub_1D726431C();
    v79 = v26;
    v27 = v83;
    v81 = xmmword_1D72BAA60;
    v82 = 0;
    sub_1D726427C();
    v78 = v27;
    v28 = v83;
    v81 = xmmword_1D72BAA70;
    v82 = 0;
    sub_1D726427C();
    v77 = v28;
    v29 = v83;
    v81 = xmmword_1D72BAA80;
    v82 = 0;
    sub_1D726427C();
    v76 = v29;
    v30 = v83;
    v81 = xmmword_1D72BAA90;
    v82 = 0;
    sub_1D726427C();
    v75 = v30;
    v31 = v83;
    v81 = xmmword_1D72BAAA0;
    v82 = 0;
    sub_1D726427C();
    v74 = v31;
    v32 = v83;
    v81 = xmmword_1D72BAAB0;
    v82 = 0;
    sub_1D726427C();
    v72 = v83;
    v73 = v32;
    v81 = xmmword_1D72BAAC0;
    v82 = 0;
    v33 = v15;
    sub_1D726427C();
    v71 = v83;
    v81 = xmmword_1D72BAAD0;
    v82 = 0;
    sub_1D726427C();
    v70 = v83;
    v81 = xmmword_1D72BAAE0;
    v82 = 0;
    sub_1D726427C();
    v69 = v83;
    v81 = xmmword_1D72BAAF0;
    v82 = 0;
    sub_1D726427C();
    v68 = v83;
    v81 = xmmword_1D7282A80;
    v82 = 0;
    sub_1D726427C();
    v67 = v83;
    v81 = xmmword_1D72BAB00;
    v82 = 0;
    sub_1D726427C();
    v66 = v83;
    v81 = xmmword_1D72BAB10;
    v82 = 0;
    sub_1D726427C();
    v65 = v83;
    v81 = xmmword_1D72BAB20;
    v82 = 0;
    sub_1D726427C();
    v64 = v83;
    v81 = xmmword_1D72BAB30;
    v82 = 0;
    sub_1D726427C();
    v34 = v83;
    v81 = xmmword_1D72BAB40;
    v82 = 0;
    sub_1D726427C();
    v63 = v83;
    v81 = xmmword_1D72BAB50;
    v82 = 0;
    sub_1D726427C();
    v62 = v83;
    v81 = xmmword_1D72BAB60;
    v82 = 0;
    sub_1D726427C();
    v61 = v83;
    v81 = xmmword_1D72BAB70;
    v82 = 0;
    sub_1D726427C();
    v60 = v83;
    v81 = xmmword_1D72BAB80;
    v82 = 0;
    sub_1D726427C();
    v59 = v83;
    v81 = xmmword_1D72BAB90;
    v82 = 0;
    sub_1D726427C();
    v58 = v83;
    v81 = xmmword_1D72BABA0;
    v82 = 0;
    sub_1D726427C();
    v57 = v83;
    v81 = xmmword_1D72BABB0;
    v82 = 0;
    sub_1D726427C();
    v56 = v83;
    v81 = xmmword_1D72BABC0;
    v82 = 0;
    sub_1D726427C();
    v55 = v83;
    v81 = xmmword_1D72BABD0;
    v82 = 0;
    sub_1D726427C();
    v54 = v83;
    v81 = xmmword_1D72BABE0;
    v82 = 0;
    sub_1D726427C();
    v53 = v83;
    v81 = xmmword_1D72BABF0;
    v82 = 0;
    sub_1D726427C();
    (*(v80 + 8))(v10, v33);
    v35 = v83;
    v37 = v78;
    v36 = v79;
    *a2 = v20;
    a2[1] = v36;
    v38 = v76;
    v39 = v77;
    a2[2] = v37;
    a2[3] = v39;
    a2[4] = v38;
    v40 = v74;
    a2[5] = v75;
    a2[6] = v40;
    v41 = v72;
    a2[7] = v73;
    a2[8] = v41;
    v42 = v70;
    a2[9] = v71;
    a2[10] = v42;
    v43 = v68;
    a2[11] = v69;
    a2[12] = v43;
    v44 = v66;
    a2[13] = v67;
    a2[14] = v44;
    v45 = v64;
    a2[15] = v65;
    a2[16] = v45;
    v46 = v63;
    a2[17] = v34;
    a2[18] = v46;
    v47 = v61;
    a2[19] = v62;
    a2[20] = v47;
    v48 = v59;
    a2[21] = v60;
    a2[22] = v48;
    v49 = v57;
    a2[23] = v58;
    a2[24] = v49;
    v50 = v55;
    a2[25] = v56;
    a2[26] = v50;
    v51 = v53;
    a2[27] = v54;
    a2[28] = v51;
    a2[29] = v35;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v11 = a1;
LABEL_11:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void FormatRemoteVideo.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v457 = v448 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v456 = v448 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v454 = v448 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v461 = v448 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v460 = v448 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v464 = v448 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v466 = v448 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v467 = v448 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v470 = v448 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v472 = v448 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v474 = v448 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v476 = v448 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v478 = v448 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v480 = v448 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v482 = v448 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v484 = v448 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v486 = v448 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v489 = v448 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v488 = v448 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v491 = v448 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v501 = v448 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v494 = v448 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v496 = v448 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v498 = v448 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v505 = v448 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v502 = v448 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v504 = v448 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v507 = v448 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  *&v511 = v448 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = v448 - v92;
  sub_1D66B2474(0);
  v95 = v94;
  MEMORY[0x1EEE9AC00](v94, v96);
  v98 = v448 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *v1;
  *&v508 = v1[1];
  v100 = v1[3];
  v506 = v1[2];
  v503 = v100;
  v101 = v1[5];
  v500 = v1[4];
  v499 = v101;
  v102 = v1[7];
  v497 = v1[6];
  v495 = v102;
  v103 = v1[9];
  v493 = v1[8];
  v492 = v103;
  v104 = v1[11];
  v490 = v1[10];
  v487 = v104;
  v105 = v1[13];
  v485 = v1[12];
  v483 = v105;
  v106 = v1[15];
  v481 = v1[14];
  v479 = v106;
  v107 = v1[17];
  v477 = v1[16];
  v475 = v107;
  v108 = v1[19];
  v473 = v1[18];
  v471 = v108;
  v109 = v1[21];
  v469 = v1[20];
  v468 = v109;
  v110 = v1[23];
  v465 = v1[22];
  v463 = v110;
  v111 = v1[25];
  v462 = v1[24];
  v458 = v111;
  v112 = v1[27];
  v459 = v1[26];
  v452 = v112;
  v113 = v1[29];
  v453 = v1[28];
  v455 = v113;
  v114 = a1[3];
  v115 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v114);
  sub_1D66B22F4(0);
  v117 = v116;
  v118 = sub_1D5B58B84(&qword_1EDF0C5B0, sub_1D66B22F4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRemoteVideo, v117, v119, v114, &type metadata for FormatRemoteVideo, v117, &type metadata for FormatVersions.AzdenE, v115, v98, v118, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v120 = sub_1D725BD1C();
  v121 = __swift_project_value_buffer(v120, qword_1EDFFCD98);
  v122 = *(v120 - 8);
  v123 = *(v122 + 16);
  v509[0] = v121;
  v509[1] = v122 + 16;
  *&v510 = v123;
  v123(v93);
  v124 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v517 = v99;
  v514 = 0uLL;
  v515 = 0;
  v125 = &v98[*(v95 + 44)];
  v127 = *v125;
  v126 = *(v125 + 1);
  v513 = 0;
  v128 = swift_allocObject();
  *(v128 + 16) = 0;
  *(v128 + 24) = 0;
  *(v128 + 32) = v513;
  *(v128 + 40) = v127;
  *(v128 + 48) = v126;
  MEMORY[0x1EEE9AC00](v128, v129);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v130;

  v131 = v93;
  v132 = v98;
  v133 = v512;
  sub_1D662A0FC(v93, 0, 0, 0, sub_1D615B4A4, &v448[-6], v134);
  if (v133)
  {

    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v98, sub_1D66B2474);
    return;
  }

  v512 = v125;
  v450 = v124;
  v451 = v120;
  sub_1D66B2508(0);
  v136 = v135;
  v137 = sub_1D5B58B84(&qword_1EC8871A8, sub_1D66B2508, MEMORY[0x1E69E6F60]);
  v138 = sub_1D60B27FC();
  sub_1D72647EC();
  v448[0] = v138;
  v448[1] = v137;
  v448[2] = v136;
  sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);

  v449 = v132;
  v139 = v511;
  v140 = v509[0];
  v141 = v510;
  (v510)(v511, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v517 = v508;
  v508 = xmmword_1D728CF30;
  v514 = xmmword_1D728CF30;
  v515 = 0;
  v143 = *v512;
  v142 = *(v512 + 1);
  v513 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v508;
  *(v144 + 32) = v513;
  *(v144 + 40) = v143;
  *(v144 + 48) = v142;
  MEMORY[0x1EEE9AC00](v144, v145);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v146;

  v147 = v449;
  sub_1D662A0FC(v139, 1, 0, 0, sub_1D615B4A4, &v448[-6], v148);
  sub_1D72647EC();
  sub_1D5D2CFE8(v511, type metadata accessor for FormatVersionRequirement);

  v149 = v141;
  v150 = v140;
  v151 = v507;
  v152 = v451;
  v149(v507, v140, v451);
  swift_storeEnumTagMultiPayload();
  v517 = v506;
  v511 = xmmword_1D7297410;
  v514 = xmmword_1D7297410;
  v515 = 0;
  v153 = *v512;
  v154 = *(v512 + 1);
  v513 = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v511;
  *(v155 + 32) = v513;
  *(v155 + 40) = v153;
  *(v155 + 48) = v154;
  MEMORY[0x1EEE9AC00](v155, v156);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v157;

  sub_1D662A0FC(v151, 2, 0, 0, sub_1D615B4A4, &v448[-6], v158);
  v159 = v152;
  v160 = v510;
  sub_1D72647EC();
  v161 = v159;
  *&v511 = 0;
  sub_1D5D2CFE8(v507, type metadata accessor for FormatVersionRequirement);

  v162 = v504;
  v163 = v150;
  v164 = v160;
  v160(v504, v163, v161);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAA60;
  v514 = xmmword_1D72BAA60;
  v515 = 0;
  v165 = *v512;
  v166 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v167 = swift_allocObject();
  v169 = v167;
  *(v167 + 16) = v508;
  *(v167 + 32) = v517;
  *(v167 + 40) = v165;
  *(v167 + 48) = v166;
  v170 = v503;
  if ((~v503 & 0xF000000000000007) != 0)
  {
    v517 = v503;
    MEMORY[0x1EEE9AC00](v167, v168);
    v448[-4] = sub_1D5B4AA6C;
    v448[-3] = 0;
    v446 = sub_1D6708B50;
    v447 = v169;

    v174.n128_f64[0] = sub_1D66B21E4(v170);
    v175 = v511;
    v176 = sub_1D663B9D4(v162, 3, 0, 0, sub_1D615B4A4, &v448[-6], v174);
    v173 = v505;
    if (v175)
    {

      v177 = v162;
LABEL_40:
      sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
      v233 = v147;
      goto LABEL_41;
    }

    *&v511 = 0;
    if (v176)
    {
      sub_1D72647EC();
      *&v511 = 0;
    }

    sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

    v171 = v512;
    v172 = v501;
  }

  else
  {

    sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);
    v171 = v512;
    v172 = v501;
    v173 = v505;
  }

  v178 = v502;
  v160(v502, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAA70;
  v514 = xmmword_1D72BAA70;
  v515 = 0;
  v179 = *v171;
  v180 = *(v171 + 1);
  LOBYTE(v517) = 0;
  v181 = swift_allocObject();
  v183 = v181;
  *(v181 + 16) = v508;
  *(v181 + 32) = v517;
  *(v181 + 40) = v179;
  *(v181 + 48) = v180;
  v184 = v500;
  if ((~v500 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
    v185 = v512;
    goto LABEL_20;
  }

  v517 = v500;
  MEMORY[0x1EEE9AC00](v181, v182);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v183;

  v186.n128_f64[0] = sub_1D66B21E4(v184);
  v187 = v511;
  v188 = sub_1D663B9D4(v178, 4, 0, 0, sub_1D615B4A4, &v448[-6], v186);
  if (v187)
  {

    v177 = v502;
    goto LABEL_40;
  }

  *&v511 = 0;
  if (v188)
  {
    sub_1D72647EC();
    v189 = v502;
    *&v511 = 0;

    v190 = v189;
  }

  else
  {

    v190 = v502;
  }

  sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);

  v185 = v512;
  v172 = v501;
LABEL_20:
  v191 = v173;
  v192 = v173;
  v193 = v509[0];
  v164(v192, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAA80;
  v514 = xmmword_1D72BAA80;
  v515 = 0;
  v194 = *v185;
  v195 = *(v185 + 1);
  LOBYTE(v517) = 0;
  v196 = swift_allocObject();
  v198 = v196;
  *(v196 + 16) = v508;
  *(v196 + 32) = v517;
  *(v196 + 40) = v194;
  *(v196 + 48) = v195;
  v199 = v499;
  if ((~v499 & 0xF000000000000007) != 0)
  {
    v517 = v499;
    MEMORY[0x1EEE9AC00](v196, v197);
    v448[-4] = sub_1D5B4AA6C;
    v448[-3] = 0;
    v446 = sub_1D6708B50;
    v447 = v198;

    v201.n128_f64[0] = sub_1D66B21E4(v199);
    v202 = v511;
    v203 = sub_1D663B9D4(v191, 5, 0, 0, sub_1D615B4A4, &v448[-6], v201);
    if (v202)
    {
      goto LABEL_39;
    }

    *&v511 = 0;
    if (v203)
    {
      sub_1D72647EC();
      *&v511 = 0;
    }

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

    v200 = v512;
    v172 = v501;
  }

  else
  {

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    v200 = v512;
  }

  v204 = v498;
  v164(v498, v193, v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAA90;
  v514 = xmmword_1D72BAA90;
  v515 = 0;
  v205 = *v200;
  v206 = *(v200 + 1);
  LOBYTE(v517) = 0;
  v207 = swift_allocObject();
  v209 = v207;
  *(v207 + 16) = v508;
  *(v207 + 32) = v517;
  *(v207 + 40) = v205;
  *(v207 + 48) = v206;
  v210 = v497;
  if ((~v497 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    goto LABEL_28;
  }

  v517 = v497;
  MEMORY[0x1EEE9AC00](v207, v208);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v209;

  v223.n128_f64[0] = sub_1D66B21E4(v210);
  v224 = v511;
  v225 = sub_1D663B9D4(v204, 6, 0, 0, sub_1D615B4A4, &v448[-6], v223);
  if (v224)
  {

    v177 = v498;
    goto LABEL_40;
  }

  *&v511 = 0;
  if (v225)
  {
    v234 = v511;
    sub_1D72647EC();
    *&v511 = v234;

    sub_1D5D2CFE8(v498, type metadata accessor for FormatVersionRequirement);

    v193 = v509[0];
    v164 = v510;
  }

  else
  {

    sub_1D5D2CFE8(v498, type metadata accessor for FormatVersionRequirement);
  }

  v172 = v501;
LABEL_28:
  v191 = v496;
  v164(v496, v193, v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAA0;
  v514 = xmmword_1D72BAAA0;
  v515 = 0;
  v211 = *v512;
  v212 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v213 = swift_allocObject();
  v215 = v213;
  *(v213 + 16) = v508;
  *(v213 + 32) = v517;
  *(v213 + 40) = v211;
  *(v213 + 48) = v212;
  v216 = v495;
  if ((~v495 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    goto LABEL_30;
  }

  v517 = v495;
  MEMORY[0x1EEE9AC00](v213, v214);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v215;

  v226.n128_f64[0] = sub_1D66B21E4(v216);
  v227 = v511;
  v228 = sub_1D663B9D4(v191, 7, 0, 0, sub_1D615B4A4, &v448[-6], v226);
  if (v227)
  {
LABEL_39:

    v177 = v191;
    goto LABEL_40;
  }

  *&v511 = 0;
  if (v228)
  {
    v229 = v511;
    sub_1D72647EC();
    *&v511 = v229;

    sub_1D5D2CFE8(v496, type metadata accessor for FormatVersionRequirement);

    v193 = v509[0];
    v164 = v510;
  }

  else
  {

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
  }

  v172 = v501;
LABEL_30:
  v191 = v494;
  v164(v494, v193, v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAB0;
  v514 = xmmword_1D72BAAB0;
  v515 = 0;
  v217 = *v512;
  v218 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v219 = swift_allocObject();
  v221 = v219;
  *(v219 + 16) = v508;
  *(v219 + 32) = v517;
  *(v219 + 40) = v217;
  *(v219 + 48) = v218;
  v222 = v493;
  if ((~v493 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    goto LABEL_51;
  }

  v517 = v493;
  MEMORY[0x1EEE9AC00](v219, v220);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v221;

  v230.n128_f64[0] = sub_1D66B21E4(v222);
  v231 = v511;
  v232 = sub_1D663B9D4(v191, 8, 0, 0, sub_1D615B4A4, &v448[-6], v230);
  if (v231)
  {
    goto LABEL_39;
  }

  *&v511 = 0;
  if (v232)
  {
    v235 = v511;
    sub_1D72647EC();
    *&v511 = v235;
  }

  sub_1D5D2CFE8(v494, type metadata accessor for FormatVersionRequirement);

  v193 = v509[0];
  v164 = v510;
  v172 = v501;
LABEL_51:
  v164(v172, v193, v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAC0;
  v514 = xmmword_1D72BAAC0;
  v515 = 0;
  v236 = *v512;
  v237 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v238 = swift_allocObject();
  v240 = v238;
  *(v238 + 16) = v508;
  *(v238 + 32) = v517;
  *(v238 + 40) = v236;
  *(v238 + 48) = v237;
  v241 = v492;
  if ((~v492 & 0xF000000000000007) != 0)
  {
    v517 = v492;
    MEMORY[0x1EEE9AC00](v238, v239);
    v448[-4] = sub_1D5B4AA6C;
    v448[-3] = 0;
    v446 = sub_1D6708B50;
    v447 = v240;

    v243.n128_f64[0] = sub_1D66B21E4(v241);
    v242 = v147;
    v244 = v511;
    v245 = sub_1D663B9D4(v172, 9, 0, 0, sub_1D615B4A4, &v448[-6], v243);
    *&v511 = v244;
    if (v244)
    {

      v246 = v501;
LABEL_187:
      sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2CFE8(v242, sub_1D66B2474);

      return;
    }

    if (v245)
    {
      v247 = v511;
      sub_1D72647EC();
      *&v511 = v247;
    }

    sub_1D5D2CFE8(v501, type metadata accessor for FormatVersionRequirement);

    v193 = v509[0];
    v164 = v510;
  }

  else
  {
    v242 = v147;

    sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
  }

  v248 = v491;
  v164(v491, v193, v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAD0;
  v514 = xmmword_1D72BAAD0;
  v515 = 0;
  v250 = *v512;
  v249 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v251 = swift_allocObject();
  v253 = v251;
  *(v251 + 16) = v508;
  *(v251 + 32) = v517;
  *(v251 + 40) = v250;
  *(v251 + 48) = v249;
  v254 = v490;
  if ((~v490 & 0xF000000000000007) != 0)
  {
    v517 = v490;
    MEMORY[0x1EEE9AC00](v251, v252);
    v448[-4] = sub_1D5B4AA6C;
    v448[-3] = 0;
    v446 = sub_1D6708B50;
    v447 = v253;

    v255.n128_f64[0] = sub_1D66B21E4(v254);
    v256 = v511;
    v257 = sub_1D663B9D4(v248, 10, 0, 0, sub_1D615B4A4, &v448[-6], v255);
    *&v511 = v256;
    if (v256)
    {

      v258 = &v517;
LABEL_186:
      v246 = *(v258 - 32);
      goto LABEL_187;
    }

    if (v257)
    {
      v259 = v511;
      sub_1D72647EC();
      *&v511 = v259;
    }

    sub_1D5D2CFE8(v491, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
  }

  v260 = v488;
  (v510)(v488, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAE0;
  v514 = xmmword_1D72BAAE0;
  v515 = 0;
  v262 = *v512;
  v261 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v263 = swift_allocObject();
  v265 = v263;
  *(v263 + 16) = v508;
  *(v263 + 32) = v517;
  *(v263 + 40) = v262;
  *(v263 + 48) = v261;
  if ((~v487 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
    goto LABEL_72;
  }

  v266 = v487;
  v517 = v487;
  MEMORY[0x1EEE9AC00](v263, v264);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v265;

  v267.n128_f64[0] = sub_1D66B21E4(v266);
  v268 = v511;
  v269 = sub_1D663B9D4(v260, 11, 0, 0, sub_1D615B4A4, &v448[-6], v267);
  *&v511 = v268;
  if (v268)
  {

    v258 = &v515;
    goto LABEL_186;
  }

  if (v269)
  {
    v270 = v511;
    sub_1D72647EC();
    *&v511 = v270;
  }

  sub_1D5D2CFE8(v488, type metadata accessor for FormatVersionRequirement);

LABEL_72:
  (v510)(v489, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAAF0;
  v514 = xmmword_1D72BAAF0;
  v515 = 0;
  v272 = *v512;
  v271 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v273 = swift_allocObject();
  v275 = v273;
  *(v273 + 16) = v508;
  *(v273 + 32) = v517;
  *(v273 + 40) = v272;
  *(v273 + 48) = v271;
  if ((~v485 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v489, type metadata accessor for FormatVersionRequirement);
    goto LABEL_79;
  }

  v276 = v485;
  v517 = v485;
  MEMORY[0x1EEE9AC00](v273, v274);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v275;

  v277.n128_f64[0] = sub_1D66B21E4(v276);
  v278 = v511;
  v279 = sub_1D663B9D4(v489, 12, 0, 0, sub_1D615B4A4, &v448[-6], v277);
  *&v511 = v278;
  if (v278)
  {

    v258 = &v516;
    goto LABEL_186;
  }

  if (v279)
  {
    v280 = v511;
    sub_1D72647EC();
    *&v511 = v280;
  }

  sub_1D5D2CFE8(v489, type metadata accessor for FormatVersionRequirement);

LABEL_79:
  (v510)(v486, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D7282A80;
  v514 = xmmword_1D7282A80;
  v515 = 0;
  v282 = *v512;
  v281 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v283 = swift_allocObject();
  v285 = v283;
  *(v283 + 16) = v508;
  *(v283 + 32) = v517;
  *(v283 + 40) = v282;
  *(v283 + 48) = v281;
  if ((~v483 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v486, type metadata accessor for FormatVersionRequirement);
    goto LABEL_86;
  }

  v286 = v483;
  v517 = v483;
  MEMORY[0x1EEE9AC00](v283, v284);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v285;

  v287.n128_f64[0] = sub_1D66B21E4(v286);
  v288 = v511;
  v289 = sub_1D663B9D4(v486, 13, 0, 0, sub_1D615B4A4, &v448[-6], v287);
  *&v511 = v288;
  if (v288)
  {

    v258 = &v514;
    goto LABEL_186;
  }

  if (v289)
  {
    v290 = v511;
    sub_1D72647EC();
    *&v511 = v290;
  }

  sub_1D5D2CFE8(v486, type metadata accessor for FormatVersionRequirement);

LABEL_86:
  (v510)(v484, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB00;
  v514 = xmmword_1D72BAB00;
  v515 = 0;
  v292 = *v512;
  v291 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v293 = swift_allocObject();
  v295 = v293;
  *(v293 + 16) = v508;
  *(v293 + 32) = v517;
  *(v293 + 40) = v292;
  *(v293 + 48) = v291;
  if ((~v481 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v484, type metadata accessor for FormatVersionRequirement);
    goto LABEL_93;
  }

  v296 = v481;
  v517 = v481;
  MEMORY[0x1EEE9AC00](v293, v294);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v295;

  v297.n128_f64[0] = sub_1D66B21E4(v296);
  v298 = v511;
  v299 = sub_1D663B9D4(v484, 14, 0, 0, sub_1D615B4A4, &v448[-6], v297);
  *&v511 = v298;
  if (v298)
  {

    v258 = &v512;
    goto LABEL_186;
  }

  if (v299)
  {
    v300 = v511;
    sub_1D72647EC();
    *&v511 = v300;
  }

  sub_1D5D2CFE8(v484, type metadata accessor for FormatVersionRequirement);

LABEL_93:
  (v510)(v482, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB10;
  v514 = xmmword_1D72BAB10;
  v515 = 0;
  v302 = *v512;
  v301 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v303 = swift_allocObject();
  v305 = v303;
  *(v303 + 16) = v508;
  *(v303 + 32) = v517;
  *(v303 + 40) = v302;
  *(v303 + 48) = v301;
  if ((~v479 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v482, type metadata accessor for FormatVersionRequirement);
    goto LABEL_100;
  }

  v306 = v479;
  v517 = v479;
  MEMORY[0x1EEE9AC00](v303, v304);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v305;

  v307.n128_f64[0] = sub_1D66B21E4(v306);
  v308 = v511;
  v309 = sub_1D663B9D4(v482, 15, 0, 0, sub_1D615B4A4, &v448[-6], v307);
  *&v511 = v308;
  if (v308)
  {

    v258 = &v511;
    goto LABEL_186;
  }

  if (v309)
  {
    v310 = v511;
    sub_1D72647EC();
    *&v511 = v310;
  }

  sub_1D5D2CFE8(v482, type metadata accessor for FormatVersionRequirement);

LABEL_100:
  (v510)(v480, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB20;
  v514 = xmmword_1D72BAB20;
  v515 = 0;
  v312 = *v512;
  v311 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v313 = swift_allocObject();
  v315 = v313;
  *(v313 + 16) = v508;
  *(v313 + 32) = v517;
  *(v313 + 40) = v312;
  *(v313 + 48) = v311;
  if ((~v477 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v480, type metadata accessor for FormatVersionRequirement);
    goto LABEL_107;
  }

  v316 = v477;
  v517 = v477;
  MEMORY[0x1EEE9AC00](v313, v314);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v315;

  v317.n128_f64[0] = sub_1D66B21E4(v316);
  v318 = v511;
  v319 = sub_1D663B9D4(v480, 16, 0, 0, sub_1D615B4A4, &v448[-6], v317);
  *&v511 = v318;
  if (v318)
  {

    v258 = &v510;
    goto LABEL_186;
  }

  if (v319)
  {
    v320 = v511;
    sub_1D72647EC();
    *&v511 = v320;
  }

  sub_1D5D2CFE8(v480, type metadata accessor for FormatVersionRequirement);

LABEL_107:
  (v510)(v478, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB30;
  v514 = xmmword_1D72BAB30;
  v515 = 0;
  v322 = *v512;
  v321 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v323 = swift_allocObject();
  v325 = v323;
  *(v323 + 16) = v508;
  *(v323 + 32) = v517;
  *(v323 + 40) = v322;
  *(v323 + 48) = v321;
  if ((~v475 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v478, type metadata accessor for FormatVersionRequirement);
    goto LABEL_114;
  }

  v326 = v475;
  v517 = v475;
  MEMORY[0x1EEE9AC00](v323, v324);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v325;

  v327.n128_f64[0] = sub_1D66B21E4(v326);
  v328 = v511;
  v329 = sub_1D663B9D4(v478, 17, 0, 0, sub_1D615B4A4, &v448[-6], v327);
  *&v511 = v328;
  if (v328)
  {

    v258 = v509;
    goto LABEL_186;
  }

  if (v329)
  {
    v330 = v511;
    sub_1D72647EC();
    *&v511 = v330;
  }

  sub_1D5D2CFE8(v478, type metadata accessor for FormatVersionRequirement);

LABEL_114:
  (v510)(v476, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB40;
  v514 = xmmword_1D72BAB40;
  v515 = 0;
  v332 = *v512;
  v331 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v333 = swift_allocObject();
  v335 = v333;
  *(v333 + 16) = v508;
  *(v333 + 32) = v517;
  *(v333 + 40) = v332;
  *(v333 + 48) = v331;
  if ((~v473 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v476, type metadata accessor for FormatVersionRequirement);
    goto LABEL_121;
  }

  v336 = v473;
  v517 = v473;
  MEMORY[0x1EEE9AC00](v333, v334);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v335;

  v337.n128_f64[0] = sub_1D66B21E4(v336);
  v338 = v511;
  v339 = sub_1D663B9D4(v476, 18, 0, 0, sub_1D615B4A4, &v448[-6], v337);
  *&v511 = v338;
  if (v338)
  {

    v258 = &v508;
    goto LABEL_186;
  }

  if (v339)
  {
    v340 = v511;
    sub_1D72647EC();
    *&v511 = v340;
  }

  sub_1D5D2CFE8(v476, type metadata accessor for FormatVersionRequirement);

LABEL_121:
  (v510)(v474, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB50;
  v514 = xmmword_1D72BAB50;
  v515 = 0;
  v342 = *v512;
  v341 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v343 = swift_allocObject();
  v345 = v343;
  *(v343 + 16) = v508;
  *(v343 + 32) = v517;
  *(v343 + 40) = v342;
  *(v343 + 48) = v341;
  if ((~v471 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v474, type metadata accessor for FormatVersionRequirement);
    goto LABEL_128;
  }

  v346 = v471;
  v517 = v471;
  MEMORY[0x1EEE9AC00](v343, v344);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v345;

  v347.n128_f64[0] = sub_1D66B21E4(v346);
  v348 = v511;
  v349 = sub_1D663B9D4(v474, 19, 0, 0, sub_1D615B4A4, &v448[-6], v347);
  *&v511 = v348;
  if (v348)
  {

    v258 = &v506;
    goto LABEL_186;
  }

  if (v349)
  {
    v350 = v511;
    sub_1D72647EC();
    *&v511 = v350;
  }

  sub_1D5D2CFE8(v474, type metadata accessor for FormatVersionRequirement);

LABEL_128:
  (v510)(v472, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB60;
  v514 = xmmword_1D72BAB60;
  v515 = 0;
  v352 = *v512;
  v351 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v353 = swift_allocObject();
  v355 = v353;
  *(v353 + 16) = v508;
  *(v353 + 32) = v517;
  *(v353 + 40) = v352;
  *(v353 + 48) = v351;
  if ((~v469 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);
    goto LABEL_135;
  }

  v356 = v469;
  v517 = v469;
  MEMORY[0x1EEE9AC00](v353, v354);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v355;

  v357.n128_f64[0] = sub_1D66B21E4(v356);
  v358 = v511;
  v359 = sub_1D663B9D4(v472, 20, 0, 0, sub_1D615B4A4, &v448[-6], v357);
  *&v511 = v358;
  if (v358)
  {

    v258 = &v504;
    goto LABEL_186;
  }

  if (v359)
  {
    v360 = v511;
    sub_1D72647EC();
    *&v511 = v360;
  }

  sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);

LABEL_135:
  (v510)(v470, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB70;
  v514 = xmmword_1D72BAB70;
  v515 = 0;
  v362 = *v512;
  v361 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v363 = swift_allocObject();
  v365 = v363;
  *(v363 + 16) = v508;
  *(v363 + 32) = v517;
  *(v363 + 40) = v362;
  *(v363 + 48) = v361;
  if ((~v468 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);
    goto LABEL_142;
  }

  v366 = v468;
  v517 = v468;
  MEMORY[0x1EEE9AC00](v363, v364);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v365;

  v367.n128_f64[0] = sub_1D66B21E4(v366);
  v368 = v511;
  v369 = sub_1D663B9D4(v470, 21, 0, 0, sub_1D615B4A4, &v448[-6], v367);
  *&v511 = v368;
  if (v368)
  {

    v258 = &v502;
    goto LABEL_186;
  }

  if (v369)
  {
    v370 = v511;
    sub_1D72647EC();
    *&v511 = v370;
  }

  sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);

LABEL_142:
  (v510)(v467, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB80;
  v514 = xmmword_1D72BAB80;
  v515 = 0;
  v372 = *v512;
  v371 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v373 = swift_allocObject();
  v375 = v373;
  *(v373 + 16) = v508;
  *(v373 + 32) = v517;
  *(v373 + 40) = v372;
  *(v373 + 48) = v371;
  if ((~v465 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v467, type metadata accessor for FormatVersionRequirement);
    goto LABEL_149;
  }

  v376 = v465;
  v517 = v465;
  MEMORY[0x1EEE9AC00](v373, v374);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v375;

  v377.n128_f64[0] = sub_1D66B21E4(v376);
  v378 = v511;
  v379 = sub_1D663B9D4(v467, 22, 0, 0, sub_1D615B4A4, &v448[-6], v377);
  *&v511 = v378;
  if (v378)
  {

    v258 = &v499;
    goto LABEL_186;
  }

  if (v379)
  {
    v380 = v511;
    sub_1D72647EC();
    *&v511 = v380;
  }

  sub_1D5D2CFE8(v467, type metadata accessor for FormatVersionRequirement);

LABEL_149:
  (v510)(v466, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BAB90;
  v514 = xmmword_1D72BAB90;
  v515 = 0;
  v382 = *v512;
  v381 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v383 = swift_allocObject();
  v385 = v383;
  *(v383 + 16) = v508;
  *(v383 + 32) = v517;
  *(v383 + 40) = v382;
  *(v383 + 48) = v381;
  if ((~v463 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v466, type metadata accessor for FormatVersionRequirement);
    goto LABEL_156;
  }

  v386 = v463;
  v517 = v463;
  MEMORY[0x1EEE9AC00](v383, v384);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v385;

  v387.n128_f64[0] = sub_1D66B21E4(v386);
  v388 = v511;
  v389 = sub_1D663B9D4(v466, 23, 0, 0, sub_1D615B4A4, &v448[-6], v387);
  *&v511 = v388;
  if (v388)
  {

    v258 = &v498;
    goto LABEL_186;
  }

  if (v389)
  {
    v390 = v511;
    sub_1D72647EC();
    *&v511 = v390;
  }

  sub_1D5D2CFE8(v466, type metadata accessor for FormatVersionRequirement);

LABEL_156:
  (v510)(v464, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BABA0;
  v514 = xmmword_1D72BABA0;
  v515 = 0;
  v392 = *v512;
  v391 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v393 = swift_allocObject();
  v395 = v393;
  *(v393 + 16) = v508;
  *(v393 + 32) = v517;
  *(v393 + 40) = v392;
  *(v393 + 48) = v391;
  if ((~v462 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);
    goto LABEL_163;
  }

  v396 = v462;
  v517 = v462;
  MEMORY[0x1EEE9AC00](v393, v394);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v395;

  v397.n128_f64[0] = sub_1D66B21E4(v396);
  v398 = v511;
  v399 = sub_1D663B9D4(v464, 24, 0, 0, sub_1D615B4A4, &v448[-6], v397);
  *&v511 = v398;
  if (v398)
  {

    v258 = &v496;
    goto LABEL_186;
  }

  if (v399)
  {
    v400 = v511;
    sub_1D72647EC();
    *&v511 = v400;
  }

  sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);

LABEL_163:
  (v510)(v460, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BABB0;
  v514 = xmmword_1D72BABB0;
  v515 = 0;
  v402 = *v512;
  v401 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v403 = swift_allocObject();
  v405 = v403;
  *(v403 + 16) = v508;
  *(v403 + 32) = v517;
  *(v403 + 40) = v402;
  *(v403 + 48) = v401;
  if ((~v458 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);
    goto LABEL_170;
  }

  v406 = v458;
  v517 = v458;
  MEMORY[0x1EEE9AC00](v403, v404);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v405;

  v407.n128_f64[0] = sub_1D66B21E4(v406);
  v408 = v511;
  v409 = sub_1D663B9D4(v460, 25, 0, 0, sub_1D615B4A4, &v448[-6], v407);
  *&v511 = v408;
  if (v408)
  {

    v258 = &v492;
    goto LABEL_186;
  }

  if (v409)
  {
    v410 = v511;
    sub_1D72647EC();
    *&v511 = v410;
  }

  sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);

LABEL_170:
  (v510)(v461, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BABC0;
  v514 = xmmword_1D72BABC0;
  v515 = 0;
  v412 = *v512;
  v411 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v413 = swift_allocObject();
  v415 = v413;
  *(v413 + 16) = v508;
  *(v413 + 32) = v517;
  *(v413 + 40) = v412;
  *(v413 + 48) = v411;
  if ((~v459 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v461, type metadata accessor for FormatVersionRequirement);
    goto LABEL_177;
  }

  v416 = v459;
  v517 = v459;
  MEMORY[0x1EEE9AC00](v413, v414);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v415;

  v417.n128_f64[0] = sub_1D66B21E4(v416);
  v418 = v511;
  v419 = sub_1D663B9D4(v461, 26, 0, 0, sub_1D615B4A4, &v448[-6], v417);
  *&v511 = v418;
  if (v418)
  {

    v258 = &v493;
    goto LABEL_186;
  }

  if (v419)
  {
    v420 = v511;
    sub_1D72647EC();
    *&v511 = v420;
  }

  sub_1D5D2CFE8(v461, type metadata accessor for FormatVersionRequirement);

LABEL_177:
  (v510)(v454, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BABD0;
  v514 = xmmword_1D72BABD0;
  v515 = 0;
  v422 = *v512;
  v421 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v423 = swift_allocObject();
  v425 = v423;
  *(v423 + 16) = v508;
  *(v423 + 32) = v517;
  *(v423 + 40) = v422;
  *(v423 + 48) = v421;
  if ((~v452 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v454, type metadata accessor for FormatVersionRequirement);
    goto LABEL_182;
  }

  v426 = v452;
  v517 = v452;
  MEMORY[0x1EEE9AC00](v423, v424);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v425;

  v427.n128_f64[0] = sub_1D66B21E4(v426);
  v428 = v511;
  sub_1D663B9D4(v454, 27, 0, 0, sub_1D615B4A4, &v448[-6], v427);
  *&v511 = v428;
  if (v428)
  {

    v258 = &v486;
    goto LABEL_186;
  }

  sub_1D72647EC();
  *&v511 = 0;

  sub_1D5D2CFE8(v454, type metadata accessor for FormatVersionRequirement);

LABEL_182:
  (v510)(v456, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v508 = xmmword_1D72BABE0;
  v514 = xmmword_1D72BABE0;
  v515 = 0;
  v430 = *v512;
  v429 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v431 = swift_allocObject();
  v433 = v431;
  *(v431 + 16) = v508;
  *(v431 + 32) = v517;
  *(v431 + 40) = v430;
  *(v431 + 48) = v429;
  if ((~v453 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v456, type metadata accessor for FormatVersionRequirement);
    goto LABEL_189;
  }

  v434 = v453;
  v517 = v453;
  MEMORY[0x1EEE9AC00](v431, v432);
  v448[-4] = sub_1D5B4AA6C;
  v448[-3] = 0;
  v446 = sub_1D6708B50;
  v447 = v433;

  v435.n128_f64[0] = sub_1D66B21E4(v434);
  v436 = v511;
  sub_1D663B9D4(v456, 28, 0, 0, sub_1D615B4A4, &v448[-6], v435);
  *&v511 = v436;
  if (v436)
  {

    v258 = &v488;
    goto LABEL_186;
  }

  sub_1D72647EC();
  *&v511 = 0;

  sub_1D5D2CFE8(v456, type metadata accessor for FormatVersionRequirement);

LABEL_189:
  (v510)(v457, v509[0], v451);
  swift_storeEnumTagMultiPayload();
  v510 = xmmword_1D72BABF0;
  v514 = xmmword_1D72BABF0;
  v515 = 0;
  v438 = *v512;
  v437 = *(v512 + 1);
  LOBYTE(v517) = 0;
  v439 = swift_allocObject();
  v441 = v439;
  *(v439 + 16) = v510;
  *(v439 + 32) = v517;
  *(v439 + 40) = v438;
  *(v439 + 48) = v437;
  if ((~v455 & 0xF000000000000007) != 0)
  {
    v442 = v455;
    v517 = v455;
    MEMORY[0x1EEE9AC00](v439, v440);
    v448[-4] = sub_1D5B4AA6C;
    v448[-3] = 0;
    v446 = sub_1D6708B50;
    v447 = v441;

    v443.n128_f64[0] = sub_1D66B21E4(v442);
    v444 = v511;
    v445 = sub_1D663B9D4(v457, 29, 0, 0, sub_1D615B4A4, &v448[-6], v443);
    if (v444)
    {
    }

    else
    {
      if ((v445 & 1) == 0)
      {

        sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v242, sub_1D66B2474);
        goto LABEL_42;
      }

      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);
    v233 = v242;
LABEL_41:
    sub_1D5D2CFE8(v233, sub_1D66B2474);
LABEL_42:

    return;
  }

  sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v242, sub_1D66B2474);
}

uint64_t sub_1D657417C(char a1)
{
  result = 0x556F656469563178;
  switch(a1)
  {
    case 1:
      result = 0x556F656469563278;
      break;
    case 2:
      result = 0x556F656469563378;
      break;
    case 4:
      result = 0x556F656469563278;
      break;
    case 5:
      result = 0x556F656469563378;
      break;
    case 7:
      result = 0x556F656469563278;
      break;
    case 8:
      result = 0x556F656469563378;
      break;
    case 10:
      result = 0x556F656469563278;
      break;
    case 11:
      result = 0x556F656469563378;
      break;
    case 13:
      result = 0x556F656469563278;
      break;
    case 14:
      result = 0x556F656469563378;
      break;
    case 15:
      result = 0x556567616D493178;
      break;
    case 16:
      result = 0x556567616D493278;
      break;
    case 17:
      result = 0x556567616D493378;
      break;
    case 18:
      result = 0x556567616D493178;
      break;
    case 19:
      result = 0x556567616D493278;
      break;
    case 20:
      result = 0x556567616D493378;
      break;
    case 21:
      result = 0x556567616D493178;
      break;
    case 22:
      result = 0x556567616D493278;
      break;
    case 23:
      result = 0x556567616D493378;
      break;
    case 24:
      result = 0x556567616D493178;
      break;
    case 25:
      result = 0x556567616D493278;
      break;
    case 26:
      result = 0x556567616D493378;
      break;
    case 27:
      result = 0x556567616D493178;
      break;
    case 28:
      result = 0x556567616D493278;
      break;
    case 29:
      result = 0x556567616D493378;
      break;
    case 30:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65743B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B38C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65743F4(uint64_t a1)
{
  v2 = sub_1D66B23CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6574430(uint64_t a1)
{
  v2 = sub_1D66B23CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRepeatNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v212 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v216 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v217 = &v212 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v218 = &v212 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v219 = &v212 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v220 = &v212 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v225 = &v212 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v212 - v29;
  sub_1D66B4104(0);
  v231 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5CD3148(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF256A8, sub_1D5CD3148, &unk_1D7321584);
  v232 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.JazzkonG, v36, v34, v39, &off_1F51F6BF8);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v228 = v2;
  v43 = qword_1EDF31EA8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD18);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v227 = v44;
  v47(v30, v45, v44);
  v226 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v222 = v45;
  v224 = v47;
  v223 = v48;
  if (v50 == 1)
  {
    v215 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v52 = v231;
    v51 = v232;
    v53 = &v232[*(v231 + 11)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v235) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v235;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D66B4198(0);
    v58 = v57;
    sub_1D5B58B84(&qword_1EDF03728, sub_1D66B4198, MEMORY[0x1E69E6F60]);

    v221 = v58;
    v59 = sub_1D72647CC();
    LOBYTE(v235) = 0;
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 16) = v59;
    *(v60 + 40) = v235;
    v61 = (v51 + *(v52 + 9));
    v62 = v61[3];
    v63 = v61[4];
    v64 = __swift_project_boxed_opaque_existential_1(v61, v62);
    *&v230 = &v212;
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v212 - 4) = sub_1D5B4AA6C;
    *(&v212 - 3) = 0;
    v210 = sub_1D66B422C;
    v211 = v56;
    v68 = v229;
    v70 = sub_1D5D2F7A4(v30, sub_1D615B49C, v69, sub_1D615B4A4, (&v212 - 6), v62, v63);
    if (v68)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v71 = v51;
      return sub_1D5D2CFE8(v71, sub_1D66B4104);
    }

    v97 = v70;

    if (v97)
    {
      v235 = 0uLL;
      v236 = 0;
      *&v233 = v215;
      *(&v233 + 1) = v42;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v45 = v222;
      v47 = v224;
      v229 = 0;
    }

    else
    {
      v229 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v45 = v222;
      v47 = v224;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v52 = v231;
  }

  v72 = v228[4];
  v73 = *(v228 + 40);
  v74 = v225;
  v47(v225, v45, v227);
  swift_storeEnumTagMultiPayload();
  *&v233 = v72;
  BYTE8(v233) = v73;
  v230 = xmmword_1D728CF30;
  v235 = xmmword_1D728CF30;
  v236 = 0;
  v75 = v232;
  v76 = &v232[*(v52 + 11)];
  v78 = *v76;
  v77 = *(v76 + 1);
  LOBYTE(v237) = 0;
  v79 = swift_allocObject();
  v221 = &v212;
  *(v79 + 16) = v230;
  *(v79 + 32) = v237;
  *(v79 + 40) = v78;
  *(v79 + 48) = v77;
  MEMORY[0x1EEE9AC00](v79, v80);
  *(&v212 - 4) = sub_1D5B4AA6C;
  *(&v212 - 3) = 0;
  v210 = sub_1D6708B54;
  v211 = v81;
  LOBYTE(v237) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v230;
  *(v82 + 32) = v237;
  v213 = v78;
  *(v82 + 40) = v78;
  *(v82 + 48) = v77;
  sub_1D66B4198(0);
  v84 = v83;
  v85 = sub_1D5B58B84(&qword_1EDF03728, sub_1D66B4198, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v214 = v84;
  v215 = v85;
  v86 = sub_1D72647CC();
  LOBYTE(v237) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v230;
  *(v87 + 40) = v237;
  v88 = (v75 + *(v231 + 9));
  v89 = v88[3];
  v90 = v88[4];
  v91 = __swift_project_boxed_opaque_existential_1(v88, v89);
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v212 - 4) = sub_1D615B4A4;
  *(&v212 - 3) = (&v212 - 6);
  v210 = sub_1D6708B54;
  v211 = v82;
  v95 = v229;
  sub_1D5D2BC70(v74, sub_1D615B49C, v96, sub_1D615B4A4, (&v212 - 6), v89, v90);
  if (v95)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

LABEL_23:
    v71 = v232;
    return sub_1D5D2CFE8(v71, sub_1D66B4104);
  }

  v231 = v88;
  v212 = v77;

  sub_1D66B42BC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

  v98 = v228[6];
  v99 = v220;
  v100 = v222;
  v101 = v224;
  v224(v220, v222, v227);
  swift_storeEnumTagMultiPayload();
  v230 = xmmword_1D7297410;
  v235 = xmmword_1D7297410;
  v236 = 0;
  LOBYTE(v233) = 0;
  v102 = swift_allocObject();
  v104 = v102;
  *(v102 + 16) = v230;
  *(v102 + 32) = v233;
  v105 = v212;
  *(v102 + 40) = v213;
  *(v102 + 48) = v105;
  if (v98)
  {
    v229 = &v212;
    *&v233 = v98;
    MEMORY[0x1EEE9AC00](v102, v103);
    v107 = v106;
    *(&v212 - 4) = sub_1D5B4AA6C;
    *(&v212 - 3) = 0;
    v210 = sub_1D6708B54;
    v211 = v104;
    LOBYTE(v237) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v230;
    *(v108 + 32) = v237;
    *(v108 + 40) = v107;
    *(v108 + 48) = v105;
    swift_retain_n();

    v109 = sub_1D72647CC();
    LOBYTE(v237) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v230;
    *(v110 + 40) = v237;
    v111 = v231[3];
    v112 = v231[4];
    v113 = __swift_project_boxed_opaque_existential_1(v231, v111);
    MEMORY[0x1EEE9AC00](v113, v114);
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v212 - 4) = sub_1D615B4A4;
    *(&v212 - 3) = (&v212 - 6);
    v210 = sub_1D6708B54;
    v211 = v108;
    v118 = sub_1D5D2F7A4(v99, sub_1D615B49C, v117, sub_1D615B4A4, (&v212 - 6), v111, v112);
    v119 = v118;

    if (v119)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v100 = v222;
      v101 = v224;
      v229 = 0;

      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v229 = 0;

      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
      v100 = v222;
      v101 = v224;
    }
  }

  else
  {
    v229 = 0;

    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
  }

  v120 = v231;
  v121 = v228[7];
  v122 = v219;
  v101(v219, v100, v227);
  swift_storeEnumTagMultiPayload();
  v230 = xmmword_1D72BAA60;
  v235 = xmmword_1D72BAA60;
  v236 = 0;
  LOBYTE(v233) = 0;
  v123 = swift_allocObject();
  v125 = v123;
  *(v123 + 16) = v230;
  *(v123 + 32) = v233;
  v126 = v212;
  *(v123 + 40) = v213;
  *(v123 + 48) = v126;
  if (v121)
  {
    v225 = &v212;
    *&v233 = v121;
    MEMORY[0x1EEE9AC00](v123, v124);
    v128 = v127;
    *(&v212 - 4) = sub_1D5B4AA6C;
    *(&v212 - 3) = 0;
    v210 = sub_1D6708B54;
    v211 = v125;
    LOBYTE(v237) = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = v230;
    *(v129 + 32) = v237;
    *(v129 + 40) = v128;
    *(v129 + 48) = v212;
    swift_retain_n();

    v130 = sub_1D72647CC();
    LOBYTE(v237) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v130;
    *(v131 + 24) = v230;
    *(v131 + 40) = v237;
    v132 = v120[3];
    v133 = v120[4];
    v134 = __swift_project_boxed_opaque_existential_1(v120, v132);
    MEMORY[0x1EEE9AC00](v134, v135);
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v212 - 4) = sub_1D615B4A4;
    *(&v212 - 3) = (&v212 - 6);
    v210 = sub_1D6708B54;
    v211 = v129;
    v138 = v229;
    v140 = sub_1D5D2F7A4(v122, sub_1D615B49C, v139, sub_1D615B4A4, (&v212 - 6), v132, v133);
    if (v138)
    {

      v141 = v122;
LABEL_22:
      sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
      goto LABEL_23;
    }

    v143 = v140;

    if (v143)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v100 = v222;
      v101 = v224;
      v229 = 0;

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v229 = 0;

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      v100 = v222;
      v101 = v224;
    }
  }

  else
  {

    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  }

  v144 = v228[8];
  v145 = v218;
  v101(v218, v100, v227);
  swift_storeEnumTagMultiPayload();
  v230 = xmmword_1D72BAA70;
  v235 = xmmword_1D72BAA70;
  v236 = 0;
  LOBYTE(v233) = 0;
  v146 = swift_allocObject();
  v148 = v146;
  *(v146 + 16) = v230;
  *(v146 + 32) = v233;
  v149 = v213;
  v150 = v212;
  *(v146 + 40) = v213;
  *(v146 + 48) = v150;
  if (v144)
  {
    v225 = &v212;
    *&v233 = v144;
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v212 - 4) = sub_1D5B4AA6C;
    *(&v212 - 3) = 0;
    v210 = sub_1D6708B54;
    v211 = v148;
    LOBYTE(v237) = 0;
    v151 = swift_allocObject();
    *(v151 + 16) = v230;
    *(v151 + 32) = v237;
    *(v151 + 40) = v149;
    *(v151 + 48) = v212;
    swift_retain_n();

    v152 = sub_1D72647CC();
    LOBYTE(v237) = 0;
    v153 = swift_allocObject();
    *(v153 + 16) = v152;
    *(v153 + 24) = v230;
    *(v153 + 40) = v237;
    v154 = v231[3];
    v155 = v231[4];
    v156 = __swift_project_boxed_opaque_existential_1(v231, v154);
    MEMORY[0x1EEE9AC00](v156, v157);
    MEMORY[0x1EEE9AC00](v158, v159);
    *(&v212 - 4) = sub_1D615B4A4;
    *(&v212 - 3) = (&v212 - 6);
    v210 = sub_1D6708B54;
    v211 = v151;
    v160 = v229;
    v162 = sub_1D5D2F7A4(v145, sub_1D615B49C, v161, sub_1D615B4A4, (&v212 - 6), v154, v155);
    if (v160)
    {

      v141 = v145;
      goto LABEL_22;
    }

    v164 = v162;

    if (v164)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v100 = v222;
      v101 = v224;
      v229 = 0;

      sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v229 = 0;

      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
      v100 = v222;
      v101 = v224;
    }

    v163 = v212;
  }

  else
  {
    v163 = v212;

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
  }

  v165 = v228[9];
  v166 = v228[10];
  v167 = v217;
  v101(v217, v100, v227);
  swift_storeEnumTagMultiPayload();
  v230 = xmmword_1D72BAA80;
  v235 = xmmword_1D72BAA80;
  v236 = 0;
  LOBYTE(v233) = 0;
  v168 = swift_allocObject();
  v170 = v168;
  v171 = v166;
  *(v168 + 16) = v230;
  *(v168 + 32) = v233;
  v172 = v213;
  *(v168 + 40) = v213;
  *(v168 + 48) = v163;
  if (!v171)
  {
    v187 = v100;

    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

    v176 = v231;
    goto LABEL_48;
  }

  v225 = &v212;
  *&v233 = v165;
  *(&v233 + 1) = v171;
  MEMORY[0x1EEE9AC00](v168, v169);
  v221 = &v212 - 6;
  *(&v212 - 4) = sub_1D5B4AA6C;
  *(&v212 - 3) = 0;
  v210 = sub_1D6708B54;
  v211 = v170;
  LOBYTE(v237) = 0;
  v173 = swift_allocObject();
  *(v173 + 16) = v230;
  *(v173 + 32) = v237;
  *(v173 + 40) = v172;
  *(v173 + 48) = v163;
  swift_retain_n();

  v174 = sub_1D72647CC();
  LOBYTE(v237) = 0;
  v175 = swift_allocObject();
  *(v175 + 16) = v174;
  *(v175 + 24) = v230;
  *(v175 + 40) = v237;
  v176 = v231;
  v177 = v231[3];
  v178 = v231[4];
  v179 = __swift_project_boxed_opaque_existential_1(v231, v177);
  MEMORY[0x1EEE9AC00](v179, v180);
  MEMORY[0x1EEE9AC00](v181, v182);
  v183 = v221;
  *(&v212 - 4) = sub_1D615B4A4;
  *(&v212 - 3) = v183;
  v210 = sub_1D6708B54;
  v211 = v173;
  v184 = v229;
  v186 = sub_1D5D2F7A4(v167, sub_1D615B49C, v185, sub_1D615B4A4, (&v212 - 6), v177, v178);
  v229 = v184;
  if (!v184)
  {
    v188 = v186;

    if (v188)
    {
      v189 = v229;
      sub_1D72647EC();
      v229 = v189;
      v187 = v222;
      if (v189)
      {

        goto LABEL_40;
      }

      sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
      v187 = v222;
    }

    v163 = v212;
LABEL_48:
    v190 = v228;
    swift_beginAccess();
    v191 = v190[11];
    v192 = v216;
    v224(v216, v187, v227);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v233) = 0;
    v193 = swift_allocObject();
    v230 = xmmword_1D72BAA90;
    *(v193 + 16) = xmmword_1D72BAA90;
    *(v193 + 32) = v233;
    *(v193 + 40) = v213;
    *(v193 + 48) = v163;

    v194 = v232;
    v195 = sub_1D72647CC();
    LOBYTE(v233) = 0;
    v196 = swift_allocObject();
    *(v196 + 16) = v195;
    *(v196 + 24) = v230;
    *(v196 + 40) = v233;
    v197 = v176;
    v198 = v176[3];
    v199 = v176[4];
    v200 = __swift_project_boxed_opaque_existential_1(v197, v198);
    MEMORY[0x1EEE9AC00](v200, v201);
    MEMORY[0x1EEE9AC00](v202, v203);
    *(&v212 - 4) = sub_1D5B4AA6C;
    *(&v212 - 3) = 0;
    v210 = sub_1D6708B54;
    v211 = v193;
    v204 = v229;
    v206 = sub_1D5D2F7A4(v192, sub_1D615B49C, v205, sub_1D615B4A4, (&v212 - 6), v198, v199);
    if (v204)
    {
      sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

      v71 = v194;
      return sub_1D5D2CFE8(v71, sub_1D66B4104);
    }

    v207 = v206;

    if (v207)
    {
      v233 = v230;
      v234 = 0;
      v237 = v191;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v208 = v232;
      sub_1D72647EC();
      v209 = v216;

      sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
      v71 = v208;
      return sub_1D5D2CFE8(v71, sub_1D66B4104);
    }

    sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

    goto LABEL_23;
  }

LABEL_40:
  sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v232, sub_1D66B4104);
}

uint64_t sub_1D6576384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B46C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65763BC(uint64_t a1)
{
  v2 = sub_1D5CD3220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65763F8(uint64_t a1)
{
  v2 = sub_1D5CD3220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRepeatNodeBindIteration.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  sub_1D66B4310(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B43A4(0);
  sub_1D5B58B84(&qword_1EDF0C440, sub_1D66B43A4, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  if (v14)
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
          goto LABEL_9;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6628490(0x73776F726874, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_9:
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (sub_1D726434C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    (*(v11 + 8))(v9, v5);
    v22 = v32;
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v22 = 1;
  }

  *v12 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRepeatNodeBindIteration.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B4524(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66B43A4(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C440, sub_1D66B43A4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRepeatNodeBindIteration, v17, v19, v14, &type metadata for FormatRepeatNodeBindIteration, v17, &type metadata for FormatVersions.StarSkyC, v15, v12, v18, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if ((v13 & 1) == 0)
  {
    v22 = &v12[*(v9 + 44)];
    v24 = *v22;
    v23 = *(v22 + 1);
    LOBYTE(v44) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v44;
    *(v25 + 40) = v24;
    *(v25 + 48) = v23;
    sub_1D66B45B8(0);
    v27 = v26;
    sub_1D5B58B84(&qword_1EDF02DE8, sub_1D66B45B8, MEMORY[0x1E69E6F60]);

    v43 = v27;
    v28 = sub_1D72647CC();
    LOBYTE(v44) = 0;
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 16) = v28;
    *(v29 + 40) = v44;
    v30 = &v12[*(v9 + 36)];
    v31 = *(v30 + 3);
    v32 = *(v30 + 4);
    v33 = __swift_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x1EEE9AC00](v33, v34);
    MEMORY[0x1EEE9AC00](v35, v36);
    *(&v43 - 4) = sub_1D5B4AA6C;
    *(&v43 - 3) = 0;
    v41 = sub_1D66B464C;
    v42 = v25;
    v38 = sub_1D5D2F7A4(v7, sub_1D615B49C, v37, sub_1D615B4A4, (&v43 - 6), v31, v32);
    if (v2)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D66B4524);
    }

    v40 = v38;

    if (v40)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v12, sub_1D66B4524);
}

uint64_t sub_1D6576BE4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x73776F726874;
  }
}

void sub_1D6576C14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73776F726874 && a2 == 0xE600000000000000;
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

uint64_t sub_1D6576CFC(uint64_t a1)
{
  v2 = sub_1D66B447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6576D38(uint64_t a1)
{
  v2 = sub_1D66B447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResetNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v139 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v143 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v146 = &v139 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v147 = &v139 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v139 - v20;
  sub_1D66B516C(0);
  *&v151 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5E1A4C4(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24B88, sub_1D5E1A4C4, &unk_1D7321584);
  v153 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.SydroF, v27, v25, v30, &off_1F51F6C58);
  swift_beginAccess();
  v32 = v2[2];
  v33 = v2[3];
  v150 = v2;
  v34 = qword_1EDF31ED8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD68);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v149 = v37 + 16;
  v38(v21, v36, v35);
  v148 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v39 = sub_1D725895C();
  v40 = (*(*(v39 - 8) + 48))(v8, 1, v39);
  v144 = v36;
  v145 = v38;
  if (v40 == 1)
  {
    v140 = v32;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v41 = v151;
    v42 = v153;
    v43 = &v153[*(v151 + 44)];
    v44 = *v43;
    v45 = *(v43 + 1);
    LOBYTE(v159) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v159;
    *(v46 + 40) = v44;
    *(v46 + 48) = v45;
    sub_1D5E1A488(0);
    v48 = v47;
    v49 = sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488, MEMORY[0x1E69E6F60]);

    v141 = v48;
    v139 = v49;
    v50 = sub_1D72647CC();
    LOBYTE(v159) = 0;
    v51 = swift_allocObject();
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    *(v51 + 16) = v50;
    *(v51 + 40) = v159;
    v52 = (v42 + *(v41 + 36));
    v54 = v52[3];
    v53 = v52[4];
    v55 = __swift_project_boxed_opaque_existential_1(v52, v54);
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D66B5200;
    v138 = v46;
    v59 = v152;
    v61 = sub_1D5D2F7A4(v21, sub_1D615B49C, v60, sub_1D615B4A4, (&v139 - 6), v54, v53);
    if (v59)
    {
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v42, sub_1D66B516C);
    }

    v85 = v61;

    if (v85)
    {
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v157 = v140;
      v158 = v33;
      v63 = v153;
      sub_1D72647EC();

      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
      v64 = v151;
      v38 = v145;
      v152 = 0;
      v36 = v144;
    }

    else
    {
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

      v152 = 0;
      v63 = v153;
      v64 = v151;
      v36 = v144;
      v38 = v145;
    }
  }

  else
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v63 = v153;
    v64 = v151;
  }

  v65 = v150;
  swift_beginAccess();
  v66 = v65[4];
  v67 = v147;
  v38(v147, v36, v35);
  swift_storeEnumTagMultiPayload();
  v68 = *(v66 + 16);
  v142 = v35;
  if (v68)
  {
    v69 = (v63 + *(v64 + 44));
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v157) = 0;
    v72 = swift_allocObject();
    v151 = xmmword_1D728CF30;
    *(v72 + 16) = xmmword_1D728CF30;
    *(v72 + 32) = v157;
    *(v72 + 40) = v70;
    *(v72 + 48) = v71;
    sub_1D5E1A488(0);
    sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488, MEMORY[0x1E69E6F60]);

    v73 = sub_1D72647CC();
    LOBYTE(v157) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v151;
    *(v74 + 40) = v157;
    v75 = (v63 + *(v64 + 36));
    v76 = v75[3];
    v77 = v75[4];
    v78 = __swift_project_boxed_opaque_existential_1(v75, v76);
    MEMORY[0x1EEE9AC00](v78, v79);
    MEMORY[0x1EEE9AC00](v80, v81);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708B58;
    v138 = v72;
    v82 = v152;
    v84 = sub_1D5D2F7A4(v67, sub_1D615B49C, v83, sub_1D615B4A4, (&v139 - 6), v76, v77);
    if (v82)
    {

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v153, sub_1D66B516C);
    }

    v86 = v84;

    if (v86)
    {
      sub_1D5E08A0C(v66, v153, 1, 0, 0);
      v35 = v142;
      v38 = v145;
      v67 = v147;
      v152 = 0;
    }

    else
    {
      v152 = 0;
      v35 = v142;
      v38 = v145;
      v67 = v147;
    }

    v36 = v144;
  }

  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
  v87 = v150;
  swift_beginAccess();
  v88 = v87[5];
  v89 = v146;
  v38(v146, v36, v35);
  swift_storeEnumTagMultiPayload();
  if (*(v88 + 16))
  {
    v90 = v64;
    v91 = *(v64 + 44);
    v92 = v153;
    v93 = &v153[v91];
    v95 = *v93;
    v94 = *(v93 + 1);
    v156[0] = 0;
    v96 = swift_allocObject();
    v151 = xmmword_1D7297410;
    *(v96 + 16) = xmmword_1D7297410;
    *(v96 + 32) = v156[0];
    *(v96 + 40) = v95;
    *(v96 + 48) = v94;
    sub_1D5E1A488(0);
    sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488, MEMORY[0x1E69E6F60]);

    v97 = sub_1D72647CC();
    v156[0] = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *(v98 + 24) = v151;
    *(v98 + 40) = v156[0];
    v99 = (v92 + *(v90 + 36));
    v100 = v99[3];
    v101 = v99[4];
    v102 = __swift_project_boxed_opaque_existential_1(v99, v100);
    *&v151 = &v139;
    MEMORY[0x1EEE9AC00](v102, v103);
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708B58;
    v138 = v96;
    v106 = v152;
    v108 = sub_1D5D2F7A4(v89, sub_1D615B49C, v107, sub_1D615B4A4, (&v139 - 6), v100, v101);
    if (v106)
    {

      sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v92, sub_1D66B516C);
    }

    v112 = v108;
    v111 = v90;

    if (v112)
    {
      sub_1D5E08864(v88, v92, 2, 0, 0);
    }

    v35 = v142;
    v38 = v145;
    v152 = 0;

    v109 = v143;
    v110 = v146;
    v36 = v144;
  }

  else
  {
    v109 = v143;
    v110 = v89;
    v111 = v64;
  }

  sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
  v113 = v150;
  swift_beginAccess();
  v114 = v113[6];
  v38(v109, v36, v35);
  swift_storeEnumTagMultiPayload();
  v115 = v153;
  v116 = &v153[*(v111 + 44)];
  v118 = *v116;
  v117 = *(v116 + 1);
  LOBYTE(v154) = 0;
  v119 = swift_allocObject();
  v151 = xmmword_1D72BAA60;
  *(v119 + 16) = xmmword_1D72BAA60;
  *(v119 + 32) = v154;
  *(v119 + 40) = v118;
  *(v119 + 48) = v117;
  sub_1D5E1A488(0);
  sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488, MEMORY[0x1E69E6F60]);
  v150 = v114;

  v120 = sub_1D72647CC();
  LOBYTE(v154) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v151;
  *(v121 + 40) = v154;
  v122 = (v115 + *(v111 + 36));
  v123 = v122[3];
  v124 = v122[4];
  v125 = __swift_project_boxed_opaque_existential_1(v122, v123);
  MEMORY[0x1EEE9AC00](v125, v126);
  MEMORY[0x1EEE9AC00](v127, v128);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D6708B58;
  v138 = v119;
  v129 = v152;
  v131 = sub_1D5D2F7A4(v109, sub_1D615B49C, v130, sub_1D615B4A4, (&v139 - 6), v123, v124);
  if (v129)
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    v132 = v115;
  }

  else
  {
    v133 = v131;
    v134 = v150;

    if (v133)
    {
      v154 = v151;
      v155 = 0;
      v162 = v134;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v135 = v153;
      sub_1D72647EC();
      v136 = v143;

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v135, sub_1D66B516C);
    }

    sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);

    v132 = v153;
  }

  return sub_1D5D2CFE8(v132, sub_1D66B516C);
}

uint64_t sub_1D6577F18()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C65537865676572;
  v4 = 0x6E6572646C696863;
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
    v2 = 0x726F7463656C6573;
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

uint64_t sub_1D6577FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B52D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6577FF8(uint64_t a1)
{
  v2 = sub_1D5E1A59C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6578034(uint64_t a1)
{
  v2 = sub_1D5E1A59C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResize.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v26;
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
          *(v21 + 16) = &unk_1F5116F50;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B527C();
    v27 = 0uLL;
    sub_1D726431C();
    type metadata accessor for FormatResizeAuto();
    v27 = xmmword_1D7279980;
    sub_1D5B58B84(&qword_1EDF2FFE0, type metadata accessor for FormatResizeAuto, &protocol conformance descriptor for FormatResizeAuto);
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v28;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *v14 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatResize, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatResize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v13, v10, v14, &off_1F51F6C58);
  v16 = *(v11 + 16);
  v17 = qword_1EDF31ED8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD68);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BBB18(v16, v6);

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatResizeAuto.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B58B0(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5E1A2B4(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25698, sub_1D5E1A2B4, &unk_1D7321584);
  sub_1D5D2EE70(v4, v17, v19, v14, v4, v17, &type metadata for FormatVersions.SydroF, v15, v13, v18, &off_1F51F6C58);
  swift_beginAccess();
  v20 = v2[2];
  v21 = qword_1EDF31ED8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
  (*(*(v22 - 8) + 16))(v8, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v20 + 16))
  {
    goto LABEL_9;
  }

  v24 = &v13[*(v10 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  sub_1D5E1A278(0);
  sub_1D5B58B84(&qword_1EDF03718, sub_1D5E1A278, MEMORY[0x1E69E6F60]);

  v28 = sub_1D72647CC();
  v45 = 0;
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = v28;
  *(v29 + 40) = v45;
  v30 = &v13[*(v10 + 36)];
  v31 = *(v30 + 3);
  v32 = *(v30 + 4);
  v33 = __swift_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v44 - 4) = sub_1D5B4AA6C;
  *(&v44 - 3) = 0;
  v42 = sub_1D66B5944;
  v43 = v27;
  v37 = v44;
  v39 = sub_1D5D2F7A4(v8, sub_1D615B49C, v38, sub_1D615B4A4, (&v44 - 6), v31, v32);
  if (!v37)
  {
    v40 = v39;

    if (v40)
    {
      sub_1D5E080FC(v20, v13, 0, 0, 0);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_10:
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D66B58B0);
}

uint64_t sub_1D6578B70()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 1802723693;
  }
}

void sub_1D6578B94(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D6578C80(uint64_t a1)
{
  v2 = sub_1D5E1A38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6578CBC(uint64_t a1)
{
  v2 = sub_1D5E1A38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResizeConstraint.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D66B59C0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v73 = *(v1 + 2);
  v74 = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C9F9A8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25218, sub_1D5C9F9A8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatResizeConstraint, v20, v22, v17, &type metadata for FormatResizeConstraint, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v76 = v24;
  v77 = v23;
  v70[2] = (v25 + 16);
  v71 = v26;
  (v26)(v9);
  v70[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v83) = v15;
  v85 = 0uLL;
  v86 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v87 = 0;
  v30 = swift_allocObject();
  v80 = v70;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v87;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v82 = v9;
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D6708B5C;
  v69 = v32;
  v87 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v87;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66B5A54(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF031D8, sub_1D66B5A54, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v36;
  v79 = v35;
  v37 = sub_1D72647CC();
  v87 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v87;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v70[-4] = sub_1D615B4A4;
  v70[-3] = &v70[-6];
  v46 = v81;
  v47 = v82;
  v68 = sub_1D66B5AE8;
  v69 = v33;
  sub_1D5D2BC70(v82, sub_1D615B49C, v48, sub_1D615B4A4, &v70[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70[0] = v39;
    v50 = v76;
    v49 = v77;
    v81 = v29;

    sub_1D66B5B64();
    sub_1D72647EC();
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

    v52 = v75;
    v71(v75, v50, v49);
    swift_storeEnumTagMultiPayload();
    v83 = v74;
    v84 = v73;
    v82 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v87 = 0;
    v53 = swift_allocObject();
    v80 = v70;
    *(v53 + 16) = v82;
    *(v53 + 32) = v87;
    v54 = v72;
    v55 = v81;
    *(v53 + 40) = v72;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    v70[-4] = sub_1D5B4AA6C;
    v70[-3] = 0;
    v68 = sub_1D6708B5C;
    v69 = v57;
    v87 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v82;
    *(v58 + 32) = v87;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v87 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v82;
    *(v60 + 40) = v87;
    v61 = v70[0][3];
    v62 = v70[0][4];
    v63 = __swift_project_boxed_opaque_existential_1(v70[0], v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    v70[-4] = sub_1D615B4A4;
    v70[-3] = &v70[-6];
    v68 = sub_1D6708B5C;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, &v70[-6], v61, v62);

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B59C0);
}

uint64_t sub_1D6579560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B7D34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6579598(uint64_t a1)
{
  v2 = sub_1D5C9FA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65795D4(uint64_t a1)
{
  v2 = sub_1D5C9FA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResizeConstraint.Dimension.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
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

uint64_t FormatResizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v24;
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
          *(v21 + 16) = &unk_1F5116FA0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5BB8();
    v25 = 0uLL;
    sub_1D726431C();
    type metadata accessor for FormatResizeAuto();
    v25 = xmmword_1D7279980;
    sub_1D5B58B84(&qword_1EDF2FFE0, type metadata accessor for FormatResizeAuto, &protocol conformance descriptor for FormatResizeAuto);
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatResizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatResizing, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatResizing, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v13, v10, v14, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCD68);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BAC30(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D6579FC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65726F4D656573;
  if (v2 != 1)
  {
    v4 = 0x6961746544656573;
    v3 = 0xEA0000000000736CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6564695679616C70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE90000000000006FLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65726F4D656573;
  if (*a2 != 1)
  {
    v8 = 0x6961746544656573;
    v7 = 0xEA0000000000736CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6564695679616C70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE90000000000006FLL;
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

uint64_t sub_1D657A0D0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D657A17C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D657A214(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D657A2BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006FLL;
  v4 = 0xE700000000000000;
  v5 = 0x65726F4D656573;
  if (v2 != 1)
  {
    v5 = 0x6961746544656573;
    v4 = 0xEA0000000000736CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6564695679616C70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatRunMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - v8;
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
          *(v22 + 16) = &unk_1F5116FF0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5C0C();
    v30 = 0uLL;
    sub_1D726431C();
    if (v31[0] <= 1u)
    {
      if (v31[0])
      {
        (*(v11 + 8))(v15, v5);
        v26 = 2;
        v25 = 1;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 2;
      }
    }

    else if (v31[0] == 2)
    {
      v30 = xmmword_1D7279980;
      sub_1D66B5C60();
      sub_1D726427C();
      if (v32 == 1)
      {
        v27 = &dword_1EC8924C0;
        swift_beginAccess();
      }

      else
      {
        v27 = v31;
      }

      v25 = *v27;
      (*(v11 + 8))(v15, v5);
      v26 = 0;
    }

    else if (v31[0] == 3)
    {
      v30 = xmmword_1D7279980;
      sub_1D66B5C60();
      sub_1D726427C();
      if (v32 == 1)
      {
        v24 = &dword_1EC8924C0;
        swift_beginAccess();
      }

      else
      {
        v24 = v31;
      }

      v25 = *v24;
      (*(v11 + 8))(v15, v5);
      v26 = 1;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 2;
      v26 = 2;
    }

    *v12 = v25;
    *(v12 + 4) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRunMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v1;
  v26 = *(v1 + 4);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v50 = v24;
  sub_1D5D2EE70(&type metadata for FormatRunMode, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatRunMode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v28, v24, v29, &off_1F51F6AD8);
  if (v26)
  {
    if (v26 == 1)
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDC8);
      (*(*(v31 - 8) + 16))(v9, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v25;
      v34 = v50;
      sub_1D63BB2E4(3, v9, v33);
      v35 = v9;
    }

    else if (v25 == 0.0)
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCDC8);
      (*(*(v43 - 8) + 16))(v20, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      sub_1D64243A8(0, v20);
      v35 = v20;
    }

    else
    {
      if (LODWORD(v25) == 1)
      {
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCDC8);
        v41 = v48;
        (*(*(v39 - 8) + 16))(v48, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v42 = 1;
      }

      else
      {
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCDC8);
        v41 = v49;
        (*(*(v45 - 8) + 16))(v49, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v42 = 4;
      }

      v34 = v50;
      sub_1D64243A8(v42, v41);
      v35 = v41;
    }
  }

  else
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCDC8);
    (*(*(v36 - 8) + 16))(v13, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v25;
    v34 = v50;
    sub_1D63BB2E4(2, v13, v38);
    v35 = v13;
  }

  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v34, sub_1D5D30DC4);
}

uint64_t sub_1D657ADD4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D657AEC4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D657AFA0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D657B08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D666370C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D657B0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701015151;
  v5 = 0xEC0000006E656572;
  v6 = 0x63536E4F65636E6FLL;
  v7 = 0x80000001D73B8F80;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0x737961776C61;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5272655065636E6FLL;
    v3 = 0xEE00687365726665;
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

uint64_t FormatScoreMatchupFormat.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
          *(v20 + 16) = &unk_1F5117040;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5CB4();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D66B5D08();
      sub_1D726427C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      if (v27 == 4)
      {
        v23 = -127;
      }

      else
      {
        v23 = v27 | 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66B5D08();
      sub_1D726427C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
      if (v27 == 4)
      {
        v23 = 1;
      }
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatScoreMatchupFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScoreMatchupFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatScoreMatchupFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v17, v14, v18, &off_1F51F6C38);
  if (v15 < 0)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDE0);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C66AC(1, v15 & 0x7F, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C66AC(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D657B8AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 29793;
  }

  else
  {
    v2 = 29558;
  }

  if (*a2)
  {
    v3 = 29793;
  }

  else
  {
    v3 = 29558;
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

uint64_t sub_1D657B91C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D657B97C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D657B9C0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D657BA28(uint64_t *a1@<X8>)
{
  v2 = 29558;
  if (*v1)
  {
    v2 = 29793;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t FormatScoreMatchupFormatName.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScoreMatchupFormatName, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatScoreMatchupFormatName, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v25, v22, v26, &off_1F51F6C38);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424B90(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCDE0);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424B90(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCDE0);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424B90(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCDE0);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424B90(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D657C008()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D657C0D8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D657C194(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D657C260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663544(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D657C290(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E7972616D697270;
  v4 = 0x656D614E6C6C7566;
  if (*v1 != 2)
  {
    v4 = 0x656D616E6B63696ELL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73B7EE0;
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
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FormatScrollingTrait.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScrollingTrait, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatScrollingTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v25, v22, v26, &off_1F51F6B38);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE68);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641FC70(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641FC70(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641FC70(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE68);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641FC70(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D657C8DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D657C9B0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D657CA70(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D657CB40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663E78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D657CB70(uint64_t *a1@<X8>)
{
  v2 = 0x654C6F5465676170;
  v3 = 0x654C6F5470616E73;
  v4 = 0xE800000000000000;
  if (*v1 == 2)
  {
    v4 = 0xED0000676E696461;
  }

  else
  {
    v3 = 0x797469636F6C6576;
  }

  v5 = 0xEC0000007265746ELL;
  if (*v1)
  {
    v2 = 0x65436F5465676170;
  }

  else
  {
    v5 = 0xED0000676E696461;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

void sub_1D657CCB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
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

uint64_t sub_1D657CD9C(uint64_t a1)
{
  v2 = sub_1D5C5FB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657CDD8(uint64_t a1)
{
  v2 = sub_1D5C5FB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D657CE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D657CF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D657CE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D657CF60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_250);
  *a2 = result;
  return result;
}

uint64_t sub_1D657CFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D657CFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D657D04C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
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

uint64_t sub_1D657D160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D657D04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D657D190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_249);
  *a2 = result;
  return result;
}

uint64_t sub_1D657D1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D657D228(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D657D27C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

void sub_1D657D2B4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073;
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

uint64_t sub_1D657D3A8(uint64_t a1)
{
  v2 = sub_1D665A9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657D3E4(uint64_t a1)
{
  v2 = sub_1D665A9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShadow.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v164 = &v157 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v168 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v157 - v21;
  sub_1D66B5E04(0);
  *&v170 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v167 = *(v1 + 32);
  v160 = *(v1 + 56);
  v158 = *(v1 + 40);
  v159 = *(v1 + 72);
  v179 = *(v1 + 80);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D5CD6874(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF24C88, sub_1D5CD6874, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatShadow, v34, v36, v31, &type metadata for FormatShadow, v34, &type metadata for FormatVersions.JazzkonC, v32, v26, v35, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
  v39 = *(v37 - 8);
  v40 = *(v39 + 16);
  v41 = v39 + 16;
  v169 = v38;
  v40(v22);
  *&v171 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v162 = v8;
  v163 = v37;
  v166 = v40;
  v165 = v41;
  if (v27 == 0.0)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
    v42 = v170;
  }

  else
  {
    *&v157 = v18;
    v45 = v170;
    v46 = &v26[*(v170 + 44)];
    v47 = *v46;
    v48 = *(v46 + 1);
    LOBYTE(v172) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = v172;
    *(v49 + 40) = v47;
    *(v49 + 48) = v48;
    sub_1D66B5E98(0);
    v51 = v50;
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98, MEMORY[0x1E69E6F60]);

    *&v161 = v51;
    v52 = sub_1D72647CC();
    LOBYTE(v172) = 0;
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v52;
    *(v53 + 40) = v172;
    v54 = &v26[*(v45 + 36)];
    v55 = *(v54 + 3);
    v56 = *(v54 + 4);
    v57 = __swift_project_boxed_opaque_existential_1(v54, v55);
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v157 - 4) = sub_1D5B4AA6C;
    *(&v157 - 3) = 0;
    v155 = sub_1D66B5F2C;
    v156 = v49;
    v62 = sub_1D5D2F7A4(v22, sub_1D615B49C, v61, sub_1D615B4A4, (&v157 - 3), v55, v56);
    v3 = v2;
    if (v2)
    {
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
      goto LABEL_18;
    }

    v99 = v62;

    if (v99)
    {
      v172 = 0uLL;
      LOBYTE(v173) = 0;
      *&v176 = v27;
      sub_1D5B578C4();
      sub_1D72647EC();
      v42 = v170;
      v37 = v163;
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
      v42 = v170;
      v37 = v163;
    }

    v40 = v166;
    v18 = v157;
  }

  v43 = v169;
  (v40)(v18, v169, v37);
  swift_storeEnumTagMultiPayload();
  if (v28 == 0.0)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v63 = &v26[*(v42 + 44)];
    v64 = *v63;
    v65 = *(v63 + 1);
    LOBYTE(v172) = 0;
    v66 = v26;
    v67 = swift_allocObject();
    v161 = xmmword_1D728CF30;
    *(v67 + 16) = xmmword_1D728CF30;
    *(v67 + 32) = v172;
    *(v67 + 40) = v64;
    *(v67 + 48) = v65;
    sub_1D66B5E98(0);
    v69 = v68;
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98, MEMORY[0x1E69E6F60]);

    *&v157 = v69;
    v70 = sub_1D72647CC();
    LOBYTE(v172) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v161;
    *(v71 + 40) = v172;
    v72 = &v66[*(v42 + 36)];
    v73 = v3;
    v74 = *(v72 + 3);
    v75 = *(v72 + 4);
    v76 = __swift_project_boxed_opaque_existential_1(v72, v74);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v157 - 4) = sub_1D5B4AA6C;
    *(&v157 - 3) = 0;
    v155 = sub_1D6708B60;
    v156 = v67;
    v81 = sub_1D5D2F7A4(v18, sub_1D615B49C, v80, sub_1D615B4A4, (&v157 - 3), v74, v75);
    v3 = v73;
    if (v73)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      v82 = v66;
      return sub_1D5D2CFE8(v82, sub_1D66B5E04);
    }

    v100 = v81;

    if (v100)
    {
      v172 = v161;
      LOBYTE(v173) = 0;
      *&v176 = v28;
      v26 = v66;
      sub_1D72647EC();
      v43 = v169;
      v42 = v170;
      v37 = v163;
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
      v26 = v66;
      v43 = v169;
      v42 = v170;
      v37 = v163;
    }

    v40 = v166;
  }

  v44 = v168;
  (v40)(v168, v43, v37);
  swift_storeEnumTagMultiPayload();
  if (qword_1EDF33738 != -1)
  {
    swift_once();
  }

  *&v161 = v3;
  if (v29 != *&xmmword_1EDF33740 || v30 != *(&xmmword_1EDF33740 + 1))
  {
    v83 = &v26[*(v42 + 44)];
    v84 = *v83;
    v85 = *(v83 + 1);
    LOBYTE(v172) = 0;
    v86 = swift_allocObject();
    v157 = xmmword_1D7297410;
    *(v86 + 16) = xmmword_1D7297410;
    *(v86 + 32) = v172;
    *(v86 + 40) = v84;
    *(v86 + 48) = v85;
    sub_1D66B5E98(0);
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98, MEMORY[0x1E69E6F60]);

    v87 = sub_1D72647CC();
    LOBYTE(v172) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v157;
    *(v88 + 40) = v172;
    v89 = &v26[*(v42 + 36)];
    v90 = *(v89 + 3);
    v91 = *(v89 + 4);
    v92 = __swift_project_boxed_opaque_existential_1(v89, v90);
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    *(&v157 - 4) = sub_1D5B4AA6C;
    *(&v157 - 3) = 0;
    v155 = sub_1D6708B60;
    v156 = v86;
    v96 = v161;
    v98 = sub_1D5D2F7A4(v44, sub_1D615B49C, v97, sub_1D615B4A4, (&v157 - 3), v90, v91);
    if (!v96)
    {
      v101 = v98;

      if (v101)
      {
        v172 = v157;
        LOBYTE(v173) = 0;
        *&v176 = v29;
        *(&v176 + 1) = v30;
        sub_1D66B5FFC();
        sub_1D72647EC();
        v42 = v170;
        v37 = v163;
        *&v161 = 0;
        sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v161 = 0;
        sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
        v42 = v170;
        v37 = v163;
      }

      v40 = v166;
      v43 = v169;
      goto LABEL_31;
    }

    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
LABEL_18:

LABEL_48:
    v82 = v26;
    return sub_1D5D2CFE8(v82, sub_1D66B5E04);
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
LABEL_31:
  v102 = v164;
  (v40)(v164, v43, v37);
  swift_storeEnumTagMultiPayload();
  v103 = swift_allocObject();
  *(v103 + 16) = 2;
  *(v103 + 24) = 0x3FF0000000000000;
  *(v103 + 32) = 0;
  *&v172 = v103 | 0x1000000000000000;
  *&v176 = v167;

  v104 = static FormatColor.== infix(_:_:)(&v172, &v176);

  if (v104)
  {

    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    v105 = v161;
    v106 = v162;
    goto LABEL_33;
  }

  v133 = &v26[*(v42 + 44)];
  v134 = *v133;
  v135 = *(v133 + 1);
  LOBYTE(v172) = 0;
  v136 = swift_allocObject();
  v170 = xmmword_1D72BAA60;
  *(v136 + 16) = xmmword_1D72BAA60;
  *(v136 + 32) = v172;
  *(v136 + 40) = v134;
  *(v136 + 48) = v135;
  sub_1D66B5E98(0);
  v138 = v137;
  sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98, MEMORY[0x1E69E6F60]);

  v168 = v138;
  v139 = sub_1D72647CC();
  LOBYTE(v172) = 0;
  v140 = swift_allocObject();
  *(v140 + 16) = v139;
  *(v140 + 24) = v170;
  *(v140 + 40) = v172;
  v141 = &v26[*(v42 + 36)];
  v142 = v102;
  v143 = *(v141 + 3);
  v144 = *(v141 + 4);
  v145 = __swift_project_boxed_opaque_existential_1(v141, v143);
  MEMORY[0x1EEE9AC00](v145, v146);
  MEMORY[0x1EEE9AC00](v147, v148);
  *(&v157 - 4) = sub_1D5B4AA6C;
  *(&v157 - 3) = 0;
  v155 = sub_1D6708B60;
  v156 = v136;
  v149 = v161;
  v151 = sub_1D5D2F7A4(v142, sub_1D615B49C, v150, sub_1D615B4A4, (&v157 - 3), v143, v144);
  v105 = v149;
  if (!v149)
  {
    v152 = v151;

    if (v152)
    {
      v172 = v170;
      LOBYTE(v173) = 0;
      *&v176 = v167;
      sub_1D5B55CBC();
      sub_1D72647EC();

      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
      v106 = v162;
      v43 = v169;
      v37 = v163;
    }

    else
    {

      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
      v106 = v162;
      v37 = v163;
      v43 = v169;
    }

LABEL_33:
    sub_1D5B58478(0);
    v108 = *(v107 + 48);
    v109 = (v106 + *(v107 + 64));
    v110 = v43;
    v111 = v166;
    (v166)(v106, v110, v37);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v112 = __swift_project_value_buffer(v37, qword_1EDFFCE68);
    v111(v106 + v108, v112, v37);
    *v109 = 0;
    v109[1] = 0;
    swift_storeEnumTagMultiPayload();
    v171 = xmmword_1D72BAA70;
    v176 = xmmword_1D72BAA70;
    v177 = 0;
    v113 = &v26[*(v42 + 44)];
    v114 = *v113;
    v115 = *(v113 + 1);
    LOBYTE(v172) = 0;
    v116 = swift_allocObject();
    v118 = v116;
    *(v116 + 16) = v171;
    *(v116 + 32) = v172;
    *(v116 + 40) = v114;
    *(v116 + 48) = v115;
    if (v179 == 255)
    {
    }

    else
    {
      *&v170 = &v157;
      v172 = v158;
      v173 = v160;
      v174 = v159;
      v175 = v179;
      MEMORY[0x1EEE9AC00](v116, v117);
      *(&v157 - 4) = sub_1D5B4AA6C;
      *(&v157 - 3) = 0;
      v155 = sub_1D6708B60;
      v156 = v118;
      v178 = 0;
      v119 = swift_allocObject();
      *(v119 + 16) = v171;
      *(v119 + 32) = v178;
      *(v119 + 40) = v114;
      *(v119 + 48) = v115;
      sub_1D66B5E98(0);
      sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v120 = sub_1D72647CC();
      v178 = 0;
      v121 = swift_allocObject();
      *(v121 + 16) = v120;
      *(v121 + 24) = v171;
      *(v121 + 40) = v178;
      v122 = *(v42 + 36);
      *&v171 = v26;
      v123 = &v26[v122];
      v124 = v105;
      v125 = *(v123 + 3);
      v126 = *(v123 + 4);
      v127 = __swift_project_boxed_opaque_existential_1(v123, v125);
      MEMORY[0x1EEE9AC00](v127, v128);
      MEMORY[0x1EEE9AC00](v129, v130);
      *(&v157 - 4) = sub_1D615B4A4;
      *(&v157 - 3) = &v157 - 3;
      v106 = v162;
      v155 = sub_1D6708B60;
      v156 = v119;
      v132 = sub_1D5D2F7A4(v162, sub_1D615B49C, v131, sub_1D615B4A4, (&v157 - 3), v125, v126);
      if (v124)
      {
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

        v26 = v171;
        goto LABEL_48;
      }

      v153 = v132;

      if (v153)
      {
        sub_1D66B5FA8();
        v26 = v171;
        sub_1D72647EC();
      }

      else
      {
        v26 = v171;
      }
    }

    sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

    goto LABEL_48;
  }

  sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
  v82 = v26;
  return sub_1D5D2CFE8(v82, sub_1D66B5E04);
}

uint64_t sub_1D657E8FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B7E5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D657E934(uint64_t a1)
{
  v2 = sub_1D5CD6F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657E970(uint64_t a1)
{
  v2 = sub_1D5CD6F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShadow.Offset.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v78 - v10;
  sub_1D66B6050(0);
  *&v85 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v16 = v1[1];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5CD759C(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24C78, sub_1D5CD759C, &unk_1D7321584);
  v86 = v15;
  sub_1D5D2EE70(&type metadata for FormatShadow.Offset, v21, v23, v18, &type metadata for FormatShadow.Offset, v21, &type metadata for FormatVersions.JazzkonC, v19, v15, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v17 == 0.0)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v29 = v85;
    goto LABEL_5;
  }

  v82 = v28;
  v83 = v2;
  v79 = v27;
  v80 = v25;
  v33 = v85;
  v34 = v86;
  v35 = &v86[*(v85 + 44)];
  v37 = *v35;
  v36 = *(v35 + 1);
  LOBYTE(v87) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v87;
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  sub_1D66B60E4(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF02B58, sub_1D66B60E4, MEMORY[0x1E69E6F60]);

  v81 = v40;
  v78[1] = v41;
  v42 = sub_1D72647CC();
  LOBYTE(v87) = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v87;
  v44 = (v34 + *(v33 + 36));
  v45 = v44[3];
  v46 = v44[4];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v78[-4] = sub_1D5B4AA6C;
  v78[-3] = 0;
  v76 = sub_1D66B6178;
  v77 = v38;
  v51 = v83;
  v53 = sub_1D5D2F7A4(v11, sub_1D615B49C, v52, sub_1D615B4A4, &v78[-6], v45, v46);
  v3 = v51;
  if (!v51)
  {
    v74 = v53;

    if (v74)
    {
      v87 = 0uLL;
      v88 = 0;
      v89 = v17;
      sub_1D5B578C4();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v29 = v85;
    v27 = v79;
    v25 = v80;
LABEL_5:
    v30 = v84;
    v27(v84, v25, v24);
    swift_storeEnumTagMultiPayload();
    if (v16 == 0.0)
    {
      v31 = v86;
    }

    else
    {
      v31 = v86;
      v55 = &v86[*(v29 + 44)];
      v57 = *v55;
      v56 = *(v55 + 1);
      LOBYTE(v87) = 0;
      v58 = swift_allocObject();
      v85 = xmmword_1D728CF30;
      *(v58 + 16) = xmmword_1D728CF30;
      *(v58 + 32) = v87;
      *(v58 + 40) = v57;
      *(v58 + 48) = v56;
      sub_1D66B60E4(0);
      v60 = v59;
      sub_1D5B58B84(&qword_1EDF02B58, sub_1D66B60E4, MEMORY[0x1E69E6F60]);

      v83 = v60;
      v61 = sub_1D72647CC();
      LOBYTE(v87) = 0;
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v85;
      *(v62 + 40) = v87;
      v63 = (v31 + *(v29 + 36));
      v64 = v3;
      v65 = v63[3];
      v66 = v63[4];
      v67 = __swift_project_boxed_opaque_existential_1(v63, v65);
      MEMORY[0x1EEE9AC00](v67, v68);
      MEMORY[0x1EEE9AC00](v69, v70);
      v78[-4] = sub_1D5B4AA6C;
      v78[-3] = 0;
      v76 = sub_1D6708A08;
      v77 = v58;
      v72 = sub_1D5D2F7A4(v30, sub_1D615B49C, v71, sub_1D615B4A4, &v78[-6], v65, v66);
      if (v64)
      {
        sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

        goto LABEL_13;
      }

      v75 = v72;

      if (v75)
      {
        v87 = v85;
        v88 = 0;
        v89 = v16;
        sub_1D5B578C4();
        sub_1D72647EC();
        v32 = v84;
        goto LABEL_8;
      }

      v30 = v84;
    }

    v32 = v30;
LABEL_8:
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
LABEL_13:
    v54 = v31;
    return sub_1D5D2CFE8(v54, sub_1D66B6050);
  }

  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

  v54 = v34;
  return sub_1D5D2CFE8(v54, sub_1D66B6050);
}

uint64_t sub_1D657F1F0(uint64_t a1)
{
  v2 = sub_1D5CD7674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657F22C(uint64_t a1)
{
  v2 = sub_1D5CD7674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShareAttributionNode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1D5C8CD38();
  v4 = *(v3 - 8);
  v70 = v3;
  *&v71 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v68 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8, &type metadata for FormatAdjustment);
  v8 = v7;
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v59[-v10];
  sub_1D66B61F4(0);
  v13 = v12;
  v72 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1A0C4(0);
  sub_1D5B58B84(&qword_1EDF24FB8, sub_1D5E1A0C4, &unk_1D7321584);
  v17 = v73;
  sub_1D7264B0C();
  v18 = v17;
  if (v17)
  {
    v19 = a1;
LABEL_15:
    sub_1D61E4FBC(v19, v18);
    swift_willThrow();

    v36 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v20 = v11;
  *&v73 = v8;
  v21 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v16;
  v19 = a1;
  if (v23)
  {
    v25 = sub_1D726433C();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = (v25 + 48);
      while (*v27 != 1)
      {
        v27 += 24;
        if (!--v26)
        {
          goto LABEL_8;
        }
      }

      v31 = *(v27 - 2);
      v30 = *(v27 - 1);

      v32 = sub_1D662291C();
      sub_1D5E2D970();
      v33 = swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v30;
      *(v34 + 16) = v32;
      v18 = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v24, v13);
      goto LABEL_15;
    }

LABEL_8:
  }

  v28 = sub_1D5C31D18(v24, 0, 0, 0, sub_1D66B61F4);
  v66 = v29;
  v77 = xmmword_1D728CF30;
  LOBYTE(v78) = 0;
  sub_1D62E3758();
  sub_1D726431C();
  v65 = xmmword_1D7297410;
  v77 = xmmword_1D7297410;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v65;
    v76 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v35 = v74;
    sub_1D5C82CD8(v74);
    sub_1D5C92A8C(v35);
  }

  else
  {
    v35 = 0xB000000000000008;
  }

  v77 = xmmword_1D72BAA60;
  LOBYTE(v78) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  *&v65 = v75;
  v64 = xmmword_1D72BAA70;
  v77 = xmmword_1D72BAA70;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v64;
    v76 = 0;
    sub_1D5C9EEC4();
    v61 = v20;
    v38 = v73;
    sub_1D726431C();
    v62 = v28;
    *&v64 = v35;
    v39 = v19;
    v40 = v61;
    v63 = sub_1D725A74C();
    (*(v69 + 8))(v40, v38);
  }

  else
  {
    v62 = v28;
    *&v64 = v35;
    v39 = v19;
    v63 = MEMORY[0x1E69E7CC0];
  }

  v73 = xmmword_1D72BAA80;
  v77 = xmmword_1D72BAA80;
  LOBYTE(v78) = 0;
  v41 = sub_1D726434C();
  v42 = v70;
  if (v41)
  {
    v75 = v73;
    v76 = 0;
    sub_1D726431C();
    v43 = v71;
    v69 = v74;
  }

  else
  {
    v69 = 0;
    v43 = v71;
  }

  v73 = xmmword_1D72BAA90;
  v77 = xmmword_1D72BAA90;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v73;
    v76 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v44 = v24;
    v45 = v74;
    sub_1D5EB1500(v74);
    sub_1D5EB15C4(v45);
  }

  else
  {
    v44 = v24;
    v45 = 0x8000000000000000;
  }

  v73 = xmmword_1D72BAAA0;
  v77 = xmmword_1D72BAAA0;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v73;
    v76 = 0;
    sub_1D726431C();
    v46 = v74;
  }

  else
  {
    v46 = 1;
  }

  LODWORD(v73) = v46;
  v77 = xmmword_1D72BAAB0;
  LOBYTE(v78) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v61 = v75;
  v60 = BYTE8(v75);
  v71 = xmmword_1D72BAAC0;
  v77 = xmmword_1D72BAAC0;
  LOBYTE(v78) = 0;
  if (sub_1D726434C())
  {
    v75 = v71;
    v76 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
    sub_1D726431C();
    v47 = v42;
    v48 = v44;
    v49 = v68;
    v50 = sub_1D725A74C();
    v51 = v47;
    v52 = v50;
    (*(v43 + 8))(v49, v51);
  }

  else
  {
    v48 = v44;
    v52 = MEMORY[0x1E69E7CD0];
  }

  v75 = xmmword_1D72BAAD0;
  v76 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v21 + 8))(v48, v13);
  v53 = v78;
  v54 = v52;
  v55 = v67;
  *(v67 + 88) = v77;
  v56 = v66;
  *v55 = v62;
  *(v55 + 8) = v56;
  v57 = v65;
  *(v55 + 16) = v64;
  *(v55 + 24) = v57;
  v58 = v69;
  *(v55 + 32) = v63;
  *(v55 + 40) = v58;
  *(v55 + 48) = v45;
  *(v55 + 56) = v73;
  *(v55 + 57) = v74;
  *(v55 + 60) = *(&v74 + 3);
  *(v55 + 64) = v61;
  *(v55 + 72) = v60;
  *(v55 + 73) = *v80;
  *(v55 + 76) = *&v80[3];
  *(v55 + 80) = v54;
  *(v55 + 104) = v53;
  *(v55 + 120) = v79;
  v36 = v39;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t FormatShareAttributionNode.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v273 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v286 = &v273 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v287 = &v273 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v289 = &v273 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v290 = &v273 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v297 = &v273 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v293 = &v273 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v295 = &v273 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v299 = &v273 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v298 = &v273 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v308 = (&v273 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v273 - v39;
  sub_1D66B6288(0);
  *&v309 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v273 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v1;
  v45 = v1[1];
  v47 = v1[3];
  v300 = v1[2];
  v296 = v47;
  v48 = v1[5];
  v294 = v1[4];
  v292 = v48;
  v291 = v1[6];
  v321 = *(v1 + 56);
  v284 = v1[8];
  v288 = *(v1 + 72);
  v49 = v1[11];
  v285 = v1[10];
  v282 = v49;
  v50 = v1[13];
  v281 = v1[12];
  v280 = v50;
  v51 = v1[15];
  v279 = v1[14];
  v278 = v51;
  v283 = v1[16];
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1D5E1A0C4(0);
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF24FB8, sub_1D5E1A0C4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatShareAttributionNode, v55, v57, v52, &type metadata for FormatShareAttributionNode, v55, &type metadata for FormatVersions.StarSky, v53, v44, v56, &off_1F51F6CD8);
  v58 = qword_1EDF31ED0;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCD50);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v307 = v60;
  v62(v40);
  v64 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v311 = v46;
  sub_1D725892C();
  v65 = sub_1D725895C();
  v66 = (*(*(v65 - 8) + 48))(v6, 1, v65);
  v304 = v59;
  v303 = v62;
  v305 = v63;
  v306 = v64;
  v310 = v44;
  if (v66 == 1)
  {
    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v67 = v309;
    v68 = &v44[*(v309 + 44)];
    v70 = *v68;
    v69 = *(v68 + 1);
    LOBYTE(v313) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    *(v71 + 32) = v313;
    *(v71 + 40) = v70;
    *(v71 + 48) = v69;
    sub_1D5E1A088(0);
    sub_1D5B58B84(&qword_1EDF02F38, sub_1D5E1A088, MEMORY[0x1E69E6F60]);

    v72 = sub_1D72647CC();
    LOBYTE(v313) = 0;
    v73 = swift_allocObject();
    *(v73 + 24) = 0;
    *(v73 + 32) = 0;
    *(v73 + 16) = v72;
    *(v73 + 40) = v313;
    v74 = &v44[*(v67 + 36)];
    v75 = *(v74 + 3);
    v76 = *(v74 + 4);
    v77 = __swift_project_boxed_opaque_existential_1(v74, v75);
    MEMORY[0x1EEE9AC00](v77, v78);
    MEMORY[0x1EEE9AC00](v79, v80);
    *(&v273 - 4) = sub_1D5B4AA6C;
    *(&v273 - 3) = 0;
    v271 = sub_1D66B631C;
    v272 = v71;
    v81 = v312;
    v83 = sub_1D5D2F7A4(v40, sub_1D615B49C, v82, sub_1D615B4A4, (&v273 - 6), v75, v76);
    *&v312 = v81;
    if (v81)
    {
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v310, sub_1D66B6288);
    }

    v110 = v83;
    v44 = v310;

    if (v110)
    {
      v313 = 0uLL;
      LOBYTE(v314) = 0;
      *&v318 = v311;
      *(&v318 + 1) = v45;
      v111 = v312;
      sub_1D72647EC();

      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
      v59 = v304;
      v62 = v303;
      if (v111)
      {
        v109 = v44;
        return sub_1D5D2CFE8(v109, sub_1D66B6288);
      }

      *&v312 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

      v59 = v304;
      v62 = v303;
    }
  }

  else
  {
    sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v85 = v308;
  (v62)(v308, v307, v59);
  swift_storeEnumTagMultiPayload();
  v311 = xmmword_1D728CF30;
  v313 = xmmword_1D728CF30;
  LOBYTE(v314) = 0;
  v86 = v309;
  v87 = &v44[*(v309 + 44)];
  v89 = *v87;
  v88 = *(v87 + 1);
  LOBYTE(v318) = 0;
  v90 = swift_allocObject();
  v302 = &v273;
  *(v90 + 16) = v311;
  *(v90 + 32) = v318;
  *(v90 + 40) = v89;
  *(v90 + 48) = v88;
  MEMORY[0x1EEE9AC00](v90, v91);
  v301 = &v273 - 6;
  *(&v273 - 4) = sub_1D5B4AA6C;
  *(&v273 - 3) = 0;
  v271 = sub_1D6708B64;
  v272 = v92;
  LOBYTE(v318) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v311;
  *(v93 + 32) = v318;
  v275 = v89;
  *(v93 + 40) = v89;
  *(v93 + 48) = v88;
  sub_1D5E1A088(0);
  v95 = v94;
  v96 = sub_1D5B58B84(&qword_1EDF02F38, sub_1D5E1A088, MEMORY[0x1E69E6F60]);
  v274 = v88;
  swift_retain_n();
  v277 = v95;
  v276 = v96;
  v97 = sub_1D72647CC();
  LOBYTE(v318) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v311;
  *(v98 + 40) = v318;
  v99 = &v44[*(v86 + 36)];
  v100 = *(v99 + 3);
  v101 = *(v99 + 4);
  v102 = __swift_project_boxed_opaque_existential_1(v99, v100);
  MEMORY[0x1EEE9AC00](v102, v103);
  MEMORY[0x1EEE9AC00](v104, v105);
  v106 = v301;
  *(&v273 - 4) = sub_1D615B4A4;
  *(&v273 - 3) = v106;
  v271 = sub_1D6708B64;
  v272 = v93;
  v107 = v312;
  sub_1D5D2BC70(v85, sub_1D615B49C, v108, sub_1D615B4A4, (&v273 - 6), v100, v101);
  if (v107)
  {
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

LABEL_10:
    v109 = v310;
    return sub_1D5D2CFE8(v109, sub_1D66B6288);
  }

  *&v311 = v99;

  sub_1D62E37AC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);

  v112 = v298;
  v113 = v307;
  v114 = v304;
  v115 = v303;
  (v303)(v298, v307, v304);
  swift_storeEnumTagMultiPayload();
  v116 = v300;
  if (((v116 >> 59) & 0x1E | (v116 >> 2) & 1) == 0x16 && v300 == 0xB000000000000008)
  {
    sub_1D5C82CD8(0xB000000000000008);
    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);
    v117 = v274;
    v118 = v297;
  }

  else
  {
    LOBYTE(v313) = 0;
    v137 = swift_allocObject();
    v312 = xmmword_1D7297410;
    *(v137 + 16) = xmmword_1D7297410;
    *(v137 + 32) = v313;
    *(v137 + 40) = v275;
    *(v137 + 48) = v274;

    sub_1D5C82CD8(v116);
    v138 = v112;
    v139 = sub_1D72647CC();
    LOBYTE(v313) = 0;
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = v312;
    *(v140 + 40) = v313;
    v141 = *(v311 + 24);
    v142 = *(v311 + 32);
    v143 = __swift_project_boxed_opaque_existential_1(v311, v141);
    MEMORY[0x1EEE9AC00](v143, v144);
    MEMORY[0x1EEE9AC00](v145, v146);
    *(&v273 - 4) = sub_1D5B4AA6C;
    *(&v273 - 3) = 0;
    v271 = sub_1D6708B64;
    v272 = v137;
    v148 = sub_1D5D2F7A4(v138, sub_1D615B49C, v147, sub_1D615B4A4, (&v273 - 6), v141, v142);
    v151 = v148;

    v118 = v297;
    if (v151)
    {
      v313 = v312;
      LOBYTE(v314) = 0;
      *&v318 = v300;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v115 = v303;
      v114 = v304;
      sub_1D5C92A8C(v318);
      sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);
      v113 = v307;
      v117 = v274;
    }

    else
    {
      sub_1D5C92A8C(v300);
      sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);
      v115 = v303;
      v113 = v307;
      v117 = v274;
      v114 = v304;
    }
  }

  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v119 = __swift_project_value_buffer(v114, qword_1EDFFCD68);
  v120 = v299;
  v115(v299, v119, v114);
  swift_storeEnumTagMultiPayload();
  v309 = xmmword_1D72BAA60;
  v313 = xmmword_1D72BAA60;
  LOBYTE(v314) = 0;
  LOBYTE(v318) = 0;
  v121 = swift_allocObject();
  v123 = v121;
  *(v121 + 16) = v309;
  *(v121 + 32) = v318;
  v124 = v275;
  *(v121 + 40) = v275;
  *(v121 + 48) = v117;
  if (!v296)
  {

    v149 = v118;
    v150 = v295;
    goto LABEL_34;
  }

  v308 = &v273;
  *&v318 = v296;
  MEMORY[0x1EEE9AC00](v121, v122);
  *&v312 = 0;
  *(&v273 - 4) = sub_1D5B4AA6C;
  *(&v273 - 3) = 0;
  v271 = sub_1D6708B64;
  v272 = v123;
  v320 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v309;
  *(v125 + 32) = v320;
  *(v125 + 40) = v124;
  *(v125 + 48) = v117;
  swift_retain_n();

  v126 = sub_1D72647CC();
  v320 = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v309;
  *(v127 + 40) = v320;
  v128 = *(v311 + 24);
  v129 = *(v311 + 32);
  v130 = __swift_project_boxed_opaque_existential_1(v311, v128);
  MEMORY[0x1EEE9AC00](v130, v131);
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v273 - 4) = sub_1D615B4A4;
  *(&v273 - 3) = (&v273 - 6);
  v271 = sub_1D6708B64;
  v272 = v125;
  v134 = v312;
  v136 = sub_1D5D2F7A4(v120, sub_1D615B49C, v135, sub_1D615B4A4, (&v273 - 6), v128, v129);
  if (!v134)
  {
    v152 = v136;

    v149 = v297;
    v150 = v295;
    if (v152)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v114 = v304;
      v115 = v303;
      v113 = v307;
    }

    else
    {

      v114 = v304;
      v115 = v303;
      v113 = v307;
    }

    v117 = v274;
LABEL_34:
    sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);
    v115(v150, v113, v114);
    swift_storeEnumTagMultiPayload();
    if (*(v294 + 16))
    {
      LOBYTE(v313) = 0;
      v153 = swift_allocObject();
      v312 = xmmword_1D72BAA70;
      *(v153 + 16) = xmmword_1D72BAA70;
      *(v153 + 32) = v313;
      *(v153 + 40) = v275;
      *(v153 + 48) = v117;

      v154 = v150;
      v155 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v312;
      *(v156 + 40) = v313;
      v157 = *(v311 + 24);
      v158 = *(v311 + 32);
      v159 = __swift_project_boxed_opaque_existential_1(v311, v157);
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v153;
      v164 = sub_1D5D2F7A4(v154, sub_1D615B49C, v163, sub_1D615B4A4, (&v273 - 6), v157, v158);
      v167 = v164;

      if (v167)
      {
        v313 = v312;
        LOBYTE(v314) = 0;
        *&v318 = v294;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v115 = v303;
        v113 = v307;
        v114 = v304;

        sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);
        v117 = v274;
        v166 = v297;
      }

      else
      {
        sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);

        v115 = v303;
        v113 = v307;
        v117 = v274;
        v166 = v297;
        v114 = v304;
      }
    }

    else
    {
      v165 = v150;
      v166 = v149;
      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
    }

    v168 = v293;
    v115(v293, v113, v114);
    swift_storeEnumTagMultiPayload();
    if (v292)
    {
      LOBYTE(v313) = 0;
      v169 = swift_allocObject();
      v312 = xmmword_1D72BAA80;
      *(v169 + 16) = xmmword_1D72BAA80;
      *(v169 + 32) = v313;
      *(v169 + 40) = v275;
      *(v169 + 48) = v117;

      v170 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v170;
      *(v171 + 24) = v312;
      *(v171 + 40) = v313;
      v172 = *(v311 + 24);
      v173 = *(v311 + 32);
      v174 = __swift_project_boxed_opaque_existential_1(v311, v172);
      MEMORY[0x1EEE9AC00](v174, v175);
      MEMORY[0x1EEE9AC00](v176, v177);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v169;
      LOBYTE(v172) = sub_1D5D2F7A4(v168, sub_1D615B49C, v178, sub_1D615B4A4, (&v273 - 6), v172, v173);

      v179 = v297;
      if (v172)
      {
        v313 = v312;
        LOBYTE(v314) = 0;
        *&v318 = v292;
        sub_1D72647EC();
        v115 = v303;
        v114 = v304;
        sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
        v113 = v307;
        v117 = v274;
        v115(v179, v307, v114);
      }

      else
      {
        sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
        v115 = v303;
        v113 = v307;
        v117 = v274;
        v114 = v304;
        (v303)(v179, v307, v304);
      }
    }

    else
    {
      sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
      v179 = v166;
      v115(v166, v113, v114);
    }

    swift_storeEnumTagMultiPayload();
    if (v291 == 0x8000000000000000)
    {
      sub_1D5EB1500(0x8000000000000000);
      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v313) = 0;
      v182 = v291;
      v183 = swift_allocObject();
      v312 = xmmword_1D72BAA90;
      *(v183 + 16) = xmmword_1D72BAA90;
      *(v183 + 32) = v313;
      *(v183 + 40) = v275;
      *(v183 + 48) = v117;

      sub_1D5EB1500(v182);
      v184 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v185 = swift_allocObject();
      *(v185 + 16) = v184;
      *(v185 + 24) = v312;
      *(v185 + 40) = v313;
      v186 = *(v311 + 24);
      v187 = *(v311 + 32);
      v188 = __swift_project_boxed_opaque_existential_1(v311, v186);
      MEMORY[0x1EEE9AC00](v188, v189);
      MEMORY[0x1EEE9AC00](v190, v191);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v183;
      v193 = sub_1D5D2F7A4(v179, sub_1D615B49C, v192, sub_1D615B4A4, (&v273 - 6), v186, v187);
      v205 = v193;

      if (v205)
      {
        v313 = v312;
        LOBYTE(v314) = 0;
        *&v318 = v291;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v115 = v303;
        v206 = v297;
        v114 = v304;
        sub_1D5EB15C4(v318);
        sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
        v113 = v307;
        v117 = v274;
      }

      else
      {
        sub_1D5EB15C4(v291);
        sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
        v115 = v303;
        v113 = v307;
        v117 = v274;
        v114 = v304;
      }
    }

    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v180 = __swift_project_value_buffer(v114, qword_1EDFFCD00);
    v181 = v290;
    v115(v290, v180, v114);
    swift_storeEnumTagMultiPayload();
    if (v321)
    {
      *&v312 = 0;
      sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v313) = 0;
      v194 = swift_allocObject();
      v312 = xmmword_1D72BAAA0;
      *(v194 + 16) = xmmword_1D72BAAA0;
      *(v194 + 32) = v313;
      *(v194 + 40) = v275;
      *(v194 + 48) = v117;

      v195 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v196 = swift_allocObject();
      *(v196 + 16) = v195;
      *(v196 + 24) = v312;
      *(v196 + 40) = v313;
      v197 = *(v311 + 24);
      v198 = *(v311 + 32);
      v199 = __swift_project_boxed_opaque_existential_1(v311, v197);
      MEMORY[0x1EEE9AC00](v199, v200);
      MEMORY[0x1EEE9AC00](v201, v202);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v194;
      v204 = sub_1D5D2F7A4(v181, sub_1D615B49C, v203, sub_1D615B4A4, (&v273 - 6), v197, v198);
      v207 = v204;

      if (v207)
      {
        v313 = v312;
        LOBYTE(v314) = 0;
        LOBYTE(v318) = 0;
        sub_1D72647EC();
        v115 = v303;
        *&v312 = 0;
        sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v312 = 0;
        sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
        v115 = v303;
      }

      v113 = v307;
      v117 = v274;
    }

    v208 = v289;
    v115(v289, v113, v304);
    swift_storeEnumTagMultiPayload();
    v309 = xmmword_1D72BAAB0;
    v313 = xmmword_1D72BAAB0;
    LOBYTE(v314) = 0;
    LOBYTE(v318) = 0;
    v209 = swift_allocObject();
    v211 = v209;
    *(v209 + 16) = v309;
    *(v209 + 32) = v318;
    v212 = v275;
    *(v209 + 40) = v275;
    *(v209 + 48) = v117;
    if (v288 <= 0xFD)
    {
      *&v318 = v284;
      BYTE8(v318) = v288;
      MEMORY[0x1EEE9AC00](v209, v210);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v211;
      v320 = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = v309;
      *(v229 + 32) = v320;
      *(v229 + 40) = v212;
      *(v229 + 48) = v117;
      swift_retain_n();
      v230 = sub_1D72647CC();
      v320 = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = v230;
      *(v231 + 24) = v309;
      *(v231 + 40) = v320;
      v232 = *(v311 + 24);
      v233 = *(v311 + 32);
      v234 = __swift_project_boxed_opaque_existential_1(v311, v232);
      MEMORY[0x1EEE9AC00](v234, v235);
      MEMORY[0x1EEE9AC00](v236, v237);
      *(&v273 - 4) = sub_1D615B4A4;
      *(&v273 - 3) = (&v273 - 6);
      v271 = sub_1D6708B64;
      v272 = v229;
      v238 = v312;
      v240 = sub_1D5D2F7A4(v208, sub_1D615B49C, v239, sub_1D615B4A4, (&v273 - 6), v232, v233);
      if (v238)
      {
        sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

        goto LABEL_10;
      }

      v242 = v240;

      if (v242)
      {
        sub_1D5F8F434();
        sub_1D72647EC();
        v213 = 0;
        v214 = v287;
        v215 = v285;
        v115 = v303;
        v216 = v289;
        v117 = v274;
      }

      else
      {
        v214 = v287;
        v215 = v285;
        v115 = v303;
        v216 = v289;
        v117 = v274;
        v213 = 0;
      }
    }

    else
    {

      v213 = v312;
      v214 = v287;
      v215 = v285;
      v216 = v208;
    }

    sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

    v115(v214, v307, v304);
    swift_storeEnumTagMultiPayload();
    v217 = v275;
    if (*(v215 + 16))
    {
      LOBYTE(v313) = 0;
      v218 = swift_allocObject();
      v312 = xmmword_1D72BAAC0;
      *(v218 + 16) = xmmword_1D72BAAC0;
      *(v218 + 32) = v313;
      *(v218 + 40) = v217;
      *(v218 + 48) = v117;

      v219 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v312;
      *(v220 + 40) = v313;
      v221 = *(v311 + 24);
      v222 = *(v311 + 32);
      v223 = __swift_project_boxed_opaque_existential_1(v311, v221);
      MEMORY[0x1EEE9AC00](v223, v224);
      MEMORY[0x1EEE9AC00](v225, v226);
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v218;
      v228 = sub_1D5D2F7A4(v214, sub_1D615B49C, v227, sub_1D615B4A4, (&v273 - 6), v221, v222);
      if (v213)
      {

        sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
        goto LABEL_10;
      }

      v243 = v228;

      if (v243)
      {
        sub_1D5E06CC8(v215, v310, 9, 0, 0);
      }

      v241 = v286;
      v115 = v303;
    }

    else
    {
      v241 = v286;
    }

    v244 = v282;
    sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v245 = v304;
    v246 = __swift_project_value_buffer(v304, qword_1EDFFCE38);
    v115(v241, v246, v245);
    swift_storeEnumTagMultiPayload();
    v309 = xmmword_1D72BAAD0;
    v318 = xmmword_1D72BAAD0;
    v319 = 0;
    LOBYTE(v313) = 0;
    v247 = swift_allocObject();
    v249 = v247;
    *(v247 + 16) = v309;
    *(v247 + 32) = v313;
    v250 = v274;
    *(v247 + 40) = v275;
    *(v247 + 48) = v250;
    if (v244)
    {
      v308 = &v273;
      v251 = v281;
      *&v313 = v244;
      *(&v313 + 1) = v281;
      *&v312 = v213;
      v252 = v280;
      v253 = v279;
      v314 = v280;
      v315 = v279;
      v254 = v278;
      v316 = v278;
      v317 = v283;
      MEMORY[0x1EEE9AC00](v247, v248);
      v307 = &v273 - 6;
      *(&v273 - 4) = sub_1D5B4AA6C;
      *(&v273 - 3) = 0;
      v271 = sub_1D6708B64;
      v272 = v249;
      v320 = 0;
      v255 = swift_allocObject();
      *(v255 + 16) = v309;
      *(v255 + 32) = v320;
      *(v255 + 40) = v275;
      *(v255 + 48) = v250;
      swift_retain_n();
      sub_1D5EB1D80(v244, v251, v252, v253, v254, v283);
      v256 = v310;
      v257 = sub_1D72647CC();
      v320 = 0;
      v258 = swift_allocObject();
      *(v258 + 16) = v257;
      *(v258 + 24) = v309;
      *(v258 + 40) = v320;
      v259 = *(v311 + 24);
      v260 = *(v311 + 32);
      v261 = __swift_project_boxed_opaque_existential_1(v311, v259);
      MEMORY[0x1EEE9AC00](v261, v262);
      MEMORY[0x1EEE9AC00](v263, v264);
      v265 = v307;
      *(&v273 - 4) = sub_1D615B4A4;
      *(&v273 - 3) = v265;
      v271 = sub_1D6708B64;
      v272 = v255;
      v266 = v312;
      v268 = sub_1D5D2F7A4(v286, sub_1D615B49C, v267, sub_1D615B4A4, (&v273 - 6), v259, v260);
      if (v266)
      {
      }

      else
      {
        v269 = v268;

        if (v269)
        {
          sub_1D6659A24();
          sub_1D72647EC();
        }
      }

      v270 = v316;

      sub_1D5CBF568(v270);

      sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v241, type metadata accessor for FormatVersionRequirement);

      v256 = v310;
    }

    v109 = v256;
    return sub_1D5D2CFE8(v109, sub_1D66B6288);
  }

  sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v310, sub_1D66B6288);
}

uint64_t sub_1D6582AA4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x726F7463656C6573;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C696269736976;
    v9 = 0xD000000000000018;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
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
      v3 = 0x7865646E497ALL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x746E65746E6F63;
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

uint64_t sub_1D6582C24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B8158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6582C5C(uint64_t a1)
{
  v2 = sub_1D5E1A19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6582C98(uint64_t a1)
{
  v2 = sub_1D5E1A19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShareAttributionNodeBinding.init(from:)(void *a1)
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
          *(v18 + 16) = &unk_1F5117158;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B63AC();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D66B6400();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShareAttributionNodeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatShareAttributionNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatShareAttributionNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6386EE8(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D6583354()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6583448(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6583528(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatShineAlphaProcessor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
          *(v22 + 16) = &unk_1F51171F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B6454();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      if (v29 == 1)
      {
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v28 = xmmword_1D7279980;
        sub_1D665B74C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = v29;
LABEL_17:
        *v12 = v25;
        *(v12 + 8) = v24;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v15, v5);
      v25 = 1;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
    }

    v24 = 1;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShineAlphaProcessor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatShineAlphaProcessor, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatShineAlphaProcessor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v22, v18, v23, &off_1F51F6C78);
  sub_1D5B58478(0);
  v26 = *(v25 + 48);
  if (v20 == 1)
  {
    v27 = *(v25 + 64);
    if (v19 == 0.0)
    {
      v39 = &v14[v27];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v40 = sub_1D725BD1C();
      v41 = __swift_project_value_buffer(v40, qword_1EDFFCD30);
      v42 = *(*(v40 - 8) + 16);
      v42(v14, v41, v40);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v40, qword_1EDFFCE68);
      v42(&v14[v26], v43, v40);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v39 = 0;
      *(v39 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D641B404(0, v14);
      v33 = v14;
    }

    else
    {
      v28 = &v6[v27];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      v31 = *(*(v29 - 8) + 16);
      v31(v6, v30, v29);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
      v31(&v6[v26], v32, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v28 = 0;
      *(v28 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D641B404(2, v6);
      v33 = v6;
    }
  }

  else
  {
    v34 = &v10[*(v25 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    v37 = *(*(v35 - 8) + 16);
    v37(v10, v36, v35);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
    v37(&v10[v26], v38, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v34 = 0;
    *(v34 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D638FFE0(1, v10, v19);
    v33 = v10;
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6583EFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6465786966;
  if (v2 != 1)
  {
    v4 = 0x636E616E696D756CLL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
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
  v8 = 0x6465786966;
  if (*a2 != 1)
  {
    v8 = 0x636E616E696D756CLL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
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

uint64_t sub_1D6583FF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6584094(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D658411C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65841B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664468(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65841E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (v2 != 1)
  {
    v5 = 0x636E616E696D756CLL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65842EC()
{
  v1 = 0x726F6C6F63;
  v2 = 0x6F72506168706C61;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x646F4D646E656C62;
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

uint64_t sub_1D658436C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66B8530(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65843A4(uint64_t a1)
{
  v2 = sub_1D666717C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65843E0(uint64_t a1)
{
  v2 = sub_1D666717C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShineColor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v17 = *(v2 + 64);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatShineColor, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatShineColor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v15, v20, &off_1F51F6C78);
  if (v17)
  {
    v38 = v16;
    v39 = *(v2 + 8);
    v40 = *(v2 + 24);
    v41 = *(v2 + 40);
    v42 = *(v2 + 56);
    sub_1D5B58478(0);
    v23 = *(v22 + 48);
    v24 = &v7[*(v22 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    v27 = *(*(v25 - 8) + 16);
    v27(v7, v26, v25);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v25, qword_1EDFFCE68);
    v27(&v7[v23], v28, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v24 = 0;
    *(v24 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D63B4A10(1, &v38, v7);
    v29 = v7;
  }

  else
  {
    sub_1D5B58478(0);
    v31 = *(v30 + 48);
    v32 = &v11[*(v30 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    v35 = *(*(v33 - 8) + 16);
    v35(v11, v34, v33);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v33, qword_1EDFFCE68);
    v35(&v11[v31], v36, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D63B487C(0, v16, v11);
    v29 = v11;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6584870(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x64696C6F73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x64696C6F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D6584914()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6584994(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6584A00(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6584A88(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatShineOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66B64FC(0);
  v7 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B6590(0);
  sub_1D5B58B84(&qword_1EC8871F0, sub_1D66B6590, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v43;
  v15 = v10;
  if (v13)
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

      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = sub_1D6622BD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  v48 = 0uLL;
  LOBYTE(v49) = 0;
  v19 = sub_1D72642BC();
  v21 = v20;
  v48 = xmmword_1D728CF30;
  LOBYTE(v49) = 0;
  sub_1D5B570F8();
  sub_1D726431C();
  v27 = v46;
  v48 = xmmword_1D7297410;
  LOBYTE(v49) = 0;
  sub_1D61817B8();
  sub_1D726431C();
  v41 = v27;
  LODWORD(v27) = v46;
  v48 = xmmword_1D72BAA60;
  LOBYTE(v49) = 0;
  sub_1D72642DC();
  v40 = v27;
  v29 = v28;
  v46 = xmmword_1D72BAA70;
  v47 = 0;
  sub_1D5CD77CC();
  sub_1D726431C();
  v38 = v49;
  v39 = v48;
  v37 = v50;
  LODWORD(v27) = v51;
  sub_1D5C34D84(0, &qword_1EC8871F8, &type metadata for FormatShineBlend, MEMORY[0x1E69E62F8]);
  v48 = xmmword_1D72BAA80;
  LOBYTE(v49) = 0;
  sub_1D66B6710();
  sub_1D726431C();
  v35 = v27;
  v36 = v46;
  v48 = xmmword_1D72BAA90;
  LOBYTE(v49) = 0;
  sub_1D5B57870();
  sub_1D726431C();
  (*(v14 + 8))(v15, v7);
  v30 = v46;
  v31 = v41;
  v32 = v42;
  *v42 = v19;
  v32[1] = v21;
  v32[2] = v31;
  *(v32 + 24) = v40;
  *(v32 + 25) = *v45;
  *(v32 + 7) = *&v45[3];
  v32[4] = v29;
  v33 = v39;
  *(v32 + 7) = v38;
  *(v32 + 5) = v33;
  v32[9] = v37;
  *(v32 + 80) = v35;
  *(v32 + 81) = *v44;
  *(v32 + 21) = *&v44[3];
  v32[11] = v36;
  v32[12] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}