uint64_t sub_1D6794240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x617461446576696CLL;
  }

  else
  {
    v3 = 0x6144636974617473;
  }

  if (v2)
  {
    v4 = 0xED00006C72556174;
  }

  else
  {
    v4 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v5 = 0x617461446576696CLL;
  }

  else
  {
    v5 = 0x6144636974617473;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C7255;
  }

  else
  {
    v6 = 0xED00006C72556174;
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

uint64_t sub_1D67942FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6794394(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6794418(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67944AC(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D679450C(uint64_t *a1@<X8>)
{
  v2 = 0x6144636974617473;
  if (*v1)
  {
    v2 = 0x617461446576696CLL;
  }

  v3 = 0xED00006C72556174;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6794560()
{
  if (*v0)
  {
    return 0x617461446576696CLL;
  }

  else
  {
    return 0x6144636974617473;
  }
}

void sub_1D67945B0(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6794614(uint64_t a1)
{
  v2 = sub_1D6794E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6794650(uint64_t a1)
{
  v2 = sub_1D6794E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D679468C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6794C74(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t type metadata accessor for SportsDataVisualizationResponseItem(uint64_t a1)
{
  result = qword_1EDF07040;
  if (!qword_1EDF07040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6794728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6794790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67947F0(uint64_t a1)
{
  result = type metadata accessor for SportsDataVisualizationResponseScoreItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D679488C()
{
  result = qword_1EDF07088;
  if (!qword_1EDF07088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07088);
  }

  return result;
}

unint64_t sub_1D67948E0()
{
  result = qword_1EDF07068;
  if (!qword_1EDF07068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07068);
  }

  return result;
}

uint64_t sub_1D6794934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D679499C()
{
  result = qword_1EC88B510;
  if (!qword_1EC88B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B510);
  }

  return result;
}

unint64_t sub_1D6794ACC()
{
  result = qword_1EC88B518;
  if (!qword_1EC88B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B518);
  }

  return result;
}

unint64_t sub_1D6794B24()
{
  result = qword_1EC88B520;
  if (!qword_1EC88B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B520);
  }

  return result;
}

unint64_t sub_1D6794B7C()
{
  result = qword_1EDF07078;
  if (!qword_1EDF07078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07078);
  }

  return result;
}

unint64_t sub_1D6794BD4()
{
  result = qword_1EDF07080;
  if (!qword_1EDF07080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07080);
  }

  return result;
}

unint64_t sub_1D6794C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6794C74(void *a1)
{
  sub_1D6794F28(0, &qword_1EDF03CA8, sub_1D6794E80, &type metadata for SportsDataVisualizationResponseDataSource.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6794E80();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D726422C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6794E80()
{
  result = qword_1EDF15EF8[0];
  if (!qword_1EDF15EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15EF8);
  }

  return result;
}

unint64_t sub_1D6794ED4()
{
  result = qword_1EDF07070;
  if (!qword_1EDF07070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07070);
  }

  return result;
}

void sub_1D6794F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6794FA4()
{
  result = qword_1EC88B530;
  if (!qword_1EC88B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B530);
  }

  return result;
}

unint64_t sub_1D6794FFC()
{
  result = qword_1EDF15EE8;
  if (!qword_1EDF15EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15EE8);
  }

  return result;
}

unint64_t sub_1D6795054()
{
  result = qword_1EDF15EF0;
  if (!qword_1EDF15EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15EF0);
  }

  return result;
}

uint64_t sub_1D67950B8()
{
  v1 = v0[4];
  if (!*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_1D6795488();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;

  return v6;
}

void sub_1D6795150(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a3;
  v36 = a4;
  v32 = a1;
  v33 = a2;
  v34 = a6;
  v7 = type metadata accessor for FormatInspectionItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v31 - v19;
  v21 = *(a5 + 16);
  if (v21)
  {
    v22 = a5 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v18 + 72);
    v37 = v8;
    v24 = (v8 + 48);
    v25 = MEMORY[0x1E69E7CC0];
    v38 = v7;
    do
    {
      sub_1D6795424(v22, v20);
      sub_1D5CAD784(v20, v15, sub_1D5EA74B8);
      if ((*v24)(v15, 1, v7) == 1)
      {
        sub_1D6180C78(v15);
      }

      else
      {
        sub_1D5CAD784(v15, v11, type metadata accessor for FormatInspectionItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D698BAE0(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1D698BAE0((v26 > 1), v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        sub_1D5CAD784(v11, v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, type metadata accessor for FormatInspectionItem);
        v7 = v38;
      }

      v22 += v23;
      --v21;
    }

    while (v21);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v28 = v34;
  v29 = v33;
  *v34 = v32;
  v28[1] = v29;
  v30 = v36;
  v28[2] = v35;
  v28[3] = v30;
  v28[4] = v25;
}

uint64_t sub_1D6795424(uint64_t a1, uint64_t a2)
{
  sub_1D5EA74B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6795488()
{
  if (!qword_1EC88EB30)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EB30);
    }
  }
}

uint64_t FormatFileVersionURIReference.data.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatVersionableValue(0, a1[2], a1[3], a1[4]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t FormatFileVersionURIReference.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for FormatVersionableValue(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t FormatFileVersionURIReference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v35 = type metadata accessor for FormatVersionableValue(0, a2, a3, a4);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v9);
  v34 = &v27 - v10;
  type metadata accessor for FormatFileVersionURIReference.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v39 = sub_1D726435C();
  v33 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v11);
  v13 = &v27 - v12;
  v36 = a3;
  v37 = a4;
  v14 = type metadata accessor for FormatFileVersionURIReference(0, a2, a3, a4);
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v13;
  v18 = v40;
  sub_1D7264B0C();
  if (v18)
  {
    v26 = a1;
  }

  else
  {
    v28 = v17;
    v29 = v14;
    v40 = a1;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    type metadata accessor for FormatFileVersionURIReference.CodingType(0, a2, v36, v37);
    v42 = 0;
    swift_getWitnessTable();
    v22 = v39;
    v23 = v38;
    sub_1D726431C();
    v41 = 1;
    swift_getWitnessTable();
    sub_1D726431C();
    (*(v19 + 8))(v23, v22);
    v25 = v28;
    (*(v31 + 32))(v28, v20, v21);
    (*(v30 + 32))(v32, v25, v29);
    v26 = v40;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t FormatFileVersionURIReference.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  v31 = v6;
  v29 = type metadata accessor for FormatVersionableValue(0, v3, v7, v6);
  v24 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v8);
  v30 = &v24 - v9;
  type metadata accessor for FormatFileVersionURIReference.CodingKeys(255, v3, v7, v6);
  swift_getWitnessTable();
  v10 = sub_1D726446C();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v35 = 0;
  v14 = v3;
  v15 = v3;
  v16 = v31;
  v25 = v7;
  v17 = v13;
  type metadata accessor for FormatFileVersionURIReference.CodingType(0, v15, v7, v31);
  swift_getWitnessTable();
  v18 = v32;
  sub_1D726443C();
  if (v18)
  {
    return (*(v33 + 8))(v13, v10);
  }

  v20 = v26;
  v21 = v28;
  v22 = v14;
  (*(v27 + 16))(v26, v28, v14);
  v23 = v29;
  FormatVersionableValue.init(value:versions:)(v20, *(v21 + *(v29 + 44)), v22, v25, v16, v30);
  v34 = 1;

  swift_getWitnessTable();
  sub_1D726443C();
  (*(v24 + 8))(v30, v23);
  return (*(v33 + 8))(v17, v10);
}

uint64_t sub_1D6795D28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1D6795D7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  return v2 != 0;
}

uint64_t sub_1D6795DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6795E38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6795EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6795F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6795F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6795D28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6795FC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5DEA3F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D679600C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6795D28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6796040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6796094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D67960E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D679615C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D67961C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6796238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1D67962A8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6795D7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D67962E8(uint64_t a1@<X8>)
{
  strcpy(a1, "uri-template");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1D6796420(void *a1)
{
  result = type metadata accessor for FormatVersionableValue(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double FormatStateViewNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double FormatStateViewNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatStateViewNodeLayoutAttributes.__allocating_init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  v12 = swift_allocObject();
  v13 = *a3;
  v14 = *a5;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v13;
  *(v12 + 40) = a4;
  *(v12 + 48) = v14;
  swift_beginAccess();
  *(v12 + 56) = a6;
  return v12;
}

uint64_t FormatStateViewNodeLayoutAttributes.init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  v8 = *a3;
  v9 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v8;
  *(v6 + 40) = a4;
  *(v6 + 48) = v9;
  swift_beginAccess();
  *(v6 + 56) = a6;
  return v6;
}

uint64_t FormatStateViewNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t FormatStateViewNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

unint64_t sub_1D6796760()
{
  v1 = *v0;
  v2 = 0x676E697A69736572;
  v3 = 0x7865646E497ALL;
  v4 = 0x696C696269736976;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D679682C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6797944(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6796854(uint64_t a1)
{
  v2 = sub_1D6796C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6796890(uint64_t a1)
{
  v2 = sub_1D6796C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateViewNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));
  return v0;
}

uint64_t FormatStateViewNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatStateViewNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6797364(0, &qword_1EC88B538, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6796C80();
  sub_1D7264B5C();
  v13 = *(v3 + 16);
  v14 = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6796DF0(&qword_1EDF28600, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D726443C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14 = 1;
    sub_1D6796CD4(0);
    sub_1D6796D3C();
    sub_1D726443C();
    v13 = *(v3 + 32);
    v14 = 2;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v13) = 3;
    sub_1D726442C();
    v13 = *(v3 + 48);
    v14 = 4;
    sub_1D5EB1500(v13);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v13);
    swift_beginAccess();
    if (*(v3 + 56) != 1)
    {
      v14 = 5;
      v12[15] = 0;
      sub_1D6796E38();
      sub_1D72647EC();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6796C80()
{
  result = qword_1EC88B540;
  if (!qword_1EC88B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B540);
  }

  return result;
}

void sub_1D6796CD4(uint64_t a1)
{
  if (!qword_1EC88B548)
  {
    type metadata accessor for FormatStateViewNodeStateLayoutAttributes();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88B548);
    }
  }
}

unint64_t sub_1D6796D3C()
{
  result = qword_1EC88B550;
  if (!qword_1EC88B550)
  {
    sub_1D6796CD4(255);
    sub_1D6796DF0(&qword_1EC88B558, 255, type metadata accessor for FormatStateViewNodeStateLayoutAttributes, &protocol conformance descriptor for FormatStateViewNodeStateLayoutAttributes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B550);
  }

  return result;
}

uint64_t sub_1D6796DF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1D6796E38()
{
  result = qword_1EC88B560;
  if (!qword_1EC88B560)
  {
    sub_1D6797364(255, &qword_1EC88B538, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B560);
  }

  return result;
}

uint64_t FormatStateViewNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatStateViewNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatStateViewNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6797364(0, &qword_1EC88B568, MEMORY[0x1E69E6F48]);
  v14 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6796C80();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    type metadata accessor for FormatLayoutAttributes();
    v16 = 0;
    sub_1D6796DF0(&qword_1EDF285F8, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    sub_1D726431C();
    *(v1 + 16) = v17;
    sub_1D6796CD4(0);
    v16 = 1;
    sub_1D67973C8();
    sub_1D726431C();
    *(v1 + 24) = v17;
    v16 = 2;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 32) = v17;
    LOBYTE(v17) = 3;
    v13[1] = 0;
    *(v1 + 40) = sub_1D72642FC();
    v16 = 4;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 48) = v17;
    LOBYTE(v17) = 5;
    if (sub_1D726434C())
    {
      v16 = 5;
      v11 = v14;
      sub_1D726431C();
      (*(v9 + 8))(v8, v11);
      v12 = v15;
    }

    else
    {
      (*(v5 + 8))(v8, v14);
      v12 = 1;
    }

    *(v1 + 56) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6797364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6796C80();
    v7 = a3(a1, &type metadata for FormatStateViewNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67973C8()
{
  result = qword_1EC88B570;
  if (!qword_1EC88B570)
  {
    sub_1D6796CD4(255);
    sub_1D6796DF0(&qword_1EC88B578, 255, type metadata accessor for FormatStateViewNodeStateLayoutAttributes, &protocol conformance descriptor for FormatStateViewNodeStateLayoutAttributes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B570);
  }

  return result;
}

void *sub_1D679747C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatStateViewNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D67974F8@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = FormatStateViewNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t FormatStateViewNodeLayoutAttributes.flipRightToLeft(bounds:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6796DF0(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D725A24C();
  v6 = *(v4 + 24);
  v7 = *(v5 + 32);
  v9 = *(v5 + 40);
  v8 = *(v5 + 48);
  swift_beginAccess();
  v10 = *(v5 + 56);
  v11 = swift_allocObject();
  *(v11 + 16) = v13;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v8;
  swift_beginAccess();
  *(v11 + 56) = v10;

  sub_1D5EB1500(v8);
  return v11;
}

unint64_t sub_1D6797840()
{
  result = qword_1EC88B5A0;
  if (!qword_1EC88B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5A0);
  }

  return result;
}

unint64_t sub_1D6797898()
{
  result = qword_1EC88B5A8;
  if (!qword_1EC88B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5A8);
  }

  return result;
}

unint64_t sub_1D67978F0()
{
  result = qword_1EC88B5B0;
  if (!qword_1EC88B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5B0);
  }

  return result;
}

uint64_t sub_1D6797944(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73CD5B0 == a2 || (sub_1D72646CC() & 1) != 0)
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

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t FormatFlexibleExpression.Direction.rawValue.getter()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0x746E6F7A69726F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74756F79616CLL;
  }
}

uint64_t sub_1D6797BD0(__n128 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a4;
  v6 = sub_1D725A5BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  sub_1D5EB9994(0);
  sub_1D725A55C();
  if (v11)
  {
    if (v11 == 1)
    {

      (*(v7 + 104))(v10, *MEMORY[0x1E69D74D8], v6);
LABEL_7:
      sub_1D725A55C();
      sub_1D725A41C();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v32.origin.x = v13;
      v32.origin.y = v15;
      v32.size.width = v17;
      v32.size.height = v19;
      CGRectGetHeight(v32);
LABEL_13:
      v21 = sub_1D725A63C();
      return v21 & 1;
    }

    (*(v7 + 104))(v10, *MEMORY[0x1E69D74D0], v6);
LABEL_12:
    sub_1D725A55C();
    sub_1D725A41C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    CGRectGetWidth(v33);
    goto LABEL_13;
  }

  sub_1D725A45C();

  v20 = (*(v7 + 88))(v10, v6);
  if (v20 == *MEMORY[0x1E69D74D0])
  {
    goto LABEL_12;
  }

  if (v20 == *MEMORY[0x1E69D74D8])
  {
    goto LABEL_7;
  }

  (*(v7 + 8))(v10, v6);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1D6797E20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v4 = 0x746E6F7A69726F68;
    v3 = 0xEA00000000006C61;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74756F79616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C61636974726576;
  if (*a2 != 1)
  {
    v8 = 0x746E6F7A69726F68;
    v7 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74756F79616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_1D6797F28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6797FCC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D679805C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67980FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v5 = 0x746E6F7A69726F68;
    v4 = 0xEA00000000006C61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74756F79616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL _s8NewsFeed24FormatFlexibleExpressionV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = 0xE800000000000000;
  v6 = 0x6C61636974726576;
  if (v2 != 1)
  {
    v6 = 0x746E6F7A69726F68;
    v5 = 0xEA00000000006C61;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x74756F79616CLL;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61636974726576;
  if (v3 != 1)
  {
    v10 = 0x746E6F7A69726F68;
    v9 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x74756F79616CLL;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = sub_1D72646CC();

    return (v13 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D67982D8()
{
  result = qword_1EC88B5B8;
  if (!qword_1EC88B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5B8);
  }

  return result;
}

unint64_t sub_1D679832C(uint64_t a1)
{
  *(a1 + 8) = sub_1D679835C();
  result = sub_1D5CC96A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D679835C()
{
  result = qword_1EC88B5C0;
  if (!qword_1EC88B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5C0);
  }

  return result;
}

unint64_t sub_1D67983B0(uint64_t a1)
{
  result = sub_1D67983D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67983D8()
{
  result = qword_1EC88B5C8;
  if (!qword_1EC88B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5C8);
  }

  return result;
}

unint64_t sub_1D679846C(uint64_t a1)
{
  result = sub_1D6798494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6798494()
{
  result = qword_1EC88B5D0;
  if (!qword_1EC88B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5D0);
  }

  return result;
}

uint64_t sub_1D6798528(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D679857C()
{
  result = qword_1EC88B5D8;
  if (!qword_1EC88B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFlexibleExpression(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t FormatViewNodeStyle.auxViewRequirements.getter()
{
  v1 = *(v0 + 64);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v4 = &protocol witness table for FormatBackground;
    v3 = &type metadata for FormatBackground;
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v2;
  v16[3] = v3;
  v16[4] = v4;
  sub_1D5D04BD4(v1);
  sub_1D679AA8C(v16, v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  sub_1D679AA8C(v15, &v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_1D5EECE3C(v7, MEMORY[0x1E69E7CD0]);
    sub_1D679AB00(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D679AB00(v15, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    sub_1D679AB00(&v10, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1D679AB00(v16, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v8;
}

uint64_t FormatViewNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

__n128 FormatViewNodeStyle.Selector.init(selector:background:borders:cornerRadius:shadow:alpha:ignoresSmartInvertColors:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 32) = *a4;
  v8 = *(a5 + 48);
  *(a8 + 88) = *(a5 + 32);
  *(a8 + 104) = v8;
  *(a8 + 120) = *(a5 + 64);
  result = *a5;
  v10 = *(a5 + 16);
  *(a8 + 56) = *a5;
  v11 = a1[1];
  v12 = *a2;
  v13 = *(a4 + 16);
  v14 = *a6;
  *a8 = *a1;
  *(a8 + 8) = v11;
  *(a8 + 16) = v12;
  *(a8 + 24) = a3;
  *(a8 + 48) = v13;
  *(a8 + 136) = *(a5 + 80);
  *(a8 + 72) = v10;
  *(a8 + 144) = v14;
  *(a8 + 152) = a7;
  return result;
}

double FormatViewNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatViewNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatViewNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatViewNodeStyle.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatViewNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatViewNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D679AA8C(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
}

uint64_t FormatViewNodeStyle.__allocating_init(identifier:class:selectors:alpha:background:borders:cornerRadius:shadow:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, char a11)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a7;
  v20 = *a9;
  v25 = a9[1];
  v21 = *(a9 + 16);
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  v22 = *(a10 + 48);
  *(v17 + 136) = *(a10 + 32);
  *(v17 + 152) = v22;
  *(v17 + 168) = *(a10 + 64);
  v23 = *(a10 + 16);
  *(v17 + 104) = *a10;
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 72) = a8;
  *(v17 + 80) = v20;
  *(v17 + 88) = v25;
  *(v17 + 96) = v21;
  *(v17 + 184) = *(a10 + 80);
  *(v17 + 120) = v23;
  *(v17 + 185) = a11;
  return v17;
}

uint64_t FormatViewNodeStyle.init(identifier:class:selectors:alpha:background:borders:cornerRadius:shadow:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, char a11)
{
  v16 = *a6;
  v17 = *a7;
  v19 = *a9;
  v18 = a9[1];
  v23 = *(a9 + 16);
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  v20 = *(a10 + 48);
  *(v11 + 136) = *(a10 + 32);
  *(v11 + 152) = v20;
  *(v11 + 168) = *(a10 + 64);
  v21 = *(a10 + 16);
  *(v11 + 104) = *a10;
  *(v11 + 48) = a5;
  *(v11 + 56) = v16;
  *(v11 + 64) = v17;
  *(v11 + 72) = a8;
  *(v11 + 80) = v19;
  *(v11 + 88) = v18;
  *(v11 + 96) = v23;
  *(v11 + 184) = *(a10 + 80);
  *(v11 + 120) = v21;
  *(v11 + 185) = a11;
  return v11;
}

uint64_t sub_1D6798DBC()
{
  sub_1D5B49E48(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 56);
  *(inited + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7279970;
  v4 = swift_allocObject();
  v5 = *(v0 + 64);
  *(v4 + 16) = v5;
  *(v3 + 32) = v4 | 0x1000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = *(v0 + 72);
  *(v3 + 40) = v6 | 0x2000000000000000;
  v7 = swift_allocObject();
  v8 = *(v0 + 152);
  v18 = *(v0 + 136);
  v19 = v8;
  v20 = *(v0 + 168);
  v9 = v20;
  v21 = *(v0 + 184);
  v10 = v21;
  v12 = *(v0 + 120);
  v17[0] = *(v0 + 104);
  v11 = v17[0];
  v17[1] = v12;
  *(v7 + 48) = v18;
  *(v7 + 64) = v8;
  *(v7 + 80) = v9;
  *(v7 + 96) = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v3 + 48) = v7 | 0x4000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(inited + 40) = v13 | 0x8000000000000000;

  sub_1D5D04BD4(v5);

  sub_1D679AA8C(v17, v16, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
  v14 = sub_1D6DFB554(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v14 & 1;
}

uint64_t sub_1D6798FD4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v220 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v219 = a1;
  v9 = *(a1 + 48);
  v257 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_106;
  }

  v216 = v6;
  v218 = v4;
  sub_1D679B7A8(0);
  v217 = v5;

  v215 = v7;

  sub_1D7261DAC();
  v239 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 16);
  v221 = v9;
  if (!v12)
  {
    goto LABEL_20;
  }

  v236 = v11;
  v13 = 0;
  v14 = v8;
  v15 = (v8 + 32);
  v16 = v12 - 1;
  while (1)
  {
    v17 = v15[1];
    v267 = *v15;
    v268 = v17;
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[5];
    v271 = v15[4];
    v272 = v20;
    v269 = v18;
    v270 = v19;
    v21 = v15[6];
    v22 = v15[7];
    v23 = v15[8];
    *&v275[9] = *(v15 + 137);
    v274 = v22;
    *v275 = v23;
    v273 = v21;
    v24 = v267;
    sub_1D5D044D4(&v267, &v258);
    sub_1D5D044D4(&v267, &v258);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v241 = v257;
    v26 = sub_1D6D8CB60();
    v28 = v257[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v32 = v27;
    if (v257[3] < v31)
    {
      sub_1D6D70384(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D6D8CB60();
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_107;
      }

LABEL_9:
      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v50 = v26;
    sub_1D6D83A1C();
    v26 = v50;
    if (v32)
    {
LABEL_10:
      v34 = v241;
      v35 = (*(v241 + 56) + 160 * v26);
      v36 = v35[1];
      v258 = *v35;
      v259 = v36;
      v37 = v35[5];
      v39 = v35[2];
      v38 = v35[3];
      v262 = v35[4];
      v263 = v37;
      v260 = v39;
      v261 = v38;
      v41 = v35[7];
      v40 = v35[8];
      v42 = v35[6];
      *&v266[9] = *(v35 + 137);
      v265 = v41;
      *v266 = v40;
      v264 = v42;
      v43 = v268;
      *v35 = v267;
      v35[1] = v43;
      v44 = v269;
      v45 = v270;
      v46 = v272;
      v35[4] = v271;
      v35[5] = v46;
      v35[2] = v44;
      v35[3] = v45;
      v47 = v273;
      v48 = v274;
      v49 = *v275;
      *(v35 + 137) = *&v275[9];
      v35[7] = v48;
      v35[8] = v49;
      v35[6] = v47;
      sub_1D5D04BEC(&v258);
      goto LABEL_14;
    }

LABEL_12:
    v34 = v241;
    *(v241 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    *(v34[6] + 16 * v26) = v24;
    v51 = (v34[7] + 160 * v26);
    v52 = *&v275[9];
    v54 = v274;
    v53 = *v275;
    v51[6] = v273;
    v51[7] = v54;
    v51[8] = v53;
    *(v51 + 137) = v52;
    v56 = v271;
    v55 = v272;
    v57 = v270;
    v51[2] = v269;
    v51[3] = v57;
    v51[4] = v56;
    v51[5] = v55;
    v58 = v268;
    *v51 = v267;
    v51[1] = v58;
    v59 = v34[2];
    v30 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v30)
    {
      goto LABEL_102;
    }

    v34[2] = v60;

LABEL_14:
    v257 = v34;

    sub_1D5D04BEC(&v267);
    v62 = *(v239 + 2);
    v61 = *(v239 + 3);
    if (v62 >= v61 >> 1)
    {
      v239 = sub_1D698F4BC((v61 > 1), v62 + 1, 1, v239);
    }

    *(v239 + 2) = v62 + 1;
    *&v239[16 * v62 + 32] = v24;
    if (v16 == v13)
    {
      break;
    }

    ++v13;
    v15 += 10;
    if (v13 >= *(v14 + 16))
    {
      goto LABEL_98;
    }
  }

  v9 = v221;
  v11 = v236;
LABEL_20:
  v63 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v64 = v63;
  v65 = *(v9 + 16);
  if (!v65)
  {

    v68 = v64;
    goto LABEL_66;
  }

  v66 = 0;
  v237 = v65 - 1;
  v67 = 32;
  v68 = v63;
  while (2)
  {
    v69 = *(v9 + v67 + 16);
    v267 = *(v9 + v67);
    v268 = v69;
    v70 = *(v9 + v67 + 32);
    v71 = *(v9 + v67 + 48);
    v72 = *(v9 + v67 + 80);
    v271 = *(v9 + v67 + 64);
    v272 = v72;
    v269 = v70;
    v270 = v71;
    v73 = *(v9 + v67 + 96);
    v74 = *(v9 + v67 + 112);
    v75 = *(v9 + v67 + 128);
    *&v275[9] = *(v9 + v67 + 137);
    v274 = v74;
    *v275 = v75;
    v273 = v73;
    v76 = v267;
    v77 = v257;
    if (!v257[2])
    {
      sub_1D5D044D4(&v267, &v258);
LABEL_41:
      sub_1D5D044D4(&v267, &v258);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *&v241 = v77;
      v108 = sub_1D6D8CB60();
      v110 = v77[2];
      v111 = (v109 & 1) == 0;
      v30 = __OFADD__(v110, v111);
      v112 = v110 + v111;
      if (v30)
      {
        goto LABEL_101;
      }

      v113 = v109;
      if (v77[3] >= v112)
      {
        if ((v107 & 1) == 0)
        {
          v145 = v108;
          sub_1D6D83A1C();
          v108 = v145;
          if (v113)
          {
            goto LABEL_47;
          }

          goto LABEL_52;
        }
      }

      else
      {
        sub_1D6D70384(v112, v107);
        v108 = sub_1D6D8CB60();
        if ((v113 & 1) != (v114 & 1))
        {
          goto LABEL_107;
        }
      }

      if (v113)
      {
LABEL_47:
        v115 = v241;
        v116 = (*(v241 + 56) + 160 * v108);
        v117 = v116[1];
        v258 = *v116;
        v259 = v117;
        v118 = v116[5];
        v120 = v116[2];
        v119 = v116[3];
        v262 = v116[4];
        v263 = v118;
        v260 = v120;
        v261 = v119;
        v122 = v116[7];
        v121 = v116[8];
        v123 = v116[6];
        *&v266[9] = *(v116 + 137);
        v265 = v122;
        *v266 = v121;
        v264 = v123;
        v124 = v268;
        *v116 = v267;
        v116[1] = v124;
        v125 = v269;
        v126 = v270;
        v127 = v272;
        v116[4] = v271;
        v116[5] = v127;
        v116[2] = v125;
        v116[3] = v126;
        v128 = v273;
        v129 = v274;
        v130 = *v275;
        *(v116 + 137) = *&v275[9];
        v116[7] = v129;
        v116[8] = v130;
        v116[6] = v128;
        sub_1D5D04BEC(&v258);
LABEL_54:
        v257 = v115;
        v156 = *(v68 + 2);
        v157 = *(v68 + 3);

        if (v156 >= v157 >> 1)
        {
          v68 = sub_1D698F4BC((v157 > 1), v156 + 1, 1, v68);
        }

        sub_1D5D04BEC(&v267);
        *(v68 + 2) = v156 + 1;
        *&v68[16 * v156 + 32] = v76;
        goto LABEL_61;
      }

LABEL_52:
      v115 = v241;
      *(v241 + 8 * (v108 >> 6) + 64) |= 1 << v108;
      *(v115[6] + 16 * v108) = v76;
      v146 = (v115[7] + 160 * v108);
      v147 = *&v275[9];
      v149 = v274;
      v148 = *v275;
      v146[6] = v273;
      v146[7] = v149;
      v146[8] = v148;
      *(v146 + 137) = v147;
      v151 = v271;
      v150 = v272;
      v152 = v270;
      v146[2] = v269;
      v146[3] = v152;
      v146[4] = v151;
      v146[5] = v150;
      v153 = v268;
      *v146 = v267;
      v146[1] = v153;
      v154 = v115[2];
      v30 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v30)
      {
        goto LABEL_103;
      }

      v115[2] = v155;

      goto LABEL_54;
    }

    sub_1D5D044D4(&v267, &v258);
    v78 = sub_1D6D8CB60();
    if ((v79 & 1) == 0)
    {
      goto LABEL_41;
    }

    v80 = (v77[7] + 160 * v78);
    v81 = v80[1];
    v258 = *v80;
    v259 = v81;
    v82 = v80[5];
    v84 = v80[2];
    v83 = v80[3];
    v262 = v80[4];
    v263 = v82;
    v260 = v84;
    v261 = v83;
    v85 = v80[6];
    v86 = v80[7];
    v87 = v80[8];
    *&v266[9] = *(v80 + 137);
    v265 = v86;
    *v266 = v87;
    v264 = v85;
    v88 = v259;
    v230 = v259;
    if ((~v259 & 0xF000000000000007) == 0)
    {
      v88 = v268;
      sub_1D5D04BD4(v268);
    }

    v227 = v88;
    v89 = *(&v259 + 1);
    if (!*(&v259 + 1))
    {
    }

    v226 = v89;
    v91 = *(&v260 + 1);
    v90 = v260;
    v92 = v261;
    v228 = *(&v260 + 1);
    v229 = v260;
    v233 = v261;
    if (v261 >= 0xFEu)
    {
      v91 = *(&v269 + 1);
      v90 = v269;
      v233 = v270;
      sub_1D5ED34B0(v269, *(&v269 + 1), v270);
    }

    v224 = v91;
    v225 = v90;
    v93 = &v261 + 8;
    if (v266[8] == 254)
    {
      v93 = &v270 + 8;
      sub_1D679AA8C(&v270 + 8, &v241, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    }

    v94 = *(v93 + 3);
    v252 = *(v93 + 2);
    v253 = v94;
    v254 = *(v93 + 4);
    v255 = v93[80];
    v95 = *(v93 + 1);
    v96 = *&v266[16];
    v250 = *v93;
    v251 = v95;
    if (!*&v266[16])
    {
    }

    v223 = v96;
    v97 = v266[24];
    if (v266[24] == 2)
    {
      v97 = v275[24];
    }

    v222 = v97;
    v98 = v258;
    *&v256[39] = v252;
    *&v256[55] = v253;
    *&v256[71] = v254;
    v256[87] = v255;
    *&v256[7] = v250;
    *&v256[23] = v251;
    sub_1D5D044D4(&v258, &v241);

    sub_1D5D04BD4(v230);

    sub_1D5ED34B0(v229, v228, v92);
    sub_1D679AA8C(&v261 + 8, &v241, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v100 = sub_1D6D8CB60();
    v102 = v77[2];
    v103 = (v101 & 1) == 0;
    v30 = __OFADD__(v102, v103);
    v104 = v102 + v103;
    if (v30)
    {
      goto LABEL_104;
    }

    v105 = v101;
    if (v77[3] >= v104)
    {
      v9 = v221;
      if (v99)
      {
        goto LABEL_49;
      }

      v158 = v100;
      sub_1D6D83A1C();
      v100 = v158;
      v132 = v225;
      v131 = v226;
      if ((v105 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_50:
      v133 = v77;
      v134 = v77[7] + 160 * v100;
      v135 = *(v134 + 16);
      v241 = *v134;
      v242 = v135;
      v136 = *(v134 + 80);
      v138 = *(v134 + 32);
      v137 = *(v134 + 48);
      v245 = *(v134 + 64);
      v246 = v136;
      v243 = v138;
      v244 = v137;
      v140 = *(v134 + 112);
      v139 = *(v134 + 128);
      v141 = *(v134 + 96);
      *(v249 + 9) = *(v134 + 137);
      v249[0] = v139;
      v247 = v141;
      v248 = v140;
      *v134 = v98;
      *(v134 + 16) = v227;
      *(v134 + 24) = v131;
      *(v134 + 32) = v132;
      *(v134 + 40) = v224;
      *(v134 + 48) = v233;
      v142 = *v256;
      *(v134 + 65) = *&v256[16];
      *(v134 + 49) = v142;
      *(v134 + 129) = *&v256[80];
      v143 = *&v256[48];
      *(v134 + 113) = *&v256[64];
      v144 = *&v256[32];
      *(v134 + 97) = v143;
      *(v134 + 81) = v144;
      *(v134 + 144) = v223;
      *(v134 + 152) = v222;
      sub_1D5D04BEC(&v241);
    }

    else
    {
      sub_1D6D70384(v104, v99);
      v100 = sub_1D6D8CB60();
      v9 = v221;
      if ((v105 & 1) != (v106 & 1))
      {
        goto LABEL_107;
      }

LABEL_49:
      v132 = v225;
      v131 = v226;
      if (v105)
      {
        goto LABEL_50;
      }

LABEL_58:
      v133 = v77;
      v77[(v100 >> 6) + 8] |= 1 << v100;
      *(v77[6] + 16 * v100) = v98;
      v159 = v77[7] + 160 * v100;
      v160 = *v256;
      *(v159 + 65) = *&v256[16];
      *(v159 + 49) = v160;
      v161 = *&v256[48];
      *(v159 + 113) = *&v256[64];
      v162 = *&v256[32];
      *(v159 + 97) = v161;
      *v159 = v98;
      *(v159 + 16) = v227;
      *(v159 + 24) = v131;
      *(v159 + 32) = v132;
      *(v159 + 40) = v224;
      *(v159 + 48) = v233;
      *(v159 + 129) = *&v256[80];
      *(v159 + 81) = v162;
      *(v159 + 144) = v223;
      *(v159 + 152) = v222;
      v163 = v77[2];
      v30 = __OFADD__(v163, 1);
      v164 = v163 + 1;
      if (v30)
      {
        goto LABEL_105;
      }

      v77[2] = v164;
    }

    sub_1D5D04BEC(&v258);
    sub_1D5D04BEC(&v267);
    v257 = v133;
LABEL_61:
    if (v237 == v66)
    {
      goto LABEL_64;
    }

    ++v66;
    v67 += 160;
    if (v66 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:

LABEL_66:
  *&v267 = v68;

  sub_1D6985DAC(v165);
  v166 = *(v267 + 16);
  if (v166)
  {
    v167 = 0;
    v168 = v267 + 40;
    v234 = v267 + 40;
    v238 = MEMORY[0x1E69E7CC0];
LABEL_68:
    v169 = v68;
    v170 = v257;
    v171 = v168 + 16 * v167;
    v172 = v167;
    while (v172 < v166)
    {
      v167 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
        goto LABEL_100;
      }

      if (v170[2])
      {

        v173 = sub_1D6D8CB60();
        if (v174)
        {
          v175 = (v170[7] + 160 * v173);
          v176 = v175[1];
          v267 = *v175;
          v268 = v176;
          v177 = v175[5];
          v179 = v175[2];
          v178 = v175[3];
          v271 = v175[4];
          v272 = v177;
          v269 = v179;
          v270 = v178;
          v180 = v175[6];
          v181 = v175[7];
          v182 = v175[8];
          *&v275[9] = *(v175 + 137);
          v274 = v181;
          *v275 = v182;
          v273 = v180;
          sub_1D5D044D4(&v267, &v258);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v238 = sub_1D698CF7C(0, *(v238 + 2) + 1, 1, v238);
          }

          v68 = v169;
          v168 = v234;
          v184 = *(v238 + 2);
          v183 = *(v238 + 3);
          if (v184 >= v183 >> 1)
          {
            v238 = sub_1D698CF7C((v183 > 1), v184 + 1, 1, v238);
          }

          *(v238 + 2) = v184 + 1;
          v185 = &v238[160 * v184];
          v186 = v268;
          *(v185 + 2) = v267;
          *(v185 + 3) = v186;
          v187 = v269;
          v188 = v270;
          v189 = v272;
          *(v185 + 6) = v271;
          *(v185 + 7) = v189;
          *(v185 + 4) = v187;
          *(v185 + 5) = v188;
          v190 = v273;
          v191 = v274;
          v192 = *v275;
          *(v185 + 169) = *&v275[9];
          *(v185 + 9) = v191;
          *(v185 + 10) = v192;
          *(v185 + 8) = v190;
          if (v167 != v166)
          {
            goto LABEL_68;
          }

          goto LABEL_83;
        }
      }

      ++v172;
      v171 += 16;
      if (v167 == v166)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_99;
  }

  v238 = MEMORY[0x1E69E7CC0];
LABEL_83:

  v193 = v220;
  v194 = v220[7];
  if (!v194)
  {
    v194 = *(v219 + 56);

    v193 = v220;
  }

  v195 = v193[8];
  v196 = v195;
  if ((~v195 & 0xF000000000000007) == 0)
  {
    v196 = *(v219 + 64);
    sub_1D5D04BD4(v196);
    v193 = v220;
  }

  v235 = v196;
  v240 = v194;
  v197 = v193[9];
  if (!v197)
  {

    v193 = v220;
  }

  v198 = v193[10];
  v199 = v193[11];
  v200 = *(v193 + 96);
  v231 = v197;
  v232 = v198;
  v201 = v199;
  v202 = *(v193 + 96);
  if (v200 >= 0xFE)
  {
    v198 = *(v219 + 80);
    v201 = *(v219 + 88);
    v202 = *(v219 + 96);
    sub_1D5ED34B0(v198, v201, v202);
    v193 = v220;
  }

  LOBYTE(v272) = *(v193 + 184);
  v203 = *(v193 + 19);
  v269 = *(v193 + 17);
  v270 = v203;
  v271 = *(v193 + 21);
  v204 = *(v193 + 15);
  v267 = *(v193 + 13);
  v268 = v204;
  if (v272 == 254)
  {
    v205 = *(v219 + 152);
    v243 = *(v219 + 136);
    v244 = v205;
    v245 = *(v219 + 168);
    LOBYTE(v246) = *(v219 + 184);
    v206 = *(v219 + 120);
    v241 = *(v219 + 104);
    v242 = v206;
    sub_1D679AA8C(&v241, &v258, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    v193 = v220;
    v260 = v243;
    v261 = v244;
    v262 = v245;
    LOBYTE(v263) = v246;
    v207 = v241;
    v208 = v242;
  }

  else
  {
    v209 = *(v193 + 19);
    v260 = *(v193 + 17);
    v261 = v209;
    v262 = *(v193 + 21);
    LOBYTE(v263) = *(v193 + 184);
    v207 = *(v193 + 13);
    v208 = *(v193 + 15);
  }

  v258 = v207;
  v259 = v208;
  v210 = *(v193 + 185);
  if (v210 == 2)
  {
    LOBYTE(v210) = *(v219 + 185);
  }

  v211 = swift_allocObject();
  swift_beginAccess();
  *(v211 + 16) = v218;
  *(v211 + 24) = v217;
  *(v211 + 32) = v216;
  *(v211 + 40) = v215;
  swift_beginAccess();
  v212 = v261;
  *(v211 + 136) = v260;
  *(v211 + 152) = v212;
  *(v211 + 168) = v262;
  v213 = v259;
  *(v211 + 104) = v258;
  *(v211 + 48) = v238;
  *(v211 + 56) = v240;
  *(v211 + 64) = v235;
  *(v211 + 72) = v231;
  *(v211 + 80) = v198;
  *(v211 + 88) = v201;
  *(v211 + 96) = v202;
  *(v211 + 184) = v263;
  *(v211 + 120) = v213;
  *(v211 + 185) = v210;

  sub_1D5D04BD4(v195);

  sub_1D5ED34B0(v232, v199, v200);
  sub_1D679AA8C(&v267, &v241, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
  return v211;
}

void sub_1D6799F84(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698CF7C(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v79 = sub_1D698CE08(0, v5, 0, v6);
  v82 = *(v4 + 16);
  if (v82)
  {
    v8 = 0;
    v80 = v4;
    v81 = v4 + 32;
    while (1)
    {
      v9 = (v81 + 160 * v8);
      v10 = v9[1];
      v84 = *v9;
      v85 = v10;
      v11 = v9[2];
      v12 = v9[3];
      v13 = v9[5];
      v88 = v9[4];
      v89 = v13;
      v86 = v11;
      v87 = v12;
      v14 = v9[6];
      v15 = v9[7];
      v16 = v9[8];
      *(v92 + 9) = *(v9 + 137);
      v91 = v15;
      v92[0] = v16;
      v90 = v14;
      v17 = v84;
      sub_1D5D044D4(&v84, &v93);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v93 = v17;

      v18 = sub_1D6844380(&v93);

      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = 32;
        while (1)
        {
          if (v20 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v23 = *(v18 + v21 + 16);
          v22 = *(v18 + v21 + 32);
          v24 = *(v18 + v21);
          v104 = *(v18 + v21 + 48);
          v103[1] = v23;
          v103[2] = v22;
          v103[0] = v24;
          v25 = v23;
          sub_1D5E3B610(v103, &v93);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v20;
          sub_1D5E3B66C(v103);
          v21 += 56;
          if (v19 == v20)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v103);
        if (v25 <= 1)
        {
          v37 = *(v7 + 2);
          v36 = *(v7 + 3);
          if (v37 >= v36 >> 1)
          {
            v7 = sub_1D698CF7C((v36 > 1), v37 + 1, 1, v7);
          }

          *(v7 + 2) = v37 + 1;
          v38 = &v7[160 * v37];
          v39 = v85;
          *(v38 + 2) = v84;
          *(v38 + 3) = v39;
          v40 = v86;
          v41 = v87;
          v42 = v89;
          *(v38 + 6) = v88;
          *(v38 + 7) = v42;
          *(v38 + 4) = v40;
          *(v38 + 5) = v41;
          v43 = v90;
          v44 = v91;
          v45 = v92[0];
          *(v38 + 169) = *(v92 + 9);
          *(v38 + 9) = v44;
          *(v38 + 10) = v45;
          *(v38 + 8) = v43;
        }

        else
        {
          v99 = v90;
          v100 = v91;
          *v101 = v92[0];
          *&v101[9] = *(v92 + 9);
          v95 = v86;
          v96 = v87;
          v97 = v88;
          v98 = v89;
          v93 = v84;
          v94 = v85;
          sub_1D5D044D4(&v84, v83);
          v27 = v79[2];
          v26 = v79[3];
          if (v27 >= v26 >> 1)
          {
            v79 = sub_1D698CE08((v26 > 1), v27 + 1, 1, v79);
          }

          sub_1D5D04BEC(&v84);
          v79[2] = v27 + 1;
          v28 = &v79[21 * v27];
          v29 = v94;
          *(v28 + 2) = v93;
          *(v28 + 3) = v29;
          v30 = v95;
          v31 = v96;
          v32 = v98;
          *(v28 + 6) = v97;
          *(v28 + 7) = v32;
          *(v28 + 4) = v30;
          *(v28 + 5) = v31;
          v33 = v99;
          v34 = v100;
          v35 = *&v101[16];
          *(v28 + 10) = *v101;
          *(v28 + 11) = v35;
          *(v28 + 8) = v33;
          *(v28 + 9) = v34;
          v28[24] = v25;
        }
      }

      else
      {
LABEL_10:
        sub_1D5D04BEC(&v84);
      }

      if (++v8 == v82)
      {
        break;
      }

      if (v8 >= *(v80 + 16))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  sub_1D679B80C(0);
  v46 = sub_1D72626AC();

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v47 - 1;
    for (i = 32; ; i += 168)
    {
      v50 = *(v46 + i);
      v51 = *(v46 + i + 32);
      v94 = *(v46 + i + 16);
      v95 = v51;
      v93 = v50;
      v52 = *(v46 + i + 48);
      v53 = *(v46 + i + 64);
      v54 = *(v46 + i + 96);
      v98 = *(v46 + i + 80);
      v99 = v54;
      v96 = v52;
      v97 = v53;
      v55 = *(v46 + i + 112);
      v56 = *(v46 + i + 128);
      v57 = *(v46 + i + 144);
      v102 = *(v46 + i + 160);
      *v101 = v56;
      *&v101[16] = v57;
      v100 = v55;
      sub_1D679B8BC(&v93, &v84);
      v59 = *(v7 + 2);
      v58 = *(v7 + 3);
      if (v59 >= v58 >> 1)
      {
        v7 = sub_1D698CF7C((v58 > 1), v59 + 1, 1, v7);
      }

      *(v7 + 2) = v59 + 1;
      v60 = &v7[160 * v59];
      v61 = v94;
      *(v60 + 2) = v93;
      *(v60 + 3) = v61;
      v62 = v95;
      v63 = v96;
      v64 = v98;
      *(v60 + 6) = v97;
      *(v60 + 7) = v64;
      *(v60 + 4) = v62;
      *(v60 + 5) = v63;
      v65 = v99;
      v66 = v100;
      v67 = *v101;
      *(v60 + 169) = *&v101[9];
      *(v60 + 9) = v66;
      *(v60 + 10) = v67;
      *(v60 + 8) = v65;
      if (!v48)
      {
        break;
      }

      --v48;
    }
  }

  v68 = *(v7 + 2);

  if (v68)
  {
    v69 = 0;
    v70 = (v7 + 32);
    while (v69 < *(v7 + 2))
    {
      v71 = v70[1];
      v93 = *v70;
      v94 = v71;
      v72 = v70[2];
      v73 = v70[3];
      v74 = v70[5];
      v97 = v70[4];
      v98 = v74;
      v95 = v72;
      v96 = v73;
      v75 = v70[6];
      v76 = v70[7];
      v77 = v70[8];
      *&v101[9] = *(v70 + 137);
      v100 = v76;
      *v101 = v77;
      v99 = v75;
      ++v69;
      v90 = v75;
      v91 = v76;
      v92[0] = v77;
      *(v92 + 9) = *&v101[9];
      v86 = v95;
      v87 = v96;
      v88 = v97;
      v89 = v74;
      v84 = v93;
      v85 = v94;
      swift_allocObject();
      sub_1D5D044D4(&v93, v83);
      v78 = sub_1D679B920(v2, &v84);

      v70 += 10;
      v2 = v78;
      if (v68 == v69)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_1D679A560()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v33 = v4;
  swift_beginAccess();
  v6 = v1[6];
  v7 = v1[8];
  v32 = v5;
  v30 = v1[7];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v35[0] = v1[8];

    sub_1D5D04BD4(v7);
    sub_1D6C051DC(&v37);

    v7 = v37;
  }

  else
  {
  }

  v8 = v1[9];
  v31 = v6;
  if (v8)
  {
    v29 = sub_1D600CADC(v8);
  }

  else
  {
    v29 = 0;
  }

  v34 = v2;
  v10 = v1[10];
  v9 = v1[11];
  v11 = *(v1 + 96);
  v12 = *(v1 + 19);
  v39 = *(v1 + 17);
  v40 = v12;
  v41 = *(v1 + 21);
  v42 = *(v1 + 184);
  v13 = v42;
  v14 = *(v1 + 15);
  v37 = *(v1 + 13);
  v38 = v14;
  if (v42 == 254)
  {
    sub_1D5ED34B0(v10, v9, v11);
    v15 = v37;
    v16 = DWORD2(v37);
    LODWORD(v17) = HIDWORD(v37);
    v18 = *(&v38 + 1);
    v19 = v38;
    v25 = v39;
    v27 = v40;
    v28 = v41;
  }

  else
  {
    v28 = v41;
    v26 = *(&v39 + 1);
    v18 = *(&v38 + 1);
    v19 = v38;
    v16 = DWORD2(v37);
    v15 = v37;
    v27 = v40;
    v36 = v39;
    v20 = MEMORY[0x1E69E6720];
    sub_1D679AA8C(&v37, v35, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    sub_1D679AA8C(&v37, v35, &qword_1EDF33718, &type metadata for FormatShadow, v20, sub_1D5B49E48);
    sub_1D5ED34B0(v10, v9, v11);
    v17 = &v36;
    sub_1D6E0CAE0(v35);

    sub_1D679AB00(&v37, &qword_1EDF33718, &type metadata for FormatShadow, v20, sub_1D5B49E48);
    *&v21 = v35[0];
    *(&v21 + 1) = v26;
    v25 = v21;
  }

  v22 = *(v1 + 185);
  v23 = swift_allocObject();
  swift_beginAccess();
  *(v23 + 16) = v3;
  *(v23 + 24) = v34;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;
  swift_beginAccess();
  *(v23 + 48) = v31;
  *(v23 + 56) = v30;
  *(v23 + 64) = v7;
  *(v23 + 72) = v29;
  *(v23 + 80) = v10;
  *(v23 + 88) = v9;
  *(v23 + 96) = v11;
  *(v23 + 104) = v15;
  *(v23 + 112) = v16;
  *(v23 + 116) = v17;
  *(v23 + 120) = v19;
  *(v23 + 128) = v18;
  *(v23 + 152) = v27;
  *(v23 + 136) = v25;
  *(v23 + 168) = v28;
  *(v23 + 184) = v13;
  *(v23 + 185) = v22;
  return v23;
}

uint64_t FormatViewNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 64));

  sub_1D5ED348C(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1D600ECE4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t FormatViewNodeStyle.__deallocating_deinit()
{
  FormatViewNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatViewNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatViewNodeStyle.Selector.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatViewNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatViewNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D679AA8C(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
}

uint64_t sub_1D679AA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D679AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D679AB60()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = *(v1 + 64);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v7 = &protocol witness table for FormatBackground;
    v6 = &type metadata for FormatBackground;
    v5 = *(v1 + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  sub_1D5D04BD4(v4);
  v8 = sub_1D6E27AC0();
  swift_setDeallocating();
  sub_1D679AB00(v3 + 32, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding, sub_1D5BFB8A8);
  return v8;
}

BOOL _s8NewsFeed19FormatViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[4];
  v45 = a1[3];
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 13);
  v84 = *(a1 + 11);
  v85 = v10;
  v86 = *(a1 + 15);
  v87 = *(a1 + 136);
  v11 = *(a1 + 9);
  v82 = *(a1 + 7);
  v83 = v11;
  v12 = a1[18];
  v13 = *(a1 + 152);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v46 = a2[4];
  v43 = a2[5];
  v44 = a2[3];
  v17 = *(a2 + 48);
  v93 = *(a2 + 136);
  v18 = *(a2 + 15);
  v19 = *(a2 + 11);
  v91 = *(a2 + 13);
  v92 = v18;
  v20 = *(a2 + 7);
  v89 = *(a2 + 9);
  v90 = v19;
  v88 = v20;
  v21 = a2[18];
  v22 = *(a2 + 152);
  if ((v4 != v14 || v5 != v15) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v16);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v6);
      goto LABEL_12;
    }

LABEL_9:
    sub_1D5C8500C(v6);
    sub_1D5C8500C(v16);
    return 0;
  }

  *&v64 = v6;
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v16);
    sub_1D5D04BD4(v6);

    goto LABEL_9;
  }

  *v76 = v16;
  sub_1D5D04BD4(v6);
  sub_1D5D04BD4(v16);
  sub_1D5D04BD4(v6);
  v24 = static FormatBackground.== infix(_:_:)(&v64, v76);

  sub_1D5C8500C(v6);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v45)
  {
    if (!v44)
    {
      return 0;
    }

    sub_1D633C9E8(v45, v44);
    v26 = v25;

    v27 = v46;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v27 = v46;
    if (v44)
    {
      return 0;
    }
  }

  if (v9 > 0xFD)
  {
    sub_1D5ED34B0(v7, v8, v9);
    v28 = v43;
    sub_1D5ED34B0(v27, v43, v17);
    if (v17 > 0xFD)
    {
      sub_1D5ED348C(v7, v8, v9);
      goto LABEL_24;
    }

LABEL_22:
    sub_1D5ED348C(v7, v8, v9);
    sub_1D5ED348C(v27, v28, v17);
    return 0;
  }

  *&v64 = v7;
  *(&v64 + 1) = v8;
  LOBYTE(v65) = v9;
  v28 = v43;
  if (v17 > 0xFD)
  {
    sub_1D5ED34B0(v7, v8, v9);
    sub_1D5ED34B0(v27, v43, v17);
    sub_1D5ED34B0(v7, v8, v9);
    sub_1D5ED34A0(v7, v8, v9);
    goto LABEL_22;
  }

  *v76 = v27;
  *&v76[8] = v43;
  v76[16] = v17;
  sub_1D5ED34B0(v7, v8, v9);
  sub_1D5ED34B0(v27, v43, v17);
  sub_1D5ED34B0(v7, v8, v9);
  v29 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v64, v76);
  sub_1D5ED34A0(*v76, *&v76[8], v76[16]);
  sub_1D5ED34A0(v64, *(&v64 + 1), v65);
  sub_1D5ED348C(v7, v8, v9);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v30 = v21;
  v79 = v84;
  v80 = v85;
  v81 = v86;
  v77 = v82;
  v78 = v83;
  *&v76[23] = v89;
  *&v76[39] = v90;
  *&v76[55] = v91;
  *&v76[71] = v92;
  v31 = v87;
  *&v76[7] = v88;
  v32 = v93;
  if (v87 == 254)
  {
    if (v93 == 254)
    {
      v33 = v12;
      v47 = v13;
      v66 = v84;
      v67 = v85;
      v68 = v86;
      v64 = v82;
      v65 = v83;
      v69 = -2;
      v34 = MEMORY[0x1E69E6720];
      sub_1D679AA8C(&v82, &v58, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
      sub_1D679AA8C(&v88, &v58, &qword_1EDF33718, &type metadata for FormatShadow, v34, sub_1D5B49E48);
      sub_1D679AB00(&v64, &qword_1EDF33718, &type metadata for FormatShadow, v34, sub_1D5B49E48);
      goto LABEL_32;
    }

    v36 = MEMORY[0x1E69E6720];
    sub_1D679AA8C(&v82, &v64, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    sub_1D679AA8C(&v88, &v64, &qword_1EDF33718, &type metadata for FormatShadow, v36, sub_1D5B49E48);
LABEL_30:
    v66 = v79;
    v67 = v80;
    v68 = v81;
    v64 = v77;
    v65 = v78;
    v72 = *&v76[32];
    v73 = *&v76[48];
    *v74 = *&v76[64];
    v70 = *v76;
    v69 = v31;
    *&v74[15] = *&v76[79];
    v71 = *&v76[16];
    v75 = v32;
    sub_1D679C428(&v64, sub_1D615F6C0);
    return 0;
  }

  v66 = v84;
  v67 = v85;
  v68 = v86;
  v64 = v82;
  v65 = v83;
  v69 = v87;
  v60 = v84;
  v61 = v85;
  v62 = v86;
  v63 = v87;
  v58 = v82;
  v59 = v83;
  if (v93 == 254)
  {
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v52 = v64;
    v53 = v65;
    v35 = MEMORY[0x1E69E6720];
    sub_1D679AA8C(&v82, v50, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    sub_1D679AA8C(&v88, v50, &qword_1EDF33718, &type metadata for FormatShadow, v35, sub_1D5B49E48);
    sub_1D679AA8C(&v64, v50, &qword_1EDF33718, &type metadata for FormatShadow, v35, sub_1D5B49E48);
    sub_1D601144C(&v52);
    goto LABEL_30;
  }

  v33 = v12;
  v47 = v13;
  v54 = v90;
  v55 = v91;
  v56 = v92;
  v52 = v88;
  v53 = v89;
  v57 = v93;
  v37 = MEMORY[0x1E69E6720];
  sub_1D679AA8C(&v82, v50, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
  sub_1D679AA8C(&v88, v50, &qword_1EDF33718, &type metadata for FormatShadow, v37, sub_1D5B49E48);
  sub_1D679AA8C(&v64, v50, &qword_1EDF33718, &type metadata for FormatShadow, v37, sub_1D5B49E48);
  v38 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v58, &v52);
  v48[2] = v54;
  v48[3] = v55;
  v48[4] = v56;
  v49 = v57;
  v48[0] = v52;
  v48[1] = v53;
  sub_1D601144C(v48);
  v50[2] = v60;
  v50[3] = v61;
  v50[4] = v62;
  v51 = v63;
  v50[0] = v58;
  v50[1] = v59;
  sub_1D601144C(v50);
  v54 = v79;
  v55 = v80;
  v56 = v81;
  v52 = v77;
  v53 = v78;
  v57 = v31;
  sub_1D679AB00(&v52, &qword_1EDF33718, &type metadata for FormatShadow, v37, sub_1D5B49E48);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  if (v33)
  {
    v39 = v33;
    v40 = v47;
    if (!v30)
    {
      return 0;
    }

    sub_1D633A310(v39, v30);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v40 = v47;
    if (v30)
    {
      return 0;
    }
  }

  if (v40 != 2)
  {
    return v22 != 2 && ((v22 ^ v40) & 1) == 0;
  }

  return v22 == 2;
}

uint64_t sub_1D679B4AC(uint64_t a1)
{
  result = sub_1D679B5E4(&qword_1EC88B5E0, &protocol conformance descriptor for FormatViewNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D679B4F0(uint64_t a1)
{
  *(a1 + 16) = sub_1D679B5E4(&qword_1EDF2BA90, &protocol conformance descriptor for FormatViewNodeStyle);
  result = sub_1D679B5E4(&qword_1EDF2BA98, &protocol conformance descriptor for FormatViewNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D679B558(void *a1)
{
  a1[1] = sub_1D679B5E4(&qword_1EDF2BA90, &protocol conformance descriptor for FormatViewNodeStyle);
  a1[2] = sub_1D679B5E4(&qword_1EDF2BA98, &protocol conformance descriptor for FormatViewNodeStyle);
  result = sub_1D679B5E4(&qword_1EC88B5E8, &protocol conformance descriptor for FormatViewNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D679B5E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatViewNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D679B624(uint64_t a1)
{
  result = sub_1D679B64C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D679B64C()
{
  result = qword_1EC88B5F0;
  if (!qword_1EC88B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5F0);
  }

  return result;
}

unint64_t sub_1D679B6A0(uint64_t a1)
{
  *(a1 + 8) = sub_1D5C8C100();
  result = sub_1D5C8C154();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D679B6D0(void *a1)
{
  a1[1] = sub_1D5C8C100();
  a1[2] = sub_1D5C8C154();
  result = sub_1D679B708();
  a1[3] = result;
  return result;
}

unint64_t sub_1D679B708()
{
  result = qword_1EC88B5F8;
  if (!qword_1EC88B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B5F8);
  }

  return result;
}

void sub_1D679B7A8(uint64_t a1)
{
  if (!qword_1EDF1B9B8)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B9B8);
    }
  }
}

void sub_1D679B80C(uint64_t a1)
{
  if (!qword_1EDF21810)
  {
    v2 = sub_1D679B868();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatViewNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF21810);
    }
  }
}

unint64_t sub_1D679B868()
{
  result = qword_1EDF2BAA0;
  if (!qword_1EDF2BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAA0);
  }

  return result;
}

uint64_t sub_1D679B8BC(uint64_t a1, uint64_t a2)
{
  sub_1D679B80C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D679B920(uint64_t a1, __int128 *a2)
{
  v4 = a2[7];
  *&v45[48] = a2[6];
  *&v45[64] = v4;
  *&v45[80] = a2[8];
  *&v45[89] = *(a2 + 137);
  v5 = a2[3];
  v44 = a2[2];
  *v45 = v5;
  v6 = a2[5];
  *&v45[16] = a2[4];
  *&v45[32] = v6;
  v7 = a2[1];
  v42 = *a2;
  v43 = v7;
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v8;
  *(v2 + 24) = v9;
  v10 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v10;
  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v11;
  v12 = *&v45[96];
  if (!*&v45[96])
  {
  }

  *(v2 + 56) = v12;
  v13 = v43;
  v14 = v43;
  if ((~v43 & 0xF000000000000007) == 0)
  {
    v14 = *(a1 + 64);
    sub_1D5D04BD4(v14);
  }

  *(v2 + 64) = v14;
  v15 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
  }

  *(v2 + 72) = v15;
  v16 = *(&v44 + 1);
  v17 = v44;
  v18 = v45[0];
  v19 = *(&v44 + 1);
  v29 = v44;
  v20 = v45[0];
  if (v45[0] >= 0xFEu)
  {
    v17 = *(a1 + 80);
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    sub_1D5ED34B0(v17, v19, v20);
  }

  *(v2 + 80) = v17;
  *(v2 + 88) = v19;
  *(v2 + 96) = v20;
  if (v45[88] == 254)
  {
    v21 = *(a1 + 152);
    v32 = *(a1 + 136);
    v33 = v21;
    v34 = *(a1 + 168);
    v35 = *(a1 + 184);
    v22 = *(a1 + 120);
    v30 = *(a1 + 104);
    v31 = v22;
    sub_1D679AA8C(&v30, &v36, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v23 = v30;
    v24 = v31;
  }

  else
  {
    v38 = *&v45[40];
    v39 = *&v45[56];
    v40 = *&v45[72];
    v41 = v45[88];
    v23 = *&v45[8];
    v24 = *&v45[24];
  }

  v36 = v23;
  v37 = v24;
  v25 = v39;
  *(v2 + 136) = v38;
  *(v2 + 152) = v25;
  *(v2 + 168) = v40;
  *(v2 + 184) = v41;
  v26 = v37;
  *(v2 + 104) = v36;
  *(v2 + 120) = v26;

  sub_1D5D04BD4(v13);

  sub_1D5ED34B0(v29, v16, v18);
  sub_1D679AA8C(&v45[8], &v30, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
  sub_1D5D04BEC(&v42);
  v27 = v45[104];
  if (v45[104] == 2)
  {
    v27 = *(a1 + 185);
  }

  *(v2 + 185) = v27;
  return v2;
}

void *sub_1D679BC28(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v78 = a1[6];
  v79 = v3;
  v80 = a1[8];
  v81 = *(a1 + 18);
  v4 = a1[3];
  v74 = a1[2];
  v75 = v4;
  v5 = a1[5];
  v76 = a1[4];
  v77 = v5;
  v6 = a1[1];
  v72 = *a1;
  v73 = v6;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7274590;
  sub_1D679C3C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v53 = *(*(v8 - 8) + 72);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  v52 = v9;
  v11 = (v10 + v9);
  if (a2)
  {
    v13 = *(a2 + 32);
    v12 = *(a2 + 40);

    v14 = sub_1D679A560();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v11 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v10 + v52) = v13;
  v11[2] = 0;
  v11[3] = 0;
  v11[1] = v12;
  v20 = v11 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  (v21)(v11, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v10, v68);
  swift_setDeallocating();
  sub_1D679C428(v11, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v7 + 56) = &type metadata for FormatInspectionGroup;
  *(v7 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v7 + 32) = v22;
  v23 = v68[1];
  *(v22 + 16) = v68[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v69;
  v24 = v53;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7274590;
  v26 = v25 + v52;
  v27 = sub_1D711F844(1701869908, 0xE400000000000000, 2003134806, 0xE400000000000000, (v25 + v52));
  v21(v25 + v52, 0, 1, v17, v27);
  if (a2)
  {
    v28 = *(a2 + 56);

    v29 = v28;
    v24 = v53;
    v30 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v29, (v26 + v53));
    v21(v26 + v53, 0, 1, v17, v30);
    v31 = *(a2 + 64);
    sub_1D5D04BD4(v31);
  }

  else
  {
    v32 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v26 + v53));
    v21(v26 + v53, 0, 1, v17, v32);
    v31 = 0xF000000000000007;
  }

  v33 = v26 + 2 * v24;
  sub_1D7125A4C(0x756F72676B636142, 0xEA0000000000646ELL, v31, v33);
  (v21)(v33, 0, 1, v17);
  if (a2)
  {
    v34 = *(a2 + 185);
  }

  else
  {
    v34 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v34, (v26 + 3 * v53));
  (v21)(v26 + 3 * v53, 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v25, v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v7 + 96) = &type metadata for FormatInspectionGroup;
  *(v7 + 104) = &off_1F518B2C0;
  v35 = swift_allocObject();
  *(v7 + 72) = v35;
  v36 = v70[1];
  *(v35 + 16) = v70[0];
  *(v35 + 32) = v36;
  *(v35 + 48) = v71;
  v66[6] = v78;
  v66[7] = v79;
  v66[8] = v80;
  v67 = v81;
  v66[2] = v74;
  v66[3] = v75;
  v66[4] = v76;
  v66[5] = v77;
  v66[0] = v72;
  v66[1] = v73;
  if (a2)
  {
    v37 = *(a2 + 80);
    v38 = *(a2 + 88);
    v39 = *(a2 + 96);
    sub_1D5ED34B0(v37, v38, v39);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = -2;
  }

  *&v60 = v37;
  *(&v60 + 1) = v38;
  LOBYTE(v61) = v39;
  v40 = sub_1D6D9893C(v66, &v60);
  sub_1D5ED348C(v60, *(&v60 + 1), v61);
  *(v7 + 136) = &type metadata for FormatInspection;
  *(v7 + 144) = &off_1F51E3FD0;
  *(v7 + 112) = v40;
  if (a2)
  {
    v41 = *(a2 + 152);
    v62 = *(a2 + 136);
    v63 = v41;
    v64 = *(a2 + 168);
    v65 = *(a2 + 184);
    v42 = *(a2 + 120);
    v60 = *(a2 + 104);
    v61 = v42;
    sub_1D679AA8C(&v60, &v54, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v46 = v63;
    v47 = v64;
    v48 = v65;
  }

  else
  {
    v43 = 0uLL;
    v48 = -2;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v54 = v43;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v49 = sub_1D686F740(&v72, &v54);
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v60 = v54;
  v61 = v55;
  sub_1D679AB00(&v60, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B49E48);
  *(v7 + 176) = &type metadata for FormatInspection;
  *(v7 + 184) = &off_1F51E3FD0;
  *(v7 + 152) = v49;
  v50 = sub_1D7073500(v7);
  swift_setDeallocating();
  sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v50;
}

void sub_1D679C3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D679C428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DebugFormatDebuggerSourceHighlight(uint64_t a1)
{
  result = qword_1EC88B600;
  if (!qword_1EC88B600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D679C4D4(uint64_t a1)
{
  sub_1D679CB48(319, &qword_1EDF194B0, sub_1D5BA6EF4);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FormatDebuggerContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D679C564@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D679CB48(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for FormatDebuggerContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  v13 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[5];
  v42 = a1[4];
  v43 = v17;
  v18 = a1[7];
  v44 = a1[6];
  v45 = v18;
  v19 = a1[1];
  v39[0] = *a1;
  v39[1] = v19;
  v20 = a1[3];
  v40 = a1[2];
  v41 = v20;
  v46[0] = v39[0];
  v46[1] = v19;
  v46[2] = v40;
  v47 = v20;
  v48 = v42;
  *v49 = v17;
  *&v49[16] = v44;
  v50 = v18;
  if (sub_1D5DEA380(v46) != 1)
  {
    v23 = *&v49[16];
    if (*&v49[16])
    {
      if (*(&v47 + 1))
      {
        v37 = a2;
        v24 = *&v49[24];
        v25 = v50;
        v34 = *(&v48 + 1);
        v35 = v48;
        v26 = *&v49[8];
        if (*&v49[8] == v47)
        {
          LODWORD(v36) = 1;
        }

        else
        {
          LODWORD(v36) = sub_1D72646CC();
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1D679CD2C(v26, v23, v24, v25, *(&v25 + 1));

        sub_1D679CCCC(v39, sub_1D679CB9C);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v36 & 1) != 0 && v24 == v35 && v25 == v34)
        {
          v28 = *(&v25 + 1);
          sub_1D679CD70(v26, v23, v24, v25, *(&v25 + 1));
          *v16 = *(&v25 + 1);
          goto LABEL_27;
        }

        sub_1D679CD70(v26, v23, v24, v25, *(&v25 + 1));
        a2 = v37;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_1D679CCCC(v39, sub_1D679CB9C);

        swift_bridgeObjectRelease_n();
      }

      *v16 = 0;
LABEL_28:
      v22 = v38;
      swift_storeEnumTagMultiPayload();
      sub_1D679CC64(v16, a2, type metadata accessor for DebugFormatDebuggerSourceHighlight);
      v21 = 0;
      return (*(v13 + 56))(a2, v21, 1, v22);
    }

    v37 = a2;
    v27 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {

      sub_1D679CCCC(v39, sub_1D679CB9C);
      v21 = 1;
      a2 = v37;
      v22 = v38;
      return (*(v13 + 56))(a2, v21, 1, v22);
    }

    v35 = v48;
    v36 = v47;
    v34 = *(&v48 + 1);

    sub_1D725B31C();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1D679CCCC(v39, sub_1D679CB9C);
      sub_1D679CBEC(v7);
LABEL_27:
      a2 = v37;
      goto LABEL_28;
    }

    sub_1D679CC64(v7, v12, type metadata accessor for FormatDebuggerContext);
    v30 = v12[2];
    v29 = v12[3];
    if (v36 == *v12 && v27 == v12[1])
    {

      sub_1D679CCCC(v39, sub_1D679CB9C);
    }

    else
    {
      v31 = sub_1D72646CC();

      sub_1D679CCCC(v39, sub_1D679CB9C);

      if ((v31 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v35 == v30 && v34 == v29)
    {
      sub_1D679CC64(v12, v16, type metadata accessor for FormatDebuggerContext);
      goto LABEL_27;
    }

LABEL_26:
    sub_1D679CCCC(v12, type metadata accessor for FormatDebuggerContext);
    goto LABEL_27;
  }

  v21 = 1;
  v22 = v38;
  return (*(v13 + 56))(a2, v21, 1, v22);
}

void sub_1D679CB48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D679CB9C()
{
  if (!qword_1EC88DD40)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DD40);
    }
  }
}

uint64_t sub_1D679CBEC(uint64_t a1)
{
  sub_1D679CB48(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D679CC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D679CCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D679CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v6 = a5;
  }
}

void sub_1D679CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t FormatArrangementComponentSubgroupSlot.properties.getter()
{
  sub_1D5B8EF68();
}

uint64_t FormatArrangementComponentSubgroupSlot.selectors.getter()
{
  sub_1D5B8EF70();
}

uint64_t FormatArrangementComponentSubgroupSlot.slot.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D679CEAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = type metadata accessor for FormatArrangementComponentSubgroupSlot(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = a3(v6);
}

uint64_t static FormatArrangementComponentSubgroupSlot.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (sub_1D6339F3C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D5BFC390(v3, v4);
}

uint64_t sub_1D679D034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
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

uint64_t sub_1D679D15C(char a1)
{
  if (!a1)
  {
    return 1953459315;
  }

  if (a1 == 1)
  {
    return 0x69747265706F7270;
  }

  return 0x726F7463656C6573;
}

uint64_t sub_1D679D1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D679D034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D679D1F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D679D244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementComponentSubgroupSlot.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatArrangementComponentSubgroupSlot.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - v9;
  v11 = *v4;
  v24 = v4[1];
  v25 = v11;
  v12 = v4[2];
  v22 = v4[3];
  v23 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  LOBYTE(v28) = 0;
  v13 = v26;
  sub_1D72643FC();
  if (!v13)
  {
    v14 = v22;
    v28 = v23;
    v27 = 1;
    sub_1D674AB04(0);
    v16 = v15;
    v17 = sub_1D674AB6C(&qword_1EDF20940, sub_1D674AB04, &protocol conformance descriptor for FormatCodingEmptyArrayStrategy<A>);

    KeyedEncodingContainer.encode<A>(_:forKey:)(&v28, &v27, v6, v16, v17);

    v28 = v14;
    v27 = 2;
    sub_1D5B55A8C();
    v19 = v18;
    v20 = sub_1D674AB6C(&qword_1EDF21B00, sub_1D5B55A8C, &protocol conformance descriptor for FormatCodingEmptySetStrategy<A>);

    KeyedEncodingContainer.encode<A>(_:forKey:)(&v28, &v27, v6, v19, v20);
  }

  return (*(v7 + 8))(v10, v6);
}

void FormatArrangementComponentSubgroupSlot.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v27 = a4;
  type metadata accessor for FormatArrangementComponentSubgroupSlot.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v7 = sub_1D726435C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v8;
    v13 = v27;
    LOBYTE(v29) = 0;
    v14 = sub_1D72642BC();
    v16 = v15;
    v26 = v14;
    v28 = 1;
    sub_1D674AB04(0);
    v18 = v17;
    v19 = sub_1D674AB6C(&qword_1EDF20940, sub_1D674AB04, &protocol conformance descriptor for FormatCodingEmptyArrayStrategy<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v18, v19, &v29);
    v25 = v29;
    v28 = 2;
    sub_1D5B55A8C();
    v21 = v20;
    v22 = sub_1D674AB6C(&qword_1EDF21B00, sub_1D5B55A8C, &protocol conformance descriptor for FormatCodingEmptySetStrategy<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v21, v22, &v29);
    (*(v12 + 8))(v11, v7);
    v23 = v29;
    v24 = v25;
    *v13 = v26;
    v13[1] = v16;
    v13[2] = v24;
    v13[3] = v23;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t FormatArrangementComponentSubgroupSlot.identifier.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t sub_1D679D8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for DebugInspectViewItem(uint64_t a1)
{
  result = qword_1EC88B618;
  if (!qword_1EC88B618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D679D9D4(uint64_t a1)
{
  sub_1D679DBF4(319, &qword_1EC88A5B8, sub_1D5F17E28, " value ");
  if (v1 <= 0x3F)
  {
    sub_1D679DB14();
    if (v2 <= 0x3F)
    {
      sub_1D5B49474(319, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
      if (v3 <= 0x3F)
      {
        sub_1D679DB78(319);
        if (v4 <= 0x3F)
        {
          sub_1D679DBF4(319, &qword_1EC892160, sub_1D679DC64, " value ");
          if (v5 <= 0x3F)
          {
            sub_1D679DBF4(319, &qword_1EC88B640, type metadata accessor for FormatPackageInventory, " inventory ");
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D679DB14()
{
  if (!qword_1EC88B628)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88B628);
    }
  }
}

void sub_1D679DB78(uint64_t a1)
{
  if (!qword_1EC88B630)
  {
    sub_1D5B49474(255, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88B630);
    }
  }
}

void sub_1D679DBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D679DC64(uint64_t a1)
{
  if (!qword_1EC88B638)
  {
    sub_1D725F88C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88B638);
    }
  }
}

unint64_t sub_1D679DD08()
{
  result = qword_1EC88B648;
  if (!qword_1EC88B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B648);
  }

  return result;
}

uint64_t sub_1D679DD6C(void *a1)
{
  v3 = v1;
  sub_1D67A1C00(0, &qword_1EC88B700, sub_1D67A1BAC, &type metadata for A12_V23.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67A1BAC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D67A1C68(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D679DFB4(uint64_t a1)
{
  v2 = sub_1D67A1BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D679DFF0(uint64_t a1)
{
  v2 = sub_1D67A1BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D679E02C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D67A190C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D679E08C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D67A157C();

  return sub_1D725A24C();
}

uint64_t sub_1D679E108@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D67A1C00(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D679E1C4(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v83 = a2;
  v71 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v95 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v71 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for GroupLayoutContext(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  v85 = type metadata accessor for GroupLayoutBindingContext(0);
  v76 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v82 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v77 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v83, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v73 = v29;
  (*(v14 + 8))(v17, v13);
  v93 = &type metadata for A12_V23;
  v30 = sub_1D5ECE724();
  v94 = v30;
  LOBYTE(v91) = v27;
  LOBYTE(v23) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v86[0] = sub_1D7264C5C();
  v86[1] = v32;
  v89 = 95;
  v90 = 0xE100000000000000;
  v87 = 45;
  v88 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  sub_1D5B68374(&v91, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v38 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v76 + 56))(v31 + v38, 0, 1, v85);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v75, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v78 + 56))(v31 + v39, 0, 1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v93 = &type metadata for A12_V23;
  v94 = v30;
  v40 = v81;
  LOBYTE(v91) = v23;
  *(&v91 + 1) = v28;
  v92 = v5;
  sub_1D5BE3ED8(v83, v81, v77);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v42 = MEMORY[0x1E69E7CC0];
  v83 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v43 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v44 = sub_1D5C0F8FC(0, 1, 1, v42);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v44[2] = v47;
    v48 = &v44[2 * v46];
    v48[4] = sub_1D63106DC;
    v48[5] = 0;
    *v43 = v44;
    swift_endAccess();
    if (!*(*&v82[v85[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v49 & 1) == 0) || (v50 = , v47 = sub_1D5C14D80(v50), , !v47))
    {
      if (!qword_1F5113DC0)
      {

        v59 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }

      v86[0] = &unk_1F5113DA0;
      v4 = v72;
      sub_1D5E239F4(v86);
      if (v4)
      {
        goto LABEL_38;
      }

      v56 = v86[0];
      if (*(v86[0] + 2))
      {
LABEL_19:
        v57 = *(v56 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v58, "FeedHeadline");
        v58[13] = 0;
        *(v58 + 7) = -5120;
        *(v58 + 2) = 0;
        *(v58 + 3) = 0;
        *(v58 + 4) = 4;
        *(v58 + 5) = v57;
        *(v58 + 6) = 0;
        *(v58 + 7) = 0;
        v58[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE792C(v40, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v91);
        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    v79 = v31;
    v40 = *(v47 + 16);
    if (!v40)
    {
      break;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v80;
    v44 = v84;
    while (1)
    {
      v45 = *(v47 + 16);
      if (v51 >= v45)
      {
        break;
      }

      v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = *(v43 + 72);
      sub_1D5BE3ED8(v47 + v53 + v46 * v51, v44, type metadata accessor for FeedHeadline);
      if ((v44[4] & 4) != 0)
      {
        sub_1D5BDA904(v44, v95, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v52 + 2) + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        v31 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v31 >= v55 >> 1)
        {
          sub_1D5C0F91C((v55 > 1), v31 + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        *(v52 + 2) = v31 + 1;
        sub_1D5BDA904(v95, &v52[v53 + v31 * v46], type metadata accessor for FeedHeadline);
        v44 = v84;
      }

      else
      {
        sub_1D5BE792C(v44, type metadata accessor for FeedHeadline);
      }

      if (v40 == ++v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    v44 = sub_1D5C0F8FC((v45 > 1), v47, 1, v44);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v60 = v82;
  if ((*v82 & 1) == 0)
  {

    sub_1D62F071C(v52);
    v62 = v61;

    v52 = v62;
  }

  v63 = *&v60[v85[18]];
  v64 = *&v60[v85[19]];
  if (__OFSUB__(v63, v64))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1D5C0FAD4(v52, v63 - v64);
  v59 = sub_1D5C11E10(&unk_1F5113DA0, v65, v47);

  if (v59)
  {

    goto LABEL_28;
  }

  v59 = sub_1D5C11E10(&unk_1F5113DA0, v52, v47);

  if (!v59)
  {
    v86[0] = &unk_1F5113DA0;
    v4 = v72;
    sub_1D5E239F4(v86);
    if (v4)
    {
LABEL_38:

      __break(1u);
      return;
    }

    v56 = v86[0];
    v40 = v81;
    if (*(v86[0] + 2))
    {
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  strcpy(v86, "FeedHeadline");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  v86[2] = 0;
  v86[3] = 0;

  v67 = sub_1D5C107C4(v66);

  sub_1D5BDACA8(v86, v67);
  swift_setDeallocating();

  v40 = v81;
  v31 = v79;
LABEL_29:
  v68 = type metadata accessor for A12_V23.Bound(0);
  v69 = v71;
  v71[3] = v68;
  v69[4] = sub_1D67A1C68(&qword_1EC88B660, type metadata accessor for A12_V23.Bound, &unk_1D72EAFA8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  *boxed_opaque_existential_1 = v31;
  sub_1D5B63F14(&v91, (boxed_opaque_existential_1 + 1));
  sub_1D5BDA904(v40, boxed_opaque_existential_1 + *(v68 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v68 + 28)) = v59;
}

void sub_1D679ED18(_BYTE *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  *&v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A12_V23.Bound(0);
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v10 = *(v9 + 40);
  v11 = v8;
  v42 = v8;
  v12 = *(v8 + v10);
  v13 = *(v12 + 16);
  v14 = *(v11 + *(v9 + 32));
  sub_1D5B68374(v13 + 16, v53);
  sub_1D5B68374(v13 + 56, v52);
  v15 = v14 * *(v13 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v53, inited + 16);
  sub_1D5B63F14(v52, inited + 56);
  *(inited + 96) = v15;
  v51[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v51, v54);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  sub_1D5B49474(0, &qword_1EDF27C08, &protocol descriptor for HeadlineViewStylerType);
  v17 = 2;
  v18 = sub_1D726276C();
  *(v18 + 16) = 2;
  sub_1D5B68374(v54, v18 + 32);
  sub_1D5B63F14(v54, v18 + 72);
  v19 = *(v12 + 16);
  sub_1D5B68374(v19 + 16, v53);
  sub_1D5B68374(v19 + 56, v52);
  v20 = v14 * *(v19 + 96);
  v21 = swift_initStackObject();
  sub_1D5B63F14(v53, v21 + 16);
  sub_1D5B63F14(v52, v21 + 56);
  *(v21 + 96) = v20;
  v51[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v51, v54);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v21 + 16));
  __swift_destroy_boxed_opaque_existential_1((v21 + 56));
  v22 = sub_1D6F50B74(v54, *(*(v2 + *(v7 + 28)) + 16) - 1);
  *&v54[0] = v18;
  sub_1D698609C(v22);
  v23 = *&v54[0];
  v43 = v2;
  v50[2] = v2;

  v25 = sub_1D6310828(v24, v23, sub_1D67A1508, v50);

  v26 = *(v25 + 16);
  if (v26 < 2)
  {
    v17 = *(v25 + 16);
  }

  v27 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v29 = (2 * v26) | 1;
  v30 = *MEMORY[0x1E69D7130];
  v31 = sub_1D7259D1C();
  (*(*(v31 - 8) + 104))(v6, v30, v31);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
  v45 = v25;
  v46 = v25;
  v47 = v28;
  v48 = v17;
  v49 = v29;
  sub_1D67A164C(0, &qword_1EC88B680, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v42 = sub_1D725A4CC();
  sub_1D725A4DC();
  v32 = v55;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v33 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v40 = v54[1];
  v41 = v54[0];
  *&v54[0] = v25;
  *&v53[0] = v32;
  MEMORY[0x1EEE9AC00](v33, v34);

  v35 = sub_1D725C00C();

  v36 = v44;
  *v44 = 0;
  v37 = v41;
  *(v36 + 24) = v40;
  *(v36 + 8) = v37;
  *&v54[0] = v35;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v38 = sub_1D72623BC();

  v39 = MEMORY[0x1E69E7CC0];
  *(v36 + 5) = v38;
  *(v36 + 6) = v39;
}

uint64_t sub_1D679F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D679F3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 12;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D67A164C(0, &qword_1EC88B6A0, MEMORY[0x1E69D7150]);
  sub_1D67A1608(&qword_1EC88B6A8, &qword_1EC88B6A0, v19, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D679F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v48 = sub_1D67A1528;
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v36 - v11);
  v66 = a1;
  v38 = a1;
  v13 = sub_1D725994C();
  v50 = v13;
  v14 = swift_allocBox();
  v53 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v52 = *(v15 + 104);
  v54 = v15 + 104;
  v52(v16);
  *v12 = v14;
  v51 = *MEMORY[0x1E69D73C0];
  v17 = *(v9 + 104);
  v17(v12);
  v47 = v9 + 104;
  v18 = v17;
  v46 = v17;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
  v60 = v20;
  v36[1] = sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v19, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v21 = *(v9 + 8);
  v39 = v9 + 8;
  v21(v12, v8);
  v66 = a1;
  v49 = *MEMORY[0x1E69D74A8];
  v18(v12);
  sub_1D67A16D0(0);
  v45 = v22;
  sub_1D67A1C00(0, &qword_1EC88B6C8, v48, &type metadata for A12_V23.Layout, MEMORY[0x1E69D70D8]);
  v42 = v23;
  v24 = *(v23 - 8);
  v48 = *(v24 + 72);
  v44 = *(v24 + 80);
  v25 = (v44 + 32) & ~v44;
  v37 = v25;
  v26 = swift_allocObject();
  v43 = xmmword_1D7273AE0;
  *(v26 + 16) = xmmword_1D7273AE0;
  v41 = *MEMORY[0x1E69D7098];
  v40 = *(v24 + 104);
  v40(v26 + v25);
  v65 = v55;
  sub_1D72599EC();

  v27 = v21;
  v21(v12, v8);
  v28 = v38;
  v66 = v38;
  v29 = v50;
  v30 = swift_allocBox();
  (v52)(v31, v53, v29);
  *v12 = v30;
  v32 = v46;
  (v46)(v12, v51, v8);
  sub_1D7259A9C();
  v27(v12, v8);
  v66 = v28;
  (v32)(v12, v49, v8);
  v33 = v37;
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  (v40)(v34 + v33, v41, v42);
  v61 = v56;
  v62 = v57;
  v63 = v58;
  v64 = v59;
  sub_1D72599EC();

  return (v27)(v12, v8);
}

uint64_t sub_1D679FBB4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
  sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D679FE58(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
  sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D67A0428(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
  sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D67A0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 != 3)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v21 = *(v17 + 72);
  v30 = *MEMORY[0x1E69D7490];
  v28 = (v11 + 8);
  v29 = (v11 + 104);
  v31 = v21;
  v22 = a3 + v21 * a4;
  v27 = a1;
  do
  {
    sub_1D5BE3ED8(v22, v19, type metadata accessor for HeadlineViewLayout.Context);
    v32 = a1;
    v23 = swift_allocObject();
    *(v23 + 16) = 4;
    *v14 = v23;
    v24 = (*v29)(v14, v30, v10);
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
    sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v26, MEMORY[0x1E69D6F40]);
    sub_1D7259A2C();
    a1 = v27;
    (*v28)(v14, v10);
    sub_1D5BE792C(v19, type metadata accessor for HeadlineViewLayout.Context);
    v22 += v31;
    --v20;
  }

  while (v20);
}

uint64_t sub_1D67A0D48(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = sub_1D725A36C();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v4);
  v41 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D725A19C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineViewLayout.Options(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A1C00(0, &qword_1EC88B698, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &KeyPath - v18;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v20 = *MEMORY[0x1E69D74A8];
  v21 = *(v16 + 104);
  v43 = v15;
  v21(v19, v20, v15);
  v22 = v10[7];
  v23 = *MEMORY[0x1E69D7348];
  v24 = sub_1D725A34C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v13[v22], v23, v24);
  (*(v25 + 56))(&v13[v22], 0, 1, v24);
  v26 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[8]] = 0;
  v27 = *v26;
  *&v13[v10[9]] = v27;
  v28 = qword_1EDF386E8;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v39;
  *(&KeyPath - 4) = v38;
  *(&KeyPath - 3) = v13;
  v36 = v8;
  (*(v3 + 104))(v41, *MEMORY[0x1E69D7378], v33, v32);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v40 + 8))(v8, v42);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  v34 = MEMORY[0x1E69D6F38];
  sub_1D67A164C(0, &qword_1EC88B6B0, MEMORY[0x1E69D6F38]);
  sub_1D67A1608(&qword_1EC88B6B8, &qword_1EC88B6B0, v34, MEMORY[0x1E69D6F40]);
  v36 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v16 + 8))(v19, v43);
}

uint64_t sub_1D67A1250@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V23.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D67A1364(uint64_t a1)
{
  *(a1 + 8) = sub_1D67A1394();
  result = sub_1D67A13E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67A1394()
{
  result = qword_1EC88B650;
  if (!qword_1EC88B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B650);
  }

  return result;
}

unint64_t sub_1D67A13E8()
{
  result = qword_1EC88B658;
  if (!qword_1EC88B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B658);
  }

  return result;
}

uint64_t type metadata accessor for A12_V23.Bound(uint64_t a1)
{
  result = qword_1EC88B668;
  if (!qword_1EC88B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67A14B0(uint64_t a1)
{
  result = sub_1D67A1C68(&qword_1EC88B678, type metadata accessor for A12_V23.Bound, &unk_1D72EAF80);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67A1528()
{
  result = qword_1EC88B688;
  if (!qword_1EC88B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B688);
  }

  return result;
}

unint64_t sub_1D67A157C()
{
  result = qword_1EC88B690;
  if (!qword_1EC88B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B690);
  }

  return result;
}

uint64_t sub_1D67A1608(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D67A164C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D67A164C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V23.Layout;
    v8[1] = &type metadata for A12_V23.Layout.Attributes;
    v8[2] = sub_1D67A1528();
    v8[3] = sub_1D67A157C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D67A16D0(uint64_t a1)
{
  if (!qword_1EC88B6C0)
  {
    sub_1D67A1C00(255, &qword_1EC88B6C8, sub_1D67A1528, &type metadata for A12_V23.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88B6C0);
    }
  }
}

unint64_t sub_1D67A17B0()
{
  result = qword_1EC88B6D0;
  if (!qword_1EC88B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B6D0);
  }

  return result;
}

unint64_t sub_1D67A1808()
{
  result = qword_1EC88B6D8;
  if (!qword_1EC88B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B6D8);
  }

  return result;
}

unint64_t sub_1D67A1860()
{
  result = qword_1EC88B6E0;
  if (!qword_1EC88B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B6E0);
  }

  return result;
}

unint64_t sub_1D67A18B8()
{
  result = qword_1EC88B6E8;
  if (!qword_1EC88B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B6E8);
  }

  return result;
}

uint64_t sub_1D67A190C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D67A1C00(0, &qword_1EC88B6F0, sub_1D67A1BAC, &type metadata for A12_V23.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67A1BAC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D67A1C68(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D67A1BAC()
{
  result = qword_1EC88B6F8;
  if (!qword_1EC88B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B6F8);
  }

  return result;
}

void sub_1D67A1C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D67A1C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D67A1CC4()
{
  result = qword_1EC88B708;
  if (!qword_1EC88B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B708);
  }

  return result;
}

unint64_t sub_1D67A1D1C()
{
  result = qword_1EC88B710;
  if (!qword_1EC88B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B710);
  }

  return result;
}

unint64_t sub_1D67A1D74()
{
  result = qword_1EC88B718;
  if (!qword_1EC88B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B718);
  }

  return result;
}

uint64_t ArticleURLHandlerMatchIDProvider.articleIDPathComponent.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArticleURLHandlerMatchIDProvider.paywallArticleIDPathComponent.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ArticleURLHandlerMatchIDProvider.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0x49656C6369747261;
  result[3] = 0xE900000000000044;
  result[4] = 0xD000000000000010;
  result[5] = 0x80000001D73D4590;
  return result;
}

void *ArticleURLHandlerMatchIDProvider.init()()
{
  result = v0;
  v0[2] = 0x49656C6369747261;
  v0[3] = 0xE900000000000044;
  v0[4] = 0xD000000000000010;
  v0[5] = 0x80000001D73D4590;
  return result;
}

uint64_t ArticleURLHandlerMatchIDProvider.articleIDFromURLHandlerMatch(_:)()
{
  v0 = sub_1D725AF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v19 - v7;
  sub_1D725AFAC();
  v9 = sub_1D725AF9C();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v8, v0);
  if (v11)
  {
    return v9;
  }

  sub_1D725AFAC();
  v9 = sub_1D725AF9C();
  v14 = v13;
  result = (v12)(v4, v0);
  if (!v14)
  {
    return v9;
  }

  v21 = v9;
  v22 = v14;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = sub_1D5C73AB0(v9, v14);
    if (v17)
    {

      sub_1D67A2140(1);
      v19 = v21;
      v20 = v22;
      sub_1D67A21C8(0);
      sub_1D67A2224();
      v19 = sub_1D726234C();
      v20 = v18;
      sub_1D726228C();
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ArticleURLHandlerMatchIDProvider.deinit()
{

  return v0;
}

uint64_t ArticleURLHandlerMatchIDProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D67A2140(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1D726224C();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

void sub_1D67A21C8(uint64_t a1)
{
  if (!qword_1EDF04170)
  {
    sub_1D5EC10B0();
    v1 = sub_1D72640CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04170);
    }
  }
}

unint64_t sub_1D67A2224()
{
  result = qword_1EDF04178;
  if (!qword_1EDF04178)
  {
    sub_1D67A21C8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04178);
  }

  return result;
}

__n128 sub_1D67A22E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v38[1] = a4;
  v39 = a1;
  v41 = a2;
  v40 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  v16 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SharedItem(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = [objc_msgSend(a3 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v21)
  {
    sub_1D726207C();
    v21 = sub_1D726203C();
  }

  v22 = [*(v6 + 96) hasMutedSubscriptionForTagID_];

  v24 = *(v6 + 40);
  v23 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v24);
  (*(v23 + 16))(v47, a3, v24, v23);
  v25 = v47[0];
  v26 = a3;
  v27 = v40;
  v28 = &v15[*(v40 + 20)];
  v42 = v19;
  sub_1D5BC7B68(v19, v28, type metadata accessor for FeedItem.SharedState);
  *v15 = v25;
  v15[*(v27 + 24)] = v22;
  FeedContext.premiumBadge(for:)(v26, v47);
  v29 = v47[0];
  sub_1D5BC7B68(v15, v11, type metadata accessor for FeedRecipe.State);
  sub_1D5C3AE10(v6 + 56, v47, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  sub_1D5C3AE10(v6 + 104, v45, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
  sub_1D5B68374(v6 + 144, v43);
  *(a5 + 24) = 1;
  *(a5 + 32) = xmmword_1D727C320;
  *a5 = v39;
  *(a5 + 8) = v41;
  *(a5 + 16) = 0;
  *(a5 + 56) = v26;
  v30 = type metadata accessor for FeedRecipe(0);
  sub_1D5BC7B68(v11, a5 + v30[9], type metadata accessor for FeedRecipe.State);
  sub_1D5C3AE10(v47, a5 + v30[10], &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  *(a5 + v30[11]) = v29;
  LODWORD(v23) = v11[*(v27 + 24)];

  v31 = v26;
  v32 = v11;
  if (v23 == 1)
  {
    v33 = [v31 sourceChannel];
  }

  else
  {
    v33 = 2;
  }

  sub_1D5BFB774(v47, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  sub_1D67A2788(v32, type metadata accessor for FeedRecipe.State);
  sub_1D67A2788(v15, type metadata accessor for FeedRecipe.State);
  sub_1D67A2788(v42, type metadata accessor for FeedItem.SharedState);
  *(a5 + 48) = v33;
  v34 = a5 + v30[12];
  v35 = v45[1];
  *v34 = v45[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v46;
  v36 = a5 + v30[13];
  *(v36 + 32) = v44;
  result = v43[1];
  *v36 = v43[0];
  *(v36 + 16) = result;
  return result;
}

uint64_t sub_1D67A2700()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D5BFB774(v0 + 56, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);

  sub_1D5BFB774(v0 + 104, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1D67A2788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67A27E8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_1D7257B5C();
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A4BFC(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v96 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  sub_1D7257BCC();
  sub_1D67A42D8(v14, v10, v15);
  v16 = sub_1D7257C7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_1D67A4B8C(v10, &unk_1EDF43B50, MEMORY[0x1E69681B8], v18);
  }

  else
  {
    v19 = sub_1D7257B6C();
    v20 = *(v17 + 8);
    v17 += 8;
    v20(v10, v16);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v97 = v14;
  v102 = v19[2];
  if (v102)
  {
    v21 = 0;
    v101 = v19 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v99 = v105 + 8;
    v100 = v105 + 16;
    v22 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v21 >= v19[2])
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:

        sub_1D67A4B8C(v17, &unk_1EDF43B50, MEMORY[0x1E69681B8], v82);

LABEL_94:

        return;
      }

      v24 = v104;
      v25 = v105;
      v26 = v103;
      (*(v105 + 16))(v103, &v101[*(v105 + 72) * v21], v104);
      v17 = sub_1D7257B3C();
      v28 = v27;
      v29 = sub_1D7257B4C();
      v31 = v30;
      (*(v25 + 8))(v26, v24);
      if (!v31)
      {
        v42 = sub_1D5B69D90(v17, v28);
        v44 = v43;

        if (v44)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v22;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D6D7DE64();
            v22 = v106;
          }

          sub_1D6713938(v42, v22, v46);
        }

        goto LABEL_9;
      }

      v32 = v22;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v106 = v32;
      v35 = sub_1D5B69D90(v17, v28);
      v36 = v32[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_96;
      }

      v39 = v34;
      if (v32[3] >= v38)
      {
        if (v33)
        {
          if (v34)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1D6D7DE64();
          if (v39)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_1D6D666FC(v38, v33);
        v40 = sub_1D5B69D90(v17, v28);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_114;
        }

        v35 = v40;
        if (v39)
        {
LABEL_8:

          v22 = v106;
          v23 = (v106[7] + 16 * v35);
          *v23 = v29;
          v23[1] = v31;

          goto LABEL_9;
        }
      }

      v22 = v106;
      v106[(v35 >> 6) + 8] |= 1 << v35;
      v47 = (v22[6] + 16 * v35);
      *v47 = v17;
      v47[1] = v28;
      v48 = (v22[7] + 16 * v35);
      *v48 = v29;
      v48[1] = v31;
      v49 = v22[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_97;
      }

      v22[2] = v51;
LABEL_9:
      if (v102 == ++v21)
      {
        goto LABEL_28;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_28:

  if (!v22[2])
  {
    sub_1D67A4B8C(v97, &unk_1EDF43B50, MEMORY[0x1E69681B8], v52);

    return;
  }

  v53 = sub_1D5B69D90(0x7865646E69, 0xE500000000000000);
  v17 = v97;
  v19 = Strong;
  if ((v55 & 1) == 0)
  {
LABEL_93:
    sub_1D67A4B8C(v17, &unk_1EDF43B50, MEMORY[0x1E69681B8], v54);
    goto LABEL_94;
  }

  v56 = (v22[7] + 16 * v53);
  v58 = *v56;
  v57 = v56[1];
  v59 = HIBYTE(v57) & 0xF;
  v60 = v58 & 0xFFFFFFFFFFFFLL;
  if ((v57 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_98;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {

    sub_1D5FD15E0(v58, v57, 10);
    v64 = v83;
    v85 = v84;

    if ((v85 & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_93;
  }

  if ((v57 & 0x2000000000000000) != 0)
  {
    v106 = v58;
    v107 = v57 & 0xFFFFFFFFFFFFFFLL;
    if (v58 == 43)
    {
      if (v59)
      {
        if (--v59)
        {
          v64 = 0;
          v74 = &v106 + 1;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v64;
            if ((v64 * 10) >> 64 != (10 * v64) >> 63)
            {
              break;
            }

            v64 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v59)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }
    }

    else
    {
      if (v58 != 45)
      {
        if (v59)
        {
          v64 = 0;
          v79 = &v106;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = 10 * v64;
            if ((v64 * 10) >> 64 != (10 * v64) >> 63)
            {
              break;
            }

            v64 = v81 + v80;
            if (__OFADD__(v81, v80))
            {
              break;
            }

            ++v79;
            if (!--v59)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v59)
      {
        if (--v59)
        {
          v64 = 0;
          v68 = &v106 + 1;
          while (1)
          {
            v69 = *v68 - 48;
            if (v69 > 9)
            {
              break;
            }

            v70 = 10 * v64;
            if ((v64 * 10) >> 64 != (10 * v64) >> 63)
            {
              break;
            }

            v64 = v70 - v69;
            if (__OFSUB__(v70, v69))
            {
              break;
            }

            ++v68;
            if (!--v59)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
    }

    __break(1u);
LABEL_114:
    sub_1D726493C();
    __break(1u);
    return;
  }

  if ((v58 & 0x1000000000000000) == 0)
  {
    goto LABEL_108;
  }

  for (i = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D7263E5C())
  {
    v63 = *i;
    if (v63 == 43)
    {
      if (v60 < 1)
      {
        goto LABEL_112;
      }

      v59 = v60 - 1;
      if (v60 != 1)
      {
        v64 = 0;
        if (!i)
        {
          goto LABEL_83;
        }

        v71 = i + 1;
        while (1)
        {
          v72 = *v71 - 48;
          if (v72 > 9)
          {
            break;
          }

          v73 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            break;
          }

          v64 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            break;
          }

          ++v71;
          if (!--v59)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v63 == 45)
    {
      if (v60 < 1)
      {
        goto LABEL_110;
      }

      v59 = v60 - 1;
      if (v60 != 1)
      {
        v64 = 0;
        if (!i)
        {
          goto LABEL_83;
        }

        v65 = i + 1;
        while (1)
        {
          v66 = *v65 - 48;
          if (v66 > 9)
          {
            break;
          }

          v67 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            break;
          }

          v64 = v67 - v66;
          if (__OFSUB__(v67, v66))
          {
            break;
          }

          ++v65;
          if (!--v59)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v60)
    {
      v64 = 0;
      if (!i)
      {
LABEL_83:
        LOBYTE(v59) = 0;
        goto LABEL_92;
      }

      while (1)
      {
        v77 = *i - 48;
        if (v77 > 9)
        {
          break;
        }

        v78 = 10 * v64;
        if ((v64 * 10) >> 64 != (10 * v64) >> 63)
        {
          break;
        }

        v64 = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          break;
        }

        ++i;
        if (!--v60)
        {
          goto LABEL_83;
        }
      }
    }

LABEL_91:
    v64 = 0;
    LOBYTE(v59) = 1;
LABEL_92:
    v110 = v59;
    if (v59)
    {
      goto LABEL_93;
    }

LABEL_100:

    sub_1D725B31C();

    if ((v64 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_108:
    ;
  }

  if (v64 >= v106[2])
  {
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v86 = &v106[4 * v64];
  v88 = v86[4];
  v87 = v86[5];
  v89 = v86[6];
  v90 = v86[7];

  v91 = v19 + OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_onShowSourceMap;
  swift_beginAccess();
  v93 = *v91;
  if (*v91)
  {
    v94 = *(v91 + 1);
    swift_endAccess();
    v106 = v88;
    v107 = v87;
    v108 = v89;
    v109 = v90;

    v93(&v106);
    sub_1D5B74328(v93, v94);

    sub_1D67A4B8C(v97, &unk_1EDF43B50, MEMORY[0x1E69681B8], v95);
  }

  else
  {
    sub_1D67A4B8C(v97, &unk_1EDF43B50, MEMORY[0x1E69681B8], v92);
    swift_endAccess();
  }
}

char *sub_1D67A317C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_onShowSourceMap];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_label;
  *&v1[v4] = [objc_allocWithZone(sub_1D725D81C()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_separatorView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_textLink] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_linkHandler;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for FormatLabelLinkHandler()) init];
  *&v1[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_editor] = a1;
  v22.receiver = v1;
  v22.super_class = ObjectType;

  v8 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView;
  v10 = *&v8[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView];
  v11 = v8;
  [v11 addSubview_];
  v12 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_separatorView;
  [v11 addSubview_];
  v13 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_label;
  [*&v8[v9] addSubview_];
  v14 = *&v8[v9];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor_];

  [*&v8[v9] setShowsHorizontalScrollIndicator_];
  [*&v8[v9] setAlwaysBounceHorizontal_];
  v18 = *&v11[v12];
  v19 = [v15 separatorColor];
  [v18 setBackgroundColor_];

  [*&v8[v9] _setHiddenPocketEdges_];
  [*&v11[v13] setUserInteractionEnabled_];
  swift_unknownObjectWeakAssign();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  return v11;
}

void sub_1D67A34F0(uint64_t a1)
{

  sub_1D725B31C();

  v2 = sub_1D67A358C(v3);

  [*(a1 + OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_label) setAttributedText_];
}

id sub_1D67A358C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v3 = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x1E69DB970]];
  v4 = *(a1 + 16);

  v27 = v4;
  if (v4)
  {
    v5 = 0;
    v26 = v4 - 1;
    v6 = (a1 + 56);
    do
    {
      v7 = v2;
      v8 = *(v6 - 2);
      v30 = *(v6 - 1);
      v31 = *(v6 - 3);
      v28 = *v6;

      sub_1D725B31C();

      v41[4] = v37;
      v41[5] = v38;
      v41[6] = v39;
      v41[7] = v40;
      v41[0] = v33;
      v41[1] = v34;
      v41[2] = v35;
      v41[3] = v36;
      if (sub_1D5DEA380(v41) == 1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v10 = *(&v36 + 1);
        v9 = v36;
        v12 = *(&v37 + 1);
        v11 = v37;
      }

      v32[4] = v37;
      v32[5] = v38;
      v32[6] = v39;
      v32[7] = v40;
      v32[0] = v33;
      v32[1] = v34;
      v32[2] = v35;
      v32[3] = v36;
      sub_1D67A436C(v32);
      v29 = v5;
      if (v10)
      {
        if (v8)
        {
          if (v9 == v31 && v10 == v8)
          {

LABEL_16:
            if (v11 == v30)
            {
              swift_bridgeObjectRelease_n();
              v14 = &selRef_labelColor;
              v15 = v12 == v28;
              v2 = v7;
              if (v15)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }

          else
          {
            v13 = sub_1D72646CC();

            if (v13)
            {
              goto LABEL_16;
            }
          }

          swift_bridgeObjectRelease_n();
          v2 = v7;
          goto LABEL_21;
        }
      }

      else
      {
        if (!v8)
        {

          v14 = &selRef_labelColor;
          v2 = v7;
          goto LABEL_22;
        }
      }

      v2 = v7;

LABEL_21:
      v14 = &selRef_secondaryLabelColor;
LABEL_22:
      v16 = [objc_opt_self() *v14];
      sub_1D67A43C8(0x747865742E636F64, 0xE800000000000000, v3, v16);
      v18 = v17;
      [v2 appendAttributedString_];

      MEMORY[0x1DA6F9910](v31, v8);
      MEMORY[0x1DA6F9910](58, 0xE100000000000000);
      v19 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v19);

      v21 = sub_1D67A4588(47, 0xE100000000000000, v3, v16, v5, 0, v20);

      [v2 appendAttributedString_];

      if (v5 < v26)
      {
        v22 = [objc_opt_self() systemGray2Color];
        v24 = sub_1D67A4588(0x2020207C2020, 0xE600000000000000, v3, v22, 0, 1, v23);

        [v2 appendAttributedString_];
      }

      ++v5;
      v6 += 4;
    }

    while (v27 != v29 + 1);
  }

  return v2;
}

void sub_1D67A39EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D67A358C(a1);
  [v2 bounds];
  CGRectGetHeight(v33);
  sub_1D726312C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_label];
  [v12 setAttributedText_];
  sub_1D726328C();
  [v2 bounds];
  CGRectGetHeight(v34);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  CGRectGetHeight(v35);
  sub_1D72632EC();
  [v12 setFrame_];
  v13 = *&v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView];
  sub_1D726335C();
  [v13 setContentSize_];
  v31 = v3;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  type metadata accessor for FormatTextLink();
  swift_allocObject();
  sub_1D613DE0C(v31, v15, v17, v19, v21);
  v23 = v22;
  *&v2[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_textLink] = v22;

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D6CAB728(v23, sub_1D67A42D0, v24);

  [v13 contentSize];
  v26 = v25;
  [v13 bounds];
  if (CGRectGetWidth(v36) >= v26)
  {
    [v13 setContentOffset_];
  }

  else
  {
    [v13 contentSize];
    v28 = v27;
    [v13 bounds];
    v29 = v28 - CGRectGetWidth(v37);
    [v13 contentInset];
    [v13 setContentOffset_];
  }
}

id sub_1D67A3CF0()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_separatorView];
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v6 = v5;

  return [v2 setFrame_];
}

uint64_t sub_1D67A3E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1D7257C7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A4BFC(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v22 - v14;
  if (a2)
  {
    v16 = sub_1D72585BC();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }

  else
  {
    sub_1D7257C3C();
    v19 = *(v8 + 48);
    if (!v19(v15, 1, v7))
    {
      sub_1D67A4BFC(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
      sub_1D7257B5C();
      *(swift_allocObject() + 16) = xmmword_1D7273AE0;
      v22[1] = a1;
      sub_1D5E4049C();
      sub_1D7263ADC();
      sub_1D7257B2C();

      sub_1D7257B7C();
    }

    if (v19(v15, 1, v7))
    {
      v20 = sub_1D72585BC();
      (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
    }

    else
    {
      (*(v8 + 16))(v11, v15, v7);
      sub_1D7257BDC();
      v21.n128_f64[0] = (*(v8 + 8))(v11, v7);
    }

    return sub_1D67A4B8C(v15, &unk_1EDF43B50, MEMORY[0x1E69681B8], v21);
  }
}

uint64_t sub_1D67A42D8(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D67A4BFC(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67A436C(uint64_t a1)
{
  sub_1D679CB9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D67A43C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D726203C();
  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
    v8 = [objc_opt_self() configurationWithFont_];
    v9 = [v7 imageWithConfiguration_];

    v10 = [objc_opt_self() textAttachmentWithImage_];
    v11 = [objc_opt_self() attributedStringWithAttachment_];
    v16 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v15[0] = a4;
    v12 = a4;
    v13 = sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v15[0] = a3;
    v14 = a3;
    sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D67A4588(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6, __n128 a7)
{
  v77 = a4;
  v78 = a3;
  sub_1D67A4BFC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v71 - v13;
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  sub_1D67A3E28(a5, a6 & 1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D67A4B8C(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v24);
    v80 = 32;
    v81 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](a1, a2);
    sub_1D67A4BFC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v26 = v77;
    v27 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v28 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v29 = v78;
    *(inited + 40) = v78;
    v30 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v28;
    *(inited + 72) = v30;
    *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    *(inited + 80) = v26;
    v31 = v29;
    v32 = v26;
    v33 = v27;
    v34 = v30;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v36 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v37 = sub_1D7261D2C();

    v38 = [v35 initWithString:v36 attributes:v37];
  }

  else
  {
    v39 = *(v16 + 32);
    v40 = v23;
    v74 = v23;
    v39(v23, v14, v15);
    v80 = 32;
    v81 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](a1, a2);
    v75 = v81;
    v76 = v80;
    sub_1D67A4BFC(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1D7279970;
    v42 = *MEMORY[0x1E69DB648];
    *(v41 + 32) = *MEMORY[0x1E69DB648];
    v73 = v41 + 32;
    v43 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v44 = v16;
    v72 = v16;
    v45 = v78;
    *(v41 + 40) = v78;
    v46 = *MEMORY[0x1E69DB650];
    *(v41 + 64) = v43;
    *(v41 + 72) = v46;
    v47 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v48 = v77;
    *(v41 + 80) = v77;
    v49 = v15;
    v71 = v15;
    v50 = v48;
    v51 = *MEMORY[0x1E69DB5F8];
    *(v41 + 104) = v47;
    *(v41 + 112) = v51;
    (*(v44 + 16))(v19, v40, v49);
    v52 = type metadata accessor for FormatAttributedStringLink();
    v53 = objc_allocWithZone(v52);
    v54 = v42;
    v55 = v45;
    v56 = v46;
    v57 = v50;
    v58 = v51;
    v59 = sub_1D725843C();
    v61 = v60;
    v62 = sub_1D725865C();
    sub_1D5B952F8(v59, v61);
    v79.receiver = v53;
    v79.super_class = v52;
    v63 = objc_msgSendSuper2(&v79, sel_initWithData_ofType_, v62, 0);

    v64 = *(v72 + 8);
    v65 = v19;
    v66 = v71;
    v64(v65, v71);
    *(v41 + 144) = v52;
    *(v41 + 120) = v63;
    sub_1D5C09CEC(v41);
    swift_setDeallocating();
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v68 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v69 = sub_1D7261D2C();

    v38 = [v67 initWithString:v68 attributes:v69];

    v64(v74, v66);
  }

  return v38;
}

uint64_t sub_1D67A4B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_1D67A4BFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D67A4BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D67A4C60()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_onShowSourceMap);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_label;
  *(v0 + v2) = [objc_allocWithZone(sub_1D725D81C()) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_scrollView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_textLink) = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_linkHandler;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for FormatLabelLinkHandler()) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t BlueprintViewController<>.configureAsPluginHScroll()()
{
  v0 = sub_1D725E23C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E51C();
  v5 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  sub_1D725E16C();
  [v5 setLayoutMargins_];

  sub_1D725E51C();
  v6 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  sub_1D725E51C();
  v7 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v7 contentInset];

  sub_1D725E18C();
  sub_1D725E16C();
  sub_1D7262E0C();
  [v6 setContentInset_];

  sub_1D725E51C();
  v8 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v8 setShowsHorizontalScrollIndicator_];

  sub_1D725E51C();
  v9 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v9 setShowsVerticalScrollIndicator_];

  sub_1D725E51C();
  v10 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v10 setContentInsetAdjustmentBehavior_];

  sub_1D725E51C();
  v11 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v11 setClipsToBounds_];

  sub_1D725E51C();
  v12 = sub_1D725EA0C();
  swift_unknownObjectRelease();
  [v12 _setPocketsEnabled_];

  return (*(v1 + 8))(v4, v0);
}

char *sub_1D67A5304(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v6 = &v2[OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_onChangeBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1D726203C();
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, 1, v7);

  v9 = OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl;
  v10 = *&v8[OBJC_IVAR____TtC8NewsFeed21DebugFormatSwitchCell_switchControl];
  v11 = v8;
  [v10 addTarget:v11 action:sel_valueChanged forControlEvents:4096];
  [*&v8[v9] setPreferredStyle_];
  v12 = *&v8[v9];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemBlueColor];
  [v14 setTintColor_];

  [v11 setAccessoryView_];
  return v11;
}

uint64_t FormatPreviewParameters.backgroundColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5CFCFAC(v2);
}

__n128 FormatPreviewParameters.edgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t FormatPreviewParameters.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t sub_1D67A54F0@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *(v5 + 48);
  v8 = *(v5 + 64);
  if (*(v5 + 40))
  {
    if (v8 > 0xFD)
    {
      v9 = MEMORY[0x1E69D7C08];
      goto LABEL_19;
    }

    if ((v8 & 0x80) != 0)
    {
      Height = CGRectGetHeight(*&a2);
      v33.origin.x = a2;
      v33.origin.y = a3;
      v33.size.width = a4;
      v33.size.height = a5;
      Width = CGRectGetWidth(v33);
      if (Width >= Height)
      {
        Width = Height;
      }

      v14 = Width * 0.5;
    }

    else
    {
      v14 = *(v5 + 48);
      sub_1D5ED34C4(v7, *(v5 + 56), v8);
    }

    v21 = *(MEMORY[0x1E69DDCE0] + 16);
    *a1 = *MEMORY[0x1E69DDCE0];
    *(a1 + 16) = v21;
  }

  else
  {
    v11 = *(v5 + 24);
    v10 = *(v5 + 32);
    v12 = *(v5 + 8);
    v13 = *(v5 + 16);
    if (v8 > 0xFD)
    {
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v11;
      *(a1 + 24) = v10;
      v9 = MEMORY[0x1E69D7C00];
      goto LABEL_19;
    }

    if ((v8 & 0x80) != 0)
    {
      v31 = CGRectGetHeight(*&a2);
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      v26 = CGRectGetWidth(v34);
      if (v26 >= v31)
      {
        v26 = v31;
      }

      v14 = v26 * 0.5;
    }

    else
    {
      v14 = *(v5 + 48);
      sub_1D5ED34C4(v7, *(v5 + 56), v8);
    }

    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
  }

  *(a1 + 32) = v14;
  v9 = MEMORY[0x1E69D7BF8];
LABEL_19:
  v27 = *v9;
  v28 = sub_1D725DE2C();
  v29 = *(*(v28 - 8) + 104);

  return v29(a1, v27, v28);
}

BOOL _s8NewsFeed23FormatPreviewParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *a2;
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v13 = *(a2 + 56);
  v15 = *(a2 + 64);
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    v24 = *(a2 + 40);
    v25 = *(a2 + 8);
    v26 = *(a2 + 24);
    v27 = *(a1 + 8);
    v28 = *(a1 + 24);
    v16 = *(a1 + 40);
    v17 = *(a2 + 64);
    v18 = *(a1 + 64);
    v19 = *(a2 + 48);
    v20 = *(a2 + 56);
    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v2);
      v13 = v20;
      v14 = v19;
      v6 = v18;
      v15 = v17;
      v3 = v16;
      v12 = v24;
      goto LABEL_10;
    }

LABEL_6:
    sub_1D5C84FF4(v2);
    sub_1D5C84FF4(v7);
    return 0;
  }

  v32 = *a1;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v7);
    sub_1D5CFCFAC(v2);

    goto LABEL_6;
  }

  v25 = v11;
  v26 = v10;
  v27 = v9;
  v28 = v8;
  v29 = v7;
  sub_1D5CFCFAC(v2);
  sub_1D5CFCFAC(v7);
  sub_1D5CFCFAC(v2);
  v22 = static FormatColor.== infix(_:_:)(&v32, &v29);

  sub_1D5C84FF4(v2);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if ((v12 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v27, v25), vceqq_f64(v28, v26)), xmmword_1D72EB3A0)) & 0xF) == 0)
  {
LABEL_15:
    if (v6 > 0xFD)
    {
      sub_1D5ED34B0(v5, v4, v6);
      sub_1D5ED34B0(v14, v13, v15);
      if (v15 > 0xFD)
      {
        sub_1D5ED348C(v5, v4, v6);
        return 1;
      }

      goto LABEL_20;
    }

    v32 = v5;
    v33 = v4;
    v34 = v6;
    if (v15 > 0xFD)
    {
      sub_1D5ED34B0(v5, v4, v6);
      sub_1D5ED34B0(v14, v13, v15);
      sub_1D5ED34B0(v5, v4, v6);
      sub_1D5ED34A0(v5, v4, v6);
LABEL_20:
      sub_1D5ED348C(v5, v4, v6);
      sub_1D5ED348C(v14, v13, v15);
      return 0;
    }

    v29 = v14;
    v30 = v13;
    v31 = v15;
    sub_1D5ED34B0(v5, v4, v6);
    sub_1D5ED34B0(v14, v13, v15);
    sub_1D5ED34B0(v5, v4, v6);
    v23 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v32, &v29);
    sub_1D5ED34A0(v29, v30, v31);
    sub_1D5ED34A0(v32, v33, v34);
    sub_1D5ED348C(v5, v4, v6);
    return (v23 & 1) != 0;
  }

  return result;
}

unint64_t sub_1D67A59C8(uint64_t a1)
{
  result = sub_1D67A59F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67A59F0()
{
  result = qword_1EC88B768;
  if (!qword_1EC88B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B768);
  }

  return result;
}

unint64_t sub_1D67A5A44(void *a1)
{
  a1[1] = sub_1D5CC69A8();
  a1[2] = sub_1D669BE6C();
  result = sub_1D67A5A7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67A5A7C()
{
  result = qword_1EC88B770;
  if (!qword_1EC88B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B770);
  }

  return result;
}

void *sub_1D67A5AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v35[6] = *(a1 + 96);
  v35[7] = v2;
  v35[8] = *(a1 + 128);
  v36 = *(a1 + 144);
  v3 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v3;
  v4 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v4;
  v5 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v5;
  v6 = *a2;
  v28 = *(a2 + 24);
  v29 = *(a2 + 8);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5B56274(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B56274(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, v11);
  v13 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7270C10;
  v17 = (v16 + v15);
  if ((v10 & 0xFE) == 0x7E)
  {
    sub_1D711B4B4(0xD000000000000010, 0x80000001D73D4780, 0xF000000000000007, v17);
    v18 = 0uLL;
    v7 = 1;
    v19 = 0uLL;
  }

  else
  {
    sub_1D5CFCFAC(v6);
    sub_1D711B4B4(0xD000000000000010, 0x80000001D73D4780, v6, v17);
    v19 = v28;
    v18 = v29;
  }

  v33[0] = v18;
  v33[1] = v19;
  v34 = v7 & 1;
  sub_1D712612C(0x736E492065676445, 0xEB00000000737465, v33, &v17[v14]);
  if ((v10 & 0xFE) == 0x7E)
  {
    v8 = 0;
    v9 = 0;
    v10 = -2;
  }

  else
  {
    sub_1D5ED34B0(v8, v9, v10);
  }

  *&v30 = v8;
  *(&v30 + 1) = v9;
  LOBYTE(v31) = v10;
  v20 = sub_1D6D9893C(v35, &v30);
  sub_1D5ED348C(v30, *(&v30 + 1), v31);
  sub_1D68B21C8(v16, v20);
  v22 = v21;

  v23 = sub_1D5F62998(v22);

  sub_1D6795150(0xD000000000000012, 0x80000001D73D47A0, 0, 0, v23, &v30);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v24 = swift_allocObject();
  *(inited + 32) = v24;
  *(v24 + 48) = v32;
  v25 = v31;
  *(v24 + 16) = v30;
  *(v24 + 32) = v25;
  v26 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v26;
}

NewsFeed::ShortcutCommandState_optional __swiftcall ShortcutCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_ShortcutCommandState_notShortcut;
  }

  else
  {
    v2.value = NewsFeed_ShortcutCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ShortcutCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x74726F6853746F6ELL;
  }

  else
  {
    return 0x6374726F68537369;
  }
}

uint64_t sub_1D67A5EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74726F6853746F6ELL;
  }

  else
  {
    v3 = 0x6374726F68537369;
  }

  if (v2)
  {
    v4 = 0xEA00000000007475;
  }

  else
  {
    v4 = 0xEB00000000747563;
  }

  if (*a2)
  {
    v5 = 0x74726F6853746F6ELL;
  }

  else
  {
    v5 = 0x6374726F68537369;
  }

  if (*a2)
  {
    v6 = 0xEB00000000747563;
  }

  else
  {
    v6 = 0xEA00000000007475;
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

uint64_t sub_1D67A5F78()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67A6008(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67A6084(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67A6110(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D67A6170(uint64_t *a1@<X8>)
{
  v2 = 0x6374726F68537369;
  if (*v1)
  {
    v2 = 0x74726F6853746F6ELL;
  }

  v3 = 0xEA00000000007475;
  if (*v1)
  {
    v3 = 0xEB00000000747563;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D67A61BC(uint64_t a1)
{
  v2 = sub_1D67A6714();

  return MEMORY[0x1EEE48380](a1, v2);
}

double static Commands.Shortcuts.setShortcut.getter()
{
  if (qword_1EDF3AAF0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D67A6268(char *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v3 = sub_1D72620BC();

  return v3;
}

id sub_1D67A638C(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EC87DAA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895140;
  }

  else
  {
    if (qword_1EC87DAB0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895148;
  }

  v2 = *v1;

  return v2;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE14toggleShortcut3forACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D67A6768(0, &qword_1EC88B788, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D67A6768(0, &qword_1EC88B790, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D67A6768(0, &unk_1EC88B798, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (qword_1EDF3AAF0 != -1)
  {
    swift_once();
  }

  sub_1D5B687BC();

  sub_1D725DADC();
  sub_1D725DABC();
  sub_1D725DF0C();
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3BC();
}

unint64_t sub_1D67A669C()
{
  result = qword_1EC88B778;
  if (!qword_1EC88B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B778);
  }

  return result;
}

unint64_t sub_1D67A6714()
{
  result = qword_1EC88B780;
  if (!qword_1EC88B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B780);
  }

  return result;
}

void sub_1D67A6768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B687BC();
    v7 = a3(a1, &type metadata for ShortcutCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *SportsStandingDataVisualization.with(config:)(uint64_t *a1)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v57 = a1[3];
  v12 = a1[4];
  v55 = v9;
  v56 = v12;
  v13 = a1[5];
  v15 = *(v1 + 4);
  v14 = *(v1 + 5);
  v47 = v13;
  v48 = v15;
  v17 = *(v1 + 6);
  v16 = *(v1 + 7);
  v53 = v10;
  v54 = v17;
  v44 = v16;
  v45 = v11;
  v51 = v4;
  v18 = *(v4 + 16);
  v18(v8, &v1[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl], v3, v6);
  v19 = *&v1[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources];
  v46 = *&v1[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata];
  v20 = v46;
  v21 = swift_allocObject();
  v21[4] = v15;
  v21[5] = v14;
  v49 = v14;
  v50 = v8;
  v22 = v44;
  v21[6] = v54;
  v21[7] = v22;
  v23 = v8;
  v24 = v45;
  v52 = v3;
  (v18)(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl, v23, v3);
  v25 = v53;
  v26 = v57;
  *(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources) = v19;
  *(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata) = v20;
  v27 = (v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
  v28 = v55;
  v29 = v56;
  *v27 = v55;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v26;
  v30 = v47;
  v27[4] = v29;
  v27[5] = v30;
  v58 = 14906;
  v59 = 0xE200000000000000;
  swift_unknownObjectRetain();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_1D67A737C(v46);
  swift_unknownObjectRetain();
  MEMORY[0x1DA6F9910](v28, v25);
  v32 = v58;
  v31 = v59;
  if (v24)
  {
    v33 = [v24 identifier];
    v34 = sub_1D726207C();
    v36 = v35;

    v58 = 14906;
    v59 = 0xE200000000000000;
    MEMORY[0x1DA6F9910](v34, v36);

    v38 = v58;
    v37 = v59;
  }

  else
  {
    v38 = 0;
    v37 = 0xE000000000000000;
  }

  v39 = v50;
  v58 = sub_1D72583DC();
  v59 = v40;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v49, v54);
  MEMORY[0x1DA6F9910](v32, v31);

  MEMORY[0x1DA6F9910](v38, v37);
  swift_unknownObjectRelease();

  v41 = v59;
  v21[2] = v58;
  v21[3] = v41;
  v58 = v55;
  v59 = v53;
  v60 = v24;
  v61 = v57;
  v62 = v56;
  v63 = v30;
  sub_1D692133C(v39, &v58, 0xD000000000000018, 0x80000001D73D48A0, v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl);
  (*(v51 + 8))(v39, v52);

  swift_unknownObjectRelease();

  return v21;
}

uint64_t SportsStandingDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsStandingDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SportsStandingDataVisualization.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata);
  *a1 = v2;
  return sub_1D67A737C(v2);
}

uint64_t SportsStandingDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3, v4);
}

uint64_t SportsStandingDataVisualization.routeTag.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16) == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    return swift_unknownObjectRetain();
  }

  result = *(v0 + 56);
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

char *SportsStandingDataVisualization.__allocating_init(competitorTags:umcCanonicalId:leagueTag:embedUrl:urlDataSources:metadata:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v15 = swift_allocObject();
  v33 = *a7;
  v42 = a8[1];
  v16 = a8[2];
  v40 = *a8;
  v41 = a8[3];
  v18 = a8[4];
  v17 = a8[5];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  v35 = a2;
  *(v15 + 6) = a3;
  *(v15 + 7) = a4;
  v19 = OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl;
  v20 = sub_1D72585BC();
  v36 = a5;
  v37 = *(v20 - 8);
  v38 = v20;
  (*(v37 + 16))(&v15[v19], a5);
  *&v15[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources] = a6;
  *&v15[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata] = v33;
  v21 = &v15[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
  *v21 = v40;
  v21[1] = v42;
  v21[2] = v16;
  v21[3] = v41;
  v21[4] = v18;
  v21[5] = v17;
  v39 = v17;
  if (v42)
  {
    swift_unknownObjectRetain();

    sub_1D5F8B638(v40, v42, v16);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v40, v42);
    v22 = 14906;
    v23 = 0xE200000000000000;
    if (v16)
    {
      v24 = [v16 identifier];
      v25 = sub_1D726207C();
      v27 = v26;

      MEMORY[0x1DA6F9910](v25, v27);

      v28 = 14906;
      v29 = 0xE200000000000000;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v28 = 0;
    v22 = 0;
    v29 = 0xE000000000000000;
    v23 = 0xE000000000000000;
  }

  v43 = sub_1D72583DC();
  v44 = v30;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v35, a3);

  MEMORY[0x1DA6F9910](v22, v23);

  MEMORY[0x1DA6F9910](v28, v29);
  swift_unknownObjectRelease();

  v31 = v44;
  *(v15 + 2) = v43;
  *(v15 + 3) = v31;
  v43 = v40;
  v44 = v42;
  v45 = v16;
  v46 = v41;
  v47 = v18;
  v48 = v39;
  sub_1D692133C(v36, &v43, 0xD000000000000018, 0x80000001D73D48A0, &v15[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v37 + 8))(v36, v38);
  sub_1D5F8BBC8(v40, v42, v16, v41, v18, v39);
  return v15;
}

char *SportsStandingDataVisualization.init(competitorTags:umcCanonicalId:leagueTag:embedUrl:urlDataSources:metadata:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v9 = v8;
  v64 = a6;
  v65 = a3;
  v66 = a4;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  v55 = *a7;
  v20 = *a8;
  v21 = a8[1];
  v23 = a8[2];
  v22 = a8[3];
  v25 = a8[4];
  v24 = a8[5];
  *(v9 + 4) = a1;
  *(v9 + 5) = a2;
  v26 = v24;
  v57 = a2;
  v28 = v65;
  v27 = v66;
  *(v9 + 6) = v65;
  *(v9 + 7) = v27;
  v29 = *(v19 + 16);
  v62 = a5;
  v63 = v30;
  v29(&v9[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl], a5, v17);
  *&v9[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources] = v64;
  *&v9[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata] = v55;
  v31 = &v9[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
  *v31 = v20;
  v31[1] = v21;
  v32 = v23;
  v31[2] = v23;
  v31[3] = v22;
  v64 = v22;
  v31[4] = v25;
  v31[5] = v26;
  v33 = v21;
  v58 = v26;
  v59 = v25;
  v56 = v20;
  if (v21)
  {
    v67 = 14906;
    v68 = 0xE200000000000000;
    swift_unknownObjectRetain();

    sub_1D5F8B638(v20, v21, v32);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v20, v21);
    v35 = v67;
    v34 = v68;
    if (v32)
    {
      v36 = [v32 identifier];
      v37 = sub_1D726207C();
      v39 = v38;

      v67 = 14906;
      v68 = 0xE200000000000000;
      MEMORY[0x1DA6F9910](v37, v39);

      v40 = v68;
      v55 = v67;
    }

    else
    {
      v55 = 0;
      v40 = 0xE000000000000000;
    }

    v41 = v65;
  }

  else
  {
    swift_unknownObjectRetain();

    v55 = 0;
    v41 = v28;
    v35 = 0;
    v40 = 0xE000000000000000;
    v34 = 0xE000000000000000;
  }

  v42 = v62;
  v67 = sub_1D72583DC();
  v68 = v43;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v57, v41);

  MEMORY[0x1DA6F9910](v35, v34);

  MEMORY[0x1DA6F9910](v55, v40);
  swift_unknownObjectRelease();

  v44 = v68;
  *(v9 + 2) = v67;
  *(v9 + 3) = v44;
  v45 = v56;
  v67 = v56;
  v68 = v33;
  v46 = v64;
  v69 = v32;
  v70 = v64;
  v48 = v58;
  v47 = v59;
  v71 = v59;
  v72 = v58;
  v49 = v60;
  v50 = v42;
  sub_1D692133C(v42, &v67, 0xD000000000000018, 0x80000001D73D48A0, v60);
  swift_unknownObjectRelease();
  v51 = v61;
  v52 = v50;
  v53 = v63;
  (*(v61 + 8))(v52, v63);
  sub_1D5F8BBC8(v45, v33, v32, v46, v47, v48);
  (*(v51 + 32))(&v9[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl], v49, v53);
  return v9;
}

uint64_t sub_1D67A737C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void *SportsStandingDataVisualization.with(metadata:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v10 = *(v2 + 4);
  v11 = *(v2 + 5);
  v12 = *(v2 + 7);
  v53 = *(v2 + 6);
  v54 = v10;
  v51 = v5;
  v13 = *(v5 + 16);
  v13(v9, &v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl], v4, v7);
  v14 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources];
  v15 = &v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
  v16 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8];
  v55 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
  v42 = v16;
  v43 = v14;
  v17 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16];
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24];
  v41 = v17;
  v19 = *(v15 + 4);
  v20 = *(v15 + 5);
  v21 = swift_allocObject();
  v21[4] = v54;
  v21[5] = v11;
  v45 = v11;
  v22 = v53;
  v21[6] = v53;
  v21[7] = v12;
  v49 = v12;
  v50 = v9;
  v23 = v9;
  v24 = v18;
  v52 = v4;
  (v13)(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl, v23, v4);
  v25 = v44;
  v27 = v41;
  v26 = v42;
  *(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources) = v43;
  *(v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata) = v25;
  v28 = (v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
  *v28 = v55;
  v28[1] = v26;
  v28[2] = v27;
  v28[3] = v24;
  v28[4] = v19;
  v28[5] = v20;
  v47 = v19;
  v48 = v24;
  v46 = v20;
  if (v26)
  {
    v56 = 14906;
    v57 = 0xE200000000000000;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v29 = v55;
    sub_1D5F8B638(v55, v26, v27);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v29, v26);
    v30 = v57;
    v49 = v56;
    if (v27)
    {
      v31 = [v27 identifier];
      v32 = sub_1D726207C();
      v34 = v33;

      v56 = 14906;
      v57 = 0xE200000000000000;
      MEMORY[0x1DA6F9910](v32, v34);

      v35 = v57;
      v54 = v56;
    }

    else
    {
      v54 = 0;
      v35 = 0xE000000000000000;
    }

    v22 = v53;
    v36 = v49;
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v54 = 0;
    v36 = 0;
    v35 = 0xE000000000000000;
    v30 = 0xE000000000000000;
  }

  v37 = v50;
  v56 = sub_1D72583DC();
  v57 = v38;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v45, v22);
  MEMORY[0x1DA6F9910](v36, v30);

  MEMORY[0x1DA6F9910](v54, v35);
  swift_unknownObjectRelease();

  v39 = v57;
  v21[2] = v56;
  v21[3] = v39;
  v56 = v55;
  v57 = v26;
  v58 = v27;
  v59 = v48;
  v60 = v47;
  v61 = v46;
  sub_1D692133C(v37, &v56, 0xD000000000000018, 0x80000001D73D48A0, v21 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl);
  (*(v51 + 8))(v37, v52);
  return v21;
}

uint64_t SportsStandingDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsStandingDataVisualization.init(from:)(a1);
  return v2;
}

char *SportsStandingDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v59 = v2;
  v60 = v4;
  v5 = sub_1D72585BC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v49 - v10;
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v55 = &v49 - v13;
  sub_1D67A821C(0, &unk_1EDF17840, &qword_1EDF04A10, MEMORY[0x1E69E62F8], MEMORY[0x1E69D6C08]);
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v49 - v16;
  sub_1D67AA0FC(0, &qword_1EC88B7A8, sub_1D67A8298, &type metadata for SportsStandingDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = v17;
  v19 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v49 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67A8298();
  v23 = v1;
  v24 = v59;
  sub_1D7264B0C();
  if (v24)
  {
LABEL_11:
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v23;
  }

  v25 = v56;
  v59 = a1;
  LOBYTE(v61) = 0;
  sub_1D67A9F14(&qword_1EDF17850, MEMORY[0x1E69D6C18]);
  v26 = v57;
  sub_1D726431C();
  v27 = v58;
  sub_1D725BF7C();
  (*(v25 + 8))(v27, v26);
  v23[4] = v61;
  LOBYTE(v61) = 1;
  v23[5] = sub_1D72642BC();
  v23[6] = v28;
  v58 = v18;
  v29 = MEMORY[0x1E69D6C08];
  sub_1D5C28D7C(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
  v31 = v30;
  LOBYTE(v61) = 4;
  sub_1D5C86420(&unk_1EDF17750, &unk_1EDF17740, v29, MEMORY[0x1E69D6C18]);
  v32 = v55;
  sub_1D726427C();
  v50 = v23;
  v57 = 0;
  v33 = v22;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v32, 1, v31) == 1)
  {
    sub_1D67A82FC(v32);
    v35 = 0;
  }

  else
  {
    sub_1D725BF7C();
    v35 = v61;
    (*(v34 + 8))(v32, v31);
  }

  v37 = v53;
  v36 = v54;
  v38 = v52;
  v23[7] = v35;
  LOBYTE(v61) = 2;
  sub_1D67A8390(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v40 = v57;
  v39 = v58;
  sub_1D726431C();
  if (v40)
  {
    (*(v19 + 8))(v33, v39);
    v47 = v57;

    if (!v47)
    {
      swift_unknownObjectRelease();
    }

    v23 = v50;
    a1 = v59;
    goto LABEL_11;
  }

  v41 = *(v37 + 32);
  v41(v50 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl, v38, v36);
  sub_1D67AB2DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  v64 = 3;
  sub_1D67A9F90(&unk_1EDF04AB0, &unk_1EDF065B0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  *(v50 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources) = v61;
  v64 = 5;
  sub_1D67A83D8();
  sub_1D726427C();
  *(v50 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata) = v61;
  v64 = 6;
  sub_1D5F8C8D4();
  sub_1D726427C();
  v42 = (v50 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
  v43 = v62;
  *v42 = v61;
  v42[1] = v43;
  v42[2] = v63;
  LOBYTE(v61) = 7;
  v44 = sub_1D72642BC();
  v45 = v50;
  v50[2] = v44;
  *(v45 + 3) = v46;
  LOBYTE(v61) = 8;
  sub_1D726431C();
  (*(v19 + 8))(0, v39);
  v41(&v45[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl], v51, v54);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v45;
}

void sub_1D67A821C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5C28D7C(255, a3, &qword_1EDF04500, &protocolRef_FCSportsProviding, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D67A8298()
{
  result = qword_1EC88B7B0;
  if (!qword_1EC88B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B7B0);
  }

  return result;
}

uint64_t sub_1D67A82EC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D67A82FC(uint64_t a1)
{
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D67A8390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D67A83D8()
{
  result = qword_1EC88B7B8;
  if (!qword_1EC88B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B7B8);
  }

  return result;
}

uint64_t SportsStandingDataVisualization.encode(to:)(void *a1)
{
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v40 = &v39 - v4;
  v5 = sub_1D725ABEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A821C(0, &unk_1EDF17840, &qword_1EDF04A10, MEMORY[0x1E69E62F8], MEMORY[0x1E69D6C08]);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - v13;
  sub_1D67AA0FC(0, &qword_1EC88B7C8, sub_1D67A8298, &type metadata for SportsStandingDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v41 = v15;
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67A8298();
  sub_1D7264B5C();
  v47 = *(v46 + 32);
  v19 = qword_1EDF17D78;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_1EDF17D80);
  v21 = (*(v6 + 16))(v9, v20, v5);
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = MEMORY[0x1E69E62F8];
  sub_1D5C28D7C(0, &qword_1EDF04A10, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69E62F8]);
  *(&v39 - 2) = v24;
  *(&v39 - 1) = sub_1D5C86420(&unk_1EDF04A00, &qword_1EDF04A10, v23, MEMORY[0x1E69E6328]);
  swift_getKeyPath();
  sub_1D725BF9C();
  LOBYTE(v47) = 0;
  sub_1D67A9F14(&qword_1EDF17858, MEMORY[0x1E69D6C10]);
  v26 = v41;
  v25 = v42;
  v27 = v44;
  sub_1D726443C();
  v28 = v18;
  (*(v43 + 8))(v14, v25);
  if (v27)
  {
    return (*(v45 + 8))(v18, v26);
  }

  v29 = v46;
  LOBYTE(v47) = 1;
  sub_1D72643FC();
  v30 = swift_unknownObjectRetain();
  v31 = v40;
  sub_1D67A8F10(v30, v40);
  LOBYTE(v47) = 4;
  v32 = MEMORY[0x1E69D6C08];
  sub_1D5C28D7C(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
  sub_1D5C86420(&unk_1EDF17760, &unk_1EDF17740, v32, MEMORY[0x1E69D6C10]);
  sub_1D72643BC();
  sub_1D67A82FC(v31);
  LOBYTE(v47) = 2;
  sub_1D72585BC();
  sub_1D67A8390(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1D726443C();
  v47 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources);
  v53 = 3;
  sub_1D67AB2DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D67A9F90(&qword_1EDF04AC0, &qword_1EDF065C0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v47 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata);
  v53 = 5;
  sub_1D67A737C(v47);
  sub_1D67AA054();
  sub_1D72643BC();
  sub_1D67A82EC(v47);
  v34 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
  v35 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
  v36 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
  v37 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
  v38 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
  v47 = *(v29 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = 6;
  sub_1D5F8B638(v47, v34, v35);
  sub_1D5F8D7E0();
  sub_1D72643BC();
  sub_1D5F8BBC8(v47, v48, v49, v50, v51, v52);
  LOBYTE(v47) = 7;
  sub_1D72643FC();
  LOBYTE(v47) = 8;
  sub_1D726443C();
  return (*(v45 + 8))(v28, v26);
}

uint64_t sub_1D67A8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CF8(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  v13 = qword_1EDF17D78;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EDF17D80);
  v15 = (*(v5 + 16))(v8, v14, v4);
  MEMORY[0x1EEE9AC00](v15, v16);
  v22[-2] = sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  swift_getKeyPath();
  sub_1D725BF5C();
  swift_unknownObjectRelease();
  sub_1D5C28D7C(0, &qword_1EDF177B0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69D6C08]);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v12, 1, v17))
  {
    sub_1D67AB340(v12, sub_1D5C28CF8);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v12, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t sub_1D67A8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v22 - v11;
  v22[1] = a1;
  v13 = qword_1EDF17D78;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EDF17D80);
  v15 = (*(v5 + 16))(v8, v14, v4);
  MEMORY[0x1EEE9AC00](v15, v16);
  v22[-2] = sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  swift_getKeyPath();
  sub_1D725BF5C();
  swift_unknownObjectRelease();
  sub_1D5C28D7C(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v12, 1, v17))
  {
    sub_1D67A82FC(v12);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v12, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t sub_1D67A91F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74697465706D6F63;
    v6 = 0x6C72556465626D65;
    if (a1 != 2)
    {
      v6 = 0x53617461446C7275;
    }

    if (a1)
    {
      v5 = 0x6E6F6E6143636D75;
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
    v1 = 0x6769666E6F63;
    v2 = 0x696669746E656469;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615465756761656CLL;
    if (a1 != 4)
    {
      v3 = 0x617461646174656DLL;
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

uint64_t sub_1D67A934C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694D678(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D67A939C(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694D678(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D67A93E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D67AB290(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D67A9410@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D67A91F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D67A9458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D67AB290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D67A9480(uint64_t a1)
{
  v2 = sub_1D67A8298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67A94BC(uint64_t a1)
{
  v2 = sub_1D67A8298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsStandingDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D67A82EC(*(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata));
  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsStandingDataVisualization.__deallocating_deinit()
{
  SportsStandingDataVisualization.deinit();

  return swift_deallocClassInstance();
}

char *sub_1D67A963C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsStandingDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsStandingDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t SportsStandingDataVisualizationMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v22 = &v21 - v6;
  sub_1D67AA0FC(0, &qword_1EC88B7E0, sub_1D67AA0A8, &type metadata for SportsStandingDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67AA0A8();
  sub_1D7264B0C();
  if (!v2)
  {
    v13 = v9;
    v14 = MEMORY[0x1E69D6C08];
    sub_1D5C28D7C(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
    v16 = v15;
    sub_1D5C86420(&unk_1EDF17750, &unk_1EDF17740, v14, MEMORY[0x1E69D6C18]);
    v17 = v22;
    sub_1D726427C();
    v18 = *(v16 - 8);
    if ((*(v18 + 48))(v17, 1, v16) == 1)
    {
      (*(v13 + 8))(v12, v8);
      sub_1D67A82FC(v17);
      v19 = 0;
    }

    else
    {
      sub_1D725BF7C();
      (*(v13 + 8))(v12, v8);
      v19 = v23;
      (*(v18 + 8))(v17, v16);
    }

    *v21 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SportsStandingDataVisualizationMetadata.encode(to:)(void *a1)
{
  v17 = MEMORY[0x1E69D6C08];
  sub_1D67A821C(0, &unk_1EDF17730, &unk_1EDF17740, MEMORY[0x1E69D6C08], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - v5;
  sub_1D67AA0FC(0, &unk_1EC88B7F0, sub_1D67AA0A8, &type metadata for SportsStandingDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67AA0A8();
  swift_unknownObjectRetain();
  sub_1D7264B5C();
  sub_1D67A8F10(v13, v6);
  v14 = v17;
  sub_1D5C28D7C(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, v17);
  sub_1D5C86420(&unk_1EDF17760, &unk_1EDF17740, v14, MEMORY[0x1E69D6C10]);
  sub_1D72643BC();
  sub_1D67A82FC(v6);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D67A9CBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D67A9D30(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D67A9D84(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D67A9E14(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D67A9E6C(uint64_t a1)
{
  v2 = sub_1D67AA0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67A9EA8(uint64_t a1)
{
  v2 = sub_1D67AA0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D67A9F14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D67A821C(255, &unk_1EDF17840, &qword_1EDF04A10, MEMORY[0x1E69E62F8], MEMORY[0x1E69D6C08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D67A9F90(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D67AB2DC(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D67A8390(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67AA054()
{
  result = qword_1EC88B7D0;
  if (!qword_1EC88B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B7D0);
  }

  return result;
}

unint64_t sub_1D67AA0A8()
{
  result = qword_1EC88B7E8;
  if (!qword_1EC88B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B7E8);
  }

  return result;
}

void sub_1D67AA0FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata accessor for SportsStandingDataVisualization(uint64_t a1)
{
  result = qword_1EDF1F4F0;
  if (!qword_1EDF1F4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67AA1B8(uint64_t a1)
{
  result = sub_1D72585BC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D67AA2D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D67AA334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D67AA3B8()
{
  result = qword_1EC88B800;
  if (!qword_1EC88B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B800);
  }

  return result;
}

unint64_t sub_1D67AA410()
{
  result = qword_1EC88B808;
  if (!qword_1EC88B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B808);
  }

  return result;
}

unint64_t sub_1D67AA468()
{
  result = qword_1EC88B810;
  if (!qword_1EC88B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B810);
  }

  return result;
}

unint64_t sub_1D67AA4C0()
{
  result = qword_1EC88B818;
  if (!qword_1EC88B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B818);
  }

  return result;
}

unint64_t sub_1D67AA518()
{
  result = qword_1EC88B820;
  if (!qword_1EC88B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B820);
  }

  return result;
}

unint64_t sub_1D67AA570()
{
  result = qword_1EC88B828;
  if (!qword_1EC88B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B828);
  }

  return result;
}

void *sub_1D67AA5C4(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v116 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v171 = a1[6];
  v172 = v17;
  v173 = a1[8];
  v174 = *(a1 + 18);
  v18 = a1[3];
  v167 = a1[2];
  v168 = v18;
  v19 = a1[5];
  v169 = a1[4];
  v170 = v19;
  v20 = a1[1];
  v165 = *a1;
  v166 = v20;
  if (a2)
  {
    v135 = v16;
    v136 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v146 = &v108 - v14;
    sub_1D67AB2DC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v108 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D67AB2DC(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8(0);
    v138 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v133 = *(v25 + 80);
    v134 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v109 = v28;
    v132 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 5);
    v30 = *(a2 + 6);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v112 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v130 = *(v36 + 56);
    v131 = v35;
    v129 = v36 + 56;
    v130(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v146;
    v127 = *(v5 + 16);
    v128 = v5 + 16;
    v127(v146, &v112[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl], v4);
    v144 = v5;
    v42 = *(v5 + 56);
    v137 = v4;
    v43 = v4;
    v44 = v112;
    v125 = v42;
    v126 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v111 = v29;
    v139 = v26;
    v145 = v40;
    v146 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v147 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v147;
        v124 = v45 & 0xC000000000000001;
        v50 = 2 * v139;
        v119 = 3 * v139;
        v118 = (v144 + 48);
        v115 = (v144 + 32);
        v113 = v45 & 0xFFFFFFFFFFFFFF8;
        v114 = (v144 + 8);
        v117 = xmmword_1D7279970;
        v123 = xmmword_1D7287CC0;
        v121 = v46;
        v122 = v45;
        v120 = 2 * v139;
        while (!__OFADD__(v48, 1))
        {
          v143 = v49;
          v144 = v48;
          v142 = v48 + 1;
          if (v124)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v113 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v132;
          v53 = swift_allocObject();
          *(v53 + 16) = v117;
          v140 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          v57 = sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v58 = v33;
          v59 = v33;
          v60 = v146;
          (v146)(v54, 0, 1, v58, v57);
          v61 = v51[4];
          v62 = v51[5];

          v63 = v139;
          v64 = sub_1D711F844(7955787, 0xE300000000000000, v61, v62, &v54[v139]);
          v60(&v54[v63], 0, 1, v59, v64);
          v65 = &v54[v50];
          v141 = v51;
          v66 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v67 = v135;
          v68 = v137;
          v44 = v127;
          v127(v135, v66, v137);
          v125(v67, 0, 1, v68);
          v69 = v136;
          sub_1D5EB84C0(v67, v136);
          if ((*v118)(v69, 1, v68) == 1)
          {
            sub_1D67AB340(v67, sub_1D5B4D3E0);
            v130(&v65[*(v59 + 24)], 1, 1, v131);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v70 = &v65[*(v59 + 28)];
            *v70 = 0;
            *(v70 + 1) = 0;
            v70[16] = -1;
          }

          else
          {
            v71 = v116;
            (v44)(v116, v69, v68);
            sub_1D67AB340(v67, sub_1D5B4D3E0);
            v72 = *(v59 + 24);
            (*v115)(&v65[v72], v71, v68);
            v73 = v131;
            swift_storeEnumTagMultiPayload();
            v130(&v65[v72], 0, 1, v73);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v74 = &v65[*(v59 + 28)];
            *v74 = 0;
            *(v74 + 1) = 0;
            v74[16] = -1;
            (*v114)(v69, v68);
          }

          v33 = v59;
          (v146)(v65, 0, 1, v59);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v140, v163);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v154 + 1) = &type metadata for FormatInspectionGroup;
          *&v155 = &off_1F518B2C0;
          v75 = swift_allocObject();
          *&v153 = v75;

          *(v75 + 48) = v164;
          v76 = v163[1];
          *(v75 + 16) = v163[0];
          *(v75 + 32) = v76;
          v147 = v143;
          v78 = *(v143 + 16);
          v77 = *(v143 + 24);
          v45 = v122;
          if (v78 >= v77 >> 1)
          {
            sub_1D6997EC0((v77 > 1), v78 + 1, 1);
          }

          v79 = *(&v154 + 1);
          v80 = v155;
          v81 = __swift_mutable_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
          v82 = MEMORY[0x1EEE9AC00](v81, v81);
          v84 = &v108 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v85 + 16))(v84, v82);
          sub_1D5BD0BE4(v78, v84, &v147, v79, v80);
          __swift_destroy_boxed_opaque_existential_1(&v153);
          v49 = v147;
          v48 = v144 + 1;
          v50 = v120;
          if (v142 == v121)
          {
            v44 = v112;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v139;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v87 = sub_1D5F62BFC(v49);

      v88 = sub_1D7073500(v87);

      v89 = v111;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v88, 0, 0, &v111[v50]);
      (v146)(&v89[v50], 0, 1, v33);
      v90 = &v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config];
      v91 = *&v44[OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8];
      if (v91)
      {
        v92 = *v90;
      }

      else
      {
        v92 = 0;
      }

      v93 = 3 * v139;
      sub_1D67AB2DC(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v94 = swift_initStackObject();
      *(v94 + 16) = v108;
      v159 = v171;
      v160 = v172;
      v161 = v173;
      v162 = v174;
      v155 = v167;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v153 = v165;
      v154 = v166;
      v95 = v90[1];
      v96 = v90[2];
      v97 = v90[3];
      v98 = v90[4];
      v99 = v90[5];
      v147 = *v90;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      v151 = v98;
      v152 = v99;
      sub_1D5F8B638(v147, v95, v96);
      v100 = sub_1D6924F88(&v153, &v147);
      sub_1D5F8BBC8(v147, v148, v149, v150, v151, v152);
      *(v94 + 56) = &type metadata for FormatInspection;
      *(v94 + 64) = &off_1F51E3FD0;
      *(v94 + 32) = v100;
      v101 = sub_1D5F62BFC(v94);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v94 + 32));
      v102 = sub_1D7073500(v101);

      v103 = v111;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v102, v92, v91, &v111[v93]);
      (v146)(&v103[v93], 0, 1, v33);
      sub_1D6795150(0x676E69646E617453, 0xE800000000000000, 0, 0, v109, &v153);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v104 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v104 + 64) = &off_1F518B2C0;
      v105 = swift_allocObject();
      *(v104 + 32) = v105;
      *(v105 + 48) = v155;
      v106 = v154;
      *(v105 + 16) = v153;
      *(v105 + 32) = v106;
      v107 = sub_1D7073500(v104);
      swift_setDeallocating();
      sub_1D67AB340(v104 + 32, sub_1D5E4F358);

      return v107;
    }
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v86);
  }

  return result;
}