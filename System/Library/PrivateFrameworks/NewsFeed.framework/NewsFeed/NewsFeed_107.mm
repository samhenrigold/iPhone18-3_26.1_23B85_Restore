uint64_t sub_1D6513758()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

void sub_1D651378C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
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

uint64_t sub_1D6513878(uint64_t a1)
{
  v2 = sub_1D669F44C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65138B4(uint64_t a1)
{
  v2 = sub_1D669F44C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D651392C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v29[0] = a5;
  v29[1] = a4;
  v31 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - v12;
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
    v14 = v31;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v30;
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
    v32 = 0uLL;
    sub_1D726431C();
    v28 = v33;
    v32 = xmmword_1D7279980;
    if (v33)
    {
      sub_1D665B884();
    }

    else
    {
      sub_1D665B8D8();
    }

    sub_1D726431C();
    (*(v18 + 8))(v19, v10);
    *v29[0] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaRatioBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaRatioBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaRatioBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
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
    sub_1D638AD14(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDB0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638AB88(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6513F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6575737369;
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
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6575737369;
  }

  else
  {
    v5 = 0x656E696C64616568;
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

uint64_t sub_1D6514000()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6514080(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatLayoutExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D669F794(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v69 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C60250(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25248, sub_1D5C60250, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLayoutExpression, v19, v21, v16, &type metadata for FormatLayoutExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v71 = v23;
  v67 = v25;
  v68 = v22;
  v66[2] = v24 + 16;
  (v25)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v80 = v15;
  v78 = 0uLL;
  v79 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v77 = 0;
  v29 = swift_allocObject();
  v74 = v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v77;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v76 = v9;
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D6708AC4;
  v65 = v31;
  v77 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v77;
  v66[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D669F828(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03208, sub_1D669F828, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v72 = v34;
  v73 = v35;
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
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v45 = v75;
  v46 = v76;
  v64 = sub_1D6708AC4;
  v65 = v32;
  sub_1D5D2BC70(v76, sub_1D615B49C, v47, sub_1D615B4A4, &v66[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v48 = v71;
    v75 = v28;

    sub_1D669F8BC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v49 = v70;
    v67(v70, v48, v68);
    swift_storeEnumTagMultiPayload();
    v50 = v69;
    LOBYTE(v78) = v69;
    if (FormatOperator.rawValue.getter() == 0x6C61757165 && v51 == 0xE500000000000000)
    {
    }

    else
    {
      v52 = sub_1D72646CC();

      if ((v52 & 1) == 0)
      {
        LOBYTE(v78) = 0;
        v54 = swift_allocObject();
        v76 = xmmword_1D728CF30;
        *(v54 + 16) = xmmword_1D728CF30;
        *(v54 + 32) = v78;
        *(v54 + 40) = v66[0];
        *(v54 + 48) = v75;

        v55 = sub_1D72647CC();
        LOBYTE(v78) = 0;
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(v56 + 24) = v76;
        *(v56 + 40) = v78;
        v57 = *(v38 + 3);
        v58 = *(v38 + 4);
        v59 = __swift_project_boxed_opaque_existential_1(v38, v57);
        MEMORY[0x1EEE9AC00](v59, v60);
        MEMORY[0x1EEE9AC00](v61, v62);
        v66[-4] = sub_1D5B4AA6C;
        v66[-3] = 0;
        v64 = sub_1D669F910;
        v65 = v54;
        LOBYTE(v57) = sub_1D5D2F7A4(v49, sub_1D615B49C, v63, sub_1D615B4A4, &v66[-6], v57, v58);

        if (v57)
        {
          v78 = v76;
          v79 = 0;
          LOBYTE(v80) = v50;
          sub_1D60566E4();
          sub_1D72647EC();
        }
      }
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D669F794);
}

uint64_t sub_1D65149E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A1300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6514A1C(uint64_t a1)
{
  v2 = sub_1D5C60328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6514A58(uint64_t a1)
{
  v2 = sub_1D5C60328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6514A94(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayoutOption, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatLayoutOption, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v13, v11, v14, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCD30);
  (*(*(v16 - 8) + 16))(v7, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A81E0(a2, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t FormatLineBreakStrategy.encode(to:)(void *a1)
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
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCE80);
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

uint64_t FormatLineCap.encode(to:)(void *a1)
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

uint64_t FormatLiveActivityBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v31;
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
          *(v21 + 16) = &unk_1F5115F08;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669F98C();
    v27 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    sub_1D667CF44();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v30;
    v24 = v28;
    v25 = v29;
    *v14 = v27;
    *(v14 + 16) = v24;
    *(v14 + 32) = v25;
    *(v14 + 48) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLiveActivityBinding.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLiveActivityBinding.Command, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatLiveActivityBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v16, v11, v17, &off_1F51F6B98);
  v19 = *v2;
  v24[1] = *(v2 + 16);
  v24[0] = v19;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63906EC(v24, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t sub_1D6515BA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6515C14(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6515D44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A1414(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6515D7C(uint64_t a1)
{
  v2 = sub_1D5CB00C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6515DB8(uint64_t a1)
{
  v2 = sub_1D5CB00C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLocalizationString.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v78 - v11;
  sub_1D669F9E0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v87 = v1[4];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CB08E4(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF250F8, sub_1D5CB08E4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLocalizationString, v23, v25, v20, &type metadata for FormatLocalizationString, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v84 = v27;
  v85 = v26;
  v82 = v28 + 16;
  v83 = v29;
  (v29)(v12);
  v81 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v96 = v18;
  v97 = v19;
  v94 = 0uLL;
  v95 = 0;
  v30 = &v17[*(v14 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v98 = 0;
  v33 = swift_allocObject();
  *&v92 = &v78;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v98;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v78 - 4) = sub_1D5B4AA6C;
  *(&v78 - 3) = 0;
  v76 = sub_1D6708AC8;
  v77 = v35;
  v98 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v98;
  v80 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D669FA74(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF03088, sub_1D669FA74, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v89 = v39;
  v90 = v38;
  v40 = sub_1D72647CC();
  v98 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v98;
  v42 = *(v14 + 36);
  v91 = v17;
  v43 = &v17[v42];
  v44 = *&v17[v42 + 24];
  v45 = *&v17[v42 + 32];
  v46 = __swift_project_boxed_opaque_existential_1(&v17[v42], v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v78 - 4) = sub_1D615B4A4;
  *(&v78 - 3) = (&v78 - 6);
  v76 = sub_1D6708AC8;
  v77 = v36;
  v50 = v93;
  sub_1D5D2BC70(v12, sub_1D615B49C, v51, sub_1D615B4A4, (&v78 - 6), v44, v45);
  if (v50)
  {
    v52 = v91;
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v54 = v52;
  }

  else
  {
    v79 = v43;
    v93 = v32;

    v53 = v91;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v57 = v85;
    v56 = v86;
    v59 = v83;
    v58 = v84;
    v83(v86, v84, v85);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    v60 = v88;
    v59(v88, v58, v57);
    v61 = v60;
    swift_storeEnumTagMultiPayload();
    v62 = v87;
    if (*(v87 + 16))
    {
      LOBYTE(v94) = 0;
      v63 = swift_allocObject();
      v92 = xmmword_1D7297410;
      *(v63 + 16) = xmmword_1D7297410;
      *(v63 + 32) = v94;
      *(v63 + 40) = v80;
      *(v63 + 48) = v93;

      v64 = v53;
      v65 = sub_1D72647CC();
      LOBYTE(v94) = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      *(v66 + 24) = v92;
      *(v66 + 40) = v94;
      v67 = *(v79 + 3);
      v68 = *(v79 + 4);
      v69 = __swift_project_boxed_opaque_existential_1(v79, v67);
      MEMORY[0x1EEE9AC00](v69, v70);
      MEMORY[0x1EEE9AC00](v71, v72);
      *(&v78 - 4) = sub_1D5B4AA6C;
      *(&v78 - 3) = 0;
      v76 = sub_1D669FB08;
      v77 = v63;
      v74 = sub_1D5D2F7A4(v61, sub_1D615B49C, v73, sub_1D615B4A4, (&v78 - 6), v67, v68);
      v75 = v74;

      if (v75)
      {
        v94 = v92;
        v95 = 0;
        v96 = v62;
        sub_1D5C34D84(0, &qword_1EDF04D08, &type metadata for FormatLocalizationString.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669FB84();
        sub_1D72647EC();

        sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      v64 = v53;
    }

    v54 = v64;
  }

  return sub_1D5D2CFE8(v54, sub_1D669F9E0);
}

uint64_t sub_1D65166E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A15D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6516718(uint64_t a1)
{
  v2 = sub_1D5CB0A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6516754(uint64_t a1)
{
  v2 = sub_1D5CB0A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLocalizationString.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D669FC20(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v77 = v1[3];
  v78 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5CB109C(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF250E8, sub_1D5CB109C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLocalizationString.Selector, v21, v23, v18, &type metadata for FormatLocalizationString.Selector, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v74 = *(v26 + 16);
  v75 = v25;
  v80 = v24;
  v73 = v26 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v89 = v16;
  v86 = 0uLL;
  v87 = 0;
  v27 = &v14[*(v11 + 44)];
  v83 = v9;
  v28 = *v27;
  v29 = *(v27 + 1);
  v90 = 0;
  v30 = swift_allocObject();
  v84 = &v69;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v90;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708ACC;
  v68 = v32;
  v90 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v90;
  v76 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D669FCB4(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF03078, sub_1D669FCB4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v36;
  v82 = v35;
  v37 = sub_1D72647CC();
  v90 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v90;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v46 = v83;
  v67 = sub_1D669FD48;
  v68 = v33;
  v47 = v85;
  sub_1D5D2BC70(v83, sub_1D615B49C, v48, sub_1D615B4A4, (&v69 - 6), v40, v41);
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v39;
    v49 = v80;
    v71 = v29;

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v51 = v79;
    (v74)(v79, v75, v49);
    swift_storeEnumTagMultiPayload();
    v88 = v78;
    v89 = v77;
    v85 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v90 = 0;
    v52 = swift_allocObject();
    v84 = &v69;
    *(v52 + 16) = v85;
    *(v52 + 32) = v90;
    v53 = v76;
    v54 = v71;
    *(v52 + 40) = v76;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708ACC;
    v68 = v56;
    v90 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v85;
    *(v57 + 32) = v90;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v90 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v85;
    *(v59 + 40) = v90;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708ACC;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D669FC20);
}

uint64_t sub_1D6517004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D657D04C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D651703C(uint64_t a1)
{
  v2 = sub_1D5CB1220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6517078(uint64_t a1)
{
  v2 = sub_1D5CB1220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTiming.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  sub_1D669FDC4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669FE58(0);
  sub_1D5B58B84(&qword_1EDF0C5C0, sub_1D669FE58, &unk_1D7321584);
  sub_1D7264B0C();
  if (!v2)
  {
    v51 = v7;
    v11 = v52;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = *(v15 + 16);
      v17 = v51;
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

        v22 = sub_1D661EF58();
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
    v55 = 0uLL;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v19 = v59;
    v55 = xmmword_1D728CF30;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v24 = v59;
    v55 = xmmword_1D7297410;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v50 = v24;
    v25 = v59;
    v55 = xmmword_1D72BAA60;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v49 = v25;
    v26 = v59;
    v55 = xmmword_1D72BAA70;
    LOBYTE(v56) = 0;
    sub_1D669FFD8();
    sub_1D726427C();
    v48 = v26;
    LODWORD(v26) = v59;
    v55 = xmmword_1D72BAA80;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v47 = v26;
    v27 = v59;
    v55 = xmmword_1D72BAA90;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v46 = v27;
    v28 = v59;
    v59 = xmmword_1D72BAAA0;
    v60 = 0;
    v45 = sub_1D5CDCE98();
    sub_1D726427C();
    v44 = v28;
    v43 = v55;
    LODWORD(v28) = v56;
    v59 = xmmword_1D72BAAB0;
    v60 = 0;
    sub_1D61888A4();
    sub_1D726427C();
    v42 = v28;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v59 = xmmword_1D72BAAC0;
    v60 = 0;
    sub_1D726427C();
    (*(v51 + 8))(v14, v6);
    v29 = v56;
    v31 = v49;
    v30 = v50;
    *v11 = v19;
    *(v11 + 8) = v30;
    v32 = v48;
    *(v11 + 16) = v31;
    *(v11 + 24) = v32;
    *(v11 + 32) = v47;
    *(v11 + 33) = *v61;
    *(v11 + 36) = *&v61[3];
    v33 = v44;
    *(v11 + 40) = v46;
    *(v11 + 48) = v33;
    v34 = *(&v43 + 1);
    *(v11 + 56) = v43;
    *(v11 + 64) = v34;
    *(v11 + 72) = v42;
    *(v11 + 73) = *v54;
    *(v11 + 76) = *&v54[3];
    v35 = *(&v38 + 1);
    *(v11 + 80) = v38;
    *(v11 + 88) = v35;
    v36 = v40;
    *(v11 + 96) = v39;
    *(v11 + 104) = v36;
    *(v11 + 112) = v41;
    *(v11 + 113) = *v53;
    *(v11 + 116) = *&v53[3];
    *(v11 + 120) = v55;
    *(v11 + 136) = v29;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMediaTiming.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v365 = v341 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v354 = v341 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v355 = v341 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v357 = v341 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v359 = v341 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v360 = v341 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v362 = v341 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v367 = (v341 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v373 = v341 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v341 - v33;
  sub_1D66A002C(0);
  v36 = v35;
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = v341 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v1;
  v369 = v1[1];
  v41 = v1[3];
  v363 = v1[2];
  v361 = v41;
  v388 = *(v1 + 32);
  v42 = v1[6];
  v358 = v1[5];
  v356 = v42;
  v43 = v1[8];
  v352 = v1[7];
  v351 = v43;
  v353 = *(v1 + 72);
  v44 = v1[11];
  v349 = v1[10];
  v348 = v44;
  v45 = v1[13];
  v347 = v1[12];
  v346 = v45;
  v350 = *(v1 + 112);
  v46 = v1[16];
  v344 = v1[15];
  v343 = v46;
  v345 = *(v1 + 136);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D669FE58(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF0C5C0, sub_1D669FE58, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMediaTiming, v50, v52, v47, &type metadata for FormatMediaTiming, v50, &type metadata for FormatVersions.AzdenB, v48, v39, v51, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDC8);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v372 = v54;
  v375 = (v55 + 16);
  *&v376 = v56;
  v56(v34);
  v374 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v379 = 0uLL;
  LOBYTE(v380) = 0;
  v57 = &v39[*(v36 + 44)];
  v58 = v39;
  v60 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v384) = 0;
  v61 = swift_allocObject();
  v63 = v61;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v384;
  *(v61 + 40) = v60;
  *(v61 + 48) = v59;
  v378 = v59;
  v368 = v53;
  v377 = v58;
  v366 = v60;
  v364 = v36;
  if (!v40)
  {
    v371 = v2;

    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    goto LABEL_10;
  }

  v371 = v341;
  *&v384 = v40;
  MEMORY[0x1EEE9AC00](v61, v62);
  *&v370 = v34;
  v341[-4] = sub_1D5B4AA6C;
  v341[-3] = 0;
  v339 = sub_1D6708AD0;
  v340 = v63;
  v387 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v387;
  v65 = v378;
  *(v64 + 40) = v60;
  *(v64 + 48) = v65;
  sub_1D66A00C0(0);
  v66 = v2;
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
  swift_retain_n();

  v342 = v68;
  v341[1] = v69;
  v70 = sub_1D72647CC();
  v387 = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v387;
  v72 = &v58[*(v36 + 36)];
  v73 = *(v72 + 3);
  v74 = *(v72 + 4);
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v341[-4] = sub_1D615B4A4;
  v341[-3] = &v341[-6];
  v79 = v370;
  v339 = sub_1D6708AD0;
  v340 = v64;
  v81 = sub_1D5D2F7A4(v370, sub_1D615B49C, v80, sub_1D615B4A4, &v341[-6], v73, v74);
  if (!v66)
  {
    v83 = v81;
    v36 = v364;

    if (v83)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v60 = v366;
      v53 = v368;
      v371 = 0;

      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v371 = 0;

      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
      v60 = v366;
      v53 = v368;
    }

LABEL_10:
    v84 = v373;
    (v376)(v373, v372, v53);
    swift_storeEnumTagMultiPayload();
    v370 = xmmword_1D728CF30;
    v379 = xmmword_1D728CF30;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v85 = swift_allocObject();
    v87 = v85;
    *(v85 + 16) = v370;
    *(v85 + 32) = v384;
    v88 = v378;
    *(v85 + 40) = v60;
    *(v85 + 48) = v88;
    if (v369)
    {
      v342 = v341;
      *&v384 = v369;
      MEMORY[0x1EEE9AC00](v85, v86);
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v87;
      v387 = 0;
      v89 = swift_allocObject();
      *(v89 + 16) = v370;
      *(v89 + 32) = v387;
      v90 = v378;
      *(v89 + 40) = v60;
      *(v89 + 48) = v90;
      sub_1D66A00C0(0);
      v91 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v92 = v84;
      v93 = v377;
      v369 = v91;
      v94 = sub_1D72647CC();
      v387 = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      *(v95 + 24) = v370;
      *(v95 + 40) = v387;
      v96 = (v93 + *(v36 + 36));
      v97 = v96[3];
      v98 = v96[4];
      v99 = __swift_project_boxed_opaque_existential_1(v96, v97);
      MEMORY[0x1EEE9AC00](v99, v100);
      MEMORY[0x1EEE9AC00](v101, v102);
      v341[-4] = sub_1D615B4A4;
      v341[-3] = &v341[-6];
      v339 = sub_1D6708AD0;
      v340 = v89;
      v103 = v371;
      v105 = sub_1D5D2F7A4(v92, sub_1D615B49C, v104, sub_1D615B4A4, &v341[-6], v97, v98);
      v106 = v103;
      if (v103)
      {

        v107 = v377;
        v108 = v373;
LABEL_45:

        sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
        v82 = v107;
        return sub_1D5D2CFE8(v82, sub_1D66A002C);
      }

      v109 = v105;
      v110 = v366;

      if (v109)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v368;
        v60 = v110;

        sub_1D5D2CFE8(v373, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v373, type metadata accessor for FormatVersionRequirement);
        v60 = v110;
        v53 = v368;
      }
    }

    else
    {

      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

      v106 = v371;
    }

    v111 = v365;
    v112 = v367;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v371 = v106;
    v369 = __swift_project_value_buffer(v53, qword_1EDFFCD50);
    (v376)(v112);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D7297410;
    v379 = xmmword_1D7297410;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v113 = swift_allocObject();
    v115 = v113;
    *(v113 + 16) = v373;
    *(v113 + 32) = v384;
    v116 = v378;
    *(v113 + 40) = v60;
    *(v113 + 48) = v116;
    if (v363)
    {
      *&v370 = v341;
      *&v384 = v363;
      MEMORY[0x1EEE9AC00](v113, v114);
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v115;
      v387 = 0;
      v117 = swift_allocObject();
      *(v117 + 16) = v373;
      *(v117 + 32) = v387;
      v118 = v378;
      *(v117 + 40) = v60;
      *(v117 + 48) = v118;
      sub_1D66A00C0(0);
      v120 = v119;
      v121 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v122 = v377;
      v363 = v120;
      v342 = v121;
      v123 = sub_1D72647CC();
      v387 = 0;
      v124 = v112;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v373;
      *(v125 + 40) = v387;
      v126 = (v122 + *(v36 + 36));
      v127 = v60;
      v128 = v126[3];
      v129 = v126[4];
      v130 = __swift_project_boxed_opaque_existential_1(v126, v128);
      MEMORY[0x1EEE9AC00](v130, v131);
      MEMORY[0x1EEE9AC00](v132, v133);
      v341[-4] = sub_1D615B4A4;
      v341[-3] = &v341[-6];
      v339 = sub_1D6708AD0;
      v340 = v117;
      v134 = v371;
      v136 = sub_1D5D2F7A4(v124, sub_1D615B49C, v135, sub_1D615B4A4, &v341[-6], v128, v129);
      if (v134)
      {

        v107 = v377;
        v137 = &v391;
LABEL_44:
        v108 = *(v137 - 32);
        goto LABEL_45;
      }

      v138 = v136;
      v60 = v127;
      v139 = v364;

      if (v138)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v368;
        v140 = v367;
        v371 = 0;

        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v36 = v139;
      }

      else
      {
        v371 = 0;

        sub_1D5D2CFE8(v367, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v36 = v139;
        v53 = v368;
      }
    }

    else
    {

      sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);
    }

    v141 = v362;
    (v376)(v362, v372, v53);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAA60;
    v379 = xmmword_1D72BAA60;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v142 = swift_allocObject();
    v144 = v142;
    *(v142 + 16) = v373;
    *(v142 + 32) = v384;
    v145 = v378;
    *(v142 + 40) = v60;
    *(v142 + 48) = v145;
    if (v361)
    {
      *&v370 = v341;
      *&v384 = v361;
      MEMORY[0x1EEE9AC00](v142, v143);
      v367 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v144;
      v387 = 0;
      v146 = swift_allocObject();
      v147 = v378;
      v148 = v36;
      v149 = v146;
      *(v146 + 16) = v373;
      *(v146 + 32) = v387;
      *(v146 + 40) = v60;
      *(v146 + 48) = v147;
      sub_1D66A00C0(0);
      v151 = v150;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v152 = v377;
      v363 = v151;
      v153 = sub_1D72647CC();
      v387 = 0;
      v154 = swift_allocObject();
      *(v154 + 16) = v153;
      *(v154 + 24) = v373;
      *(v154 + 40) = v387;
      v155 = (v152 + *(v148 + 36));
      v156 = v155[3];
      v157 = v155[4];
      v158 = __swift_project_boxed_opaque_existential_1(v155, v156);
      MEMORY[0x1EEE9AC00](v158, v159);
      MEMORY[0x1EEE9AC00](v160, v161);
      v162 = v367;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v162;
      v339 = sub_1D6708AD0;
      v340 = v149;
      v163 = v371;
      v165 = sub_1D5D2F7A4(v141, sub_1D615B49C, v164, sub_1D615B4A4, &v341[-6], v156, v157);
      if (v163)
      {

        v107 = v377;
        v137 = &v389;
        goto LABEL_44;
      }

      v166 = v165;
      v167 = v364;

      if (v166)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v368;
        v36 = v167;
        v371 = 0;

        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v60 = v366;
      }

      else
      {
        v371 = 0;

        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v36 = v167;
        v60 = v366;
        v53 = v368;
      }
    }

    else
    {

      sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
    }

    v168 = v360;
    (v376)(v360, v372, v53);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAA70;
    v379 = xmmword_1D72BAA70;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v169 = swift_allocObject();
    v171 = v169;
    *(v169 + 16) = v373;
    *(v169 + 32) = v384;
    v172 = v378;
    *(v169 + 40) = v60;
    *(v169 + 48) = v172;
    if (v388 == 4)
    {

      v173 = v168;
    }

    else
    {
      *&v370 = v341;
      LOBYTE(v384) = v388;
      MEMORY[0x1EEE9AC00](v169, v170);
      v367 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v171;
      v387 = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v373;
      *(v174 + 32) = v387;
      v175 = v378;
      *(v174 + 40) = v60;
      *(v174 + 48) = v175;
      sub_1D66A00C0(0);
      v177 = v176;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      v178 = v177;
      swift_retain_n();
      v179 = v377;
      v363 = v178;
      v180 = sub_1D72647CC();
      v387 = 0;
      v181 = swift_allocObject();
      *(v181 + 16) = v180;
      *(v181 + 24) = v373;
      *(v181 + 40) = v387;
      v182 = (v179 + *(v36 + 36));
      v183 = v182[3];
      v184 = v182[4];
      v185 = __swift_project_boxed_opaque_existential_1(v182, v183);
      MEMORY[0x1EEE9AC00](v185, v186);
      MEMORY[0x1EEE9AC00](v187, v188);
      v189 = v367;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v189;
      v339 = sub_1D6708AD0;
      v340 = v174;
      v190 = v371;
      v192 = sub_1D5D2F7A4(v168, sub_1D615B49C, v191, sub_1D615B4A4, &v341[-6], v183, v184);
      if (v190)
      {
        sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);

        v82 = v377;
        return sub_1D5D2CFE8(v82, sub_1D66A002C);
      }

      v193 = v192;
      v60 = v366;

      if (v193)
      {
        sub_1D66A01FC();
        sub_1D72647EC();
        v53 = v368;
        v371 = 0;
        v111 = v365;
      }

      else
      {
        v371 = 0;
        v111 = v365;
        v53 = v368;
      }

      v173 = v360;
    }

    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);

    v194 = v359;
    (v376)(v359, v372, v53);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAA80;
    v379 = xmmword_1D72BAA80;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v195 = swift_allocObject();
    v197 = v195;
    *(v195 + 16) = v373;
    *(v195 + 32) = v384;
    v198 = v378;
    *(v195 + 40) = v60;
    *(v195 + 48) = v198;
    if (v358)
    {
      *&v370 = v341;
      *&v384 = v358;
      MEMORY[0x1EEE9AC00](v195, v196);
      v367 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v197;
      v387 = 0;
      v199 = swift_allocObject();
      v200 = v378;
      v201 = v36;
      v202 = v199;
      *(v199 + 16) = v373;
      *(v199 + 32) = v387;
      *(v199 + 40) = v60;
      *(v199 + 48) = v200;
      sub_1D66A00C0(0);
      v204 = v203;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v205 = v377;
      v363 = v204;
      v206 = sub_1D72647CC();
      v387 = 0;
      v207 = swift_allocObject();
      *(v207 + 16) = v206;
      *(v207 + 24) = v373;
      *(v207 + 40) = v387;
      v208 = (v205 + *(v201 + 36));
      v209 = v208[3];
      v210 = v208[4];
      v211 = __swift_project_boxed_opaque_existential_1(v208, v209);
      MEMORY[0x1EEE9AC00](v211, v212);
      MEMORY[0x1EEE9AC00](v213, v214);
      v215 = v367;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v215;
      v339 = sub_1D6708AD0;
      v340 = v202;
      v216 = v371;
      v218 = sub_1D5D2F7A4(v194, sub_1D615B49C, v217, sub_1D615B4A4, &v341[-6], v209, v210);
      if (v216)
      {

        v107 = v377;
        v137 = &v386;
        goto LABEL_44;
      }

      v220 = v218;
      v221 = v364;

      if (v220)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v368;
        v36 = v221;
        v371 = 0;

        sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v60 = v366;
      }

      else
      {
        v371 = 0;

        sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v36 = v221;
        v60 = v366;
        v53 = v368;
      }
    }

    else
    {

      sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
    }

    v222 = v357;
    (v376)(v357, v372, v53);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAA90;
    v379 = xmmword_1D72BAA90;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v223 = swift_allocObject();
    v225 = v223;
    *(v223 + 16) = v373;
    *(v223 + 32) = v384;
    v226 = v378;
    *(v223 + 40) = v60;
    *(v223 + 48) = v226;
    if (v356)
    {
      *&v370 = v341;
      *&v384 = v356;
      MEMORY[0x1EEE9AC00](v223, v224);
      v367 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v225;
      v387 = 0;
      v227 = swift_allocObject();
      v228 = v378;
      v229 = v36;
      v230 = v227;
      *(v227 + 16) = v373;
      *(v227 + 32) = v387;
      *(v227 + 40) = v60;
      *(v227 + 48) = v228;
      sub_1D66A00C0(0);
      v232 = v231;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      swift_retain_n();

      v233 = v377;
      v363 = v232;
      v234 = sub_1D72647CC();
      v387 = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = v234;
      *(v235 + 24) = v373;
      *(v235 + 40) = v387;
      v236 = (v233 + *(v229 + 36));
      v237 = v236[3];
      v238 = v236[4];
      v239 = __swift_project_boxed_opaque_existential_1(v236, v237);
      MEMORY[0x1EEE9AC00](v239, v240);
      MEMORY[0x1EEE9AC00](v241, v242);
      v243 = v367;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v243;
      v339 = sub_1D6708AD0;
      v340 = v230;
      v244 = v371;
      v246 = sub_1D5D2F7A4(v222, sub_1D615B49C, v245, sub_1D615B4A4, &v341[-6], v237, v238);
      if (v244)
      {

        v247 = v377;
        v248 = v357;

LABEL_76:
        v337 = v248;
LABEL_77:
        sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);
LABEL_78:
        v82 = v247;
        return sub_1D5D2CFE8(v82, sub_1D66A002C);
      }

      v249 = v246;

      if (v249)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v36 = v229;
        v53 = v368;
        v371 = 0;

        sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v60 = v366;
      }

      else
      {
        v371 = 0;

        sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
        v111 = v365;
        v36 = v229;
        v60 = v366;
        v53 = v368;
      }
    }

    else
    {

      sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
    }

    v250 = v355;
    (v376)(v355, v372, v53);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAAA0;
    v379 = xmmword_1D72BAAA0;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v251 = swift_allocObject();
    v253 = v251;
    *(v251 + 16) = v373;
    *(v251 + 32) = v384;
    v254 = v378;
    *(v251 + 40) = v60;
    *(v251 + 48) = v254;
    v255 = v353;
    if (v353 == 255)
    {

      sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v372 = v341;
      v256 = v352;
      v257 = v351;
      *&v384 = v352;
      *(&v384 + 1) = v351;
      v385 = v353 & 1;
      MEMORY[0x1EEE9AC00](v251, v252);
      *&v370 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v253;
      v387 = 0;
      v258 = swift_allocObject();
      v259 = v378;
      v260 = v258;
      *(v258 + 16) = v373;
      *(v258 + 32) = v387;
      *(v258 + 40) = v60;
      *(v258 + 48) = v259;
      swift_retain_n();
      sub_1D6189668(v256, v257, v255);
      sub_1D66A00C0(0);
      v262 = v261;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      v263 = v377;
      v367 = v262;
      v264 = sub_1D72647CC();
      v387 = 0;
      v265 = swift_allocObject();
      *(v265 + 16) = v264;
      *(v265 + 24) = v373;
      *(v265 + 40) = v387;
      v266 = (v263 + *(v36 + 36));
      v267 = v266[3];
      v268 = v266[4];
      v269 = __swift_project_boxed_opaque_existential_1(v266, v267);
      MEMORY[0x1EEE9AC00](v269, v270);
      MEMORY[0x1EEE9AC00](v271, v272);
      v273 = v370;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v273;
      v339 = sub_1D6708AD0;
      v340 = v260;
      v274 = v371;
      v276 = sub_1D5D2F7A4(v250, sub_1D615B49C, v275, sub_1D615B4A4, &v341[-6], v267, v268);
      if (v274)
      {

        v247 = v377;
        v277 = &v383;
LABEL_75:
        v248 = *(v277 - 32);
        sub_1D5D2F2C8(v384, *(&v384 + 1), v385);
        goto LABEL_76;
      }

      v278 = v276;
      v60 = v366;

      if (v278)
      {
        sub_1D60ED320();
        sub_1D72647EC();
      }

      v371 = 0;

      sub_1D5D2F2C8(v384, *(&v384 + 1), v385);
      sub_1D5D2CFE8(v355, type metadata accessor for FormatVersionRequirement);
      v111 = v365;
    }

    v279 = v354;
    (v376)(v354, v369, v368);
    swift_storeEnumTagMultiPayload();
    v373 = xmmword_1D72BAAB0;
    v384 = xmmword_1D72BAAB0;
    v385 = 0;
    LOBYTE(v379) = 0;
    v280 = swift_allocObject();
    v282 = v280;
    *(v280 + 16) = v373;
    *(v280 + 32) = v379;
    v283 = v378;
    *(v280 + 40) = v60;
    *(v280 + 48) = v283;
    v284 = v350;
    if (v350 == 255)
    {

      sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);

      v308 = v371;
    }

    else
    {
      v372 = v341;
      v285 = v349;
      v286 = v348;
      *&v379 = v349;
      *(&v379 + 1) = v348;
      v287 = v347;
      v288 = v346;
      v380 = v347;
      v381 = v346;
      v382 = v350 & 1;
      MEMORY[0x1EEE9AC00](v280, v281);
      *&v370 = &v341[-6];
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v282;
      v387 = 0;
      v289 = swift_allocObject();
      v290 = v378;
      v291 = v289;
      *(v289 + 16) = v373;
      *(v289 + 32) = v387;
      *(v289 + 40) = v60;
      *(v289 + 48) = v290;
      swift_retain_n();
      sub_1D66A01E4(v285, v286, v287, v288, v284);
      sub_1D66A00C0(0);
      v293 = v292;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      v294 = v377;
      v367 = v293;
      v295 = sub_1D72647CC();
      v387 = 0;
      v296 = swift_allocObject();
      *(v296 + 16) = v295;
      *(v296 + 24) = v373;
      *(v296 + 40) = v387;
      v297 = (v294 + *(v36 + 36));
      v298 = v297[3];
      v299 = v297[4];
      v300 = __swift_project_boxed_opaque_existential_1(v297, v298);
      MEMORY[0x1EEE9AC00](v300, v301);
      MEMORY[0x1EEE9AC00](v302, v303);
      v304 = v370;
      v341[-4] = sub_1D615B4A4;
      v341[-3] = v304;
      v339 = sub_1D6708AD0;
      v340 = v291;
      v305 = v371;
      v307 = sub_1D5D2F7A4(v354, sub_1D615B49C, v306, sub_1D615B4A4, &v341[-6], v298, v299);
      v308 = v305;
      if (v305)
      {

        v247 = v377;
        v248 = v354;
        sub_1D618909C(v379, *(&v379 + 1), v380, v381, v382);
        goto LABEL_76;
      }

      v309 = v307;

      if (v309)
      {
        sub_1D61888F8();
        sub_1D72647EC();
      }

      sub_1D618909C(v379, *(&v379 + 1), v380, v381, v382);
      sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
      v111 = v365;
      v60 = v366;
    }

    (v376)(v111, v369, v368);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D72BAAC0;
    v379 = xmmword_1D72BAAC0;
    LOBYTE(v380) = 0;
    LOBYTE(v384) = 0;
    v310 = swift_allocObject();
    v312 = v310;
    *(v310 + 16) = v376;
    *(v310 + 32) = v384;
    v313 = v378;
    *(v310 + 40) = v60;
    *(v310 + 48) = v313;
    v314 = v60;
    v315 = v345;
    if (v345 == 255)
    {

      sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v375 = v341;
      v316 = v344;
      v317 = v343;
      *&v384 = v344;
      *(&v384 + 1) = v343;
      v385 = v345 & 1;
      MEMORY[0x1EEE9AC00](v310, v311);
      v371 = v308;
      v341[-4] = sub_1D5B4AA6C;
      v341[-3] = 0;
      v339 = sub_1D6708AD0;
      v340 = v312;
      v387 = 0;
      v318 = swift_allocObject();
      v319 = v378;
      v320 = v318;
      *(v318 + 16) = v376;
      *(v318 + 32) = v387;
      *(v318 + 40) = v314;
      *(v318 + 48) = v319;
      swift_retain_n();
      sub_1D6189668(v316, v317, v315);
      sub_1D66A00C0(0);
      v322 = v321;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0, MEMORY[0x1E69E6F60]);
      v323 = v111;
      v324 = v377;
      v378 = v322;
      v325 = sub_1D72647CC();
      v387 = 0;
      v326 = swift_allocObject();
      *(v326 + 16) = v325;
      *(v326 + 24) = v376;
      *(v326 + 40) = v387;
      v327 = (v324 + *(v36 + 36));
      v328 = v327[3];
      v329 = v327[4];
      v330 = __swift_project_boxed_opaque_existential_1(v327, v328);
      MEMORY[0x1EEE9AC00](v330, v331);
      MEMORY[0x1EEE9AC00](v332, v333);
      v341[-4] = sub_1D615B4A4;
      v341[-3] = &v341[-6];
      v339 = sub_1D66A0154;
      v340 = v320;
      v334 = v371;
      v336 = sub_1D5D2F7A4(v323, sub_1D615B49C, v335, sub_1D615B4A4, &v341[-6], v328, v329);
      if (v334)
      {

        v247 = v377;
        v277 = &v390;
        goto LABEL_75;
      }

      v338 = v336;

      if (v338)
      {
        sub_1D60ED320();
        v247 = v377;
        sub_1D72647EC();

        sub_1D5D2F2C8(v384, *(&v384 + 1), v385);
        v337 = v365;
        goto LABEL_77;
      }

      sub_1D5D2F2C8(v384, *(&v384 + 1), v385);
      sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);
    }

    v247 = v377;
    goto LABEL_78;
  }

  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  v82 = v377;
  return sub_1D5D2CFE8(v82, sub_1D66A002C);
}

uint64_t sub_1D651A868(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F697461727564;
    v7 = 0x6D69546E69676562;
    v8 = 0x7366664F656D6974;
    if (a1 != 3)
    {
      v8 = 0x65646F4D6C6C6966;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6465657073;
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
    v1 = 0x7546676E696D6974;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F43746165706572;
    v4 = 0x7544746165706572;
    if (a1 != 6)
    {
      v4 = 0x657665726F747561;
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

uint64_t sub_1D651A9F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A1748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D651AA30(uint64_t a1)
{
  v2 = sub_1D669FF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651AA6C(uint64_t a1)
{
  v2 = sub_1D669FF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTimingFillMode.encode(to:)(void *a1)
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
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCDC8);
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

uint64_t sub_1D651AFC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x506C6F72746E6F63;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED000073746E696FLL;
  }

  if (*a2)
  {
    v5 = 0x506C6F72746E6F63;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xED000073746E696FLL;
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

uint64_t sub_1D651B074()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D651B0FC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D651B170(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D651B200(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x506C6F72746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED000073746E696FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatMediaTimingFunctionControlPoints.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66A0250(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A02E4(0);
  sub_1D5B58B84(&qword_1EC886DC0, sub_1D66A02E4, &unk_1D7321584);
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

      v22 = sub_1D661F230();
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

uint64_t FormatMediaTimingFunctionControlPoints.encode(to:)(void *a1)
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
  sub_1D66A0464(0);
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
  sub_1D66A02E4(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886DC0, sub_1D66A02E4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMediaTimingFunctionControlPoints, v26, v28, v23, &type metadata for FormatMediaTimingFunctionControlPoints, v26, &type metadata for FormatVersions.StarSky, v24, v20, v27, &off_1F51F6CD8);
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
  v111 = sub_1D6708AD4;
  v112 = v38;
  v133 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v133;
  v126 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D66A04F8(0);
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EC886DD8, sub_1D66A04F8, MEMORY[0x1E69E6F60]);
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
  v111 = sub_1D66A058C;
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
    v111 = sub_1D6708AD4;
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
    v111 = sub_1D6708AD4;
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
    v111 = sub_1D6708AD4;
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
    v111 = sub_1D6708AD4;
    v112 = v101;
    sub_1D5D2BC70(v95, sub_1D615B49C, v110, sub_1D615B4A4, &v113[-6], v104, v105);

    sub_1D72647EC();
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

    v60 = v62;
  }

  return sub_1D5D2CFE8(v60, sub_1D66A0464);
}

uint64_t sub_1D651C64C()
{
  v1 = *v0;
  v2 = 0x31746E696F70;
  v3 = 0x33746E696F70;
  v4 = 0x34746E696F70;
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
    v2 = 0x32746E696F70;
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

uint64_t sub_1D651C6D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A1AF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D651C708(uint64_t a1)
{
  v2 = sub_1D66A03BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651C744(uint64_t a1)
{
  v2 = sub_1D66A03BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTimingFunctionName.encode(to:)(void *a1)
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
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD50);
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

uint64_t sub_1D651CD6C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D67082CC(0);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6707EA0(0);
  sub_1D5B58B84(&qword_1EC88A268, sub_1D6707EA0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = a2;
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

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D661F3F4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C86E18();
  v42 = 0uLL;
  v43 = 0;
  sub_1D726427C();
  v18 = v44;
  v20 = v45;
  v19 = v46;
  v42 = xmmword_1D728CF30;
  v43 = 0;
  sub_1D5C791D8();
  sub_1D726427C();
  v38 = v18;
  v39 = v20;
  v26 = v44;
  v27 = v45;
  v44 = xmmword_1D7297410;
  LOBYTE(v45) = 0;
  sub_1D6708360();
  sub_1D726427C();
  v36 = v26;
  v37 = v19;
  LOBYTE(v19) = v42;
  sub_1D5C34D84(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  sub_1D67083B4();
  sub_1D726431C();
  v28 = *(&v38 + 1);
  v29 = v38;
  (*(v13 + 8))(v10, v7);
  v30 = v42;
  v31 = v19;
  v32 = v39;
  v33 = v40;
  *v40 = __PAIR128__(v28, v29);
  v34 = v37;
  *(v33 + 2) = v32;
  *(v33 + 3) = v34;
  v35 = *(&v36 + 1);
  *(v33 + 4) = v36;
  *(v33 + 5) = v35;
  *(v33 + 6) = v27;
  *(v33 + 56) = v31;
  *(v33 + 57) = *v47;
  *(v33 + 15) = *&v47[3];
  *(v33 + 8) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D651D218(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v146 = &v139 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v153 = &v139 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = &v139 - v16;
  sub_1D6707D78(0, v15);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 8);
  v148 = *v1;
  v24 = *(v1 + 24);
  v147 = *(v1 + 16);
  v154 = v24;
  v25 = *(v1 + 40);
  v150 = *(v1 + 32);
  v143 = v25;
  v151 = *(v1 + 48);
  v169 = *(v1 + 56);
  v142 = *(v1 + 64);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D6707EA0(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EC88A268, sub_1D6707EA0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMenuGroup, v29, v31, v26, &type metadata for FormatMenuGroup, v29, &type metadata for FormatVersions.StarSky, v27, v22, v30, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v159 = v33;
  *&v160 = v32;
  v157 = v34 + 16;
  v158 = v35;
  v35(v17);
  v36 = type metadata accessor for FormatVersionRequirement.Value(0);
  *&v155 = v17;
  v156 = v36;
  swift_storeEnumTagMultiPayload();
  v166 = 0uLL;
  v167 = 0;
  v37 = &v22[*(v19 + 44)];
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v163) = 0;
  v40 = swift_allocObject();
  v42 = v40;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v163;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  v162 = v22;
  v149 = v6;
  v43 = v154;
  v152 = v19;
  v144 = v38;
  v145 = v39;
  if ((~v23 & 0xF000000000000007) != 0 || (v154 & 7) != 7)
  {
    v141 = &v139;
    v57 = v148;
    *&v163 = v148;
    *(&v163 + 1) = v23;
    v58 = v147;
    v164 = v147;
    v165 = v154;
    MEMORY[0x1EEE9AC00](v40, v41);
    v59 = v38;
    v60 = v19;
    v140 = &v139 - 6;
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708C4C;
    v138 = v42;
    v168 = 0;
    v61 = swift_allocObject();
    v62 = v162;
    v63 = v39;
    v64 = v61;
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = v168;
    *(v61 + 40) = v59;
    *(v61 + 48) = v63;
    swift_retain_n();
    sub_1D62B738C(v57, v23, v58, v43);
    sub_1D6707E0C(0);
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C, MEMORY[0x1E69E6F60]);
    v65 = sub_1D72647CC();
    v168 = 0;
    v66 = swift_allocObject();
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    *(v66 + 16) = v65;
    *(v66 + 40) = v168;
    v67 = &v62[*(v60 + 36)];
    v68 = *(v67 + 3);
    v69 = *(v67 + 4);
    v70 = __swift_project_boxed_opaque_existential_1(v67, v68);
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    v74 = v140;
    *(&v139 - 4) = sub_1D615B4A4;
    *(&v139 - 3) = v74;
    v137 = sub_1D6708C4C;
    v138 = v64;
    v75 = v155;
    v76 = v161;
    v78 = sub_1D5D2F7A4(v155, sub_1D615B49C, v77, sub_1D615B4A4, (&v139 - 6), v68, v69);
    if (v76)
    {

      v79 = v162;
      sub_1D62B7130(v163, *(&v163 + 1), v164, v165);
      sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      v80 = v79;
      return sub_1D5D2CFE8(v80, sub_1D6707D78);
    }

    v113 = v78;
    v114 = v145;

    if (v113)
    {
      sub_1D6326A60();
      sub_1D72647EC();
      v6 = v149;
      v44 = v151;
      v39 = v114;
      *&v161 = 0;

      sub_1D62B7130(v163, *(&v163 + 1), v164, v165);
      v38 = v144;
      goto LABEL_7;
    }

    *&v161 = 0;

    sub_1D62B7130(v163, *(&v163 + 1), v164, v165);
    v6 = v149;
    v39 = v114;
    v38 = v144;
  }

  else
  {
  }

  v44 = v151;
LABEL_7:
  sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
  v45 = v153;
  v158(v153, v159, v160);
  swift_storeEnumTagMultiPayload();
  v155 = xmmword_1D728CF30;
  v166 = xmmword_1D728CF30;
  v167 = 0;
  LOBYTE(v163) = 0;
  v46 = swift_allocObject();
  v48 = v46;
  *(v46 + 16) = v155;
  *(v46 + 32) = v163;
  *(v46 + 40) = v38;
  *(v46 + 48) = v39;
  v49 = v150;
  if ((~(v150 & v44) & 0x3000000000000007) != 0)
  {
    v154 = &v139;
    v81 = v143;
    *&v163 = v150;
    *(&v163 + 1) = v143;
    v164 = v44;
    MEMORY[0x1EEE9AC00](v46, v47);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708C4C;
    v138 = v48;
    v168 = 0;
    v82 = v45;
    v83 = swift_allocObject();
    *(v83 + 16) = v155;
    *(v83 + 32) = v168;
    *(v83 + 40) = v38;
    *(v83 + 48) = v39;
    swift_retain_n();
    sub_1D670818C(v49, v81, v44);
    sub_1D6707E0C(0);
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C, MEMORY[0x1E69E6F60]);
    v84 = v162;
    v85 = sub_1D72647CC();
    v168 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v155;
    *(v86 + 40) = v168;
    v87 = &v84[*(v152 + 36)];
    v88 = *(v87 + 3);
    v89 = *(v87 + 4);
    v90 = __swift_project_boxed_opaque_existential_1(v87, v88);
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v139 - 4) = sub_1D615B4A4;
    *(&v139 - 3) = (&v139 - 6);
    v137 = sub_1D6708C4C;
    v138 = v83;
    v94 = v161;
    v96 = sub_1D5D2F7A4(v82, sub_1D615B49C, v95, sub_1D615B4A4, (&v139 - 6), v88, v89);
    v50 = v94;
    if (v94)
    {

      v97 = v153;
      v98 = v162;
      sub_1D62B703C(v163, *(&v163 + 1), v164);
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
      v80 = v98;
      return sub_1D5D2CFE8(v80, sub_1D6707D78);
    }

    v115 = v96;
    v38 = v144;
    v39 = v145;

    if (v115)
    {
      sub_1D66F3A48();
      v52 = v162;
      sub_1D72647EC();
      v45 = v153;

      sub_1D62B703C(v163, *(&v163 + 1), v164);
      v51 = v149;
    }

    else
    {

      sub_1D62B703C(v163, *(&v163 + 1), v164);
      v52 = v162;
      v51 = v149;
      v45 = v153;
    }
  }

  else
  {

    v50 = v161;
    v51 = v6;
    v52 = v162;
  }

  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v53 = v146;
  v158(v146, v159, v160);
  swift_storeEnumTagMultiPayload();
  v161 = xmmword_1D7297410;
  v163 = xmmword_1D7297410;
  LOBYTE(v164) = 0;
  LOBYTE(v166) = 0;
  v54 = swift_allocObject();
  v56 = v54;
  *(v54 + 16) = v161;
  *(v54 + 32) = v166;
  *(v54 + 40) = v38;
  *(v54 + 48) = v39;
  if (v169 == 3)
  {
    *&v161 = v50;
  }

  else
  {
    *&v155 = &v139;
    LOBYTE(v166) = v169;
    MEMORY[0x1EEE9AC00](v54, v55);
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D6708C4C;
    v138 = v56;
    v168 = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v161;
    *(v99 + 32) = v168;
    *(v99 + 40) = v38;
    *(v99 + 48) = v39;
    sub_1D6707E0C(0);
    v101 = v100;
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v154 = v101;
    v102 = sub_1D72647CC();
    v168 = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v161;
    *(v103 + 40) = v168;
    v104 = &v52[*(v152 + 36)];
    v105 = *(v104 + 3);
    v106 = *(v104 + 4);
    v107 = __swift_project_boxed_opaque_existential_1(v104, v105);
    MEMORY[0x1EEE9AC00](v107, v108);
    MEMORY[0x1EEE9AC00](v109, v110);
    *(&v139 - 4) = sub_1D615B4A4;
    *(&v139 - 3) = (&v139 - 6);
    v137 = sub_1D67080BC;
    v138 = v99;
    v112 = sub_1D5D2F7A4(v53, sub_1D615B49C, v111, sub_1D615B4A4, (&v139 - 6), v105, v106);
    if (v50)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

      v80 = v162;
      return sub_1D5D2CFE8(v80, sub_1D6707D78);
    }

    v116 = v112;
    v38 = v144;
    v39 = v145;

    v51 = v149;
    if (v116)
    {
      sub_1D6708138();
      sub_1D72647EC();
    }

    *&v161 = 0;
    v53 = v146;
  }

  sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

  v158(v51, v159, v160);
  swift_storeEnumTagMultiPayload();
  *&v166 = v142;
  v160 = xmmword_1D72BAA60;
  v163 = xmmword_1D72BAA60;
  LOBYTE(v164) = 0;
  v168 = 0;
  v117 = swift_allocObject();
  v159 = &v139;
  *(v117 + 16) = v160;
  *(v117 + 32) = v168;
  *(v117 + 40) = v38;
  *(v117 + 48) = v39;
  MEMORY[0x1EEE9AC00](v117, v118);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D6708C4C;
  v138 = v119;
  v168 = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v160;
  *(v120 + 32) = v168;
  *(v120 + 40) = v38;
  *(v120 + 48) = v39;
  sub_1D6707E0C(0);
  v122 = v121;
  sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v123 = v162;
  v158 = v122;
  v124 = sub_1D72647CC();
  v168 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v124;
  *(v125 + 24) = v160;
  *(v125 + 40) = v168;
  v126 = (v123 + *(v152 + 36));
  v127 = v126[3];
  v128 = v126[4];
  v129 = __swift_project_boxed_opaque_existential_1(v126, v127);
  MEMORY[0x1EEE9AC00](v129, v130);
  MEMORY[0x1EEE9AC00](v131, v132);
  *(&v139 - 4) = sub_1D615B4A4;
  *(&v139 - 3) = (&v139 - 6);
  v133 = v149;
  v137 = sub_1D6708C4C;
  v138 = v120;
  v134 = v161;
  sub_1D5D2BC70(v149, sub_1D615B49C, v135, sub_1D615B4A4, (&v139 - 6), v127, v128);
  if (v134)
  {
    sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
    sub_1D6708020();
    sub_1D72647EC();
    sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
  }

  v80 = v123;
  return sub_1D5D2CFE8(v80, sub_1D6707D78);
}

uint64_t sub_1D651E458()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656C797473;
  v4 = 0x736D657469;
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
    v2 = 0x6567616D69;
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

uint64_t sub_1D651E4DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A1C90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D651E514(uint64_t a1)
{
  v2 = sub_1D6707F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651E550(uint64_t a1)
{
  v2 = sub_1D6707F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D651E58C(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v64 = v26;
  sub_1D5D2EE70(&type metadata for FormatMenuGroupable, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatMenuGroupable, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v27, v26, v29, &off_1F51F6CD8);
  v31 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v31)
    {
      v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v62[1] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v62[2] = v54;
      v62[3] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v63 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v62[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62B72DC(v62, v60);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD50);
      (*(*(v55 - 8) + 16))(v18, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A6540(1, v62, v18);
      sub_1D62B7338(v62);
      v44 = v18;
    }

    else
    {
      v40 = *(a2 + 32);
      v61[0] = *(a2 + 16);
      v61[1] = v40;
      v41 = *(a2 + 64);
      v61[2] = *(a2 + 48);
      v61[3] = v41;
      sub_1D5CFBAA8(v61, v60);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD50);
      (*(*(v42 - 8) + 16))(v22, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A63A0(0, v61, v22);
      sub_1D5D08954(v61);
      v44 = v22;
    }
  }

  else if (v31 == 2)
  {
    v45 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = qword_1EDF31ED0;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
    (*(*(v48 - 8) + 16))(v14, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = v64;
    sub_1D63A66E8(2, v45, v46, v14);

    v44 = v14;
  }

  else
  {
    if (v31 == 3)
    {
      v32 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = qword_1EDF31ED0;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
      v38 = v59;
      (*(*(v36 - 8) + 16))(v59, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A68BC(3, v32, v33, v34, v38);
    }

    else
    {
      v50 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD50);
      (*(*(v51 - 8) + 16))(v7, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v50;
      v39 = v64;
      sub_1D63A6A88(4, v53, v7);
      v38 = v7;
    }

    v44 = v38;
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D651EC74()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D651ED48(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D651EE08(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D651EED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663C18(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D651EF08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1835365481;
  v5 = 0xE600000000000000;
  v6 = 0x686374697773;
  v7 = 0x646E616D6D6F63;
  if (v2 != 3)
  {
    v7 = 0x676E69646E6962;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x70756F7267;
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

uint64_t FormatMenuImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMenuImage, &type metadata for FormatCodingKeys, v21, v19, &type metadata for FormatMenuImage, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v18, v14, v20, &off_1F51F6B78);
  if ((v17 & 0x2000000000000000) != 0)
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
    sub_1D63BA574(1, v15, v6);
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
    sub_1D63BA3A4(0, v15, v16, v17, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D651F35C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x646E616D6D6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x646E616D6D6F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D651F400()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D651F480(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D651F4EC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D651F568(uint64_t *a1@<X8>)
{
  v2 = 0x646E616D6D6F63;
  if (*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D651F5F4(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v100 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  sub_1D66F38A4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v103 = *(v1 + 16);
  v104 = v18;
  v19 = *(v1 + 40);
  v93 = *(v1 + 32);
  v92 = v19;
  v20 = *(v1 + 56);
  v91 = *(v1 + 48);
  v89 = v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5C76BC4(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF24C28, sub_1D5C76BC4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMenuItem, v24, v26, v21, &type metadata for FormatMenuItem, v24, &type metadata for FormatVersions.Azden, v22, v17, v25, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCDF8);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v97 = v28;
  v98 = v27;
  v96 = v30;
  v95 = v29 + 16;
  (v30)(v12);
  v94 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v104;
  v109 = v103;
  v106 = 0uLL;
  v107 = 0;
  v31 = &v17[*(v14 + 44)];
  *&v103 = v14;
  v32 = *v31;
  v33 = *(v31 + 1);
  v110 = 0;
  v34 = swift_allocObject();
  *&v104 = &v87;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v110;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6708C44;
  v86 = v36;
  v110 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v110;
  v99 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66F3938(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02AE8, sub_1D66F3938, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v101 = v40;
  v102 = v39;
  v41 = sub_1D72647CC();
  v110 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v110;
  v43 = &v17[*(v103 + 36)];
  *&v103 = v17;
  v44 = *(v43 + 3);
  v45 = *(v43 + 4);
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v87 - 4) = sub_1D615B4A4;
  *(&v87 - 3) = (&v87 - 6);
  v85 = sub_1D66F39CC;
  v86 = v37;
  v50 = v105;
  sub_1D5D2BC70(v12, sub_1D615B49C, v51, sub_1D615B4A4, (&v87 - 6), v44, v45);
  if (v50)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v52 = v103;
  }

  else
  {
    v88 = v43;

    sub_1D6326A60();
    v52 = v103;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v53 = v100;
    v96(v100, v97, v98);
    swift_storeEnumTagMultiPayload();
    *&v108 = v93;
    *(&v108 + 1) = v92;
    *&v109 = v91;
    v105 = xmmword_1D728CF30;
    v106 = xmmword_1D728CF30;
    v107 = 0;
    v110 = 0;
    v54 = swift_allocObject();
    *&v104 = &v87;
    *(v54 + 16) = v105;
    *(v54 + 32) = v110;
    v55 = v99;
    *(v54 + 40) = v99;
    *(v54 + 48) = v33;
    MEMORY[0x1EEE9AC00](v54, v56);
    v93 = 0;
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D6708C44;
    v86 = v57;
    v110 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v105;
    *(v58 + 32) = v110;
    *(v58 + 40) = v55;
    *(v58 + 48) = v33;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v110 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v105;
    *(v60 + 40) = v110;
    v61 = *(v88 + 3);
    v62 = *(v88 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v88, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v87 - 4) = sub_1D615B4A4;
    *(&v87 - 3) = (&v87 - 6);
    v85 = sub_1D6708C44;
    v86 = v58;
    v67 = v93;
    sub_1D5D2BC70(v53, sub_1D615B49C, v68, sub_1D615B4A4, (&v87 - 6), v61, v62);
    if (v67)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D66F3A48();
      sub_1D72647EC();
      sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);

      v70 = v90;
      v96(v90, v97, v98);
      swift_storeEnumTagMultiPayload();
      *&v106 = v89;
      v105 = xmmword_1D7297410;
      v108 = xmmword_1D7297410;
      LOBYTE(v109) = 0;
      v110 = 0;
      v71 = swift_allocObject();
      *&v104 = &v87;
      *(v71 + 16) = v105;
      *(v71 + 32) = v110;
      v72 = v99;
      *(v71 + 40) = v99;
      *(v71 + 48) = v33;
      MEMORY[0x1EEE9AC00](v71, v73);
      *(&v87 - 4) = sub_1D5B4AA6C;
      *(&v87 - 3) = 0;
      v85 = sub_1D6708C44;
      v86 = v74;
      v110 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v105;
      *(v75 + 32) = v110;
      *(v75 + 40) = v72;
      *(v75 + 48) = v33;
      swift_retain_n();
      v76 = sub_1D72647CC();
      v110 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *(v77 + 24) = v105;
      *(v77 + 40) = v110;
      v78 = *(v88 + 3);
      v79 = *(v88 + 4);
      v80 = __swift_project_boxed_opaque_existential_1(v88, v78);
      MEMORY[0x1EEE9AC00](v80, v81);
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v87 - 4) = sub_1D615B4A4;
      *(&v87 - 3) = (&v87 - 6);
      v85 = sub_1D6708C44;
      v86 = v75;
      sub_1D5D2BC70(v70, sub_1D615B49C, v84, sub_1D615B4A4, (&v87 - 6), v78, v79);

      sub_1D5C8892C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D66F38A4);
}

uint64_t sub_1D6520198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A2434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65201D0(uint64_t a1)
{
  v2 = sub_1D5C76CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652020C(uint64_t a1)
{
  v2 = sub_1D5C76CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6520248(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v52 = v26;
  sub_1D5D2EE70(&type metadata for FormatMenuItemAction, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatMenuItemAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v27, v26, v29, &off_1F51F6B78);
  v31 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v41 = qword_1EDF31F10;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCDF8);
      (*(*(v42 - 8) + 16))(v10, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v52;
      sub_1D63A2AAC(3, v39, v40, v10);

      v37 = type metadata accessor for FormatVersionRequirement;
      v38 = v10;
    }

    else
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCDF8);
      (*(*(v48 - 8) + 16))(v22, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v52;
      sub_1D64201C0(0, v22);
      v37 = type metadata accessor for FormatVersionRequirement;
      v38 = v22;
    }
  }

  else if (v31)
  {
    v44 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = qword_1EDF31F10;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = sub_1D725BD1C();
    v47 = __swift_project_value_buffer(v46, qword_1EDFFCDF8);
    (*(*(v46 - 8) + 16))(v14, v47, v46);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v52;
    sub_1D63A2918(2, v44, v14);

    v37 = type metadata accessor for FormatVersionRequirement;
    v38 = v14;
  }

  else
  {
    v32 = swift_projectBox();
    v33 = v51;
    sub_1D6706BB4(v32, v51, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCDE0);
    (*(*(v34 - 8) + 16))(v18, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v52;
    sub_1D63A2744(1, v33, v18);
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
    v37 = type metadata accessor for FormatCommandOpenURL;
    v38 = v33;
  }

  sub_1D5D2CFE8(v38, v37);
  return sub_1D5D2CFE8(v36, sub_1D5D30DC4);
}

uint64_t sub_1D652081C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65208D4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6520978(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6520A2C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE700000000000000;
  v5 = 0x646E616D6D6F63;
  if (*v1 != 2)
  {
    v5 = 0x686374697773;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x4C52556E65706FLL;
    v2 = 0xE700000000000000;
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

uint64_t FormatMenuItemBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
          *(v21 + 16) = &unk_1F5116048;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A0608();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D66A065C();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6520E3C(void *a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v19, v16, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
  (*(*(v20 - 8) + 16))(v10, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  a3(v15, v10);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6521118(void *a1, int a2)
{
  v28 = a2;
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD50);
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

uint64_t sub_1D6521580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x686374697773;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x686374697773;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1D652161C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6521694(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65216F8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D652176C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x686374697773;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatMicaBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D66A06B0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A0744(0);
  sub_1D5B58B84(&qword_1EC886E10, sub_1D66A0744, &unk_1D7321584);
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

  v13 = v37;
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

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 0x6D6954616964656DLL, 0xEB00000000676E69);
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

  sub_1D66A08C4();
  v29 = 0uLL;
  LOBYTE(v30) = 0;
  sub_1D726431C();
  v17 = v27;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v33;
  *(v13 + 88) = v34;
  v24 = v36[0];
  *(v13 + 104) = v35;
  *(v13 + 120) = v24;
  *(v13 + 129) = *(v36 + 9);
  v25 = v29;
  *(v13 + 24) = v30;
  v26 = v32;
  *(v13 + 40) = v31;
  *(v13 + 56) = v26;
  *(v13 + 72) = v23;
  *v13 = v17;
  *(v13 + 8) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMicaBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v73 - v8;
  sub_1D66A096C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 11);
  v17 = *(v1 + 15);
  v113 = *(v1 + 13);
  v114[0] = v17;
  *(v114 + 9) = *(v1 + 129);
  v18 = *(v1 + 3);
  v19 = *(v1 + 7);
  v109 = *(v1 + 5);
  v110 = v19;
  v111 = *(v1 + 9);
  v112 = v16;
  v107 = *(v1 + 1);
  v108 = v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66A0744(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886E10, sub_1D66A0744, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMicaBackground, v23, v25, v20, &type metadata for FormatMicaBackground, v23, &type metadata for FormatVersions.AzdenB, v21, v14, v24, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCDC8);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v75 = v27;
  v76 = v26;
  v73[1] = v28 + 16;
  v74 = v29;
  (v29)(v9);
  v73[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v106 = v15;
  v104 = 0;
  v103 = 0;
  v105 = 0;
  v30 = &v14[*(v11 + 44)];
  v31 = v11;
  v32 = *v30;
  v33 = *(v30 + 1);
  LOBYTE(v101[0]) = 0;
  v34 = swift_allocObject();
  *&v82 = v73;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v101[0];
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v81 = &v73[-6];
  v73[-4] = sub_1D5B4AA6C;
  v73[-3] = 0;
  v71 = sub_1D6708AD8;
  v72 = v36;
  LOBYTE(v101[0]) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v101[0];
  v79 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66A0A00(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC886E28, sub_1D66A0A00, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v39;
  v78 = v40;
  v41 = sub_1D72647CC();
  LOBYTE(v101[0]) = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v101[0];
  v43 = &v14[*(v31 + 36)];
  v115 = v14;
  v44 = *(v43 + 3);
  v45 = *(v43 + 4);
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v50 = v81;
  v73[-4] = sub_1D615B4A4;
  v73[-3] = v50;
  v71 = sub_1D6708AD8;
  v72 = v37;
  v51 = v83;
  sub_1D5D2BC70(v9, sub_1D615B49C, v52, sub_1D615B4A4, &v73[-6], v44, v45);
  if (v51)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v115;
  }

  else
  {
    v83 = v43;
    v54 = v79;

    sub_1D66A0A94();
    v53 = v115;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v55 = v77;
    v74(v77, v75, v76);
    swift_storeEnumTagMultiPayload();
    v82 = xmmword_1D728CF30;
    v99[2] = xmmword_1D728CF30;
    v100 = 0;
    LOBYTE(v92) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v82;
    *(v56 + 32) = v92;
    *(v56 + 40) = v54;
    *(v56 + 48) = v33;
    v101[6] = v113;
    v102[0] = v114[0];
    *(v102 + 9) = *(v114 + 9);
    v101[2] = v109;
    v101[3] = v110;
    v101[4] = v111;
    v101[5] = v112;
    v101[0] = v107;
    v101[1] = v108;
    v57 = sub_1D60486AC(v101);
    if (v57 == 1)
    {

      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v81 = v73;
      v98 = v113;
      v99[0] = v114[0];
      *(v99 + 9) = *(v114 + 9);
      v94 = v109;
      v95 = v110;
      v96 = v111;
      v97 = v112;
      v92 = v107;
      v93 = v108;
      MEMORY[0x1EEE9AC00](v57, v58);
      v73[-4] = sub_1D5B4AA6C;
      v73[-3] = 0;
      v71 = sub_1D6708AD8;
      v72 = v56;
      LOBYTE(v84) = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v82;
      *(v60 + 32) = v84;
      *(v60 + 40) = v54;
      *(v60 + 48) = v33;
      swift_retain_n();
      sub_1D5D355B8(&v107, &v84, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v61 = sub_1D72647CC();
      LOBYTE(v84) = 0;
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v82;
      *(v62 + 40) = v84;
      v63 = *(v83 + 3);
      v64 = *(v83 + 4);
      v65 = __swift_project_boxed_opaque_existential_1(v83, v63);
      MEMORY[0x1EEE9AC00](v65, v66);
      MEMORY[0x1EEE9AC00](v67, v68);
      v73[-4] = sub_1D615B4A4;
      v73[-3] = &v73[-6];
      v69 = v77;
      v71 = sub_1D66A0AE8;
      v72 = v60;
      LOBYTE(v63) = sub_1D5D2F7A4(v77, sub_1D615B49C, v70, sub_1D615B4A4, &v73[-6], v63, v64);

      if (v63)
      {
        sub_1D6662A38();
        v53 = v115;
        sub_1D72647EC();

        v90 = v98;
        v91[0] = v99[0];
        *(v91 + 9) = *(v99 + 9);
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v89 = v97;
        v84 = v92;
        v85 = v93;
        sub_1D62B49F0(&v84);
        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        v90 = v98;
        v91[0] = v99[0];
        *(v91 + 9) = *(v99 + 9);
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v89 = v97;
        v84 = v92;
        v85 = v93;
        sub_1D62B49F0(&v84);
        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
        v53 = v115;
      }
    }
  }

  return sub_1D5D2CFE8(v53, sub_1D66A096C);
}

uint64_t sub_1D65225C0()
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
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D652261C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A258C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6522654(uint64_t a1)
{
  v2 = sub_1D66A081C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6522690(uint64_t a1)
{
  v2 = sub_1D66A081C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v399 = &v373 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v375 = (&v373 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v376 = &v373 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v378 = &v373 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v377 = &v373 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v379 = &v373 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v380 = &v373 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v381 = &v373 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v382 = &v373 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v385 = &v373 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v386 = &v373 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v387 = &v373 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v388 = (&v373 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v398 = (&v373 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v373 - v49;
  sub_1D66A373C(0);
  v400 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v373 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5E1AE68(0);
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EC87F978, sub_1D5E1AE68, &unk_1D7321584);
  v397 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.AzdenB, v56, v54, v59, &off_1F51F6AD8);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v395 = v2;
  v63 = qword_1EDF31EF8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCDC8);
  v66 = *(v64 - 1);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v396 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v399;
  v390 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v392 = v67;
  v393 = v68;
  v394 = v69;
  v391 = v65;
  if (v72 != 1)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v97 = v67;
    goto LABEL_9;
  }

  v389 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v400;
  v74 = v397;
  v75 = &v397[*(v400 + 11)];
  v77 = *v75;
  v76 = *(v75 + 1);
  v78 = v50;
  LOBYTE(v434) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v434;
  *(v79 + 40) = v77;
  *(v79 + 48) = v76;
  sub_1D5E1AE2C(0);
  v81 = v80;
  v82 = sub_1D5B58B84(&qword_1EC87F980, sub_1D5E1AE2C, MEMORY[0x1E69E6F60]);

  *&v399 = v81;
  v384 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v434) = 0;
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 32) = 0;
  *(v84 + 16) = v83;
  *(v84 + 40) = v434;
  v85 = (v74 + *(v73 + 9));
  v86 = v85[3];
  v87 = v85[4];
  v88 = __swift_project_boxed_opaque_existential_1(v85, v86);
  MEMORY[0x1EEE9AC00](v88, v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  *(&v373 - 4) = sub_1D5B4AA6C;
  *(&v373 - 3) = 0;
  v371 = sub_1D66A37D0;
  v372 = v79;
  v92 = v444;
  v94 = sub_1D5D2F7A4(v78, sub_1D615B49C, v93, sub_1D615B4A4, (&v373 - 6), v86, v87);
  v444 = v92;
  if (v92)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v95 = v74;
    return sub_1D5D2CFE8(v95, sub_1D66A373C);
  }

  v123 = v94;

  if ((v123 & 1) == 0)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v97 = v392;
    v65 = v391;
    goto LABEL_9;
  }

  v434 = 0uLL;
  LOBYTE(v435) = 0;
  *&v426 = v390;
  *(&v426 + 1) = v389;
  v124 = v397;
  v125 = v444;
  sub_1D72647EC();

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v97 = v392;
  v65 = v391;
  if (!v125)
  {
    v444 = 0;
LABEL_9:
    v98 = v395[4];
    v97(v398, v65, v396);
    swift_storeEnumTagMultiPayload();
    *&v426 = v98;
    v399 = xmmword_1D728CF30;
    v434 = xmmword_1D728CF30;
    LOBYTE(v435) = 0;
    v99 = v397;
    v100 = &v397[*(v400 + 11)];
    v102 = *v100;
    v101 = *(v100 + 1);
    LOBYTE(v418) = 0;
    v103 = swift_allocObject();
    v390 = &v373;
    *(v103 + 16) = v399;
    *(v103 + 32) = v418;
    *(v103 + 40) = v102;
    *(v103 + 48) = v101;
    MEMORY[0x1EEE9AC00](v103, v104);
    v389 = &v373 - 6;
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708ADC;
    v372 = v105;
    LOBYTE(v418) = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v399;
    *(v106 + 32) = v418;
    v374 = v102;
    *(v106 + 40) = v102;
    *(v106 + 48) = v101;
    sub_1D5E1AE2C(0);
    v108 = v107;
    v109 = sub_1D5B58B84(&qword_1EC87F980, sub_1D5E1AE2C, MEMORY[0x1E69E6F60]);
    v373 = v101;
    swift_retain_n();
    v383 = v108;
    v384 = v109;
    v110 = sub_1D72647CC();
    LOBYTE(v418) = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v399;
    *(v111 + 40) = v418;
    v112 = (v99 + *(v400 + 9));
    v113 = v112[3];
    v114 = v112[4];
    v115 = __swift_project_boxed_opaque_existential_1(v112, v113);
    MEMORY[0x1EEE9AC00](v115, v116);
    MEMORY[0x1EEE9AC00](v117, v118);
    v119 = v389;
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = v119;
    v371 = sub_1D6708ADC;
    v372 = v106;
    v120 = v398;
    v121 = v444;
    sub_1D5D2BC70(v398, sub_1D615B49C, v122, sub_1D615B4A4, (&v373 - 6), v113, v114);
    if (v121)
    {
      sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);

      v95 = v99;
      return sub_1D5D2CFE8(v95, sub_1D66A373C);
    }

    v400 = v112;

    sub_1D5CA1E90();
    sub_1D72647EC();
    v444 = 0;
    sub_1D5D2CFE8(v398, type metadata accessor for FormatVersionRequirement);

    v126 = v395;
    v127 = v395[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v128 = v396;
    v129 = __swift_project_value_buffer(v396, qword_1EDFFCD68);
    v130 = v392;
    v392(v388, v129, v128);
    swift_storeEnumTagMultiPayload();
    v399 = xmmword_1D7297410;
    v434 = xmmword_1D7297410;
    LOBYTE(v435) = 0;
    LOBYTE(v426) = 0;
    v131 = swift_allocObject();
    v133 = v131;
    *(v131 + 16) = v399;
    *(v131 + 32) = v426;
    v135 = v373;
    v134 = v374;
    *(v131 + 40) = v374;
    *(v131 + 48) = v135;
    if (v127)
    {
      v398 = &v373;
      *&v426 = v127;
      MEMORY[0x1EEE9AC00](v131, v132);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v133;
      LOBYTE(v418) = 0;
      v136 = swift_allocObject();
      *(v136 + 16) = v399;
      *(v136 + 32) = v418;
      *(v136 + 40) = v134;
      *(v136 + 48) = v135;
      swift_retain_n();

      v137 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v138 = swift_allocObject();
      *(v138 + 16) = v137;
      *(v138 + 24) = v399;
      *(v138 + 40) = v418;
      v139 = v400[3];
      v140 = v400[4];
      v141 = __swift_project_boxed_opaque_existential_1(v400, v139);
      MEMORY[0x1EEE9AC00](v141, v142);
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v373 - 4) = sub_1D615B4A4;
      *(&v373 - 3) = (&v373 - 6);
      v371 = sub_1D6708ADC;
      v372 = v136;
      v145 = v388;
      v146 = v444;
      v148 = sub_1D5D2F7A4(v388, sub_1D615B49C, v147, sub_1D615B4A4, (&v373 - 6), v139, v140);
      if (v146)
      {

        v149 = v397;

        sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
        v95 = v149;
        return sub_1D5D2CFE8(v95, sub_1D66A373C);
      }

      v151 = v148;

      if (v151)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v126 = v395;
        v130 = v392;
        v134 = v374;
        v444 = 0;

        v150 = v373;
      }

      else
      {
        v444 = 0;

        v126 = v395;
        v130 = v392;
        v150 = v373;
        v134 = v374;
      }
    }

    else
    {

      v150 = v135;
      v145 = v388;
    }

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v152 = v126[6];
    v153 = v387;
    v130(v387, v391, v396);
    swift_storeEnumTagMultiPayload();
    if (*(v152 + 16))
    {
      LOBYTE(v434) = 0;
      v154 = swift_allocObject();
      v399 = xmmword_1D72BAA60;
      *(v154 + 16) = xmmword_1D72BAA60;
      *(v154 + 32) = v434;
      *(v154 + 40) = v134;
      *(v154 + 48) = v150;

      v74 = v397;
      v155 = sub_1D72647CC();
      LOBYTE(v434) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v399;
      *(v156 + 40) = v434;
      v157 = v400[3];
      v158 = v400[4];
      v159 = __swift_project_boxed_opaque_existential_1(v400, v157);
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v154;
      v163 = v444;
      v165 = sub_1D5D2F7A4(v153, sub_1D615B49C, v164, sub_1D615B4A4, (&v373 - 6), v157, v158);
      if (v163)
      {
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

LABEL_52:
        v95 = v74;
        return sub_1D5D2CFE8(v95, sub_1D66A373C);
      }

      v166 = v165;

      if (v166)
      {
        v434 = v399;
        LOBYTE(v435) = 0;
        *&v426 = v152;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v126 = v395;
        v444 = 0;
        v130 = v392;

        sub_1D5D2CFE8(v387, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v444 = 0;
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

        v126 = v395;
        v130 = v392;
      }

      v150 = v373;
    }

    else
    {
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    }

    v167 = v126[7];
    v168 = v391;
    v130(v386, v391, v396);
    swift_storeEnumTagMultiPayload();
    v399 = xmmword_1D72BAA70;
    v434 = xmmword_1D72BAA70;
    LOBYTE(v435) = 0;
    LOBYTE(v426) = 0;
    v169 = swift_allocObject();
    v171 = v169;
    *(v169 + 16) = v399;
    *(v169 + 32) = v426;
    v172 = v374;
    *(v169 + 40) = v374;
    *(v169 + 48) = v150;
    if (v167)
    {
      v398 = &v373;
      *&v426 = v167;
      MEMORY[0x1EEE9AC00](v169, v170);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v171;
      LOBYTE(v418) = 0;
      v173 = swift_allocObject();
      *(v173 + 16) = v399;
      *(v173 + 32) = v418;
      *(v173 + 40) = v172;
      *(v173 + 48) = v150;
      swift_retain_n();

      v174 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v175 = swift_allocObject();
      *(v175 + 16) = v174;
      *(v175 + 24) = v399;
      *(v175 + 40) = v418;
      v176 = v400[3];
      v177 = v400[4];
      v178 = __swift_project_boxed_opaque_existential_1(v400, v176);
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v373 - 4) = sub_1D615B4A4;
      *(&v373 - 3) = (&v373 - 6);
      v371 = sub_1D6708ADC;
      v372 = v173;
      v182 = v386;
      v183 = v444;
      v185 = sub_1D5D2F7A4(v386, sub_1D615B49C, v184, sub_1D615B4A4, (&v373 - 6), v176, v177);
      v444 = v183;
      if (v183)
      {

        v186 = v397;
LABEL_37:
        sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
        v95 = v186;
        return sub_1D5D2CFE8(v95, sub_1D66A373C);
      }

      v188 = v185;

      if (v188)
      {
        type metadata accessor for FormatMicaNodeStyle();
        sub_1D5B58B84(&qword_1EC886E38, type metadata accessor for FormatMicaNodeStyle, &protocol conformance descriptor for FormatMicaNodeStyle);
        v186 = v397;
        v189 = v444;
        sub_1D72647EC();
        v187 = v392;
        v168 = v391;
        v444 = v189;
        if (v189)
        {

          goto LABEL_37;
        }
      }

      else
      {

        v187 = v392;
        v168 = v391;
      }
    }

    else
    {

      v182 = v386;
      v187 = v130;
    }

    sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
    v190 = v395[8];
    v191 = v385;
    v187(v385, v168, v396);
    swift_storeEnumTagMultiPayload();
    v443 = v190;
    v399 = xmmword_1D72BAA80;
    v441[2] = xmmword_1D72BAA80;
    v442 = 0;
    LOBYTE(v434) = 0;
    v192 = swift_allocObject();
    v398 = &v373;
    *(v192 + 16) = v399;
    *(v192 + 32) = v434;
    v194 = v373;
    v193 = v374;
    *(v192 + 40) = v374;
    *(v192 + 48) = v194;
    MEMORY[0x1EEE9AC00](v192, v195);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708ADC;
    v372 = v196;
    LOBYTE(v434) = 0;
    v197 = swift_allocObject();
    *(v197 + 16) = v399;
    *(v197 + 32) = v434;
    *(v197 + 40) = v193;
    *(v197 + 48) = v194;
    swift_retain_n();
    v198 = v397;
    v199 = sub_1D72647CC();
    LOBYTE(v434) = 0;
    v200 = swift_allocObject();
    *(v200 + 16) = v199;
    *(v200 + 24) = v399;
    *(v200 + 40) = v434;
    v201 = v400[3];
    v202 = v400[4];
    v203 = __swift_project_boxed_opaque_existential_1(v400, v201);
    MEMORY[0x1EEE9AC00](v203, v204);
    MEMORY[0x1EEE9AC00](v205, v206);
    *(&v373 - 4) = sub_1D615B4A4;
    *(&v373 - 3) = (&v373 - 6);
    v371 = sub_1D6708ADC;
    v372 = v197;
    v207 = v444;
    sub_1D5D2BC70(v191, sub_1D615B49C, v208, sub_1D615B4A4, (&v373 - 6), v201, v202);
    if (v207)
    {
      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

      v74 = v198;
      goto LABEL_52;
    }

    sub_1D66A0A94();
    sub_1D72647EC();
    v74 = v198;
    v444 = 0;
    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

    v209 = *(v395 + 19);
    v210 = *(v395 + 23);
    v432 = *(v395 + 21);
    v433[0] = v210;
    *(v433 + 9) = *(v395 + 193);
    v211 = *(v395 + 11);
    v212 = *(v395 + 15);
    v428 = *(v395 + 13);
    v429 = v212;
    v430 = *(v395 + 17);
    v431 = v209;
    v426 = *(v395 + 9);
    v427 = v211;
    v213 = v382;
    v214 = v392;
    v392(v382, v391, v396);
    swift_storeEnumTagMultiPayload();
    v399 = xmmword_1D72BAA90;
    v416 = xmmword_1D72BAA90;
    v417 = 0;
    LOBYTE(v418) = 0;
    v215 = swift_allocObject();
    *(v215 + 16) = v399;
    *(v215 + 32) = v418;
    v216 = v373;
    v217 = v374;
    *(v215 + 40) = v374;
    *(v215 + 48) = v216;
    v440 = v432;
    v441[0] = v433[0];
    *(v441 + 9) = *(v433 + 9);
    v436 = v428;
    v437 = v429;
    v438 = v430;
    v439 = v431;
    v434 = v426;
    v435 = v427;
    v218 = sub_1D60486AC(&v434);
    if (v218 == 1)
    {

      sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);

      v220 = v395;
    }

    else
    {
      v398 = &v373;
      v424 = v432;
      v425[0] = v433[0];
      *(v425 + 9) = *(v433 + 9);
      v420 = v428;
      v421 = v429;
      v422 = v430;
      v423 = v431;
      v418 = v426;
      v419 = v427;
      MEMORY[0x1EEE9AC00](v218, v219);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v215;
      LOBYTE(v401) = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = v399;
      *(v221 + 32) = v401;
      *(v221 + 40) = v217;
      *(v221 + 48) = v216;
      swift_retain_n();
      sub_1D5D355B8(&v426, &v401, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v222 = sub_1D72647CC();
      LOBYTE(v401) = 0;
      v223 = swift_allocObject();
      *(v223 + 16) = v222;
      *(v223 + 24) = v399;
      *(v223 + 40) = v401;
      v224 = v400[3];
      v225 = v400[4];
      v226 = __swift_project_boxed_opaque_existential_1(v400, v224);
      MEMORY[0x1EEE9AC00](v226, v227);
      MEMORY[0x1EEE9AC00](v228, v229);
      *(&v373 - 4) = sub_1D615B4A4;
      *(&v373 - 3) = (&v373 - 6);
      v371 = sub_1D6708ADC;
      v372 = v221;
      v230 = v444;
      v232 = sub_1D5D2F7A4(v213, sub_1D615B49C, v231, sub_1D615B4A4, (&v373 - 6), v224, v225);
      if (v230)
      {

        v407 = v424;
        v408[0] = v425[0];
        *(v408 + 9) = *(v425 + 9);
        v403 = v420;
        v404 = v421;
        v405 = v422;
        v406 = v423;
        v401 = v418;
        v402 = v419;
        sub_1D62B49F0(&v401);
        v74 = v397;
        goto LABEL_50;
      }

      v234 = v232;

      if (v234)
      {
        sub_1D6662A38();
        v74 = v397;
        sub_1D72647EC();
        v444 = 0;

        v407 = v424;
        v408[0] = v425[0];
        *(v408 + 9) = *(v425 + 9);
        v403 = v420;
        v404 = v421;
        v405 = v422;
        v406 = v423;
        v401 = v418;
        v402 = v419;
        sub_1D62B49F0(&v401);
        sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v444 = 0;

        v407 = v424;
        v408[0] = v425[0];
        *(v408 + 9) = *(v425 + 9);
        v403 = v420;
        v404 = v421;
        v405 = v422;
        v406 = v423;
        v401 = v418;
        v402 = v419;
        sub_1D62B49F0(&v401);
        sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
        v74 = v397;
      }

      v220 = v395;
      v214 = v392;
    }

    swift_beginAccess();
    v235 = *(v220 + 53);
    v236 = *(v220 + 216);
    v237 = v381;
    v238 = v396;
    v214(v381, v391, v396);
    swift_storeEnumTagMultiPayload();
    if (v236 == 2 && v235 == 2)
    {
      sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
      v239 = v380;
      v240 = v374;
    }

    else
    {
      LOBYTE(v418) = 0;
      v241 = swift_allocObject();
      v399 = xmmword_1D72BAAA0;
      *(v241 + 16) = xmmword_1D72BAAA0;
      *(v241 + 32) = v418;
      *(v241 + 40) = v374;
      *(v241 + 48) = v373;

      v242 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v243 = swift_allocObject();
      *(v243 + 16) = v242;
      *(v243 + 24) = v399;
      *(v243 + 40) = v418;
      v244 = v400[3];
      v245 = v400[4];
      v246 = __swift_project_boxed_opaque_existential_1(v400, v244);
      MEMORY[0x1EEE9AC00](v246, v247);
      MEMORY[0x1EEE9AC00](v248, v249);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v241;
      v250 = v444;
      v252 = sub_1D5D2F7A4(v237, sub_1D615B49C, v251, sub_1D615B4A4, (&v373 - 6), v244, v245);
      v444 = v250;
      if (v250)
      {
        sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      v253 = v252;
      v240 = v374;

      if (v253)
      {
        v418 = v399;
        LOBYTE(v419) = 0;
        LODWORD(v416) = v235;
        BYTE4(v416) = v236;
        sub_1D66740D8();
        v74 = v397;
        v254 = v444;
        sub_1D72647EC();
        if (v254)
        {
          v233 = v381;
          goto LABEL_51;
        }

        v444 = 0;
        sub_1D5D2CFE8(v381, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v381, type metadata accessor for FormatVersionRequirement);
        v74 = v397;
      }

      v220 = v395;
      v238 = v396;
      v214 = v392;
      v239 = v380;
    }

    swift_beginAccess();
    v255 = v220[28];
    v214(v239, v391, v238);
    swift_storeEnumTagMultiPayload();
    if (v255)
    {
      LOBYTE(v418) = 0;
      v256 = v239;
      v257 = swift_allocObject();
      v399 = xmmword_1D72BAAB0;
      *(v257 + 16) = xmmword_1D72BAAB0;
      *(v257 + 32) = v418;
      *(v257 + 40) = v240;
      *(v257 + 48) = v373;

      v258 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v259 = swift_allocObject();
      *(v259 + 16) = v258;
      *(v259 + 24) = v399;
      *(v259 + 40) = v418;
      v260 = v400[3];
      v261 = v400[4];
      v262 = __swift_project_boxed_opaque_existential_1(v400, v260);
      v398 = &v373;
      MEMORY[0x1EEE9AC00](v262, v263);
      MEMORY[0x1EEE9AC00](v264, v265);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v257;
      v266 = v444;
      v268 = sub_1D5D2F7A4(v256, sub_1D615B49C, v267, sub_1D615B4A4, (&v373 - 6), v260, v261);
      v444 = v266;
      if (v266)
      {
        sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      v269 = v268;

      if (v269)
      {
        v418 = v399;
        LOBYTE(v419) = 0;
        v415 = v255;
        v270 = v444;
        sub_1D72647EC();
        if (v270)
        {
          v233 = v380;
          goto LABEL_51;
        }

        v444 = 0;
      }

      sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);
      v220 = v395;
      v214 = v392;
    }

    else
    {
      sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v271 = v220[29];
    sub_1D5EB1500(v271);
    v272 = v379;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v273 = v396;
    v274 = __swift_project_value_buffer(v396, qword_1EDFFCD50);
    v214(v272, v274, v273);
    swift_storeEnumTagMultiPayload();
    if (v271 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
LABEL_90:
      swift_beginAccess();
      v289 = *(v220 + 240);
      v290 = v396;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v291 = __swift_project_value_buffer(v290, qword_1EDFFCD00);
      v292 = v377;
      v214(v377, v291, v290);
      swift_storeEnumTagMultiPayload();
      if (v289)
      {
        sub_1D5D2CFE8(v292, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        LOBYTE(v418) = 0;
        v293 = swift_allocObject();
        v399 = xmmword_1D72BAAD0;
        *(v293 + 16) = xmmword_1D72BAAD0;
        *(v293 + 32) = v418;
        *(v293 + 40) = v240;
        *(v293 + 48) = v373;

        v294 = sub_1D72647CC();
        LOBYTE(v418) = 0;
        v295 = swift_allocObject();
        *(v295 + 16) = v294;
        *(v295 + 24) = v399;
        *(v295 + 40) = v418;
        v296 = v400[3];
        v297 = v400[4];
        v298 = __swift_project_boxed_opaque_existential_1(v400, v296);
        MEMORY[0x1EEE9AC00](v298, v299);
        MEMORY[0x1EEE9AC00](v300, v301);
        *(&v373 - 4) = sub_1D5B4AA6C;
        *(&v373 - 3) = 0;
        v371 = sub_1D6708ADC;
        v372 = v293;
        v302 = v444;
        v304 = sub_1D5D2F7A4(v292, sub_1D615B49C, v303, sub_1D615B4A4, (&v373 - 6), v296, v297);
        if (v302)
        {
          sub_1D5D2CFE8(v292, type metadata accessor for FormatVersionRequirement);

          goto LABEL_52;
        }

        if (v304)
        {
          v418 = v399;
          LOBYTE(v419) = 0;
          LOBYTE(v412) = 0;
          sub_1D72647EC();
        }

        sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);
        v444 = 0;
        v220 = v395;
        v290 = v396;
        v214 = v392;
        v240 = v374;
      }

      v305 = v220[31];
      v306 = *(v220 + 256);
      v307 = v391;
      v214(v378, v391, v290);
      swift_storeEnumTagMultiPayload();
      v399 = xmmword_1D72BAAE0;
      v418 = xmmword_1D72BAAE0;
      LOBYTE(v419) = 0;
      LOBYTE(v412) = 0;
      v308 = swift_allocObject();
      v310 = v308;
      *(v308 + 16) = v399;
      *(v308 + 32) = v412;
      v311 = v373;
      *(v308 + 40) = v240;
      *(v308 + 48) = v311;
      if (v306 > 0xFD)
      {

        goto LABEL_107;
      }

      v412 = v305;
      v413 = v306;
      MEMORY[0x1EEE9AC00](v308, v309);
      *(&v373 - 4) = sub_1D5B4AA6C;
      *(&v373 - 3) = 0;
      v371 = sub_1D6708ADC;
      v372 = v310;
      LOBYTE(v410) = 0;
      v312 = swift_allocObject();
      *(v312 + 16) = v399;
      *(v312 + 32) = v410;
      *(v312 + 40) = v240;
      *(v312 + 48) = v311;
      swift_retain_n();
      v313 = sub_1D72647CC();
      LOBYTE(v410) = 0;
      v314 = swift_allocObject();
      *(v314 + 16) = v313;
      *(v314 + 24) = v399;
      *(v314 + 40) = v410;
      v315 = v400[3];
      v316 = v400[4];
      v317 = __swift_project_boxed_opaque_existential_1(v400, v315);
      MEMORY[0x1EEE9AC00](v317, v318);
      MEMORY[0x1EEE9AC00](v319, v320);
      *(&v373 - 4) = sub_1D615B4A4;
      *(&v373 - 3) = (&v373 - 6);
      v371 = sub_1D6708ADC;
      v372 = v312;
      v321 = v444;
      v323 = sub_1D5D2F7A4(v378, sub_1D615B49C, v322, sub_1D615B4A4, (&v373 - 6), v315, v316);
      v444 = v321;
      if (!v321)
      {
        v324 = v323;

        if (v324)
        {
          sub_1D5F8F434();
          v325 = v444;
          sub_1D72647EC();
          v444 = v325;
          if (v325)
          {
            v326 = v378;
            goto LABEL_121;
          }
        }

        v214 = v392;
        v307 = v391;
LABEL_107:
        sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);

        v327 = v395;
        swift_beginAccess();
        v328 = v327[33];
        v214(v376, v307, v396);
        swift_storeEnumTagMultiPayload();
        if (*(v328 + 16))
        {
          LOBYTE(v418) = 0;
          v329 = swift_allocObject();
          v399 = xmmword_1D72BAAF0;
          *(v329 + 16) = xmmword_1D72BAAF0;
          *(v329 + 32) = v418;
          *(v329 + 40) = v374;
          *(v329 + 48) = v373;

          v330 = sub_1D72647CC();
          LOBYTE(v418) = 0;
          v331 = swift_allocObject();
          *(v331 + 16) = v330;
          *(v331 + 24) = v399;
          *(v331 + 40) = v418;
          v332 = v400[3];
          v333 = v400[4];
          v334 = __swift_project_boxed_opaque_existential_1(v400, v332);
          MEMORY[0x1EEE9AC00](v334, v335);
          MEMORY[0x1EEE9AC00](v336, v337);
          *(&v373 - 4) = sub_1D5B4AA6C;
          *(&v373 - 3) = 0;
          v371 = sub_1D6708ADC;
          v372 = v329;
          v338 = v444;
          v340 = sub_1D5D2F7A4(v376, sub_1D615B49C, v339, sub_1D615B4A4, (&v373 - 6), v332, v333);
          v444 = v338;
          if (v338)
          {

LABEL_110:
            sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);
            goto LABEL_62;
          }

          v341 = v340;

          if (v341)
          {
            v342 = v444;
            sub_1D5E08DEC(v328, v397, 0xC, 0, 0);
            v444 = v342;
            if (v342)
            {

              goto LABEL_110;
            }
          }
        }

        sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);
        v343 = v395[34];
        v344 = v395[35];
        v345 = v395[36];
        v346 = v395[37];
        v347 = v395[38];
        v348 = v395[39];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v349 = v396;
        v350 = __swift_project_value_buffer(v396, qword_1EDFFCE38);
        v392(v375, v350, v349);
        swift_storeEnumTagMultiPayload();
        v399 = xmmword_1D7282A80;
        v410 = xmmword_1D7282A80;
        v411 = 0;
        LOBYTE(v418) = 0;
        v351 = swift_allocObject();
        v353 = v351;
        *(v351 + 16) = v399;
        *(v351 + 32) = v418;
        v354 = v373;
        *(v351 + 40) = v374;
        *(v351 + 48) = v354;
        if (v343)
        {
          v398 = &v373;
          *&v418 = v343;
          *(&v418 + 1) = v344;
          *&v419 = v345;
          *(&v419 + 1) = v346;
          *&v420 = v347;
          *(&v420 + 1) = v348;
          MEMORY[0x1EEE9AC00](v351, v352);
          v396 = &v373 - 6;
          *(&v373 - 4) = sub_1D5B4AA6C;
          *(&v373 - 3) = 0;
          v371 = sub_1D6708ADC;
          v372 = v353;
          v409 = 0;
          v355 = swift_allocObject();
          *(v355 + 16) = v399;
          *(v355 + 32) = v409;
          *(v355 + 40) = v374;
          *(v355 + 48) = v373;
          swift_retain_n();
          sub_1D5EB1D80(v343, v344, v345, v346, v347, v348);
          v356 = sub_1D72647CC();
          v409 = 0;
          v357 = swift_allocObject();
          *(v357 + 16) = v356;
          *(v357 + 24) = v399;
          *(v357 + 40) = v409;
          v358 = v400[3];
          v359 = v400[4];
          v360 = __swift_project_boxed_opaque_existential_1(v400, v358);
          MEMORY[0x1EEE9AC00](v360, v361);
          MEMORY[0x1EEE9AC00](v362, v363);
          v364 = v396;
          *(&v373 - 4) = sub_1D615B4A4;
          *(&v373 - 3) = v364;
          v371 = sub_1D6708ADC;
          v372 = v355;
          v365 = v444;
          v367 = sub_1D5D2F7A4(v375, sub_1D615B49C, v366, sub_1D615B4A4, (&v373 - 6), v358, v359);
          v444 = v365;
          if (v365)
          {
          }

          else
          {
            v368 = v367;

            if (v368)
            {
              sub_1D6659A24();
              v369 = v444;
              sub_1D72647EC();
              v444 = v369;
            }
          }

          v370 = v420;

          sub_1D5CBF568(v370);

          sub_1D5D2CFE8(v375, type metadata accessor for FormatVersionRequirement);
          goto LABEL_62;
        }

        v326 = v375;
LABEL_121:
        sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);

LABEL_62:
      v95 = v397;
      return sub_1D5D2CFE8(v95, sub_1D66A373C);
    }

    LOBYTE(v418) = 0;
    v275 = swift_allocObject();
    v399 = xmmword_1D72BAAC0;
    *(v275 + 16) = xmmword_1D72BAAC0;
    *(v275 + 32) = v418;
    *(v275 + 40) = v240;
    *(v275 + 48) = v373;

    v276 = sub_1D72647CC();
    LOBYTE(v418) = 0;
    v277 = swift_allocObject();
    *(v277 + 16) = v276;
    *(v277 + 24) = v399;
    *(v277 + 40) = v418;
    v213 = v272;
    v278 = v400[3];
    v279 = v400[4];
    v280 = __swift_project_boxed_opaque_existential_1(v400, v278);
    MEMORY[0x1EEE9AC00](v280, v281);
    MEMORY[0x1EEE9AC00](v282, v283);
    *(&v373 - 4) = sub_1D5B4AA6C;
    *(&v373 - 3) = 0;
    v371 = sub_1D6708ADC;
    v372 = v275;
    v284 = v444;
    v286 = sub_1D5D2F7A4(v213, sub_1D615B49C, v285, sub_1D615B4A4, (&v373 - 6), v278, v279);
    if (!v284)
    {
      v444 = 0;
      v287 = v286;

      if (v287)
      {
        v418 = v399;
        LOBYTE(v419) = 0;
        v414 = v271;
        sub_1D5DF6A60();
        v288 = v444;
        sub_1D72647EC();
        if (v288)
        {
          sub_1D5EB15C4(v414);
          sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
          v95 = v397;
          return sub_1D5D2CFE8(v95, sub_1D66A373C);
        }

        sub_1D5EB15C4(v414);
        sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
        v444 = 0;
        v74 = v397;
      }

      else
      {
        sub_1D5EB15C4(v271);
        sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
      }

      v220 = v395;
      v214 = v392;
      v240 = v374;
      goto LABEL_90;
    }

    sub_1D5EB15C4(v271);
LABEL_50:
    v233 = v213;
LABEL_51:
    sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
    goto LABEL_52;
  }

  return sub_1D5D2CFE8(v124, sub_1D66A373C);
}

unint64_t sub_1D6525B44(char a1)
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
      result = 0x746E65746E6F63;
      break;
    case 6:
      result = 0x6D6954616964656DLL;
      break;
    case 7:
      result = 0x65646F4D6E7572;
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
      result = 0x726F7463656C6573;
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

uint64_t sub_1D6525CD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A3AD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6525D10(uint64_t a1)
{
  v2 = sub_1D5E1AF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6525D4C(uint64_t a1)
{
  v2 = sub_1D5E1AF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNodeArchive.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
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
          *(v21 + 16) = &unk_1F5116098;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A3860();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D5CA2FA0();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMicaNodeArchive.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatMicaNodeArchive, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatMicaNodeArchive, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v13, v10, v14, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCDC8);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D639F3B4(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatMicaNodeContent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    v11 = a1;
LABEL_10:
    sub_1D61E4FBC(v11, v3);
    swift_willThrow();
  }

  else
  {
    v12 = v7;
    v13 = v36;
    v14 = a1[3];
    v33 = a1;
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
          *(v23 + 16) = &unk_1F51160E8;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v16, v6);
          v11 = v33;
          goto LABEL_10;
        }
      }
    }

    sub_1D66A38B4();
    v35 = 0uLL;
    sub_1D726431C();
    if (v34)
    {
      v25 = v13;
      if (v34 == 1)
      {
        sub_1D5C30060(0, &qword_1EC886E68, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatUserInterfaceValue);
        v34 = xmmword_1D7279980;
        sub_1D66A39EC();
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v26 = v35;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v28 = v27 | 0x4000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886E50, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatSelectorValue);
        v34 = xmmword_1D7279980;
        sub_1D66A395C();
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v30 = v35;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v28 = v31 | 0x8000000000000000;
      }

      v11 = v33;
    }

    else
    {
      v35 = xmmword_1D7279980;
      sub_1D66A3A7C();
      sub_1D726431C();
      v11 = v33;
      v25 = v13;
      (*(v12 + 8))(v16, v6);
      v29 = v34;
      v28 = swift_allocObject();
      *(v28 + 16) = v29;
    }

    *v25 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t FormatMicaNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v40 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v40 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMicaNodeContent, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatMicaNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v21, v18, v22, &off_1F51F6AD8);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = qword_1EDF31EF8;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_1D725BD1C();
      v28 = __swift_project_value_buffer(v27, qword_1EDFFCDC8);
      (*(*(v27 - 8) + 16))(v10, v28, v27);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F00C(1, v24, v25, v10);

      v29 = v10;
    }

    else
    {
      v34 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = qword_1EDF31ED0;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F1E0(2, v34, v35, v6);

      v29 = v6;
    }
  }

  else
  {
    v30 = *(v19 + 16);
    v31 = qword_1EDF31EF8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCDC8);
    (*(*(v32 - 8) + 16))(v14, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639EE78(0, v30, v14);

    v29 = v14;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6526D1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746E4972657375;
  v4 = 0xED00006563616672;
  if (v2 != 1)
  {
    v3 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65766968637261;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x65746E4972657375;
  v8 = 0xED00006563616672;
  if (*a2 != 1)
  {
    v7 = 0x726F7463656C6573;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65766968637261;
  }

  if (*a2)
  {
    v10 = v8;
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

uint64_t sub_1D6526E38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6526EE8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6526F84(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6527030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664040(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6527060(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00006563616672;
  v5 = 0x65746E4972657375;
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
    v7 = 0x65766968637261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatMicaNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v263 = &v245 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v249 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v250 = &v245 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v251 = &v245 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v252 = &v245 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v253 = &v245 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v254 = &v245 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v262 = (&v245 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v245 - v31;
  sub_1D66A487C(0);
  v264 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1D66A49A4(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EC886EA8, sub_1D66A49A4, &unk_1D7321584);
  v291 = v36;
  sub_1D5D2EE70(v4, v40, v42, v37, v4, v40, &type metadata for FormatVersions.AzdenB, v38, v36, v41, &off_1F51F6AD8);
  swift_beginAccess();
  v260 = v2;
  v43 = v2[2];
  v44 = v2[3];
  v45 = qword_1EDF31EF8;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCDC8);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v50 = v48 + 16;
  v261 = v46;
  v49(v32, v47, v46);
  v51 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v263;
  sub_1D725892C();
  v53 = sub_1D725895C();
  v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
  v257 = v51;
  v258 = v49;
  v256 = v50;
  v259 = v47;
  if (v54 != 1)
  {
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v52, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v77 = v262;
    goto LABEL_8;
  }

  v248 = v43;
  v55 = v32;
  sub_1D5D35558(v52, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v56 = v264;
  v57 = v291;
  v58 = &v291[*(v264 + 11)];
  v60 = *v58;
  v59 = *(v58 + 1);
  LOBYTE(v280) = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v280;
  *(v61 + 40) = v60;
  *(v61 + 48) = v59;
  sub_1D66A4910(0);
  v63 = v62;
  sub_1D5B58B84(&qword_1EC886EB0, sub_1D66A4910, MEMORY[0x1E69E6F60]);

  v255 = v63;
  v64 = sub_1D72647CC();
  LOBYTE(v280) = 0;
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 16) = v64;
  *(v65 + 40) = v280;
  v66 = (v57 + *(v56 + 9));
  v67 = v66[3];
  v68 = v66[4];
  v69 = __swift_project_boxed_opaque_existential_1(v66, v67);
  *&v263 = &v245;
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v245 - 4) = sub_1D5B4AA6C;
  *(&v245 - 3) = 0;
  v243 = sub_1D66A4B24;
  v244 = v61;
  v73 = v265;
  v75 = sub_1D5D2F7A4(v55, sub_1D615B49C, v74, sub_1D615B4A4, (&v245 - 6), v67, v68);
  *&v265 = v73;
  if (v73)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D66A487C);
  }

  v105 = v75;

  if ((v105 & 1) == 0)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v49 = v258;
    v47 = v259;
    goto LABEL_7;
  }

  v280 = 0uLL;
  LOBYTE(v281) = 0;
  *&v272 = v248;
  *(&v272 + 1) = v44;
  v106 = v291;
  v107 = v265;
  sub_1D72647EC();

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  v49 = v258;
  v47 = v259;
  v77 = v262;
  if (v107)
  {
    goto LABEL_54;
  }

  *&v265 = 0;
LABEL_8:
  v78 = v260[4];
  v79 = v260[5];
  v49(v77, v47, v261);
  swift_storeEnumTagMultiPayload();
  *&v272 = v78;
  *(&v272 + 1) = v79;
  v263 = xmmword_1D728CF30;
  v280 = xmmword_1D728CF30;
  LOBYTE(v281) = 0;
  v80 = v291;
  v81 = &v291[*(v264 + 11)];
  v82 = *v81;
  v83 = *(v81 + 1);
  LOBYTE(v266) = 0;
  v84 = swift_allocObject();
  v255 = &v245;
  *(v84 + 16) = v263;
  *(v84 + 32) = v266;
  *(v84 + 40) = v82;
  *(v84 + 48) = v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v245 - 4) = sub_1D5B4AA6C;
  *(&v245 - 3) = 0;
  v243 = sub_1D6708AE0;
  v244 = v86;
  LOBYTE(v266) = 0;
  v87 = v77;
  v88 = swift_allocObject();
  *(v88 + 16) = v263;
  *(v88 + 32) = v266;
  v245 = v82;
  *(v88 + 40) = v82;
  *(v88 + 48) = v83;
  sub_1D66A4910(0);
  v90 = v89;
  v91 = sub_1D5B58B84(&qword_1EC886EB0, sub_1D66A4910, MEMORY[0x1E69E6F60]);
  v246 = v83;
  swift_retain_n();
  v247 = v90;
  v248 = v91;
  v92 = sub_1D72647CC();
  LOBYTE(v266) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v263;
  *(v93 + 40) = v266;
  v94 = &v80[*(v264 + 9)];
  v95 = *(v94 + 3);
  v96 = *(v94 + 4);
  v97 = __swift_project_boxed_opaque_existential_1(v94, v95);
  MEMORY[0x1EEE9AC00](v97, v98);
  MEMORY[0x1EEE9AC00](v99, v100);
  *(&v245 - 4) = sub_1D615B4A4;
  *(&v245 - 3) = (&v245 - 6);
  v243 = sub_1D6708AE0;
  v244 = v88;
  v101 = v265;
  sub_1D5D2BC70(v87, sub_1D615B49C, v102, sub_1D615B4A4, (&v245 - 6), v95, v96);
  if (!v101)
  {
    v264 = v94;

    sub_1D72647EC();
    sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

    v108 = v260;
    swift_beginAccess();
    v109 = v108[6];
    v110 = v254;
    v111 = v258;
    v258(v254, v259, v261);
    swift_storeEnumTagMultiPayload();
    if (*(v109 + 16))
    {
      LOBYTE(v280) = 0;
      v112 = swift_allocObject();
      v265 = xmmword_1D7297410;
      *(v112 + 16) = xmmword_1D7297410;
      *(v112 + 32) = v280;
      *(v112 + 40) = v245;
      *(v112 + 48) = v246;

      v113 = sub_1D72647CC();
      LOBYTE(v280) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *(v114 + 24) = v265;
      *(v114 + 40) = v280;
      v115 = *(v264 + 3);
      v116 = *(v264 + 4);
      v117 = __swift_project_boxed_opaque_existential_1(v264, v115);
      MEMORY[0x1EEE9AC00](v117, v118);
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v245 - 4) = sub_1D5B4AA6C;
      *(&v245 - 3) = 0;
      v243 = sub_1D6708AE0;
      v244 = v112;
      v122 = sub_1D5D2F7A4(v110, sub_1D615B49C, v121, sub_1D615B4A4, (&v245 - 6), v115, v116);
      v123 = v122;

      if ((v123 & 1) == 0)
      {
        *&v265 = 0;
        sub_1D5D2CFE8(v254, type metadata accessor for FormatVersionRequirement);

        v108 = v260;
        v111 = v258;
LABEL_24:
        v124 = v108[7];
        v125 = v253;
        v111(v253, v259, v261);
        swift_storeEnumTagMultiPayload();
        v263 = xmmword_1D72BAA60;
        v280 = xmmword_1D72BAA60;
        LOBYTE(v281) = 0;
        LOBYTE(v272) = 0;
        v126 = swift_allocObject();
        v128 = v126;
        *(v126 + 16) = v263;
        *(v126 + 32) = v272;
        v130 = v245;
        v129 = v246;
        *(v126 + 40) = v245;
        *(v126 + 48) = v129;
        if (v124)
        {
          v262 = &v245;
          *&v272 = v124;
          MEMORY[0x1EEE9AC00](v126, v127);
          v255 = &v245 - 6;
          *(&v245 - 4) = sub_1D5B4AA6C;
          *(&v245 - 3) = 0;
          v243 = sub_1D6708AE0;
          v244 = v128;
          LOBYTE(v266) = 0;
          v131 = swift_allocObject();
          *(v131 + 16) = v263;
          *(v131 + 32) = v266;
          *(v131 + 40) = v130;
          *(v131 + 48) = v246;
          swift_retain_n();

          v132 = sub_1D72647CC();
          LOBYTE(v266) = 0;
          v133 = swift_allocObject();
          *(v133 + 16) = v132;
          *(v133 + 24) = v263;
          *(v133 + 40) = v266;
          v134 = *(v264 + 3);
          v135 = *(v264 + 4);
          v136 = __swift_project_boxed_opaque_existential_1(v264, v134);
          MEMORY[0x1EEE9AC00](v136, v137);
          MEMORY[0x1EEE9AC00](v138, v139);
          v140 = v255;
          *(&v245 - 4) = sub_1D615B4A4;
          *(&v245 - 3) = v140;
          v243 = sub_1D6708AE0;
          v244 = v131;
          v141 = v265;
          v143 = sub_1D5D2F7A4(v125, sub_1D615B49C, v142, sub_1D615B4A4, (&v245 - 6), v134, v135);
          if (v141)
          {

            v103 = v291;

            sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
            goto LABEL_11;
          }

          v144 = v143;

          if (v144)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v111 = v258;
            v145 = v252;
            *&v265 = 0;

            sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
LABEL_32:
            v146 = v260;
            v147 = v260[8];
            v111(v145, v259, v261);
            swift_storeEnumTagMultiPayload();
            v263 = xmmword_1D72BAA70;
            v280 = xmmword_1D72BAA70;
            LOBYTE(v281) = 0;
            LOBYTE(v272) = 0;
            v148 = swift_allocObject();
            v150 = v148;
            *(v148 + 16) = v263;
            *(v148 + 32) = v272;
            v152 = v245;
            v151 = v246;
            *(v148 + 40) = v245;
            *(v148 + 48) = v151;
            if (v147)
            {
              v262 = &v245;
              *&v272 = v147;
              MEMORY[0x1EEE9AC00](v148, v149);
              *(&v245 - 4) = sub_1D5B4AA6C;
              *(&v245 - 3) = 0;
              v243 = sub_1D6708AE0;
              v244 = v150;
              LOBYTE(v266) = 0;
              v153 = v145;
              v154 = swift_allocObject();
              *(v154 + 16) = v263;
              *(v154 + 32) = v266;
              *(v154 + 40) = v152;
              *(v154 + 48) = v246;
              swift_retain_n();

              v155 = sub_1D72647CC();
              LOBYTE(v266) = 0;
              v156 = swift_allocObject();
              *(v156 + 16) = v155;
              *(v156 + 24) = v263;
              *(v156 + 40) = v266;
              v157 = *(v264 + 3);
              v158 = *(v264 + 4);
              v159 = __swift_project_boxed_opaque_existential_1(v264, v157);
              MEMORY[0x1EEE9AC00](v159, v160);
              MEMORY[0x1EEE9AC00](v161, v162);
              *(&v245 - 4) = sub_1D615B4A4;
              *(&v245 - 3) = (&v245 - 6);
              v243 = sub_1D6708AE0;
              v244 = v154;
              v163 = v265;
              v165 = sub_1D5D2F7A4(v153, sub_1D615B49C, v164, sub_1D615B4A4, (&v245 - 6), v157, v158);
              if (v163)
              {

                v106 = v291;
                v166 = v252;
LABEL_53:
                sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
                goto LABEL_54;
              }

              v168 = v165;

              if (v168)
              {
                sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
                sub_1D66612AC();
                sub_1D72647EC();
                v111 = v258;
                v169 = v252;
                v146 = v260;
                *&v265 = 0;

                sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
              }

              else
              {
                *&v265 = 0;

                sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);
                v111 = v258;
                v146 = v260;
              }

              v167 = v246;
            }

            else
            {
              v167 = v246;

              sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
            }

            v170 = v146[10];
            v262 = v146[9];
            v171 = *(v146 + 88);
            v172 = v251;
            v111(v251, v259, v261);
            swift_storeEnumTagMultiPayload();
            v263 = xmmword_1D72BAA80;
            v289 = xmmword_1D72BAA80;
            v290 = 0;
            LOBYTE(v280) = 0;
            v173 = swift_allocObject();
            v175 = v173;
            *(v173 + 16) = v263;
            *(v173 + 32) = v280;
            v176 = v245;
            *(v173 + 40) = v245;
            *(v173 + 48) = v167;
            if (v171 <= 0xFD)
            {
              v255 = &v245;
              v196 = v262;
              v286 = v262;
              v287 = v170;
              v288 = v171;
              MEMORY[0x1EEE9AC00](v173, v174);
              *(&v245 - 4) = sub_1D5B4AA6C;
              *(&v245 - 3) = 0;
              v243 = sub_1D6708AE0;
              v244 = v175;
              LOBYTE(v280) = 0;
              v198 = v197;
              v199 = swift_allocObject();
              *(v199 + 16) = v263;
              *(v199 + 32) = v280;
              *(v199 + 40) = v176;
              *(v199 + 48) = v198;
              swift_retain_n();
              sub_1D5ED34B0(v196, v170, v171);
              v200 = sub_1D72647CC();
              LOBYTE(v280) = 0;
              v201 = swift_allocObject();
              *(v201 + 16) = v200;
              *(v201 + 24) = v263;
              *(v201 + 40) = v280;
              v202 = *(v264 + 3);
              v203 = *(v264 + 4);
              v204 = __swift_project_boxed_opaque_existential_1(v264, v202);
              MEMORY[0x1EEE9AC00](v204, v205);
              MEMORY[0x1EEE9AC00](v206, v207);
              *(&v245 - 4) = sub_1D615B4A4;
              *(&v245 - 3) = (&v245 - 6);
              v243 = sub_1D6708AE0;
              v244 = v199;
              v208 = v265;
              v210 = sub_1D5D2F7A4(v251, sub_1D615B49C, v209, sub_1D615B4A4, (&v245 - 6), v202, v203);
              if (v208)
              {

                v211 = v291;
                v212 = v251;
                sub_1D5ED34A0(v286, v287, v288);
                sub_1D5D2CFE8(v212, type metadata accessor for FormatVersionRequirement);
                v104 = v211;
                return sub_1D5D2CFE8(v104, sub_1D66A487C);
              }

              v239 = v210;

              if (v239)
              {
                sub_1D6661258();
                sub_1D72647EC();
                v111 = v258;
                v240 = v251;
                *&v265 = 0;
                v177 = v198;

                sub_1D5ED34A0(v286, v287, v288);
                sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);
              }

              else
              {
                *&v265 = 0;

                sub_1D5ED34A0(v286, v287, v288);
                sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
                v111 = v258;
                v177 = v198;
              }
            }

            else
            {
              v177 = v167;

              sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
            }

            v178 = *(v260 + 9);
            v282 = *(v260 + 8);
            v283 = v178;
            v284 = *(v260 + 10);
            v285 = *(v260 + 176);
            v179 = *(v260 + 7);
            v280 = *(v260 + 6);
            v281 = v179;
            v180 = v250;
            v111(v250, v259, v261);
            swift_storeEnumTagMultiPayload();
            v263 = xmmword_1D72BAA90;
            v278 = xmmword_1D72BAA90;
            v279 = 0;
            LOBYTE(v272) = 0;
            v181 = swift_allocObject();
            v183 = v181;
            *(v181 + 16) = v263;
            *(v181 + 32) = v272;
            v184 = v245;
            *(v181 + 40) = v245;
            *(v181 + 48) = v177;
            if (v285 == 254)
            {

              v185 = v265;
            }

            else
            {
              v262 = &v245;
              v274 = v282;
              v275 = v283;
              v276 = v284;
              v277 = v285;
              v272 = v280;
              v273 = v281;
              MEMORY[0x1EEE9AC00](v181, v182);
              *(&v245 - 4) = sub_1D5B4AA6C;
              *(&v245 - 3) = 0;
              v243 = sub_1D6708AE0;
              v244 = v183;
              LOBYTE(v266) = 0;
              v213 = swift_allocObject();
              *(v213 + 16) = v263;
              *(v213 + 32) = v266;
              *(v213 + 40) = v184;
              *(v213 + 48) = v177;
              swift_retain_n();
              sub_1D5D355B8(&v280, &v266, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v214 = v264;
              v215 = v180;
              v216 = sub_1D72647CC();
              LOBYTE(v266) = 0;
              v217 = swift_allocObject();
              *(v217 + 16) = v216;
              *(v217 + 24) = v263;
              *(v217 + 40) = v266;
              v218 = *(v214 + 3);
              v219 = *(v214 + 4);
              v220 = __swift_project_boxed_opaque_existential_1(v214, v218);
              MEMORY[0x1EEE9AC00](v220, v221);
              MEMORY[0x1EEE9AC00](v222, v223);
              *(&v245 - 4) = sub_1D615B4A4;
              *(&v245 - 3) = (&v245 - 6);
              v243 = sub_1D6708AE0;
              v244 = v213;
              v224 = v265;
              v226 = sub_1D5D2F7A4(v215, sub_1D615B49C, v225, sub_1D615B4A4, (&v245 - 6), v218, v219);
              v185 = v224;
              if (v224)
              {

                v268 = v274;
                v269 = v275;
                v270 = v276;
                v271 = v277;
                v266 = v272;
                v267 = v273;
                sub_1D601144C(&v266);
                v106 = v291;
                v166 = v250;
                goto LABEL_53;
              }

              v241 = v226;

              if (v241)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v111 = v258;

                v268 = v274;
                v269 = v275;
                v270 = v276;
                v271 = v277;
                v266 = v272;
                v267 = v273;
                sub_1D601144C(&v266);
                v180 = v250;
              }

              else
              {

                v268 = v274;
                v269 = v275;
                v270 = v276;
                v271 = v277;
                v266 = v272;
                v267 = v273;
                sub_1D601144C(&v266);
                v180 = v250;
                v111 = v258;
              }
            }

            sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
            v186 = *(v260 + 177);
            if (qword_1EDF31F08 != -1)
            {
              swift_once();
            }

            v187 = v261;
            v188 = __swift_project_value_buffer(v261, qword_1EDFFCDE0);
            v189 = v249;
            v111(v249, v188, v187);
            swift_storeEnumTagMultiPayload();
            v263 = xmmword_1D72BAAA0;
            v272 = xmmword_1D72BAAA0;
            LOBYTE(v273) = 0;
            LOBYTE(v266) = 0;
            v190 = swift_allocObject();
            v192 = v190;
            *(v190 + 16) = v263;
            *(v190 + 32) = v266;
            v193 = v245;
            v194 = v246;
            *(v190 + 40) = v245;
            *(v190 + 48) = v194;
            if (v186 == 2)
            {

              v195 = v189;
              v106 = v291;
            }

            else
            {
              v262 = &v245;
              LOBYTE(v266) = v186 & 1;
              MEMORY[0x1EEE9AC00](v190, v191);
              *&v265 = v185;
              *(&v245 - 4) = sub_1D5B4AA6C;
              *(&v245 - 3) = 0;
              v243 = sub_1D6708AE0;
              v244 = v192;
              LOBYTE(v278) = 0;
              v227 = swift_allocObject();
              *(v227 + 16) = v263;
              *(v227 + 32) = v278;
              *(v227 + 40) = v193;
              *(v227 + 48) = v194;
              swift_retain_n();
              v228 = sub_1D72647CC();
              LOBYTE(v278) = 0;
              v229 = swift_allocObject();
              *(v229 + 16) = v228;
              *(v229 + 24) = v263;
              *(v229 + 40) = v278;
              v230 = *(v264 + 3);
              v231 = *(v264 + 4);
              v232 = __swift_project_boxed_opaque_existential_1(v264, v230);
              MEMORY[0x1EEE9AC00](v232, v233);
              MEMORY[0x1EEE9AC00](v234, v235);
              *(&v245 - 4) = sub_1D615B4A4;
              *(&v245 - 3) = (&v245 - 6);
              v243 = sub_1D6708AE0;
              v244 = v227;
              v236 = v265;
              v238 = sub_1D5D2F7A4(v189, sub_1D615B49C, v237, sub_1D615B4A4, (&v245 - 6), v230, v231);
              if (v236)
              {
                sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

                v106 = v291;
                goto LABEL_54;
              }

              v242 = v238;

              if (v242)
              {
                v106 = v291;
                sub_1D72647EC();
              }

              else
              {
                v106 = v291;
              }

              v195 = v249;
            }

            sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

LABEL_54:
            v104 = v106;
            return sub_1D5D2CFE8(v104, sub_1D66A487C);
          }

          *&v265 = 0;

          sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
          v111 = v258;
        }

        else
        {

          sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
        }

        v145 = v252;
        goto LABEL_32;
      }

      v280 = v265;
      LOBYTE(v281) = 0;
      *&v272 = v109;
      sub_1D5C34D84(0, &qword_1EC886EB8, &type metadata for FormatMicaNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D66A4BB4();
      sub_1D72647EC();
      v108 = v260;
      v111 = v258;
      v110 = v254;
      *&v265 = 0;
    }

    else
    {
      *&v265 = 0;
    }

    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    goto LABEL_24;
  }

  sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

  v103 = v291;
LABEL_11:
  v104 = v103;
  return sub_1D5D2CFE8(v104, sub_1D66A487C);
}

uint64_t sub_1D65293A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x726F7463656C6573;
    if (a1 != 2)
    {
      v6 = 0x6168706C61;
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

  else
  {
    v1 = 0x776F64616873;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564726F62;
    if (a1 != 4)
    {
      v3 = 0x615272656E726F63;
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

uint64_t sub_1D65294C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A5658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65294F8(uint64_t a1)
{
  v2 = sub_1D66A4A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6529534(uint64_t a1)
{
  v2 = sub_1D66A4A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  sub_1D66A4CA4(0);
  v6 = v5;
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A4D38(0);
  sub_1D5B58B84(&qword_1EC886EF8, sub_1D66A4D38, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = a1;
LABEL_11:
    sub_1D61E4FBC(v10, v3);
    swift_willThrow();

    v35 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v11 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1D7264AFC();
  LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v13 = v58;
  v14 = v9;
  if (v11)
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
          goto LABEL_8;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D661FCD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      v10 = v40;
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D5C36978();
  v52 = 0uLL;
  LOBYTE(v53) = 0;
  sub_1D726431C();
  v18 = v44;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v52 = xmmword_1D728CF30;
  LOBYTE(v53) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v39 = v18;
  v23 = v44;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v52 = xmmword_1D7297410;
  LOBYTE(v53) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v24 = v44;
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v37 = v52;
  v38 = v53;
  v50 = xmmword_1D72BAA70;
  v51 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v36 = v24;
  v47 = v55;
  v48 = v56;
  v44 = v52;
  v49 = v57;
  v45 = v53;
  v46 = v54;
  *&v42[11] = xmmword_1D72BAA80;
  v43 = 0;
  v26 = sub_1D726423C();
  (*(v13 + 8))(v14, v6);
  *(&v42[2] + 7) = v45;
  *(v42 + 7) = v44;
  *(&v42[6] + 7) = v47;
  *(&v42[4] + 7) = v46;
  *(&v42[8] + 7) = v48;
  HIBYTE(v42[10]) = v49;
  v27 = v41;
  *v41 = v39;
  v27[1] = *(&v18 + 1);
  v28 = v36;
  v29 = v37;
  v27[2] = v23;
  v27[3] = v28;
  v30 = *(&v37 + 1);
  v27[4] = v29;
  v27[5] = v30;
  *(v27 + 48) = v38;
  v31 = *v42;
  *(v27 + 65) = *&v42[2];
  *(v27 + 49) = v31;
  v32 = *&v42[4];
  v33 = *&v42[6];
  v34 = *&v42[8];
  *(v27 + 129) = v42[10];
  *(v27 + 113) = v34;
  *(v27 + 97) = v33;
  *(v27 + 81) = v32;
  *(v27 + 137) = v26;
  v35 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t FormatMicaNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v184 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v188 = &v182 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v189 = &v182 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v190 = &v182 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v200 = (&v182 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v182 - v20;
  sub_1D66A4EB8(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 8);
  *&v204 = *v1;
  v28 = *(v1 + 16);
  v191 = *(v1 + 24);
  v192 = v28;
  v29 = *(v1 + 32);
  v185 = *(v1 + 40);
  v186 = v29;
  v187 = *(v1 + 48);
  v30 = *(v1 + 104);
  v227 = *(v1 + 88);
  v228 = v30;
  v229 = *(v1 + 120);
  v230 = *(v1 + 136);
  v31 = *(v1 + 72);
  v225 = *(v1 + 56);
  v226 = v31;
  v183 = *(v1 + 137);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66A4D38(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC886EF8, sub_1D66A4D38, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMicaNodeStyle.Selector, v35, v37, v32, &type metadata for FormatMicaNodeStyle.Selector, v35, &type metadata for FormatVersions.AzdenB, v33, v26, v36, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCDC8);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v199 = v39;
  v194 = v38;
  v195 = v40 + 16;
  v196 = v41;
  (v41)(v21);
  v198 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v206 = v204;
  *(&v206 + 1) = v27;
  v212 = 0uLL;
  LOBYTE(v213) = 0;
  v42 = &v26[*(v23 + 44)];
  v44 = *v42;
  v43 = *(v42 + 1);
  LOBYTE(v223) = 0;
  v45 = swift_allocObject();
  *&v204 = &v182;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v223;
  *(v45 + 40) = v44;
  *(v45 + 48) = v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v203 = &v182 - 6;
  *(&v182 - 4) = sub_1D5B4AA6C;
  *(&v182 - 3) = 0;
  v180 = sub_1D6708AE4;
  v181 = v47;
  LOBYTE(v223) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v223;
  v197 = v44;
  *(v48 + 40) = v44;
  *(v48 + 48) = v43;
  sub_1D66A4F4C(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EC886F10, sub_1D66A4F4C, MEMORY[0x1E69E6F60]);
  v193 = v43;
  swift_retain_n();
  v201 = v50;
  v202 = v51;
  v52 = sub_1D72647CC();
  LOBYTE(v223) = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v223;
  v54 = *(v23 + 36);
  v55 = v21;
  v231 = v26;
  v56 = &v26[v54];
  v57 = *&v26[v54 + 24];
  v58 = *&v26[v54 + 32];
  v59 = __swift_project_boxed_opaque_existential_1(&v26[v54], v57);
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  v63 = v203;
  *(&v182 - 4) = sub_1D615B4A4;
  *(&v182 - 3) = v63;
  v180 = sub_1D6708AE4;
  v181 = v48;
  v64 = v205;
  sub_1D5D2BC70(v55, sub_1D615B49C, v65, sub_1D615B4A4, (&v182 - 6), v57, v58);
  if (!v64)
  {
    v205 = v56;

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v68 = v194;
    v69 = v196;
    v196(v200, v199, v194);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D728CF30;
    v212 = xmmword_1D728CF30;
    LOBYTE(v213) = 0;
    LOBYTE(v206) = 0;
    v70 = swift_allocObject();
    v72 = v70;
    *(v70 + 16) = v204;
    *(v70 + 32) = v206;
    v73 = v197;
    v75 = v192;
    v74 = v193;
    *(v70 + 40) = v197;
    *(v70 + 48) = v74;
    if (v75)
    {
      v203 = &v182;
      *&v206 = v75;
      MEMORY[0x1EEE9AC00](v70, v71);
      v182 = &v182 - 6;
      *(&v182 - 4) = sub_1D5B4AA6C;
      *(&v182 - 3) = 0;
      v180 = sub_1D6708AE4;
      v181 = v72;
      LOBYTE(v223) = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v204;
      *(v76 + 32) = v223;
      *(v76 + 40) = v73;
      *(v76 + 48) = v74;
      swift_retain_n();

      v77 = sub_1D72647CC();
      LOBYTE(v223) = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      *(v78 + 24) = v204;
      *(v78 + 40) = v223;
      v79 = *(v205 + 3);
      v80 = *(v205 + 4);
      v81 = __swift_project_boxed_opaque_existential_1(v205, v79);
      MEMORY[0x1EEE9AC00](v81, v82);
      MEMORY[0x1EEE9AC00](v83, v84);
      v85 = v182;
      *(&v182 - 4) = sub_1D615B4A4;
      *(&v182 - 3) = v85;
      v180 = sub_1D6708AE4;
      v181 = v76;
      v86 = v200;
      v88 = sub_1D5D2F7A4(v200, sub_1D615B49C, v87, sub_1D615B4A4, (&v182 - 6), v79, v80);
      v92 = v88;

      if (v92)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v93 = v231;
        sub_1D72647EC();
        v91 = v194;
        v69 = v196;
        v203 = 0;

        sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
        v89 = v193;
        v90 = v93;
      }

      else
      {
        v203 = 0;

        sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
        v90 = v231;
        v89 = v193;
        v91 = v194;
        v69 = v196;
      }
    }

    else
    {
      v203 = 0;

      sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

      v89 = v74;
      v90 = v231;
      v91 = v68;
    }

    v94 = v190;
    v69(v190, v199, v91);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D7297410;
    v212 = xmmword_1D7297410;
    LOBYTE(v213) = 0;
    LOBYTE(v206) = 0;
    v95 = swift_allocObject();
    v97 = v95;
    *(v95 + 16) = v204;
    *(v95 + 32) = v206;
    v98 = v197;
    *(v95 + 40) = v197;
    *(v95 + 48) = v89;
    if (v191)
    {
      v200 = &v182;
      *&v206 = v191;
      MEMORY[0x1EEE9AC00](v95, v96);
      *(&v182 - 4) = sub_1D5B4AA6C;
      *(&v182 - 3) = 0;
      v180 = sub_1D6708AE4;
      v181 = v97;
      LOBYTE(v223) = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v204;
      *(v99 + 32) = v223;
      *(v99 + 40) = v98;
      *(v99 + 48) = v89;
      swift_retain_n();

      v100 = sub_1D72647CC();
      LOBYTE(v223) = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *(v101 + 24) = v204;
      *(v101 + 40) = v223;
      v102 = *(v205 + 3);
      v103 = *(v205 + 4);
      v104 = __swift_project_boxed_opaque_existential_1(v205, v102);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v182 - 4) = sub_1D615B4A4;
      *(&v182 - 3) = &v182 - 6;
      v180 = sub_1D6708AE4;
      v181 = v99;
      v108 = v203;
      v110 = sub_1D5D2F7A4(v94, sub_1D615B49C, v109, sub_1D615B4A4, (&v182 - 6), v102, v103);
      v111 = v94;
      if (v108)
      {

        v90 = v231;
LABEL_32:
        v147 = v111;
LABEL_33:
        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        goto LABEL_34;
      }

      v112 = v110;

      if (v112)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v91 = v194;
        v203 = 0;

        sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
        v89 = v193;
        v98 = v197;
        v90 = v231;
      }

      else
      {
        v203 = 0;

        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
        v90 = v231;
        v89 = v193;
        v91 = v194;
        v98 = v197;
      }
    }

    else
    {

      sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
    }

    v113 = v189;
    v114 = v196;
    v196(v189, v199, v91);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D72BAA60;
    v223 = xmmword_1D72BAA60;
    v224 = 0;
    LOBYTE(v212) = 0;
    v115 = swift_allocObject();
    v117 = v115;
    *(v115 + 16) = v204;
    *(v115 + 32) = v212;
    *(v115 + 40) = v98;
    *(v115 + 48) = v89;
    if (v187 <= 0xFD)
    {
      v200 = &v182;
      v130 = v185;
      v131 = v186;
      v220 = v186;
      v221 = v185;
      v222 = v187;
      MEMORY[0x1EEE9AC00](v115, v116);
      v192 = &v182 - 6;
      *(&v182 - 4) = sub_1D5B4AA6C;
      *(&v182 - 3) = 0;
      v180 = sub_1D6708AE4;
      v181 = v117;
      LOBYTE(v212) = 0;
      v133 = v132;
      v134 = swift_allocObject();
      *(v134 + 16) = v204;
      *(v134 + 32) = v212;
      *(v134 + 40) = v98;
      *(v134 + 48) = v89;
      swift_retain_n();
      sub_1D5ED34B0(v131, v130, v133);
      v135 = sub_1D72647CC();
      LOBYTE(v212) = 0;
      v136 = swift_allocObject();
      *(v136 + 16) = v135;
      *(v136 + 24) = v204;
      *(v136 + 40) = v212;
      v137 = *(v205 + 3);
      v138 = *(v205 + 4);
      v139 = __swift_project_boxed_opaque_existential_1(v205, v137);
      MEMORY[0x1EEE9AC00](v139, v140);
      MEMORY[0x1EEE9AC00](v141, v142);
      v143 = v192;
      *(&v182 - 4) = sub_1D615B4A4;
      *(&v182 - 3) = v143;
      v180 = sub_1D6708AE4;
      v181 = v134;
      v111 = v189;
      v144 = v203;
      v146 = sub_1D5D2F7A4(v189, sub_1D615B49C, v145, sub_1D615B4A4, (&v182 - 6), v137, v138);
      if (v144)
      {

        v90 = v231;
        sub_1D5ED34A0(v220, v221, v222);
        goto LABEL_32;
      }

      v176 = v146;

      if (v176)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v91 = v194;
        v114 = v196;
        v203 = 0;

        sub_1D5ED34A0(v220, v221, v222);
        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
        v89 = v193;
        v98 = v197;
        v90 = v231;
      }

      else
      {
        v203 = 0;

        sub_1D5ED34A0(v220, v221, v222);
        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
        v90 = v231;
        v89 = v193;
        v91 = v194;
        v114 = v196;
        v98 = v197;
      }
    }

    else
    {

      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
    }

    v118 = v188;
    v114(v188, v199, v91);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D72BAA70;
    v218 = xmmword_1D72BAA70;
    v219 = 0;
    LOBYTE(v212) = 0;
    v119 = swift_allocObject();
    v121 = v119;
    *(v119 + 16) = v204;
    *(v119 + 32) = v212;
    *(v119 + 40) = v98;
    *(v119 + 48) = v89;
    if (v230 == 254)
    {

      v122 = v203;
      v123 = v194;
    }

    else
    {
      v200 = &v182;
      v214 = v227;
      v215 = v228;
      v216 = v229;
      v217 = v230;
      v212 = v225;
      v213 = v226;
      MEMORY[0x1EEE9AC00](v119, v120);
      *(&v182 - 4) = sub_1D5B4AA6C;
      *(&v182 - 3) = 0;
      v180 = sub_1D6708AE4;
      v181 = v121;
      LOBYTE(v206) = 0;
      v148 = swift_allocObject();
      *(v148 + 16) = v204;
      *(v148 + 32) = v206;
      *(v148 + 40) = v98;
      *(v148 + 48) = v89;
      swift_retain_n();
      sub_1D5D355B8(&v225, &v206, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v149 = sub_1D72647CC();
      LOBYTE(v206) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v149;
      *(v150 + 24) = v204;
      *(v150 + 40) = v206;
      v151 = *(v205 + 3);
      v152 = *(v205 + 4);
      v153 = __swift_project_boxed_opaque_existential_1(v205, v151);
      MEMORY[0x1EEE9AC00](v153, v154);
      MEMORY[0x1EEE9AC00](v155, v156);
      *(&v182 - 4) = sub_1D615B4A4;
      *(&v182 - 3) = &v182 - 6;
      v180 = sub_1D6708AE4;
      v181 = v148;
      v157 = v203;
      v159 = sub_1D5D2F7A4(v188, sub_1D615B49C, v158, sub_1D615B4A4, (&v182 - 6), v151, v152);
      v122 = v157;
      if (v157)
      {

        v208 = v214;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v206 = v212;
        v207 = v213;
        sub_1D601144C(&v206);
        v90 = v231;
        v147 = v188;
        goto LABEL_33;
      }

      v177 = v159;

      if (v177)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v118 = v188;
        v123 = v194;

        v208 = v214;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v206 = v212;
        v207 = v213;
        sub_1D601144C(&v206);
        v89 = v193;
        v90 = v231;
      }

      else
      {

        v208 = v214;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v206 = v212;
        v207 = v213;
        sub_1D601144C(&v206);
        v90 = v231;
        v118 = v188;
        v89 = v193;
        v123 = v194;
      }
    }

    sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
    v124 = v184;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v125 = __swift_project_value_buffer(v123, qword_1EDFFCDE0);
    v196(v124, v125, v123);
    swift_storeEnumTagMultiPayload();
    v204 = xmmword_1D72BAA80;
    v212 = xmmword_1D72BAA80;
    LOBYTE(v213) = 0;
    LOBYTE(v206) = 0;
    v126 = swift_allocObject();
    v128 = v126;
    *(v126 + 16) = v204;
    *(v126 + 32) = v206;
    v129 = v197;
    *(v126 + 40) = v197;
    *(v126 + 48) = v89;
    if (v183 == 2)
    {
    }

    else
    {
      v203 = &v182;
      LOBYTE(v206) = v183 & 1;
      MEMORY[0x1EEE9AC00](v126, v127);
      v200 = &v182 - 6;
      *(&v182 - 4) = sub_1D5B4AA6C;
      *(&v182 - 3) = 0;
      v180 = sub_1D6708AE4;
      v181 = v128;
      LOBYTE(v218) = 0;
      v160 = swift_allocObject();
      v161 = v89;
      v162 = v124;
      v163 = v160;
      *(v160 + 16) = v204;
      *(v160 + 32) = v218;
      *(v160 + 40) = v129;
      *(v160 + 48) = v161;
      swift_retain_n();
      v164 = sub_1D72647CC();
      LOBYTE(v218) = 0;
      v165 = swift_allocObject();
      *(v165 + 16) = v164;
      *(v165 + 24) = v204;
      *(v165 + 40) = v218;
      v166 = v122;
      v167 = *(v205 + 3);
      v168 = *(v205 + 4);
      v169 = __swift_project_boxed_opaque_existential_1(v205, v167);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      v173 = v200;
      *(&v182 - 4) = sub_1D615B4A4;
      *(&v182 - 3) = v173;
      v180 = sub_1D66A4FE0;
      v181 = v163;
      v175 = sub_1D5D2F7A4(v162, sub_1D615B49C, v174, sub_1D615B4A4, (&v182 - 6), v167, v168);
      if (v166)
      {
        sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

        goto LABEL_5;
      }

      v178 = v175;

      if (v178)
      {
        v179 = v231;
        sub_1D72647EC();
        v124 = v184;
        v90 = v179;
      }

      else
      {
        v90 = v231;
        v124 = v184;
      }
    }

    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

LABEL_34:
    v66 = v90;
    return sub_1D5D2CFE8(v66, sub_1D66A4EB8);
  }

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

LABEL_5:
  v66 = v231;
  return sub_1D5D2CFE8(v66, sub_1D66A4EB8);
}

unint64_t sub_1D652B5B0()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000018;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x615272656E726F63;
  if (v1 != 3)
  {
    v4 = 0x776F64616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6168706C61;
  if (v1 != 1)
  {
    v5 = 0x73726564726F62;
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

uint64_t sub_1D652B688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A5948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D652B6C0(uint64_t a1)
{
  v2 = sub_1D66A4E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652B6FC(uint64_t a1)
{
  v2 = sub_1D66A4E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMotion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = a1[3];
    v30 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v12 = sub_1D7264AFC();
    LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v13 = v35;
    v14 = v9;
    if (v11)
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
          *(v21 + 16) = &unk_1F5116138;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v14, v6);
          a1 = v30;
          goto LABEL_9;
        }
      }
    }

    sub_1D66A505C();
    v32 = 0uLL;
    sub_1D726431C();
    v24 = v31;
    if (v31 > 2u)
    {
      if (v31 != 3)
      {
        if (v31 != 4)
        {
          v28 = a2;
          v31 = xmmword_1D7279980;
          sub_1D66A50B0();
          sub_1D726431C();
          (*(v13 + 8))(v14, v6);
          v26 = v32;
          v27 = v33;
          v25 = v34;
          goto LABEL_24;
        }

        sub_1D66A5104(0, &qword_1EC886F28, type metadata accessor for FormatRange);
        v31 = xmmword_1D7279980;
        sub_1D66A5184(&qword_1EC886F30, &qword_1EC886F28, type metadata accessor for FormatRange, &protocol conformance descriptor for FormatRange<A>);
        sub_1D726431C();
        (*(v13 + 8))(v14, v6);
        goto LABEL_18;
      }

      sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      v31 = xmmword_1D7279980;
      sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate, &protocol conformance descriptor for FormatTranslate<A>);
      sub_1D726431C();
      (*(v13 + 8))(v14, v6);
    }

    else
    {
      if (!v31)
      {
        v28 = a2;
        sub_1D5C34074(0, &qword_1EC886F48, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for FormatValue);
        v32 = xmmword_1D7279980;
        sub_1D66A51C8();
        sub_1D726431C();
        (*(v13 + 8))(v14, v6);
        v25 = 0;
        *&v26 = v31;
        v27 = 0uLL;
        goto LABEL_24;
      }

      if (v31 == 1)
      {
        sub_1D66A5104(0, &qword_1EC886F28, type metadata accessor for FormatRange);
        v31 = xmmword_1D7279980;
        sub_1D66A5184(&qword_1EC886F30, &qword_1EC886F28, type metadata accessor for FormatRange, &protocol conformance descriptor for FormatRange<A>);
        sub_1D726431C();
        (*(v35 + 8))(v14, v6);
LABEL_18:
        v25 = 0;
        v26 = v32;
        v27 = 0uLL;
        v28 = a2;
LABEL_24:
        v22 = v30;
        *v28 = v26;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
      v31 = xmmword_1D7279980;
      sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate, &protocol conformance descriptor for FormatTranslate<A>);
      sub_1D726431C();
      (*(v35 + 8))(v14, v6);
    }

    v25 = 0;
    v26 = v32;
    v27 = v33;
    v28 = a2;
    goto LABEL_24;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  v22 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FormatMotion.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v91 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v89 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v88 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v25 = *(v1 + 8);
  v28 = *(v1 + 16);
  v27 = *(v1 + 24);
  v29 = *(v1 + 32);
  v30 = *(v1 + 40);
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = sub_1D5C30408();
  v98 = v24;
  sub_1D5D2EE70(&type metadata for FormatMotion, &type metadata for FormatCodingKeys, v34, v32, &type metadata for FormatMotion, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v31, v24, v33, &off_1F51F6C78);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v61 = v26;
      v62 = v25;
      v63 = v28;
      v64 = v27;
      sub_1D5B58478(0);
      v66 = *(v65 + 48);
      v39 = v91;
      v67 = &v91[*(v65 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
      v70 = *(*(v68 - 8) + 16);
      v70(v39, v69, v68);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v71 = __swift_project_value_buffer(v68, qword_1EDFFCE68);
      v70(v39 + v66, v71, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v67 = 0;
      *(v67 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v72 = 3;
      goto LABEL_32;
    }

    if (v30 == 4)
    {
      v35 = v26;
      v36 = v25;
      sub_1D5B58478(0);
      v47 = *(v46 + 48);
      v39 = v92;
      v48 = &v92[*(v46 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      v51 = *(*(v49 - 8) + 16);
      v51(v39, v50, v49);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v52 = __swift_project_value_buffer(v49, qword_1EDFFCE68);
      v51(v39 + v47, v52, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v48 = 0;
      *(v48 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v45 = 4;
      goto LABEL_16;
    }

    *&v94 = v26;
    *(&v94 + 1) = v25;
    v95 = v28;
    v96 = v27;
    v97 = v29;
    sub_1D5B58478(0);
    v81 = *(v80 + 48);
    v39 = v93;
    v82 = &v93[*(v80 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v83 = sub_1D725BD1C();
    v84 = __swift_project_value_buffer(v83, qword_1EDFFCD30);
    v85 = *(*(v83 - 8) + 16);
    v85(v39, v84, v83);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v86 = __swift_project_value_buffer(v83, qword_1EDFFCE68);
    v85(v39 + v81, v86, v83);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v82 = 0;
    *(v82 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v98;
    sub_1D63BC7A4(5, &v94, v39);
  }

  else
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v35 = v26;
        v36 = v25;
        sub_1D5B58478(0);
        v38 = *(v37 + 48);
        v39 = v89;
        v40 = &v89[*(v37 + 64)];
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v41 = sub_1D725BD1C();
        v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
        v43 = *(*(v41 - 8) + 16);
        v43(v39, v42, v41);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v41, qword_1EDFFCE68);
        v43(v39 + v38, v44, v41);
        type metadata accessor for FormatVersionRequirement.Value(0);
        *v40 = 0;
        *(v40 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v45 = 1;
LABEL_16:
        v53 = v98;
        sub_1D63BC3C8(v45, v39, v35, v36);
        goto LABEL_38;
      }

      v61 = v26;
      v62 = v25;
      v63 = v28;
      v64 = v27;
      sub_1D5B58478(0);
      v74 = *(v73 + 48);
      v39 = v90;
      v75 = &v90[*(v73 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v78 = *(*(v76 - 8) + 16);
      v78(v39, v77, v76);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v79 = __swift_project_value_buffer(v76, qword_1EDFFCE68);
      v78(v39 + v74, v79, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v75 = 0;
      *(v75 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v72 = 2;
LABEL_32:
      v53 = v98;
      sub_1D63BC5B4(v72, v39, v61, v62, v63, v64);
      goto LABEL_38;
    }

    sub_1D5B58478(0);
    v55 = *(v54 + 48);
    v39 = v88;
    v56 = &v88[*(v54 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
    v59 = *(*(v57 - 8) + 16);
    v59(v39, v58, v57);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v57, qword_1EDFFCE68);
    v59(v39 + v55, v60, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v56 = 0;
    *(v56 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v98;
    sub_1D63BC200(0, v39, v26);
  }

LABEL_38:
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D5D30DC4);
}

double sub_1D652C7D8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D652C8F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663628(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D652C920(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C616373;
  v5 = 0xE900000000000065;
  v6 = 0x74616C736E617274;
  v7 = 0xEE0065676E615265;
  v8 = 0x74616C736E617274;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001D73B8CD0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006567;
  v10 = 0x6E6152656C616373;
  if (v2 != 1)
  {
    v10 = 0x617254656C616373;
    v9 = 0xEE006574616C736ELL;
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

uint64_t FormatMotion.TranslateWithScale.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D66A524C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A52E0(0);
  sub_1D5B58B84(&qword_1EC886F80, sub_1D66A52E0, &unk_1D7321584);
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

  v14 = v28;
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

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6627E68(0x74616C736E617274, 0xE900000000000065, 0x656C616373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
  sub_1D66A5184(&qword_1EC886F40, &qword_1EC886F38, type metadata accessor for FormatTranslate, &protocol conformance descriptor for FormatTranslate<A>);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_1D726431C();
  v26 = v33;
  v27 = v32;
  v32 = xmmword_1D728CF30;
  LOBYTE(v33) = 0;
  sub_1D72642DC();
  v24 = v23;
  (*(v11 + 8))(v10, v6);
  v25 = v26;
  *v14 = v27;
  *(v14 + 16) = v25;
  *(v14 + 32) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMotion.TranslateWithScale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v79 - v8;
  sub_1D66A5460(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v93 = *(v1 + 16);
  v94 = v15;
  v16 = *(v1 + 32);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66A52E0(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886F80, sub_1D66A52E0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatMotion.TranslateWithScale, v20, v22, v17, &type metadata for FormatMotion.TranslateWithScale, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  sub_1D5B58478(0);
  v24 = *(v23 + 48);
  v89 = v23;
  v25 = &v9[*(v23 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v30 = v28 + 16;
  v85 = v27;
  v29(v9);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v26, qword_1EDFFCE68);
  v29(&v9[v24]);
  v31 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v25 = 0;
  *(v25 + 1) = 0;
  v83 = v31;
  swift_storeEnumTagMultiPayload();
  v100 = v94;
  v101 = v93;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v32 = &v14[*(v11 + 44)];
  *&v93 = v9;
  v33 = *v32;
  v34 = *(v32 + 1);
  v96 = 0;
  v35 = swift_allocObject();
  v82 = v26;
  *&v94 = &v79;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v96;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v87 = v29;
  *(&v79 - 4) = sub_1D5B4AA6C;
  *(&v79 - 3) = 0;
  v77 = sub_1D6708AE8;
  v78 = v37;
  v96 = 0;
  v38 = swift_allocObject();
  v86 = v30;
  v39 = v14;
  v40 = v38;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v96;
  v88 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D66A54F4(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EC886F98, sub_1D66A54F4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v91 = v43;
  v92 = v42;
  v44 = sub_1D72647CC();
  v96 = 0;
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = v96;
  v46 = (v39 + *(v11 + 36));
  v47 = v46[3];
  v48 = v46[4];
  v49 = __swift_project_boxed_opaque_existential_1(v46, v47);
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v79 - 4) = sub_1D615B4A4;
  *(&v79 - 3) = (&v79 - 6);
  v53 = v93;
  v77 = sub_1D66A5588;
  v78 = v40;
  v54 = v95;
  sub_1D5D2BC70(v93, sub_1D615B49C, v55, sub_1D615B4A4, (&v79 - 6), v47, v48);
  if (v54)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v80 = v46;
    v81 = v34;

    sub_1D66A5104(0, &qword_1EC886F38, type metadata accessor for FormatTranslate);
    sub_1D66A5184(&qword_1EC886FA0, &qword_1EC886F38, type metadata accessor for FormatTranslate, &protocol conformance descriptor for FormatTranslate<A>);
    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v57 = v90;
    v58 = *(v89 + 48);
    v59 = &v90[*(v89 + 64)];
    v60 = v82;
    v61 = v87;
    (v87)(v90, v85, v82);
    v61(v57 + v58, v84, v60);
    *v59 = 0;
    *(v59 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v97 = v16;
    v95 = xmmword_1D728CF30;
    v100 = xmmword_1D728CF30;
    LOBYTE(v101) = 0;
    v96 = 0;
    v62 = swift_allocObject();
    *&v94 = &v79;
    *(v62 + 16) = v95;
    *(v62 + 32) = v96;
    v63 = v88;
    v64 = v81;
    *(v62 + 40) = v88;
    *(v62 + 48) = v64;
    MEMORY[0x1EEE9AC00](v62, v65);
    *(&v79 - 4) = sub_1D5B4AA6C;
    *(&v79 - 3) = 0;
    v77 = sub_1D6708AE8;
    v78 = v66;
    v96 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v95;
    *(v67 + 32) = v96;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v96 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v95;
    *(v69 + 40) = v96;
    v70 = v80[3];
    v71 = v80[4];
    v72 = __swift_project_boxed_opaque_existential_1(v80, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v79 - 4) = sub_1D615B4A4;
    *(&v79 - 3) = (&v79 - 6);
    v77 = sub_1D6708AE8;
    v78 = v67;
    sub_1D5D2BC70(v57, sub_1D615B49C, v76, sub_1D615B4A4, (&v79 - 6), v70, v71);

    sub_1D72647EC();
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v39, sub_1D66A5460);
}

uint64_t sub_1D652D7BC()
{
  v1 = 0x656C616373;
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
    return 0x74616C736E617274;
  }
}

uint64_t sub_1D652D810@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A5B94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D652D848(uint64_t a1)
{
  v2 = sub_1D66A53B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652D884(uint64_t a1)
{
  v2 = sub_1D66A53B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatNode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v348 = &v312 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v347 = &v312 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v346 = &v312 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v349 = &v312 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v345 = &v312 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v344 = &v312 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v343 = &v312 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v342 = &v312 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v341 = &v312 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v339 = &v312 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v337 = &v312 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v336 = &v312 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v340 = &v312 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v335 = &v312 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v334 = &v312 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v333 = &v312 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v332 = &v312 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v331 = &v312 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v330 = &v312 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v329 = &v312 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v328 = &v312 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v327 = &v312 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v326 = &v312 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v325 = &v312 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v324 = &v312 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v323 = &v312 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v322 = &v312 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v321 = &v312 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v320 = &v312 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v319 = &v312 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v318 = &v312 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v317 = &v312 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v316 = &v312 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v315 = &v312 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v314 = &v312 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v313 = &v312 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v312 = &v312 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = &v312 - v116;
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v312 - v120;
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v312 - v124;
  MEMORY[0x1EEE9AC00](v126, v127);
  v338 = &v312 - v128;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v129 - 8, v130);
  v132 = &v312 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *v1;
  v134 = a1;
  v135 = a1[3];
  v136 = v134[4];
  __swift_project_boxed_opaque_existential_1(v134, v135);
  v137 = sub_1D5C30408();
  v353 = v132;
  sub_1D5D2EE70(&type metadata for FormatNode, &type metadata for FormatCodingKeys, v138, v135, &type metadata for FormatNode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v136, v132, v137, &off_1F51F6C78);
  switch((v133 >> 58) & 0x3C | (v133 >> 1) & 3)
  {
    case 1uLL:
      v226 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v227 = qword_1EDF31EB0;

      if (v227 != -1)
      {
        swift_once();
      }

      v228 = sub_1D725BD1C();
      v229 = __swift_project_value_buffer(v228, qword_1EDFFCD30);
      (*(*(v228 - 8) + 16))(v125, v229, v228);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF550(1, v226, v125);

      v117 = v125;
      goto LABEL_128;
    case 2uLL:
      v210 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v211 = qword_1EDF31EB0;

      if (v211 != -1)
      {
        swift_once();
      }

      v212 = sub_1D725BD1C();
      v213 = __swift_project_value_buffer(v212, qword_1EDFFCD30);
      (*(*(v212 - 8) + 16))(v121, v213, v212);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF71C(2, v210, v121);

      v117 = v121;
      goto LABEL_128;
    case 3uLL:
      v218 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v219 = qword_1EDF31EB0;

      if (v219 != -1)
      {
        swift_once();
      }

      v220 = sub_1D725BD1C();
      v221 = __swift_project_value_buffer(v220, qword_1EDFFCD30);
      (*(*(v220 - 8) + 16))(v117, v221, v220);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF8E8(3, v218, v117);
      goto LABEL_127;
    case 4uLL:
      v186 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v187 = qword_1EDF31EB0;

      if (v187 != -1)
      {
        swift_once();
      }

      v188 = sub_1D725BD1C();
      v189 = __swift_project_value_buffer(v188, qword_1EDFFCD30);
      v117 = v312;
      (*(*(v188 - 8) + 16))(v312, v189, v188);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFAB4(4, v186, v117);
      goto LABEL_127;
    case 5uLL:
      v242 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v243 = qword_1EDF31EB0;

      if (v243 != -1)
      {
        swift_once();
      }

      v244 = sub_1D725BD1C();
      v245 = __swift_project_value_buffer(v244, qword_1EDFFCD30);
      v117 = v313;
      (*(*(v244 - 8) + 16))(v313, v245, v244);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFC80(5, v242, v117);
      goto LABEL_127;
    case 6uLL:
      v254 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v255 = qword_1EDF31EB0;

      if (v255 != -1)
      {
        swift_once();
      }

      v256 = sub_1D725BD1C();
      v257 = __swift_project_value_buffer(v256, qword_1EDFFCD30);
      v117 = v314;
      (*(*(v256 - 8) + 16))(v314, v257, v256);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BFE4C(6, v254, v117);
      goto LABEL_127;
    case 7uLL:
      v222 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v223 = qword_1EDF31EB0;

      if (v223 != -1)
      {
        swift_once();
      }

      v224 = sub_1D725BD1C();
      v225 = __swift_project_value_buffer(v224, qword_1EDFFCD30);
      v117 = v315;
      (*(*(v224 - 8) + 16))(v315, v225, v224);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0018(7, v222, v117);
      goto LABEL_127;
    case 8uLL:
      v266 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v267 = qword_1EDF31EB0;

      if (v267 != -1)
      {
        swift_once();
      }

      v268 = sub_1D725BD1C();
      v269 = __swift_project_value_buffer(v268, qword_1EDFFCD30);
      v117 = v316;
      (*(*(v268 - 8) + 16))(v316, v269, v268);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C01E4(8, v266, v117);
      goto LABEL_127;
    case 9uLL:
      v198 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v199 = qword_1EDF31EB0;

      if (v199 != -1)
      {
        swift_once();
      }

      v200 = sub_1D725BD1C();
      v201 = __swift_project_value_buffer(v200, qword_1EDFFCD30);
      v117 = v317;
      (*(*(v200 - 8) + 16))(v317, v201, v200);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C03B0(9, v198, v117);
      goto LABEL_127;
    case 0xAuLL:
      v262 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v263 = qword_1EDF31EB0;

      if (v263 != -1)
      {
        swift_once();
      }

      v264 = sub_1D725BD1C();
      v265 = __swift_project_value_buffer(v264, qword_1EDFFCD30);
      v117 = v318;
      (*(*(v264 - 8) + 16))(v318, v265, v264);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C057C(10, v262, v117);
      goto LABEL_127;
    case 0xBuLL:
      v182 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v183 = qword_1EDF31EB0;

      if (v183 != -1)
      {
        swift_once();
      }

      v184 = sub_1D725BD1C();
      v185 = __swift_project_value_buffer(v184, qword_1EDFFCD30);
      v117 = v319;
      (*(*(v184 - 8) + 16))(v319, v185, v184);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0748(11, v182, v117);
      goto LABEL_127;
    case 0xCuLL:
      v194 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v195 = qword_1EDF31EB0;

      if (v195 != -1)
      {
        swift_once();
      }

      v196 = sub_1D725BD1C();
      v197 = __swift_project_value_buffer(v196, qword_1EDFFCD30);
      v117 = v320;
      (*(*(v196 - 8) + 16))(v320, v197, v196);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0914(12, v194, v117);
      goto LABEL_127;
    case 0xDuLL:
      v250 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v251 = qword_1EDF31EB0;

      if (v251 != -1)
      {
        swift_once();
      }

      v252 = sub_1D725BD1C();
      v253 = __swift_project_value_buffer(v252, qword_1EDFFCD30);
      v117 = v321;
      (*(*(v252 - 8) + 16))(v321, v253, v252);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0AE0(13, v250, v117);
      goto LABEL_127;
    case 0xEuLL:
      v174 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v175 = qword_1EDF31EB0;

      if (v175 != -1)
      {
        swift_once();
      }

      v176 = sub_1D725BD1C();
      v177 = __swift_project_value_buffer(v176, qword_1EDFFCD30);
      v117 = v322;
      (*(*(v176 - 8) + 16))(v322, v177, v176);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0CAC(14, v174, v117);
      goto LABEL_127;
    case 0xFuLL:
      v214 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v215 = qword_1EDF31EE8;

      if (v215 != -1)
      {
        swift_once();
      }

      v216 = sub_1D725BD1C();
      v217 = __swift_project_value_buffer(v216, qword_1EDFFCD98);
      v117 = v323;
      (*(*(v216 - 8) + 16))(v323, v217, v216);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C0E78(15, v214, v117);
      goto LABEL_127;
    case 0x10uLL:
      v170 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v171 = qword_1EDF31EB0;

      if (v171 != -1)
      {
        swift_once();
      }

      v172 = sub_1D725BD1C();
      v173 = __swift_project_value_buffer(v172, qword_1EDFFCD30);
      v117 = v324;
      (*(*(v172 - 8) + 16))(v324, v173, v172);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1044(16, v170, v117);
      goto LABEL_127;
    case 0x11uLL:
      v234 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v235 = qword_1EDF31EB0;

      if (v235 != -1)
      {
        swift_once();
      }

      v236 = sub_1D725BD1C();
      v237 = __swift_project_value_buffer(v236, qword_1EDFFCD30);
      v117 = v325;
      (*(*(v236 - 8) + 16))(v325, v237, v236);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1210(17, v234, v117);
      goto LABEL_127;
    case 0x12uLL:
      v258 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v259 = qword_1EDF31EA8;

      if (v259 != -1)
      {
        swift_once();
      }

      v260 = sub_1D725BD1C();
      v261 = __swift_project_value_buffer(v260, qword_1EDFFCD18);
      v117 = v326;
      (*(*(v260 - 8) + 16))(v326, v261, v260);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C13DC(18, v258, v117);
      goto LABEL_127;
    case 0x13uLL:
      v286 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v287 = qword_1EDF31EA8;

      if (v287 != -1)
      {
        swift_once();
      }

      v288 = sub_1D725BD1C();
      v289 = __swift_project_value_buffer(v288, qword_1EDFFCD18);
      v117 = v327;
      (*(*(v288 - 8) + 16))(v327, v289, v288);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C15A8(19, v286, v117);
      goto LABEL_127;
    case 0x14uLL:
      v238 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v239 = qword_1EDF31EA8;

      if (v239 != -1)
      {
        swift_once();
      }

      v240 = sub_1D725BD1C();
      v241 = __swift_project_value_buffer(v240, qword_1EDFFCD18);
      v117 = v328;
      (*(*(v240 - 8) + 16))(v328, v241, v240);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1774(20, v238, v117);
      goto LABEL_127;
    case 0x15uLL:
      v246 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v247 = qword_1EDF31EA8;

      if (v247 != -1)
      {
        swift_once();
      }

      v248 = sub_1D725BD1C();
      v249 = __swift_project_value_buffer(v248, qword_1EDFFCD18);
      v117 = v329;
      (*(*(v248 - 8) + 16))(v329, v249, v248);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1940(21, v246, v117);
      goto LABEL_127;
    case 0x16uLL:
      v278 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v279 = qword_1EDF31F10;

      if (v279 != -1)
      {
        swift_once();
      }

      v280 = sub_1D725BD1C();
      v281 = __swift_project_value_buffer(v280, qword_1EDFFCDF8);
      v117 = v330;
      (*(*(v280 - 8) + 16))(v330, v281, v280);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1B0C(22, v278, v117);
      goto LABEL_127;
    case 0x17uLL:
      v290 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v291 = qword_1EDF31F10;

      if (v291 != -1)
      {
        swift_once();
      }

      v292 = sub_1D725BD1C();
      v293 = __swift_project_value_buffer(v292, qword_1EDFFCDF8);
      v117 = v331;
      (*(*(v292 - 8) + 16))(v331, v293, v292);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1CD8(23, v290, v117);
      goto LABEL_127;
    case 0x18uLL:
      v206 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v207 = qword_1EDF31EF8;

      if (v207 != -1)
      {
        swift_once();
      }

      v208 = sub_1D725BD1C();
      v209 = __swift_project_value_buffer(v208, qword_1EDFFCDC8);
      v117 = v332;
      (*(*(v208 - 8) + 16))(v332, v209, v208);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C1EA4(24, v206, v117);
      goto LABEL_127;
    case 0x19uLL:
      v202 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v203 = qword_1EDF31EF0;

      if (v203 != -1)
      {
        swift_once();
      }

      v204 = sub_1D725BD1C();
      v205 = __swift_project_value_buffer(v204, qword_1EDFFCDB0);
      v117 = v333;
      (*(*(v204 - 8) + 16))(v333, v205, v204);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2070(25, v202, v117);
      goto LABEL_127;
    case 0x1AuLL:
      v307 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v308 = qword_1EDF31EE8;

      if (v308 != -1)
      {
        swift_once();
      }

      v309 = sub_1D725BD1C();
      v310 = __swift_project_value_buffer(v309, qword_1EDFFCD98);
      v117 = v334;
      (*(*(v309 - 8) + 16))(v334, v310, v309);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C223C(26, v307, v117);
      goto LABEL_127;
    case 0x1BuLL:
      v162 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v163 = qword_1EDF31ED0;

      if (v163 != -1)
      {
        swift_once();
      }

      v164 = sub_1D725BD1C();
      v165 = __swift_project_value_buffer(v164, qword_1EDFFCD50);
      v117 = v335;
      (*(*(v164 - 8) + 16))(v335, v165, v164);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2408(27, v162, v117);
      goto LABEL_127;
    case 0x1CuLL:
      v294 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v351[5] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v351[6] = v294;
      v351[7] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v352 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v295 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v351[1] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v351[2] = v295;
      v296 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v351[3] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v351[4] = v296;
      v351[0] = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v351, &v350);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v297 = sub_1D725BD1C();
      v298 = __swift_project_value_buffer(v297, qword_1EDFFCD50);
      v117 = v340;
      (*(*(v297 - 8) + 16))(v340, v298, v297);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C25D4(28, v351, v117);
      sub_1D62B6110(v351);
      goto LABEL_128;
    case 0x1DuLL:
      v299 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v300 = qword_1EDF31ED0;

      if (v300 != -1)
      {
        swift_once();
      }

      v301 = sub_1D725BD1C();
      v302 = __swift_project_value_buffer(v301, qword_1EDFFCD50);
      v117 = v336;
      (*(*(v301 - 8) + 16))(v336, v302, v301);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C278C(29, v299, v117);
      goto LABEL_127;
    case 0x1EuLL:
      v270 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v271 = qword_1EDF31ED0;

      if (v271 != -1)
      {
        swift_once();
      }

      v272 = sub_1D725BD1C();
      v273 = __swift_project_value_buffer(v272, qword_1EDFFCD50);
      v117 = v337;
      (*(*(v272 - 8) + 16))(v337, v273, v272);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2958(30, v270, v117);
      goto LABEL_127;
    case 0x1FuLL:
      v230 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v231 = qword_1EDF31E98;

      if (v231 != -1)
      {
        swift_once();
      }

      v232 = sub_1D725BD1C();
      v233 = __swift_project_value_buffer(v232, qword_1EDFFCD00);
      v117 = v339;
      (*(*(v232 - 8) + 16))(v339, v233, v232);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2B24(31, v230, v117);
      goto LABEL_127;
    case 0x20uLL:
      v274 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v275 = qword_1EDF31E98;

      if (v275 != -1)
      {
        swift_once();
      }

      v276 = sub_1D725BD1C();
      v277 = __swift_project_value_buffer(v276, qword_1EDFFCD00);
      v117 = v341;
      (*(*(v276 - 8) + 16))(v341, v277, v276);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2CF0(32, v274, v117);
      goto LABEL_127;
    case 0x21uLL:
      v178 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v179 = qword_1EDF31F08;

      if (v179 != -1)
      {
        swift_once();
      }

      v180 = sub_1D725BD1C();
      v181 = __swift_project_value_buffer(v180, qword_1EDFFCDE0);
      v117 = v342;
      (*(*(v180 - 8) + 16))(v342, v181, v180);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C2EBC(33, v178, v117);
      goto LABEL_127;
    case 0x22uLL:
      v166 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v167 = qword_1EDF31ED8;

      if (v167 != -1)
      {
        swift_once();
      }

      v168 = sub_1D725BD1C();
      v169 = __swift_project_value_buffer(v168, qword_1EDFFCD68);
      v117 = v343;
      (*(*(v168 - 8) + 16))(v343, v169, v168);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3088(34, v166, v117);
      goto LABEL_127;
    case 0x23uLL:
      v154 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v155 = qword_1EDF31ED8;

      if (v155 != -1)
      {
        swift_once();
      }

      v156 = sub_1D725BD1C();
      v157 = __swift_project_value_buffer(v156, qword_1EDFFCD68);
      v117 = v344;
      (*(*(v156 - 8) + 16))(v344, v157, v156);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3254(35, v154, v117);
      goto LABEL_127;
    case 0x24uLL:
      v158 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v159 = qword_1EDF31ED8;

      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_1D725BD1C();
      v161 = __swift_project_value_buffer(v160, qword_1EDFFCD68);
      v117 = v345;
      (*(*(v160 - 8) + 16))(v345, v161, v160);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3420(36, v158, v117);
      goto LABEL_127;
    case 0x25uLL:
      v144 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D5B58478(0);
      v146 = *(v145 + 48);
      v147 = v349;
      v148 = &v349[*(v145 + 64)];
      v149 = qword_1EDF31E80;

      if (v149 != -1)
      {
        swift_once();
      }

      v150 = sub_1D725BD1C();
      v151 = __swift_project_value_buffer(v150, qword_1EDFFCCA8);
      v152 = *(*(v150 - 8) + 16);
      v152(v147, v151, v150);
      v143 = v353;
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v153 = __swift_project_value_buffer(v150, qword_1EDFFCE80);
      v152(v147 + v146, v153, v150);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v148 = 0;
      *(v148 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D63C35EC(37, v144, v147);

      v117 = v147;
      goto LABEL_128;
    case 0x26uLL:
      v303 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v304 = qword_1EDF31F58[0];

      if (v304 != -1)
      {
        swift_once();
      }

      v305 = sub_1D725BD1C();
      v306 = __swift_project_value_buffer(v305, qword_1EDFFCE98);
      v117 = v346;
      (*(*(v305 - 8) + 16))(v346, v306, v305);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C37B8(38, v303, v117);
      goto LABEL_127;
    case 0x27uLL:
      v282 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v283 = qword_1EDF31F50;

      if (v283 != -1)
      {
        swift_once();
      }

      v284 = sub_1D725BD1C();
      v285 = __swift_project_value_buffer(v284, qword_1EDFFCE80);
      v117 = v347;
      (*(*(v284 - 8) + 16))(v347, v285, v284);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3984(39, v282, v117);
      goto LABEL_127;
    case 0x28uLL:
      v190 = *((v133 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v191 = qword_1EDF31F38;

      if (v191 != -1)
      {
        swift_once();
      }

      v192 = sub_1D725BD1C();
      v193 = __swift_project_value_buffer(v192, qword_1EDFFCE38);
      v117 = v348;
      (*(*(v192 - 8) + 16))(v348, v193, v192);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63C3B50(40, v190, v117);
      goto LABEL_127;
    default:
      v139 = *(v133 + 16);
      v140 = qword_1EDF31EB0;

      if (v140 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD30);
      v117 = v338;
      (*(*(v141 - 8) + 16))(v338, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v353;
      sub_1D63BF384(0, v139, v117);
LABEL_127:

LABEL_128:
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v143, sub_1D5D30DC4);
  }
}