uint64_t FormatGroupBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 8);
  v49 = *v1;
  v50 = v26;
  v51 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v52 = v25;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Command, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatGroupBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v25, v30, &off_1F51F6C78);
  v32 = (v27 >> 3) & 7;
  if (v32 <= 1)
  {
    if (v32)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCDE0);
      (*(*(v44 - 8) + 16))(v17, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v52;
      sub_1D63A8D08(1, v17);
      goto LABEL_20;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
    (*(*(v37 - 8) + 16))(v21, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v52;
    sub_1D63A8B70(0, v49, v50, v51, v21);
    v36 = v21;
  }

  else
  {
    if (v32 != 2)
    {
      if (v32 == 3)
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v33 = sub_1D725BD1C();
        v34 = __swift_project_value_buffer(v33, qword_1EDFFCC90);
        (*(*(v33 - 8) + 16))(v9, v34, v33);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v52;
        sub_1D63A8B70(3, v49, v50, v51, v9);
        v36 = v9;
        goto LABEL_21;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD68);
      v17 = v48;
      (*(*(v41 - 8) + 16))(v48, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v27 & 0xC7;
      v35 = v52;
      sub_1D63A8E94(4, v49, v50, v51, v43, v17);
LABEL_20:
      v36 = v17;
      goto LABEL_21;
    }

    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD68);
    (*(*(v39 - 8) + 16))(v13, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v52;
    sub_1D63A8B70(2, v49, v50, v51, v13);
    v36 = v13;
  }

LABEL_21:
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatBindingDateTimeExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
          *(v21 + 16) = &unk_1F51126E0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666DF2C();
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
      sub_1D6207318();
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

uint64_t FormatBindingDateTimeExpressionLogic.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatBindingDateTimeExpressionLogic, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatBindingDateTimeExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v23, &off_1F51F6CF8);
  if (v19 == 12)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCCA8);
    (*(*(v28 - 8) + 16))(v10, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418F04(1, v10);
    v27 = v10;
  }

  else if (v19 == 13)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCCA8);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418F04(2, v6);
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
    sub_1D6386550(0, v19, v20, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatBindingDateTimeExpressionLogicCompare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D666DF80(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666E014(0);
  sub_1D5B58B84(&qword_1EDF24D38, sub_1D666E014, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x726F74617265706FLL, 0xE800000000000000, 0x656D695465746164, 0xE800000000000000);
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
  sub_1D60344C0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingDateTimeExpressionLogicCompare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D666E194(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = *(v1 + 1);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666E014(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24D38, sub_1D666E014, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBindingDateTimeExpressionLogicCompare, v19, v21, v16, &type metadata for FormatBindingDateTimeExpressionLogicCompare, v19, &type metadata for FormatVersions.Dawnburst, v17, v14, v20, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCCA8);
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
  v67 = sub_1D6708958;
  v68 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D666E228(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02C18, sub_1D666E228, MEMORY[0x1E69E6F60]);
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
  v67 = sub_1D666E2BC;
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
    v67 = sub_1D6708958;
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
    v67 = sub_1D6708958;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D6034514();
    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D666E194);
}

uint64_t FormatAccessibilityValue.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
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
    v11 = v6;
    v12 = v26;
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
          *(v22 + 16) = &unk_1F5112730;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C9E1C4();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28 <= 2u)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          (*(v11 + 8))(v15, v5);
          v24 = 19;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v24 = 20;
        }
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 18;
      }
    }

    else if (v28 > 4u)
    {
      if (v28 == 5)
      {
        sub_1D5C30060(0, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
        v27 = xmmword_1D7279980;
        sub_1D5C67384();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v28;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 23;
      }
    }

    else if (v28 == 3)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 21;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 22;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAccessibilityValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v56 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v55 - v26;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v1;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  v58 = v31;
  sub_1D5D2EE70(&type metadata for FormatAccessibilityValue, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatAccessibilityValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v34, v31, v35, &off_1F51F6C78);
  if (v32 > 20)
  {
    switch(v32)
    {
      case 21:
        v39 = v58;
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD30);
        (*(*(v46 - 8) + 16))(v15, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D641C290(3, v15);
        v40 = v15;
        goto LABEL_31;
      case 22:
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
        v27 = v55;
        (*(*(v52 - 8) + 16))(v55, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 4;
        break;
      case 23:
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v41 = sub_1D725BD1C();
        v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
        v27 = v57;
        (*(*(v41 - 8) + 16))(v57, v42, v41);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 6;
        break;
      default:
LABEL_20:
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
        v27 = v56;
        (*(*(v48 - 8) + 16))(v56, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = v58;
        sub_1D63932E0(5, v32, v27);
        goto LABEL_30;
    }

LABEL_29:
    v39 = v58;
    sub_1D641C290(v43, v27);
LABEL_30:
    v40 = v27;
    goto LABEL_31;
  }

  if (v32 == 18)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
    (*(*(v44 - 8) + 16))(v27, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v43 = 0;
    goto LABEL_29;
  }

  if (v32 != 19)
  {
    if (v32 == 20)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
      (*(*(v37 - 8) + 16))(v19, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v58;
      sub_1D641C290(2, v19);
      v40 = v19;
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  (*(*(v50 - 8) + 16))(v23, v51, v50);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = v58;
  sub_1D641C290(1, v23);
  v40 = v23;
LABEL_31:
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t FormatPatternMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v20 + 16) = &unk_1F51134A0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666E338();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C30060(0, &qword_1EDF12770, sub_1D5F89B28, &type metadata for FormatPatternDirection, type metadata accessor for FormatValue);
      v26 = xmmword_1D7279980;
      sub_1D666E38C();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27 | 0x80;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF127A0, sub_1D607BC84, &type metadata for FormatPatternAnchor, type metadata accessor for FormatValue);
      v26 = xmmword_1D7279980;
      sub_1D666E41C();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPatternMode.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPatternMode, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPatternMode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15 < 0)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AFDFC(1, v15 & 1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AFC28(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatSupplementaryNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v316 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v321 = &v316 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v322 = &v316 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v323 = &v316 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v324 = &v316 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v327 = &v316 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v325 = &v316 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v326 = &v316 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v328 = &v316 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v329 = &v316 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v337 = (&v316 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v316 - v41;
  sub_1D666E4AC(0);
  *&v338 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v316 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D5C625A0(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF25178, sub_1D5C625A0, &unk_1D7321584);
  sub_1D5D2EE70(v4, v50, v52, v47, v4, v50, &type metadata for FormatVersions.JazzkonC, v48, v46, v51, &off_1F51F6C78);
  swift_beginAccess();
  v335 = v2;
  v53 = v2[2];
  v54 = v2[3];
  v55 = qword_1EDF31EB0;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = sub_1D725BD1C();
  v57 = __swift_project_value_buffer(v56, qword_1EDFFCD30);
  v58 = *(v56 - 1);
  v59 = *(v58 + 16);
  v60 = (v58 + 16);
  v334 = v57;
  v336 = v56;
  v59(v42);
  v61 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v62 = sub_1D725895C();
  v63 = (*(*(v62 - 8) + 48))(v8, 1, v62);
  v330 = v59;
  v333 = v61;
  if (v63 == 1)
  {
    v332 = v53;
    v331 = v60;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v64 = v338;
    v65 = &v46[*(v338 + 44)];
    v66 = *v65;
    v67 = *(v65 + 1);
    LOBYTE(v341) = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    *(v68 + 32) = v341;
    *(v68 + 40) = v66;
    *(v68 + 48) = v67;
    sub_1D5E1C1A4(0);
    v70 = v69;
    v71 = sub_1D5B58B84(&qword_1EDF03138, sub_1D5E1C1A4, MEMORY[0x1E69E6F60]);

    *&v339 = v70;
    v72 = sub_1D72647CC();
    LOBYTE(v341) = 0;
    v73 = v46;
    v74 = v42;
    v75 = swift_allocObject();
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    *(v75 + 16) = v72;
    *(v75 + 40) = v341;
    v76 = &v73[*(v64 + 36)];
    v78 = *(v76 + 3);
    v77 = *(v76 + 4);
    v79 = __swift_project_boxed_opaque_existential_1(v76, v78);
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D666E540;
    v315 = v68;
    v83 = v340;
    v85 = sub_1D5D2F7A4(v74, sub_1D615B49C, v84, sub_1D615B4A4, (&v316 - 6), v78, v77);
    v340 = v83;
    if (v83)
    {
      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

      v86 = v73;
      return sub_1D5D2CFE8(v86, sub_1D666E4AC);
    }

    v117 = v85;
    v320 = v71;
    v118 = v74;

    if (v117)
    {
      v341 = 0uLL;
      LOBYTE(v342) = 0;
      v354 = v332;
      v355 = v54;
      v46 = v73;
      v119 = v340;
      sub_1D72647EC();

      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      v340 = v119;
      v60 = v331;
      if (v119)
      {
        v86 = v73;
        return sub_1D5D2CFE8(v86, sub_1D666E4AC);
      }

      v59 = v330;
    }

    else
    {
      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

      v46 = v73;
      v59 = v330;
      v60 = v331;
    }
  }

  else
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v87 = v335[4];
  v88 = v335[5];
  v89 = v337;
  (v59)(v337, v334, v336);
  swift_storeEnumTagMultiPayload();
  v354 = v87;
  v355 = v88;
  v339 = xmmword_1D728CF30;
  v341 = xmmword_1D728CF30;
  LOBYTE(v342) = 0;
  v90 = v338;
  v91 = &v46[*(v338 + 44)];
  v93 = *v91;
  v92 = *(v91 + 1);
  LOBYTE(v353) = 0;
  v94 = swift_allocObject();
  v332 = &v316;
  *(v94 + 16) = v339;
  *(v94 + 32) = v353;
  *(v94 + 40) = v93;
  *(v94 + 48) = v92;
  MEMORY[0x1EEE9AC00](v94, v95);
  v96 = v46;
  v331 = &v316 - 6;
  *(&v316 - 4) = sub_1D5B4AA6C;
  *(&v316 - 3) = 0;
  v314 = sub_1D670895C;
  v315 = v97;
  LOBYTE(v353) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v339;
  *(v98 + 32) = v353;
  v317 = v93;
  *(v98 + 40) = v93;
  *(v98 + 48) = v92;
  sub_1D5E1C1A4(0);
  v100 = v99;
  v101 = sub_1D5B58B84(&qword_1EDF03138, sub_1D5E1C1A4, MEMORY[0x1E69E6F60]);
  v318 = v92;
  swift_retain_n();
  v319 = v100;
  v320 = v101;
  v102 = sub_1D72647CC();
  LOBYTE(v353) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v339;
  *(v103 + 40) = v353;
  v104 = *(v90 + 36);
  *&v339 = v96;
  v105 = &v96[v104];
  v106 = v60;
  v107 = *(v105 + 3);
  v108 = *(v105 + 4);
  v109 = __swift_project_boxed_opaque_existential_1(v105, v107);
  MEMORY[0x1EEE9AC00](v109, v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  v113 = v331;
  *(&v316 - 4) = sub_1D615B4A4;
  *(&v316 - 3) = v113;
  v314 = sub_1D670895C;
  v315 = v98;
  v114 = v340;
  sub_1D5D2BC70(v89, sub_1D615B49C, v115, sub_1D615B4A4, (&v316 - 6), v107, v108);
  if (v114)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v116 = v339;
LABEL_16:
    v86 = v116;
    return sub_1D5D2CFE8(v86, sub_1D666E4AC);
  }

  v316 = v105;
  v331 = v106;

  v116 = v339;
  sub_1D72647EC();
  sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);

  v120 = v335[6];
  v121 = v329;
  (v330)(v329, v334, v336);
  swift_storeEnumTagMultiPayload();
  v354 = v120;
  v338 = xmmword_1D7297410;
  v341 = xmmword_1D7297410;
  LOBYTE(v342) = 0;
  LOBYTE(v353) = 0;
  v122 = swift_allocObject();
  v337 = &v316;
  *(v122 + 16) = v338;
  *(v122 + 32) = v353;
  v123 = v317;
  v124 = v318;
  *(v122 + 40) = v317;
  *(v122 + 48) = v124;
  MEMORY[0x1EEE9AC00](v122, v125);
  v340 = 0;
  *(&v316 - 4) = sub_1D5B4AA6C;
  *(&v316 - 3) = 0;
  v314 = sub_1D670895C;
  v315 = v126;
  LOBYTE(v353) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v338;
  *(v127 + 32) = v353;
  *(v127 + 40) = v123;
  *(v127 + 48) = v124;
  swift_retain_n();
  v128 = sub_1D72647CC();
  LOBYTE(v353) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v128;
  *(v129 + 24) = v338;
  *(v129 + 40) = v353;
  v130 = *(v316 + 3);
  v131 = *(v316 + 4);
  v132 = __swift_project_boxed_opaque_existential_1(v316, v130);
  MEMORY[0x1EEE9AC00](v132, v133);
  MEMORY[0x1EEE9AC00](v134, v135);
  *(&v316 - 4) = sub_1D615B4A4;
  *(&v316 - 3) = (&v316 - 6);
  v314 = sub_1D670895C;
  v315 = v127;
  v136 = v340;
  sub_1D5D2BC70(v121, sub_1D615B49C, v137, sub_1D615B4A4, (&v316 - 6), v130, v131);
  if (v136)
  {
    sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

    goto LABEL_16;
  }

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);

  v139 = v335;
  v140 = v335[7];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v340 = 0;
  v141 = v336;
  v142 = __swift_project_value_buffer(v336, qword_1EDFFCD68);
  v143 = v328;
  v144 = v330;
  (v330)(v328, v142, v141);
  swift_storeEnumTagMultiPayload();
  v338 = xmmword_1D72BAA60;
  v341 = xmmword_1D72BAA60;
  LOBYTE(v342) = 0;
  LOBYTE(v354) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = v338;
  *(v146 + 32) = v354;
  v147 = v317;
  *(v146 + 40) = v317;
  v148 = v318;
  *(v146 + 48) = v318;
  if (!v140)
  {

    v163 = v339;
LABEL_32:
    v167 = v327;
    goto LABEL_33;
  }

  v337 = &v316;
  v354 = v140;
  MEMORY[0x1EEE9AC00](v148, v145);
  *(&v316 - 4) = sub_1D5B4AA6C;
  *(&v316 - 3) = 0;
  v314 = sub_1D670895C;
  v315 = v146;
  LOBYTE(v353) = 0;
  v150 = v149;
  v151 = swift_allocObject();
  *(v151 + 16) = v338;
  *(v151 + 32) = v353;
  *(v151 + 40) = v147;
  *(v151 + 48) = v150;
  swift_retain_n();

  v152 = sub_1D72647CC();
  LOBYTE(v353) = 0;
  v153 = swift_allocObject();
  *(v153 + 16) = v152;
  *(v153 + 24) = v338;
  *(v153 + 40) = v353;
  v154 = *(v316 + 3);
  v155 = *(v316 + 4);
  v156 = __swift_project_boxed_opaque_existential_1(v316, v154);
  MEMORY[0x1EEE9AC00](v156, v157);
  MEMORY[0x1EEE9AC00](v158, v159);
  *(&v316 - 4) = sub_1D615B4A4;
  *(&v316 - 3) = (&v316 - 6);
  v314 = sub_1D670895C;
  v315 = v151;
  v160 = v340;
  v162 = sub_1D5D2F7A4(v143, sub_1D615B49C, v161, sub_1D615B4A4, (&v316 - 6), v154, v155);
  v340 = v160;
  if (v160)
  {

    v163 = v339;
LABEL_24:

LABEL_25:
    v164 = v143;
LABEL_26:
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
LABEL_37:
    v86 = v163;
    return sub_1D5D2CFE8(v86, sub_1D666E4AC);
  }

  v165 = v162;

  if ((v165 & 1) == 0)
  {

    v163 = v339;
    v139 = v335;
    v144 = v330;
    goto LABEL_32;
  }

  sub_1D6659D24();
  v163 = v339;
  v166 = v340;
  sub_1D72647EC();
  v139 = v335;
  v144 = v330;
  v340 = v166;
  v167 = v327;
  if (v166)
  {

    goto LABEL_24;
  }

LABEL_33:
  sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v168 = v139[8];
  v169 = v326;
  v144(v326, v334, v336);
  swift_storeEnumTagMultiPayload();
  if (!*(v168 + 16))
  {
    v143 = v167;
    v183 = v163;
    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
LABEL_43:
    v186 = v316;
    goto LABEL_44;
  }

  LOBYTE(v341) = 0;
  v170 = swift_allocObject();
  v338 = xmmword_1D72BAA70;
  *(v170 + 16) = xmmword_1D72BAA70;
  *(v170 + 32) = v341;
  *(v170 + 40) = v317;
  *(v170 + 48) = v318;

  v171 = sub_1D72647CC();
  LOBYTE(v341) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = v171;
  *(v172 + 24) = v338;
  *(v172 + 40) = v341;
  v173 = *(v316 + 3);
  v174 = *(v316 + 4);
  v175 = __swift_project_boxed_opaque_existential_1(v316, v173);
  MEMORY[0x1EEE9AC00](v175, v176);
  MEMORY[0x1EEE9AC00](v177, v178);
  *(&v316 - 4) = sub_1D5B4AA6C;
  *(&v316 - 3) = 0;
  v314 = sub_1D670895C;
  v315 = v170;
  v179 = v340;
  v181 = sub_1D5D2F7A4(v169, sub_1D615B49C, v180, sub_1D615B4A4, (&v316 - 6), v173, v174);
  v340 = v179;
  if (v179)
  {
    v182 = v169;
LABEL_36:
    sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);

    goto LABEL_37;
  }

  v184 = v181;

  if ((v184 & 1) == 0)
  {
    v183 = v163;
    sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

    v139 = v335;
    v144 = v330;
    v143 = v327;
    goto LABEL_43;
  }

  v341 = v338;
  LOBYTE(v342) = 0;
  v353 = v168;
  sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
  sub_1D6659C88();
  v185 = v340;
  sub_1D72647EC();
  v139 = v335;
  v144 = v330;
  v340 = v185;
  v143 = v327;
  v186 = v316;
  if (v185)
  {

    v187 = &v351;
LABEL_69:
    v164 = *(v187 - 32);
    goto LABEL_26;
  }

  v183 = v163;

  sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
LABEL_44:
  swift_beginAccess();
  v188 = v139[9];
  v189 = v325;
  v144(v325, v334, v336);
  swift_storeEnumTagMultiPayload();
  if (*(v188 + 16))
  {
    LOBYTE(v341) = 0;
    v190 = swift_allocObject();
    v338 = xmmword_1D72BAA80;
    *(v190 + 16) = xmmword_1D72BAA80;
    *(v190 + 32) = v341;
    *(v190 + 40) = v317;
    *(v190 + 48) = v318;

    v191 = v183;
    v192 = sub_1D72647CC();
    LOBYTE(v341) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = v192;
    *(v193 + 24) = v338;
    *(v193 + 40) = v341;
    v194 = *(v186 + 3);
    v195 = *(v186 + 4);
    v196 = __swift_project_boxed_opaque_existential_1(v186, v194);
    MEMORY[0x1EEE9AC00](v196, v197);
    MEMORY[0x1EEE9AC00](v198, v199);
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D670895C;
    v315 = v190;
    v200 = v340;
    v202 = sub_1D5D2F7A4(v189, sub_1D615B49C, v201, sub_1D615B4A4, (&v316 - 6), v194, v195);
    v340 = v200;
    if (v200)
    {
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

      v86 = v191;
      return sub_1D5D2CFE8(v86, sub_1D666E4AC);
    }

    v203 = v202;
    v163 = v191;

    if (v203)
    {
      v341 = v338;
      LOBYTE(v342) = 0;
      v352 = v188;
      sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
      sub_1D5D2FA60();
      v204 = v340;
      sub_1D72647EC();
      v139 = v335;
      v144 = v330;
      v340 = v204;
      v143 = v327;
      if (v204)
      {

        v187 = &v350;
        goto LABEL_69;
      }

      sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);

      v139 = v335;
      v144 = v330;
      v143 = v327;
    }
  }

  else
  {
    sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
    v163 = v183;
  }

  swift_beginAccess();
  v205 = v139[10];
  v144(v143, v334, v336);
  swift_storeEnumTagMultiPayload();
  if (*(v205 + 16))
  {
    LOBYTE(v341) = 0;
    v206 = swift_allocObject();
    v338 = xmmword_1D72BAA90;
    *(v206 + 16) = xmmword_1D72BAA90;
    *(v206 + 32) = v341;
    *(v206 + 40) = v317;
    *(v206 + 48) = v318;

    v207 = sub_1D72647CC();
    LOBYTE(v341) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v207;
    *(v208 + 24) = v338;
    *(v208 + 40) = v341;
    v209 = *(v186 + 3);
    v210 = *(v186 + 4);
    __swift_project_boxed_opaque_existential_1(v186, v209);
    MEMORY[0x1EEE9AC00](v143, v211);
    MEMORY[0x1EEE9AC00](v212, v213);
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D670895C;
    v315 = v206;
    v214 = v340;
    v217 = sub_1D5D2F7A4(v215, sub_1D615B49C, v216, sub_1D615B4A4, (&v316 - 6), v209, v210);
    v340 = v214;
    if (v214)
    {

      v143 = v327;
      goto LABEL_25;
    }

    v218 = v217;

    if (v218)
    {
      v219 = v340;
      sub_1D5E07650(v205, v163, 6, 0, 0);
      v340 = v219;
      v143 = v327;
      if (v219)
      {

        goto LABEL_25;
      }

      v139 = v335;
      v144 = v330;
    }

    else
    {
      v139 = v335;
      v144 = v330;
      v143 = v327;
    }
  }

  v220 = v324;
  sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v221 = v139[11];
  v144(v220, v334, v336);
  swift_storeEnumTagMultiPayload();
  if (*(v221 + 16))
  {
    LOBYTE(v341) = 0;
    v222 = swift_allocObject();
    v338 = xmmword_1D72BAAA0;
    *(v222 + 16) = xmmword_1D72BAAA0;
    *(v222 + 32) = v341;
    *(v222 + 40) = v317;
    *(v222 + 48) = v318;

    v223 = v220;
    v224 = sub_1D72647CC();
    LOBYTE(v341) = 0;
    v225 = swift_allocObject();
    *(v225 + 16) = v224;
    *(v225 + 24) = v338;
    *(v225 + 40) = v341;
    v226 = *(v186 + 3);
    v227 = *(v186 + 4);
    v228 = __swift_project_boxed_opaque_existential_1(v186, v226);
    MEMORY[0x1EEE9AC00](v228, v229);
    MEMORY[0x1EEE9AC00](v230, v231);
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D670895C;
    v315 = v222;
    v232 = v340;
    v234 = sub_1D5D2F7A4(v223, sub_1D615B49C, v233, sub_1D615B4A4, (&v316 - 6), v226, v227);
    v340 = v232;
    if (v232)
    {
LABEL_79:
      v182 = v223;
      goto LABEL_36;
    }

    v235 = v234;

    if (v235)
    {
      v341 = v338;
      LOBYTE(v342) = 0;
      v348 = v221;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      v236 = v340;
      sub_1D72647EC();
      v340 = v236;
      if (v236)
      {

        v187 = v349;
        goto LABEL_69;
      }

      sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
    }

    v139 = v335;
    v144 = v330;
  }

  else
  {
    sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v237 = v139[12];
  v238 = qword_1EDF31ED0;

  if (v238 != -1)
  {
    swift_once();
  }

  v239 = v336;
  v240 = __swift_project_value_buffer(v336, qword_1EDFFCD50);
  v144(v323, v240, v239);
  swift_storeEnumTagMultiPayload();
  if (v237 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_78;
    }

LABEL_87:
    sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);

    goto LABEL_88;
  }

  if (!*((v237 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_87;
  }

LABEL_78:
  LOBYTE(v341) = 0;
  v241 = swift_allocObject();
  v338 = xmmword_1D72BAAB0;
  *(v241 + 16) = xmmword_1D72BAAB0;
  *(v241 + 32) = v341;
  *(v241 + 40) = v317;
  *(v241 + 48) = v318;

  v242 = sub_1D72647CC();
  LOBYTE(v341) = 0;
  v243 = swift_allocObject();
  *(v243 + 16) = v242;
  *(v243 + 24) = v338;
  *(v243 + 40) = v341;
  v244 = *(v186 + 3);
  v245 = *(v186 + 4);
  v246 = __swift_project_boxed_opaque_existential_1(v186, v244);
  MEMORY[0x1EEE9AC00](v246, v247);
  MEMORY[0x1EEE9AC00](v248, v249);
  *(&v316 - 4) = sub_1D5B4AA6C;
  *(&v316 - 3) = 0;
  v314 = sub_1D670895C;
  v315 = v241;
  v223 = v323;
  v250 = v340;
  v252 = sub_1D5D2F7A4(v323, sub_1D615B49C, v251, sub_1D615B4A4, (&v316 - 6), v244, v245);
  v340 = v250;
  if (v250)
  {
    goto LABEL_79;
  }

  v253 = v252;

  if (v253)
  {
    v341 = v338;
    LOBYTE(v342) = 0;
    *&v346 = v237;
    sub_1D5B5BF78(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
    sub_1D666E5D0();
    v254 = v340;
    sub_1D72647EC();
    v340 = v254;
    if (v254)
    {

      v164 = v223;
      goto LABEL_26;
    }

    sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
  }

  v139 = v335;
LABEL_88:
  v255 = v139[13];
  v256 = *(v139 + 112);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v257 = v336;
  v258 = __swift_project_value_buffer(v336, qword_1EDFFCD98);
  v259 = v322;
  (v330)(v322, v258, v257);
  swift_storeEnumTagMultiPayload();
  v338 = xmmword_1D72BAAC0;
  v341 = xmmword_1D72BAAC0;
  LOBYTE(v342) = 0;
  LOBYTE(v346) = 0;
  v260 = swift_allocObject();
  v262 = v260;
  *(v260 + 16) = v338;
  *(v260 + 32) = v346;
  v263 = v318;
  *(v260 + 40) = v317;
  *(v260 + 48) = v263;
  if ((v256 & 1) == 0)
  {
    *&v346 = v255;
    MEMORY[0x1EEE9AC00](v260, v261);
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D670895C;
    v315 = v262;
    v356 = 0;
    v265 = v264;
    v266 = swift_allocObject();
    *(v266 + 16) = v338;
    *(v266 + 32) = v356;
    *(v266 + 40) = v265;
    *(v266 + 48) = v263;
    v267 = v316;
    swift_retain_n();
    v268 = sub_1D72647CC();
    v356 = 0;
    v269 = swift_allocObject();
    *(v269 + 16) = v268;
    *(v269 + 24) = v338;
    *(v269 + 40) = v356;
    v270 = *(v267 + 3);
    v271 = *(v267 + 4);
    v272 = __swift_project_boxed_opaque_existential_1(v267, v270);
    MEMORY[0x1EEE9AC00](v272, v273);
    MEMORY[0x1EEE9AC00](v274, v275);
    *(&v316 - 4) = sub_1D615B4A4;
    *(&v316 - 3) = (&v316 - 6);
    v314 = sub_1D670895C;
    v315 = v266;
    v276 = v340;
    v278 = sub_1D5D2F7A4(v259, sub_1D615B49C, v277, sub_1D615B4A4, (&v316 - 6), v270, v271);
    if (v276)
    {
      sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v279 = v278;
      v340 = 0;

      if ((v279 & 1) == 0 || (v280 = v340, sub_1D72647EC(), (v340 = v280) == 0))
      {
        v139 = v335;
        goto LABEL_99;
      }

      sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
    }

    v86 = v339;
    return sub_1D5D2CFE8(v86, sub_1D666E4AC);
  }

LABEL_99:
  sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);

  v281 = v139[15];
  v282 = v139[16];
  v283 = v139[17];
  v284 = v139[18];
  v285 = v139[19];
  v286 = v139[20];
  v287 = v321;
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v288 = v336;
  v289 = __swift_project_value_buffer(v336, qword_1EDFFCE38);
  (v330)(v287, v289, v288);
  swift_storeEnumTagMultiPayload();
  v338 = xmmword_1D72BAAD0;
  v346 = xmmword_1D72BAAD0;
  v347 = 0;
  LOBYTE(v341) = 0;
  v291 = swift_allocObject();
  *(v291 + 16) = v338;
  *(v291 + 32) = v341;
  v292 = v317;
  *(v291 + 40) = v317;
  v293 = v318;
  *(v291 + 48) = v318;
  if (v281)
  {
    v337 = &v316;
    *&v341 = v281;
    *(&v341 + 1) = v282;
    v342 = v283;
    v343 = v284;
    v344 = v285;
    v345 = v286;
    MEMORY[0x1EEE9AC00](v293, v290);
    v336 = &v316 - 6;
    *(&v316 - 4) = sub_1D5B4AA6C;
    *(&v316 - 3) = 0;
    v314 = sub_1D670895C;
    v315 = v291;
    v356 = 0;
    v335 = v285;
    v294 = v281;
    v296 = v295;
    v297 = v286;
    v298 = swift_allocObject();
    *(v298 + 16) = v338;
    *(v298 + 32) = v356;
    *(v298 + 40) = v292;
    *(v298 + 48) = v296;
    swift_retain_n();
    sub_1D5EB1D80(v294, v282, v283, v284, v335, v297);
    v299 = sub_1D72647CC();
    v356 = 0;
    v300 = swift_allocObject();
    *(v300 + 16) = v299;
    *(v300 + 24) = v338;
    *(v300 + 40) = v356;
    v301 = *(v316 + 3);
    v302 = *(v316 + 4);
    v303 = __swift_project_boxed_opaque_existential_1(v316, v301);
    MEMORY[0x1EEE9AC00](v303, v304);
    MEMORY[0x1EEE9AC00](v305, v306);
    v307 = v336;
    *(&v316 - 4) = sub_1D615B4A4;
    *(&v316 - 3) = v307;
    v314 = sub_1D670895C;
    v315 = v298;
    v308 = v340;
    v310 = sub_1D5D2F7A4(v287, sub_1D615B49C, v309, sub_1D615B4A4, (&v316 - 6), v301, v302);
    v340 = v308;
    if (v308)
    {
    }

    else
    {
      v311 = v310;

      if (v311)
      {
        sub_1D6659A24();
        v312 = v340;
        sub_1D72647EC();
        v340 = v312;
      }
    }

    v313 = v344;

    sub_1D5CBF568(v313);

    sub_1D5D2CFE8(v321, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
  }

  v86 = v339;
  return sub_1D5D2CFE8(v86, sub_1D666E4AC);
}

uint64_t FormatShareAttributionNodeContent.init(from:)(void *a1)
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
          *(v18 + 16) = &unk_1F51134F0;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D666E6A8();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D666E6FC();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShareAttributionNodeContent.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatShareAttributionNodeContent, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatShareAttributionNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6386D6C(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatPuzzleBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Action, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D64212F4(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatWorkspacePackage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D666E7A4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666E838(0);
  sub_1D5B58B84(&qword_1EC886530, sub_1D666E838, &unk_1D7321584);
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

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
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

uint64_t FormatWorkspacePackage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D666E9B8(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D666E838(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EC886530, sub_1D666E838, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWorkspacePackage, v17, v19, v14, &type metadata for FormatWorkspacePackage, v17, &type metadata for FormatVersions.CrystalGlowE, v15, v11, v18, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE38);
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
  v43 = sub_1D67088B4;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D666EA4C(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EC886548, sub_1D666EA4C, MEMORY[0x1E69E6F60]);
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
  v43 = sub_1D67088B4;
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

  return sub_1D5D2CFE8(v11, sub_1D666E9B8);
}

uint64_t FormatBundleImageSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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

    v13 = v28;
    v14 = v10;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5113590;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666EB44();
    v27 = 0uLL;
    sub_1D726431C();
    v23 = v26;
    if (v26 && v26 != 1)
    {
      v26 = xmmword_1D7279980;
      sub_1D619B4AC();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = *(&v27 + 1);
      v25 = v27;
    }

    else
    {
      sub_1D5C71DC8(0);
      v27 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = 0;
      v25 = v26;
    }

    *v13 = v25;
    *(v13 + 8) = v24;
    *(v13 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBundleImageSize.encode(to:)(void *a1)
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
  v19 = *(v1 + 8);
  v34 = *v1;
  v20 = *(v1 + 16);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBundleImageSize, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatBundleImageSize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v21, v18, v23, &off_1F51F6BF8);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A14FC(1, v34, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A16C8(2, v34, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A14FC(0, v34, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatItemNodeSwipeActionStyleDimension.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D666EB98(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666EC2C(0);
  sub_1D5B58B84(&qword_1EC886578, sub_1D666EC2C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v26;
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

      v22 = sub_1D6627E68(0x69536E6F74747562, 0xEA0000000000657ALL, 0x57616572416E696DLL, 0xEC00000068746469);
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
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v25 = v30;
  *v11 = v19;
  v11[1] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeSwipeActionStyleDimension.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v73 - v8;
  sub_1D666EDAC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v81 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666EC2C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886578, sub_1D666EC2C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatItemNodeSwipeActionStyleDimension, v19, v21, v16, &type metadata for FormatItemNodeSwipeActionStyleDimension, v19, &type metadata for FormatVersions.DawnburstC, v17, v14, v20, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE98);
  v24 = *(v22 - 8);
  v78 = *(v24 + 16);
  v79 = v23;
  v77 = v24 + 16;
  v78(v9);
  v76 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v92 = v15;
  v90 = 0uLL;
  v91 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v89 = 0;
  v28 = swift_allocObject();
  v85 = v73;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v89;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v87 = v9;
  v73[-4] = sub_1D5B4AA6C;
  v73[-3] = 0;
  v71 = sub_1D6708960;
  v72 = v30;
  v89 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v89;
  v80 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D666EE40(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EC886590, sub_1D666EE40, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v83 = v34;
  v84 = v33;
  v35 = sub_1D72647CC();
  v89 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v89;
  v37 = *(v11 + 36);
  v86 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v73[-4] = sub_1D615B4A4;
  v73[-3] = &v73[-6];
  v46 = v87;
  v45 = v88;
  v71 = sub_1D666EED4;
  v72 = v31;
  sub_1D5D2BC70(v87, sub_1D615B49C, v47, sub_1D615B4A4, &v73[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v53 = v86;
  }

  else
  {
    v74 = v38;
    v75 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v49 = v48;
    v50 = sub_1D66582DC();
    v51 = v86;
    sub_1D72647EC();
    v52 = v51;
    v73[1] = v50;
    v85 = v49;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v55 = v82;
    (v78)(v82, v79, v22);
    swift_storeEnumTagMultiPayload();
    v92 = v81;
    v88 = xmmword_1D728CF30;
    v90 = xmmword_1D728CF30;
    v91 = 0;
    v89 = 0;
    v56 = swift_allocObject();
    v87 = v73;
    *(v56 + 16) = v88;
    *(v56 + 32) = v89;
    v57 = v80;
    v58 = v75;
    *(v56 + 40) = v80;
    *(v56 + 48) = v58;
    MEMORY[0x1EEE9AC00](v56, v59);
    v73[-4] = sub_1D5B4AA6C;
    v73[-3] = 0;
    v71 = sub_1D6708960;
    v72 = v60;
    v89 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v88;
    *(v61 + 32) = v89;
    *(v61 + 40) = v57;
    *(v61 + 48) = v58;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v89 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v88;
    *(v63 + 40) = v89;
    v64 = *(v74 + 3);
    v65 = *(v74 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v74, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v73[-4] = sub_1D615B4A4;
    v73[-3] = &v73[-6];
    v71 = sub_1D6708960;
    v72 = v61;
    sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, &v73[-6], v64, v65);

    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v53 = v52;
  }

  return sub_1D5D2CFE8(v53, sub_1D666EDAC);
}

uint64_t FormatBindingSponsorshipExpressionLogic.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatBindingSponsorshipExpressionLogic, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatBindingSponsorshipExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v25, v22, v26, &off_1F51F6B58);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE20);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6418B08(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE20);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6418B08(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F30 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE20);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418B08(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F30 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE20);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418B08(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t static FormatArticleList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCustomNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v312 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v317 = &v312 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v316 = &v312 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v318 = &v312 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v319 = &v312 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v320 = &v312 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v321 = &v312 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v322 = &v312 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v323 = &v312 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v324 = (&v312 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v333 = &v312 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v312 - v41;
  sub_1D666FC8C(0);
  v334 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v312 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D666FDB4(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF256E8, sub_1D666FDB4, &unk_1D7321584);
  sub_1D5D2EE70(v4, v50, v52, v47, v4, v50, &type metadata for FormatVersions.JazzkonG, v48, v46, v51, &off_1F51F6BF8);
  swift_beginAccess();
  v53 = v2[2];
  v54 = v2[3];
  v330 = v2;
  v55 = qword_1EDF31EA8;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = sub_1D725BD1C();
  v57 = __swift_project_value_buffer(v56, qword_1EDFFCD18);
  v58 = *(v56 - 8);
  v59 = *(v58 + 16);
  v60 = v58 + 16;
  v329 = v57;
  v331 = v56;
  v59(v42);
  v61 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v62 = sub_1D725895C();
  v63 = (*(*(v62 - 8) + 48))(v8, 1, v62);
  v325 = v59;
  v326 = v60;
  v328 = v61;
  if (v63 != 1)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v86 = v333;
    v87 = v334;
    goto LABEL_9;
  }

  v327 = v53;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v64 = v334;
  v65 = &v46[*(v334 + 11)];
  v66 = *v65;
  v67 = *(v65 + 1);
  v336[0] = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v336[0];
  *(v68 + 40) = v66;
  *(v68 + 48) = v67;
  sub_1D666FD20(0);
  v70 = v69;
  sub_1D5B58B84(&qword_1EDF03798, sub_1D666FD20, MEMORY[0x1E69E6F60]);

  *&v332 = v70;
  v71 = sub_1D72647CC();
  v336[0] = 0;
  v72 = v46;
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 32) = 0;
  *(v73 + 16) = v71;
  *(v73 + 40) = v336[0];
  v74 = &v72[*(v64 + 36)];
  v76 = *(v74 + 3);
  v75 = *(v74 + 4);
  v77 = __swift_project_boxed_opaque_existential_1(v74, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  *(&v312 - 4) = sub_1D5B4AA6C;
  *(&v312 - 3) = 0;
  v310 = sub_1D666FF34;
  v311 = v68;
  v81 = v335;
  v83 = sub_1D5D2F7A4(v42, sub_1D615B49C, v82, sub_1D615B4A4, (&v312 - 6), v76, v75);
  *&v335 = v81;
  if (v81)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v84 = v72;
    return sub_1D5D2CFE8(v84, sub_1D666FC8C);
  }

  v113 = v83;

  if ((v113 & 1) == 0)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v46 = v72;
    v59 = v325;
    goto LABEL_8;
  }

  memset(v336, 0, 17);
  *&v346 = v327;
  *(&v346 + 1) = v54;
  v46 = v72;
  v114 = v335;
  sub_1D72647EC();

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  *&v335 = v114;
  v86 = v333;
  v87 = v334;
  if (v114)
  {
    v84 = v72;
    return sub_1D5D2CFE8(v84, sub_1D666FC8C);
  }

  v59 = v325;
LABEL_9:
  v88 = v330[4];
  v332 = *(v330 + 5);
  (v59)(v86, v329, v331);
  swift_storeEnumTagMultiPayload();
  *v336 = v88;
  *&v336[8] = v332;
  v332 = xmmword_1D728CF30;
  v346 = xmmword_1D728CF30;
  v347 = 0;
  v89 = &v46[*(v87 + 44)];
  v91 = *v89;
  v90 = *(v89 + 1);
  LOBYTE(v345) = 0;
  v92 = swift_allocObject();
  v327 = &v312;
  *(v92 + 16) = v332;
  *(v92 + 32) = v345;
  *(v92 + 40) = v91;
  *(v92 + 48) = v90;
  MEMORY[0x1EEE9AC00](v92, v93);
  *(&v312 - 4) = sub_1D5B4AA6C;
  *(&v312 - 3) = 0;
  v310 = sub_1D6708964;
  v311 = v94;
  LOBYTE(v345) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = v332;
  *(v95 + 32) = v345;
  v314 = v91;
  *(v95 + 40) = v91;
  *(v95 + 48) = v90;
  sub_1D666FD20(0);
  v97 = v96;
  v98 = sub_1D5B58B84(&qword_1EDF03798, sub_1D666FD20, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v315 = v97;
  v99 = sub_1D72647CC();
  LOBYTE(v345) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v332;
  *(v100 + 40) = v345;
  v101 = *(v334 + 9);
  v334 = v46;
  v102 = &v46[v101];
  v103 = *(v102 + 3);
  v104 = *(v102 + 4);
  v105 = __swift_project_boxed_opaque_existential_1(v102, v103);
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v312 - 4) = sub_1D615B4A4;
  *(&v312 - 3) = (&v312 - 6);
  v310 = sub_1D6708964;
  v311 = v95;
  v109 = v333;
  v110 = v335;
  sub_1D5D2BC70(v333, sub_1D615B49C, v111, sub_1D615B4A4, (&v312 - 6), v103, v104);
  if (v110)
  {
    v112 = v334;
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    v84 = v112;
    return sub_1D5D2CFE8(v84, sub_1D666FC8C);
  }

  *&v332 = v102;
  v313 = v90;

  sub_1D666FFC4();
  sub_1D72647EC();
  sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);

  v115 = v330[7];
  v116 = v324;
  (v325)(v324, v329, v331);
  swift_storeEnumTagMultiPayload();
  *&v346 = v115;
  v333 = xmmword_1D7297410;
  *v336 = xmmword_1D7297410;
  v336[16] = 0;
  LOBYTE(v345) = 0;
  v117 = swift_allocObject();
  v327 = &v312;
  *(v117 + 16) = v333;
  *(v117 + 32) = v345;
  v118 = v314;
  *&v335 = 0;
  v119 = v313;
  *(v117 + 40) = v314;
  *(v117 + 48) = v119;
  MEMORY[0x1EEE9AC00](v117, v120);
  *(&v312 - 4) = sub_1D5B4AA6C;
  *(&v312 - 3) = 0;
  v310 = sub_1D6708964;
  v311 = v121;
  LOBYTE(v345) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v333;
  *(v122 + 32) = v345;
  *(v122 + 40) = v118;
  *(v122 + 48) = v119;
  swift_retain_n();
  v123 = sub_1D72647CC();
  LOBYTE(v345) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v333;
  *(v124 + 40) = v345;
  v125 = *(v332 + 24);
  v126 = *(v332 + 32);
  v127 = __swift_project_boxed_opaque_existential_1(v332, v125);
  MEMORY[0x1EEE9AC00](v127, v128);
  MEMORY[0x1EEE9AC00](v129, v130);
  *(&v312 - 4) = sub_1D615B4A4;
  *(&v312 - 3) = (&v312 - 6);
  v310 = sub_1D6708964;
  v311 = v122;
  v131 = v335;
  sub_1D5D2BC70(v116, sub_1D615B49C, v132, sub_1D615B4A4, (&v312 - 6), v125, v126);
  if (v131)
  {
    sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

LABEL_51:
    v84 = v334;
    return sub_1D5D2CFE8(v84, sub_1D666FC8C);
  }

  sub_1D5CA1E90();
  sub_1D72647EC();
  *&v335 = 0;
  v327 = v98;
  sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);

  v133 = v330;
  v134 = v330[8];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v135 = v331;
  v136 = __swift_project_value_buffer(v331, qword_1EDFFCD68);
  v137 = v323;
  v138 = v325;
  (v325)(v323, v136, v135);
  swift_storeEnumTagMultiPayload();
  v333 = xmmword_1D72BAA60;
  *v336 = xmmword_1D72BAA60;
  v336[16] = 0;
  LOBYTE(v346) = 0;
  v139 = swift_allocObject();
  v141 = v139;
  *(v139 + 16) = v333;
  *(v139 + 32) = v346;
  v142 = v314;
  v143 = v313;
  *(v139 + 40) = v314;
  *(v139 + 48) = v143;
  if (v134)
  {
    v324 = &v312;
    *&v346 = v134;
    MEMORY[0x1EEE9AC00](v139, v140);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v141;
    LOBYTE(v345) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v333;
    *(v144 + 32) = v345;
    *(v144 + 40) = v142;
    *(v144 + 48) = v143;
    swift_retain_n();

    v145 = sub_1D72647CC();
    LOBYTE(v345) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = v145;
    *(v146 + 24) = v333;
    *(v146 + 40) = v345;
    v147 = *(v332 + 24);
    v148 = *(v332 + 32);
    v149 = __swift_project_boxed_opaque_existential_1(v332, v147);
    MEMORY[0x1EEE9AC00](v149, v150);
    MEMORY[0x1EEE9AC00](v151, v152);
    *(&v312 - 4) = sub_1D615B4A4;
    *(&v312 - 3) = (&v312 - 6);
    v310 = sub_1D6708964;
    v311 = v144;
    v153 = v335;
    v155 = sub_1D5D2F7A4(v137, sub_1D615B49C, v154, sub_1D615B4A4, (&v312 - 6), v147, v148);
    if (v153)
    {

      v156 = &v345;
LABEL_24:
      v157 = *(v156 - 32);
LABEL_50:
      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
      goto LABEL_51;
    }

    v161 = v155;
    v158 = 0;

    if (v161)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v138 = v325;
      v159 = v329;
      v133 = v330;
      v160 = v322;
    }

    else
    {

      v138 = v325;
      v159 = v329;
      v133 = v330;
      v160 = v322;
    }
  }

  else
  {

    v158 = v335;
    v159 = v329;
    v160 = v322;
  }

  sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v162 = v133[9];
  v138(v160, v159, v331);
  swift_storeEnumTagMultiPayload();
  if (*(v162 + 16))
  {
    v336[0] = 0;
    v163 = swift_allocObject();
    v335 = xmmword_1D72BAA70;
    *(v163 + 16) = xmmword_1D72BAA70;
    *(v163 + 32) = v336[0];
    *(v163 + 40) = v314;
    *(v163 + 48) = v143;

    v164 = v158;
    v165 = v334;
    v166 = sub_1D72647CC();
    v336[0] = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v166;
    *(v167 + 24) = v335;
    *(v167 + 40) = v336[0];
    v168 = *(v332 + 24);
    v169 = *(v332 + 32);
    v170 = __swift_project_boxed_opaque_existential_1(v332, v168);
    MEMORY[0x1EEE9AC00](v170, v171);
    MEMORY[0x1EEE9AC00](v172, v173);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v163;
    v175 = sub_1D5D2F7A4(v160, sub_1D615B49C, v174, sub_1D615B4A4, (&v312 - 6), v168, v169);
    if (v164)
    {
      sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v165, sub_1D666FC8C);
    }

    v176 = v175;
    v177 = v313;

    if (v176)
    {
      *v336 = v335;
      v336[16] = 0;
      v345 = v162;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v178 = v322;
      *&v335 = 0;

      sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v335 = 0;
      sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
    }

    v133 = v330;
    v143 = v177;
  }

  else
  {
    *&v335 = v158;
    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
  }

  v179 = v133[10];
  v180 = v321;
  (v325)();
  swift_storeEnumTagMultiPayload();
  v333 = xmmword_1D72BAA80;
  *v336 = xmmword_1D72BAA80;
  v336[16] = 0;
  LOBYTE(v345) = 0;
  v181 = swift_allocObject();
  v183 = v181;
  *(v181 + 16) = v333;
  *(v181 + 32) = v345;
  v184 = v314;
  *(v181 + 40) = v314;
  *(v181 + 48) = v143;
  if (v179)
  {
    v345 = v179;
    MEMORY[0x1EEE9AC00](v181, v182);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v183;
    LOBYTE(v344) = 0;
    v185 = swift_allocObject();
    *(v185 + 16) = v333;
    *(v185 + 32) = v344;
    *(v185 + 40) = v184;
    *(v185 + 48) = v143;
    swift_retain_n();

    v186 = sub_1D72647CC();
    LOBYTE(v344) = 0;
    v187 = swift_allocObject();
    *(v187 + 16) = v186;
    *(v187 + 24) = v333;
    *(v187 + 40) = v344;
    v188 = *(v332 + 24);
    v189 = *(v332 + 32);
    v190 = __swift_project_boxed_opaque_existential_1(v332, v188);
    MEMORY[0x1EEE9AC00](v190, v191);
    MEMORY[0x1EEE9AC00](v192, v193);
    *(&v312 - 4) = sub_1D615B4A4;
    *(&v312 - 3) = (&v312 - 6);
    v310 = sub_1D6708964;
    v311 = v185;
    v194 = v335;
    v196 = sub_1D5D2F7A4(v321, sub_1D615B49C, v195, sub_1D615B4A4, (&v312 - 6), v188, v189);
    if (v194)
    {

      v157 = v321;
      goto LABEL_50;
    }

    v198 = v196;

    if (v198)
    {
      type metadata accessor for FormatCustomNodeStyle();
      sub_1D5B58B84(&qword_1EDF0E2E8, type metadata accessor for FormatCustomNodeStyle, &protocol conformance descriptor for FormatCustomNodeStyle);
      sub_1D72647EC();
      v143 = v313;
      v133 = v330;
      v197 = 0;

      v180 = v321;
    }

    else
    {

      v143 = v313;
      v197 = 0;
      v180 = v321;
      v133 = v330;
    }

    v184 = v314;
  }

  else
  {

    v197 = v335;
  }

  sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
  v199 = v133[11];
  v200 = v325;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v201 = v331;
  v202 = __swift_project_value_buffer(v331, qword_1EDFFCD50);
  v203 = v320;
  v200(v320, v202, v201);
  swift_storeEnumTagMultiPayload();
  v335 = xmmword_1D72BAA90;
  *v336 = xmmword_1D72BAA90;
  v336[16] = 0;
  LOBYTE(v345) = 0;
  v204 = swift_allocObject();
  v206 = v204;
  *(v204 + 16) = v335;
  *(v204 + 32) = v345;
  *(v204 + 40) = v184;
  *(v204 + 48) = v143;
  v324 = v202;
  if (v199)
  {
    v207 = v143;
    v208 = v197;
    *&v333 = &v312;
    v345 = v199;
    MEMORY[0x1EEE9AC00](v204, v205);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v206;
    LOBYTE(v344) = 0;
    v209 = swift_allocObject();
    *(v209 + 16) = v335;
    *(v209 + 32) = v344;
    *(v209 + 40) = v184;
    *(v209 + 48) = v207;
    swift_retain_n();

    v210 = sub_1D72647CC();
    LOBYTE(v344) = 0;
    v211 = swift_allocObject();
    *(v211 + 16) = v210;
    *(v211 + 24) = v335;
    *(v211 + 40) = v344;
    v212 = *(v332 + 24);
    v213 = *(v332 + 32);
    v214 = __swift_project_boxed_opaque_existential_1(v332, v212);
    MEMORY[0x1EEE9AC00](v214, v215);
    MEMORY[0x1EEE9AC00](v216, v217);
    *(&v312 - 4) = sub_1D615B4A4;
    *(&v312 - 3) = (&v312 - 6);
    v310 = sub_1D6708964;
    v311 = v209;
    v219 = sub_1D5D2F7A4(v203, sub_1D615B49C, v218, sub_1D615B4A4, (&v312 - 6), v212, v213);
    if (v208)
    {

      v157 = v203;
      goto LABEL_50;
    }

    v220 = v219;

    if (v220)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v197 = 0;
    }

    else
    {

      v197 = 0;
    }

    v143 = v313;
    v133 = v330;
    v202 = v324;
  }

  else
  {
  }

  *&v335 = v197;

  sub_1D5D2CFE8(v320, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v221 = v133[12];
  v222 = v319;
  v223 = v325;
  (v325)(v319, v329, v331);
  swift_storeEnumTagMultiPayload();
  if (v221)
  {
    v336[0] = 0;
    v224 = v222;
    v225 = swift_allocObject();
    v333 = xmmword_1D72BAAA0;
    *(v225 + 16) = xmmword_1D72BAAA0;
    *(v225 + 32) = v336[0];
    *(v225 + 40) = v314;
    *(v225 + 48) = v143;

    v226 = v334;
    v227 = sub_1D72647CC();
    v336[0] = 0;
    v228 = swift_allocObject();
    *(v228 + 16) = v227;
    *(v228 + 24) = v333;
    *(v228 + 40) = v336[0];
    v229 = *(v332 + 24);
    v230 = *(v332 + 32);
    v231 = __swift_project_boxed_opaque_existential_1(v332, v229);
    MEMORY[0x1EEE9AC00](v231, v232);
    MEMORY[0x1EEE9AC00](v233, v234);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v225;
    v235 = v335;
    v237 = sub_1D5D2F7A4(v224, sub_1D615B49C, v236, sub_1D615B4A4, (&v312 - 6), v229, v230);
    *&v335 = v235;
    if (v235)
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

      v84 = v226;
      return sub_1D5D2CFE8(v84, sub_1D666FC8C);
    }

    v240 = v237;

    if (v240)
    {
      *v336 = v333;
      v336[16] = 0;
      v344 = v221;
      v241 = v335;
      sub_1D72647EC();
      if (v241)
      {
        sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v334, sub_1D666FC8C);
      }

      *&v335 = 0;
    }

    sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
    v223 = v325;
    v238 = v318;
    v239 = v314;
    v143 = v313;
    v202 = v324;
  }

  else
  {
    sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
    v238 = v318;
    v239 = v314;
  }

  swift_beginAccess();
  v242 = v133[13];
  v223(v238, v202, v331);
  swift_storeEnumTagMultiPayload();
  if (v242 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v336[0] = 0;
    v243 = swift_allocObject();
    v333 = xmmword_1D72BAAB0;
    *(v243 + 16) = xmmword_1D72BAAB0;
    *(v243 + 32) = v336[0];
    *(v243 + 40) = v239;
    *(v243 + 48) = v143;

    sub_1D5EB1500(v242);
    v244 = v334;
    v245 = sub_1D72647CC();
    v336[0] = 0;
    v246 = swift_allocObject();
    *(v246 + 16) = v245;
    *(v246 + 24) = v333;
    *(v246 + 40) = v336[0];
    v247 = *(v332 + 24);
    v248 = *(v332 + 32);
    v249 = __swift_project_boxed_opaque_existential_1(v332, v247);
    MEMORY[0x1EEE9AC00](v249, v250);
    MEMORY[0x1EEE9AC00](v251, v252);
    *(&v312 - 4) = sub_1D5B4AA6C;
    *(&v312 - 3) = 0;
    v310 = sub_1D6708964;
    v311 = v243;
    v253 = v335;
    v255 = sub_1D5D2F7A4(v238, sub_1D615B49C, v254, sub_1D615B4A4, (&v312 - 6), v247, v248);
    *&v335 = v253;
    if (v253)
    {

      sub_1D5EB15C4(v242);
      sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);
      v84 = v244;
      return sub_1D5D2CFE8(v84, sub_1D666FC8C);
    }

    v256 = v255;

    if (v256)
    {
      *v336 = v333;
      v336[16] = 0;
      v342 = v242;
      sub_1D5DF6A60();
      v257 = v335;
      sub_1D72647EC();
      if (v257)
      {
        sub_1D5EB15C4(v342);
        v156 = &v343;
        goto LABEL_24;
      }

      sub_1D5EB15C4(v342);
      sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
      *&v335 = 0;
      v133 = v330;
    }

    else
    {
      sub_1D5EB15C4(v242);
      sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
    }

    v223 = v325;
    v143 = v313;
    v239 = v314;
  }

  swift_beginAccess();
  v258 = *(v133 + 112);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v259 = v331;
  v260 = __swift_project_value_buffer(v331, qword_1EDFFCD00);
  v261 = v316;
  v223(v316, v260, v259);
  swift_storeEnumTagMultiPayload();
  if (v258)
  {
    sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);
    goto LABEL_88;
  }

  v336[0] = 0;
  v262 = swift_allocObject();
  v333 = xmmword_1D72BAAC0;
  *(v262 + 16) = xmmword_1D72BAAC0;
  *(v262 + 32) = v336[0];
  *(v262 + 40) = v239;
  *(v262 + 48) = v143;

  v263 = v334;
  v264 = sub_1D72647CC();
  v336[0] = 0;
  v265 = swift_allocObject();
  *(v265 + 16) = v264;
  *(v265 + 24) = v333;
  *(v265 + 40) = v336[0];
  v266 = *(v332 + 24);
  v267 = *(v332 + 32);
  v268 = __swift_project_boxed_opaque_existential_1(v332, v266);
  MEMORY[0x1EEE9AC00](v268, v269);
  MEMORY[0x1EEE9AC00](v270, v271);
  *(&v312 - 4) = sub_1D5B4AA6C;
  *(&v312 - 3) = 0;
  v310 = sub_1D6708964;
  v311 = v262;
  v272 = v335;
  v274 = sub_1D5D2F7A4(v261, sub_1D615B49C, v273, sub_1D615B4A4, (&v312 - 6), v266, v267);
  if (!v272)
  {
    v275 = v274;
    *&v335 = 0;

    if (v275)
    {
      *v336 = v333;
      v336[16] = 0;
      LOBYTE(v340) = 0;
      v276 = v335;
      sub_1D72647EC();
      if (v276)
      {
        v156 = &v341;
        goto LABEL_24;
      }

      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
      *&v335 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
    }

    v133 = v330;
    v143 = v313;
LABEL_88:
    v277 = v133[15];
    v278 = v133[16];
    v279 = v133[17];
    v280 = v133[18];
    v281 = v133[19];
    v282 = v133[20];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v283 = v331;
    v284 = __swift_project_value_buffer(v331, qword_1EDFFCE38);
    (v325)(v317, v284, v283);
    swift_storeEnumTagMultiPayload();
    v333 = xmmword_1D72BAAD0;
    v340 = xmmword_1D72BAAD0;
    v341 = 0;
    v336[0] = 0;
    v285 = swift_allocObject();
    v287 = v285;
    *(v285 + 16) = v333;
    *(v285 + 32) = v336[0];
    v288 = v314;
    *(v285 + 40) = v314;
    *(v285 + 48) = v143;
    if (v277)
    {
      v331 = &v312;
      *v336 = v277;
      *&v336[8] = v278;
      *&v336[16] = v279;
      v337 = v280;
      v338 = v281;
      v339 = v282;
      MEMORY[0x1EEE9AC00](v285, v286);
      v330 = &v312 - 6;
      *(&v312 - 4) = sub_1D5B4AA6C;
      *(&v312 - 3) = 0;
      v310 = sub_1D6708964;
      v311 = v287;
      v348 = 0;
      v289 = swift_allocObject();
      v290 = v143;
      v291 = v289;
      *(v289 + 16) = v333;
      *(v289 + 32) = v348;
      *(v289 + 40) = v288;
      *(v289 + 48) = v290;
      swift_retain_n();
      sub_1D5EB1D80(v277, v278, v279, v280, v281, v282);
      v292 = v334;
      v293 = sub_1D72647CC();
      v348 = 0;
      v294 = swift_allocObject();
      *(v294 + 16) = v293;
      *(v294 + 24) = v333;
      *(v294 + 40) = v348;
      v295 = *(v332 + 24);
      v296 = *(v332 + 32);
      v297 = __swift_project_boxed_opaque_existential_1(v332, v295);
      MEMORY[0x1EEE9AC00](v297, v298);
      MEMORY[0x1EEE9AC00](v299, v300);
      v301 = v330;
      *(&v312 - 4) = sub_1D615B4A4;
      *(&v312 - 3) = v301;
      v310 = sub_1D6708964;
      v311 = v291;
      v302 = v317;
      v303 = v335;
      v305 = sub_1D5D2F7A4(v317, sub_1D615B49C, v304, sub_1D615B4A4, (&v312 - 6), v295, v296);
      *&v335 = v303;
      if (v303)
      {

LABEL_93:
        v306 = v338;

        sub_1D5CBF568(v306);

        sub_1D5D2CFE8(v302, type metadata accessor for FormatVersionRequirement);
        v84 = v292;
        return sub_1D5D2CFE8(v84, sub_1D666FC8C);
      }

      v307 = v305;

      if (v307)
      {
        sub_1D6659A24();
        v308 = v335;
        sub_1D72647EC();
        *&v335 = v308;
        if (v308)
        {

          v292 = v334;
          v302 = v317;
          goto LABEL_93;
        }
      }

      v309 = v338;

      sub_1D5CBF568(v309);

      sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
    }

    v84 = v334;
    return sub_1D5D2CFE8(v84, sub_1D666FC8C);
  }

  sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v263, sub_1D666FC8C);
}

uint64_t FormatMenuTitle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v29 = *v1;
  v16 = v1[2];
  v17 = v1[3];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMenuTitle, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatMenuTitle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v19, v14, v20, &off_1F51F6B78);
  if ((v17 & 4) != 0)
  {
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCDF8);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BA210(1, v29, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCDF8);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BA040(0, v29, v15, v16, v17, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

void sub_1D64383A4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F703C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6FE8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F7064();
    sub_1D72647DC();
  }
}

void sub_1D643853C(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67041A4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670406C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6704150();
    sub_1D72647DC();
  }
}

void sub_1D64386D4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3 & 1;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D670252C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67024D8();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6327658();
    sub_1D72647DC();
  }
}

void sub_1D6438870(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6702554;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670257C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D67025D0();
    sub_1D72647DC();
  }
}

void sub_1D6438A04(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D66F54FC;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5524();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D61D3D58();
    sub_1D72647DC();
  }
}

void sub_1D6438B9C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6703E50;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703E78();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66A821C();
    sub_1D72647DC();
  }
}

void sub_1D6438D30(char a1, __int128 *a2, uint64_t a3)
{
  v21 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v8 = a2[3];
  v19 = a2[2];
  v20 = v8;
  sub_1D5D30DC4(0);
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D67092C8;
  v15[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703E78();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6703ECC();
    sub_1D72647DC();
  }
}

void sub_1D6438ED0(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 6);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67005C4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67005EC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6700640();
    sub_1D72647DC();
  }
}

void sub_1D6439078(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709260;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67005EC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6700694();
    sub_1D72647DC();
  }
}

void sub_1D643920C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F434C;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D66F1248, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F42F8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D60B27FC();
    sub_1D72647DC();
  }
}

uint64_t FormatNodeAccessibilityRole.Position.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6670018(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66700AC(0);
  sub_1D5B58B84(&qword_1EC8865C0, sub_1D66700AC, &unk_1D7321584);
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

      v20 = sub_1D6628490(0x6E6F697469736F70, 0xE800000000000000);
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

uint64_t FormatNodeAccessibilityRole.Position.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D667022C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66700AC(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8865C0, sub_1D66700AC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatNodeAccessibilityRole.Position, v16, v18, v13, &type metadata for FormatNodeAccessibilityRole.Position, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
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
  v42 = sub_1D6708968;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66702C0(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EC8865D8, sub_1D66702C0, MEMORY[0x1E69E6F60]);
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
  v42 = sub_1D6670354;
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

  return sub_1D5D2CFE8(v11, sub_1D667022C);
}

uint64_t FormatNodeAccessibilityRole.encode(to:)(void *a1)
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
  v39 = *v1;
  v23 = *(v1 + 8);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatNodeAccessibilityRole, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatNodeAccessibilityRole, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  if (v23 >> 6)
  {
    if (v23 >> 6 == 1)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCE80);
      (*(*(v28 - 8) + 16))(v6, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64386D4(3, v39, v23 & 1, v6);
      v30 = v6;
    }

    else if (v39 | v23 ^ 0x80)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE98);
      (*(*(v35 - 8) + 16))(v10, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641AC1C(2, v10);
      v30 = v10;
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
      sub_1D641AC1C(0, v18);
      v30 = v18;
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
    (*(*(v31 - 8) + 16))(v14, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64386D4(1, v39, v23 & 1, v14);
    v30 = v14;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Color.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v52 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50 - v23;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v2;
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Color, &type metadata for FormatCodingKeys, v33, v31, &type metadata for FormatIssueBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v30, v28, v32, &off_1F51F6C18);
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCD50);
      v39 = v51;
      (*(*(v43 - 8) + 16))(v51, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v40 = 3;
    }

    else if (v29 == 4)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
      v39 = v52;
      (*(*(v37 - 8) + 16))(v52, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v40 = 4;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v47 = sub_1D725BD1C();
      v48 = __swift_project_value_buffer(v47, qword_1EDFFCD50);
      v39 = v53;
      (*(*(v47 - 8) + 16))(v53, v48, v47);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v40 = 5;
    }

    sub_1D642256C(v40, v39);
    v36 = v39;
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
      (*(*(v34 - 8) + 16))(v20, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642256C(1, v20);
      v36 = v20;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
      (*(*(v45 - 8) + 16))(v16, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D642256C(2, v16);
      v36 = v16;
    }
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725BD1C();
    v42 = __swift_project_value_buffer(v41, qword_1EDFFCD98);
    (*(*(v41 - 8) + 16))(v24, v42, v41);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642256C(0, v24);
    v36 = v24;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v28, sub_1D5D30DC4);
}

uint64_t FormatOptionsNodeStatementModifier.Integer.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementModifier.Integer, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatOptionsNodeStatementModifier.Integer, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6419058(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatAbsoluteURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D5C2E60C(0, &qword_1EDF43AC8, sub_1D5C6838C, sub_1D5C683E0, &type metadata for FormatQueryParameter);
  v43 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v40 = &v35 - v7;
  v8 = sub_1D72585BC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6670478(0);
  v13 = v12;
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667050C(0);
  sub_1D5B58B84(&qword_1EDF25658, sub_1D667050C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v31 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v17 = v40;
  v36 = a1;
  v37 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v41;
  v21 = v42;
  v22 = v43;
  if (v19)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 48);
      while (*v25 != 1)
      {
        v25 += 24;
        if (!--v24)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v25 - 2);
      v27 = *(v25 - 1);

      v29 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x6574656D61726170, 0xEA00000000007372);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v30 = v28;
      *(v30 + 8) = v27;
      *(v30 + 16) = v29;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v48 + 8))(v16, v13);
      a1 = v36;
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5B58B84(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v46 = 0uLL;
  v47 = 0;
  sub_1D726431C();
  v35 = xmmword_1D728CF30;
  v46 = xmmword_1D728CF30;
  v47 = 0;
  if (sub_1D726434C())
  {
    v44 = v35;
    v45 = 0;
    sub_1D5C8000C();
    sub_1D726431C();
    v26 = v39;
    v33 = sub_1D725A74C();
    (*(v38 + 8))(v17, v22);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
    v26 = v39;
  }

  v34 = v36;
  (*(v48 + 8))(v16, v13);
  (*(v20 + 32))(v26, v37, v21);
  *(v26 + *(type metadata accessor for FormatAbsoluteURL(0) + 20)) = v33;
  v31 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t FormatAbsoluteURL.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v77 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v72 - v7;
  sub_1D667068C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = type metadata accessor for FormatAbsoluteURL(0);
  sub_1D667050C(0);
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF25658, sub_1D667050C, &unk_1D7321584);
  v76 = v16;
  sub_1D5D2EE70(v16, v18, v20, v14, v16, v18, &type metadata for FormatVersions.JazzkonC, v15, v13, v19, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v75 = v21;
  v72[2] = v23 + 16;
  v73 = v24;
  v24(v8, v22, v21);
  v72[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = 0uLL;
  v86 = 0;
  v25 = &v13[*(v10 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v87) = 0;
  v28 = swift_allocObject();
  *&v82 = v72;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v87;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v81 = &v72[-6];
  v72[-4] = sub_1D5B4AA6C;
  v72[-3] = 0;
  v70 = sub_1D670896C;
  v71 = v30;
  LOBYTE(v87) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v87;
  v74 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D6670720(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF036D8, sub_1D6670720, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  LOBYTE(v87) = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v87;
  v37 = v13;
  v38 = &v13[*(v10 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = v81;
  v72[-4] = sub_1D615B4A4;
  v72[-3] = v45;
  v70 = sub_1D670896C;
  v71 = v31;
  v46 = v83;
  sub_1D5D2BC70(v8, sub_1D615B49C, v47, sub_1D615B4A4, &v72[-6], v39, v40);
  v84 = v37;
  if (v46)
  {
    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);

    v49 = v84;
  }

  else
  {
    v83 = v27;

    sub_1D72585BC();
    sub_1D5B58B84(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    v48 = v78;
    sub_1D72647EC();
    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);

    v51 = *(v48 + *(v76 + 20));
    v52 = qword_1EDF31EA8;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = v75;
    v54 = __swift_project_value_buffer(v75, qword_1EDFFCD18);
    v55 = v77;
    v73(v77, v54, v53);
    swift_storeEnumTagMultiPayload();
    v56 = v83;
    v57 = v74;
    if (*(v51 + 16) && (LOBYTE(v85) = 0, v58 = swift_allocObject(), v82 = xmmword_1D728CF30, *(v58 + 16) = xmmword_1D728CF30, *(v58 + 32) = v85, *(v58 + 40) = v57, *(v58 + 48) = v56, , v59 = sub_1D72647CC(), LOBYTE(v85) = 0, v60 = swift_allocObject(), *(v60 + 16) = v59, *(v60 + 24) = v82, *(v60 + 40) = v85, v61 = *(v38 + 3), v62 = *(v38 + 4), v63 = __swift_project_boxed_opaque_existential_1(v38, v61), MEMORY[0x1EEE9AC00](v63, v64), MEMORY[0x1EEE9AC00](v65, v66), v72[-4] = sub_1D5B4AA6C, v72[-3] = 0, v70 = sub_1D66707B4, v71 = v58, LOBYTE(v61) = sub_1D5D2F7A4(v55, sub_1D615B49C, v67, sub_1D615B4A4, &v72[-6], v61, v62), , , (v61 & 1) != 0))
    {
      v85 = v82;
      v86 = 0;
      v87 = v51;
      sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
      sub_1D6670830();
      v68 = v84;
      sub_1D72647EC();

      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
      v49 = v68;
    }

    else
    {
      v69 = v84;
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

      v49 = v69;
    }
  }

  return sub_1D5D2CFE8(v49, sub_1D667068C);
}

uint64_t sub_1D643B7F0(uint64_t a1)
{
  v2 = sub_1D66705E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D643B82C(uint64_t a1)
{
  v2 = sub_1D66705E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAccessibility.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v51;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v51 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t FormatAccessibilityContainer.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAccessibilityContainer, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatAccessibilityContainer, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A820(2, v10);
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
      sub_1D641A820(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A820(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A820(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D643C514()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D643C5E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D643C698(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D643C760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664638(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D643C790(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62615461746164;
  v4 = 0xE800000000000000;
  v5 = 0x6B72616D646E616CLL;
  if (*v1 != 2)
  {
    v5 = 0x6369746E616D6573;
    v4 = 0xED000070756F7247;
  }

  if (*v1)
  {
    v3 = 1953720684;
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

uint64_t FormatAccessibilityContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41[-v9 - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41[-v13 - 8];
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAccessibilityContent, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatAccessibilityContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = qword_1EDF31EB0;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638EB90(1, v24, v25, v26, v10);

      v30 = v10;
    }

    else
    {
      v34 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = qword_1EDF31EB0;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638ED5C(2, v34, v35, v6);

      v30 = v6;
    }
  }

  else
  {
    v31 = *(v19 + 32);
    v42[0] = *(v19 + 16);
    v42[1] = v31;
    v42[2] = *(v19 + 48);
    v43 = *(v19 + 64);
    sub_1D5FD78CC(v42, v41);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
    (*(*(v32 - 8) + 16))(v14, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638E9E8(0, v42, v14);
    sub_1D5FD7B18(v42);
    v30 = v14;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D643CD5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646E616D6D6F63;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x676E69646E6962;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x646E616D6D6F63;
  if (*a2 != 1)
  {
    v8 = 0x656E696C6E69;
    v3 = 0xE600000000000000;
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

uint64_t sub_1D643CE54()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D643CEF4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D643CF80(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D643D01C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646E616D6D6F63;
  if (v2 != 1)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
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

uint64_t FormatAccessibilityLayoutValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v77 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v72 - v10;
  sub_1D6670C78(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6670DA0(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886628, sub_1D6670DA0, &unk_1D7321584);
  sub_1D5D2EE70(v4, v20, v22, v17, v4, v20, &type metadata for FormatVersions.JazzkonC, v18, v16, v21, &off_1F51F6C78);
  v23 = v2[2];
  v24 = v2[3];
  v76 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v74 = v26;
  v75 = v25;
  v72[2] = v27 + 16;
  v73 = v28;
  (v28)(v11);
  v72[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v23;
  v87 = v24;
  v84 = 0uLL;
  v85 = 0;
  v29 = &v16[*(v13 + 44)];
  v80 = v11;
  v31 = *v29;
  v30 = *(v29 + 1);
  v88 = 0;
  v32 = swift_allocObject();
  v81 = v72;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v88;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v72[-4] = sub_1D5B4AA6C;
  v72[-3] = 0;
  v70 = sub_1D6708970;
  v71 = v34;
  v88 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v88;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  sub_1D6670D0C(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC886630, sub_1D6670D0C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v38;
  v79 = v37;
  v39 = sub_1D72647CC();
  v88 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v88;
  v41 = *(v13 + 36);
  v83 = v16;
  v42 = &v16[v41];
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v72[-4] = sub_1D615B4A4;
  v72[-3] = &v72[-6];
  v49 = v80;
  v70 = sub_1D6670F20;
  v71 = v35;
  v50 = v82;
  sub_1D5D2BC70(v80, sub_1D615B49C, v51, sub_1D615B4A4, &v72[-6], v43, v44);
  if (v50)
  {
    v52 = v83;
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v72[0] = v30;

    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v54 = v77;
    v55 = *(v76 + 32);
    v73(v77, v74, v75);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v86) = v55;
    v82 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    v88 = 0;
    v56 = swift_allocObject();
    v81 = v72;
    *(v56 + 16) = v82;
    *(v56 + 32) = v88;
    v57 = v72[0];
    *(v56 + 40) = v31;
    *(v56 + 48) = v57;
    MEMORY[0x1EEE9AC00](v56, v58);
    v72[-4] = sub_1D5B4AA6C;
    v72[-3] = 0;
    v70 = sub_1D6708970;
    v71 = v59;
    v88 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v82;
    *(v60 + 32) = v88;
    *(v60 + 40) = v31;
    *(v60 + 48) = v57;
    swift_retain_n();
    v61 = sub_1D72647CC();
    v88 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v82;
    *(v62 + 40) = v88;
    v63 = *(v42 + 3);
    v64 = *(v42 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v42, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    v72[-4] = sub_1D615B4A4;
    v72[-3] = &v72[-6];
    v70 = sub_1D6708970;
    v71 = v60;
    sub_1D5D2BC70(v54, sub_1D615B49C, v69, sub_1D615B4A4, &v72[-6], v63, v64);

    sub_1D6207A48();
    v52 = v83;
    sub_1D72647EC();
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v52, sub_1D6670C78);
}

uint64_t sub_1D643D95C()
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
    return 0x696669746E656469;
  }
}

uint64_t sub_1D643D9B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6671194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D643D9E8(uint64_t a1)
{
  v2 = sub_1D6670E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D643DA24(uint64_t a1)
{
  v2 = sub_1D6670E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D643DA60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66712B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D643DA98(uint64_t a1)
{
  v2 = sub_1D5C66774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D643DAD4(uint64_t a1)
{
  v2 = sub_1D5C66774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAccessibilityProperty.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v62 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v60 - v26;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v33 = *(v2 + 8);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = sub_1D5C30408();
  v65 = v31;
  sub_1D5D2EE70(&type metadata for FormatAccessibilityProperty, &type metadata for FormatCodingKeys, v37, v34, &type metadata for FormatAccessibilityProperty, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v35, v31, v36, &off_1F51F6C78);
  if (v33)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  v39 = (v32 >> 60) & 3 | v38;
  if (v39 > 2)
  {
    if (v39 > 4)
    {
      v40 = v65;
      if (v39 != 5)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
        v23 = v64;
        (*(*(v58 - 8) + 16))(v64, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D638C8C4(6, v32, v23);
        goto LABEL_30;
      }

      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
      v23 = v63;
      (*(*(v48 - 8) + 16))(v63, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v32 & 0xCFFFFFFFFFFFFFFFLL;
      v44 = 5;
    }

    else
    {
      v40 = v65;
      if (v39 == 3)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v41 = sub_1D725BD1C();
        v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
        v23 = v61;
        (*(*(v41 - 8) + 16))(v61, v42, v41);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = v32 & 0xCFFFFFFFFFFFFFFFLL;
        v44 = 3;
      }

      else
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCD30);
        v23 = v62;
        (*(*(v55 - 8) + 16))(v62, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v44 = 4;
        v43 = v32;
      }
    }

    v47 = v23;
LABEL_29:
    sub_1D638C730(v44, v43, v47);
LABEL_30:
    v52 = v23;
    goto LABEL_31;
  }

  if (v39)
  {
    if (v39 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
      (*(*(v45 - 8) + 16))(v23, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v32 & 0xCFFFFFFFFFFFFFFFLL;
      v44 = 1;
      v47 = v23;
      v40 = v65;
      goto LABEL_29;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
    (*(*(v53 - 8) + 16))(v19, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v40 = v65;
    sub_1D638C730(2, v32 & 0xCFFFFFFFFFFFFFFFLL, v19);
    v52 = v19;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v50 = sub_1D725BD1C();
    v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
    (*(*(v50 - 8) + 16))(v27, v51, v50);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v40 = v65;
    sub_1D638C730(0, v32, v27);
    v52 = v27;
  }

LABEL_31:
  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v40, sub_1D5D30DC4);
}

double sub_1D643E298(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D643E398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE800000000000000;
  v6 = 0x65676175676E616CLL;
  if (v2 != 5)
  {
    v6 = 0x7469617274;
    v5 = 0xE500000000000000;
  }

  v7 = 1886152040;
  if (v2 != 3)
  {
    v7 = 1953393000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v8 = 0x65756C6176;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatAccessibilityTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v94 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v92 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v90 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v89 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v88 = &v80 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v87 = &v80 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v86 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v85 = &v80 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v84 = &v80 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v83 = &v80 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v82 = &v80 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v81 = &v80 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v98 = &v80 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v97 = &v80 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v96 = &v80 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v95 = &v80 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v80 - v59;
  v61 = *v1;
  v99 = a1;
  v100 = v61;
  v63 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v63);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(*(v64 - 8) + 16);
  (v66)(v60, v65, v64);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v67 = v101;
  sub_1D5D2BEC4(v60, sub_1D5B4AA6C, 0, v63, v62);
  if (v67)
  {
    return sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  v69 = v99;
  v70 = v99[3];
  v101 = v99[4];
  v71 = __swift_project_boxed_opaque_existential_1(v99, v70);
  switch(v100)
  {
    case 1:
      (v66)(v96, v65, v64);
      v72 = v96;
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 2:
      (v66)(v97, v65, v64);
      v72 = v97;
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 3:
      (v66)(v98, v65, v64);
      v72 = v98;
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 4:
      v74 = v81;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 5:
      v74 = v82;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 6:
      v74 = v83;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 7:
      v74 = v84;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 8:
      v74 = v85;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 9:
      v74 = v86;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 10:
      v74 = v87;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 11:
      v74 = v88;
      v66();
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 12:
      v74 = v89;
      v66();
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v76 = v74;
      v77 = v70;
      v78 = v101;
      goto LABEL_27;
    case 13:
      v98 = v71;
      v73 = v90;
      (v66)(v90, v65, v64);
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    case 14:
      v98 = v71;
      v73 = v91;
      (v66)(v91, v65, v64);
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    case 15:
      v98 = v71;
      v73 = v92;
      (v66)(v92, v65, v64);
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    case 16:
      v98 = v71;
      v73 = v93;
      (v66)(v93, v65, v64);
      swift_storeEnumTagMultiPayload();
LABEL_22:
      sub_1D5D2BEC4(v73, sub_1D5B4AA6C, 0, v70, v101);
      v79 = v73;
      goto LABEL_28;
    case 17:
      v98 = v71;
      v75 = v94;
      (v66)(v94, v65, v64);
      swift_storeEnumTagMultiPayload();
      v74 = v75;
      v76 = v75;
      v77 = v70;
      v78 = v101;
LABEL_27:
      sub_1D5D2BEC4(v76, sub_1D5B4AA6C, 0, v77, v78);
      v79 = v74;
LABEL_28:
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      (v66)(v95, v65, v64);
      v72 = v95;
      swift_storeEnumTagMultiPayload();
LABEL_18:
      sub_1D5D2BEC4(v72, sub_1D5B4AA6C, 0, v70, v101);
      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  sub_1D7264B3C();
  v103 = v100;
  FormatAccessibilityTrait.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v102, v102[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v102);
}

uint64_t FormatActivityItemsBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v20 + 16) = &unk_1F5113FF0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6670F9C();
    v25 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    v25 = xmmword_1D7279980;
    if (v26)
    {
      sub_1D6670FF0();
    }

    else
    {
      sub_1D6671044();
    }

    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatActivityItemsBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatActivityItemsBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatActivityItemsBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
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
    sub_1D638E85C(1, v6);
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
    sub_1D638E6D0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatActivityItemsConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v21 + 16) = &unk_1F5114040;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6671098();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D66710EC();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D643FA74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D667146C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D643FAAC(uint64_t a1)
{
  v2 = sub_1D5CC31E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D643FAE8(uint64_t a1)
{
  v2 = sub_1D5CC31E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAdMetricsNodeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAdMetricsNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatAdMetricsNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v11, v9, v12, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDF8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641B2C0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatAdMetricsNodeContent.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAdMetricsNodeContent, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatAdMetricsNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v11, v9, v12, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDF8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638E554(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D643FF6C(char a1)
{
  result = 0x7465736E69;
  switch(a1)
  {
    case 1:
      return 0x726F68636E61;
    case 2:
      return 0x74657366666FLL;
    case 3:
      return 0x747265766E69;
    case 4:
      return 0x69577473756A6461;
    case 5:
      return 0x65487473756A6461;
    case 6:
      v5 = 1466853741;
      return v5 | 0x6874646900000000;
    case 7:
      v5 = 1467507053;
      return v5 | 0x6874646900000000;
    case 8:
      v4 = 1215195501;
      return v4 | 0x6867696500000000;
    case 9:
      v4 = 1215848813;
      return v4 | 0x6867696500000000;
    case 10:
      return 0x63657073416E696DLL;
    case 11:
    case 12:
      return 0x796C7069746C756DLL;
    case 13:
      return 0x657A69736572;
    case 14:
      return 0x6E41657A69736572;
    case 15:
      return 0xD000000000000012;
    case 16:
      v3 = 0x427473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7361000000000000;
    case 17:
      return 0x656E696C65736162;
    case 18:
      return 0xD000000000000012;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      v3 = 0x42726568746FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7361000000000000;
    case 21:
      return 0xD000000000000015;
    case 22:
      v6 = 1416522093;
      goto LABEL_31;
    case 23:
      v6 = 1417175405;
LABEL_31:
      result = v6 | 0x4C74786500000000;
      break;
    case 24:
      result = 0x7274654D746E6F66;
      break;
    case 25:
      result = 0x726765746E496F6ELL;
      break;
    case 26:
      result = 0x6F426F5470696C63;
      break;
    case 27:
      result = 0x686374697773;
      break;
    case 28:
      result = 0x797274656D6F6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6440320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D643FF6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D644039C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D64404C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644039C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64404F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_227);
  *a2 = result;
  return result;
}

uint64_t sub_1D6440538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D644058C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAnchor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v51;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v51 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1D6440D94(uint64_t a1)
{
  v2 = sub_1D5C57518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6440DD0(uint64_t a1)
{
  v2 = sub_1D5C57518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeAnimation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    v11 = a1;
LABEL_10:
    sub_1D61E4FBC(v11, v3);
    swift_willThrow();

    v24 = v11;
  }

  else
  {
    v12 = v7;
    v13 = v35;
    v14 = a1[3];
    v34 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v15 = sub_1D7264AFC();
    LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v16 = v10;
    if (v14)
    {
      v17 = sub_1D726433C();
      v18 = (v17 + 40);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        v21 = *v18;
        v18 += 2;
        if (v21 >= 4)
        {
          v22 = *(v20 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = &unk_1F5114130;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v16, v6);
          v11 = v34;
          goto LABEL_10;
        }
      }
    }

    sub_1D6671140();
    v36 = 0uLL;
    sub_1D726431C();
    if (v37)
    {
      v26 = v13;
      if (v37 == 1)
      {
        type metadata accessor for FormatAnimationNodeSpringAnimation();
        v36 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF163E0, type metadata accessor for FormatAnimationNodeSpringAnimation, &protocol conformance descriptor for FormatAnimationNodeSpringAnimation);
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v27 = v37;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v29 = v28 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for FormatAnimationNodeGroupAnimation();
        v36 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC882BC8, type metadata accessor for FormatAnimationNodeGroupAnimation, &protocol conformance descriptor for FormatAnimationNodeGroupAnimation);
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v31 = v37;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v29 = v32 | 0x8000000000000000;
      }
    }

    else
    {
      type metadata accessor for FormatAnimationNodeBasicAnimation();
      v36 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EC886650, type metadata accessor for FormatAnimationNodeBasicAnimation, &protocol conformance descriptor for FormatAnimationNodeBasicAnimation);
      sub_1D726431C();
      v26 = v13;
      (*(v12 + 8))(v16, v6);
      v30 = v37;
      v29 = swift_allocObject();
      *(v29 + 16) = v30;
    }

    v33 = v34;
    *v26 = v29;
    v24 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t FormatAnimationNodeAnimation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v38 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeAnimation, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatAnimationNodeAnimation, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v21, v18, v22, &off_1F51F6CD8);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = qword_1EDF31ED0;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD50);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63C6314(1, v24, v10);

      v28 = v10;
    }

    else
    {
      v33 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v34 = qword_1EDF31ED0;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63C64E0(2, v33, v6);

      v28 = v6;
    }
  }

  else
  {
    v29 = *(v19 + 16);
    v30 = qword_1EDF31ED0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v14, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C6148(0, v29, v14);

    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6441744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727073;
  if (v2 != 1)
  {
    v4 = 0x70756F7267;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6369736162;
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
  v8 = 0x676E69727073;
  if (*a2 != 1)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6369736162;
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

uint64_t sub_1D6441834()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D64418CC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6441950(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D64419E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663590(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6441A14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69727073;
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
    v7 = 0x6369736162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatAnimationNodeBasicAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v141 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v142 = &v140 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v150 = (&v140 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v140 - v16;
  sub_1D6671E00(0);
  v195 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D6671F28(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EC886688, sub_1D6671F28, &unk_1D7321584);
  sub_1D5D2EE70(v4, v25, v27, v22, v4, v25, &type metadata for FormatVersions.StarSky, v23, v21, v26, &off_1F51F6CD8);
  v28 = *(v2 + 1);
  v154 = *(v2 + 2);
  v155 = v28;
  v29 = v2[6];
  v30 = v2[7];
  v146 = v2;
  v31 = *(v2 + 64);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v34 = *(v32 - 8);
  v148 = *(v34 + 16);
  v149 = v33;
  v143 = v32;
  v147 = v34 + 16;
  v148(v17);
  v144 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v182 = v155;
  v183 = v154;
  *&v184 = v29;
  *(&v184 + 1) = v30;
  LOBYTE(v185) = v31;
  v174 = 0uLL;
  LOBYTE(v175) = 0;
  v35 = v195;
  v36 = &v21[*(v195 + 11)];
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v165) = 0;
  v39 = swift_allocObject();
  *&v155 = &v140;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v165;
  *(v39 + 40) = v37;
  *(v39 + 48) = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v153 = (&v140 - 6);
  *&v154 = v17;
  *(&v140 - 4) = sub_1D5B4AA6C;
  *(&v140 - 3) = 0;
  v138 = sub_1D6708974;
  v139 = v41;
  LOBYTE(v165) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v165;
  v145 = v37;
  *(v42 + 40) = v37;
  *(v42 + 48) = v38;
  sub_1D6671E94(0);
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EC886690, sub_1D6671E94, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v151 = v45;
  v152 = v44;
  v46 = sub_1D72647CC();
  LOBYTE(v165) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v165;
  v48 = *(v35 + 9);
  v195 = v21;
  v49 = &v21[v48];
  v50 = *(v49 + 3);
  v51 = *(v49 + 4);
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v153;
  v56 = v154;
  *(&v140 - 4) = sub_1D615B4A4;
  *(&v140 - 3) = v57;
  v138 = sub_1D6708974;
  v139 = v42;
  v58 = v56;
  v59 = v156;
  sub_1D5D2BC70(v56, sub_1D615B49C, v60, sub_1D615B4A4, (&v140 - 6), v50, v51);
  if (!v59)
  {
    v153 = v49;
    *&v156 = v38;

    sub_1D66720A8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    v63 = v146[9];
    v64 = v146[10];
    v65 = *(v146 + 88);
    v66 = v143;
    (v148)(v150, v149, v143);
    swift_storeEnumTagMultiPayload();
    v155 = xmmword_1D728CF30;
    v182 = xmmword_1D728CF30;
    LOBYTE(v183) = 0;
    LOBYTE(v174) = 0;
    v67 = swift_allocObject();
    v69 = v67;
    *(v67 + 16) = v155;
    *(v67 + 32) = v174;
    v70 = v145;
    v71 = v156;
    *(v67 + 40) = v145;
    *(v67 + 48) = v71;
    if (v65 == 255)
    {
      *&v154 = 0;

      sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v154 = &v140;
      *&v174 = v63;
      *(&v174 + 1) = v64;
      LOBYTE(v175) = v65 & 1;
      MEMORY[0x1EEE9AC00](v67, v68);
      *(&v140 - 4) = sub_1D5B4AA6C;
      *(&v140 - 3) = 0;
      v138 = sub_1D6708974;
      v139 = v69;
      LOBYTE(v165) = 0;
      v72 = swift_allocObject();
      v73 = v71;
      v74 = v72;
      *(v72 + 16) = v155;
      *(v72 + 32) = v165;
      *(v72 + 40) = v70;
      *(v72 + 48) = v73;
      swift_retain_n();
      sub_1D6189668(v63, v64, v65);
      v75 = sub_1D72647CC();
      LOBYTE(v165) = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v155;
      *(v76 + 40) = v165;
      v77 = *(v153 + 3);
      v78 = *(v153 + 4);
      v79 = __swift_project_boxed_opaque_existential_1(v153, v77);
      MEMORY[0x1EEE9AC00](v79, v80);
      MEMORY[0x1EEE9AC00](v81, v82);
      *(&v140 - 4) = sub_1D615B4A4;
      *(&v140 - 3) = (&v140 - 6);
      v138 = sub_1D6708974;
      v139 = v74;
      v83 = v150;
      v85 = sub_1D5D2F7A4(v150, sub_1D615B49C, v84, sub_1D615B4A4, (&v140 - 6), v77, v78);
      v86 = v85;

      if (v86)
      {
        sub_1D60ED320();
        sub_1D72647EC();
        v71 = v156;
        v66 = v143;
        *&v154 = 0;

        sub_1D5D2F2C8(v174, *(&v174 + 1), v175);
        sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v154 = 0;

        sub_1D5D2F2C8(v174, *(&v174 + 1), v175);
        sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
        v71 = v156;
        v66 = v143;
      }
    }

    v87 = v146[12];
    v88 = v146[13];
    v89 = *(v146 + 112);
    v90 = v142;
    (v148)(v142, v149, v66);
    swift_storeEnumTagMultiPayload();
    v155 = xmmword_1D7297410;
    v193 = xmmword_1D7297410;
    v194 = 0;
    LOBYTE(v182) = 0;
    v91 = swift_allocObject();
    v93 = v91;
    *(v91 + 16) = v155;
    *(v91 + 32) = v182;
    v94 = v145;
    *(v91 + 40) = v145;
    *(v91 + 48) = v71;
    if (v89 == 255)
    {

      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

      v112 = v71;
      v110 = v195;
      v109 = v154;
    }

    else
    {
      v150 = &v140;
      v190 = v87;
      v191 = v88;
      v192 = v89 & 1;
      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v140 - 4) = sub_1D5B4AA6C;
      *(&v140 - 3) = 0;
      v138 = sub_1D6708974;
      v139 = v93;
      LOBYTE(v182) = 0;
      v95 = swift_allocObject();
      v96 = v71;
      v97 = v95;
      *(v95 + 16) = v155;
      *(v95 + 32) = v182;
      *(v95 + 40) = v94;
      *(v95 + 48) = v96;
      swift_retain_n();
      sub_1D6189668(v87, v88, v89);
      v98 = sub_1D72647CC();
      LOBYTE(v182) = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v155;
      *(v99 + 40) = v182;
      v100 = *(v153 + 3);
      v101 = *(v153 + 4);
      v102 = __swift_project_boxed_opaque_existential_1(v153, v100);
      MEMORY[0x1EEE9AC00](v102, v103);
      MEMORY[0x1EEE9AC00](v104, v105);
      *(&v140 - 4) = sub_1D615B4A4;
      *(&v140 - 3) = (&v140 - 6);
      v138 = sub_1D6708974;
      v139 = v97;
      v106 = v154;
      v108 = sub_1D5D2F7A4(v90, sub_1D615B49C, v107, sub_1D615B4A4, (&v140 - 6), v100, v101);
      v109 = v106;
      if (v106)
      {

        v110 = v195;
        sub_1D5D2F2C8(v190, v191, v192);
        v111 = v142;
        goto LABEL_25;
      }

      v113 = v108;

      if (v113)
      {
        sub_1D60ED320();
        v110 = v195;
        sub_1D72647EC();
        v115 = v148;
        v114 = v149;

        sub_1D5D2F2C8(v190, v191, v192);
        sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
        v137 = v114;
        v112 = v156;
LABEL_21:
        v116 = *(v146 + 25);
        v117 = *(v146 + 29);
        v180 = *(v146 + 27);
        v181[0] = v117;
        *(v181 + 9) = *(v146 + 241);
        v118 = *(v146 + 17);
        v119 = *(v146 + 21);
        v176 = *(v146 + 19);
        v177 = v119;
        v178 = *(v146 + 23);
        v179 = v116;
        v174 = *(v146 + 15);
        v175 = v118;
        v120 = v141;
        v115(v141, v137, v143);
        swift_storeEnumTagMultiPayload();
        v156 = xmmword_1D72BAA60;
        v172[2] = xmmword_1D72BAA60;
        v173 = 0;
        LOBYTE(v165) = 0;
        v121 = swift_allocObject();
        *(v121 + 16) = v156;
        *(v121 + 32) = v165;
        v122 = v145;
        *(v121 + 40) = v145;
        *(v121 + 48) = v112;
        v188 = v180;
        v189[0] = v181[0];
        *(v189 + 9) = *(v181 + 9);
        v184 = v176;
        v185 = v177;
        v186 = v178;
        v187 = v179;
        v182 = v174;
        v183 = v175;
        v123 = sub_1D60486AC(&v182);
        if (v123 == 1)
        {

          sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);

LABEL_26:
          v61 = v110;
          return sub_1D5D2CFE8(v61, sub_1D6671E00);
        }

        *&v155 = &v140;
        v171 = v180;
        v172[0] = v181[0];
        *(v172 + 9) = *(v181 + 9);
        v167 = v176;
        v168 = v177;
        v169 = v178;
        v170 = v179;
        v165 = v174;
        v166 = v175;
        MEMORY[0x1EEE9AC00](v123, v124);
        *(&v140 - 4) = sub_1D5B4AA6C;
        *(&v140 - 3) = 0;
        v138 = sub_1D6708974;
        v139 = v121;
        LOBYTE(v157) = 0;
        v125 = swift_allocObject();
        *(v125 + 16) = v156;
        *(v125 + 32) = v157;
        *(v125 + 40) = v122;
        *(v125 + 48) = v112;
        swift_retain_n();
        sub_1D5D355B8(&v174, &v157, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v126 = sub_1D72647CC();
        LOBYTE(v157) = 0;
        v127 = swift_allocObject();
        *(v127 + 16) = v126;
        *(v127 + 24) = v156;
        *(v127 + 40) = v157;
        v128 = *(v153 + 3);
        v129 = *(v153 + 4);
        v130 = __swift_project_boxed_opaque_existential_1(v153, v128);
        MEMORY[0x1EEE9AC00](v130, v131);
        MEMORY[0x1EEE9AC00](v132, v133);
        *(&v140 - 4) = sub_1D615B4A4;
        *(&v140 - 3) = (&v140 - 6);
        v138 = sub_1D66720FC;
        v139 = v125;
        v135 = sub_1D5D2F7A4(v141, sub_1D615B49C, v134, sub_1D615B4A4, (&v140 - 6), v128, v129);
        if (v109)
        {

          v163 = v171;
          v164[0] = v172[0];
          *(v164 + 9) = *(v172 + 9);
          v159 = v167;
          v160 = v168;
          v161 = v169;
          v162 = v170;
          v157 = v165;
          v158 = v166;
          sub_1D62B49F0(&v157);
          v110 = v195;
          v111 = v141;
        }

        else
        {
          v136 = v135;

          if ((v136 & 1) == 0)
          {

            v163 = v171;
            v164[0] = v172[0];
            *(v164 + 9) = *(v172 + 9);
            v159 = v167;
            v160 = v168;
            v161 = v169;
            v162 = v170;
            v157 = v165;
            v158 = v166;
            sub_1D62B49F0(&v157);
            sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
            v110 = v195;
            goto LABEL_26;
          }

          sub_1D6662A38();
          v110 = v195;
          sub_1D72647EC();

          v163 = v171;
          v164[0] = v172[0];
          *(v164 + 9) = *(v172 + 9);
          v159 = v167;
          v160 = v168;
          v161 = v169;
          v162 = v170;
          v157 = v165;
          v158 = v166;
          sub_1D62B49F0(&v157);
          v111 = v141;
        }

LABEL_25:
        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
        goto LABEL_26;
      }

      sub_1D5D2F2C8(v190, v191, v192);
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
      v110 = v195;
      v112 = v156;
    }

    v115 = v148;
    v137 = v149;
    goto LABEL_21;
  }

  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

  v61 = v195;
  return sub_1D5D2CFE8(v61, sub_1D6671E00);
}

uint64_t sub_1D6442DE0()
{
  v1 = *v0;
  v2 = 0x6874615079656BLL;
  v3 = 0x6576697469646461;
  v4 = 0x6D6954616964656DLL;
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
    v2 = 0x6974616C756D7563;
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

uint64_t sub_1D6442E80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6672310(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6442EB8(uint64_t a1)
{
  v2 = sub_1D6672000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6442EF4(uint64_t a1)
{
  v2 = sub_1D6672000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6442F30()
{
  v1 = 0x6D6954616964656DLL;
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
    return 0x6F6974616D696E61;
  }
}

uint64_t sub_1D6442F90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66724CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6442FC8(uint64_t a1)
{
  v2 = sub_1D6662824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6443004(uint64_t a1)
{
  v2 = sub_1D6662824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeKeyPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
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

    v13 = v32;
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
          *(v20 + 16) = &unk_1F5114180;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6672178();
    v27 = 0uLL;
    sub_1D726431C();
    v22 = v31;
    if (v31 == 4)
    {
      sub_1D5C30060(0, &qword_1EC886698, sub_1D619B420, &type metadata for FormatSizeEquation, type metadata accessor for FormatAnimationNodeKeyPathAnimation);
      v31 = xmmword_1D7279980;
      sub_1D6672268();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = v30;
    }

    else
    {
      sub_1D66721CC(0);
      v31 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF15FE0, sub_1D66721CC, &protocol conformance descriptor for FormatAnimationNodeKeyPathAnimation<A>);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = 0;
      v24 = v27;
      v25 = v28;
      v26 = 0uLL;
    }

    *v13 = v24;
    *(v13 + 16) = v25;
    *(v13 + 24) = v26;
    *(v13 + 40) = v23;
    *(v13 + 48) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAnimationNodeKeyPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v97 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v96 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v94 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v92 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v91 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v90 = &v89 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v89 = &v89 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v89 - v39;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v1 + 16);
  v99 = *v1;
  v100 = v45;
  v46 = *(v1 + 32);
  v47 = *(v1 + 40);
  v48 = *(v1 + 48);
  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  v51 = sub_1D5C30408();
  v104 = v44;
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeKeyPath, &type metadata for FormatCodingKeys, v52, v49, &type metadata for FormatAnimationNodeKeyPath, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v50, v44, v51, &off_1F51F6CD8);
  if (v48 > 5)
  {
    if (v48 > 8)
    {
      if (v48 == 9)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCD50);
        v27 = v96;
        (*(*(v78 - 8) + 16))(v96, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 9;
      }

      else if (v48 == 10)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
        v27 = v97;
        (*(*(v69 - 8) + 16))(v97, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 10;
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v86 = sub_1D725BD1C();
        v87 = __swift_project_value_buffer(v86, qword_1EDFFCD50);
        v27 = v98;
        (*(*(v86 - 8) + 16))(v98, v87, v86);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 11;
      }
    }

    else if (v48 == 6)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCD50);
      v27 = v93;
      (*(*(v74 - 8) + 16))(v93, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 6;
    }

    else if (v48 == 7)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD50);
      v27 = v94;
      (*(*(v60 - 8) + 16))(v94, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 7;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCD50);
      v27 = v95;
      (*(*(v82 - 8) + 16))(v95, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 8;
    }

    goto LABEL_49;
  }

  if (v48 > 2)
  {
    if (v48 == 3)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD50);
      v55 = v91;
      (*(*(v76 - 8) + 16))(v91, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 3;
      goto LABEL_39;
    }

    if (v48 == 4)
    {
      v101[0] = v99;
      v101[1] = v100;
      v102 = v46;
      v103 = v47;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD50);
      (*(*(v66 - 8) + 16))(v27, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v68 = v104;
      sub_1D638E374(4, v101, v27);
      goto LABEL_50;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v84 = sub_1D725BD1C();
    v85 = __swift_project_value_buffer(v84, qword_1EDFFCD50);
    v27 = v92;
    (*(*(v84 - 8) + 16))(v92, v85, v84);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v63 = *(&v99 + 1);
    v62 = v99;
    v64 = v100;
    v65 = 5;
LABEL_49:
    v68 = v104;
    sub_1D638E1A4(v65, v62, v63, v64, v27);
LABEL_50:
    v73 = v27;
    goto LABEL_51;
  }

  if (v48)
  {
    if (v48 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD50);
      v55 = v89;
      (*(*(v53 - 8) + 16))(v89, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 1;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD50);
      v55 = v90;
      (*(*(v80 - 8) + 16))(v90, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 2;
    }

LABEL_39:
    v68 = v104;
    sub_1D638E1A4(v59, v56, v57, v58, v55);
    v73 = v55;
    goto LABEL_51;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v71 = sub_1D725BD1C();
  v72 = __swift_project_value_buffer(v71, qword_1EDFFCD50);
  (*(*(v71 - 8) + 16))(v40, v72, v71);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v68 = v104;
  sub_1D638E1A4(0, v99, *(&v99 + 1), v100, v40);
  v73 = v40;
LABEL_51:
  sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
}

uint64_t sub_1D64440DC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      return 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000011;
      if (a1 == 7)
      {
        v3 = 0xD000000000000013;
      }

      if (a1 == 6)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 != 4)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 3)
    {
      v1 = 0x726F66736E617274;
    }

    if (a1 <= 2u)
    {
      return 0x726F66736E617274;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D64442C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66644B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D64442F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64440DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v7 = sub_1D726393C();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v80 = &v66 - v24;
  v81 = a2;
  v83 = a3;
  v26 = _s10CodingKeysOMa_225(255, a2, a3, v25);
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  *&v84 = v26;
  *(&v84 + 1) = WitnessTable;
  v79 = WitnessTable;
  v75 = v28;
  v85 = v28;
  v86 = v29;
  v30 = type metadata accessor for FormatCodingKeysContainer(255, &v84);
  swift_getWitnessTable();
  v31 = sub_1D726435C();
  v82 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v66 - v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v87;
  sub_1D7264B0C();
  v36 = v35;
  if (v35)
  {
    goto LABEL_13;
  }

  v66 = v29;
  v67 = v26;
  v68 = 0;
  v74 = v34;
  v87 = v31;
  v37 = v81;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = sub_1D7264AFC();
  v39 = Dictionary<>.errorOnUnknownKeys.getter(v38);

  if ((v39 & 1) == 0)
  {
LABEL_10:
    v84 = 0uLL;
    LOBYTE(v85) = 0;
    v53 = v37;
    v54 = v87;
    v55 = v74;
    v56 = v68;
    sub_1D726427C();
    if (!v56)
    {
      v84 = xmmword_1D728CF30;
      LOBYTE(v85) = 0;
      sub_1D726427C();
      v84 = xmmword_1D7297410;
      LOBYTE(v85) = 0;
      v57 = v73;
      v58 = v74;
      sub_1D726427C();
      v60 = v76;
      v59 = v77;
      (*(v82 + 8))(v58, v54);
      v61 = *(v60 + 32);
      v62 = v69;
      v61(v69, v80, v59);
      v63 = v70;
      v61(v70, v78, v59);
      v64 = v57;
      v65 = v71;
      v61(v71, v64, v59);
      sub_1D715AF78(v62, v63, v65, v53, v83, v72);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v82 + 8))(v55, v54);
    v36 = v56;
LABEL_13:
    sub_1D61E4FBC(a1, v36);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = 0;
  v41 = (sub_1D726433C() + 48);
  v42 = v79;
  v43 = v67;
  while (1)
  {
    if (v40 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v44 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v44 & 1) == 0)
    {
      break;
    }

    v46 = *v41;
    v84 = *(v41 - 1);
    LOBYTE(v85) = v46;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_16;
    }

    v47 = sub_1D6AFC82C(v30);
    ++v40;
    v41 += 24;
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      v51 = sub_1D6AFC690(v43, v42, v75, v66);
      sub_1D5E2D970();
      v36 = swift_allocError();
      *v52 = v49;
      *(v52 + 8) = v50;
      *(v52 + 16) = v51;
      *(v52 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v82 + 8))(v74, v87);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - v12;
  v14 = *(a2 + 24);
  v55 = *(a2 + 16);
  v48 = v14;
  v16 = _s10CodingKeysOMa_225(255, v55, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  *&v52 = v16;
  *(&v52 + 1) = WitnessTable;
  v53 = v18;
  v54 = v19;
  v20 = type metadata accessor for FormatCodingKeysContainer(255, &v52);
  v21 = swift_getWitnessTable();
  v22 = sub_1D726446C();
  v23 = swift_getWitnessTable();
  v25 = type metadata accessor for VersionedKeyedEncodingContainer(0, v22, v23, v24);
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v44 - v27;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v47 = a2;
  sub_1D5D2EE70(a2, v20, v31, v29, a2, v20, &type metadata for FormatVersions.StarSky, v30, v28, v21, &off_1F51F6CD8);
  v52 = 0uLL;
  LOBYTE(v53) = 0;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v46 = *(*(v32 - 8) + 16);
  v46(v13, v33, v32);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v34 = v49;
  v48 = *(v48 + 16);
  sub_1D5D432A4(v51, &v52, v13, sub_1D5B4AA6C, 0, v25, v55, v48);
  if (!v34)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
    v35 = *(v47 + 36);
    v52 = xmmword_1D728CF30;
    LOBYTE(v53) = 0;
    v36 = v33;
    v37 = v45;
    v49 = v36;
    (v46)(v45);
    swift_storeEnumTagMultiPayload();
    v38 = v51;
    sub_1D5D432A4(v51 + v35, &v52, v37, sub_1D5B4AA6C, 0, v25, v55, v48);
    sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
    v40 = v38;
    v41 = *(v47 + 40);
    v52 = xmmword_1D7297410;
    LOBYTE(v53) = 0;
    v42 = v44;
    v46(v44, v49, v32);
    swift_storeEnumTagMultiPayload();
    v43 = v40 + v41;
    v13 = v42;
    sub_1D5D432A4(v43, &v52, v42, sub_1D5B4AA6C, 0, v25, v55, v48);
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  return (*(v50 + 8))(v28, v25);
}

uint64_t sub_1D6444FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566D6F7266 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C61566F74 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C61567962 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D6445124(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v5 = _s10CodingKeysOMa_225(255, a1, a2, a5);
  sub_1D72644CC();
  swift_allocObject();
  v6 = sub_1D726270C();
  *v7 = 50462976;

  return sub_1D5BFCB60(v6, v5);
}

uint64_t sub_1D6445194(unsigned __int8 a1)
{
  v1 = 0x756C61566D6F7266;
  v2 = 0x65756C61567962;
  if (a1 != 2)
  {
    v2 = 1885433183;
  }

  if (a1)
  {
    v1 = 0x65756C61566F74;
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

uint64_t sub_1D644521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6444FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D644524C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1ED8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6445278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1D6445124(*(a1 + 16), *(a1 + 24), a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1D64452A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64452FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAnimationNodeSpringAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v261 = &v260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v262 = (&v260 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v263 = (&v260 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v264 = (&v260 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v265 = (&v260 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v266 = (&v260 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v267 = (&v260 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v260 - v28;
  sub_1D6673008(0);
  v317 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v260 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D6673130(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF0C380, sub_1D6673130, &unk_1D7321584);
  sub_1D5D2EE70(v4, v37, v39, v34, v4, v37, &type metadata for FormatVersions.StarSky, v35, v33, v38, &off_1F51F6CD8);
  v40 = *(v2 + 1);
  v278 = *(v2 + 2);
  v279 = v40;
  v41 = v2[6];
  v42 = v2[7];
  v272 = v2;
  v43 = *(v2 + 64);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD50);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v268 = v44;
  v269 = v45;
  v273 = v46 + 16;
  v274 = v47;
  (v47)(v29);
  v270 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v306 = v279;
  v307 = v278;
  *&v308 = v41;
  *(&v308 + 1) = v42;
  LOBYTE(v309) = v43;
  v298 = 0uLL;
  LOBYTE(v299) = 0;
  v48 = v317;
  v49 = &v33[*(v317 + 11)];
  *&v278 = v29;
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v289) = 0;
  v52 = swift_allocObject();
  *&v279 = &v260;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v289;
  *(v52 + 40) = v50;
  *(v52 + 48) = v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v277 = (&v260 - 6);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708978;
  v259 = v54;
  LOBYTE(v289) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v289;
  v271 = v50;
  *(v55 + 40) = v50;
  *(v55 + 48) = v51;
  sub_1D667309C(0);
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF029E8, sub_1D667309C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v275 = v57;
  v276 = v58;
  v59 = sub_1D72647CC();
  LOBYTE(v289) = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v289;
  v61 = *(v48 + 9);
  v317 = v33;
  v62 = &v33[v61];
  v63 = *&v33[v61 + 24];
  v64 = *&v33[v61 + 32];
  v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = v277;
  v69 = v278;
  *(&v260 - 4) = sub_1D615B4A4;
  *(&v260 - 3) = v70;
  v258 = sub_1D6708978;
  v259 = v55;
  v71 = v69;
  v72 = v280;
  sub_1D5D2BC70(v69, sub_1D615B49C, v73, sub_1D615B4A4, (&v260 - 6), v63, v64);
  if (v72)
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

    v74 = v317;
    return sub_1D5D2CFE8(v74, sub_1D6673008);
  }

  v277 = v62;
  *&v280 = v51;

  sub_1D66720A8();
  sub_1D72647EC();
  *&v279 = 0;
  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  v76 = v272[9];
  v77 = v272[10];
  v78 = *(v272 + 88);
  v79 = v267;
  v80 = v268;
  v81 = v269;
  v274(v267, v269, v268);
  swift_storeEnumTagMultiPayload();
  v278 = xmmword_1D728CF30;
  v306 = xmmword_1D728CF30;
  LOBYTE(v307) = 0;
  LOBYTE(v298) = 0;
  v82 = swift_allocObject();
  v84 = v82;
  *(v82 + 16) = v278;
  *(v82 + 32) = v298;
  v85 = v280;
  *(v82 + 40) = v271;
  *(v82 + 48) = v85;
  if (v78 == 255)
  {

    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v260 = &v260;
    *&v298 = v76;
    *(&v298 + 1) = v77;
    LOBYTE(v299) = v78 & 1;
    MEMORY[0x1EEE9AC00](v82, v83);
    v86 = v85;
    v88 = v87;
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708978;
    v259 = v84;
    LOBYTE(v289) = 0;
    v89 = swift_allocObject();
    v90 = v86;
    v91 = v89;
    *(v89 + 16) = v278;
    *(v89 + 32) = v289;
    *(v89 + 40) = v88;
    *(v89 + 48) = v90;
    swift_retain_n();
    sub_1D6189668(v76, v77, v78);
    v92 = sub_1D72647CC();
    LOBYTE(v289) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v92;
    *(v93 + 24) = v278;
    *(v93 + 40) = v289;
    v94 = *(v277 + 3);
    v95 = *(v277 + 4);
    v96 = __swift_project_boxed_opaque_existential_1(v277, v94);
    MEMORY[0x1EEE9AC00](v96, v97);
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v260 - 4) = sub_1D615B4A4;
    *(&v260 - 3) = &v260 - 6;
    v258 = sub_1D6708978;
    v259 = v91;
    v100 = v279;
    v102 = sub_1D5D2F7A4(v79, sub_1D615B49C, v101, sub_1D615B4A4, (&v260 - 6), v94, v95);
    if (v100)
    {

      v103 = v317;
      sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
      v74 = v103;
      return sub_1D5D2CFE8(v74, sub_1D6673008);
    }

    v104 = v102;

    if (v104)
    {
      sub_1D60ED320();
      sub_1D72647EC();
      v85 = v280;
      v80 = v268;
      v81 = v269;
      *&v279 = 0;

      sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
      sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v279 = 0;

      sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
      v85 = v280;
      v80 = v268;
      v81 = v269;
    }
  }

  v105 = v272[12];
  v106 = v272[13];
  v107 = *(v272 + 112);
  v108 = v266;
  v274(v266, v81, v80);
  swift_storeEnumTagMultiPayload();
  v278 = xmmword_1D7297410;
  v306 = xmmword_1D7297410;
  LOBYTE(v307) = 0;
  LOBYTE(v298) = 0;
  v109 = swift_allocObject();
  v111 = v109;
  *(v109 + 16) = v278;
  *(v109 + 32) = v298;
  *(v109 + 40) = v271;
  *(v109 + 48) = v85;
  if (v107 == 255)
  {

    sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);

    v127 = v317;
    goto LABEL_24;
  }

  v267 = &v260;
  *&v298 = v105;
  *(&v298 + 1) = v106;
  LOBYTE(v299) = v107 & 1;
  MEMORY[0x1EEE9AC00](v109, v110);
  v113 = v112;
  v260 = &v260 - 6;
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D6708978;
  v259 = v111;
  LOBYTE(v289) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = v278;
  *(v114 + 32) = v289;
  *(v114 + 40) = v113;
  *(v114 + 48) = v85;
  swift_retain_n();
  sub_1D6189668(v105, v106, v107);
  v115 = sub_1D72647CC();
  LOBYTE(v289) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v278;
  *(v116 + 40) = v289;
  v117 = *(v277 + 3);
  v118 = *(v277 + 4);
  v119 = __swift_project_boxed_opaque_existential_1(v277, v117);
  MEMORY[0x1EEE9AC00](v119, v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v123 = v260;
  *(&v260 - 4) = sub_1D615B4A4;
  *(&v260 - 3) = v123;
  v258 = sub_1D6708978;
  v259 = v114;
  v124 = v279;
  v126 = sub_1D5D2F7A4(v108, sub_1D615B49C, v125, sub_1D615B4A4, (&v260 - 6), v117, v118);
  *&v279 = v124;
  if (!v124)
  {
    v129 = v126;

    if (v129)
    {
      sub_1D60ED320();
      v127 = v317;
      v130 = v279;
      sub_1D72647EC();
      *&v279 = v130;
      v85 = v280;
      v80 = v268;
      v81 = v269;
      if (v130)
      {

        v108 = v266;
        goto LABEL_17;
      }

      sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
      sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
      v127 = v317;
      v85 = v280;
      v80 = v268;
      v81 = v269;
    }

LABEL_24:
    v131 = v272[15];
    v132 = v265;
    v274(v265, v81, v80);
    swift_storeEnumTagMultiPayload();
    v278 = xmmword_1D72BAA60;
    v306 = xmmword_1D72BAA60;
    LOBYTE(v307) = 0;
    LOBYTE(v298) = 0;
    v133 = swift_allocObject();
    v135 = v133;
    *(v133 + 16) = v278;
    *(v133 + 32) = v298;
    *(v133 + 40) = v271;
    *(v133 + 48) = v85;
    if (v131)
    {
      v267 = &v260;
      *&v298 = v131;
      MEMORY[0x1EEE9AC00](v133, v134);
      v136 = v85;
      v138 = v137;
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708978;
      v259 = v135;
      LOBYTE(v289) = 0;
      v139 = swift_allocObject();
      v140 = v136;
      v141 = v139;
      *(v139 + 16) = v278;
      *(v139 + 32) = v289;
      *(v139 + 40) = v138;
      *(v139 + 48) = v140;
      swift_retain_n();

      v142 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v142;
      *(v143 + 24) = v278;
      *(v143 + 40) = v289;
      v144 = *(v277 + 3);
      v145 = *(v277 + 4);
      v146 = __swift_project_boxed_opaque_existential_1(v277, v144);
      MEMORY[0x1EEE9AC00](v146, v147);
      MEMORY[0x1EEE9AC00](v148, v149);
      *(&v260 - 4) = sub_1D615B4A4;
      *(&v260 - 3) = &v260 - 6;
      v258 = sub_1D6708978;
      v259 = v141;
      v150 = v279;
      v152 = sub_1D5D2F7A4(v132, sub_1D615B49C, v151, sub_1D615B4A4, (&v260 - 6), v144, v145);
      *&v279 = v150;
      if (v150)
      {
LABEL_34:

        v127 = v317;
        goto LABEL_35;
      }

      v153 = v152;

      if (v153)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v127 = v317;
        v154 = v279;
        sub_1D72647EC();
        *&v279 = v154;
        v85 = v280;
        v80 = v268;
        v81 = v269;
        if (v154)
        {

          v132 = v265;
LABEL_35:

          v128 = v132;
          goto LABEL_36;
        }

        sub_1D5D2CFE8(v265, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
        v127 = v317;
        v85 = v280;
        v80 = v268;
        v81 = v269;
      }
    }

    else
    {

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
    }

    v155 = v272[16];
    v132 = v264;
    v274(v264, v81, v80);
    swift_storeEnumTagMultiPayload();
    v278 = xmmword_1D72BAA70;
    v306 = xmmword_1D72BAA70;
    LOBYTE(v307) = 0;
    LOBYTE(v298) = 0;
    v156 = swift_allocObject();
    v158 = v156;
    *(v156 + 16) = v278;
    *(v156 + 32) = v298;
    *(v156 + 40) = v271;
    *(v156 + 48) = v85;
    if (v155)
    {
      v267 = &v260;
      *&v298 = v155;
      MEMORY[0x1EEE9AC00](v156, v157);
      v159 = v85;
      v161 = v160;
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708978;
      v259 = v158;
      LOBYTE(v289) = 0;
      v162 = swift_allocObject();
      v163 = v159;
      v164 = v162;
      *(v162 + 16) = v278;
      *(v162 + 32) = v289;
      *(v162 + 40) = v161;
      *(v162 + 48) = v163;
      swift_retain_n();

      v165 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v165;
      *(v166 + 24) = v278;
      *(v166 + 40) = v289;
      v167 = *(v277 + 3);
      v168 = *(v277 + 4);
      v169 = __swift_project_boxed_opaque_existential_1(v277, v167);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      *(&v260 - 4) = sub_1D615B4A4;
      *(&v260 - 3) = &v260 - 6;
      v258 = sub_1D6708978;
      v259 = v164;
      v173 = v279;
      v175 = sub_1D5D2F7A4(v132, sub_1D615B49C, v174, sub_1D615B4A4, (&v260 - 6), v167, v168);
      *&v279 = v173;
      if (v173)
      {
        goto LABEL_34;
      }

      v176 = v175;

      if (v176)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v127 = v317;
        v177 = v279;
        sub_1D72647EC();
        *&v279 = v177;
        v85 = v280;
        v80 = v268;
        v81 = v269;
        if (v177)
        {

          v132 = v264;
          goto LABEL_35;
        }

        sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
        v127 = v317;
        v85 = v280;
        v80 = v268;
        v81 = v269;
      }
    }

    else
    {

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
    }

    v178 = v272[17];
    v132 = v263;
    v274(v263, v81, v80);
    swift_storeEnumTagMultiPayload();
    v278 = xmmword_1D72BAA80;
    v306 = xmmword_1D72BAA80;
    LOBYTE(v307) = 0;
    LOBYTE(v298) = 0;
    v179 = swift_allocObject();
    v181 = v179;
    *(v179 + 16) = v278;
    *(v179 + 32) = v298;
    *(v179 + 40) = v271;
    *(v179 + 48) = v85;
    if (v178)
    {
      *&v298 = v178;
      MEMORY[0x1EEE9AC00](v179, v180);
      v182 = v85;
      v184 = v183;
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708978;
      v259 = v181;
      LOBYTE(v289) = 0;
      v185 = swift_allocObject();
      v186 = v182;
      v187 = v185;
      *(v185 + 16) = v278;
      *(v185 + 32) = v289;
      *(v185 + 40) = v184;
      *(v185 + 48) = v186;
      swift_retain_n();

      v188 = sub_1D72647CC();
      LOBYTE(v289) = 0;
      v189 = swift_allocObject();
      *(v189 + 16) = v188;
      *(v189 + 24) = v278;
      *(v189 + 40) = v289;
      v190 = *(v277 + 3);
      v191 = *(v277 + 4);
      v192 = __swift_project_boxed_opaque_existential_1(v277, v190);
      MEMORY[0x1EEE9AC00](v192, v193);
      MEMORY[0x1EEE9AC00](v194, v195);
      *(&v260 - 4) = sub_1D615B4A4;
      *(&v260 - 3) = &v260 - 6;
      v258 = sub_1D6708978;
      v259 = v187;
      v196 = v279;
      v198 = sub_1D5D2F7A4(v132, sub_1D615B49C, v197, sub_1D615B4A4, (&v260 - 6), v190, v191);
      *&v279 = v196;
      if (v196)
      {
        goto LABEL_34;
      }

      v200 = v198;

      if (v200)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v127 = v317;
        v201 = v279;
        sub_1D72647EC();
        *&v279 = v201;
        v85 = v280;
        if (v201)
        {

          v132 = v263;
          goto LABEL_35;
        }

        v199 = v268;

        sub_1D5D2CFE8(v263, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
        v127 = v317;
        v85 = v280;
        v199 = v268;
      }
    }

    else
    {

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);

      v199 = v80;
    }

    v202 = v272[18];
    v203 = v262;
    v274(v262, v269, v199);
    swift_storeEnumTagMultiPayload();
    v278 = xmmword_1D72BAA90;
    v315 = xmmword_1D72BAA90;
    v316 = 0;
    LOBYTE(v306) = 0;
    v204 = swift_allocObject();
    v206 = v204;
    *(v204 + 16) = v278;
    *(v204 + 32) = v306;
    *(v204 + 40) = v271;
    *(v204 + 48) = v85;
    if (v202)
    {
      v267 = &v260;
      v314 = v202;
      MEMORY[0x1EEE9AC00](v204, v205);
      v207 = v85;
      v209 = v208;
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708978;
      v259 = v206;
      LOBYTE(v306) = 0;
      v210 = swift_allocObject();
      v211 = v207;
      v212 = v210;
      *(v210 + 16) = v278;
      *(v210 + 32) = v306;
      *(v210 + 40) = v209;
      *(v210 + 48) = v211;
      swift_retain_n();

      v213 = sub_1D72647CC();
      LOBYTE(v306) = 0;
      v214 = swift_allocObject();
      *(v214 + 16) = v213;
      *(v214 + 24) = v278;
      *(v214 + 40) = v306;
      v215 = *(v277 + 3);
      v216 = *(v277 + 4);
      v217 = __swift_project_boxed_opaque_existential_1(v277, v215);
      MEMORY[0x1EEE9AC00](v217, v218);
      MEMORY[0x1EEE9AC00](v219, v220);
      *(&v260 - 4) = sub_1D615B4A4;
      *(&v260 - 3) = &v260 - 6;
      v258 = sub_1D6708978;
      v259 = v212;
      v221 = v279;
      v223 = sub_1D5D2F7A4(v203, sub_1D615B49C, v222, sub_1D615B4A4, (&v260 - 6), v215, v216);
      *&v279 = v221;
      if (v221)
      {

        v127 = v317;
LABEL_56:
        v224 = v262;

LABEL_57:
        v128 = v224;
        goto LABEL_36;
      }

      v229 = v223;

      if (v229)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v127 = v317;
        v230 = v279;
        sub_1D72647EC();
        *&v279 = v230;
        v231 = v280;
        v232 = v269;
        v226 = v274;
        if (v230)
        {

          goto LABEL_56;
        }

        v233 = v268;

        sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
        v228 = v233;
        v225 = v232;
        v227 = v231;
      }

      else
      {

        sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
        v127 = v317;
        v227 = v280;
        v228 = v268;
        v225 = v269;
        v226 = v274;
      }
    }

    else
    {

      sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);

      v225 = v269;
      v226 = v274;
      v227 = v85;
      v228 = v199;
    }

    v234 = *(v272 + 29);
    v235 = *(v272 + 33);
    v304 = *(v272 + 31);
    v305[0] = v235;
    *(v305 + 9) = *(v272 + 273);
    v236 = *(v272 + 21);
    v237 = *(v272 + 25);
    v300 = *(v272 + 23);
    v301 = v237;
    v302 = *(v272 + 27);
    v303 = v234;
    v298 = *(v272 + 19);
    v299 = v236;
    v238 = v261;
    v226(v261, v225, v228);
    swift_storeEnumTagMultiPayload();
    v280 = xmmword_1D72BAAA0;
    v296[2] = xmmword_1D72BAAA0;
    v297 = 0;
    LOBYTE(v289) = 0;
    v239 = swift_allocObject();
    *(v239 + 16) = v280;
    *(v239 + 32) = v289;
    v240 = v271;
    *(v239 + 40) = v271;
    *(v239 + 48) = v227;
    v312 = v304;
    v313[0] = v305[0];
    *(v313 + 9) = *(v305 + 9);
    v308 = v300;
    v309 = v301;
    v310 = v302;
    v311 = v303;
    v306 = v298;
    v307 = v299;
    v241 = sub_1D60486AC(&v306);
    if (v241 == 1)
    {

      sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v127, sub_1D6673008);
    }

    *&v278 = &v260;
    v295 = v304;
    v296[0] = v305[0];
    *(v296 + 9) = *(v305 + 9);
    v291 = v300;
    v292 = v301;
    v293 = v302;
    v294 = v303;
    v289 = v298;
    v290 = v299;
    MEMORY[0x1EEE9AC00](v241, v242);
    *(&v260 - 4) = sub_1D5B4AA6C;
    *(&v260 - 3) = 0;
    v258 = sub_1D6708978;
    v259 = v239;
    LOBYTE(v281) = 0;
    v243 = swift_allocObject();
    *(v243 + 16) = v280;
    *(v243 + 32) = v281;
    *(v243 + 40) = v240;
    *(v243 + 48) = v227;
    swift_retain_n();
    sub_1D5D355B8(&v298, &v281, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v244 = sub_1D72647CC();
    LOBYTE(v281) = 0;
    v245 = v238;
    v246 = swift_allocObject();
    *(v246 + 16) = v244;
    *(v246 + 24) = v280;
    *(v246 + 40) = v281;
    v247 = *(v277 + 3);
    v248 = *(v277 + 4);
    v249 = __swift_project_boxed_opaque_existential_1(v277, v247);
    MEMORY[0x1EEE9AC00](v249, v250);
    MEMORY[0x1EEE9AC00](v251, v252);
    *(&v260 - 4) = sub_1D615B4A4;
    *(&v260 - 3) = &v260 - 6;
    v258 = sub_1D66732B0;
    v259 = v243;
    v253 = v279;
    v255 = sub_1D5D2F7A4(v245, sub_1D615B49C, v254, sub_1D615B4A4, (&v260 - 6), v247, v248);
    *&v279 = v253;
    if (v253)
    {

      v287 = v295;
      v288[0] = v296[0];
      *(v288 + 9) = *(v296 + 9);
      v283 = v291;
      v284 = v292;
      v285 = v293;
      v286 = v294;
      v281 = v289;
      v282 = v290;
      sub_1D62B49F0(&v281);
      v127 = v317;
      v128 = v261;
      goto LABEL_36;
    }

    v256 = v255;

    if ((v256 & 1) == 0)
    {

      v287 = v295;
      v288[0] = v296[0];
      *(v288 + 9) = *(v296 + 9);
      v283 = v291;
      v284 = v292;
      v285 = v293;
      v286 = v294;
      v281 = v289;
      v282 = v290;
      sub_1D62B49F0(&v281);
      sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);
      v127 = v317;
      return sub_1D5D2CFE8(v127, sub_1D6673008);
    }

    sub_1D6662A38();
    v127 = v317;
    v257 = v279;
    sub_1D72647EC();
    v224 = v261;
    *&v279 = v257;
    if (v257)
    {

      v287 = v295;
      v288[0] = v296[0];
      *(v288 + 9) = *(v296 + 9);
      v283 = v291;
      v284 = v292;
      v285 = v293;
      v286 = v294;
      v281 = v289;
      v282 = v290;
      sub_1D62B49F0(&v281);
      v128 = v224;
      goto LABEL_36;
    }

    v287 = v295;
    v288[0] = v296[0];
    *(v288 + 9) = *(v296 + 9);
    v283 = v291;
    v284 = v292;
    v285 = v293;
    v286 = v294;
    v281 = v289;
    v282 = v290;
    sub_1D62B49F0(&v281);
    goto LABEL_57;
  }

  v127 = v317;
LABEL_17:
  sub_1D5D2F2C8(v298, *(&v298 + 1), v299);
  v128 = v108;
LABEL_36:
  sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v127, sub_1D6673008);
}

uint64_t sub_1D64475DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874615079656BLL;
    v6 = 0x6576697469646461;
    if (a1 != 2)
    {
      v6 = 1936941421;
    }

    if (a1)
    {
      v5 = 0x6974616C756D7563;
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
    v1 = 0x566C616974696E69;
    v2 = 0x6D6954616964656DLL;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73656E6666697473;
    if (a1 != 4)
    {
      v3 = 0x676E69706D6164;
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

uint64_t sub_1D644770C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6673340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6447744(uint64_t a1)
{
  v2 = sub_1D6673208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6447780(uint64_t a1)
{
  v2 = sub_1D6673208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v187 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v191 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v192 = &v187 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v193 = &v187 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v194 = (&v187 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v204 = &v187 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v187 - v26;
  sub_1D6673CC4(0);
  *&v203 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v187 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D6673DEC(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C4D0, sub_1D6673DEC, &unk_1D7321584);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.StarSky, v33, v31, v36, &off_1F51F6CD8);
  swift_beginAccess();
  v38 = v2[2];
  v39 = v2[3];
  v201 = v2;
  v40 = qword_1EDF31ED0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v200 = v41;
  v199 = v43 + 16;
  v44(v27, v42, v41);
  v198 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v8, 1, v45);
  v196 = v42;
  v197 = v44;
  if (v46 == 1)
  {
    v190 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v47 = v203;
    v48 = &v31[*(v203 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v209) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v209;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D6673D58(0);
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF030F8, sub_1D6673D58, MEMORY[0x1E69E6F60]);

    v189 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v209) = 0;
    v55 = v31;
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v54;
    *(v56 + 40) = v209;
    v57 = &v55[*(v47 + 36)];
    v58 = *(v57 + 3);
    v59 = *(v57 + 4);
    v60 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v195 = &v187;
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v187 - 4) = sub_1D5B4AA6C;
    *(&v187 - 3) = 0;
    v185 = sub_1D6673F6C;
    v186 = v51;
    v64 = v202;
    v66 = sub_1D5D2F7A4(v27, sub_1D615B49C, v65, sub_1D615B4A4, (&v187 - 6), v58, v59);
    if (v64)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v67 = v55;
      return sub_1D5D2CFE8(v67, sub_1D6673CC4);
    }

    v94 = v66;

    if (v94)
    {
      v209 = 0uLL;
      v210 = 0;
      *&v207 = v190;
      *(&v207 + 1) = v39;
      v31 = v55;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v42 = v196;
      v44 = v197;
      v68 = v204;
      v202 = 0;
    }

    else
    {
      v202 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v55;
      v42 = v196;
      v44 = v197;
      v68 = v204;
    }
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v68 = v204;
    v47 = v203;
  }

  v69 = v201[4];
  v70 = v201[5];
  v44(v68, v42, v200);
  swift_storeEnumTagMultiPayload();
  *&v207 = v69;
  *(&v207 + 1) = v70;
  v203 = xmmword_1D728CF30;
  v209 = xmmword_1D728CF30;
  v210 = 0;
  v71 = &v31[*(v47 + 44)];
  v72 = v47;
  v73 = *v71;
  v74 = *(v71 + 1);
  LOBYTE(v205) = 0;
  v75 = swift_allocObject();
  v195 = &v187;
  *(v75 + 16) = v203;
  *(v75 + 32) = v205;
  *(v75 + 40) = v73;
  *(v75 + 48) = v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v187 - 4) = sub_1D5B4AA6C;
  *(&v187 - 3) = 0;
  v185 = sub_1D670897C;
  v186 = v77;
  LOBYTE(v205) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v203;
  *(v78 + 32) = v205;
  v188 = v73;
  *(v78 + 40) = v73;
  *(v78 + 48) = v74;
  sub_1D6673D58(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EDF030F8, sub_1D6673D58, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v189 = v80;
  v190 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v205) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v203;
  *(v83 + 40) = v205;
  v84 = &v31[*(v72 + 36)];
  v85 = *(v84 + 3);
  v86 = *(v84 + 4);
  v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v187 - 4) = sub_1D615B4A4;
  *(&v187 - 3) = (&v187 - 6);
  v185 = sub_1D670897C;
  v186 = v78;
  v91 = v204;
  v92 = v202;
  sub_1D5D2BC70(v204, sub_1D615B49C, v93, sub_1D615B4A4, (&v187 - 6), v85, v86);
  if (v92)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

LABEL_12:
    v67 = v31;
    return sub_1D5D2CFE8(v67, sub_1D6673CC4);
  }

  v187 = v84;
  *&v203 = v74;

  sub_1D72647EC();
  v195 = v31;
  sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);

  v96 = v201[6];
  v97 = v201[7];
  v98 = *(v201 + 64);
  v99 = v194;
  v100 = v196;
  v101 = v197;
  v197(v194, v196, v200);
  swift_storeEnumTagMultiPayload();
  v204 = xmmword_1D7297410;
  v209 = xmmword_1D7297410;
  v210 = 0;
  LOBYTE(v207) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v204;
  *(v103 + 32) = v207;
  *(v103 + 40) = v188;
  v104 = v203;
  *(v103 + 48) = v203;
  if (v98)
  {
    v202 = 0;

    v105 = v99;
LABEL_17:
    v106 = v187;
    goto LABEL_18;
  }

  v202 = &v187;
  *&v207 = v96;
  *(&v207 + 1) = v97;
  MEMORY[0x1EEE9AC00](v104, v102);
  *(&v187 - 4) = sub_1D5B4AA6C;
  *(&v187 - 3) = 0;
  v185 = sub_1D670897C;
  v186 = v103;
  LOBYTE(v205) = 0;
  v124 = v123;
  v126 = v125;
  v127 = swift_allocObject();
  *(v127 + 16) = v204;
  *(v127 + 32) = v205;
  *(v127 + 40) = v126;
  *(v127 + 48) = v124;
  swift_retain_n();
  v128 = sub_1D72647CC();
  LOBYTE(v205) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v128;
  *(v129 + 24) = v204;
  *(v129 + 40) = v205;
  v130 = *(v187 + 3);
  v131 = *(v187 + 4);
  v132 = __swift_project_boxed_opaque_existential_1(v187, v130);
  MEMORY[0x1EEE9AC00](v132, v133);
  MEMORY[0x1EEE9AC00](v134, v135);
  *(&v187 - 4) = sub_1D615B4A4;
  *(&v187 - 3) = (&v187 - 6);
  v185 = sub_1D670897C;
  v186 = v127;
  v137 = sub_1D5D2F7A4(v99, sub_1D615B49C, v136, sub_1D615B4A4, (&v187 - 6), v130, v131);
  v138 = v137;

  if ((v138 & 1) == 0)
  {
    v202 = 0;
    v100 = v196;
    v101 = v197;
    v105 = v194;
    goto LABEL_17;
  }

  sub_1D5F5A70C();
  sub_1D72647EC();
  v100 = v196;
  v101 = v197;
  v106 = v187;
  v202 = 0;
  v105 = v194;
LABEL_18:
  sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

  v107 = v201;
  swift_beginAccess();
  v108 = v107[9];
  v109 = v193;
  v101(v193, v100, v200);
  swift_storeEnumTagMultiPayload();
  if (!v108)
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    goto LABEL_30;
  }

  LOBYTE(v207) = 0;
  v110 = swift_allocObject();
  v204 = xmmword_1D72BAA60;
  *(v110 + 16) = xmmword_1D72BAA60;
  *(v110 + 32) = v207;
  v111 = v203;
  *(v110 + 40) = v188;
  *(v110 + 48) = v111;

  v112 = sub_1D72647CC();
  LOBYTE(v207) = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v204;
  *(v113 + 40) = v207;
  v114 = *(v106 + 3);
  v115 = *(v106 + 4);
  v116 = __swift_project_boxed_opaque_existential_1(v106, v114);
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  *(&v187 - 4) = sub_1D5B4AA6C;
  *(&v187 - 3) = 0;
  v185 = sub_1D670897C;
  v186 = v110;
  v120 = v202;
  v122 = sub_1D5D2F7A4(v109, sub_1D615B49C, v121, sub_1D615B4A4, (&v187 - 6), v114, v115);
  v202 = v120;
  if (!v120)
  {
    v139 = v122;

    if (v139)
    {
      v207 = v204;
      v208 = 0;
      *&v205 = v108;
      sub_1D667412C(0, &qword_1EC8866A8, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation);
      sub_1D6674198();
      v140 = v195;
      v141 = v202;
      sub_1D72647EC();
      v100 = v196;
      if (v141)
      {

        sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
        v67 = v140;
        return sub_1D5D2CFE8(v67, sub_1D6673CC4);
      }

      v202 = 0;

      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
      v100 = v196;
    }

LABEL_30:
    v142 = *(v201 + 84);
    v143 = *(v201 + 20);
    v144 = v192;
    v197(v192, v100, v200);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D72BAA70;
    v207 = xmmword_1D72BAA70;
    v208 = 0;
    LOBYTE(v205) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = v204;
    *(v146 + 32) = v205;
    *(v146 + 40) = v188;
    v147 = v203;
    *(v146 + 48) = v203;
    if (v142 <= 0xFEuLL)
    {
      v194 = &v187;
      v166 = v143 & 0xFFFFFF00FFFFFFFFLL | (v142 << 32);
      LODWORD(v205) = v166;
      BYTE4(v205) = BYTE4(v166);
      MEMORY[0x1EEE9AC00](v147, v145);
      *(&v187 - 4) = sub_1D5B4AA6C;
      *(&v187 - 3) = 0;
      v185 = sub_1D670897C;
      v186 = v146;
      LOBYTE(v211) = 0;
      v168 = v167;
      v170 = v169;
      v171 = swift_allocObject();
      *(v171 + 16) = v204;
      *(v171 + 32) = v211;
      *(v171 + 40) = v170;
      *(v171 + 48) = v168;
      swift_retain_n();
      v172 = sub_1D72647CC();
      LOBYTE(v211) = 0;
      v173 = swift_allocObject();
      *(v173 + 16) = v172;
      *(v173 + 24) = v204;
      *(v173 + 40) = v211;
      v174 = *(v106 + 3);
      v175 = *(v106 + 4);
      v176 = __swift_project_boxed_opaque_existential_1(v106, v174);
      MEMORY[0x1EEE9AC00](v176, v177);
      MEMORY[0x1EEE9AC00](v178, v179);
      *(&v187 - 4) = sub_1D615B4A4;
      *(&v187 - 3) = (&v187 - 6);
      v185 = sub_1D670897C;
      v186 = v171;
      v180 = v202;
      v182 = sub_1D5D2F7A4(v144, sub_1D615B49C, v181, sub_1D615B4A4, (&v187 - 6), v174, v175);
      v148 = v180;
      if (v180)
      {
        sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);

        v149 = v195;
        goto LABEL_38;
      }

      v183 = v182;

      if (v183)
      {
        sub_1D66740D8();
        v149 = v195;
        sub_1D72647EC();
        v100 = v196;
        v151 = v197;
        v150 = v192;
      }

      else
      {
        v149 = v195;
        v150 = v192;
        v100 = v196;
        v151 = v197;
      }
    }

    else
    {

      v148 = v202;
      v149 = v195;
      v150 = v144;
      v151 = v197;
    }

    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);

    v152 = v201;
    swift_beginAccess();
    v153 = v152[11];
    v154 = v191;
    v151(v191, v100, v200);
    swift_storeEnumTagMultiPayload();
    if (*(v153 + 16))
    {
      LOBYTE(v205) = 0;
      v31 = v149;
      v155 = swift_allocObject();
      v204 = xmmword_1D72BAA80;
      *(v155 + 16) = xmmword_1D72BAA80;
      *(v155 + 32) = v205;
      *(v155 + 40) = v188;
      *(v155 + 48) = v203;

      v156 = sub_1D72647CC();
      LOBYTE(v205) = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v156;
      *(v157 + 24) = v204;
      *(v157 + 40) = v205;
      v158 = *(v187 + 3);
      v159 = *(v187 + 4);
      v160 = __swift_project_boxed_opaque_existential_1(v187, v158);
      MEMORY[0x1EEE9AC00](v160, v161);
      MEMORY[0x1EEE9AC00](v162, v163);
      *(&v187 - 4) = sub_1D5B4AA6C;
      *(&v187 - 3) = 0;
      v185 = sub_1D670897C;
      v186 = v155;
      v165 = sub_1D5D2F7A4(v154, sub_1D615B49C, v164, sub_1D615B4A4, (&v187 - 6), v158, v159);
      if (v148)
      {
        sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v184 = v165;

        if (v184)
        {
          v205 = v204;
          v206 = 0;
          v211 = v153;
          sub_1D5C34D84(0, &unk_1EDF04D38, &type metadata for FormatAnimationNodeStyle.Selector, MEMORY[0x1E69E62F8]);
          sub_1D6673FE8();
          sub_1D72647EC();

          sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
        }
      }

      goto LABEL_12;
    }

    sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
LABEL_38:
    v67 = v149;
    return sub_1D5D2CFE8(v67, sub_1D6673CC4);
  }

  sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v195, sub_1D6673CC4);
}

uint64_t sub_1D644928C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7463656C6573;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x6F6974616D696E61;
  if (v1 != 3)
  {
    v4 = 0x65646F4D6E7572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x6F50726F68636E61;
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

uint64_t sub_1D644936C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66751F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64493A4(uint64_t a1)
{
  v2 = sub_1D6673EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64493E0(uint64_t a1)
{
  v2 = sub_1D6673EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6674228(0);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66742BC(0);
  sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC, &unk_1D7321584);
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

  v13 = v41;
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

      v19 = v7;
      v20 = v13;
      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6618C90();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v20 + 8))(v14, v19);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v18 = v37;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5C7B870();
  sub_1D726427C();
  v36 = v18;
  v25 = v7;
  v26 = *(&v39 + 1);
  v35 = v39;
  v27 = v40;
  sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D7297410;
  v40 = 0;
  sub_1D667443C();
  sub_1D726427C();
  HIDWORD(v33) = v27;
  v34 = v26;
  v29 = v37;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D667452C();
  sub_1D726427C();
  (*(v41 + 8))(v10, v25);
  v30 = v37;
  v31 = BYTE4(v37);
  v32 = v35;
  *a2 = v36;
  *(a2 + 8) = *(&v18 + 1);
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  *(a2 + 32) = BYTE4(v33);
  *(a2 + 40) = v29;
  *(a2 + 52) = v31;
  *(a2 + 48) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}