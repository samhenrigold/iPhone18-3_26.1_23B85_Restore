void sub_1D6324FC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6325050(uint64_t a1)
{
  v2 = sub_1D6325DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D632508C(uint64_t a1)
{
  v2 = sub_1D6325DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryButtonsConfig.encode(to:)(void *a1)
{
  sub_1D6325FEC(0, &qword_1EC885D08, sub_1D6325DB8, &type metadata for PuzzleAccessoryButtonsConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325DB8();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5B49E98(0, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
  sub_1D6325E60(&qword_1EC885D20, sub_1D6325E0C, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleAccessoryButtonsConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D6325FEC(0, &qword_1EC885D30, sub_1D6325DB8, &type metadata for PuzzleAccessoryButtonsConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325DB8();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5B49E98(0, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1D6325E60(&qword_1EC885D38, sub_1D6325EF0, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PuzzleAccessoryButtonConfig.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryButtonConfig.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleAccessoryButtonConfig.icon.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D6325598()
{
  v1 = 0x696669746E656469;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6D657449756E656DLL;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_1D632560C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6326388(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6325634(uint64_t a1)
{
  v2 = sub_1D6325F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6325670(uint64_t a1)
{
  v2 = sub_1D6325F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryButtonConfig.encode(to:)(void *a1)
{
  sub_1D6325FEC(0, &qword_1EC885D48, sub_1D6325F44, &type metadata for PuzzleAccessoryButtonConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325F44();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D726437C();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5B49E98(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    sub_1D6326054(&qword_1EC885D60, sub_1D6325F98, MEMORY[0x1E69E6300]);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

void PuzzleAccessoryButtonConfig.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6325FEC(0, &qword_1EC885D70, sub_1D6325F44, &type metadata for PuzzleAccessoryButtonConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325F44();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v30 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v29 = 1;
    v14 = sub_1D726422C();
    v24 = v15;
    v22 = v14;
    v28 = 2;
    v21 = sub_1D726422C();
    v23 = v16;
    sub_1D5B49E98(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    v27 = 3;
    sub_1D6326054(&qword_1EC885D78, sub_1D63260E4, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    (*(v10 + 8))(v9, v25);
    v17 = v26;
    *a2 = v11;
    a2[1] = v13;
    v18 = v21;
    v20 = v23;
    v19 = v24;
    a2[2] = v22;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v20;
    a2[6] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D6325CE0(uint64_t a1)
{
  if (!qword_1EC884E38)
  {
    sub_1D5BB0DB0();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884E38);
    }
  }
}

uint64_t sub_1D6325D38(uint64_t a1)
{
  sub_1D5B49E98(0, &qword_1EC885D00, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6325DB8()
{
  result = qword_1EC885D10;
  if (!qword_1EC885D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D10);
  }

  return result;
}

unint64_t sub_1D6325E0C()
{
  result = qword_1EC885D28;
  if (!qword_1EC885D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D28);
  }

  return result;
}

uint64_t sub_1D6325E60(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49E98(255, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6325EF0()
{
  result = qword_1EC885D40;
  if (!qword_1EC885D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D40);
  }

  return result;
}

unint64_t sub_1D6325F44()
{
  result = qword_1EC885D50;
  if (!qword_1EC885D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D50);
  }

  return result;
}

unint64_t sub_1D6325F98()
{
  result = qword_1EC885D68;
  if (!qword_1EC885D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D68);
  }

  return result;
}

void sub_1D6325FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6326054(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49E98(255, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D63260E4()
{
  result = qword_1EC885D80;
  if (!qword_1EC885D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D80);
  }

  return result;
}

unint64_t sub_1D632617C()
{
  result = qword_1EC885D88;
  if (!qword_1EC885D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D88);
  }

  return result;
}

unint64_t sub_1D63261D4()
{
  result = qword_1EC885D90;
  if (!qword_1EC885D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D90);
  }

  return result;
}

unint64_t sub_1D632622C()
{
  result = qword_1EC885D98;
  if (!qword_1EC885D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D98);
  }

  return result;
}

unint64_t sub_1D6326284()
{
  result = qword_1EC885DA0;
  if (!qword_1EC885DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DA0);
  }

  return result;
}

unint64_t sub_1D63262DC()
{
  result = qword_1EC885DA8;
  if (!qword_1EC885DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DA8);
  }

  return result;
}

unint64_t sub_1D6326334()
{
  result = qword_1EC885DB0;
  if (!qword_1EC885DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DB0);
  }

  return result;
}

uint64_t sub_1D6326388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D657449756E656DLL && a2 == 0xE900000000000073)
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

void sub_1D63264FC(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = v3[3];
  if ((v7 & 4) != 0)
  {
    v26[0] = *v3;
    v19 = sub_1D6E5B35C(a1, a2, 0, 0);
    if (!v4)
    {
      v20 = v19;
      v21 = [v19 string];

      v22 = sub_1D726207C();
      v24 = v23;

      *a3 = v22;
      *(a3 + 8) = v24;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    v8 = v3[1];
    v9 = v3[2];
    sub_1D6F7CC5C(a2, a1, v6, v8, v9, v7, v26);
    v12 = v26[0];
    v13 = v26[1];
    v14 = v26[2];
    MEMORY[0x1EEE9AC00](v15, v16);
    v25[2] = a1;
    v25[3] = a2;
    sub_1D6F7ED58(a1, sub_1D6326B4C, v25, v12, v13, v14);
    v18 = v17;

    if (!v4)
    {
      *a3 = v18;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }
  }
}

void sub_1D632665C(void (**a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1D6E5B35C(a1, a2, 0, 0);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 string];

    v8 = sub_1D726207C();
    v10 = v9;

    *a3 = v8;
    a3[1] = v10;
  }
}

uint64_t _s8NewsFeed15FormatMenuTitleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v4 & 4) != 0)
  {
    if ((v8 & 4) != 0)
    {
      v17 = *a2;
      v18 = v3;
      sub_1D62B7098(v7, v6, v9, v8);
      sub_1D62B7098(v3, v2, v5, v4);
      sub_1D62B7098(v3, v2, v5, v4);
      sub_1D62B7098(v7, v6, v9, v8);
      v11 = static FormatTextContent.== infix(_:_:)(&v18, &v17);
      sub_1D62B7130(v3, v2, v5, v4);
      sub_1D62B7130(v7, v6, v9, v8);
      sub_1D62B7130(v7, v6, v9, v8);
      sub_1D62B7130(v3, v2, v5, v4);
      return v11 & 1;
    }

    goto LABEL_7;
  }

  if ((v8 & 4) != 0)
  {
LABEL_7:
    sub_1D62B7098(*a1, v2, v5, v4);
    sub_1D62B7098(v7, v6, v9, v8);
    sub_1D62B7130(v3, v2, v5, v4);
    v12 = v7;
    v13 = v6;
    v14 = v9;
    v15 = v8;
LABEL_8:
    sub_1D62B7130(v12, v13, v14, v15);
    goto LABEL_9;
  }

  sub_1D62B7098(*a2, a2[1], v9, v8);
  sub_1D62B7098(v3, v2, v5, v4);
  sub_1D62B7098(v3, v2, v5, v4);
  sub_1D62B7098(v7, v6, v9, v8);
  if ((sub_1D6353004(v3, v7) & 1) == 0)
  {
    sub_1D62B7130(v3, v2, v5, v4);
    sub_1D62B7130(v7, v6, v9, v8);
    sub_1D62B7130(v7, v6, v9, v8);
    v12 = v3;
    v13 = v2;
    v14 = v5;
    v15 = v4;
    goto LABEL_8;
  }

  v10 = sub_1D6F7F3FC(v2, v5, v4, v6, v9, v8);
  sub_1D62B7130(v3, v2, v5, v4);
  sub_1D62B7130(v7, v6, v9, v8);
  sub_1D62B7130(v7, v6, v9, v8);
  sub_1D62B7130(v3, v2, v5, v4);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

unint64_t sub_1D63269AC(uint64_t a1)
{
  result = sub_1D63269D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63269D4()
{
  result = qword_1EC885DB8;
  if (!qword_1EC885DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DB8);
  }

  return result;
}

unint64_t sub_1D6326A28(void *a1)
{
  a1[1] = sub_1D5C86E18();
  a1[2] = sub_1D6326A60();
  result = sub_1D6326AB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6326A60()
{
  result = qword_1EDF11868;
  if (!qword_1EDF11868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11868);
  }

  return result;
}

unint64_t sub_1D6326AB4()
{
  result = qword_1EC885DC0;
  if (!qword_1EC885DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DC0);
  }

  return result;
}

uint64_t sub_1D6326B18(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xFFFFFFFFFFFFFFF8 | (4 * (a2 & 1u));
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 24) = v2;
  return result;
}

uint64_t FormatAccessibilityRole.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAccessibilityRole, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatAccessibilityRole, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 == 5)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v10, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D508(2, v10);
    v26 = v10;
  }

  else if (v19 == 6)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCE80);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D508(3, v6);
    v26 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6438870(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CF28(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CF28(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6326F70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6327048(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D632710C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D63271E0(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x656E6961746E6F63;
  v4 = 0xE700000000000000;
  v5 = 0x746E656D656C65;
  if (*v1 != 2)
  {
    v5 = 0x74756F6B61657262;
    v4 = 0xEF746E656D656C45;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73BB7B0;
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

uint64_t _s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!(v3 >> 6))
  {
    if (v5 >= 0x40)
    {
      goto LABEL_22;
    }

LABEL_6:
    if ((v3 & 1) == 0)
    {
      return (v2 == v4) & ~v5;
    }

    return v5 & 1;
  }

  if (v3 >> 6 != 1)
  {
    v7 = v3 ^ 0x80;
    v8 = v5 & 0xC0;
    if (v2 | v7)
    {
      if (v8 != 128 || v4 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v8 != 128 || v4 != 0)
    {
      goto LABEL_22;
    }

    if (v5 == 128)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if ((v5 & 0xC0) == 0x40)
  {
    goto LABEL_6;
  }

LABEL_22:
  LOBYTE(v5) = 0;
  return v5 & 1;
}

BOOL _s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 - 5) < 2)
  {
    return 0;
  }

  v5 = v3 == 4;
  v6 = v3 == v2;
  if (v2 == 4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1D6327494()
{
  result = qword_1EDF27770;
  if (!qword_1EDF27770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27770);
  }

  return result;
}

unint64_t sub_1D63274E8()
{
  result = qword_1EC885DC8;
  if (!qword_1EC885DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DC8);
  }

  return result;
}

unint64_t sub_1D6327548()
{
  result = qword_1EDF27780;
  if (!qword_1EDF27780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27780);
  }

  return result;
}

unint64_t sub_1D632759C(uint64_t a1)
{
  result = sub_1D63275C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63275C4()
{
  result = qword_1EC885DD0;
  if (!qword_1EC885DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DD0);
  }

  return result;
}

unint64_t sub_1D6327658()
{
  result = qword_1EDF0AFC8;
  if (!qword_1EDF0AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFC8);
  }

  return result;
}

unint64_t sub_1D63276AC()
{
  result = qword_1EC885DD8;
  if (!qword_1EC885DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DD8);
  }

  return result;
}

unint64_t sub_1D6327700(uint64_t a1)
{
  result = sub_1D6327728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6327728()
{
  result = qword_1EC885DE0;
  if (!qword_1EC885DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DE0);
  }

  return result;
}

uint64_t sub_1D63277BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6327810()
{
  result = qword_1EC885DE8;
  if (!qword_1EC885DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatAccessibilityRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D632790C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 4;
  v3 = v1 - 4;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6327928(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatNodeAccessibilityRole(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D632799C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D63279BC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_1D6327A1C()
{
  result = qword_1EC885DF0;
  if (!qword_1EC885DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DF0);
  }

  return result;
}

uint64_t sub_1D6327A70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = [v4 coverImageBackgroundColor];
      if (!v9)
      {
LABEL_13:
        result = swift_allocObject();
        v8 = 29;
        goto LABEL_20;
      }
    }

    else if (v5 == 4)
    {
      v9 = [v4 coverImageTextColor];
      if (!v9)
      {
        result = swift_allocObject();
        v8 = 21;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = [v4 coverImageAccentColor];
      if (!v9)
      {
        result = swift_allocObject();
        v8 = 8;
        goto LABEL_20;
      }
    }

LABEL_17:
    v20 = v9;
    v21 = swift_allocObject();
    [v20 red];
    v23 = v22 * 255.0;
    [v20 green];
    v25 = v24 * 255.0;
    [v20 blue];
    v27 = v26 * 255.0;
    [v20 alpha];
    v29 = v28;

    result = v21;
    *(v21 + 16) = v23;
    *(v21 + 24) = v25;
    v18 = (v21 + 48);
    v19 = 0x6000000000000000;
    *(v21 + 32) = v27;
    *(v21 + 40) = v29;
    goto LABEL_21;
  }

  if (!*v2)
  {
    v9 = [v4 coverImagePrimaryColor];
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v6 = FCIssue.coverImagePrimaryLimitedColor.getter();
    if (!v6)
    {
      result = swift_allocObject();
      v8 = 30;
LABEL_20:
      *(result + 16) = v8;
      *(result + 24) = 0x3FF0000000000000;
      v18 = (result + 32);
      v19 = 0x1000000000000000;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = FCIssue.coverImagePrimaryExtraLimitedColor.getter();
    if (!v6)
    {
      result = swift_allocObject();
      v8 = 31;
      goto LABEL_20;
    }
  }

  v10 = v6;
  sub_1D726353C();
  v30 = v12;
  v31 = v11;
  v14 = v13;
  v16 = v15;

  result = swift_allocObject();
  v17.f64[0] = v31;
  v17.f64[1] = v30;
  *(result + 16) = vmulq_f64(v17, vdupq_n_s64(0x406FE00000000000uLL));
  *(result + 32) = v14 * 255.0;
  *(result + 40) = v16;
  v18 = (result + 48);
  v19 = 0x6000000000000000;
LABEL_21:
  *v18 = 0;
  *a2 = v19 | result;
  return result;
}

double sub_1D6327D04(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D6327E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6328AF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6327E48@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726F6C6F4374;
  v4 = 0x7865547265766F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D73BA410;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001D73BA3E0;
  }

  v5 = 0x80000001D73BA380;
  v6 = 0xD000000000000011;
  v7 = 0x80000001D73BA3A0;
  result = 13;
  v9 = 0xD00000000000001DLL;
  if (v2 == 1)
  {
    v9 = 0xD000000000000018;
  }

  else
  {
    v7 = 0x80000001D73BA3C0;
  }

  if (*v1)
  {
    v6 = v9;
    v5 = v7;
  }

  if (*v1 <= 2u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

uint64_t FormatIssueBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D632807C()
{
  result = qword_1EC885DF8;
  if (!qword_1EC885DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DF8);
  }

  return result;
}

unint64_t sub_1D63280D0(uint64_t a1)
{
  result = sub_1D63280F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63280F8()
{
  result = qword_1EC885E00;
  if (!qword_1EC885E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E00);
  }

  return result;
}

unint64_t sub_1D632818C(void *a1)
{
  a1[1] = sub_1D63281C4();
  a1[2] = sub_1D6328218();
  result = sub_1D632807C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D63281C4()
{
  result = qword_1EDF10458;
  if (!qword_1EDF10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10458);
  }

  return result;
}

unint64_t sub_1D6328218()
{
  result = qword_1EC885E18;
  if (!qword_1EC885E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E18);
  }

  return result;
}

unint64_t sub_1D63282F0()
{
  result = qword_1EC885E30;
  if (!qword_1EC885E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E30);
  }

  return result;
}

unint64_t sub_1D6328344()
{
  result = qword_1EC885E38;
  if (!qword_1EC885E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E38);
  }

  return result;
}

uint64_t sub_1D6328398@<X0>(_BYTE *a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = 0x80000001D73D1D20;
      sub_1D6327A70(a2, &v58);
      v26 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v27 = *(v19 + 24);
      *(a3 + v27) = v26;
      v28 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v28 - 8) + 56))(a3 + v27, 0, 1, v28);
      v29 = 0xD000000000000010;
LABEL_20:
      *a3 = v29;
      a3[1] = v5;
      goto LABEL_21;
    }

    if (v4 == 4)
    {
      sub_1D6327A70(a2, &v58);
      v18 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v20 = *(v19 + 24);
      *(a3 + v20) = v18;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
      v22 = xmmword_1D72B9C60;
    }

    else
    {
      sub_1D6327A70(a2, &v58);
      v42 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v43 = *(v19 + 24);
      *(a3 + v43) = v42;
      v44 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v44 - 8) + 56))(a3 + v43, 0, 1, v44);
      v22 = xmmword_1D72B9C50;
    }
  }

  else
  {
    if (*a1)
    {
      if (v4 == 1)
      {
        v5 = 0x80000001D73D1D60;
        v6 = FCIssue.coverImagePrimaryLimitedColor.getter();
        if (v6)
        {
          v7 = v6;
          sub_1D726353C();
          v54 = v9;
          v56 = v8;
          v11 = v10;
          v13 = v12;

          v14 = swift_allocObject();
          v15.f64[0] = v56;
          v15.f64[1] = v54;
          *(v14 + 16) = vmulq_f64(v15, vdupq_n_s64(0x406FE00000000000uLL));
          *(v14 + 32) = v11 * 255.0;
          *(v14 + 40) = v13;
          v16 = (v14 + 48);
          v17 = 0x6000000000000000;
        }

        else
        {
          v14 = swift_allocObject();
          *(v14 + 16) = 30;
          *(v14 + 24) = 0x3FF0000000000000;
          v16 = (v14 + 32);
          v17 = 0x1000000000000000;
        }

        *v16 = 0;
        v45 = v17 | v14;
        v19 = type metadata accessor for FormatInspectionItem(0);
        v46 = *(v19 + 24);
        *(a3 + v46) = v45;
        v47 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v47 - 8) + 56))(a3 + v46, 0, 1, v47);
        v48 = 5;
      }

      else
      {
        v5 = 0x80000001D73D1D40;
        v30 = FCIssue.coverImagePrimaryExtraLimitedColor.getter();
        if (v30)
        {
          v31 = v30;
          sub_1D726353C();
          v55 = v33;
          v57 = v32;
          v35 = v34;
          v37 = v36;

          v38 = swift_allocObject();
          v39.f64[0] = v57;
          v39.f64[1] = v55;
          *(v38 + 16) = vmulq_f64(v39, vdupq_n_s64(0x406FE00000000000uLL));
          *(v38 + 32) = v35 * 255.0;
          *(v38 + 40) = v37;
          v40 = (v38 + 48);
          v41 = 0x6000000000000000;
        }

        else
        {
          v38 = swift_allocObject();
          *(v38 + 16) = 31;
          *(v38 + 24) = 0x3FF0000000000000;
          v40 = (v38 + 32);
          v41 = 0x1000000000000000;
        }

        *v40 = 0;
        v49 = v41 | v38;
        v19 = type metadata accessor for FormatInspectionItem(0);
        v50 = *(v19 + 24);
        *(a3 + v50) = v49;
        v51 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v51 - 8) + 56))(a3 + v50, 0, 1, v51);
        v48 = 11;
      }

      v29 = v48 | 0xD000000000000010;
      goto LABEL_20;
    }

    sub_1D6327A70(a2, &v58);
    v23 = v58;
    v19 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v19 + 24);
    *(a3 + v24) = v23;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a3 + v24, 0, 1, v25);
    v22 = xmmword_1D72B9C70;
  }

  *a3 = v22;
LABEL_21:
  a3[2] = 0;
  a3[3] = 0;
  v52 = a3 + *(v19 + 28);
  *v52 = 0;
  *(v52 + 1) = 0;
  v52[16] = -1;
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
}

double sub_1D63288F8@<D0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v24[5] = a1[5];
  v24[6] = v9;
  v25[0] = v10;
  *(v25 + 9) = *(a1 + 121);
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v24[4] = v11;
  v13 = a1[1];
  v24[0] = *a1;
  v24[1] = v13;
  *&v22[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 6, 0);
  v14 = 0;
  v15 = *&v22[0];
  do
  {
    v21 = byte_1F50F7258[v14 + 32];
    sub_1D6328398(&v21, v24, v8);
    *&v22[0] = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D69972A4((v16 > 1), v17 + 1, 1);
      v15 = *&v22[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    sub_1D5E4F52C(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
  }

  while (v14 != 6);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v15, v22);

  result = *v22;
  v19 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

unint64_t sub_1D6328AF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t FormatOptionsNodeStatementModifier.Integer.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6328BB8()
{
  result = qword_1EC885E40;
  if (!qword_1EC885E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E40);
  }

  return result;
}

unint64_t sub_1D6328C0C(uint64_t a1)
{
  result = sub_1D6328C34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6328C34()
{
  result = qword_1EC885E48;
  if (!qword_1EC885E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E48);
  }

  return result;
}

unint64_t sub_1D6328C88(void *a1)
{
  a1[1] = sub_1D6328CC0();
  a1[2] = sub_1D6328D14();
  result = sub_1D6328BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6328CC0()
{
  result = qword_1EC885E50;
  if (!qword_1EC885E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E50);
  }

  return result;
}

unint64_t sub_1D6328D14()
{
  result = qword_1EC885E58;
  if (!qword_1EC885E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E58);
  }

  return result;
}

uint64_t sub_1D6328DBC(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7CD0];
  v3 = type metadata accessor for FormatTransformData(0);
  if (*(*(a2 + *(v3 + 24)) + 16))
  {

    sub_1D5B886D0(v4);
  }

  if (*(*(a2 + *(v3 + 28)) + 16))
  {

    sub_1D5B886D0(v5);
  }

  sub_1D6328F04(0);
  sub_1D6328F5C();
  v6 = sub_1D72623CC();
  v7 = sub_1D6328FB4(v6, &v9);

  return v7;
}

id sub_1D6328EC8@<X0>(void *a1@<X8>)
{
  result = FormatContentSlotItemObject.Resolved.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D6328F04(uint64_t a1)
{
  if (!qword_1EDF1AF70)
  {
    type metadata accessor for FormatContentSlotItemResolution(255);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AF70);
    }
  }
}

unint64_t sub_1D6328F5C()
{
  result = qword_1EDF1AF60;
  if (!qword_1EDF1AF60)
  {
    sub_1D6328F04(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF60);
  }

  return result;
}

uint64_t sub_1D6328FB4(uint64_t a1, uint64_t *a2)
{
  v62 = a2;
  v3 = type metadata accessor for FormatCustomItem.Resolved(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v54 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v61, v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FormatContentSlotItemResolution(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v53 - v21;
  v60 = *(a1 + 16);
  if (v60)
  {
    v23 = 0;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v64 = *(v20 + 72);
    v57 = v24;
    v58 = a1 + v24;
    v25 = MEMORY[0x1E69E7CC0];
    v59 = v14;
    while (1)
    {
      sub_1D61FE26C(v58 + v64 * v23, v22, type metadata accessor for FormatContentSlotItemResolution);
      v26 = *v62;
      sub_1D61FE26C(v22, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          v41 = v55;
          sub_1D6329620(v14, v55, type metadata accessor for PuzzleStatistic);

          v33 = PuzzleStatistic.identifier.getter();
          v32 = v42;
          v34 = v41;
          v35 = type metadata accessor for PuzzleStatistic;
LABEL_27:
          sub_1D6329688(v34, v35);
          if (!*(v26 + 16))
          {
            goto LABEL_36;
          }

          goto LABEL_28;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v28 = type metadata accessor for FormatCustomItem.Resolved;
        v29 = type metadata accessor for FormatCustomItem.Resolved;
        v30 = v14;
        v31 = v56;
        goto LABEL_13;
      }

      v33 = *v14;
      v32 = v14[1];

      if (!*(v26 + 16))
      {
        goto LABEL_36;
      }

LABEL_28:
      sub_1D7264A0C();
      sub_1D72621EC();
      v43 = sub_1D7264A5C();
      v44 = -1 << *(v26 + 32);
      v45 = v43 & ~v44;
      if ((*(v26 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v26 + 48) + 16 * v45);
          v48 = *v47 == v33 && v47[1] == v32;
          if (v48 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v26 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        sub_1D6329688(v22, type metadata accessor for FormatContentSlotItemResolution);
        goto LABEL_4;
      }

LABEL_36:

      sub_1D6329620(v22, v63, type metadata accessor for FormatContentSlotItemResolution);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997C80(0, *(v25 + 16) + 1, 1);
        v25 = v65;
      }

      v51 = *(v25 + 16);
      v50 = *(v25 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D6997C80((v50 > 1), v51 + 1, 1);
        v25 = v65;
      }

      *(v25 + 16) = v51 + 1;
      sub_1D6329620(v63, v25 + v57 + v51 * v64, type metadata accessor for FormatContentSlotItemResolution);
LABEL_4:
      ++v23;
      v14 = v59;
      if (v23 == v60)
      {
        return v25;
      }
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_20;
      }

LABEL_23:
      v39 = *v14;

      v37 = [v39 identifier];
      v33 = sub_1D726207C();
      v32 = v40;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = type metadata accessor for FormatWebEmbed.Resolved;
        v29 = type metadata accessor for FormatWebEmbed.Resolved;
        v30 = v14;
        v31 = v54;
LABEL_13:
        sub_1D6329620(v30, v31, v28);
        v33 = *v31;
        v32 = v31[1];

        v34 = v31;
        v35 = v29;
        goto LABEL_27;
      }

LABEL_20:
      v36 = *v14;

      v37 = [v36 identifier];
      v33 = sub_1D726207C();
      v32 = v38;
      swift_unknownObjectRelease();
    }

    if (!*(v26 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6329620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6329688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 FeedLayoutSolverOptions.cursorTracking.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

void FeedLayoutSolverOptions.headlineOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  *a1 = v1[17];
  a1[1] = v2;
  a1[2] = v3;
}

void FeedLayoutSolverOptions.categoryOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 21);
  *a1 = *(v1 + 20);
  a1[1] = v2;
}

void FeedLayoutSolverOptions.coverOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 23);
  *a1 = *(v1 + 22);
  a1[1] = v2;
}

unint64_t FeedLayoutSolverOptions.issueStripOptions.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5C07390(v2);
}

uint64_t FeedLayoutSolverOptions.pluginOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 36);

  return sub_1D6329790(v3, a1);
}

uint64_t sub_1D6329790(uint64_t a1, uint64_t a2)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedLayoutSolverOptions.layoutCacheOptions.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5D64C6C(v4, v5);
}

double FeedLayoutSolverOptions.blueprintRunOptions.getter()
{
  type metadata accessor for FeedLayoutSolverOptions(0);

  return result;
}

uint64_t FeedLayoutSolverOptions.adOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedLayoutSolverOptions(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedLayoutSolverOptions.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedLayoutSolverOptions(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

NewsFeed::FeedLayoutSolverOptions::HeadlineOptions __swiftcall FeedLayoutSolverOptions.HeadlineOptions.init(alwaysFillWithExcerpt:alwaysShowAuthor:alwaysHidePublisherLogo:)(Swift::Bool alwaysFillWithExcerpt, Swift::Bool alwaysShowAuthor, Swift::Bool alwaysHidePublisherLogo)
{
  *v3 = alwaysFillWithExcerpt;
  v3[1] = alwaysShowAuthor;
  v3[2] = alwaysHidePublisherLogo;
  result.alwaysFillWithExcerpt = alwaysFillWithExcerpt;
  return result;
}

double FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:traits:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a3;
  v15 = a3[1];
  v16 = *a4;
  v17 = a4[1];
  v18 = *a5;
  v19 = *a7;
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 17) = v11;
  *(a8 + 18) = v12;
  *(a8 + 19) = v13;
  *(a8 + 20) = v14;
  *(a8 + 21) = v15;
  *(a8 + 22) = v16;
  *(a8 + 23) = v17;
  *(a8 + 24) = v18;
  v20 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D5D4BD04(a6, a8 + v20[9]);
  result = 0.0;
  *(a8 + v20[10]) = xmmword_1D7279980;
  *(a8 + v20[11]) = 0;
  *(a8 + v20[13]) = v19;
  v22 = a8 + v20[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

double FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:traits:adOptions:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a1 + 16);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a3;
  v16 = a3[1];
  v17 = *a4;
  v18 = a4[1];
  v19 = *a5;
  v20 = *a7;
  v21 = *a8;
  v22 = *(a8 + 8);
  *a9 = *a1;
  *(a9 + 16) = v11;
  *(a9 + 17) = v12;
  *(a9 + 18) = v13;
  *(a9 + 19) = v14;
  *(a9 + 20) = v15;
  *(a9 + 21) = v16;
  *(a9 + 22) = v17;
  *(a9 + 23) = v18;
  *(a9 + 24) = v19;
  v23 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D5D4BD04(a6, a9 + v23[9]);
  result = 0.0;
  *(a9 + v23[10]) = xmmword_1D7279980;
  *(a9 + v23[11]) = 0;
  *(a9 + v23[13]) = v20;
  v25 = a9 + v23[12];
  *v25 = v21;
  *(v25 + 8) = v22;
  return result;
}

uint64_t FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:adOptions:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v12 = *(a1 + 16);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *a3;
  v17 = a3[1];
  v18 = *a4;
  v19 = a4[1];
  v20 = *a5;
  v21 = *a7;
  v22 = a7[1];
  v23 = *a8;
  v24 = *a10;
  v25 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 16) = v12;
  *(a9 + 17) = v13;
  *(a9 + 18) = v14;
  *(a9 + 19) = v15;
  *(a9 + 20) = v16;
  *(a9 + 21) = v17;
  *(a9 + 22) = v18;
  *(a9 + 23) = v19;
  *(a9 + 24) = v20;
  v26 = type metadata accessor for FeedLayoutSolverOptions(0);
  result = sub_1D5D4BD04(a6, a9 + v26[9]);
  v28 = (a9 + v26[10]);
  *v28 = v21;
  v28[1] = v22;
  *(a9 + v26[11]) = 0;
  *(a9 + v26[13]) = v23;
  v29 = a9 + v26[12];
  *v29 = v24;
  *(v29 + 8) = v25;
  return result;
}

uint64_t FeedLayoutSolverOptions.init(blueprintRunOptions:cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:adOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v18 = *a4;
  v19 = a4[1];
  v25 = a5[1];
  v26 = *a5;
  v24 = *a6;
  v28 = a8[1];
  v29 = *a8;
  v30 = *a10;
  v32 = *a11;
  v31 = *(a11 + 8);
  v20 = type metadata accessor for FeedLayoutSolverOptions(0);
  *(a9 + v20[11]) = a1;
  *a9 = v12;
  *(a9 + 8) = v13;
  *(a9 + 16) = v14;
  *(a9 + 17) = v15;
  *(a9 + 18) = v16;
  *(a9 + 19) = v17;
  *(a9 + 20) = v18;
  *(a9 + 21) = v19;
  *(a9 + 22) = v26;
  *(a9 + 23) = v25;
  *(a9 + 24) = v24;
  result = sub_1D5D4BD04(a7, a9 + v20[9]);
  v22 = (a9 + v20[10]);
  *v22 = v29;
  v22[1] = v28;
  *(a9 + v20[13]) = v30;
  v23 = a9 + v20[12];
  *v23 = v32;
  *(v23 + 8) = v31;
  return result;
}

unint64_t FeedLayoutSolverOptions.IssueStripOptions.separators.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5C07390(v2);
}

uint64_t FeedLayoutSolverOptions.PluginOptions.layoutOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725E23C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedLayoutSolverOptions.LayoutCacheOptions.fastPathKey.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D6329DF0()
{
  result = qword_1EC885E60;
  if (!qword_1EC885E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E60);
  }

  return result;
}

unint64_t sub_1D6329E48()
{
  result = qword_1EC885E68;
  if (!qword_1EC885E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E68);
  }

  return result;
}

unint64_t sub_1D6329EA0()
{
  result = qword_1EC885E70;
  if (!qword_1EC885E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E70);
  }

  return result;
}

unint64_t sub_1D6329EF8()
{
  result = qword_1EC885E78;
  if (!qword_1EC885E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatGrayscaleColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedLayoutSolverOptions.CursorTracking(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1D6329FD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedLayoutSolverOptions.HeadlineOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedLayoutSolverOptions.HeadlineOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayeredMediaViewDisplayState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for LayeredMediaViewDisplayState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D632A2C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D632A31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D632A3A0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = a5 + 32;
  v8 = *(a5 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 40;
    a3(v10);
    v7 = v9;
    if (v5)
    {

      return;
    }
  }
}

void sub_1D632A424(__int128 *a1@<X0>, void (*a2)(__int128 *, uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v20 = *a1;
  v21 = v7;
  v22 = v8;
  v9 = *(a3 + 16);
  if (v9)
  {
    v11 = (a3 + 48);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v17 = *(v11 - 2);
      v18 = v13;
      v19 = v12;
      v14 = v12;
      swift_unknownObjectRetain();
      v15 = v13;
      a2(&v20, &v17);
      v16 = v19;

      swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      v11 += 3;
      if (!--v9)
      {
        v6 = v20;
        v7 = v21;
        v8 = v22;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *a4 = v6;
    *(a4 + 16) = v7;
    *(a4 + 32) = v8;
  }
}

uint64_t sub_1D632A52C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v14 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = (a4 + 48);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v13[0] = *(v8 - 2);
      v13[1] = v9;
      v13[2] = v10;

      a2(&v12, &v14, v13);
      if (v4)
      {
        break;
      }

      v8 += 3;

      v5 = v12;
      v14 = v12;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1D632A5E4@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, void *, uint64_t *)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = sub_1D5B76B10(a1, a4);
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 32);
    do
    {
      v11 = *v10++;
      v13 = v11;

      a2(v12, a4, &v13);

      result = __swift_destroy_boxed_opaque_existential_1(a4);
      if (v4)
      {
        break;
      }

      result = sub_1D5B7C390(v12, a4);
      --v9;
    }

    while (v9);
  }

  return result;
}

id sub_1D632A694(void *a1, void (*a2)(void **__return_ptr, void **, unint64_t *, double), uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v7 = *(a4 + 16);
  v8 = a1;
  if (v7)
  {
    v9 = (a4 + 32);
    while (1)
    {
      v10 = *v9++;
      v14 = v10;
      v11 = sub_1D5ECF0E0(v10);
      a2(&v13, &v15, &v14, v11);
      if (v4)
      {
        break;
      }

      sub_1D5ECF11C(v14);

      v8 = v13;
      v15 = v13;
      if (!--v7)
      {
        return v8;
      }
    }

    sub_1D5ECF11C(v14);
  }

  return v8;
}

uint64_t sub_1D632A750(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for FeedItem(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    (a2)(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        v5 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        a2(&v15, &v16);
      }
    }
  }

  return v5;
}

uint64_t sub_1D632A854(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, unint64_t *, double), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v16 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 32);
    while (1)
    {
      v11 = *v10++;
      v15 = v11;
      v12 = sub_1D5FBABE0(v11);
      a2(&v14, &v16, &v15, v12);
      if (v5)
      {
        break;
      }

      sub_1D5FBAC60(v15);

      v8 = v14;
      v16 = v14;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_1D5FBAC60(v15);
  }

  return v8;
}

void *sub_1D632A918(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v163 = a2;
  v156 = a5;
  v157 = a4;
  v158 = a3;
  v161 = a1;
  v5 = type metadata accessor for FeedItem(0);
  v150 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v164 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v153 = (&v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v151, v11);
  v152 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 systemGrayColor];
  v160 = v13;
  v15 = [v13 lightGrayColor];
  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E69DB958];
  v159 = v16;
  v18 = [v16 systemFontOfSize:12.0 weight:v17];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v155 = vdupq_n_s64(0x4046000000000000uLL);
  *(v20 + 24) = v155;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  *(v20 + 56) = v18;
  *(v20 + 64) = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D6139584;
  *(v21 + 24) = v20;
  *&v167[1] = sub_1D6139588;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  v154 = v167;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_36;
  v22 = _Block_copy(&v166);
  v23 = *(&v167[1] + 1);
  v24 = v14;
  v25 = v18;
  v26 = v15;

  v27 = [v19 imageWithActions_];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_63;
  }

  v26 = v162;
  v162[4] = v27;
  v29 = [v160 lightGrayColor];
  v25 = [v159 systemFontOfSize:12.0 weight:v17];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = v155;
  *(v30 + 40) = 0;
  *(v30 + 48) = 0;
  *(v30 + 56) = v25;
  *(v30 + 64) = v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D61395AC;
  *(v21 + 24) = v30;
  *&v167[1] = sub_1D61395B0;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_16_0;
  v31 = _Block_copy(&v166);
  v23 = v25;
  v32 = v29;

  isEscapingClosureAtFileLocation = [v27 imageWithActions_];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v26[5] = isEscapingClosureAtFileLocation;
  v33 = [v160 lightGrayColor];
  v34 = [v159 systemFontOfSize:12.0 weight:v17];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = 0;
  *(isEscapingClosureAtFileLocation + 24) = vdupq_n_s64(0x4046000000000000uLL);
  *(isEscapingClosureAtFileLocation + 40) = xmmword_1D729E1B0;
  *(isEscapingClosureAtFileLocation + 56) = v34;
  *(isEscapingClosureAtFileLocation + 64) = v33;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D61395AC;
  *(v21 + 24) = isEscapingClosureAtFileLocation;
  *&v167[1] = sub_1D61395B0;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_27_1;
  v36 = _Block_copy(&v166);
  v23 = *(&v167[1] + 1);
  v27 = v34;
  v25 = v33;

  v37 = [v35 imageWithActions_];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    isEscapingClosureAtFileLocation = sub_1D6993B10(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v26 + v21) = isEscapingClosureAtFileLocation;
    goto LABEL_14;
  }

  v38 = MEMORY[0x1E69E7CD0];
  v39 = MEMORY[0x1E69E7CC8];
  v26[6] = v37;
  v26[7] = v38;
  v26[8] = v38;
  v26[9] = v39;
  v26[10] = v38;
  v160 = v26 + 10;
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections) = MEMORY[0x1E69E7CC0];
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages) = v39;
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages) = v39;
  v23 = &unk_1EC885000;
  v40 = (v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  *v40 = 0u;
  v40[1] = 0u;
  *(v40 + 25) = 0u;
  v25 = v161;
  sub_1D6332950(v161, v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);
  v27 = (v25 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v41 = v27[4];
  v42 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v41);
  (*(v42 + 64))(&v166, v41, v42);
  v43 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v44 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v45 = (*(v44 + 16))(v43, v44);
    v47 = v46;
    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_1D6330678(&v166);
    v45 = *v25;
    v47 = v25[1];
  }

  v26[2] = v45;
  v26[3] = v47;
  sub_1D6330700(v158, v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_inventory);
  sub_1D5B68374(v157, &v166);
  type metadata accessor for DebugInspectHeadlineService();
  v48 = swift_allocObject();
  sub_1D5B63F14(&v166, v48 + 16);
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_headlineService) = v48;
  sub_1D5B68374(v156, &v166);
  type metadata accessor for DebugInspectRecipeService();
  v49 = swift_allocObject();
  sub_1D5B63F14(&v166, v49 + 16);
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_recipeService) = v49;
  sub_1D63309B8(v163, v168);
  v50 = v169;
  if (v169)
  {
    v51 = v170;
    v181 = v168[0];
    v182 = v168[1];
    v52 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
    swift_beginAccess();
    v53 = *(v26 + v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v52) = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1D6993B10(0, *(v53 + 2) + 1, 1, v53);
      *(v26 + v52) = v53;
    }

    v56 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v56 >= v55 >> 1)
    {
      v53 = sub_1D6993B10((v55 > 1), v56 + 1, 1, v53);
    }

    *(v53 + 2) = v56 + 1;
    v57 = &v53[48 * v56];
    v58 = v182;
    *(v57 + 2) = v181;
    *(v57 + 3) = v58;
    *(v57 + 8) = v50;
    v57[72] = v51;
    v26 = v162;
    *(v162 + v52) = v53;
    swift_endAccess();
    v25 = v161;
  }

  sub_1D6330C84(v25, v163, &v171);
  v21 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v26 + v21);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = isEscapingClosureAtFileLocation;
  if ((v59 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_14:
  v61 = *(isEscapingClosureAtFileLocation + 16);
  v60 = *(isEscapingClosureAtFileLocation + 24);
  v62 = v163;
  if (v61 >= v60 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_1D6993B10((v60 > 1), v61 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v61 + 1;
  v63 = (isEscapingClosureAtFileLocation + 48 * v61);
  v64 = v171;
  v65 = v172[0];
  *(v63 + 57) = *(v172 + 9);
  v63[2] = v64;
  v63[3] = v65;
  *(v26 + v21) = isEscapingClosureAtFileLocation;
  swift_endAccess();
  v66 = v27[4];
  v67 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v66);
  (*(v67 + 64))(&v179, v66, v67);
  if (*&v180[8])
  {
    sub_1D5B63F14(&v179, &v166);
    sub_1D63312F8(&v166, &v173);
    swift_beginAccess();
    v68 = *(v26 + v21);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v21) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_1D6993B10(0, *(v68 + 2) + 1, 1, v68);
      *(v26 + v21) = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      v68 = sub_1D6993B10((v70 > 1), v71 + 1, 1, v68);
    }

    *(v68 + 2) = v71 + 1;
    v72 = &v68[48 * v71];
    v73 = v173;
    v74 = v174[0];
    *(v72 + 57) = *(v174 + 9);
    *(v72 + 2) = v73;
    *(v72 + 3) = v74;
    *(v26 + v21) = v68;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_1D6330678(&v179);
  }

  v75 = v27[4];
  v76 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v75);
  (*(v76 + 64))(&v166, v75, v76);
  v77 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v78 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v79 = (*(v78 + 40))(v77, v78);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    if (v79)
    {
      sub_1D6331504(v79, &v175);
      swift_beginAccess();
      v80 = *(v26 + v21);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + v21) = v80;
      if ((v81 & 1) == 0)
      {
        v80 = sub_1D6993B10(0, *(v80 + 2) + 1, 1, v80);
        *(v26 + v21) = v80;
      }

      v83 = *(v80 + 2);
      v82 = *(v80 + 3);
      if (v83 >= v82 >> 1)
      {
        v80 = sub_1D6993B10((v82 > 1), v83 + 1, 1, v80);
      }

      *(v80 + 2) = v83 + 1;
      v84 = &v80[48 * v83];
      v85 = v175;
      v86 = v176[0];
      *(v84 + 57) = *(v176 + 9);
      *(v84 + 2) = v85;
      *(v84 + 3) = v86;
      *(v26 + v21) = v80;
      swift_endAccess();

      v62 = v163;
    }
  }

  else
  {
    sub_1D6330678(&v166);
  }

  sub_1D63318B0(v25, v62, &v177);
  swift_beginAccess();
  v87 = *(v26 + v21);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = v87;
  if ((v88 & 1) == 0)
  {
    v87 = sub_1D6993B10(0, *(v87 + 2) + 1, 1, v87);
    *(v26 + v21) = v87;
  }

  v90 = *(v87 + 2);
  v89 = *(v87 + 3);
  if (v90 >= v89 >> 1)
  {
    v87 = sub_1D6993B10((v89 > 1), v90 + 1, 1, v87);
  }

  *(v87 + 2) = v90 + 1;
  v91 = &v87[48 * v90];
  v92 = v177;
  v93 = v178[0];
  *(v91 + 57) = *(v178 + 9);
  *(v91 + 2) = v92;
  *(v91 + 3) = v93;
  *(v26 + v21) = v87;
  swift_endAccess();
  v94 = v27[4];
  v95 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v94);
  (*(v95 + 64))(&v166, v94, v95);
  v96 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v97 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v98 = (*(v97 + 32))(v96, v97);
    if (v98)
    {
      v99 = *(v98 + 16);

      __swift_destroy_boxed_opaque_existential_1(&v166);
      if (v99 >> 62)
      {
        v100 = sub_1D7263BFC();
      }

      else
      {
        v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v100)
      {
        sub_1D6331F7C(v25, &v179);
        v101 = *&v180[16];
        v102 = v180[24];
        v184 = *v180;
        v185 = v179;
        v103 = *v180;
        v183 = *&v180[16];
        v104 = v26 + v23[467];
        v105 = *(v104 + 1);
        v159 = *v104;
        v106 = *(v104 + 2);
        v155.i64[0] = *(v104 + 3);
        v107 = *(v104 + 4);
        *v104 = v179;
        *(v104 + 1) = v103;
        *(v104 + 4) = v101;
        v104[40] = v102;
        v108 = MEMORY[0x1E69E6158];
        v109 = MEMORY[0x1E69E6720];
        sub_1D6332AD4(&v185, &v166, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D5B49EE8);
        sub_1D6332AD4(&v184, &v166, &qword_1EDF43BE0, v108, v109, sub_1D5B49EE8);
        sub_1D6332AD4(&v183, &v166, &unk_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
        v26 = v162;
        sub_1D6332888(v159, v105, v106, v155.i64[0], v107);
        swift_beginAccess();
        v110 = *(v26 + v21);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + v21) = v110;
        if ((v111 & 1) == 0)
        {
          v110 = sub_1D6993B10(0, *(v110 + 2) + 1, 1, v110);
          *(v26 + v21) = v110;
        }

        v113 = *(v110 + 2);
        v112 = *(v110 + 3);
        v25 = v161;
        v62 = v163;
        if (v113 >= v112 >> 1)
        {
          v110 = sub_1D6993B10((v112 > 1), v113 + 1, 1, v110);
        }

        *(v110 + 2) = v113 + 1;
        v114 = &v110[48 * v113];
        v115 = v179;
        v116 = *v180;
        *(v114 + 57) = *&v180[9];
        *(v114 + 2) = v115;
        *(v114 + 3) = v116;
        *(v26 + v21) = v110;
        swift_endAccess();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v166);
    }
  }

  else
  {
    sub_1D6330678(&v166);
  }

  v117 = sub_1D632BCFC(v25);
  swift_beginAccess();
  sub_1D6987C80(v117);
  swift_endAccess();
  sub_1D633212C(v25, &v166);
  swift_beginAccess();
  v118 = *(v26 + v21);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = v118;
  if ((v119 & 1) == 0)
  {
    v118 = sub_1D6993B10(0, *(v118 + 2) + 1, 1, v118);
    *(v26 + v21) = v118;
  }

  v121 = *(v118 + 2);
  v120 = *(v118 + 3);
  if (v121 >= v120 >> 1)
  {
    v118 = sub_1D6993B10((v120 > 1), v121 + 1, 1, v118);
  }

  *(v118 + 2) = v121 + 1;
  v122 = &v118[48 * v121];
  v123 = v166;
  v124 = v167[0];
  *(v122 + 57) = *(v167 + 9);
  *(v122 + 2) = v123;
  *(v122 + 3) = v124;
  *(v26 + v21) = v118;
  swift_endAccess();
  v125 = v152;
  sub_1D6332950(v62, v152, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v157);
    sub_1D6084EA8(v158);
    sub_1D6332768(0);

    v127 = v125;
  }

  else
  {
    sub_1D63327EC(0);

    v128 = v153;
    sub_1D5BDAAA4(v125, v153, type metadata accessor for GroupLayoutBindingContext);
    v129 = v128[4];
    v130 = v128[5];
    __swift_project_boxed_opaque_existential_1(v128 + 1, v129);
    v131 = (*(v130 + 16))(v129, v130);
    MEMORY[0x1EEE9AC00](v131, v132);
    *(&v149 - 2) = v62;
    sub_1D62EE09C(sub_1D6332858, (&v149 - 4), v133);
    v135 = v134;
    v136 = v134[2];
    if (v136)
    {
      v165 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v136, 0);
      v137 = v165;
      v138 = *(v150 + 80);
      v159 = v135;
      v139 = v135 + ((v138 + 32) & ~v138);
      v140 = *(v150 + 72);
      do
      {
        v141 = v164;
        sub_1D6332950(v139, v164, type metadata accessor for FeedItem);
        v142 = FeedItem.debugIdentifier.getter();
        v144 = v143;
        sub_1D6332B48(v141, type metadata accessor for FeedItem);
        v165 = v137;
        v146 = *(v137 + 16);
        v145 = *(v137 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1D5BFC364((v145 > 1), v146 + 1, 1);
          v137 = v165;
        }

        *(v137 + 16) = v146 + 1;
        v147 = v137 + 16 * v146;
        *(v147 + 32) = v142;
        *(v147 + 40) = v144;
        v139 += v140;
        --v136;
      }

      while (v136);

      v25 = v161;
      v26 = v162;
    }

    else
    {

      v137 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D5B87D50(v137);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v157);
    sub_1D6084EA8(v158);
    v62 = v163;
    v127 = v153;
  }

  sub_1D6332B48(v127, type metadata accessor for GroupLayoutBindingContext);
  sub_1D6332B48(v62, type metadata accessor for DebugInspectViewResult);
  sub_1D6332B48(v25, type metadata accessor for DebugGroupLayoutKey);
  return v26;
}

uint64_t sub_1D632BCFC(uint64_t a1)
{
  v84 = type metadata accessor for DebugInspectViewItem(0);
  v2 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  v81 = sub_1D725A3AC();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v10);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7259D1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D7259CFC();
  v76 = *(v77 - 8);
  v18 = MEMORY[0x1EEE9AC00](v77, v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7130], v12, v18);
  v21 = type metadata accessor for DebugGroupLayoutKey(0);
  v22 = *(v21 + 28);
  v82 = a1;
  v23 = v20;
  v75 = a1 + v22;
  sub_1D7259D0C();
  v74 = 0;
  (*(v13 + 8))(v16, v12);
  v24 = v80;
  v83 = v23;
  sub_1D7259CAC();
  v25 = (v82 + *(v21 + 24));
  v26 = v25[4];
  v27 = v25[5];
  __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
  (*(v27 + 32))(v91, v26, v27);
  v87 = v91[0];
  v88 = v91[1];
  v89 = v91[2];
  v90 = v92;
  v28 = GroupLayoutInventory.layouts(column:kind:)(v24, &v87);
  v72 = v28;
  sub_1D5BC6C20(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
  v73 = *(v79 + 8);
  v29 = v73(v24, v81);
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v75;
  *(&v71 - 2) = v75;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v74;
  sub_1D632A3A0(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], sub_1D63328F8, (&v71 - 4), v28);
  v35 = v34;
  v78 = v36;
  MEMORY[0x1EEE9AC00](v34, v36);
  *(&v71 - 2) = v25;
  *(&v71 - 1) = v31;
  sub_1D632A3A0(v32, v32, sub_1D6332914, (&v71 - 4), v35);
  v79 = v37;
  v74 = v33;

  sub_1D5B49474(0, qword_1EDF22AA0, &protocol descriptor for BoundGroupLayoutFactoryType);
  v38 = sub_1D72626AC();

  sub_1D5B49EE8(0, &unk_1EC88EC20, &type metadata for DebugInspectViewSection, MEMORY[0x1E69E6F90]);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1D7273AE0;
  v39 = v80;
  v40 = v83;
  sub_1D7259CAC();
  sub_1D6332A8C(&qword_1EC885ED0, MEMORY[0x1E69D7398], MEMORY[0x1E69D73A0]);
  v41 = v81;
  *&v91[0] = sub_1D72644BC();
  *(&v91[0] + 1) = v42;
  v73(v39, v41);
  MEMORY[0x1DA6F9910](0x206E6D756C6F4320, 0xE900000000000028);
  v43 = *(v72 + 16);

  *&v87 = v43;
  v44 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v44);

  v45 = MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v80 = *(&v91[0] + 1);
  v81 = *&v91[0];
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v71 - 2) = v82;
  sub_1D5ECC468(sub_1D6332930, (&v71 - 4), v38);
  v82 = v47;

  v48 = v78;
  v49 = *(v78 + 16);
  if (v49)
  {
    v86 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v49, 0);
    v50 = v86;
    v51 = v48 + 32;
    do
    {
      sub_1D6332950(v51, v91, sub_1D63329B8);
      sub_1D6332950(v91, &v87, sub_1D63329B8);
      v52 = *(&v89 + 1);
      v53 = v90;
      sub_1D5B63F14(&v87, v85);
      sub_1D5B68374(v85, v9);
      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v87 = 0xD000000000000026;
      *(&v87 + 1) = 0x80000001D73D2000;
      MEMORY[0x1DA6F9910](v52, v53);

      v54 = v87;
      __swift_destroy_boxed_opaque_existential_1(v85);
      sub_1D6332B48(v91, sub_1D63329B8);
      *(v9 + 40) = v54;
      v9[56] = 2;
      swift_storeEnumTagMultiPayload();
      v86 = v50;
      v56 = *(v50 + 16);
      v55 = *(v50 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1D69991E8((v55 > 1), v56 + 1, 1);
        v50 = v86;
      }

      *(v50 + 16) = v56 + 1;
      sub_1D5BDAAA4(v9, v50 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v56, type metadata accessor for DebugInspectViewItem);
      v51 += 56;
      --v49;
    }

    while (v49);

    v40 = v83;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  *&v91[0] = v82;
  sub_1D6987C38(v50);
  v57 = *&v91[0];
  v58 = v79;
  v59 = *(v79 + 16);
  if (v59)
  {
    v82 = *&v91[0];
    v86 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v59, 0);
    v60 = v86;
    v61 = v58 + 32;
    do
    {
      sub_1D6332950(v61, v91, sub_1D63329B8);
      sub_1D6332950(v91, &v87, sub_1D63329B8);
      v62 = *(&v89 + 1);
      v63 = v90;
      sub_1D5B63F14(&v87, v85);
      sub_1D5B68374(v85, v5);
      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v87 = 0xD000000000000020;
      *(&v87 + 1) = 0x80000001D73D2030;
      MEMORY[0x1DA6F9910](v62, v63);

      v64 = v87;
      __swift_destroy_boxed_opaque_existential_1(v85);
      sub_1D6332B48(v91, sub_1D63329B8);
      *(v5 + 40) = v64;
      v5[56] = 2;
      swift_storeEnumTagMultiPayload();
      v86 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D69991E8((v65 > 1), v66 + 1, 1);
        v60 = v86;
      }

      *(v60 + 16) = v66 + 1;
      sub_1D5BDAAA4(v5, v60 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v66, type metadata accessor for DebugInspectViewItem);
      v61 += 56;
      --v59;
    }

    while (v59);

    v40 = v83;
    v57 = v82;
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  *&v91[0] = v57;
  sub_1D6987C38(v60);
  v67 = *&v91[0];
  v68 = v75;
  v69 = v80;
  *(v75 + 32) = v81;
  *(v68 + 40) = v69;
  *(v68 + 48) = 0xD000000000000075;
  *(v68 + 56) = 0x80000001D73D2060;
  *(v68 + 64) = v67;
  *(v68 + 72) = 6;
  (*(v76 + 8))(v40, v77);
  return v68;
}

id *sub_1D632C830()
{

  sub_1D6332B48(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);

  sub_1D6332888(*(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 32));
  sub_1D6084EA8(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_inventory);

  return v0;
}

uint64_t sub_1D632C92C()
{
  sub_1D632C830();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugInspectViewDataSource(uint64_t a1)
{
  result = qword_1EC885EB8;
  if (!qword_1EC885EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D632C9D8(uint64_t a1)
{
  result = type metadata accessor for DebugGroupLayoutKey(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1D632CABC(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v10 = sub_1D725AA4C();
    v12 = v11;
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v9 + 48);
    }

    v14 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages;
    swift_beginAccess();
    v15 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v9 + v14);
    *(v9 + v14) = 0x8000000000000000;
    sub_1D6D7A208(v13, v10, v12, isUniquelyReferenced_nonNull_native);

    *(v9 + v14) = v19;
    swift_endAccess();
    v17 = v15;
    if (!a1)
    {
      v17 = *(v9 + 48);
    }

    v18 = v15;
    a4(v17);
  }

  return result;
}

uint64_t sub_1D632CC18(uint64_t a1, uint64_t a2)
{
  sub_1D5B49EE8(0, &unk_1EC88DC80, &type metadata for GroupLayoutAttributes, MEMORY[0x1E69D6B18]);
  sub_1D5B68374(a2, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D5B63F14(v6, v4 + 24);

  return sub_1D725BABC();
}

uint64_t sub_1D632CCE0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
  v10 = type metadata accessor for DebugGroupLayoutKey(0);
  LOBYTE(v17[0]) = 2;
  sub_1D62EFCE4(0, v17, v8);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 56))(v17, v8, v9 + *(v10 + 28), v11, v12);
  if (v2)
  {
    return sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  }

  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v15 + 32))(v14, v15);
  sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1D632CE78(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v5 = sub_1D726369C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = a1[2];
  v24 = a1[1];
  v25 = v10;
  v23 = *a1;
  v26 = *(a1 + 6);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 56) = a1[2];
  *(v12 + 72) = *(a1 + 6);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D6332BA8;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1D61395B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_37;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  sub_1D6332BB4(&v23, v21);

  v17 = [v11 imageWithActions_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69D88B8], v5);
    v19 = sub_1D72635EC();

    (*(v6 + 8))(v9, v5);

    *v20 = v19;
  }
}

void sub_1D632D154(void *a1, id a2, uint64_t a3)
{
  [a2 setFill];
  v5 = *(a3 + 40);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a3 + 40) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      do
      {
LABEL_9:
        v11 &= v11 - 1;

        [a1 fillRect_];
      }

      while (v11);
      continue;
    }
  }
}

uint64_t sub_1D632D2A0(void **a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = *a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = sub_1D725AA4C();
  v9 = v8;
  v10 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages;
  swift_beginAccess();
  v11 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + v10);
  *(a2 + v10) = 0x8000000000000000;
  sub_1D6D7A208(v11, v7, v9, isUniquelyReferenced_nonNull_native);

  *(a2 + v10) = v14;
  swift_endAccess();
  return a4(v11);
}

double sub_1D632D3A0(uint64_t a1, __n128 a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC9BAD28;
  v3 = sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D725C30C("Failed to layout thumbnail! Error: %@", 37, 2, &dword_1D5B42000, v2, v3, v4);

  return result;
}

void sub_1D632D4F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5)
{
  v93 = a5;
  v94 = a4;
  v99 = a2;
  v100 = type metadata accessor for FeedItem(0);
  v88 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DebugInspectViewItem(0);
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v86 - v17);
  v19 = *a1;
  v20 = a1[2];
  v21 = a1[4];
  v22 = a1[5];
  if (!*(*a1 + 16) && !*(a1[3] + 16))
  {
    swift_beginAccess();
    sub_1D5EC2468(a3, &v107);
    v105 = v108;
    v106 = v107;
    v104 = v109;
    swift_endAccess();
    v84 = MEMORY[0x1E69E6158];
    v85 = MEMORY[0x1E69E6720];
    sub_1D63331DC(&v106, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D5B49EE8);
    sub_1D63331DC(&v105, &qword_1EDF43BE0, v84, v85, sub_1D5B49EE8);
    sub_1D63331DC(&v104, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
    (v94)(MEMORY[0x1E69E7CC0]);
    goto LABEL_32;
  }

  v90 = a1[1];
  v91 = v21;
  *&v107 = v19;

  v24 = &v107;
  sub_1D6986C7C(v23);
  if (__OFADD__(v20, v22))
  {
    __break(1u);
LABEL_35:
    v22 = sub_1D5EC3BA0(v22);
    *(v99 + a3) = v22;
    goto LABEL_16;
  }

  v97 = &v22[v20];
  v89 = v5;
  v98 = v107;
  v25 = v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
  v26 = (v25 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v27 = v26[4];
  v28 = v26[5];
  __swift_project_boxed_opaque_existential_1(v26 + 1, v27);
  (*(v28 + 64))(&v107, v27, v28);
  v29 = *(&v108 + 1);
  v95 = a3;
  v87 = v14;
  if (*(&v108 + 1))
  {
    v30 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
    v31 = (*(v30 + 32))(v29, v30);
    if (v31)
    {
      v32 = *(v31 + 32);

      v33 = __swift_destroy_boxed_opaque_existential_1(&v107);
      v35 = v98;
      goto LABEL_10;
    }

    v33 = __swift_destroy_boxed_opaque_existential_1(&v107);
  }

  else
  {
    v33 = sub_1D6330678(&v107);
  }

  v35 = v98;
  v32 = MEMORY[0x1E69E7CD0];
LABEL_10:
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v86 - 2) = v32;
  *(&v96 + 1) = sub_1D726269C();
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v107 = 0xD000000000000011;
  *(&v107 + 1) = 0x80000001D73D21E0;
  v103 = *(v35 + 16);
  v36 = v103;
  v37 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
  v103 = v97;
  v38 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v92 = *(&v107 + 1);
  v97 = v107;
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000004FLL, 0x80000001D73D2200);
  v103 = *(&v96 + 1);
  v39 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73D2250);
  v40 = *(v32 + 16);

  v103 = v40;
  v41 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v41);

  MEMORY[0x1DA6F9910](0x736D65746920, 0xE600000000000000);
  v96 = v107;
  v24 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    *&v107 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v36, 0);
    v24 = v107;
    v42 = v98 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v43 = *(v88 + 72);
    do
    {
      sub_1D6332950(v42, v10, type metadata accessor for FeedItem);
      v18[3] = v100;
      v18[4] = sub_1D6332A8C(&qword_1EDF34F30, type metadata accessor for FeedItem, &protocol conformance descriptor for FeedItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D5BDAAA4(v10, boxed_opaque_existential_1, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      *&v107 = v24;
      v46 = *(v24 + 2);
      v45 = *(v24 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_1D69991E8((v45 > 1), v46 + 1, 1);
        v24 = v107;
      }

      *(v24 + 2) = v46 + 1;
      sub_1D5BDAAA4(v18, v24 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v46, type metadata accessor for DebugInspectViewItem);
      v42 += v43;
      --v36;
    }

    while (v36);
  }

  v47 = v99;
  v48 = v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection;
  v49 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  v50 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 8);
  v51 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 16);
  v52 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 24);
  v53 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 32);
  v14 = v92;
  *v48 = v97;
  *(v48 + 8) = v14;
  v54 = *(&v96 + 1);
  *(v48 + 16) = v96;
  *(v48 + 24) = v54;
  *(v48 + 32) = v24;
  *(v48 + 40) = 0;

  sub_1D6332888(v49, v50, v51, v52, v53);
  a3 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v22 = *(v47 + a3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + a3) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  v56 = v95;
  if ((v95 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v22 + 2) <= v95)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v57 = &v22[48 * v95];
  *(v57 + 4) = v97;
  *(v57 + 5) = v14;
  v58 = *(&v96 + 1);
  *(v57 + 6) = v96;
  *(v57 + 7) = v58;
  *(v57 + 8) = v24;
  v57[72] = 0;
  *(v99 + a3) = v22;
  swift_endAccess();

  *&v107 = v90;

  sub_1D6985340(v59);
  v60 = v107;
  if (!*(v107 + 16))
  {

LABEL_31:
    (v94)(v98);

LABEL_32:
    sub_1D5B49EE8(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BB1C();
    return;
  }

  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v107 = 0xD000000000000018;
  *(&v107 + 1) = 0x80000001D73D2270;
  v103 = *(v60 + 16);
  v61 = v103;
  v62 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v62);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v64 = *(&v107 + 1);
  v63 = v107;
  if (v61)
  {
    v92 = *(&v107 + 1);
    *&v96 = v107;
    v97 = a3;
    *&v107 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v61, 0);
    v65 = v107;
    *(&v96 + 1) = v60;
    v66 = (v60 + 48);
    v67 = v87;
    do
    {
      v100 = v65;
      v68 = *(v66 - 2);
      v69 = *(v66 - 1);
      v70 = *v66;
      swift_unknownObjectRetain();
      v71 = v69;
      v72 = [v68 itemID];
      v73 = sub_1D726207C();
      v75 = v74;

      *v67 = v73;
      v67[1] = v75;
      [v71 sortingScore];
      v77 = v76;
      v67[5] = MEMORY[0x1E69E63B0];
      v67[6] = MEMORY[0x1E69E6418];

      v65 = v100;
      swift_unknownObjectRelease();
      v67[2] = v77;
      swift_storeEnumTagMultiPayload();
      *&v107 = v65;
      v79 = *(v65 + 16);
      v78 = *(v65 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D69991E8((v78 > 1), v79 + 1, 1);
        v65 = v107;
      }

      v66 += 3;
      *(v65 + 16) = v79 + 1;
      sub_1D5BDAAA4(v67, v65 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v79, type metadata accessor for DebugInspectViewItem);
      --v61;
    }

    while (v61);

    v56 = v95;
    a3 = v97;
    v63 = v96;
    v64 = v92;
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v80 = __OFADD__(v56, 1);
  v81 = v56 + 1;
  if (v80)
  {
    goto LABEL_38;
  }

  v82 = v65;
  v83 = v99;
  swift_beginAccess();
  if (*(*(v83 + a3) + 16) < v81)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v81 & 0x8000000000000000) == 0)
  {
    *&v107 = v63;
    *(&v107 + 1) = v64;
    *&v108 = 0xD000000000000047;
    *(&v108 + 1) = 0x80000001D73D2290;
    v109 = v82;
    v110 = 1;
    sub_1D6C03684(v81, v81, &v107);
    swift_endAccess();
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_1D632E13C(uint64_t a1, uint64_t a2)
{
  v3 = FeedItem.debugIdentifier.getter();
  LOBYTE(a2) = sub_1D5BE240C(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_1D632E180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), __n128 a5)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC9BAD28;
  v9 = sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  v15 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v11 = v16[0];
  v12 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D5B7E2C0();
  *(v10 + 32) = v11;
  sub_1D725C30C("Failed to fetch headlines for scored feed items, error=%@", 57, 2, &dword_1D5B42000, v8, v9, v10, v15);

  swift_beginAccess();
  sub_1D5EC2468(a3, v16);
  v19 = v16[1];
  v20 = v16[0];
  v18 = v17;
  swift_endAccess();
  v13 = MEMORY[0x1E69E6720];
  sub_1D63331DC(&v20, &qword_1EDF43BE0, v12, MEMORY[0x1E69E6720], sub_1D5B49EE8);
  sub_1D63331DC(&v19, &qword_1EDF43BE0, v12, v13, sub_1D5B49EE8);
  sub_1D63331DC(&v18, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
  return a4(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D632E400@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  v18 = v6;
  LOBYTE(v19) = v7;
  v10 = type metadata accessor for DebugGroupLayoutKey(0);
  sub_1D5F59A90(&v18, a2 + *(v10 + 28), v8, v9);
  if (v3)
  {
    v20 = v6;
    v21 = v7;
    v11 = sub_1D6DBA870();
    v13 = v12;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();

    v14 = v18;
    v15 = v19;
    *a3 = v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = 1;
  }

  else
  {
    v18 = v6;
    LOBYTE(v19) = v7;
    *a3 = sub_1D6DBA870();
    *(a3 + 8) = v17;
    *(a3 + 16) = xmmword_1D72BA430;
    *(a3 + 32) = 0;
  }

  type metadata accessor for DebugInspectViewItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D632E574(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  (*(v3 + 64))(v11, v2, v3);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(v5 + 32))(v4, v5);
    if (v6)
    {
      v7 = *(v6 + 16);

      __swift_destroy_boxed_opaque_existential_1(v11);
      if (v7 >> 62)
      {
        v8 = sub_1D7263BFC();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8)
      {
        sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
        type metadata accessor for DebugInspectViewItem(0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D7273AE0;
        swift_storeEnumTagMultiPayload();
        return v9;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    sub_1D6330678(v11);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D632E764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24) + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D725AA4C();
  if (*(v5 + 16))
  {
    sub_1D5B69D90(v6, v7);
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(v8, v9);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D5C15304(v10, v11);
  v12 = 0xE400000000000000;
  v13 = 1701736270;
  v14 = 0xE400000000000000;
  v15 = 1751607624;
  if (v20 != 2)
  {
    v15 = 0x756F72636964754CLL;
    v14 = 0xE900000000000073;
  }

  if (v20)
  {
    v13 = 7827276;
    v12 = 0xE300000000000000;
  }

  if (v20 <= 1u)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v20 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  MEMORY[0x1DA6F9910](v16, v17);

  MEMORY[0x1DA6F9910](10272, 0xE200000000000000);
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0xE000000000000000;
  *(a3 + 56) = 0;
  type metadata accessor for DebugInspectViewItem(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1D632E978(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a3, v12, type metadata accessor for GroupLayoutBindingContext);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 56))(v28, v12, a4, v13, v14);
  if (v4)
  {
    sub_1D6332B48(v12, type metadata accessor for GroupLayoutBindingContext);
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    *&v27[0] = v4;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v16 = *(&v28[0] + 1);
    v15 = *&v28[0];
    sub_1D5B68374(a2, v28);
    *(&v29 + 1) = v15;
    v30 = v16;
    v17 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D6993C98(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1D6993C98((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[7 * v19];
    v21 = v28[0];
    v22 = v28[1];
    v23 = v29;
    v20[10] = v30;
    *(v20 + 3) = v22;
    *(v20 + 4) = v23;
    *(v20 + 2) = v21;
    a1[1] = v17;
  }

  else
  {
    sub_1D5B68374(v28, v27);
    v24 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D5BDB0E4(0, v24[2] + 1, 1, v24);
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1D5BDB0E4((v25 > 1), v26 + 1, 1, v24);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1D6332B48(v12, type metadata accessor for GroupLayoutBindingContext);
    v24[2] = v26 + 1;
    sub_1D5B63F14(v27, &v24[5 * v26 + 4]);
    *a1 = v24;
  }
}

void sub_1D632EC38(void *a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  sub_1D5BEE70C(a3, v7, v8);
  if (v3)
  {
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;
    v22 = v3;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    v9 = v20[0];
    sub_1D5B68374(a2, v20);
    *&v21[8] = v9;
    v10 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D6993C98(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1D6993C98((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[7 * v12];
    v14 = v20[0];
    v15 = v20[1];
    v16 = *v21;
    v13[10] = *&v21[16];
    *(v13 + 3) = v15;
    *(v13 + 4) = v16;
    *(v13 + 2) = v14;
    a1[1] = v10;
  }

  else
  {
    sub_1D5B68374(a2, v20);
    v17 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D5BEEC40(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1D5BEEC40((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    sub_1D5B63F14(v20, &v17[5 * v19 + 4]);
    *a1 = v17;
  }
}

void sub_1D632EE2C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1D5BB1438(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v143 = &v124 - v8;
  sub_1D5BB1438(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v132 = &v124 - v14;
  v131 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v131, v15);
  v125 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v127 = &v124 - v19;
  v130 = type metadata accessor for FeedHeadline(0);
  v20 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v21);
  v129 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB1438(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v5);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v124 - v25;
  v150 = type metadata accessor for FeedItem(0);
  v27 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v28);
  v140 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v148 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v151 = &v124 - v35;
  v155 = type metadata accessor for DebugInspectViewItem(0);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v36);
  v144 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v153 = (&v124 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v168 = &v124 - v43;
  v162 = sub_1D7257A4C();
  v44 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v45);
  v161 = &v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v133 = v47;
  v48 = *(v2 + v47);
  v49 = *(v48 + 16);
  v134 = v2;
  v158 = (v2 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  v135 = 0x80000001D73BB730;
  v163 = "nochrome";
  v160 = (v44 + 8);
  v149 = (v27 + 56);
  v128 = (v20 + 48);

  v50 = 0;
  v164 = -v49;
  v147 = MEMORY[0x1E69E7CC0];
  v145 = v26;
  v159 = v48;
LABEL_2:
  v51 = v50 + 1;
  v52 = 48 * v50;
  while (1)
  {
    if (v164 + v51 == 1)
    {

      *(v134 + v133) = v147;

      return;
    }

    v50 = v51;
    if ((v51 - 1) >= *(v48 + 16))
    {
      break;
    }

    v53 = *(v48 + v52 + 32);
    v170 = *(v48 + v52 + 40);
    v54 = *(v48 + v52 + 48);
    v55 = *(v48 + v52 + 56);
    v56 = *(v48 + v52 + 64);
    v57 = *(v48 + v52 + 72);
    v166 = v53;
    v167 = v54;
    v165 = v57;
    if (v57)
    {
      v58 = sub_1D72646CC();

      if ((v58 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v169 = v55;
    v175[0] = a1;
    v175[1] = a2;
    v59 = v161;
    sub_1D72579DC();
    v60 = sub_1D5BF4D9C();
    v61 = sub_1D7263A4C();
    v63 = v62;
    v64 = v61;
    (*v160)(v59, v162);
    v65 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v65 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      v66 = *(v56 + 16);

      v152 = v66;
      if (v66)
      {
        v141 = v64;
        v67 = 0;
        v146 = MEMORY[0x1E69E7CC0];
        v68 = v145;
        v139 = a2;
        v142 = a1;
        while (1)
        {
          if (v67 >= *(v56 + 16))
          {
            goto LABEL_56;
          }

          v69 = v60;
          v70 = a1;
          v71 = v68;
          v72 = *(v154 + 72);
          v157 = (*(v154 + 80) + 32) & ~*(v154 + 80);
          v156 = v72;
          v73 = v168;
          sub_1D6332950(v56 + v157 + v72 * v67, v168, type metadata accessor for DebugInspectViewItem);
          v74 = v153;
          sub_1D6332950(v73, v153, type metadata accessor for DebugInspectViewItem);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            break;
          }

          sub_1D5B63F14(v74, v175);
          sub_1D5B68374(v175, &v173);
          sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
          v68 = v71;
          v75 = v150;
          v76 = swift_dynamicCast();
          v77 = *v149;
          if ((v76 & 1) == 0)
          {
            v77(v71, 1, 1, v75);
            __swift_destroy_boxed_opaque_existential_1(v175);
            sub_1D63331DC(v71, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D5BB1438);
LABEL_16:
            a1 = v70;
            v60 = v69;
LABEL_17:
            sub_1D6332B48(v168, type metadata accessor for DebugInspectViewItem);
            goto LABEL_18;
          }

          v77(v71, 0, 1, v75);
          v78 = v151;
          sub_1D5BDAAA4(v71, v151, type metadata accessor for FeedItem);
          sub_1D6332950(v78, v148, type metadata accessor for FeedItem);
          v60 = v69;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 3u:
              v89 = v129;
              sub_1D5BDAAA4(v148, v129, type metadata accessor for FeedHeadline);
              goto LABEL_32;
            case 4u:
              v90 = v127;
              sub_1D5BDAAA4(v148, v127, type metadata accessor for FeedWebEmbed);
              v89 = v132;
              sub_1D6332AD4(v90 + *(v131 + 48), v132, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
              v91 = v90;
              v68 = v145;
              sub_1D6332B48(v91, type metadata accessor for FeedWebEmbed);
              if ((*v128)(v89, 1, v130) == 1)
              {
                sub_1D63331DC(v132, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
              }

              else
              {
LABEL_32:
                v92 = *(v89 + 40);
                swift_unknownObjectRetain();
                sub_1D6332B48(v89, type metadata accessor for FeedHeadline);
                v93 = [v92 title];
                swift_unknownObjectRelease();
                if (v93)
                {
                  v94 = sub_1D726207C();
                  v96 = v95;
                  v138 = v95;

                  v173 = v94;
                  v174 = v96;
                  v171 = v141;
                  v172 = v63;
                  v97 = sub_1D7258AAC();
                  v98 = v143;
                  (*(*(v97 - 8) + 56))(v143, 1, 1, v97);
                  sub_1D7263A9C();
                  v100 = v99;
                  sub_1D63331DC(v98, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);

                  v87 = v151;
                  if ((v100 & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }
              }

LABEL_24:
              v173 = FeedItem.identifier.getter();
              v174 = v79;
              v171 = v141;
              v172 = v63;
              v80 = sub_1D7258AAC();
              v81 = *(v80 - 8);
              v82 = *(v81 + 56);
              v83 = v143;
              v136 = v80;
              v138 = v82;
              v137 = v81 + 56;
              (v82)(v143, 1, 1);
              sub_1D7263A9C();
              v85 = v84;
              v86 = v83;
              v68 = v145;
              sub_1D63331DC(v86, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);

              v87 = v151;
              if (v85)
              {
                sub_1D6332950(v151, v140, type metadata accessor for FeedItem);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                a2 = v139;
                a1 = v142;
                switch(EnumCaseMultiPayload)
                {
                  case 3:
                    v105 = v129;
                    sub_1D5BDAAA4(v140, v129, type metadata accessor for FeedHeadline);
                    goto LABEL_44;
                  case 4:
                    v106 = v125;
                    sub_1D5BDAAA4(v140, v125, type metadata accessor for FeedWebEmbed);
                    v105 = v126;
                    sub_1D6332AD4(v106 + *(v131 + 48), v126, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
                    v107 = v106;
                    v68 = v145;
                    sub_1D6332B48(v107, type metadata accessor for FeedWebEmbed);
                    if ((*v128)(v105, 1, v130) == 1)
                    {
                      sub_1D63331DC(v126, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
LABEL_27:
                      sub_1D6332B48(v151, type metadata accessor for FeedItem);
                      __swift_destroy_boxed_opaque_existential_1(v175);
                      goto LABEL_17;
                    }

LABEL_44:
                    v108 = *(v105 + 40);
                    swift_unknownObjectRetain();
                    sub_1D6332B48(v105, type metadata accessor for FeedHeadline);
                    v109 = [v108 sourceChannel];
                    a1 = v142;
                    swift_unknownObjectRelease();
                    if (!v109)
                    {
                      goto LABEL_27;
                    }

                    v110 = [v109 name];
                    swift_unknownObjectRelease();
                    v111 = sub_1D726207C();
                    v113 = v112;

                    a1 = v142;
                    v173 = v111;
                    v174 = v113;
                    v171 = v141;
                    v172 = v63;
                    v114 = v143;
                    v138(v143, 1, 1, v136);
                    sub_1D7263A9C();
                    LOBYTE(v111) = v115;
                    v116 = v114;
                    v68 = v145;
                    sub_1D63331DC(v116, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);
                    a2 = v139;

                    sub_1D6332B48(v151, type metadata accessor for FeedItem);
                    __swift_destroy_boxed_opaque_existential_1(v175);
                    if ((v111 & 1) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_17;
                  case 18:
                    goto LABEL_27;
                  default:
                    sub_1D6332B48(v140, type metadata accessor for FeedItem);
                    goto LABEL_27;
                }
              }

LABEL_34:
              sub_1D6332B48(v87, type metadata accessor for FeedItem);
              __swift_destroy_boxed_opaque_existential_1(v175);
LABEL_35:
              sub_1D5BDAAA4(v168, v144, type metadata accessor for DebugInspectViewItem);
              v101 = v146;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v176 = v101;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D69991E8(0, *(v101 + 16) + 1, 1);
                v101 = v176;
              }

              v104 = *(v101 + 16);
              v103 = *(v101 + 24);
              if (v104 >= v103 >> 1)
              {
                sub_1D69991E8((v103 > 1), v104 + 1, 1);
                v101 = v176;
              }

              *(v101 + 16) = v104 + 1;
              v146 = v101;
              sub_1D5BDAAA4(v144, v101 + v157 + v104 * v156, type metadata accessor for DebugInspectViewItem);
              a2 = v139;
              a1 = v142;
              break;
            case 0x12u:
              goto LABEL_24;
            default:
              sub_1D6332B48(v148, type metadata accessor for FeedItem);
              goto LABEL_24;
          }

LABEL_18:
          if (v152 == ++v67)
          {
            goto LABEL_48;
          }
        }

        sub_1D6332B48(v74, type metadata accessor for DebugInspectViewItem);
        v68 = v71;
        goto LABEL_16;
      }

      v146 = MEMORY[0x1E69E7CC0];
LABEL_48:

      v55 = v169;

      v56 = v146;
      v48 = v159;
LABEL_49:
      v119 = v147;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_1D6993B10(0, *(v119 + 2) + 1, 1, v119);
      }

      v121 = *(v119 + 2);
      v120 = *(v119 + 3);
      if (v121 >= v120 >> 1)
      {
        v119 = sub_1D6993B10((v120 > 1), v121 + 1, 1, v119);
      }

      *(v119 + 2) = v121 + 1;
      v147 = v119;
      v122 = &v119[48 * v121];
      v123 = v170;
      *(v122 + 4) = v166;
      *(v122 + 5) = v123;
      *(v122 + 6) = v167;
      *(v122 + 7) = v55;
      *(v122 + 8) = v56;
      v122[72] = v165;
      goto LABEL_2;
    }

    v51 = v50 + 1;
    v52 += 48;

    v56 = v158[4];
    v48 = v159;
    if (v56)
    {
      v165 = *(v158 + 40);
      v117 = v158[2];
      v55 = v158[3];
      v118 = v158[1];
      v166 = *v158;
      v167 = v117;

      v170 = v118;

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1D63303A4(void *a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (a2)
  {
    v14 = a2;
    [v14 setFill];
    [a1 fillRect_];
  }

  if (a6)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v15 setAlignment_];
    [a7 pointSize];
    v17 = (a4 - v16) * 0.5;
    [a7 pointSize];
    v19 = v18;
    v20 = sub_1D726203C();
    sub_1D5BB1438(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7279970;
    v22 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v23 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    *(inited + 40) = a8;
    v24 = *MEMORY[0x1E69DB688];
    *(inited + 64) = v23;
    *(inited + 72) = v24;
    v25 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
    *(inited + 80) = v15;
    v26 = *MEMORY[0x1E69DB648];
    *(inited + 104) = v25;
    *(inited + 112) = v26;
    *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    *(inited + 120) = a7;
    v27 = v22;
    v28 = a8;
    v29 = v24;
    v30 = v15;
    v31 = v26;
    v32 = a7;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1D6332A8C(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
    v33 = sub_1D7261D2C();

    [v20 drawInRect:v33 withAttributes:{0.0, v17, a3, v19}];
  }
}

uint64_t sub_1D6330678(uint64_t a1)
{
  sub_1D5BFB840(0, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D633075C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a1, v12, type metadata accessor for FeedItem);
  sub_1D6332950(a2, v8, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332B48(v12, type metadata accessor for FeedItem);
    sub_1D6332768(0);

LABEL_9:
    v24 = 0;
    goto LABEL_10;
  }

  sub_1D63327EC(0);
  v15 = *&v8[*(v14 + 48) + 40];
  v16 = FeedItem.identifier.getter();
  v18 = v17;
  sub_1D6332B48(v12, type metadata accessor for FeedItem);
  if (!*(v15 + 16))
  {

LABEL_8:

    goto LABEL_9;
  }

  v19 = sub_1D5B69D90(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    goto LABEL_8;
  }

  v22 = *(*(v15 + 56) + 8 * v19);

  v26[1] = v22;
  *&v27.origin.x = FeedItemLayoutAttributes.frame.getter().n128_u64[0];
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 0.0;
  v28.size.height = 0.0;
  v23 = CGRectEqualToRect(v27, v28);

  v24 = !v23;
LABEL_10:
  sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  return v24;
}

uint64_t sub_1D63309B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a1, v8, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D63327EC(0);

LABEL_6:
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v10 = 0;
    v13 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  sub_1D6332768(0);
  v28 = *&v8[*(v9 + 48)];
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  if (!swift_dynamicCast())
  {

    goto LABEL_6;
  }

  v25 = *&v26[5];
  *v26 = v27[0];
  *(&v26[1] + 1) = *(v27 + 9);
  v10 = 0x80000001D73D2140;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v11 = *(type metadata accessor for DebugInspectViewItem(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  v14 = v13 + v12;
  v15 = sub_1D5E4E0CC();
  v17 = v16;
  v18 = sub_1D5C173A4();
  *v14 = v15;
  *(v14 + 8) = v17;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  *(v14 + 32) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1D5E4E3B4(&v25);

  v20 = 7;
  v21 = 0xD000000000000024;
  v22 = 0xE500000000000000;
  v23 = 0x726F727245;
LABEL_7:
  result = sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13;
  *(a2 + 40) = v20;
  return result;
}

double sub_1D6330C84@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v70 = a2;
  v69 = a3;
  v5 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v60 - v17;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v19 = type metadata accessor for DebugInspectViewItem(0);
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7274590;
  v66 = v22;
  v23 = (v22 + v21);
  *v23 = 1701667150;
  v23[1] = 0xE400000000000000;
  v24 = a1[5];
  v25 = a1[6];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v24);
  v26 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(v24, v25);
  v27 = MEMORY[0x1E69E61C8];
  v23[5] = MEMORY[0x1E69E6158];
  v23[6] = v27;
  v23[2] = v26;
  v23[3] = v28;
  v67 = v19;
  swift_storeEnumTagMultiPayload();
  v63 = v20;
  v61 = v23;
  v29 = (v23 + v20);
  *v29 = 1701869908;
  v29[1] = 0xE400000000000000;
  sub_1D6332950(v70, v11, type metadata accessor for DebugInspectViewResult);
  v62 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768(0);
  }

  else
  {
    sub_1D63327EC(0);
  }

  sub_1D5BDAAA4(v11, v18, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5B68374((v18 + 8), v86);
  sub_1D6332B48(v18, type metadata accessor for GroupLayoutBindingContext);
  v31 = v87;
  v32 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  (*(v32 + 32))(&v79, v31, v32);
  v33 = v79;
  v34 = v80;
  v36 = v81;
  v35 = v82;
  v38 = v83;
  v37 = v84;
  v39 = v85;
  v72 = v79;
  v73 = v80;
  v74 = v81;
  v75 = v82;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v40 = FeedGroupKind.description.getter();
  v42 = v41;
  v29[5] = MEMORY[0x1E69E6158];
  v29[6] = MEMORY[0x1E69E61C8];
  sub_1D5BC6C20(v33, v34, v36, v35, v38, v37, v39);
  v29[2] = v40;
  v29[3] = v42;
  swift_storeEnumTagMultiPayload();
  v43 = v63;
  v44 = v61;
  v45 = v61 + 2 * v63;
  strcpy(v45, "Layout order");
  v45[13] = 0;
  *(v45 + 7) = -5120;
  v46 = v65;
  sub_1D6332950(v70, v65, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768(0);
  }

  else
  {
    sub_1D63327EC(0);
  }

  v48 = v46;
  v49 = v64;
  sub_1D5BDAAA4(v48, v64, type metadata accessor for GroupLayoutBindingContext);
  v50 = *v49;
  sub_1D6332B48(v49, type metadata accessor for GroupLayoutBindingContext);
  v51 = 0x80000001D73D2120;
  v52 = 0x614C206C61656449;
  if (v50)
  {
    v52 = 0xD000000000000010;
  }

  *(v45 + 5) = MEMORY[0x1E69E6158];
  *(v45 + 6) = MEMORY[0x1E69E61C8];
  if (!v50)
  {
    v51 = 0xEC00000074756F79;
  }

  *(v45 + 2) = v52;
  *(v45 + 3) = v51;
  swift_storeEnumTagMultiPayload();
  v53 = (v44 + 3 * v43);
  *v53 = 0x797469726F697250;
  v53[1] = 0xE800000000000000;
  v54 = v68[5];
  v55 = v68[6];
  __swift_project_boxed_opaque_existential_1(v68 + 2, v54);
  (*(v55 + 32))(&v71, v54, v55);
  if (v71 > 1u)
  {
    if (v71 == 2)
    {
      v56 = 0xE400000000000000;
      v57 = 1751607624;
    }

    else
    {
      v56 = 0xE900000000000073;
      v57 = 0x756F72636964754CLL;
    }
  }

  else if (v71)
  {
    v56 = 0xE300000000000000;
    v57 = 7827276;
  }

  else
  {
    v56 = 0xE400000000000000;
    v57 = 1701736270;
  }

  v53[5] = MEMORY[0x1E69E6158];
  v53[6] = MEMORY[0x1E69E61C8];
  v53[2] = v57;
  v53[3] = v56;
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v86);
  *&result = 0x74756F79614CLL;
  v59 = v69;
  *v69 = xmmword_1D72BA440;
  *(v59 + 2) = 0;
  *(v59 + 3) = 0;
  *(v59 + 4) = v66;
  *(v59 + 40) = 5;
  return result;
}

double sub_1D63312F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for DebugInspectViewItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = (v7 + v6);
  *v8 = 1701667150;
  v8[1] = 0xE400000000000000;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = MEMORY[0x1E69E61C8];
  v8[5] = MEMORY[0x1E69E6158];
  v8[6] = v12;
  v8[2] = v11;
  v8[3] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v8 + v5);
  *v14 = 0x656C746954;
  v14[1] = 0xE500000000000000;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 24))(v15, v16);
  if (v18)
  {
    v14[2] = v17;
    v14[3] = v18;
    v19 = MEMORY[0x1E69E61C8];
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
  }

  v14[5] = v20;
  v14[6] = v19;
  swift_storeEnumTagMultiPayload();
  *&result = 0x70756F7247;
  *a2 = xmmword_1D72BA450;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = 2;
  return result;
}

uint64_t sub_1D6331504@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DebugInspectViewItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v31 - v12);
  v38 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 96);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v11;
    if (!v16)
    {
      break;
    }

    v18 = v14;
    v37 = MEMORY[0x1E69E7CC0];
    result = sub_1D69991E8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v17 = v37;
    v32 = v13;
    v33 = a2;
    v31 = a1;
    v36 = v16;
    if (v15)
    {
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v11 = sub_1D7263BFC();
      v20 = v18;
    }

    else
    {
      v20 = v18;
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    a1 = v20 & 0xC000000000000001;
    a2 = v11 & ~(v11 >> 63);
    while (a2 != v13)
    {
      if (a1)
      {
        v21 = MEMORY[0x1DA6FB460](v13);
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_24;
        }
      }

      *v8 = 0x656D656854;
      v8[1] = 0xE500000000000000;
      v8[2] = v21;
      swift_storeEnumTagMultiPayload();
      v37 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      v15 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1D69991E8((v22 > 1), v23 + 1, 1);
        v17 = v37;
      }

      v13 = (v13 + 1);
      *(v17 + 16) = v15;
      v11 = sub_1D5BDAAA4(v8, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for DebugInspectViewItem);
      if (v36 == v13)
      {
        v13 = v32;
        a2 = v33;
        a1 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v28 = v11;
    v29 = v14;
    v30 = sub_1D7263BFC();
    v14 = v29;
    v16 = v30;
    v11 = v28;
  }

LABEL_18:
  sub_1D6987C38(v17);
  v24 = *(a1 + 48);
  *v13 = 0x74756F79614CLL;
  v13[1] = 0xE600000000000000;
  v13[2] = v24;
  swift_storeEnumTagMultiPayload();
  v25 = v38;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1D6993828(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1D6993828((v26 > 1), v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  result = sub_1D5BDAAA4(v13, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for DebugInspectViewItem);
  *a2 = xmmword_1D72BA460;
  *(a2 + 16) = 0xD000000000000071;
  *(a2 + 24) = 0x80000001D73D1EB0;
  *(a2 + 32) = v25;
  *(a2 + 40) = 9;
  return result;
}

void sub_1D63318B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v59 = type metadata accessor for FeedItem(0);
  v51 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DebugInspectViewItem(0);
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v21 = v20[4];
  v22 = v20[5];
  v56 = v20;
  __swift_project_boxed_opaque_existential_1(v20 + 1, v21);
  v23 = *((*(v22 + 16))(v21, v22) + 16);

  v55 = a2;
  sub_1D6332950(a2, v15, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768(0);
  }

  else
  {
    sub_1D63327EC(0);
  }

  sub_1D5BDAAA4(v15, v19, type metadata accessor for GroupLayoutBindingContext);
  v25 = GroupLayoutBindingContext.count.getter();
  sub_1D6332B48(v19, type metadata accessor for GroupLayoutBindingContext);
  if (__OFSUB__(v23, v25))
  {
    __break(1u);
  }

  else
  {
    v26 = v56;
    v27 = v56[4];
    v28 = v56[5];
    v52 = v23 - v25;
    __swift_project_boxed_opaque_existential_1(v56 + 1, v27);
    v29 = (*(v28 + 16))(v27, v28);
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v50 - 2) = v55;
    v53 = sub_1D632A750(0, sub_1D6332A34, (&v50 - 4), v29);

    v61 = 0x2820736D657449;
    v62 = 0xE700000000000000;
    v60 = v23;
    v31 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v31);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v54 = v62;
    v55 = v61;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73D20E0);
    v60 = v52;
    v32 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v32);

    MEMORY[0x1DA6F9910](0x20666F2074756F20, 0xE800000000000000);
    v60 = v23;
    v33 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v33);

    MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73D2100);
    v60 = v53;
    v34 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v34);

    MEMORY[0x1DA6F9910](0x7469206465656620, 0xEC0000002E736D65);
    v35 = v61;
    v53 = v62;
    v36 = v26[4];
    v37 = v26[5];
    __swift_project_boxed_opaque_existential_1(v26 + 1, v36);
    v38 = (*(v37 + 16))(v36, v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      v56 = v35;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1D69991E8(0, v39, 0);
      v40 = v61;
      v41 = *(v51 + 80);
      v52 = v38;
      v42 = v38 + ((v41 + 32) & ~v41);
      v43 = *(v51 + 72);
      do
      {
        sub_1D6332950(v42, v7, type metadata accessor for FeedItem);
        v11[3] = v59;
        v11[4] = sub_1D6332A8C(&qword_1EDF34F30, type metadata accessor for FeedItem, &protocol conformance descriptor for FeedItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
        sub_1D5BDAAA4(v7, boxed_opaque_existential_1, type metadata accessor for FeedItem);
        swift_storeEnumTagMultiPayload();
        v61 = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D69991E8((v45 > 1), v46 + 1, 1);
          v40 = v61;
        }

        *(v40 + 16) = v46 + 1;
        sub_1D5BDAAA4(v11, v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v46, type metadata accessor for DebugInspectViewItem);
        v42 += v43;
        --v39;
      }

      while (v39);

      v35 = v56;
      v47 = v57;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
      v47 = v57;
    }

    v48 = v54;
    *v47 = v55;
    *(v47 + 8) = v48;
    v49 = v53;
    *(v47 + 16) = v35;
    *(v47 + 24) = v49;
    *(v47 + 32) = v40;
    *(v47 + 40) = 4;
  }
}

double sub_1D6331F7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D632E574(a1);
  v5 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v6 = v5[4];
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v6);
  (*(v7 + 64))(&v14, v6, v7);
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    if ((*(v9 + 32))(v8, v9))
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1D6330678(&v14);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000057, 0x80000001D73D1F30);

  v10 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v10);

  MEMORY[0x1DA6F9910](0x736D65746920, 0xE600000000000000);
  v11 = v14;
  v12 = v15;
  result = 3.98475595e252;
  *a2 = xmmword_1D72BA470;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1D633212C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem(0);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DebugGroupLayoutKey(0);
  v11 = *(v45 + 28);
  v12 = sub_1D7259EEC();
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v53[0] = 0xD000000000000017;
  v53[1] = 0x80000001D73BE860;
  v50 = v12;
  v13 = UIContentSizeCategory.description.getter(v12);
  MEMORY[0x1DA6F9910](v13);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v14 = v53[0];
  v44 = v53[1];
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
  v46 = v11;
  sub_1D5F59850(&a1[v11], v15, v16);
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1D7263D4C();
  v18 = *(a1 + 5);
  v17 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v18);
  (*(v17 + 40))(&v55, v18, v17);
  v19 = v55;
  LOBYTE(v18) = v56;
  v53[5] = v55;
  v54 = v56;
  v20 = GroupLayoutContentSizeCategory.description.getter();
  v22 = v21;
  sub_1D5BEEACC(v19, v18);

  v53[0] = v20;
  v53[1] = v22;
  MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73D1F90);
  v23 = v53[1];
  *v10 = v53[0];
  *(v10 + 1) = v23;
  v24 = v44;
  *(v10 + 2) = v14;
  *(v10 + 3) = v24;
  v10[32] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = *(a1 + 5);
  v26 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v25);
  v27 = (*(v26 + 24))(v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v44 - 2) = a1;
  sub_1D5ECC608(sub_1D63328D8, (&v44 - 4), v27);
  v30 = v29;

  v31 = v47;
  sub_1D6332950(&a1[*(v45 + 24)], v47, type metadata accessor for GroupLayoutBindingContext);
  v32 = *(a1 + 5);
  v33 = *(a1 + 6);
  __swift_project_boxed_opaque_existential_1(a1 + 2, v32);
  (*(v33 + 56))(v53, v31, &a1[v46], v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1D6332B48(v31, type metadata accessor for GroupLayoutBindingContext);
  v34 = MEMORY[0x1E69E7CC0];
  v35 = v49;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  sub_1D6332950(v10, v37 + v36, type metadata accessor for DebugInspectViewItem);
  v52 = v37;
  sub_1D6987C38(v30);
  sub_1D6987C38(v34);
  v38 = v52;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1D7263D4C();

  strcpy(v53, "Requirements (");
  HIBYTE(v53[1]) = -18;
  v55 = *(v38 + 16);
  v39 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  v40 = v53[0];
  v41 = v53[1];
  result = sub_1D6332B48(v10, type metadata accessor for DebugInspectViewItem);
  v43 = v51;
  *v51 = v40;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v38;
  *(v43 + 40) = 8;
  return result;
}

void sub_1D6332768(uint64_t a1)
{
  if (!qword_1EC885EC8)
  {
    type metadata accessor for GroupLayoutBindingContext(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885EC8);
    }
  }
}

void sub_1D63327EC(uint64_t a1)
{
  if (!qword_1EC892170)
  {
    type metadata accessor for GroupLayoutBindingContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892170);
    }
  }
}

double sub_1D6332888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D6332950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D63329B8(uint64_t a1)
{
  if (!qword_1EC885ED8)
  {
    sub_1D5B49474(255, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885ED8);
    }
  }
}

BOOL sub_1D6332A34@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v7 = *(v4 + 16);
  v8 = *a1;
  result = sub_1D633075C(a2, v7, a4);
  if (__OFADD__(v8, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v8 + result;
  }

  return result;
}

uint64_t sub_1D6332A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6332AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6332B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6332C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7261ACC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = v8;
    v33 = v5;
    v34 = v4;
    v35 = a1;
    v36 = a2;
    v37 = 0x80000001D73BB730;

    v12 = 0;
    v13 = 72;
    while (v12 < *(v10 + 16))
    {
      v14 = *(v10 + v13);
      if (v14 <= 4 && *(v10 + v13) <= 2u && v14 != 1 && v14 != 2)
      {

LABEL_16:

        sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
        v22 = v32;
        v21 = v33;
        v23 = v34;
        (*(v33 + 104))(v32, *MEMORY[0x1E69E7F88], v34);
        v24 = sub_1D72630CC();
        (*(v21 + 8))(v22, v23);
        v25 = v35;
        v26 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
        sub_1D68D8814(v35 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key);
        sub_1D6E586DC(v25 + v26);
        sub_1D725B91C();

        v27 = sub_1D726308C();
        v28 = swift_allocObject();
        v28[2] = v12;
        v28[3] = sub_1D63331A8;
        v29 = v36;
        v28[4] = v36;
        v37 = type metadata accessor for DebugInspectViewDataSource(0);

        sub_1D725BA9C();

        v30 = sub_1D726308C();
        v31 = swift_allocObject();
        v31[2] = v12;
        v31[3] = sub_1D63331A8;
        v31[4] = v29;

        sub_1D725BADC();

        goto LABEL_17;
      }

      v15 = sub_1D72646CC();

      if (v15)
      {
        goto LABEL_16;
      }

      ++v12;
      v13 += 48;
      if (v11 == v12)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector;
      v18 = Strong;

      *&v18[v17] = sub_1D6C76CB4(v19, MEMORY[0x1E69E7CC0]);

      v20 = [v18 navigationItem];
      [v20 setSearchController_];

      [*&v18[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView] reloadData];
    }

    else
    {
LABEL_17:
    }
  }
}

uint64_t sub_1D63331DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t FormatButtonNodeLayoutAttributes.__allocating_init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  v18 = *a3;
  v19 = *a5;
  v20 = *a7;
  v21 = *(a7 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v18;
  *(result + 40) = a4;
  *(result + 48) = v19;
  *(result + 56) = a6;
  *(result + 64) = v20;
  *(result + 72) = v21;
  *(result + 80) = a8;
  *(result + 88) = a9;
  return result;
}

double FormatButtonNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double FormatButtonNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatButtonNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t FormatButtonNodeLayoutAttributes.name.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatButtonNodeLayoutAttributes.init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = *a3;
  v11 = *a5;
  v12 = *a7;
  v13 = *(a7 + 8);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v10;
  *(v9 + 40) = a4;
  *(v9 + 48) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = v12;
  *(v9 + 72) = v13;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  return v9;
}

uint64_t FormatButtonNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t sub_1D63333EC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 1701667182;
    }

    v6 = 0xD000000000000018;
    if (v1 == 4)
    {
      v6 = 0x696C696269736976;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x676E697A69736572;
    if (v1 != 2)
    {
      v2 = 0x7865646E497ALL;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000019;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D63334F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D63346D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6333518(uint64_t a1)
{
  v2 = sub_1D63339CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6333554(uint64_t a1)
{
  v2 = sub_1D63339CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatButtonNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return v0;
}

uint64_t FormatButtonNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatButtonNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6334064(0, &qword_1EC885EE0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63339CC();
  sub_1D7264B5C();
  v13 = *(v3 + 16);
  v15 = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6334518(&qword_1EDF28600, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D726443C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v15 = 1;
    sub_1D6333A20(0);
    sub_1D63340C8(&qword_1EC885EF8, sub_1D5C65AD4, sub_1D6333AD8, MEMORY[0x1E69E5E38]);
    sub_1D726443C();
    v13 = *(v3 + 32);
    v15 = 2;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v13) = 3;
    sub_1D726442C();
    v13 = *(v3 + 48);
    v15 = 4;
    sub_1D5EB1500(v13);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v13);
    LOBYTE(v13) = 5;
    sub_1D726440C();
    v11 = *(v3 + 72);
    v13 = *(v3 + 64);
    v14 = v11;
    v15 = 6;
    sub_1D5F8F434();
    sub_1D72643BC();
    LOBYTE(v13) = 7;
    sub_1D726437C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D63339CC()
{
  result = qword_1EC885EE8;
  if (!qword_1EC885EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885EE8);
  }

  return result;
}

void sub_1D6333A20(uint64_t a1)
{
  if (!qword_1EC885EF0)
  {
    sub_1D6333A84();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885EF0);
    }
  }
}

unint64_t sub_1D6333A84()
{
  result = qword_1EDF25720;
  if (!qword_1EDF25720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25720);
  }

  return result;
}

unint64_t sub_1D6333AD8()
{
  result = qword_1EC885F00;
  if (!qword_1EC885F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F00);
  }

  return result;
}

uint64_t FormatButtonNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatButtonNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatButtonNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D6334064(0, &qword_1EC885F08, MEMORY[0x1E69E6F48]);
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63339CC();
  v21 = v9;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v17 = a1;
  }

  else
  {
    v10 = v6;
    type metadata accessor for FormatLayoutAttributes();
    v24 = 0;
    sub_1D6334518(&qword_1EDF285F8, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    v11 = v20;
    sub_1D726431C();
    *(v1 + 16) = v22;
    sub_1D6333A20(0);
    v24 = 1;
    sub_1D63340C8(&qword_1EC885F10, sub_1D5C65A80, sub_1D633414C, MEMORY[0x1E69E5E58]);
    sub_1D726431C();
    *(v1 + 24) = v22;
    v24 = 2;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 32) = v22;
    LOBYTE(v22) = 3;
    *(v1 + 40) = sub_1D72642FC();
    v24 = 4;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 48) = v22;
    LOBYTE(v22) = 5;
    *(v1 + 56) = sub_1D72642CC() & 1;
    v24 = 6;
    sub_1D5C6F27C();
    sub_1D726427C();
    v19 = a1;
    v13 = v23;
    *(v1 + 64) = v22;
    *(v1 + 72) = v13;
    LOBYTE(v22) = 7;
    v14 = sub_1D726422C();
    v16 = v15;
    (*(v10 + 8))(v21, v11);
    *(v3 + 80) = v14;
    *(v3 + 88) = v16;
    v17 = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3;
}

void sub_1D6334064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D63339CC();
    v7 = a3(a1, &type metadata for FormatButtonNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D63340C8(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6333A20(255);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D633414C()
{
  result = qword_1EC885F18;
  if (!qword_1EC885F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F18);
  }

  return result;
}

void *sub_1D63341B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatButtonNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6334230@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6334518(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D725A24C();
  v6 = *(v4 + 24);
  v7 = *(v5 + 32);
  v9 = *(v5 + 40);
  v8 = *(v5 + 48);
  v10 = *(v5 + 56);
  v11 = *(v5 + 64);
  v12 = *(v5 + 72);
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  v17 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  *(v15 + 24) = v6;
  *(v15 + 32) = v7;
  *(v15 + 40) = v9;
  *(v15 + 48) = v8;
  *(v15 + 56) = v10;
  *(v15 + 64) = v11;
  *(v15 + 72) = v12;
  *(v15 + 80) = v17;
  *(v15 + 88) = v14;

  sub_1D5EB1500(v8);

  return v15;
}

uint64_t sub_1D6334518(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D63345D0()
{
  result = qword_1EC885F40;
  if (!qword_1EC885F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F40);
  }

  return result;
}

unint64_t sub_1D6334628()
{
  result = qword_1EC885F48;
  if (!qword_1EC885F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F48);
  }

  return result;
}

unint64_t sub_1D6334680()
{
  result = qword_1EC885F50;
  if (!qword_1EC885F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F50);
  }

  return result;
}

uint64_t sub_1D63346D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D73C0400 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *TagFeedHeadlineResult.fetchedFreeRange.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *TagFeedHeadlineResult.fetchedPaidRange.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1D63349DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6334A24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SportsRecordRank.rankContext.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SportsRecordRank.rankDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (qword_1EC87D7E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC885F58;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1D726207C();
  v9 = v8;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5C384A0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v2;
  *(v12 + 80) = v3;

  v15 = sub_1D72620BC();

  return v15;
}

uint64_t static SportsRecordRank.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D6334CD8()
{
  if (*v0)
  {
    return 0x746E6F436B6E6172;
  }

  else
  {
    return 1802396018;
  }
}

void sub_1D6334D14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E6F436B6E6172 && a2 == 0xEB00000000747865)
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

uint64_t sub_1D6334DF4(uint64_t a1)
{
  v2 = sub_1D6335338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6334E30(uint64_t a1)
{
  v2 = sub_1D6335338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRecordRank.encode(to:)(void *a1)
{
  sub_1D633538C(0, &qword_1EC885F60, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6335338();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D726442C();
  if (!v2)
  {
    v13 = 1;
    sub_1D72643FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SportsRecordRank.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D633538C(0, &qword_1EC885F70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6335338();
  sub_1D7264B0C();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D72642FC();
    v17 = 1;
    v13 = sub_1D72642BC();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D63351D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

id sub_1D6335218()
{
  v0 = sub_1D7258AAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1D7258A4C();
  v6 = sub_1D72589DC();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  result = [v5 setNumberStyle_];
  qword_1EC885F58 = v5;
  return result;
}

unint64_t sub_1D6335338()
{
  result = qword_1EC885F68;
  if (!qword_1EC885F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F68);
  }

  return result;
}

void sub_1D633538C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6335338();
    v7 = a3(a1, &type metadata for SportsRecordRank.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6335438()
{
  result = qword_1EC885F78;
  if (!qword_1EC885F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F78);
  }

  return result;
}

unint64_t sub_1D6335490()
{
  result = qword_1EC885F80;
  if (!qword_1EC885F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F80);
  }

  return result;
}

unint64_t sub_1D63354E8()
{
  result = qword_1EC885F88;
  if (!qword_1EC885F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885F88);
  }

  return result;
}

uint64_t FormatHeadlineBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.DateTime, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v28, v25, v29, &off_1F51F6CF8);
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
      sub_1D64250E0(1, v17);
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
      sub_1D64250E0(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCCA8);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64250E0(2, v13);
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
    sub_1D64250E0(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64250E0(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatPercentFillSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6657F24(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6657FB8(0);
  sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8, &unk_1D7321584);
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

      v20 = sub_1D6627E68(0x61746E6563726570, 0xEA00000000006567, 0x676E6963617073, 0xE700000000000000);
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
  sub_1D5DF946C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPercentFillSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v70 - v8);
  sub_1D6658138(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6657FB8(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPercentFillSizing, v19, v21, v16, &type metadata for FormatPercentFillSizing, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
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
  v68 = sub_1D6708858;
  v69 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66581CC(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF03178, sub_1D66581CC, MEMORY[0x1E69E6F60]);
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
  *(&v70 - 4) = sub_1D60565EC;
  *(&v70 - 3) = (&v70 - 6);
  v46 = v83;
  v45 = v84;
  v68 = sub_1D6658260;
  v69 = v31;
  sub_1D5D2BC70(v83, sub_1D60566B0, v47, sub_1D60565EC, (&v70 - 6), v39, v40);
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
    v88 = v77;
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
    v68 = sub_1D6708858;
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
    v68 = sub_1D6708858;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D5DF94C0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v49;
  }

  return sub_1D5D2CFE8(v50, sub_1D6658138);
}

uint64_t FormatProgressPieOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  sub_1D66583C0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6658454(0);
  sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
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

      v20 = sub_1D66125E8();
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

  sub_1D660C130(sub_1D66583C0, &v41, 0.0);
  v17 = v41;
  v35 = xmmword_1D728CF30;
  v41 = xmmword_1D728CF30;
  v42 = 0;
  if (sub_1D726434C())
  {
    v39 = v35;
    v40 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    *&v35 = v17;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    sub_1D5C75A4C(v36, v37, v38);
    v33 = v24;
    v26 = v24;
    v27 = v23;
    v34 = v25;
    sub_1D5D2F2C8(v23, v26, v25);
  }

  else
  {
    *&v35 = v17;
    v27 = 0;
    v33 = 0;
    v34 = 0;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v41 = xmmword_1D7297410;
  v42 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v28 = v39;
  sub_1D660C130(sub_1D66583C0, &v41, 0.0);
  v29 = v41;
  sub_1D660C130(sub_1D66583C0, &v41, 1.0);
  (*(v11 + 8))(v9, v5);
  v30 = v41;
  v31 = v29;
  v32 = v43;
  *v43 = v35;
  v32[1] = v27;
  v32[2] = v33;
  *(v32 + 24) = v34;
  v32[4] = v28;
  v32[5] = v31;
  v32[6] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void FormatProgressPieOptions.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v162 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v164 = &v159 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v172 = &v159 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v173 = &v159 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v159 - v19;
  sub_1D66585D4(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v174 = *(v1 + 8);
  v175 = *(v1 + 16);
  LODWORD(v176) = *(v1 + 24);
  v27 = *(v1 + 40);
  v169 = *(v1 + 32);
  v165 = v27;
  v163 = *(v1 + 48);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D6658454(0);
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatProgressPieOptions, v31, v33, v28, &type metadata for FormatProgressPieOptions, v31, &type metadata for FormatVersions.Dawnburst, v29, v25, v32, &off_1F51F6CF8);
  v34 = qword_1EDF31E80;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCCA8);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  *&v180 = v36;
  v179 = v38;
  v178 = v37 + 16;
  v38(v20);
  v177 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  sub_1D5F3FE24(0);
  v168 = v40;
  inited = swift_initStackObject();
  v167 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v39;
  *(inited + 40) = 0;
  sub_1D633A310(v26, inited);
  LOBYTE(v39) = v42;
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v166 = v43;
  swift_arrayDestroy();
  v171 = v35;
  v170 = v22;
  if (v39)
  {
    sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    *&v161 = v26;
    v47 = &v25[*(v22 + 44)];
    v48 = *v47;
    v49 = *(v47 + 1);
    LOBYTE(v184) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v184;
    *(v50 + 40) = v48;
    *(v50 + 48) = v49;
    sub_1D6658668(0);
    v52 = v51;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);

    v160 = v52;
    v53 = sub_1D72647CC();
    LOBYTE(v184) = 0;
    v54 = v3;
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = v53;
    *(v55 + 40) = v184;
    v56 = &v25[*(v22 + 36)];
    v57 = *(v56 + 3);
    v58 = *(v56 + 4);
    v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v159 - 4) = sub_1D5B4AA6C;
    *(&v159 - 3) = 0;
    v157 = sub_1D66586FC;
    v158 = v50;
    v64 = sub_1D5D2F7A4(v20, sub_1D60566B0, v63, sub_1D60565EC, (&v159 - 6), v57, v58);
    if (v54)
    {
      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v25, sub_1D66585D4);

      return;
    }

    v84 = v64;

    if (v84)
    {
      v184 = 0uLL;
      v185 = 0;
      v181 = v161;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v3 = 0;
      v35 = v171;

      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      v22 = v170;
    }

    else
    {
      sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);

      v3 = 0;
      v22 = v170;
      v35 = v171;
    }
  }

  v44 = v173;
  v179(v173, v180, v35);
  swift_storeEnumTagMultiPayload();
  if (v176)
  {
    v45 = v174;
    v46 = v175;
    sub_1D5C75A4C(v174, v175, 1);

    sub_1D5D2F2C8(v45, v46, 1);
    sub_1D5D2F2C8(0, 0, 0);
  }

  else
  {
    v65 = v174;
    sub_1D5D2F2C8(v174, v175, 0);
    sub_1D5D2F2C8(0, 0, 0);
    if ((v65 & 1) == 0)
    {
      *&v161 = v3;
      sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }
  }

  v66 = &v25[*(v22 + 44)];
  v67 = v44;
  v68 = *v66;
  v69 = *(v66 + 1);
  LOBYTE(v184) = 0;
  v70 = swift_allocObject();
  v161 = xmmword_1D728CF30;
  *(v70 + 16) = xmmword_1D728CF30;
  *(v70 + 32) = v184;
  *(v70 + 40) = v68;
  *(v70 + 48) = v69;
  sub_1D6658668(0);
  v72 = v71;
  sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);

  v159 = v72;
  v73 = sub_1D72647CC();
  LOBYTE(v184) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v161;
  *(v74 + 40) = v184;
  v75 = &v25[*(v22 + 36)];
  v76 = *(v75 + 3);
  v77 = *(v75 + 4);
  v78 = __swift_project_boxed_opaque_existential_1(v75, v76);
  v160 = &v159;
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v159 - 4) = sub_1D5B4AA6C;
  *(&v159 - 3) = 0;
  v157 = sub_1D670885C;
  v158 = v70;
  v83 = sub_1D5D2F7A4(v67, sub_1D615B49C, v82, sub_1D615B4A4, (&v159 - 6), v76, v77);
  if (v3)
  {
    sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2F2C8(v174, v175, v176);
LABEL_22:
    sub_1D5D2CFE8(v25, sub_1D66585D4);
    return;
  }

  v85 = v83;
  v22 = v170;

  if (v85)
  {
    v184 = v161;
    v185 = 0;
    v181 = v174;
    v182 = v175;
    v183 = v176;
    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2F2C8(v181, v182, v183);
    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
    v35 = v171;
    *&v161 = 0;
  }

  else
  {
    *&v161 = 0;
    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2F2C8(v174, v175, v176);
    v35 = v171;
  }

LABEL_19:
  v86 = v172;
  v179(v172, v180, v35);
  swift_storeEnumTagMultiPayload();
  v176 = xmmword_1D7297410;
  v184 = xmmword_1D7297410;
  v185 = 0;
  v87 = v25;
  v88 = &v25[*(v22 + 44)];
  v89 = *v88;
  v90 = v88[1];
  LOBYTE(v181) = 0;
  v91 = swift_allocObject();
  v93 = v91;
  *(v91 + 16) = v176;
  *(v91 + 32) = v181;
  *(v91 + 40) = v89;
  *(v91 + 48) = v90;
  v94 = v22;
  if (v169)
  {
    v175 = &v159;
    v181 = v169;
    MEMORY[0x1EEE9AC00](v91, v92);
    *(&v159 - 4) = sub_1D5B4AA6C;
    *(&v159 - 3) = 0;
    v157 = sub_1D670885C;
    v158 = v93;
    v186 = 0;
    v95 = v90;
    v96 = swift_allocObject();
    *(v96 + 16) = v176;
    *(v96 + 32) = v186;
    *(v96 + 40) = v89;
    *(v96 + 48) = v95;
    sub_1D6658668(0);
    v98 = v97;
    v99 = sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v173 = v98;
    v169 = v99;
    v100 = sub_1D72647CC();
    v186 = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v176;
    *(v101 + 40) = v186;
    v102 = *(v94 + 36);
    *&v176 = v87;
    v103 = &v87[v102];
    v104 = *&v87[v102 + 24];
    v105 = *(v103 + 4);
    v106 = __swift_project_boxed_opaque_existential_1(v103, v104);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    *(&v159 - 4) = sub_1D60565EC;
    *(&v159 - 3) = (&v159 - 6);
    v157 = sub_1D670885C;
    v158 = v96;
    v110 = v161;
    v112 = sub_1D5D2F7A4(v172, sub_1D615B49C, v111, sub_1D615B4A4, (&v159 - 6), v104, v105);
    v113 = v110;
    if (v110)
    {

      v25 = v176;

      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
      goto LABEL_22;
    }

    v114 = v112;
    v174 = v89;
    v115 = v95;

    if (v114)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v25 = v176;
      sub_1D72647EC();
      v35 = v171;
      v90 = v115;

      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
      v25 = v176;
      v35 = v171;
      v90 = v115;
    }
  }

  else
  {
    v174 = v89;

    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

    v113 = v161;
  }

  v116 = v164;
  v179(v164, v180, v35);
  swift_storeEnumTagMultiPayload();
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  v118 = swift_initStackObject();
  *(v118 + 16) = v167;
  *(v118 + 32) = v117;
  *(v118 + 40) = 0;

  sub_1D633A310(v119, v118);
  LOBYTE(v117) = v120;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v117)
  {
    sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v184) = 0;
    v126 = swift_allocObject();
    v176 = xmmword_1D72BAA60;
    *(v126 + 16) = xmmword_1D72BAA60;
    *(v126 + 32) = v184;
    *(v126 + 40) = v174;
    *(v126 + 48) = v90;
    sub_1D6658668(0);
    v128 = v127;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);

    v175 = v128;
    v129 = sub_1D72647CC();
    LOBYTE(v184) = 0;
    v130 = swift_allocObject();
    v173 = v90;
    *(v130 + 16) = v129;
    *(v130 + 24) = v176;
    *(v130 + 40) = v184;
    v131 = &v25[*(v170 + 36)];
    v132 = *(v131 + 3);
    v133 = *(v131 + 4);
    v134 = __swift_project_boxed_opaque_existential_1(v131, v132);
    MEMORY[0x1EEE9AC00](v134, v135);
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v159 - 4) = sub_1D5B4AA6C;
    *(&v159 - 3) = 0;
    v157 = sub_1D670885C;
    v158 = v126;
    v139 = sub_1D5D2F7A4(v116, sub_1D615B49C, v138, sub_1D615B4A4, (&v159 - 6), v132, v133);
    if (v113)
    {
      sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v25, sub_1D66585D4);
      goto LABEL_43;
    }

    v154 = v139;

    if ((v154 & 1) == 0)
    {
      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

      v90 = v173;
      goto LABEL_30;
    }

    v184 = v176;
    v185 = 0;
    v181 = v165;
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();

    sub_1D72647EC();
    v90 = v173;

    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
  }

LABEL_30:
  v121 = v162;
  v179(v162, v180, v171);
  swift_storeEnumTagMultiPayload();
  v122 = swift_allocObject();
  *(v122 + 16) = 0x3FF0000000000000;
  v123 = swift_initStackObject();
  *(v123 + 16) = v167;
  *(v123 + 32) = v122;
  *(v123 + 40) = 0;

  sub_1D633A310(v124, v123);
  LOBYTE(v122) = v125;
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v122 & 1) == 0)
  {
    LOBYTE(v184) = 0;
    v140 = swift_allocObject();
    v180 = xmmword_1D72BAA70;
    *(v140 + 16) = xmmword_1D72BAA70;
    *(v140 + 32) = v184;
    *(v140 + 40) = v174;
    *(v140 + 48) = v90;
    sub_1D6658668(0);
    v142 = v141;
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);

    v179 = v142;
    v143 = sub_1D72647CC();
    LOBYTE(v184) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v180;
    *(v144 + 40) = v184;
    v145 = &v25[*(v170 + 36)];
    v146 = *(v145 + 3);
    v147 = *(v145 + 4);
    v148 = __swift_project_boxed_opaque_existential_1(v145, v146);
    MEMORY[0x1EEE9AC00](v148, v149);
    MEMORY[0x1EEE9AC00](v150, v151);
    *(&v159 - 4) = sub_1D5B4AA6C;
    *(&v159 - 3) = 0;
    v157 = sub_1D670885C;
    v158 = v140;
    v153 = sub_1D5D2F7A4(v121, sub_1D615B49C, v152, sub_1D615B4A4, (&v159 - 6), v146, v147);
    if (v113)
    {
      sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v155 = v153;

      if (v155)
      {
        v184 = v180;
        v185 = 0;
        v181 = v163;
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();

        sub_1D72647EC();
        v156 = v162;

        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v25, sub_1D66585D4);
        goto LABEL_43;
      }

      sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5D2CFE8(v25, sub_1D66585D4);
    goto LABEL_43;
  }

  sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v25, sub_1D66585D4);
LABEL_43:
}

uint64_t FormatProgressViewNodeProgress.encode(to:)(void *a1)
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
  v30 = *(v1 + 16);
  v31 = v15;
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48) | (*(v1 + 50) << 16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeProgress, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatProgressViewNodeProgress, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v20, v14, v21, &off_1F51F6CB8);
  if ((v18 & 0x800000) != 0)
  {
    v37 = BYTE2(v18) & 1;
    v32[0] = v31;
    v32[1] = v30;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = BYTE2(v18) & 1;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C5DD4(1, v32, v6);
    v26 = v6;
  }

  else
  {
    v23 = v31;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C5C08(0, v23, v10);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

void sub_1D6338B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 < 0)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          return;
        }

        v17 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v17 && (sub_1D72646CC() & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v7 < 0)
        {
          return;
        }

        v8 = *(v5 + 16);
        v9 = *(v7 + 16);
        v10 = *(v8 + 16) == *(v9 + 16) && *(v8 + 24) == *(v9 + 24);
        if (!v10 && (sub_1D72646CC() & 1) == 0)
        {
          return;
        }

        v11 = *(v8 + 32);
        v12 = *(v9 + 32);

        if ((sub_1D5E2C734(v11, v12) & 1) == 0 || *(v8 + 40) != *(v9 + 40))
        {

          return;
        }

        swift_beginAccess();
        v13 = *(v5 + 24);
        swift_beginAccess();
        v14 = *(v7 + 24);

        sub_1D6338B08(v13, v14);
        v16 = v15;

        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D6338CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    if (!(v10 >> 6))
    {
      if (v13 >= 0x40)
      {
LABEL_113:
        sub_1D6007830(*(i - 2), *(i - 1), *i);
        goto LABEL_114;
      }

      if (v8 == v11 && v9 == v12)
      {
        sub_1D6007830(*(i - 2), *(i - 1), *i);
        sub_1D6007830(v8, v9, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v8, v9, v13);
        if ((v10 ^ v13))
        {
          return 0;
        }
      }

      else
      {
        v15 = sub_1D72646CC();
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        result = 0;
        if (v15 & 1) == 0 || ((v10 ^ v13))
        {
          return result;
        }
      }

      goto LABEL_8;
    }

    if (v10 >> 6 != 1)
    {
      break;
    }

    if ((v13 & 0xC0) != 0x40)
    {
      goto LABEL_113;
    }

    sub_1D6007830(*(v3 - 2), *(v3 - 1), *v3);
    switch(v9)
    {
      case 0uLL:
        if (v12)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0, v13);
        sub_1D6007830(v11, 0, v13);
        sub_1D6007830(v8, 0, v10);
        sub_1D5CBA0FC(v8, 0);
        sub_1D5CBA0FC(v11, 0);
        sub_1D6007850(v8, 0, v10);
        sub_1D6007850(v11, 0, v13);
        sub_1D6007850(v11, 0, v13);
        sub_1D6007850(v8, 0, v10);
        sub_1D6007850(v11, 0, v13);
        v5 = v8;
        v6 = 0;
        goto LABEL_6;
      case 1uLL:
        if (v12 != 1)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 1uLL, v13);
        sub_1D6007830(v11, 1uLL, v13);
        sub_1D6007830(v8, 1uLL, v10);
        sub_1D5CBA0FC(v8, 1uLL);
        sub_1D5CBA0FC(v11, 1uLL);
        sub_1D6007850(v8, 1uLL, v10);
        sub_1D6007850(v11, 1uLL, v13);
        sub_1D6007850(v11, 1uLL, v13);
        sub_1D6007850(v8, 1uLL, v10);
        sub_1D6007850(v11, 1uLL, v13);
        v5 = v8;
        v6 = 1;
        goto LABEL_6;
      case 2uLL:
        if (v12 != 2)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 2uLL, v13);
        sub_1D6007830(v11, 2uLL, v13);
        sub_1D6007830(v8, 2uLL, v10);
        sub_1D5CBA0FC(v8, 2uLL);
        sub_1D5CBA0FC(v11, 2uLL);
        sub_1D6007850(v8, 2uLL, v10);
        sub_1D6007850(v11, 2uLL, v13);
        sub_1D6007850(v11, 2uLL, v13);
        sub_1D6007850(v8, 2uLL, v10);
        sub_1D6007850(v11, 2uLL, v13);
        v5 = v8;
        v6 = 2;
        goto LABEL_6;
      case 3uLL:
        if (v12 != 3)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 3uLL, v13);
        sub_1D6007830(v11, 3uLL, v13);
        sub_1D6007830(v8, 3uLL, v10);
        sub_1D5CBA0FC(v8, 3uLL);
        sub_1D5CBA0FC(v11, 3uLL);
        sub_1D6007850(v8, 3uLL, v10);
        sub_1D6007850(v11, 3uLL, v13);
        sub_1D6007850(v11, 3uLL, v13);
        sub_1D6007850(v8, 3uLL, v10);
        sub_1D6007850(v11, 3uLL, v13);
        v5 = v8;
        v6 = 3;
        goto LABEL_6;
      case 4uLL:
        if (v12 != 4)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 4uLL, v13);
        sub_1D6007830(v11, 4uLL, v13);
        sub_1D6007830(v8, 4uLL, v10);
        sub_1D5CBA0FC(v8, 4uLL);
        sub_1D5CBA0FC(v11, 4uLL);
        sub_1D6007850(v8, 4uLL, v10);
        sub_1D6007850(v11, 4uLL, v13);
        sub_1D6007850(v11, 4uLL, v13);
        sub_1D6007850(v8, 4uLL, v10);
        sub_1D6007850(v11, 4uLL, v13);
        v5 = v8;
        v6 = 4;
        goto LABEL_6;
      case 5uLL:
        if (v12 != 5)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 5uLL, v13);
        sub_1D6007830(v11, 5uLL, v13);
        sub_1D6007830(v8, 5uLL, v10);
        sub_1D5CBA0FC(v8, 5uLL);
        sub_1D5CBA0FC(v11, 5uLL);
        sub_1D6007850(v8, 5uLL, v10);
        sub_1D6007850(v11, 5uLL, v13);
        sub_1D6007850(v11, 5uLL, v13);
        sub_1D6007850(v8, 5uLL, v10);
        sub_1D6007850(v11, 5uLL, v13);
        v5 = v8;
        v6 = 5;
        goto LABEL_6;
      case 6uLL:
        if (v12 != 6)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 6uLL, v13);
        sub_1D6007830(v11, 6uLL, v13);
        sub_1D6007830(v8, 6uLL, v10);
        sub_1D5CBA0FC(v8, 6uLL);
        sub_1D5CBA0FC(v11, 6uLL);
        sub_1D6007850(v8, 6uLL, v10);
        sub_1D6007850(v11, 6uLL, v13);
        sub_1D6007850(v11, 6uLL, v13);
        sub_1D6007850(v8, 6uLL, v10);
        sub_1D6007850(v11, 6uLL, v13);
        v5 = v8;
        v6 = 6;
        goto LABEL_6;
      case 7uLL:
        if (v12 != 7)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 7uLL, v13);
        sub_1D6007830(v11, 7uLL, v13);
        sub_1D6007830(v8, 7uLL, v10);
        sub_1D5CBA0FC(v8, 7uLL);
        sub_1D5CBA0FC(v11, 7uLL);
        sub_1D6007850(v8, 7uLL, v10);
        sub_1D6007850(v11, 7uLL, v13);
        sub_1D6007850(v11, 7uLL, v13);
        sub_1D6007850(v8, 7uLL, v10);
        sub_1D6007850(v11, 7uLL, v13);
        v5 = v8;
        v6 = 7;
        goto LABEL_6;
      case 8uLL:
        if (v12 != 8)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 8uLL, v13);
        sub_1D6007830(v11, 8uLL, v13);
        sub_1D6007830(v8, 8uLL, v10);
        sub_1D5CBA0FC(v8, 8uLL);
        sub_1D5CBA0FC(v11, 8uLL);
        sub_1D6007850(v8, 8uLL, v10);
        sub_1D6007850(v11, 8uLL, v13);
        sub_1D6007850(v11, 8uLL, v13);
        sub_1D6007850(v8, 8uLL, v10);
        sub_1D6007850(v11, 8uLL, v13);
        v5 = v8;
        v6 = 8;
        goto LABEL_6;
      case 9uLL:
        if (v12 != 9)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 9uLL, v13);
        sub_1D6007830(v11, 9uLL, v13);
        sub_1D6007830(v8, 9uLL, v10);
        sub_1D5CBA0FC(v8, 9uLL);
        sub_1D5CBA0FC(v11, 9uLL);
        sub_1D6007850(v8, 9uLL, v10);
        sub_1D6007850(v11, 9uLL, v13);
        sub_1D6007850(v11, 9uLL, v13);
        sub_1D6007850(v8, 9uLL, v10);
        sub_1D6007850(v11, 9uLL, v13);
        v5 = v8;
        v6 = 9;
        goto LABEL_6;
      case 0xAuLL:
        if (v12 != 10)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xAuLL, v13);
        sub_1D6007830(v11, 0xAuLL, v13);
        sub_1D6007830(v8, 0xAuLL, v10);
        sub_1D5CBA0FC(v8, 0xAuLL);
        sub_1D5CBA0FC(v11, 0xAuLL);
        sub_1D6007850(v8, 0xAuLL, v10);
        sub_1D6007850(v11, 0xAuLL, v13);
        sub_1D6007850(v11, 0xAuLL, v13);
        sub_1D6007850(v8, 0xAuLL, v10);
        sub_1D6007850(v11, 0xAuLL, v13);
        v5 = v8;
        v6 = 10;
        goto LABEL_6;
      case 0xBuLL:
        if (v12 != 11)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xBuLL, v13);
        sub_1D6007830(v11, 0xBuLL, v13);
        sub_1D6007830(v8, 0xBuLL, v10);
        sub_1D5CBA0FC(v8, 0xBuLL);
        sub_1D5CBA0FC(v11, 0xBuLL);
        sub_1D6007850(v8, 0xBuLL, v10);
        sub_1D6007850(v11, 0xBuLL, v13);
        sub_1D6007850(v11, 0xBuLL, v13);
        sub_1D6007850(v8, 0xBuLL, v10);
        sub_1D6007850(v11, 0xBuLL, v13);
        v5 = v8;
        v6 = 11;
        goto LABEL_6;
      case 0xCuLL:
        if (v12 != 12)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xCuLL, v13);
        sub_1D6007830(v11, 0xCuLL, v13);
        sub_1D6007830(v8, 0xCuLL, v10);
        sub_1D5CBA0FC(v8, 0xCuLL);
        sub_1D5CBA0FC(v11, 0xCuLL);
        sub_1D6007850(v8, 0xCuLL, v10);
        sub_1D6007850(v11, 0xCuLL, v13);
        sub_1D6007850(v11, 0xCuLL, v13);
        sub_1D6007850(v8, 0xCuLL, v10);
        sub_1D6007850(v11, 0xCuLL, v13);
        v5 = v8;
        v6 = 12;
        goto LABEL_6;
      case 0xDuLL:
        if (v12 != 13)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xDuLL, v13);
        sub_1D6007830(v11, 0xDuLL, v13);
        sub_1D6007830(v8, 0xDuLL, v10);
        sub_1D5CBA0FC(v8, 0xDuLL);
        sub_1D5CBA0FC(v11, 0xDuLL);
        sub_1D6007850(v8, 0xDuLL, v10);
        sub_1D6007850(v11, 0xDuLL, v13);
        sub_1D6007850(v11, 0xDuLL, v13);
        sub_1D6007850(v8, 0xDuLL, v10);
        sub_1D6007850(v11, 0xDuLL, v13);
        v5 = v8;
        v6 = 13;
        goto LABEL_6;
      case 0xEuLL:
        if (v12 != 14)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xEuLL, v13);
        sub_1D6007830(v11, 0xEuLL, v13);
        sub_1D6007830(v8, 0xEuLL, v10);
        sub_1D5CBA0FC(v8, 0xEuLL);
        sub_1D5CBA0FC(v11, 0xEuLL);
        sub_1D6007850(v8, 0xEuLL, v10);
        sub_1D6007850(v11, 0xEuLL, v13);
        sub_1D6007850(v11, 0xEuLL, v13);
        sub_1D6007850(v8, 0xEuLL, v10);
        sub_1D6007850(v11, 0xEuLL, v13);
        v5 = v8;
        v6 = 14;
        goto LABEL_6;
      case 0xFuLL:
        if (v12 != 15)
        {
          goto LABEL_122;
        }

        sub_1D6007830(v11, 0xFuLL, v13);
        sub_1D6007830(v11, 0xFuLL, v13);
        sub_1D6007830(v8, 0xFuLL, v10);
        sub_1D5CBA0FC(v8, 0xFuLL);
        sub_1D5CBA0FC(v11, 0xFuLL);
        sub_1D6007850(v8, 0xFuLL, v10);
        sub_1D6007850(v11, 0xFuLL, v13);
        sub_1D6007850(v11, 0xFuLL, v13);
        sub_1D6007850(v8, 0xFuLL, v10);
        sub_1D6007850(v11, 0xFuLL, v13);
        v5 = v8;
        v6 = 15;
        goto LABEL_6;
      default:
        sub_1D6007830(v8, v9, v10);
        if (v12 < 0x10)
        {
          sub_1D6007830(v8, v9, v10);
LABEL_122:
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v11, v12, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D5CBA0FC(v8, v9);
          sub_1D5CBA0FC(v11, v12);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v11, v12, v13);
          sub_1D6007850(v11, v12, v13);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v11, v12, v13);
          v18 = v8;
          v19 = v9;
          v20 = v10;
          goto LABEL_115;
        }

        if (v8 == v11 && v9 == v12)
        {
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D6007830(v8, v9, v13);
          sub_1D6007830(v8, v9, v10);
          sub_1D5CBA0FC(v8, v9);
          sub_1D5CBA0FC(v8, v9);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v8, v9, v13);
          sub_1D6007850(v8, v9, v13);
          sub_1D6007850(v8, v9, v10);
          sub_1D6007850(v8, v9, v13);
          v5 = v8;
          v6 = v9;
LABEL_6:
          v7 = v10;
          goto LABEL_7;
        }

        v17 = sub_1D72646CC();
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D6007830(v11, v12, v13);
        sub_1D6007830(v8, v9, v10);
        sub_1D5CBA0FC(v8, v9);
        sub_1D5CBA0FC(v11, v12);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        sub_1D6007850(v11, v12, v13);
        sub_1D6007850(v8, v9, v10);
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        break;
    }

LABEL_8:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (!(v9 | v8) && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80 || v12 | v11 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(0, 0, 0x80u);
    sub_1D6007850(0, 0, 0x80u);
    sub_1D6007850(0, 0, 0x80u);
    v5 = 0;
    goto LABEL_111;
  }

  if (v8 == 1 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 1;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 1;
    if (v11 != 1 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(1, 0, 0x80u);
    sub_1D6007850(1, 0, 0x80u);
    v5 = 1;
    goto LABEL_111;
  }

  if (v8 == 2 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 2;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 2;
    if (v11 != 2 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(2, 0, 0x80u);
    sub_1D6007850(2, 0, 0x80u);
    v5 = 2;
    goto LABEL_111;
  }

  if (v8 == 3 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 3;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 3;
    if (v11 != 3 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(3, 0, 0x80u);
    sub_1D6007850(3, 0, 0x80u);
    v5 = 3;
    goto LABEL_111;
  }

  if (v8 == 4 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 4;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 4;
    if (v11 != 4 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(4, 0, 0x80u);
    sub_1D6007850(4, 0, 0x80u);
    v5 = 4;
    goto LABEL_111;
  }

  if (v8 == 5 && !v9 && v10 == 128)
  {
    if ((v13 & 0xC0) != 0x80)
    {
      v9 = 0;
      v8 = 5;
      goto LABEL_114;
    }

    v9 = 0;
    v8 = 5;
    if (v11 != 5 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(5, 0, 0x80u);
    sub_1D6007850(5, 0, 0x80u);
    v5 = 5;
LABEL_111:
    v6 = 0;
    v7 = 0x80;
LABEL_7:
    sub_1D6007850(v5, v6, v7);
    goto LABEL_8;
  }

  if ((v13 & 0xC0) == 0x80)
  {
    v9 = 0;
    v8 = 6;
    if (v11 != 6 || v12 || v13 != 128)
    {
      goto LABEL_114;
    }

    sub_1D6007830(6, 0, 0x80u);
    sub_1D6007850(6, 0, 0x80u);
    v5 = 6;
    goto LABEL_111;
  }

  v9 = 0;
  v8 = 6;
LABEL_114:
  sub_1D6007830(v11, v12, v13);
  sub_1D6007850(v8, v9, v10);
  v18 = v11;
  v19 = v12;
  v20 = v13;
LABEL_115:
  sub_1D6007850(v18, v19, v20);
  return 0;
}

uint64_t sub_1D6339F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v8 = v6 & 0xF000000000000007;
      if ((~v5 & 0xF000000000000007) != 0)
      {
        if (v8 == 0xF000000000000007)
        {
LABEL_18:

          sub_1D5C84FF4(v5);
          sub_1D5C84FF4(v6);
          return 0;
        }

        v11 = v6;
        v12 = v5;
        sub_1D5CFCFAC(v6);
        sub_1D5CFCFAC(v5);
        sub_1D5CFCFAC(v5);
        sub_1D5CFCFAC(v6);

        sub_1D5CFCFAC(v5);

        sub_1D5CFCFAC(v6);
        v9 = static FormatOptionValue.== infix(_:_:)(&v12, &v11);
        sub_1D5C84FF4(v5);
        sub_1D5C84FF4(v6);
        sub_1D5C84FF4(v6);
        sub_1D5C84FF4(v5);

        sub_1D5C84FF4(v6);

        sub_1D5C84FF4(v5);
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 0xF000000000000007)
        {
          goto LABEL_18;
        }

        sub_1D5C84FF4(v5);
        sub_1D5C84FF4(v6);
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D633A0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v3 = (a2 + 72);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 36);
        v10 = *(v4 + 32);
        v29 = *(v4 - 8);
        v30 = v5;
        v31 = v6;
        v32 = v7;
        v33 = v8;
        v35 = v9;
        v34 = v10;
        v12 = *(v3 - 4);
        v13 = v10 | (v9 << 32);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v17 = *(v3 + 2);
        v18 = *v3;
        v19 = v18 | (v17 << 32);
        v22 = *(v3 - 5);
        v11 = v22;
        v23 = v12;
        v24 = v14;
        v25 = v15;
        v26 = v16;
        v28 = v17;
        v27 = v18;
        sub_1D67084A4(v29, v5, v6, v7, v8, v13);
        sub_1D67084A4(v11, v12, v14, v15, v16, v19);
        v20 = sub_1D7009510(&v29, &v22);
        sub_1D67084F4(v22, v23, v24, v25, v26, v27 | (v28 << 32));
        sub_1D67084F4(v29, v30, v31, v32, v33, v34 | (v35 << 32));
        if ((v20 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 12;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D633A250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v8 = *(v5 + 16) == *(v6 + 16) && *(v5 + 24) == *(v6 + 24);
      if (!v8 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1D633A310(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 16)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(i - 1);
    v8 = *i;
    if (*v3)
    {
      break;
    }

    v11 = *(v3 - 1);
    v12 = 0;
    if (v8)
    {
      sub_1D62B72CC(v5, 0);
      sub_1D62B72CC(v7, 1);
      sub_1D62B72CC(v5, 0);
      sub_1D62B72CC(v7, 1);
      sub_1D62B72CC(v5, 0);

      goto LABEL_16;
    }

    v10 = v7;
    sub_1D62B72CC(v5, 0);
    sub_1D62B72CC(v7, 0);
    sub_1D62B72CC(v5, 0);
    sub_1D62B72CC(v7, 0);
    sub_1D62B72CC(v5, 0);
    v9 = static FormatFloat.== infix(_:_:)(&v11, &v10);

    sub_1D62B72BC(v5, 0);
    sub_1D62B72BC(v7, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_1D62B72BC(v5, v6);
    v3 += 16;
    if (!--v2)
    {
      return;
    }
  }

  if (*i)
  {
    sub_1D62B72CC(*(v3 - 1), 1);
    sub_1D62B72CC(v7, 1);
    if ((0x29282F2A2D2BuLL >> (8 * v5)) != (0x29282F2A2D2BuLL >> (8 * v7)))
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_1D62B72CC(*(v3 - 1), 1);
  sub_1D62B72CC(v7, 0);
  sub_1D62B72CC(v5, 1);
  sub_1D62B72CC(v7, 0);
LABEL_16:
  sub_1D62B72BC(v5, v6);
  sub_1D62B72BC(v7, v6 ^ 1);
  sub_1D62B72BC(v7, v6 ^ 1);
LABEL_17:
  sub_1D62B72BC(v5, v6);
}

void sub_1D633A544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v188 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6B38];
  sub_1D5B5BF78(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v186 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v185 = &v167 - v18;
  sub_1D66F4EB8(0, &qword_1EDF178B0, &qword_1EDF45AC0, v12);
  v192 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v190 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v189 = &v167 - v24;
  v200 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v200, v25);
  v194 = (&v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v195 = (&v167 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v193 = (&v167 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = (&v167 - v35);
  v197 = sub_1D72585BC();
  v37 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v38);
  v196 = &v167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66F4E3C(0);
  v198 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v203 = v44;
  v187 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v191 = &v167 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v201 = &v167 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v204 = &v167 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v167 - v55;
  v205 = type metadata accessor for FormatContentSubgroup(0);
  MEMORY[0x1EEE9AC00](v205, v57);
  v199 = &v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v63 = (&v167 - v62);
  v64 = *(a1 + 16);
  if (v64 != *(a2 + 16) || !v64 || a1 == a2)
  {
    return;
  }

  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = a1 + v65;
  v179 = a2 + v65;
  v177 = (v9 + 48);
  v172 = (v9 + 32);
  v173 = (v9 + 8);
  v67 = 0;
  v175 = (v37 + 32);
  v181 = (v37 + 8);
  v68 = *(v61 + 72);
  v69 = v199;
  v180 = v7;
  v202 = (&v167 - v62);
  v183 = v64;
  v171 = v66;
  v170 = v68;
  while (1)
  {
    v70 = v68 * v67;
    sub_1D6706BB4(v66 + v68 * v67, v63, type metadata accessor for FormatContentSubgroup);
    if (v67 == v183)
    {
      goto LABEL_108;
    }

    v176 = v67;
    sub_1D6706BB4(v179 + v70, v69, type metadata accessor for FormatContentSubgroup);
    v71 = *v63 == *v69 && v63[1] == v69[1];
    if (!v71 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_105;
    }

    v72 = v205[5];
    v73 = v202 + v72;
    v74 = v69 + v72;
    if ((sub_1D6B1A454(v202 + v72, (v69 + v72)) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1D5B5971C(0);
    v76 = *(v75 + 36);
    v77 = *&v73[v76];
    v78 = *&v74[v76];
    v79 = *(v77 + 16);
    if (v79 != *(v78 + 16))
    {
      goto LABEL_105;
    }

    if (v79 && v77 != v78)
    {
      break;
    }

LABEL_62:
    v69 = v199;
    if ((sub_1D6339F3C(*(v202 + v205[6]), *&v199[v205[6]]) & 1) == 0)
    {
      goto LABEL_105;
    }

    if ((sub_1D5BFC390(*(v202 + v205[7]), *(v69 + v205[7])) & 1) == 0)
    {
      goto LABEL_105;
    }

    if ((sub_1D633BEDC(*(v202 + v205[8]), *(v69 + v205[8])) & 1) == 0)
    {
      goto LABEL_105;
    }

    v147 = v205[9];
    v148 = *(v202 + v147);
    v149 = *(v69 + v147);
    v150 = *(v148 + 16);
    if (v150 != *(v149 + 16))
    {
      goto LABEL_105;
    }

    if (v150 && v148 != v149)
    {
      v151 = (v149 + 48);
      v152 = (v148 + 48);
      do
      {
        v153 = *v152;
        v154 = *v151;
        if (*(v152 - 2) == *(v151 - 2) && *(v152 - 1) == *(v151 - 1))
        {
          if (v153 != v154)
          {
            goto LABEL_105;
          }
        }

        else if (sub_1D72646CC() & 1) == 0 || ((v153 ^ v154))
        {
          goto LABEL_105;
        }

        v151 += 24;
        v152 += 24;
      }

      while (--v150);
    }

    if ((static FormatMetadata.== infix(_:_:)((v202 + v205[10]), (v69 + v205[10])) & 1) == 0)
    {
      goto LABEL_105;
    }

    v156 = v205[11];
    v157 = *(v202 + v156);
    v158 = *(v69 + v156);
    v159 = *(v157 + 16);
    if (v159 != *(v158 + 16))
    {
      goto LABEL_105;
    }

    if (v159)
    {
      v160 = v157 == v158;
    }

    else
    {
      v160 = 1;
    }

    if (!v160)
    {
      v161 = (v157 + 32);
      v162 = (v158 + 32);
      while (1)
      {
        v163 = *v161++;
        v207 = v163;
        if (!v159)
        {
          break;
        }

        v206 = *v162;

        v164 = static FormatContentSubgroupFilter.== infix(_:_:)(&v207, &v206);

        if ((v164 & 1) == 0)
        {
          goto LABEL_105;
        }

        ++v162;
        if (!--v159)
        {
          goto LABEL_88;
        }
      }

      __break(1u);
      __break(1u);
LABEL_108:
      __break(1u);
      return;
    }

LABEL_88:
    v63 = v202;
    sub_1D6343C34(*(v202 + v205[12]), *(v69 + v205[12]));
    v166 = v165;
    sub_1D5D2CFE8(v69, type metadata accessor for FormatContentSubgroup);
    sub_1D5D2CFE8(v63, type metadata accessor for FormatContentSubgroup);
    if (v166)
    {
      v67 = v176 + 1;
      v66 = v171;
      v68 = v170;
      if (v176 + 1 != v183)
      {
        continue;
      }
    }

    return;
  }

  v80 = (*(v187 + 80) + 32) & ~*(v187 + 80);
  v81 = v77 + v80;
  v82 = v78 + v80;
  v178 = *(v187 + 72);
  v174 = v36;
  v168 = v43;
  while (1)
  {
    sub_1D6706BB4(v81, v56, sub_1D5C2AB28);
    v184 = v82;
    v85 = v82;
    v86 = v204;
    sub_1D6706BB4(v85, v204, sub_1D5C2AB28);
    v87 = &v43[*(v198 + 48)];
    sub_1D6706BB4(v56, v43, sub_1D5C2AB28);
    sub_1D6706BB4(v86, v87, sub_1D5C2AB28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v83 = swift_getEnumCaseMultiPayload();
      v84 = sub_1D66F4E3C;
      if (v83 != 2)
      {
        goto LABEL_104;
      }

      goto LABEL_17;
    }

    v182 = v81;
    v89 = v191;
    sub_1D6706BB4(v43, v191, sub_1D5C2AB28);
    sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v91 = *(v90 + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D5D2CFE8(v89 + v91, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v89, type metadata accessor for FormatPackage);
LABEL_94:
      v84 = sub_1D66F4E3C;
      goto LABEL_104;
    }

    v92 = v56;
    v93 = v43;
    v94 = v180;
    sub_1D5C8F76C(v87, v180, type metadata accessor for FormatPackage);
    v95 = v195;
    sub_1D5C8F76C(v89 + v91, v195, type metadata accessor for FormatMetadata);
    v96 = v87 + v91;
    v97 = v194;
    sub_1D5C8F76C(v96, v194, type metadata accessor for FormatMetadata);
    v98 = static FormatPackage.== infix(_:_:)(v89, v94);
    sub_1D5D2CFE8(v89, type metadata accessor for FormatPackage);
    if ((v98 & 1) == 0)
    {
      sub_1D5D2CFE8(v97, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v95, type metadata accessor for FormatMetadata);
      sub_1D5D2CFE8(v180, type metadata accessor for FormatPackage);
      v84 = sub_1D5C2AB28;
      v43 = v93;
      v56 = v92;
      goto LABEL_104;
    }

    v99 = *(v95 + 8);
    v100 = v97[1];
    v101 = v95;
    v102 = v97;
    v43 = v93;
    v56 = v92;
    if (v99)
    {
      v103 = v200;
      if (!v100 || (*v101 != *v97 || v99 != v100) && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v103 = v200;
      if (v100)
      {
        goto LABEL_102;
      }
    }

    if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
    {
      goto LABEL_102;
    }

    v117 = *(v103 + 28);
    v118 = v102;
    v119 = *(v192 + 48);
    v120 = MEMORY[0x1E69D6B38];
    v121 = v101 + v117;
    v122 = v190;
    sub_1D5CDE2EC(v121, v190, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    sub_1D5CDE2EC(v118 + v117, v122 + v119, &qword_1EDF45AC0, v120);
    v123 = *v177;
    if ((*v177)(v122, 1, v8) == 1)
    {
      if (v123(v122 + v119, 1, v8) != 1)
      {
        goto LABEL_101;
      }

      sub_1D5D35558(v122, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v102 = v194;
      v101 = v195;
      v125 = v200;
    }

    else
    {
      v126 = v186;
      sub_1D5CDE2EC(v122, v186, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (v123(v122 + v119, 1, v8) == 1)
      {
        v124.n128_f64[0] = (*v173)(v126, v8);
LABEL_101:
        sub_1D66F4424(v122, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v124);
        v102 = v194;
        v101 = v195;
LABEL_102:
        sub_1D5D2CFE8(v102, type metadata accessor for FormatMetadata);
        sub_1D5D2CFE8(v101, type metadata accessor for FormatMetadata);
        sub_1D5D2CFE8(v180, type metadata accessor for FormatPackage);
        goto LABEL_103;
      }

      v127 = v188;
      (*v172)(v188, v122 + v119, v8);
      sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
      v128 = sub_1D7261FBC();
      v129 = v126;
      v130 = *v173;
      (*v173)(v127, v8);
      v130(v129, v8);
      sub_1D5D35558(v122, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v102 = v194;
      v101 = v195;
      v125 = v200;
      if ((v128 & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    if ((sub_1D5C15FFC(*(v101 + v125[8]), *(v102 + v125[8])) & 1) == 0 || (sub_1D5C15FFC(*(v101 + v125[9]), *(v102 + v125[9])) & 1) == 0 || (sub_1D5D3A964(*(v101 + v125[10]), *(v102 + v125[10])) & 1) == 0)
    {
      goto LABEL_102;
    }

    v131 = sub_1D5D3A964(*(v101 + v125[11]), *(v102 + v125[11]));
    sub_1D5D2CFE8(v102, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v101, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v180, type metadata accessor for FormatPackage);
    v84 = sub_1D5C2AB28;
    v36 = v174;
LABEL_60:
    v81 = v182;
    if ((v131 & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_17:
    sub_1D5D2CFE8(v43, sub_1D5C2AB28);
    sub_1D5D2CFE8(v204, sub_1D5C2AB28);
    sub_1D5D2CFE8(v56, sub_1D5C2AB28);
    v82 = v184 + v178;
    v81 += v178;
    if (!--v79)
    {
      goto LABEL_62;
    }
  }

  v182 = v81;
  v104 = v201;
  sub_1D6706BB4(v43, v201, sub_1D5C2AB28);
  sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
  v106 = *(v105 + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D5D2CFE8(v104 + v106, type metadata accessor for FormatMetadata);
    (*v181)(v104, v197);
    goto LABEL_94;
  }

  v107 = v56;
  v108 = v197;
  (*v175)(v196, v87, v197);
  sub_1D5C8F76C(v201 + v106, v36, type metadata accessor for FormatMetadata);
  v109 = v87 + v106;
  v110 = v193;
  sub_1D5C8F76C(v109, v193, type metadata accessor for FormatMetadata);
  v111 = sub_1D72584CC();
  v112 = *v181;
  (*v181)(v201, v108);
  if ((v111 & 1) == 0)
  {
    sub_1D5D2CFE8(v110, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
    v112(v196, v197);
    v84 = sub_1D5C2AB28;
    v56 = v107;
    v43 = v168;
    goto LABEL_104;
  }

  v169 = v112;
  v113 = v36[1];
  v114 = v110[1];
  v115 = v110;
  v56 = v107;
  if (v113)
  {
    v116 = v200;
    v43 = v168;
    if (!v114 || (*v36 != *v110 || v113 != v114) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v116 = v200;
    v43 = v168;
    if (v114)
    {
      goto LABEL_99;
    }
  }

  if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_99;
  }

  v132 = *(v116 + 28);
  v133 = v115;
  v134 = *(v192 + 48);
  v135 = MEMORY[0x1E69D6B38];
  v136 = v36 + v132;
  v137 = v8;
  v138 = v189;
  sub_1D5CDE2EC(v136, v189, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  sub_1D5CDE2EC(v133 + v132, v138 + v134, &qword_1EDF45AC0, v135);
  v139 = *v177;
  if ((*v177)(v138, 1, v137) == 1)
  {
    if (v139(v138 + v134, 1, v137) != 1)
    {
      goto LABEL_98;
    }

    sub_1D5D35558(v138, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v8 = v137;
    v36 = v174;
    v115 = v193;
    v141 = v200;
LABEL_56:
    if ((sub_1D5C15FFC(*(v36 + v141[8]), *(v115 + v141[8])) & 1) == 0 || (sub_1D5C15FFC(*(v36 + v141[9]), *(v115 + v141[9])) & 1) == 0 || (sub_1D5D3A964(*(v36 + v141[10]), *(v115 + v141[10])) & 1) == 0)
    {
      goto LABEL_99;
    }

    v131 = sub_1D5D3A964(*(v36 + v141[11]), *(v115 + v141[11]));
    sub_1D5D2CFE8(v115, type metadata accessor for FormatMetadata);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
    v169(v196, v197);
    v84 = sub_1D5C2AB28;
    goto LABEL_60;
  }

  v142 = v185;
  sub_1D5CDE2EC(v138, v185, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  if (v139(v138 + v134, 1, v137) != 1)
  {
    v143 = v188;
    (*v172)(v188, v138 + v134, v137);
    sub_1D5B58B84(&qword_1EDF178B8, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
    v144 = sub_1D7261FBC();
    v145 = v142;
    v146 = *v173;
    (*v173)(v143, v137);
    v146(v145, v137);
    sub_1D5D35558(v138, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v8 = v137;
    v36 = v174;
    v115 = v193;
    v141 = v200;
    if ((v144 & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_56;
  }

  v140.n128_f64[0] = (*v173)(v142, v137);
LABEL_98:
  sub_1D66F4424(v138, &qword_1EDF178B0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v140);
  v36 = v174;
  v115 = v193;
LABEL_99:
  sub_1D5D2CFE8(v115, type metadata accessor for FormatMetadata);
  sub_1D5D2CFE8(v36, type metadata accessor for FormatMetadata);
  v169(v196, v197);
LABEL_103:
  v84 = sub_1D5C2AB28;
LABEL_104:
  sub_1D5D2CFE8(v43, v84);
  sub_1D5D2CFE8(v204, sub_1D5C2AB28);
  sub_1D5D2CFE8(v56, sub_1D5C2AB28);
  v69 = v199;
LABEL_105:
  sub_1D5D2CFE8(v69, type metadata accessor for FormatContentSubgroup);
  sub_1D5D2CFE8(v202, type metadata accessor for FormatContentSubgroup);
}

uint64_t sub_1D633BBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1D72646CC();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D633BDBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1D72646CC() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}