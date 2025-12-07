uint64_t type metadata accessor for StaticUserActionPrediction(uint64_t a1)
{
  result = qword_1EE07BD08;
  if (!qword_1EE07BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1D3ECF8()
{
  result = qword_1EC64E2F8;
  if (!qword_1EC64E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2F8);
  }

  return result;
}

unint64_t sub_1D1D3ED4C()
{
  result = qword_1EC64E300;
  if (!qword_1EC64E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E300);
  }

  return result;
}

unint64_t sub_1D1D3EDA0()
{
  result = qword_1EC64E308;
  if (!qword_1EC64E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E308);
  }

  return result;
}

unint64_t sub_1D1D3EDF4()
{
  result = qword_1EC64E310;
  if (!qword_1EC64E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E310);
  }

  return result;
}

unint64_t sub_1D1D3EE48()
{
  result = qword_1EC64E318;
  if (!qword_1EC64E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E318);
  }

  return result;
}

unint64_t sub_1D1D3EE9C()
{
  result = qword_1EC64E320;
  if (!qword_1EC64E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E320);
  }

  return result;
}

uint64_t sub_1D1D3EEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xEC00000070756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737953616964656DLL && a2 == 0xEB000000006D6574)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1D3F0AC(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3E0, &qword_1D1EAB5E0);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3E8, &qword_1D1EAB5E8);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3F0, &qword_1D1EAB5F0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E3F8, &qword_1D1EAB5F8);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E400, &qword_1D1EAB600);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E408, &qword_1D1EAB608);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D1D3ECF8();
  v18 = v50;
  sub_1D1E692FC();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = sub_1D1E68DDC();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1D18085CC();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = sub_1D1E688EC();
    v14 = swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v31 = &type metadata for PredictionKind;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_1D1D3EE48();
      sub_1D1E68C4C();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_1D1D3EE9C();
      sub_1D1E68C4C();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_1D1D3EDF4();
    sub_1D1E68C4C();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_1D1D3EDA0();
      v27 = v46;
      sub_1D1E68C4C();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_1D1D3ED4C();
      v34 = v47;
      sub_1D1E68C4C();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v14;
}

unint64_t sub_1D1D3F810()
{
  result = qword_1EC64E330;
  if (!qword_1EC64E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E330);
  }

  return result;
}

unint64_t sub_1D1D3F864()
{
  result = qword_1EC64E338;
  if (!qword_1EC64E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E338);
  }

  return result;
}

unint64_t sub_1D1D3F8B8()
{
  result = qword_1EC64E348;
  if (!qword_1EC64E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E348);
  }

  return result;
}

unint64_t sub_1D1D3F92C()
{
  result = qword_1EC64E350;
  if (!qword_1EC64E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E350);
  }

  return result;
}

void sub_1D1D3FA00(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D177868C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1D3FB08()
{
  result = qword_1EC64E360;
  if (!qword_1EC64E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E360);
  }

  return result;
}

unint64_t sub_1D1D3FB60()
{
  result = qword_1EC64E368;
  if (!qword_1EC64E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E368);
  }

  return result;
}

unint64_t sub_1D1D3FBB8()
{
  result = qword_1EC64E370;
  if (!qword_1EC64E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E370);
  }

  return result;
}

unint64_t sub_1D1D3FC10()
{
  result = qword_1EC64E378;
  if (!qword_1EC64E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E378);
  }

  return result;
}

unint64_t sub_1D1D3FC68()
{
  result = qword_1EC64E380;
  if (!qword_1EC64E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E380);
  }

  return result;
}

unint64_t sub_1D1D3FCC0()
{
  result = qword_1EC64E388;
  if (!qword_1EC64E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E388);
  }

  return result;
}

unint64_t sub_1D1D3FD18()
{
  result = qword_1EC64E390;
  if (!qword_1EC64E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E390);
  }

  return result;
}

unint64_t sub_1D1D3FD70()
{
  result = qword_1EC64E398;
  if (!qword_1EC64E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E398);
  }

  return result;
}

unint64_t sub_1D1D3FDC8()
{
  result = qword_1EC64E3A0;
  if (!qword_1EC64E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3A0);
  }

  return result;
}

unint64_t sub_1D1D3FE20()
{
  result = qword_1EC64E3A8;
  if (!qword_1EC64E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3A8);
  }

  return result;
}

unint64_t sub_1D1D3FE78()
{
  result = qword_1EC64E3B0;
  if (!qword_1EC64E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3B0);
  }

  return result;
}

unint64_t sub_1D1D3FED0()
{
  result = qword_1EC64E3B8;
  if (!qword_1EC64E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3B8);
  }

  return result;
}

unint64_t sub_1D1D3FF28()
{
  result = qword_1EC64E3C0;
  if (!qword_1EC64E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3C0);
  }

  return result;
}

unint64_t sub_1D1D3FF80()
{
  result = qword_1EC64E3C8;
  if (!qword_1EC64E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3C8);
  }

  return result;
}

unint64_t sub_1D1D3FFD8()
{
  result = qword_1EC64E3D0;
  if (!qword_1EC64E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3D0);
  }

  return result;
}

unint64_t sub_1D1D40030()
{
  result = qword_1EC64E3D8;
  if (!qword_1EC64E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E3D8);
  }

  return result;
}

uint64_t sub_1D1D40084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D401E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D4024C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D402B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D40314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StaticZone.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticZone.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticZone(0) + 20));

  return v1;
}

uint64_t type metadata accessor for StaticZone(uint64_t a1)
{
  result = qword_1EE07CF00;
  if (!qword_1EE07CF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StaticZone.roomIDs.getter()
{
  type metadata accessor for StaticZone(0);

  return result;
}

uint64_t static StaticZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticZone(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D17796E4(v11, v12);
}

uint64_t sub_1D1D4053C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7344496D6F6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1D40584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D421C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D405AC(uint64_t a1)
{
  v2 = sub_1D1D40874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D405E8(uint64_t a1)
{
  v2 = sub_1D1D40874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticZone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E410, &qword_1D1EAB610);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D40874();
  sub_1D1E6930C();
  v14 = 0;
  sub_1D1E66A7C();
  sub_1D1D41450(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticZone(0);
    v13 = 1;
    sub_1D1E68ECC();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D412AC(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D1D40874()
{
  result = qword_1EC64E418;
  if (!qword_1EC64E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E418);
  }

  return result;
}

uint64_t StaticZone.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v6 = type metadata accessor for StaticZone(0);
  sub_1D1E678EC();
  v7 = *(v1 + *(v6 + 24));
  result = MEMORY[0x1D3892850](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v3 + 16;
    v11 = *(v3 + 16);
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v11(v5, v12, v2);
      sub_1D1E676EC();
      result = (*v14)(v5, v2);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t StaticZone.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v5 = type metadata accessor for StaticZone(0);
  sub_1D1E678EC();
  v6 = *(v0 + *(v5 + 24));
  MEMORY[0x1D3892850](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v4, v11, v1);
      sub_1D1E676EC();
      (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return sub_1D1E6926C();
}

uint64_t StaticZone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1D1E66A7C();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E420, &qword_1D1EAB618);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v21 - v6;
  v8 = type metadata accessor for StaticZone(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D40874();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v10;
  v22 = a1;
  v31 = 0;
  sub_1D1D41450(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  v13 = v27;
  sub_1D1E68D7C();
  (*(v11 + 32))(v21, v14, v4);
  v30 = 1;
  v15 = sub_1D1E68D2C();
  v16 = &v21[*(v8 + 20)];
  *v16 = v15;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v29 = 2;
  sub_1D1D412AC(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  (*(v12 + 8))(v7, v13);
  v18 = *(v8 + 24);
  v19 = v21;
  *&v21[v18] = v28;
  sub_1D1D41348(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1D1D413AC(v19);
}

uint64_t sub_1D1D41054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D17796E4(v12, v13);
}

uint64_t sub_1D1D410F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1D41450(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  v8 = *(v2 + *(a2 + 24));
  MEMORY[0x1D3892850](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v4);
      sub_1D1E676EC();
      (*(v10 - 8))(v7, v4);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1D412AC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1D41450(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1D41348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D413AC(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D41450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1D41538(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1861350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1D415D8()
{
  result = qword_1EC64E428;
  if (!qword_1EC64E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E428);
  }

  return result;
}

unint64_t sub_1D1D41630()
{
  result = qword_1EC64E430;
  if (!qword_1EC64E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E430);
  }

  return result;
}

unint64_t sub_1D1D41688()
{
  result = qword_1EC64E438;
  if (!qword_1EC64E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E438);
  }

  return result;
}

uint64_t sub_1D1D416DC(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticZone(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1D423A8(v15, v41);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1D422D4(v17 + v39, v7);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1736C50();
        }
      }

      else
      {
        sub_1D1724D68(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D42418(v20, v16);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D422D4(v20, v31);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D41A94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  v63 = sub_1D1E66A7C();
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticZone(0);
  v56 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = [a1 zones];
  sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
  v14 = sub_1D1E67C1C();

  if (v14 >> 62)
  {
    goto LABEL_46;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  v47 = v14;
  if (v15)
  {
    v17 = 0;
    v54 = v14 & 0xFFFFFFFFFFFFFF8;
    v55 = v14 & 0xC000000000000001;
    v52 = v4;
    v53 = v14 + 32;
    v62 = v5 + 32;
    v50 = v10;
    v51 = v7;
    v48 = v15;
    v49 = v12;
    do
    {
      if (v55)
      {
        v35 = v17;
        v19 = MEMORY[0x1D3891EF0](v17, v47);
        v20 = __OFADD__(v35, 1);
        v14 = v35 + 1;
        if (v20)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v17 >= *(v54 + 16))
        {
          goto LABEL_45;
        }

        v18 = v17;
        v19 = *(v53 + 8 * v17);
        v20 = __OFADD__(v18, 1);
        v14 = v18 + 1;
        if (v20)
        {
          goto LABEL_44;
        }
      }

      v60 = v14;
      v14 = v19;
      v21 = [v19 uniqueIdentifier];
      sub_1D1E66A5C();

      v22 = [v14 name];
      v23 = sub_1D1E6781C();
      v25 = v24;

      v26 = &v10[*(v7 + 20)];
      *v26 = v23;
      v26[1] = v25;
      v59 = v14;
      v27 = [v14 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v4 = sub_1D1E67C1C();

      if (v4 >> 62)
      {
        v28 = sub_1D1E6873C();
        v61 = v16;
        if (v28)
        {
LABEL_10:
          v12 = 0;
          v10 = (v4 & 0xC000000000000001);
          v7 = v4 & 0xFFFFFFFFFFFFFF8;
          v29 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v10)
            {
              v30 = MEMORY[0x1D3891EF0](v12, v4);
            }

            else
            {
              if (v12 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v30 = *(v4 + 8 * v12 + 32);
            }

            v31 = v30;
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v32 = [v30 uniqueIdentifier];
            sub_1D1E66A5C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1D177D0AC(0, v29[2] + 1, 1, v29);
            }

            v34 = v29[2];
            v33 = v29[3];
            if (v34 >= v33 >> 1)
            {
              v29 = sub_1D177D0AC((v33 > 1), v34 + 1, 1, v29);
            }

            v29[2] = v34 + 1;
            (*(v5 + 32))(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v64, v63);
            ++v12;
            if (v14 == v28)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v15 = sub_1D1E6873C();
          goto LABEL_3;
        }
      }

      else
      {
        v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61 = v16;
        if (v28)
        {
          goto LABEL_10;
        }
      }

      v29 = MEMORY[0x1E69E7CC0];
LABEL_27:

      v10 = v50;
      v7 = v51;
      *&v50[*(v51 + 24)] = v29;
      v12 = v49;
      sub_1D1D422D4(v10, v49);
      v16 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D177D7A4(0, v16[2] + 1, 1, v16);
      }

      v4 = v52;
      v14 = v16[2];
      v36 = v16[3];
      if (v14 >= v36 >> 1)
      {
        v16 = sub_1D177D7A4((v36 > 1), v14 + 1, 1, v16);
      }

      v16[2] = v14 + 1;
      sub_1D1D422D4(v12, v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v14);
      v17 = v60;
    }

    while (v60 != v48);
  }

  v37 = v16[2];
  if (v37)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1D178D258(0, v37, 0);
    v38 = v65;
    v39 = v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v40 = *(v56 + 72);
    do
    {
      v41 = *(v58 + 48);
      sub_1D1D41348(v39, v4 + v41);
      (*(v5 + 16))(v4, v4 + v41, v63);
      v65 = v38;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D178D258((v42 > 1), v43 + 1, 1);
        v38 = v65;
      }

      *(v38 + 16) = v43 + 1;
      sub_1D1D42338(v4, v38 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43);
      v39 += v40;
      --v37;
    }

    while (v37);

    if (*(v38 + 16))
    {
      goto LABEL_38;
    }

LABEL_40:
    v44 = MEMORY[0x1E69E7CC8];
    goto LABEL_41;
  }

  v38 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_40;
  }

LABEL_38:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B38, &unk_1D1E6E880);
  v44 = sub_1D1E68BCC();
LABEL_41:
  v65 = v44;
  sub_1D1D416DC(v38, 1, &v65);

  return v65;
}

uint64_t sub_1D1D421C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7344496D6F6F72 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D422D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D42338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D423A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D42418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double static StatusStrings.Options.context(_:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for StatusStrings.Options(0);
  v5 = v4[11];
  v6 = sub_1D1E669FC();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *&result = 65793;
  *a2 = 65793;
  *(a2 + 4) = v3;
  *(a2 + 5) = 0;
  *(a2 + v4[12]) = 2;
  v8 = a2 + v4[13];
  *(v8 + 4) = 0;
  *v8 = 2;
  return result;
}

double static StatusStrings.Options.context(_:isStatusTitle:isDetailedStatusTitle:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for StatusStrings.Options(0);
  v9 = v8[11];
  v10 = sub_1D1E669FC();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *&result = 65793;
  *a4 = 65793;
  *(a4 + 4) = v7;
  *(a4 + 5) = a2;
  *(a4 + 6) = a3;
  *(a4 + v8[12]) = 2;
  v12 = a4 + v8[13];
  *(v12 + 4) = 0;
  *v12 = 2;
  return result;
}

double static StatusStrings.Options.context(_:accessoryNoResponseContextFlags:isStatusTitle:isDetailedStatusTitle:)@<D0>(char *a1@<X0>, int *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = type metadata accessor for StatusStrings.Options(0);
  v12 = v11[11];
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  *&result = 65793;
  *a5 = 65793;
  *(a5 + 4) = v8;
  *(a5 + 5) = a3;
  *(a5 + 6) = a4;
  *(a5 + v11[12]) = 2;
  v15 = a5 + v11[13];
  *(v15 + 4) = v10;
  *v15 = v9;
  return result;
}

uint64_t StatusStrings.Options.init(showReachabilityError:showDeviceError:showUpdating:temperatureScale:context:isStatusTitle:isDetailedStatusTitle:lastSeenDate:lastSeenBatteryStatus:accessoryNoResponseContextFlags:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, char *a10, int *a11)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a10;
  v16 = *a11;
  v17 = *(a11 + 4);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = v13;
  a9[4] = v14;
  a9[5] = a6;
  a9[6] = a7;
  v18 = type metadata accessor for StatusStrings.Options(0);
  result = sub_1D19A376C(a8, &a9[v18[11]]);
  a9[v18[12]] = v15;
  v20 = &a9[v18[13]];
  v20[4] = v17;
  *v20 = v16;
  return result;
}

uint64_t type metadata accessor for StatusStrings.Options(uint64_t a1)
{
  result = qword_1EC64E450;
  if (!qword_1EC64E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall StatusStrings.init(isReachable:homeNonResponsiveType:isCalibrating:isConfiguring:isUpdating:stateStatusString:warningStatusString:isHeaderStatusString:)(HomeDataModel::StatusStrings *__return_ptr retstr, Swift::Bool isReachable, HomeDataModel::StaticHome::NonResponsiveType homeNonResponsiveType, Swift::Bool_optional isCalibrating, Swift::Bool_optional isConfiguring, Swift::Bool_optional isUpdating, Swift::String_optional stateStatusString, Swift::String_optional warningStatusString, Swift::Bool isHeaderStatusString)
{
  v9 = *homeNonResponsiveType;
  retstr->isReachable = isReachable;
  retstr->homeNonResponsiveType = v9;
  retstr->isCalibrating = isCalibrating;
  retstr->isConfiguring = isConfiguring;
  retstr->isUpdating = isUpdating;
  retstr->stateStatusString = stateStatusString;
  retstr->warningStatusString = warningStatusString;
}

id StatusStrings.string(for:)(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_1D1E669FC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v54 - v12;
  v14 = *(v1 + 1);
  v15 = *(v1 + 4);
  v17 = *(v1 + 8);
  v16 = *(v1 + 16);
  v19 = *(v1 + 24);
  v18 = *(v1 + 32);
  if (a1[1] == 1)
  {
    v20 = *(v1 + 2);
    v21 = *(v1 + 3);
    if (v20 != 2 && (v20 & 1) != 0)
    {
      v22 = "HFServiceDescriptionCalibrating";
LABEL_35:
      v40 = (v22 - 32) | 0x8000000000000000;
      v25 = 0xD00000000000001FLL;
      return static String.hfLocalized(_:)(v25, v40);
    }

    if (v21 != 2 && (v21 & 1) != 0)
    {
      v23 = "HFMediaAccessoryStateSettingsSyncingStatus";
LABEL_8:
      v24 = (v23 - 32);
      v25 = 0xD00000000000002ALL;
LABEL_71:
      v40 = v24 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v25, v40);
    }
  }

  if (a1[6] & 1) == 0 && a1[2] == 1 && v15 != 2 && (v15)
  {
    v24 = "HFServiceDescriptionUnavailable";
    v25 = 0xD00000000000001CLL;
    goto LABEL_71;
  }

  if (*v1 & 1 | ((*a1 & 1) == 0))
  {
    result = 0;
    v27 = a1[4];
    if (v27 <= 1)
    {
      if (!a1[4])
      {
        return result;
      }
    }

    else
    {
      if (v27 != 2)
      {
        if (v27 != 3)
        {
          return result;
        }

        goto LABEL_44;
      }

      if (v16)
      {
        if (v18)
        {
          v59 = *(v1 + 8);
          v60 = v16;

          MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);
          MEMORY[0x1D3890F70](v19, v18);
          return v59;
        }

        goto LABEL_46;
      }
    }

    if (v18)
    {
LABEL_44:

      return v19;
    }

LABEL_46:

    return v17;
  }

  v56 = v11;
  v57 = v10;
  v61 = &type metadata for HomeAppFeatures;
  v28 = sub_1D19C6154();
  v62 = v28;
  LOBYTE(v59) = 3;
  v29 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  if ((v29 & 1) != 0 && v18)
  {
    v55 = v28;

    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v32 = 1312902231;
    }

    else
    {
      v32 = 1229343063;
    }

    v59 = 0xD000000000000026;
    v60 = 0x80000001D1EBDAC0;
    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v32, 0xE400000000000000);

    v33 = static String.hfLocalized(_:)(v59, v60);
    v35 = v34;

    if (v19 == v33 && v18 == v35)
    {

      return v19;
    }

    v36 = sub_1D1E6904C();

    if (v36)
    {
      return v19;
    }

    v28 = v55;
  }

  v37 = a1[4];
  v38 = type metadata accessor for StatusStrings.Options(0);
  v39 = *&a1[v38[13]] | (a1[v38[13] + 4] << 32);
  if (v37 >= 3)
  {
    result = 0;
    if (v37 != 3)
    {
      return result;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v24 = "mErrorNoResidentDevice";
        v25 = 0xD000000000000030;
      }

      else
      {
        v24 = "ED-B3C6-67BBEB01242C";
        v25 = 0xD000000000000026;
      }

      goto LABEL_71;
    }

    if (v39 != 2 && (~v39 & 0x101000000) == 0)
    {
      if ((v39 & 0x10000) == 0)
      {
        v23 = "HFServiceLongFormErrorNoThreadNetworkLocal";
        goto LABEL_8;
      }

      if ((v39 & 1) == 0)
      {
        v24 = "mErrorNoThreadNetworkLocal";
        v25 = 0xD00000000000002FLL;
        goto LABEL_71;
      }

      if ((v39 & 0x100) == 0)
      {
        v24 = "mErrorNoThreadNetworkNoResident";
        v25 = 0xD00000000000003ALL;
        goto LABEL_71;
      }
    }

    v24 = "staticMatterDevice";
    v25 = 0xD000000000000022;
    goto LABEL_71;
  }

  if (v14)
  {
LABEL_34:
    v22 = "HFServiceDescriptionUnavailable";
    goto LABEL_35;
  }

  v41 = v28;
  v42 = v38[11];
  v43 = a1[v38[12]];
  v44 = a1[5];
  if (*&a1[v38[13]] != 2)
  {
    if ((*&a1[v38[13]] & 0x10000) != 0)
    {
      if ((v39 & 0x101000100) == 0x101000000)
      {
        goto LABEL_34;
      }
    }

    else if ((~v39 & 0x101000000) == 0)
    {
      goto LABEL_34;
    }
  }

  v61 = &type metadata for HomeAppFeatures;
  v62 = v41;
  LOBYTE(v59) = 3;
  v45 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  if ((v45 & 1) == 0)
  {
LABEL_64:
    v24 = "ionSecuritySystem_Disarmed";
    v25 = 0xD00000000000001ELL;
    goto LABEL_71;
  }

  sub_1D174A548(&a1[v42], v5);
  v46 = v56;
  if ((*(v56 + 48))(v5, 1, v57) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    goto LABEL_64;
  }

  v47 = v57;
  (*(v46 + 32))(v13, v5, v57);
  sub_1D1E668FC();
  sub_1D1D43A94(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v48 = sub_1D1E6775C();
  v49 = *(v46 + 8);
  v49(v9, v47);
  if (v48 & 1) != 0 || (sub_1D1E6691C(), v50 = v57, v51 = sub_1D1E6775C(), v49(v9, v50), (v51))
  {
    v49(v13, v57);
    goto LABEL_64;
  }

  LOBYTE(v59) = 0;
  if (v44)
  {
    v52 = sub_1D1CF096C(v13);
  }

  else
  {
    v58 = v43;
    v52 = sub_1D1CF0230(v13, &v58);
  }

  v53 = v52;
  v49(v13, v57);
  return v53;
}

double static StatusStrings.Options.context(_:isStatusTitle:isDetailedStatusTitle:lastSeenDate:lastSeenBatteryStatus:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a5;
  v12 = type metadata accessor for StatusStrings.Options(0);
  sub_1D174A548(a4, a6 + v12[11]);
  *&result = 65793;
  *a6 = 65793;
  *(a6 + 4) = v10;
  *(a6 + 5) = a2;
  *(a6 + 6) = a3;
  *(a6 + v12[12]) = v11;
  v14 = a6 + v12[13];
  *(v14 + 4) = 0;
  *v14 = 2;
  return result;
}

uint64_t StatusContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StatusStrings.Options.lastSeenDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StatusStrings.Options(0) + 44);

  return sub_1D174A548(v3, a1);
}

uint64_t StatusStrings.Options.lastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StatusStrings.Options(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t StatusStrings.Options.accessoryNoResponseContextFlags.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StatusStrings.Options(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 4);
  *a1 = v5;
  return result;
}

uint64_t static StatusStrings.Options.context(_:temperatureScale:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for StatusStrings.Options(0);
  v7 = v6[11];
  v8 = sub_1D1E669FC();
  result = (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *a3 = 257;
  *(a3 + 2) = 1;
  *(a3 + 3) = v5;
  *(a3 + 4) = v4;
  *(a3 + 5) = 0;
  *(a3 + v6[12]) = 2;
  v10 = a3 + v6[13];
  *(v10 + 4) = 0;
  *v10 = 2;
  return result;
}

uint64_t StatusStrings.Options.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v1 + 3));
  MEMORY[0x1D3892850](*(v1 + 4));
  sub_1D1E6922C();
  sub_1D1E6922C();
  v9 = type metadata accessor for StatusStrings.Options(0);
  sub_1D174A548(v1 + v9[11], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1D43A94(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + v9[12]) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  if (*(v1 + v9[13]) != 2)
  {
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StatusStrings.Options.hashValue.getter()
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D434C8()
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D4350C(uint64_t a1)
{
  sub_1D1E6920C();
  StatusStrings.Options.hash(into:)(v2);
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel13StatusStringsV7OptionsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  v15 = v12;
  v38 = type metadata accessor for StatusStrings.Options(0);
  v16 = *(v38 + 44);
  v17 = *(v15 + 48);
  sub_1D174A548(&a1[v16], v14);
  sub_1D174A548(&a2[v16], &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_15;
    }

LABEL_12:
    sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D174A548(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_12;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  sub_1D1D43A94(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v20 = sub_1D1E6775C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = v38;
  v23 = *(v38 + 48);
  v24 = a1[v23];
  v25 = a2[v23];
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v25 == 2)
    {
      return 0;
    }

    if (v24)
    {
      v26 = 0x6C616D726F6ELL;
    }

    else
    {
      v26 = 7827308;
    }

    if (v24)
    {
      v27 = 0xE600000000000000;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    if (v25)
    {
      v28 = 0x6C616D726F6ELL;
    }

    else
    {
      v28 = 7827308;
    }

    if (v25)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    if (v26 == v28 && v27 == v29)
    {
    }

    else
    {
      v30 = sub_1D1E6904C();

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v31 = *(v22 + 52);
  v32 = a1[v31 + 4];
  v33 = *&a1[v31];
  v34 = &a2[v31];
  v35 = v34[4];
  v36 = *v34;
  v37 = *v34;
  v42 = v32;
  v41 = v33;
  v44 = v35;
  v43 = v36;
  if (v33 != 2)
  {
    v39 = v33;
    v40 = (v33 | (v32 << 32)) >> 32;
    return v37 != 2 && _s13HomeDataModel31AccessoryNoResponseContextFlagsV2eeoiySbAC_ACtFZ_0(&v39, &v43);
  }

  return v37 == 2;
}

unint64_t sub_1D1D439F8()
{
  result = qword_1EC64E440;
  if (!qword_1EC64E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E440);
  }

  return result;
}

uint64_t sub_1D1D43A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1D43AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D1D43B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D1D43BDC(uint64_t a1)
{
  sub_1D17B77BC(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07CAB8, &type metadata for StaticAccessory.BatteryStatus);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC64E460, &type metadata for AccessoryNoResponseContextFlags);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1D43CCC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1D1E675FC();
  if (*(v2 + 16))
  {
    sub_1D171D2F0(0x5345545F54494E55, 0xE900000000000054);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static StaticThermostatClusterGroup.thermostat(with:setpointOffset:setpointHold:setpointHoldDuration:setpointHoldExpiryTimestamp:ignorePredictedPresets:holdUntilPresetSuggestionChange:isReducingEnergy:setpointReduceOffset:supportsHomeActivityState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v99 = a8;
  v98 = a7;
  v101 = a6;
  v103 = a5;
  v102 = a3;
  v100 = a2;
  v104 = a9;
  v97 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  MEMORY[0x1EEE9AC00](v97);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a4;
  sub_1D1D46A14(a1, v19, type metadata accessor for EndpointPath);
  v20 = sub_1D1D46170();
  v95 = sub_1D1D466F4();
  v21 = sub_1D1D46170();
  if (*(v21 + 16))
  {
    v22 = *(v21 + 48);
    v113 = *(v21 + 32);
    v114 = v22;
    v23 = *(v21 + 80);
    v115 = *(v21 + 64);
    v116 = v23;
    sub_1D17806DC(&v113, v112);

    v94 = *(&v114 + 1);
    v93 = v115;
    sub_1D1771B38(*(&v114 + 1), v115);
    result = sub_1D1780738(&v113);
  }

  else
  {

    v94 = 0;
    v93 = 0xF000000000000000;
  }

  v25 = *(v20 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v105 = v20;
  if (v25)
  {
    v27 = 0;
    v28 = v20 + 32;
    v29 = v25 - 1;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = *(v20 + 16);
      v32 = (v28 + (v27 << 6));
      v33 = v27;
      while (1)
      {
        if (v33 >= v31)
        {
          __break(1u);
          return result;
        }

        v34 = v32[3];
        v35 = *v32;
        v36 = v32[1];
        v115 = v32[2];
        v116 = v34;
        v113 = v35;
        v114 = v36;
        v27 = v33 + 1;
        if (v36 < 2u)
        {
          break;
        }

        v32 += 4;
        ++v33;
        if (v25 == v27)
        {
          goto LABEL_18;
        }
      }

      v92 = v29;
      sub_1D17806DC(&v113, v112);
      result = swift_isUniquelyReferenced_nonNull_native();
      v111 = v30;
      v91 = v28;
      if ((result & 1) == 0)
      {
        result = sub_1D178D694(0, v30[2] + 1, 1);
        v30 = v111;
      }

      v29 = v92;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        result = sub_1D178D694((v37 > 1), v38 + 1, 1);
        v29 = v92;
        v30 = v111;
      }

      v30[2] = v38 + 1;
      v39 = &v30[8 * v38];
      v40 = v113;
      v41 = v114;
      v42 = v116;
      *(v39 + 4) = v115;
      *(v39 + 5) = v42;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v20 = v105;
      v28 = v91;
    }

    while (v29 != v33);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v92 = v19;
  v43 = v30[2];
  if (v43)
  {
    *&v113 = v26;
    sub_1D178D8B8(0, v43, 0);
    v44 = v113;
    v45 = v30 + 8;
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      sub_1D1771B38(v46, *v45);
      *&v113 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D178D8B8((v48 > 1), v49 + 1, 1);
        v44 = v113;
      }

      v45 += 8;
      *(v44 + 16) = v49 + 1;
      v50 = v44 + 16 * v49;
      *(v50 + 32) = v46;
      *(v50 + 40) = v47;
      --v43;
    }

    while (v43);
  }

  LODWORD(v91) = a13;
  v90 = a12;
  v89 = a11;
  v88 = a10;
  v51 = *(v20 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  v87 = v51;
  if (v51)
  {
    *&v113 = MEMORY[0x1E69E7CC0];
    sub_1D178D8F8(0, v51, 0);
    v52 = v113;
    v53 = (v20 + 64);
    do
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      sub_1D1771B38(v55, *v53);
      *&v113 = v52;
      v57 = *(v52 + 16);
      v56 = *(v52 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D178D8F8((v56 > 1), v57 + 1, 1);
        v52 = v113;
      }

      v53 += 8;
      *(v52 + 16) = v57 + 1;
      v58 = v52 + 24 * v57;
      *(v58 + 32) = v55;
      *(v58 + 40) = v54;
      *(v58 + 48) = 257;
      --v51;
    }

    while (v51);
    v20 = v105;
  }

  v59 = v97;
  v60 = *(v97 + 36);
  v61 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  (*(*(v61 - 8) + 56))(&v16[v60], 1, 1, v61);
  v62 = v59[13];
  v63 = v94;
  v64 = v93;
  sub_1D1771B38(v94, v93);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v65 = sub_1D1E669FC();
  v66 = *(*(v65 - 8) + 56);
  v66(&v16[v62], 0, 1, v65);
  *v16 = 1;
  *(v16 + 1) = v95;
  *(v16 + 2) = v20;
  v67 = v87;
  *(v16 + 3) = v52;
  *(v16 + 4) = v67;
  v16[40] = 0;
  *&v16[v59[10]] = 256;
  v68 = &v16[v59[11]];
  *v68 = v63;
  v68[1] = v64;
  v69 = &v16[v59[12]];
  *v69 = v63;
  v69[1] = v64;
  v16[v59[14]] = 3;
  v16[v59[15]] = 0;
  v16[v59[16]] = v98 & 1;
  v16[v59[17]] = v99 & 1;
  v16[v59[19]] = 6;
  v16[v59[20]] = 0;
  v70 = &v16[v59[18]];
  v70[4] = 0;
  *v70 = 196609;
  v16[v59[21]] = 1;
  v71 = type metadata accessor for StaticThermostatClusterGroup(0);
  v72 = v104;
  v73 = v104 + v71[8];
  v74 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D174A548(v101, v73 + *(v74 + 28));
  *v73 = v100;
  *(v73 + 8) = v102 & 1;
  *(v73 + 9) = v96;
  v75 = BYTE2(v103);
  *(v73 + 10) = v103;
  *(v73 + 12) = v75 & 1;
  v76 = v73 + *(v74 + 32);
  *v76 = 25;
  *(v76 + 8) = 0;
  v98 = 0;
  v99 = 0;
  LODWORD(v100) = 0;
  LOBYTE(v113) = 0;
  v112[0] = 0;
  LOBYTE(v111) = 0;
  LOBYTE(v110[0]) = 0;
  LOBYTE(v109[0]) = 0;
  LODWORD(v101) = 0;
  v102 = 0;
  v103 = 0;
  v77 = v72 + v71[12];
  LODWORD(v105) = 0;
  v78 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v79 = v78[8];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v66((v77 + v79), 0, 1, v65);
  v80 = v78[9];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v66((v77 + v80), 0, 1, v65);
  *v77 = 257;
  *(v77 + 2) = v88 & 1;
  *(v77 + 3) = 3;
  *(v77 + v78[10]) = 0;
  *(v77 + v78[11]) = 1;
  v81 = v77 + v78[12];
  *v81 = v89;
  *(v81 + 8) = v90 & 1;
  sub_1D1D46A7C(v92, v72, type metadata accessor for EndpointPath);
  result = sub_1D1D46A7C(v16, v72 + v71[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  v82 = v72 + v71[9];
  *v82 = 1600;
  *(v82 + 8) = 0;
  *(v82 + 9) = v109[0];
  *(v82 + 12) = *(v109 + 3);
  *(v82 + 16) = 1600;
  *(v82 + 24) = 0;
  *(v82 + 25) = *v108;
  *(v82 + 28) = *&v108[3];
  *(v82 + 32) = 3200;
  *(v82 + 40) = v98;
  *(v82 + 44) = *&v107[3];
  *(v82 + 41) = *v107;
  *(v82 + 48) = 1600;
  *(v82 + 56) = v99;
  *(v82 + 57) = *v106;
  *(v82 + 60) = *&v106[3];
  *(v82 + 64) = 3200;
  *(v82 + 72) = v100;
  v83 = v72 + v71[10];
  *v83 = 800;
  *(v83 + 8) = 0;
  *(v83 + 9) = v113;
  *(v83 + 12) = *(&v113 + 3);
  *(v83 + 16) = 700;
  *(v83 + 24) = v101;
  *(v83 + 25) = *v112;
  *(v83 + 28) = *&v112[3];
  *(v83 + 32) = 3000;
  *(v83 + 40) = v102;
  v84 = v111;
  *(v83 + 44) = *(&v111 + 3);
  *(v83 + 41) = v84;
  *(v83 + 48) = 700;
  *(v83 + 56) = v103;
  v85 = v110[0];
  *(v83 + 60) = *(v110 + 3);
  *(v83 + 57) = v85;
  *(v83 + 64) = 3000;
  *(v83 + 72) = v105;
  *(v72 + v71[6]) = 1;
  *(v72 + v71[5]) = v91 & 1;
  *(v72 + v71[11]) = 256;
  return result;
}

double static StaticMatterDevice.thermostat(with:endpointPath:setpointOffset:setpointHold:setpointHoldDuration:setpointHoldExpiryTimestamp:ignorePredictedPresets:holdUntilPresetSuggestionChange:isReducingEnergy:setpointReduceOffset:supportsHomeActivityState:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unsigned __int8 *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15)
{
  v205 = a8;
  LODWORD(v207) = a7;
  LODWORD(v206) = a5;
  v204 = a4;
  v220 = a2;
  v215 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1EEE9AC00](v215);
  v227 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v216);
  v21 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v214);
  v235 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v212 = (&v189 - v24);
  v211 = type metadata accessor for StaticClusterGroups(0);
  v25 = MEMORY[0x1EEE9AC00](v211);
  v218 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v222 = &v189 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v231 = &v189 - v29;
  v234 = sub_1D1E66A7C();
  v30 = *(v234 - 8);
  v31 = MEMORY[0x1EEE9AC00](v234 - 8);
  v224 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v229 = &v189 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v228 = &v189 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v226 = &v189 - v37;
  v201 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  MEMORY[0x1EEE9AC00](v201);
  v203 = &v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for EndpointPath(0);
  v39 = MEMORY[0x1EEE9AC00](v221);
  v41 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v210 = &v189 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v233 = &v189 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v189 - v46);
  v209 = type metadata accessor for StaticThermostatClusterGroup(0);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v225 = &v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = *a6;
  v213 = a3;
  v202 = v47;
  sub_1D1D46A14(a3, v47, type metadata accessor for EndpointPath);
  v49 = sub_1D1D46170();
  v199 = sub_1D1D466F4();
  v50 = sub_1D1D46170();
  if (*(v50 + 16))
  {
    v51 = *(v50 + 48);
    v246 = *(v50 + 32);
    v247 = v51;
    v52 = *(v50 + 80);
    v248 = *(v50 + 64);
    v249 = v52;
    sub_1D17806DC(&v246, &v245);

    v198 = *(&v247 + 1);
    v197 = v248;
    sub_1D1771B38(*(&v247 + 1), v248);
    sub_1D1780738(&v246);
  }

  else
  {

    v198 = 0;
    v197 = 0xF000000000000000;
  }

  v217 = v41;
  v230 = v30;
  v223 = v21;
  v53 = *(v49 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  v232 = v49;
  v219 = a9;
  if (v53)
  {
    v55 = 0;
    v56 = v49 + 32;
    v57 = (v53 - 1);
    v58 = MEMORY[0x1E69E7CC0];
    do
    {
      v59 = *(v49 + 16);
      v60 = (v56 + (v55 << 6));
      v61 = v55;
      while (1)
      {
        if (v61 >= v59)
        {
          __break(1u);
          goto LABEL_42;
        }

        v62 = v60[3];
        v63 = *v60;
        v64 = v60[1];
        v248 = v60[2];
        v249 = v62;
        v246 = v63;
        v247 = v64;
        v55 = v61 + 1;
        if (v64 < 2u)
        {
          break;
        }

        v60 += 4;
        ++v61;
        if (v53 == v55)
        {
          goto LABEL_18;
        }
      }

      v41 = v57;
      sub_1D17806DC(&v246, &v245);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v244 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178D694(0, v58[2] + 1, 1);
        v58 = v244;
      }

      v57 = v41;
      v67 = v58[2];
      v66 = v58[3];
      if (v67 >= v66 >> 1)
      {
        sub_1D178D694((v66 > 1), v67 + 1, 1);
        v57 = v41;
        v58 = v244;
      }

      v58[2] = v67 + 1;
      v68 = &v58[8 * v67];
      v69 = v246;
      v70 = v247;
      v71 = v249;
      *(v68 + 4) = v248;
      *(v68 + 5) = v71;
      *(v68 + 2) = v69;
      *(v68 + 3) = v70;
      v49 = v232;
      v54 = MEMORY[0x1E69E7CC0];
    }

    while (v57 != v61);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v72 = v58[2];
  if (v72)
  {
    *&v246 = v54;
    sub_1D178D8B8(0, v72, 0);
    v73 = v246;
    v74 = v58 + 8;
    do
    {
      v76 = *(v74 - 1);
      v75 = *v74;
      sub_1D1771B38(v76, *v74);
      *&v246 = v73;
      v78 = *(v73 + 16);
      v77 = *(v73 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1D178D8B8((v77 > 1), v78 + 1, 1);
        v73 = v246;
      }

      v74 += 8;
      *(v73 + 16) = v78 + 1;
      v79 = v73 + 16 * v78;
      *(v79 + 32) = v76;
      *(v79 + 40) = v75;
      --v72;
    }

    while (v72);

    v49 = v232;
  }

  else
  {
  }

  v196 = a1;
  v195 = a15;
  v194 = a14;
  v193 = a13;
  v192 = a12;
  v80 = a11;
  v191 = a10;
  v81 = *(v49 + 16);
  v82 = MEMORY[0x1E69E7CC0];
  v190 = v81;
  if (v81)
  {
    LODWORD(v189) = a11;
    *&v246 = MEMORY[0x1E69E7CC0];
    sub_1D178D8F8(0, v81, 0);
    v82 = v246;
    v83 = (v49 + 64);
    do
    {
      v85 = *(v83 - 1);
      v84 = *v83;
      sub_1D1771B38(v85, *v83);
      *&v246 = v82;
      v87 = *(v82 + 16);
      v86 = *(v82 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1D178D8F8((v86 > 1), v87 + 1, 1);
        v82 = v246;
      }

      v83 += 8;
      *(v82 + 16) = v87 + 1;
      v88 = v82 + 24 * v87;
      *(v88 + 32) = v85;
      *(v88 + 40) = v84;
      *(v88 + 48) = 257;
      --v81;
    }

    while (v81);
    v80 = v189;
  }

  v89 = v201;
  v90 = *(v201 + 36);
  v91 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v92 = v203;
  (*(*(v91 - 8) + 56))(&v203[v90], 1, 1, v91);
  v93 = v89[13];
  v94 = v198;
  v95 = v197;
  sub_1D1771B38(v198, v197);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v96 = sub_1D1E669FC();
  v189 = *(*(v96 - 8) + 56);
  v189(v92 + v93, 0, 1, v96);
  *v92 = 1;
  v97 = v232;
  *(v92 + 8) = v199;
  *(v92 + 16) = v97;
  v98 = v190;
  *(v92 + 24) = v82;
  *(v92 + 32) = v98;
  *(v92 + 40) = 0;
  *(v92 + v89[10]) = 256;
  v99 = (v92 + v89[11]);
  *v99 = v94;
  v99[1] = v95;
  v100 = (v92 + v89[12]);
  *v100 = v94;
  v100[1] = v95;
  *(v92 + v89[14]) = 3;
  *(v92 + v89[15]) = 0;
  *(v92 + v89[16]) = v191 & 1;
  *(v92 + v89[17]) = v80 & 1;
  *(v92 + v89[19]) = 6;
  *(v92 + v89[20]) = 0;
  v101 = v92 + v89[18];
  *(v101 + 4) = 0;
  *v101 = 196609;
  *(v92 + v89[21]) = 1;
  v102 = v209;
  v103 = v225;
  v104 = v225 + *(v209 + 32);
  v105 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D174A548(v205, v104 + *(v105 + 28));
  *v104 = v204;
  *(v104 + 8) = v206 & 1;
  *(v104 + 9) = v200;
  v106 = BYTE2(v207);
  *(v104 + 10) = v207;
  *(v104 + 12) = v106 & 1;
  v107 = v104 + *(v105 + 32);
  *v107 = 25;
  *(v107 + 8) = 0;
  v200 = 0;
  LODWORD(v201) = 0;
  LODWORD(v204) = 0;
  LOBYTE(v246) = 0;
  LOBYTE(v245) = 0;
  LOBYTE(v244) = 0;
  LOBYTE(v243[0]) = 0;
  LOBYTE(v242[0]) = 0;
  LODWORD(v205) = 0;
  LODWORD(v206) = 0;
  LODWORD(v207) = 0;
  v108 = v103 + v102[12];
  LODWORD(v232) = 0;
  v109 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v110 = v109[8];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v111 = v108 + v110;
  v112 = v189;
  v189(v111, 0, 1, v96);
  v113 = v109[9];
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v112(v108 + v113, 0, 1, v96);
  *v108 = 257;
  *(v108 + 2) = v192 & 1;
  *(v108 + 3) = 3;
  *(v108 + v109[10]) = 0;
  *(v108 + v109[11]) = 1;
  v114 = v108 + v109[12];
  *v114 = v193;
  *(v114 + 8) = v194 & 1;
  sub_1D1D46A7C(v202, v103, type metadata accessor for EndpointPath);
  sub_1D1D46A7C(v92, v103 + v102[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  v115 = v103 + v102[9];
  *v115 = 1600;
  *(v115 + 8) = 0;
  *(v115 + 9) = *v239;
  *(v115 + 12) = *&v239[3];
  *(v115 + 16) = 1600;
  *(v115 + 24) = 0;
  *(v115 + 25) = *v238;
  *(v115 + 28) = *&v238[3];
  *(v115 + 32) = 3200;
  *(v115 + 40) = v200;
  *(v115 + 44) = *&v237[3];
  *(v115 + 41) = *v237;
  *(v115 + 48) = 1600;
  *(v115 + 56) = v201;
  *(v115 + 57) = *v236;
  *(v115 + 60) = *&v236[3];
  *(v115 + 64) = 3200;
  *(v115 + 72) = v204;
  v116 = v103 + v102[10];
  *v116 = 800;
  *(v116 + 8) = 0;
  *(v116 + 9) = v243[0];
  *(v116 + 12) = *(v243 + 3);
  *(v116 + 16) = 700;
  *(v116 + 24) = v205;
  v117 = *&v241[3];
  *(v116 + 25) = v242[0];
  *(v116 + 28) = *(v242 + 3);
  *(v116 + 32) = 3000;
  *(v116 + 40) = v206;
  v118 = *v241;
  *(v116 + 44) = v117;
  *(v116 + 41) = v118;
  *(v116 + 48) = 700;
  *(v116 + 56) = v207;
  v119 = *v240;
  *(v116 + 60) = *&v240[3];
  *(v116 + 57) = v119;
  *(v116 + 64) = 3000;
  *(v116 + 72) = v232;
  *(v103 + v102[6]) = 1;
  *(v103 + v102[5]) = v195 & 1;
  *(v103 + v102[11]) = 256;
  v61 = v221;
  v120 = v213;
  v206 = *(v213 + *(v221 + 20));
  v207 = sub_1D179C134(&unk_1F4D66200);
  v202 = *(v230 + 16);
  v201 = v230 + 16;
  v202(v226, v120, v234);
  sub_1D1E66A6C();
  sub_1D1E66A6C();
  v112(v231, 1, 1, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E468, &qword_1D1EAB9C8);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  v121 = (*(*(v204 - 8) + 80) + 32) & ~*(*(v204 - 8) + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1D1E739C0;
  v205 = v122;
  v123 = *(v120 + *(v61 + 24));
  v203 = (v122 + v121);
  *(v122 + v121) = v123;
  v49 = v224;
  sub_1D1E66A6C();
  v124 = v120;
  v41 = v233;
  sub_1D1D46A14(v124, v233, type metadata accessor for EndpointPath);
  v213 = sub_1D179C134(&unk_1F4D66228);
  v232 = sub_1D18D9C84(MEMORY[0x1E69E7CC0]);
  v125 = v212;
  sub_1D1D46A14(v103, v212, type metadata accessor for StaticThermostatClusterGroup);
  v126 = *(v208 + 56);
  v126(v125, 0, 1, v102);
  v127 = type metadata accessor for StaticRVCClusterGroup(0);
  a1 = v222;
  (*(*(v127 - 8) + 56))(v222, 1, 1, v127);
  v128 = *(v211 + 20);
  v126(&a1[v128], 1, 1, v102);
  sub_1D1D469A4(v125, &a1[v128]);
  if (qword_1EC642290 != -1)
  {
LABEL_42:
    swift_once();
  }

  v129 = __swift_project_value_buffer(v214, qword_1EC648EE8);
  v212 = type metadata accessor for MatterTileMetadata;
  v214 = v129;
  sub_1D1D46A14(v129, v235, type metadata accessor for MatterTileMetadata);
  v130 = v210;
  sub_1D1D46A14(v41, v210, type metadata accessor for EndpointPath);
  v131 = v227;
  v132 = v234;
  v133 = v202;
  v202(v227, v130, v234);
  v134 = *(v130 + *(v61 + 20));
  v135 = *(v130 + *(v61 + 24));
  sub_1D1D46B4C(v130, type metadata accessor for EndpointPath);
  v136 = v131 + *(v215 + 24);
  *(v131 + *(v215 + 20)) = v134;
  v137 = v233;
  *v136 = v135;
  *(v136 + 2) = 0;
  v138 = v223;
  v133(v223, v49, v132);
  v139 = v216;
  sub_1D1D46A14(v137, v138 + *(v216 + 20), type metadata accessor for EndpointPath);
  v140 = MEMORY[0x1E69E7CD0];
  *(v138 + v139[12]) = MEMORY[0x1E69E7CD0];
  *(v138 + v139[9]) = v232;
  sub_1D1D46A14(a1, v138 + v139[10], type metadata accessor for StaticClusterGroups);
  *(v138 + v139[7]) = 1;
  *(v138 + v139[11]) = v140;
  v141 = v213;
  *(v138 + v139[8]) = v213;
  v142 = (v138 + v139[6]);
  *v142 = 0x452072657474614DLL;
  v142[1] = 0xEF746E696F70646ELL;
  sub_1D1D46A14(v235, v138 + v139[13], v212);
  v143 = v138 + v139[14];
  *v143 = 0;
  *(v143 + 2) = 1;
  *(v138 + v139[15]) = 6;
  v144 = qword_1EE07A0A8;

  v145 = v132;
  v146 = a1;
  if (v144 != -1)
  {
    swift_once();
  }

  v147 = sub_1D1E6709C();
  __swift_project_value_buffer(v147, qword_1EE07A0B0);
  v148 = v217;
  sub_1D1D46A14(v137, v217, type metadata accessor for EndpointPath);
  v149 = a1;
  v150 = v218;
  sub_1D1D46A14(v149, v218, type metadata accessor for StaticClusterGroups);

  v151 = sub_1D1E6707C();
  v152 = sub_1D1E6832C();

  if (os_log_type_enabled(v151, v152))
  {
    LODWORD(v216) = v152;
    v153 = swift_slowAlloc();
    v154 = v148;
    v155 = swift_slowAlloc();
    *v153 = 136447746;
    *&v246 = 3829371;
    *(&v246 + 1) = 0xE300000000000000;
    v156 = v221;
    v244 = *(v154 + *(v221 + 20));
    v245 = v155;
    v157 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v157);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v244) = *(v154 + *(v156 + 24));
    v158 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v158);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v159 = v246;
    sub_1D1D46B4C(v154, type metadata accessor for EndpointPath);
    v160 = sub_1D1B1312C(v159, *(&v159 + 1), &v245);

    *(v153 + 4) = v160;
    *(v153 + 12) = 2080;
    *(v153 + 14) = sub_1D1B1312C(0x452072657474614DLL, 0xEF746E696F70646ELL, &v245);
    *(v153 + 22) = 2082;
    sub_1D1785A60();
    v161 = sub_1D1E6817C();
    v163 = sub_1D1B1312C(v161, v162, &v245);

    *(v153 + 24) = v163;
    *(v153 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v141, &v246);

    if (v246 == 28)
    {
      v164 = 0xE600000000000000;
      v165 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v244) = v246;
      v165 = sub_1D1E6789C();
      v164 = v168;
    }

    v169 = v224;
    v170 = sub_1D1B1312C(v165, v164, &v245);

    *(v153 + 34) = v170;
    *(v153 + 42) = 2082;
    *(v153 + 44) = sub_1D1B1312C(0x6C62616863616572, 0xE900000000000065, &v245);
    *(v153 + 52) = 2082;
    type metadata accessor for StaticCluster(0);
    sub_1D1785A0C();
    v171 = sub_1D1E6762C();
    v173 = v172;

    v174 = sub_1D1B1312C(v171, v173, &v245);

    *(v153 + 54) = v174;
    *(v153 + 62) = 2082;
    v175 = StaticClusterGroups.description.getter();
    v177 = v176;
    sub_1D1D46B4C(v150, type metadata accessor for StaticClusterGroups);
    v178 = sub_1D1B1312C(v175, v177, &v245);

    *(v153 + 64) = v178;
    _os_log_impl(&dword_1D16EC000, v151, v216, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v153, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v155, -1, -1);
    MEMORY[0x1D3893640](v153, -1, -1);

    sub_1D1D46B4C(v227, type metadata accessor for MatterTilePath);
    sub_1D1D46B4C(v235, type metadata accessor for MatterTileMetadata);
    sub_1D1D46B4C(v233, type metadata accessor for EndpointPath);
    v166 = v230;
    v179 = v169;
    v145 = v234;
    (*(v230 + 8))(v179, v234);
    sub_1D1D46B4C(v222, type metadata accessor for StaticClusterGroups);
    v167 = v220;
    v138 = v223;
  }

  else
  {

    sub_1D1D46B4C(v150, type metadata accessor for StaticClusterGroups);
    sub_1D1D46B4C(v148, type metadata accessor for EndpointPath);
    sub_1D1D46B4C(v227, type metadata accessor for MatterTilePath);
    sub_1D1D46B4C(v235, type metadata accessor for MatterTileMetadata);
    sub_1D1D46B4C(v137, type metadata accessor for EndpointPath);
    v166 = v230;
    (*(v230 + 8))(v224, v145);
    sub_1D1D46B4C(v146, type metadata accessor for StaticClusterGroups);
    v167 = v220;
  }

  v180 = v203;
  sub_1D1D46A7C(v138, &v203[*(v204 + 48)], type metadata accessor for StaticEndpoint);
  v181 = sub_1D18DBDD8(v205);
  swift_setDeallocating();
  sub_1D1D46AE4(v180);
  swift_deallocClassInstance();
  v182 = type metadata accessor for StaticMatterDevice(0);
  v183 = v219;
  sub_1D1D46A14(v214, v219 + v182[15], type metadata accessor for MatterTileMetadata);
  v184 = v206;
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(v206, 0, v183);
  sub_1D1D46B4C(v225, type metadata accessor for StaticThermostatClusterGroup);
  *(v183 + v182[5]) = v184;
  *(v183 + v182[7]) = 1;
  *(v183 + v182[8]) = v207;
  v185 = *(v166 + 32);
  v185(v183 + v182[9], v226, v145);
  v185(v183 + v182[10], v228, v145);
  v185(v183 + v182[12], v229, v145);
  sub_1D19A376C(v231, v183 + v182[13]);
  v186 = (v183 + v182[11]);
  *v186 = 0;
  v186[1] = 0;
  *(v183 + v182[14]) = v181;
  v187 = (v183 + v182[6]);
  *v187 = v196;
  v187[1] = v167;
  *(v183 + v182[16]) = 0;

  return result;
}

uint64_t sub_1D1D46170()
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D178D694(0, 7, 0);
  v0 = 0;
  do
  {
    v1 = *(&unk_1F4D65818 + v0 + 32);
    if (v1 <= 2)
    {
      if (*(&unk_1F4D65818 + v0 + 32))
      {
        if (v1 == 1)
        {
          v4 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC0DD0);
          v6 = v5;
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
          v45 = v7;
          v46 = sub_1D19B9764();
          v44[0] = &unk_1F4D66160;
          v8 = __swift_project_boxed_opaque_existential_1(v44, v7);
          v9 = *v8;
          v10 = *(*v8 + 16);
          if (!v10)
          {
            goto LABEL_23;
          }

          if (v10 > 0xE)
          {
            goto LABEL_21;
          }

          memset(__dst, 0, sizeof(__dst));
          v41 = v10;
          memcpy(__dst, (v9 + 32), v10);
          v11 = *__dst;
          v12 = v38 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
          v38 = v12;
        }

        else
        {
          v4 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC0DB0);
          v6 = v18;
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
          v45 = v19;
          v46 = sub_1D19B9764();
          v44[0] = &unk_1F4D661B0;
          v20 = __swift_project_boxed_opaque_existential_1(v44, v19);
          v21 = *v20;
          v10 = *(*v20 + 16);
          if (!v10)
          {
            goto LABEL_23;
          }

          if (v10 > 0xE)
          {
            goto LABEL_21;
          }

          memset(__dst, 0, sizeof(__dst));
          v41 = v10;
          memcpy(__dst, (v21 + 32), v10);
          v11 = *__dst;
          v12 = v36 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
          v36 = v12;
        }
      }

      else
      {
        v4 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC0DF0);
        v6 = v14;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
        v45 = v15;
        v46 = sub_1D19B9764();
        v44[0] = &unk_1F4D66188;
        v16 = __swift_project_boxed_opaque_existential_1(v44, v15);
        v17 = *v16;
        v10 = *(*v16 + 16);
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v10 > 0xE)
        {
          goto LABEL_21;
        }

        memset(__dst, 0, sizeof(__dst));
        v41 = v10;
        memcpy(__dst, (v17 + 32), v10);
        v11 = *__dst;
        v12 = v37 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
        v37 = v12;
      }
    }

    else
    {
      if (*(&unk_1F4D65818 + v0 + 32) > 4u)
      {
        if (v1 == 5)
        {
          v3 = 0xD00000000000001FLL;
          v13 = "XCTestConfigurationFilePath";
        }

        else
        {
          v3 = 0xD00000000000001ELL;
          v13 = "enablePresets(presets:)";
        }

        v2 = v13 | 0x8000000000000000;
        goto LABEL_26;
      }

      if (v1 == 3)
      {
        v2 = 0x80000001D1EC0D90;
        v3 = 0xD000000000000017;
LABEL_26:
        v4 = static String.hfLocalized(_:)(v3, v2);
        v6 = v28;
        v11 = 0;
        v12 = 0xC000000000000000;
        goto LABEL_30;
      }

      v4 = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC0D70);
      v6 = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
      v45 = v23;
      v46 = sub_1D19B9764();
      v44[0] = &unk_1F4D661D8;
      v24 = __swift_project_boxed_opaque_existential_1(v44, v23);
      v25 = *v24;
      v10 = *(*v24 + 16);
      if (!v10)
      {
LABEL_23:
        v11 = 0;
        v12 = 0xC000000000000000;
        goto LABEL_29;
      }

      if (v10 > 0xE)
      {
LABEL_21:
        sub_1D1E661AC();
        swift_allocObject();
        v26 = sub_1D1E6615C();
        v27 = v26;
        if (v10 >= 0x7FFFFFFF)
        {
          sub_1D1E6685C();
          v11 = swift_allocObject();
          *(v11 + 16) = 0;
          *(v11 + 24) = v10;
          v12 = v27 | 0x8000000000000000;
        }

        else
        {
          v11 = v10 << 32;
          v12 = v26 | 0x4000000000000000;
        }

        goto LABEL_29;
      }

      memset(__dst, 0, sizeof(__dst));
      v41 = v10;
      memcpy(__dst, (v25 + 32), v10);
      v11 = *__dst;
      v12 = v35 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
      v35 = v12;
    }

LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_30:
    LODWORD(v44[0]) = *v43;
    *(v44 + 3) = *&v43[3];
    *__dst = *v42;
    *&__dst[3] = *&v42[3];
    v30 = *(v39 + 16);
    v29 = *(v39 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D178D694((v29 > 1), v30 + 1, 1);
    }

    ++v0;
    *(v39 + 16) = v30 + 1;
    v31 = v39 + (v30 << 6);
    *(v31 + 32) = xmmword_1D1E8BF30;
    *(v31 + 48) = v1;
    v32 = *(v44 + 3);
    *(v31 + 49) = v44[0];
    *(v31 + 52) = v32;
    *(v31 + 56) = v11;
    *(v31 + 64) = v12;
    *(v31 + 72) = 0;
    v33 = *__dst;
    *(v31 + 76) = *&__dst[3];
    *(v31 + 73) = v33;
    *(v31 + 80) = v4;
    *(v31 + 88) = v6;
  }

  while (v0 != 7);
  return v39;
}

uint64_t sub_1D1D466F4()
{
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D178D6B4(0, 7, 0);
  result = v29;
  v1 = byte_1F4D65838;
  v3 = *(v29 + 16);
  v2 = *(v29 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_1D178D6B4((v2 > 1), v3 + 1, 1);
    result = v29;
  }

  *(result + 16) = v4;
  v5 = result + 24 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 1;
  *(v5 + 48) = 1;
  v6 = byte_1F4D65839;
  v30 = result;
  v7 = *(result + 24);
  v8 = v3 + 2;
  if (v4 >= v7 >> 1)
  {
    sub_1D178D6B4((v7 > 1), v3 + 2, 1);
    result = v30;
  }

  *(result + 16) = v8;
  v9 = result + 24 * v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = 1;
  *(v9 + 48) = 1;
  v10 = byte_1F4D6583A;
  v31 = result;
  v11 = *(result + 24);
  v12 = v3 + 3;
  if (v8 >= v11 >> 1)
  {
    sub_1D178D6B4((v11 > 1), v3 + 3, 1);
    result = v31;
  }

  *(result + 16) = v12;
  v13 = result + 24 * v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = 1;
  *(v13 + 48) = 1;
  v14 = byte_1F4D6583B;
  v32 = result;
  v15 = *(result + 24);
  v16 = v3 + 4;
  if (v12 >= v15 >> 1)
  {
    sub_1D178D6B4((v15 > 1), v3 + 4, 1);
    result = v32;
  }

  *(result + 16) = v16;
  v17 = result + 24 * v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 1;
  *(v17 + 48) = 1;
  v18 = byte_1F4D6583C;
  v33 = result;
  v19 = *(result + 24);
  v20 = v3 + 5;
  if (v16 >= v19 >> 1)
  {
    sub_1D178D6B4((v19 > 1), v3 + 5, 1);
    result = v33;
  }

  *(result + 16) = v20;
  v21 = result + 24 * v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = 1;
  *(v21 + 48) = 1;
  v22 = byte_1F4D6583D;
  v34 = result;
  v23 = *(result + 24);
  v24 = v3 + 6;
  if (v20 >= v23 >> 1)
  {
    sub_1D178D6B4((v23 > 1), v3 + 6, 1);
    result = v34;
  }

  *(result + 16) = v24;
  v25 = result + 24 * v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 1;
  *(v25 + 48) = 1;
  v26 = byte_1F4D6583E;
  v35 = result;
  v27 = *(result + 24);
  if (v24 >= v27 >> 1)
  {
    sub_1D178D6B4((v27 > 1), v3 + 7, 1);
    result = v35;
  }

  *(result + 16) = v3 + 7;
  v28 = result + 24 * v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 1;
  *(v28 + 48) = 1;
  return result;
}

uint64_t sub_1D1D469A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D46A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D46A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D46AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D46B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double AutoClimateModel.homeToThermostatControllers.getter()
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  swift_beginAccess();

  return result;
}

double sub_1D1D46C6C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1D1D46D34(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66C9C();
}

uint64_t type metadata accessor for AutoClimateModel(uint64_t a1)
{
  result = qword_1EC64E498;
  if (!qword_1EC64E498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutoClimateModel.homeToThermostatControllers.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66C9C();
}

uint64_t sub_1D1D46F1C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*AutoClimateModel.homeToThermostatControllers.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1D470F0;
}

void sub_1D1D470F0(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

uint64_t sub_1D1D47174()
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  return *(v0 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode);
}

uint64_t sub_1D1D4721C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  *a2 = *(v3 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode);
  return result;
}

uint64_t sub_1D1D472CC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
    sub_1D1E66C9C();
  }

  return result;
}

id AutoClimateModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1D47510()
{
  result = [objc_allocWithZone(type metadata accessor for AutoClimateModel(0)) init];
  qword_1EC64E470 = result;
  return result;
}

id static AutoClimateModel.shared.getter()
{
  if (qword_1EC642408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64E470;

  return v1;
}

uint64_t AutoClimateModel.addController(for:to:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for StaticService(0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v3[25] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[26] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[27] = v5;
  v3[28] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1D476A4, v5, v4);
}

uint64_t sub_1D1D476A4()
{
  v50 = v0;
  v1 = v0[23];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v4 = *(v1 + 104);
  *(inited + 32) = *(v2 + v4);
  LOBYTE(v1) = sub_1D17C4E00(46, inited);
  swift_setDeallocating();
  if ((v1 & 1) == 0)
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1D1E739C0;
    *(v5 + 32) = *(v2 + v4);
    v6 = sub_1D17C4E00(20, v5);
    swift_setDeallocating();
    if (!v6)
    {

      goto LABEL_20;
    }
  }

  v7 = v0[25];
  sub_1D1741C08(v0[20] + *(v0[23] + 156), v7, &qword_1EC644870, &unk_1D1EABA00);
  v8 = type metadata accessor for EndpointPath(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9 = v0[25];

    sub_1D1741A30(v9, &qword_1EC644870, &unk_1D1EABA00);
LABEL_20:
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v31 = v0[24];
    v32 = v0[20];
    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EC64F470);
    sub_1D1D4D138(v32, v31, type metadata accessor for StaticService);
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6833C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[24];
    if (v36)
    {
      v38 = v0[23];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136315138;
      v41 = (v37 + *(v38 + 20));
      v42 = *v41;
      v43 = v41[1];

      sub_1D1D4D1A0(v37, type metadata accessor for StaticService);
      v44 = sub_1D1B1312C(v42, v43, &v49);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D16EC000, v34, v35, "(AutoClimateModel - addController(for:)) - Failed to load thermostat controller for: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D3893640](v40, -1, -1);
      MEMORY[0x1D3893640](v39, -1, -1);
    }

    else
    {

      sub_1D1D4D1A0(v37, type metadata accessor for StaticService);
    }

    goto LABEL_25;
  }

  v10 = v0[25];
  v11 = *(v10 + *(v8 + 20));
  v0[29] = v11;
  sub_1D1D4D1A0(v10, type metadata accessor for EndpointPath);
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC64F470);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v13, v14, "(AutoClimateModel - addController(for:)) - Loading thermostat controller for thermostat with matterDeviceID: %llu if needed", v15, 0xCu);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v16 = v0[22];

  swift_getKeyPath();
  v0[18] = v16;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v17 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  if (*(*(v16 + v17) + 16) && (, sub_1D1742188(), v19 = v18, , (v19 & 1) != 0))
  {
    v20 = v0[22];
    swift_getKeyPath();
    v0[19] = v20;
    sub_1D1E66CAC();

    v21 = *(v16 + v17);
    if (!*(v21 + 16))
    {

      goto LABEL_25;
    }

    v22 = sub_1D1742188();
    if ((v23 & 1) == 0)
    {

      goto LABEL_25;
    }

    v24 = *(*(v21 + 56) + 8 * v22);
    v0[31] = v24;

    v25 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
    swift_beginAccess();
    if (*(*(v24 + v25) + 16))
    {
      sub_1D17420B0(v11);
      if (v26)
      {

LABEL_25:

        v45 = v0[1];

        return v45();
      }
    }

    v46 = swift_task_alloc();
    v0[32] = v46;
    *v46 = v0;
    v46[1] = sub_1D1D47F04;
    v47 = v0[21];
    v48 = v0[20];

    return sub_1D1D48B8C(v48, v47);
  }

  else
  {
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_1D1D47D74;
    v28 = v0[21];
    v29 = v0[20];

    return sub_1D1D482D4(v29, v11, v28);
  }
}

uint64_t sub_1D1D47D74()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D47E94, v3, v2);
}

uint64_t sub_1D1D47E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D47F04(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4802C, v4, v3);
}

uint64_t sub_1D1D4802C()
{
  if (v0[33])
  {
    v1 = swift_task_alloc();
    v0[34] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D48114;

    return sub_1D1D54E08();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1D48114()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48234, v3, v2);
}

uint64_t sub_1D1D48234()
{
  v1 = v0[33];
  v2 = v0[29];

  sub_1D1D4D328(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D482D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D1E66A7C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  sub_1D1E67E1C();
  v4[15] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D483CC, v7, v6);
}

uint64_t sub_1D1D483CC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[10], v3);
  type metadata accessor for AutoClimateModel.Home(0);
  v4 = swift_allocObject();
  v0[18] = v4;
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  *(v4 + v5) = sub_1D18DBFD4(MEMORY[0x1E69E7CC0]);
  *(v4 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig) = 0;
  (*(v2 + 32))(v4 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID, v1, v3);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1D1D48504;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D48504()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1D48670;
  v4 = v1[10];
  v5 = v1[8];

  return sub_1D1D48B8C(v5, v4);
}

uint64_t sub_1D1D48670(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48798, v4, v3);
}

uint64_t sub_1D1D48798()
{
  if (v0[21])
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D48878;

    return sub_1D1D54E08();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1D48878()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D48998, v3, v2);
}

uint64_t sub_1D1D48998()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  sub_1D1D4D328(v1, v5);
  swift_getKeyPath();
  v0[5] = v4;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);

  sub_1D1E66CAC();

  v0[6] = v4;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v6 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  sub_1D175707C(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v6) = v10;
  swift_endAccess();
  v0[7] = v4;
  swift_getKeyPath();
  sub_1D1E66CBC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D48B8C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D1E66A7C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for StaticService(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[18] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[19] = v6;
  v3[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D48CE4, v6, v5);
}

uint64_t sub_1D1D48CE4()
{
  v49 = v0;
  v1 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 40) = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__isTestMode) == 1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_1D1D4D138(v7, v2, type metadata accessor for StaticService);
    (*(v5 + 16))(v3, v6, v4);
    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_allocObject();
    v8 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v2, v3);
LABEL_3:

    v9 = *(v0 + 8);

    return v9(v8);
  }

  v11 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v0 + 168) = v11;
  if (!v11)
  {

    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE07DC60;
    v14 = sub_1D1E66A2C();
    v15 = [v13 accessoryFor_];

    if (v15)
    {
      if (([v15 supportsAdaptiveTemperatureAutomations] & 1) != 0 || objc_msgSend(v15, sel_supportsCleanEnergyAutomation))
      {
        v16 = *(v0 + 136);
        v17 = *(v0 + 104);
        v18 = *(v0 + 72);
        v19 = *(v0 + 80);
        v20 = *(v0 + 56);
        sub_1D1D4D138(*(v0 + 48), v16, type metadata accessor for StaticService);
        (*(v19 + 16))(v17, v20, v18);
        type metadata accessor for AutoClimateModel.Thermostat(0);
        swift_allocObject();
        v8 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v16, v17);

        goto LABEL_3;
      }

      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 128);
      v36 = *(v0 + 48);
      v37 = sub_1D1E6709C();
      __swift_project_value_buffer(v37, qword_1EC64F470);
      sub_1D1D4D138(v36, v35, type metadata accessor for StaticService);
      v38 = sub_1D1E6707C();
      v39 = sub_1D1E6835C();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 128);
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v42 = 136315138;
        sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v44 = sub_1D1E68FAC();
        v46 = v45;
        sub_1D1D4D1A0(v41, type metadata accessor for StaticService);
        v47 = sub_1D1B1312C(v44, v46, &v48);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1D16EC000, v38, v39, "(AutoClimateModel - thermostatController(for:)) - Accessory: %s does not support auto climate control.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1D3893640](v43, -1, -1);
        MEMORY[0x1D3893640](v42, -1, -1);

        goto LABEL_29;
      }

      v34 = v41;
    }

    else
    {
      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 120);
      v22 = *(v0 + 48);
      v23 = sub_1D1E6709C();
      __swift_project_value_buffer(v23, qword_1EC64F470);
      sub_1D1D4D138(v22, v21, type metadata accessor for StaticService);
      v24 = sub_1D1E6707C();
      v25 = sub_1D1E6833C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 120);
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v48 = v29;
        *v28 = 136315138;
        sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v30 = sub_1D1E68FAC();
        v32 = v31;
        sub_1D1D4D1A0(v27, type metadata accessor for StaticService);
        v33 = sub_1D1B1312C(v30, v32, &v48);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1D16EC000, v24, v25, "(AutoClimateModel - thermostatController(for:)) - Failed to find accessory for static service with accessoryId: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1D3893640](v29, -1, -1);
        MEMORY[0x1D3893640](v28, -1, -1);

LABEL_29:
        v8 = 0;
        goto LABEL_3;
      }

      v34 = v27;
    }

    sub_1D1D4D1A0(v34, type metadata accessor for StaticService);
    goto LABEL_29;
  }

  *(v0 + 184) = *(*(v0 + 112) + 44);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D49408, v12, 0);
}

uint64_t sub_1D1D49408()
{
  v46 = v0;
  v1 = v0;
  v2 = *(v0 + 168);
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v45 = sub_1D1749970(v5);
    sub_1D1747DDC(&v45);

    v6 = v45;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(*(v0 + 80) + 16);
  v11(*(v0 + 96), v10 + v7, v9);
  v11(v8, v10 + v7, v9);
  v43 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v6 & 0xC000000000000001;
  v42 = v6 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v11 = v6;
      v16 = MEMORY[0x1D3891EF0](v13, v6);
    }

    else
    {
      if (v13 >= *(v44 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = v6;
      v16 = *(v6 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v1;
    v19 = v1[11];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1749C64, v22, v21);

    if (v23)
    {
      v12 = v13;
      v6 = v11;
      v1 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v6 = v11;
    v1 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v6);
      }

      else
      {
        if (v12 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v42 + 8 * v12);
      }

      v26 = v25;
      v27 = v1[12];
      v29 = v1[9];
      v28 = v1[10];
      v30 = [v25 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v1;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[22] = v34;

      v11 = *(v28 + 8);
      (v11)(v27, v29);

      v12 = v33[11];
      v14 = v33[9];
      if (v34)
      {

        (v11)(v12, v14);
        v35 = v33[19];
        v36 = v33[20];
        v37 = sub_1D1D49B38;
        goto LABEL_26;
      }

LABEL_34:
      v37 = (v11)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v37, v35, v36);
    }
  }

  else if (v12 != *(v44 + 16))
  {
    goto LABEL_19;
  }

  v38 = v1[11];
  v39 = v1[9];
  v40 = *(v1[10] + 8);
  v40(v1[12], v39);

  v40(v38, v39);
  v35 = v1[19];
  v36 = v1[20];
  v37 = sub_1D1D498A4;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v37, v35, v36);
}

uint64_t sub_1D1D498A4()
{
  v17 = v0;

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[6];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F470);
  sub_1D1D4D138(v2, v1, type metadata accessor for StaticService);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D1E68FAC();
    v12 = v11;
    sub_1D1D4D1A0(v7, type metadata accessor for StaticService);
    v13 = sub_1D1B1312C(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel - thermostatController(for:)) - Failed to find accessory for static service with accessoryId: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {

    sub_1D1D4D1A0(v7, type metadata accessor for StaticService);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1D1D49B38()
{
  v24 = v0;

  v1 = v0[22];
  if (([v1 supportsAdaptiveTemperatureAutomations] & 1) != 0 || objc_msgSend(v1, sel_supportsCleanEnergyAutomation))
  {
    v2 = v0[17];
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    sub_1D1D4D138(v0[6], v2, type metadata accessor for StaticService);
    (*(v5 + 16))(v3, v6, v4);
    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_allocObject();
    v7 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v2, v3);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v8 = v0[16];
    v9 = v0[6];
    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64F470);
    sub_1D1D4D138(v9, v8, type metadata accessor for StaticService);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[16];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v17 = sub_1D1E68FAC();
      v19 = v18;
      sub_1D1D4D1A0(v14, type metadata accessor for StaticService);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v11, v12, "(AutoClimateModel - thermostatController(for:)) - Accessory: %s does not support auto climate control.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      sub_1D1D4D1A0(v14, type metadata accessor for StaticService);
    }

    v7 = 0;
  }

  v21 = v0[1];

  return v21(v7);
}

uint64_t AutoClimateModel.localPresenceRooms(for:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D1E66A7C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v2[18] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v2[19] = v5;
  v2[20] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A004, v5, v4);
}

uint64_t sub_1D1D4A004()
{
  v1 = AutoClimateModel.localPresenceRoomConfigs(for:)();
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
    *(v0 + 176) = v3;
    if (v3)
    {
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        if (sub_1D1E6873C())
        {
          sub_1D179D3B8(MEMORY[0x1E69E7CC0]);
          v4 = v24;
        }

        else
        {
          v4 = MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 40) = v4;
      v5 = *(v2 + 16);
      *(v0 + 184) = v5;
      if (v5)
      {
        *(v0 + 248) = *(*(v0 + 120) + 80);
        swift_beginAccess();
        *(v0 + 192) = 0;
        *(v0 + 200) = 0;
        v6 = *(v0 + 168);
        if (*(v6 + 16))
        {
          v7 = *(v0 + 136);
          v8 = *(v0 + 112);
          v9 = *(v0 + 72);
          v10 = *(v0 + 80);
          sub_1D1D4D138(v6 + ((*(v0 + 248) + 32) & ~*(v0 + 248)), v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v11 = *(v10 + 16);
          *(v0 + 208) = v11;
          *(v0 + 216) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v11(v8, v7, v9);
          sub_1D1D4D1A0(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (qword_1EC642358 == -1)
          {
LABEL_8:
            v12 = qword_1EC64ABE8;

            return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v12, 0);
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_8;
      }
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
      v26 = MEMORY[0x1E69E7CC0];
      v14 = *(v2 + 16);
      if (v14)
      {
        v15 = *(v0 + 120);
        v16 = v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v17 = *(v15 + 72);
        do
        {
          sub_1D1D4D138(v16, *(v0 + 128), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (qword_1EE07DC58 != -1)
          {
            swift_once();
          }

          v18 = *(v0 + 128);
          v19 = qword_1EE07DC60;
          v20 = sub_1D1E66A2C();
          v21 = [v19 roomFor_];

          v22 = sub_1D1D4D1A0(v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v21)
          {
            MEMORY[0x1D3891220](v22);
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v13 = v26;
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      v4 = sub_1D17843BC(v13);
    }
  }

  else
  {

    v4 = 0;
  }

  v23 = *(v0 + 8);

  return v23(v4);
}

uint64_t sub_1D1D4A3EC()
{
  v2 = *(v0[22] + 64);
  if (!v2)
  {
    v6 = v0[24];
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v3 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
LABEL_44:
    v54 = sub_1D1E6873C();
    if (!v54)
    {
      goto LABEL_50;
    }

    v6 = v54;
    v5 = sub_1D1808600();

    sub_1D18D2FC0(v5 + 32, v6, v4);
    v56 = v55;

    if (v56 != v6)
    {
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  while (1)
  {
    v6 = v0[24];
    v0[6] = v5;
    sub_1D1747DDC(v0 + 6);
    if (v6)
    {
      break;
    }

    v1 = v0[6];
LABEL_10:
    v8 = v0[26];
    v4 = v0[27];
    v9 = v0[14];
    v10 = v0[12];
    v62 = v0;
    v11 = v0[9];
    v8(v0[13], v9, v11);
    v8(v10, v9, v11);
    v59 = v1 >> 62;
    if (v1 >> 62)
    {
LABEL_47:
      v64 = v1 & 0xFFFFFFFFFFFFFF8;
      v63 = sub_1D1E6873C();
    }

    else
    {
      v64 = v1 & 0xFFFFFFFFFFFFFF8;
      v63 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v60 = v1;
    v61 = v1 & 0xC000000000000001;
    v58 = v1 + 32;
    v13 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v0 = v62;
    while (1)
    {
      if (v63 == v12)
      {
        v12 = v63;
        goto LABEL_26;
      }

      if (v61)
      {
        v15 = MEMORY[0x1D3891EF0](v12, v1);
      }

      else
      {
        if (v12 >= *(v64 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v15 = *(v1 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v0[12];
      v18 = [v15 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v19 = sub_1D1E67C1C();

      v20 = swift_task_alloc();
      *(v20 + 16) = v17;
      v21 = sub_1D174A6C4(sub_1D1749C64, v20, v19);

      if (v21)
      {
        break;
      }

      v22 = v0[11];
      v24 = v0[9];
      v23 = v0[10];
      v25 = v13;
      v26 = [v16 v13[452]];
      v27 = [v26 uniqueIdentifier];

      sub_1D1E66A5C();
      v4 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*(v23 + 8))(v22, v24);
      if (v4)
      {
        v4 = [v16 v25 + 551];

        v1 = v60;
        v13 = v25;
        if (v4)
        {
          v0 = v62;
          goto LABEL_26;
        }
      }

      else
      {

        v1 = v60;
        v13 = v25;
      }

      v14 = __OFADD__(v12++, 1);
      v0 = v62;
      if (v14)
      {
        goto LABEL_43;
      }
    }

    v1 = v60;
LABEL_26:
    v0[28] = v6;
    if (v59)
    {
      if (v12 == sub_1D1E6873C())
      {
LABEL_34:
        v36 = v0[14];
        v37 = v0[12];
        v38 = v0[9];
        v39 = *(v0[10] + 8);
        v39(v0[13], v38);

        v39(v37, v38);
        v39(v36, v38);
        v40 = v0[19];
        v41 = v0[20];
        v42 = sub_1D1D4AABC;
LABEL_39:
        v53 = v42;

        return MEMORY[0x1EEE6DFA0](v53, v40, v41);
      }
    }

    else if (v12 == *(v64 + 16))
    {
      goto LABEL_34;
    }

    if (v61)
    {
      v28 = MEMORY[0x1D3891EF0](v12, v1);
LABEL_31:
      v29 = v28;
      v30 = v0[13];
      v31 = [v28 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v32 = sub_1D1E67C1C();

      v33 = swift_task_alloc();
      *(v33 + 16) = v30;
      v34 = sub_1D174A6C4(sub_1D1778988, v33, v32);
      v0[29] = v6;

      if (v34)
      {
        v35 = *(v0[10] + 8);
        v35(v0[13], v0[9]);

LABEL_38:
        v0[30] = v34;
        v51 = v0[14];
        v52 = v0[9];
        v35(v0[12], v52);
        v35(v51, v52);
        v40 = v0[19];
        v41 = v0[20];
        v42 = sub_1D1D4ACA8;
        goto LABEL_39;
      }

      v44 = v0[10];
      v43 = v0[11];
      v45 = v0[9];
      v46 = [v29 v13[452]];
      v47 = v13;
      v48 = [v46 uniqueIdentifier];

      sub_1D1E66A5C();
      LOBYTE(v46) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v35 = *(v44 + 8);
      v35(v43, v45);
      v49 = v0[13];
      if (v46)
      {
        v50 = v0[9];
        v34 = [v29 v47 + 551];
        v35(v49, v50);

        if (v34)
        {

          v0 = v62;
          goto LABEL_38;
        }
      }

      else
      {
        v57 = v0[9];
        v35(v0[12], v57);
        v35(v49, v57);

        __break(1u);
      }

      v53 = (v35)(v62[12], v62[9]);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v53, v40, v41);
    }

    if (v12 < *(v64 + 16))
    {
      v28 = *(v58 + 8 * v12);
      goto LABEL_31;
    }

    __break(1u);
LABEL_50:
    v5 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D1D4AABC()
{
  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {

    v2 = *(v0 + 40);

    v3 = *(v0 + 8);

    return v3(v2);
  }

  *(v0 + 192) = *(v0 + 224);
  *(v0 + 200) = v1;
  v5 = *(v0 + 168);
  if (v1 >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  sub_1D1D4D138(v5 + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(*(v0 + 120) + 72) * v1, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v10 = *(v9 + 16);
  *(v0 + 208) = v10;
  *(v0 + 216) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v7, v6, v8);
  sub_1D1D4D1A0(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if (qword_1EC642358 != -1)
  {
LABEL_11:
    swift_once();
  }

  v11 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v11, 0);
}

uint64_t sub_1D1D4ACA8()
{
  v13 = v0;
  sub_1D1769B04(&v12, *(v0 + 240));

  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {

    v2 = *(v0 + 40);

    v3 = *(v0 + 8);

    return v3(v2);
  }

  *(v0 + 192) = *(v0 + 232);
  *(v0 + 200) = v1;
  v5 = *(v0 + 168);
  if (v1 >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  sub_1D1D4D138(v5 + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(*(v0 + 120) + 72) * v1, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v10 = *(v9 + 16);
  *(v0 + 208) = v10;
  *(v0 + 216) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v7, v6, v8);
  sub_1D1D4D1A0(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if (qword_1EC642358 != -1)
  {
LABEL_11:
    swift_once();
  }

  v11 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v11, 0);
}

uint64_t AutoClimateModel.localPresenceRoomConfigs(for:)()
{
  swift_getKeyPath();
  v9 = v0;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v2 = *(v9 + v1);
  if (*(v2 + 16))
  {

    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      v6 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
      swift_beginAccess();
      v7 = *(v5 + v6);

      return v7;
    }
  }

  return 0;
}

uint64_t AutoClimateModel.controller(for:in:)(uint64_t a1)
{
  swift_getKeyPath();
  v14 = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v4 = *(v14 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1D1742188();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
      swift_beginAccess();
      v9 = *(v7 + v8);
      if (*(v9 + 16))
      {
        v10 = sub_1D17420B0(a1);
        if (v11)
        {
          v12 = *(*(v9 + 56) + 8 * v10);

          return v12;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1D1D4B170()
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1AA5CD0();
  swift_endAccess();

  swift_getKeyPath();
  sub_1D1E66CBC();
}

uint64_t sub_1D1D4B2BC(uint64_t a1)
{
  v2 = v1;
  result = sub_1D1E682DC();
  if ((v4 & 1) == 0)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
    sub_1D1E66CAC();

    v6 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
    result = swift_beginAccess();
    if (*(*(v2 + v6) + 16))
    {

      sub_1D1742188();
      if (v7)
      {

        sub_1D1D4D488(v5);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t AutoClimateModel.setUpThermostatController(for:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[10] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4B524, v6, v5);
}

uint64_t sub_1D1D4B524()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D1741C08(v0[3], v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];

    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = v0[5];
    (*(v8 + 32))(v7, v0[6], v9);
    (*(v8 + 16))(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1D1D4B6E8;
    v12 = v0[5];
    v13 = v0[2];

    return sub_1D1D4B8DC(v13, v12);
  }
}

uint64_t sub_1D1D4B6E8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4B83C, v4, v3);
}

uint64_t sub_1D1D4B83C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1D4B8DC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[13] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[18] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[19] = v6;
  v3[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4BA18, v6, v5);
}

uint64_t sub_1D1D4BA18()
{
  v57 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1D1741C08(*(v0 + 88), v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 104);

    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
LABEL_23:

    v44 = *(v0 + 8);

    return v44();
  }

  (*(*(v0 + 120) + 32))(*(v0 + 136), *(v0 + 104), *(v0 + 112));
  v5 = sub_1D1E682DC();
  *(v0 + 168) = v5;
  if (v6)
  {

    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 80);
    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F470);
    v9 = v7;
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 136);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    if (v12)
    {
      v16 = *(v0 + 80);
      v55 = *(v0 + 136);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v56 = v18;
      *v17 = 136315138;
      v19 = [v16 name];
      v20 = sub_1D1E6781C();
      v22 = v21;

      v23 = sub_1D1B1312C(v20, v22, &v56);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v10, v11, "(AutoClimateModel - addController(for:)) - Failed to load thermostat controller for: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);

      (*(v14 + 8))(v55, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    goto LABEL_23;
  }

  v24 = v5;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v25 = sub_1D1E6709C();
  __swift_project_value_buffer(v25, qword_1EC64F470);
  v26 = sub_1D1E6707C();
  v27 = sub_1D1E6835C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v24;
    _os_log_impl(&dword_1D16EC000, v26, v27, "(AutoClimateModel - addController(for:)) - Loading thermostat controller for thermostat with matterDeviceID: %llu if needed", v28, 0xCu);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 64) = v29;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v30 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  if (*(*(v29 + v30) + 16) && (, sub_1D1742188(), v32 = v31, , (v32 & 1) != 0))
  {
    v33 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 72) = v33;
    sub_1D1E66CAC();

    v34 = *(v29 + v30);
    if (!*(v34 + 16))
    {
      v45 = *(v0 + 136);
      v46 = *(v0 + 112);
      v47 = *(v0 + 120);

      (*(v47 + 8))(v45, v46);
      goto LABEL_23;
    }

    v35 = sub_1D1742188();
    if ((v36 & 1) == 0)
    {
      v48 = *(v0 + 136);
      v49 = *(v0 + 112);
      v50 = *(v0 + 120);

      (*(v50 + 8))(v48, v49);
      goto LABEL_23;
    }

    v37 = *(*(v34 + 56) + 8 * v35);
    *(v0 + 184) = v37;

    v38 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
    swift_beginAccess();
    if (*(*(v37 + v38) + 16) && (sub_1D17420B0(v24), (v39 & 1) != 0) || ([*(v0 + 80) supportsAdaptiveTemperatureAutomations] & 1) == 0 && !objc_msgSend(*(v0 + 80), sel_supportsCleanEnergyAutomation) || (v51 = *(v0 + 128), v52 = *(v0 + 80), (*(*(v0 + 120) + 16))(v51, *(v0 + 136), *(v0 + 112)), type metadata accessor for AutoClimateModel.Thermostat(0), swift_allocObject(), v53 = AutoClimateModel.Thermostat.init(accessory:homeUUID:)(v52, v51), (*(v0 + 192) = v53) == 0))
    {
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));

      goto LABEL_23;
    }

    v54 = swift_task_alloc();
    *(v0 + 200) = v54;
    *v54 = v0;
    v54[1] = sub_1D1D4C2E0;

    return sub_1D1D54E08();
  }

  else
  {
    v40 = swift_task_alloc();
    *(v0 + 176) = v40;
    *v40 = v0;
    v40[1] = sub_1D1D4C120;
    v41 = *(v0 + 136);
    v42 = *(v0 + 80);

    return sub_1D1D4C4CC(v42, v24, v41);
  }
}

uint64_t sub_1D1D4C120()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C240, v3, v2);
}

uint64_t sub_1D1D4C240()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1D4C2E0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C400, v3, v2);
}

uint64_t sub_1D1D4C400()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  sub_1D1D4D328(v1, v2);

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1D4C4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D1E66A7C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  sub_1D1E67E1C();
  v4[15] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C5C4, v7, v6);
}

uint64_t sub_1D1D4C5C4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = *(v2 + 16);
  v0[18] = v5;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  type metadata accessor for AutoClimateModel.Home(0);
  v6 = swift_allocObject();
  v0[20] = v6;
  v7 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  *(v6 + v7) = sub_1D18DBFD4(MEMORY[0x1E69E7CC0]);
  *(v6 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig) = 0;
  (*(v2 + 32))(v6 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID, v1, v3);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1D1D4C708;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D4C708()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C828, v3, v2);
}

uint64_t sub_1D1D4C828()
{
  if ((([*(v0 + 64) supportsAdaptiveTemperatureAutomations] & 1) != 0 || objc_msgSend(*(v0 + 64), sel_supportsCleanEnergyAutomation)) && (v1 = *(v0 + 112), v2 = *(v0 + 64), (*(v0 + 144))(v1, *(v0 + 80), *(v0 + 96)), type metadata accessor for AutoClimateModel.Thermostat(0), swift_allocObject(), v3 = AutoClimateModel.Thermostat.init(accessory:homeUUID:)(v2, v1), (*(v0 + 176) = v3) != 0))
  {
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1D1D4C984;

    return sub_1D1D54E08();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D1D4C984()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4CAA4, v3, v2);
}

uint64_t sub_1D1D4CAA4()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  sub_1D1D4D328(v1, v5);
  swift_getKeyPath();
  v0[5] = v4;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);

  sub_1D1E66CAC();

  v0[6] = v4;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v6 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  sub_1D175707C(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v6) = v10;
  swift_endAccess();
  v0[7] = v4;
  swift_getKeyPath();
  sub_1D1E66CBC();

  v8 = v0[1];

  return v8();
}

uint64_t AutoClimateModel.invalidateLocalPresenceRooms(for:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1D1E67E1C();
  v2[8] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4CD30, v4, v3);
}

uint64_t sub_1D1D4CD30()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel, &protocol conformance descriptor for AutoClimateModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_1D1742188();
    if (v5)
    {
      v0[11] = *(*(v3 + 56) + 8 * v4);

      v6 = swift_task_alloc();
      v0[12] = v6;
      *v6 = v0;
      v6[1] = sub_1D1D4CEFC;

      return AutoClimateModel.Home.fetchLocalPresenceRooms()();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D4CEFC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4D040, v3, v2);
}

uint64_t sub_1D1D4D040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D4D0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return AutoClimateModel.invalidateLocalPresenceRooms(for:)(a1);
}

uint64_t sub_1D1D4D138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D4D1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D4D208(uint64_t a1)
{
  result = sub_1D1E66CEC();
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

uint64_t sub_1D1D4D2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1D4D328(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  sub_1D1756F58(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v11;
  swift_endAccess();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F470);
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6835C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a2;
    _os_log_impl(&dword_1D16EC000, v8, v9, "(AutoClimateModel - addController(for:)) - Loaded thermostat controller for thermostat with matterNodeID: %llu", v10, 0xCu);
    MEMORY[0x1D3893640](v10, -1, -1);
  }
}

uint64_t sub_1D1D4D488(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  swift_beginAccess();
  sub_1D17420B0(a1);
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + v4);
    v9 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173E7AC();
      v7 = v9;
    }

    sub_1D1757DEC();
    *(v2 + v4) = v7;
  }

  return swift_endAccess();
}

uint64_t AutoClimateModel.Home.fetchLocalPresenceRooms()()
{
  v1[23] = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v1[26] = v3;
  v1[27] = v4;
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_1D1D4D650;

  return sub_1D1E3766C(v0 + v4);
}

uint64_t sub_1D1D4D650(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4D750, 0, 0);
}

uint64_t sub_1D1D4D750()
{
  v14 = v0;
  v1 = v0[29];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1D1D4D9E8;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4A8, &qword_1D1EABAF8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D1D4E798;
    v0[13] = &block_descriptor_55;
    v0[14] = v2;
    [v1 fetchRoomsSupportingLocalPresenceWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F470);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6833C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_1D1E66A1C();
      v10 = sub_1D1B1312C(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Failed to find eligible home for identifier: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D3893640](v7, -1, -1);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1D4D9E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D1D4E1A4;
  }

  else
  {
    v2 = sub_1D1D4DAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1D4DAF8()
{
  v76 = v0;
  v1 = sub_1D1906554(v0[21]);

  v2 = v1;
  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    v62 = sub_1D1E6873C();
    v2 = v1;
    v3 = v62;
  }

  else
  {
    v3 = *(v1 + 2);
  }

  v4 = MEMORY[0x1E69E7CC0];
  v70 = v3;
  v71 = v2;
  if (v3)
  {
    v5 = v2;
    v75 = MEMORY[0x1E69E7CC0];
    v6 = sub_1D178DCE4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v9 = 0;
    v66 = v0[24];
    v68 = v0[25];
    v2 = v5;
    v64 = v5 & 0xC000000000000001;
    v4 = v75;
    do
    {
      v72 = v4;
      if (v64)
      {
        v10 = MEMORY[0x1D3891EF0](v9, v2);
      }

      else
      {
        v10 = *&v2[8 * v9 + 32];
      }

      v11 = v10;
      v12 = v0[26];
      v13 = v0[27];
      v14 = v0[23];
      v15 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      v16 = [v11 name];
      v17 = sub_1D1E6781C();
      v18 = v0;
      v20 = v19;

      v21 = *(v66 + 24);
      v22 = sub_1D1E66A7C();
      (*(*(v22 - 8) + 16))(v12 + v21, v14 + v13, v22);
      v23 = (v12 + *(v66 + 20));
      *v23 = v17;
      v23[1] = v20;
      v4 = v72;
      v75 = v72;
      v25 = *(v72 + 16);
      v24 = *(v72 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178DCE4((v24 > 1), v25 + 1, 1);
        v4 = v75;
      }

      v26 = v18[26];
      ++v9;
      *(v4 + 16) = v25 + 1;
      sub_1D1D4E92C(v26, v4 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25);
      v3 = v70;
      v2 = v71;
      v0 = v18;
    }

    while (v70 != v9);
  }

  v27 = v2;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v28 = v0[29];
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC64F470);
  v30 = v28;

  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6835C();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_29;
  }

  v69 = v32;
  v33 = v0[29];
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v74 = v35;
  *v34 = 136315394;
  v36 = [v33 name];
  v37 = sub_1D1E6781C();
  v39 = v38;

  v40 = sub_1D1B1312C(v37, v39, &v74);

  *(v34 + 4) = v40;
  *(v34 + 12) = 2080;
  v73 = v4;
  v67 = v35;
  if (v3)
  {
    v75 = MEMORY[0x1E69E7CC0];
    v6 = sub_1D178CD24(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v65 = v31;
      v41 = v0;
      v42 = 0;
      v43 = v75;
      v44 = v27;
      v45 = v27 & 0xC000000000000001;
      do
      {
        if (v45)
        {
          v46 = MEMORY[0x1D3891EF0](v42, v44);
        }

        else
        {
          v46 = *&v44[8 * v42 + 32];
        }

        v47 = v46;
        v48 = [v46 name];
        v49 = sub_1D1E6781C();
        v51 = v50;

        v75 = v43;
        v53 = *(v43 + 16);
        v52 = *(v43 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1D178CD24((v52 > 1), v53 + 1, 1);
          v43 = v75;
        }

        ++v42;
        *(v43 + 16) = v53 + 1;
        v54 = v43 + 16 * v53;
        *(v54 + 32) = v49;
        *(v54 + 40) = v51;
        v44 = v71;
      }

      while (v70 != v42);

      v31 = v65;
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  v41 = v0;

  v43 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v41[22] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v55 = sub_1D1E6770C();
  v57 = v56;
  v0 = v41;

  v58 = sub_1D1B1312C(v55, v57, &v74);

  *(v34 + 14) = v58;
  _os_log_impl(&dword_1D16EC000, v31, v69, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Successfully fetched rooms supporting local presence for home: %s rooms: %s.", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v67, -1, -1);
  MEMORY[0x1D3893640](v34, -1, -1);

  v4 = v73;
LABEL_29:
  v0[31] = v4;
  sub_1D1E67E1C();
  v0[32] = sub_1D1E67E0C();
  v59 = sub_1D1E67D4C();
  v61 = v60;
  v6 = sub_1D1D4E0A0;
  v7 = v59;
  v8 = v61;

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D1D4E0A0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);

  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  *(v2 + v3) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4E13C, 0, 0);
}

uint64_t sub_1D1D4E13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D4E1A4(uint64_t a1)
{
  v26 = v1;
  swift_willThrow();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v3 = v1[29];
  v2 = v1[30];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F470);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[30];
  if (v9)
  {
    v11 = v1[29];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v15 = [v11 name];
    v16 = sub_1D1E6781C();
    v18 = v17;

    v19 = sub_1D1B1312C(v16, v18, &v25);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    v20 = v10;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_1D16EC000, v7, v8, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Failed to get rooms supporting local presence for home: %s because of error: %@.", v12, 0x16u);
    sub_1D179F28C(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
  }

  v1[31] = 0;
  sub_1D1E67E1C();
  v1[32] = sub_1D1E67E0C();
  v23 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4E0A0, v23, v22);
}

uint64_t AutoClimateModel.Home.homeUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1D4E498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_1D1D4E500()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1D1D4E548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1D1D4E600()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return v2 && *(v2 + 16) != 0;
}

uint64_t AutoClimateModel.Home.deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AutoClimateModel.Home.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1D4E798(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D1A7DEE4();
    sub_1D1D4EB34();
    **(*(v4 + 64) + 40) = sub_1D1E6816C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1D4E884()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D4E92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AutoClimateModel.Home(uint64_t a1)
{
  result = qword_1EC64E4B8;
  if (!qword_1EC64E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D4E9E4(uint64_t a1)
{
  result = sub_1D1E66A7C();
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

unint64_t sub_1D1D4EB34()
{
  result = qword_1EC6434E8;
  if (!qword_1EC6434E8)
  {
    sub_1D1A7DEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434E8);
  }

  return result;
}

uint64_t sub_1D1D4EB8C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v2[25] = swift_task_alloc();
  v3 = sub_1D1E66C5C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4EC9C, 0, 0);
}

uint64_t sub_1D1D4EC9C()
{
  v24 = v0;
  v1 = [*(v0 + 192) location];
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E696F388]) initWithLocation_];
    *(v0 + 256) = v3;
    if (v3)
    {
      v4 = v3;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 168;
      *(v0 + 24) = sub_1D1D4F08C;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4C8, &qword_1D1EABB58);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D1D4F83C;
      *(v0 + 104) = &block_descriptor_56;
      *(v0 + 112) = v5;
      [v4 getMapItemsWithCompletionHandler_];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64F470);
    v11 = v2;
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v11 description];
      v17 = sub_1D1E6781C();
      v19 = v18;

      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Failed to create reverse geocoding request for location: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    sub_1D1E66C4C();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F470);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6831C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D16EC000, v7, v8, "No location available for home, using current timezone", v9, 2u);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    sub_1D1E66C4C();
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D1D4F08C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1D1D4F644;
  }

  else
  {
    v2 = sub_1D1D4F19C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1D4F19C()
{
  v46 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1D3891EF0](0, v1);
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
LABEL_6:
      v3 = v2;

      v4 = [v3 timeZone];
      v5 = v0[30];
      if (v4)
      {
        v6 = v0[29];
        v8 = v0[26];
        v7 = v0[27];
        v9 = v0[25];
        v10 = v4;
        sub_1D1E66C3C();

        v11 = *(v7 + 32);
        v11(v9, v6, v8);
        (*(v7 + 56))(v9, 0, 1, v8);
        v11(v5, v9, v8);
      }

      else
      {
        v13 = v0[26];
        v12 = v0[27];
        v14 = v0[25];
        (*(v12 + 56))(v14, 1, 1, v13);
        sub_1D1E66C4C();
        if ((*(v12 + 48))(v14, 1, v13) != 1)
        {
          sub_1D1D4F934(v0[25]);
        }
      }

      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v15 = v0[30];
      v16 = v0[27];
      v17 = v0[28];
      v18 = v0[26];
      v19 = sub_1D1E6709C();
      __swift_project_value_buffer(v19, qword_1EC64F470);
      (*(v16 + 16))(v17, v15, v18);
      v20 = sub_1D1E6707C();
      v21 = sub_1D1E6831C();
      v22 = os_log_type_enabled(v20, v21);
      v24 = v0[31];
      v23 = v0[32];
      v25 = v0[27];
      v26 = v0[28];
      v27 = v0[26];
      if (v22)
      {
        v44 = v0[32];
        v28 = swift_slowAlloc();
        v43 = v24;
        v29 = swift_slowAlloc();
        v45 = v29;
        *v28 = 136315138;
        v42 = v3;
        v30 = sub_1D1E66BFC();
        v32 = v31;
        (*(v25 + 8))(v26, v27);
        v33 = sub_1D1B1312C(v30, v32, &v45);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1D16EC000, v20, v21, "Successfully retrieved timezone: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1D3893640](v29, -1, -1);
        MEMORY[0x1D3893640](v28, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v26, v27);
      }

      (*(v0[27] + 32))(v0[23], v0[30], v0[26]);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_1EC642480 != -1)
  {
LABEL_26:
    swift_once();
  }

  v34 = sub_1D1E6709C();
  __swift_project_value_buffer(v34, qword_1EC64F470);
  v35 = sub_1D1E6707C();
  v36 = sub_1D1E6831C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1D16EC000, v35, v36, "No map items found for location, using current timezone", v37, 2u);
    MEMORY[0x1D3893640](v37, -1, -1);
  }

  v39 = v0[31];
  v38 = v0[32];

  sub_1D1E66C4C();
LABEL_21:

  v40 = v0[1];

  return v40();
}

uint64_t sub_1D1D4F644(uint64_t a1)
{
  v18 = v1;
  swift_willThrow();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v2 = v1[33];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F470);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1D1E6915C();
    v11 = sub_1D1B1312C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error retrieving map items: %s, using current timezone", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v12 = v1[32];
  v13 = v1[33];
  v14 = v1[31];
  sub_1D1E66C4C();

  v15 = v1[1];

  return v15();
}

uint64_t sub_1D1D4F83C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D1D4F99C();
    **(*(v4 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1D4F934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1D4F99C()
{
  result = qword_1EC64E4D0;
  if (!qword_1EC64E4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64E4D0);
  }

  return result;
}

uint64_t sub_1D1D4F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D1E66A7C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FAB0, 0, 0);
}

uint64_t sub_1D1D4FAB0()
{
  v1 = [*(v0 + 24) uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1E67E1C();
  *(v0 + 56) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FB70, v3, v2);
}

uint64_t sub_1D1D4FB70()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_1D1D4B170();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall AutoClimateModel.home(_:didRemove:)(HMHome _, HMAccessory didRemove)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  if ([(objc_class *)_.super.isa isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v7 = sub_1D1E67E7C();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 1, 1, v7);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = didRemove;
    *(v10 + 40) = v9;
    *(v10 + 48) = _;
    v11 = didRemove.super.isa;
    v12 = _.super.isa;
    sub_1D17C6EF0(0, 0, v6, &unk_1D1EABB68, v10);

    if ([(objc_class *)v12 isAllowedToEnableAdaptiveTemperatureAutomations])
    {
      v8(v6, 1, 1, v7);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;
      v14[5] = v13;
      v15 = v12;
      sub_1D17C6EF0(0, 0, v6, &unk_1D1EABB78, v14);
    }
  }
}

uint64_t sub_1D1D4FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FF50, 0, 0);
}

uint64_t sub_1D1D4FF50()
{
  v21 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F470);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = [v6 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel - homeManager(:didRemoveAccessory:)) - Removing thermostat controller for thermostat: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v15 = [*(v0 + 56) uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1E67E1C();
    *(v0 + 96) = sub_1D1E67E0C();
    v17 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D501DC, v17, v16);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D1D501DC()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[5];

  sub_1D1D4B2BC(v5);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

void _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  if ([a1 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    if (a2)
    {
      v26 = v2;
      v28 = a1;
      v29 = a2;
      v8 = [v29 services];
      sub_1D17DAA94();
      v9 = sub_1D1E67C1C();

      v27 = v7;
      if (v9 >> 62)
      {
        goto LABEL_27;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = 0;
      while (v10 != v11)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3891EF0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v10 = sub_1D1E6873C();
          goto LABEL_5;
        }

        v14 = [v12 serviceType];
        v15 = sub_1D1E6781C();
        v17 = v16;

        if (v15 == sub_1D1E6781C() && v17 == v18)
        {

          goto LABEL_22;
        }

        v20 = sub_1D1E6904C();

        ++v11;
        if (v20)
        {

LABEL_22:
          v7 = v27;
          a1 = v28;
          goto LABEL_23;
        }
      }

      v21 = v29;
    }

    else
    {
LABEL_23:
      v22 = sub_1D1E67E7C();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = a1;
      v24[5] = v23;
      v25 = a1;
      sub_1D17C6EF0(0, 0, v7, &unk_1D1EABBB0, v24);
    }
  }
}

uint64_t sub_1D1D507D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  result = [a1 isAllowedToEnableAdaptiveTemperatureAutomations];
  if (result)
  {
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;
    v12[5] = v11;
    v13 = a1;
    sub_1D17C6EF0(0, 0, v8, a4, v12);
  }

  return result;
}

void sub_1D1D5092C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = a3;
  v19 = a1;
  if ([v12 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v13 = sub_1D1E67E7C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = v14;
    v16 = v12;
    sub_1D17C6EF0(0, 0, v11, a6, v15);
  }

  else
  {

    v17 = v19;
  }
}

uint64_t sub_1D1D50AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D1E66A7C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D50B88, 0, 0);
}

uint64_t sub_1D1D50B88()
{
  v24 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F470);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v13 = sub_1D1E68FAC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1D1B1312C(v13, v15, &v23);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel - invalidateLocalPresence(home:accessory:)) - Updating local presence rooms for home: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v18 = [*(v0 + 40) uniqueIdentifier];
    sub_1D1E66A5C();

    v19 = swift_task_alloc();
    *(v0 + 88) = v19;
    *v19 = v0;
    v19[1] = sub_1D1D50E5C;
    v20 = *(v0 + 72);

    return AutoClimateModel.invalidateLocalPresenceRooms(for:)(v20);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1D1D50E5C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D1D50FD4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F470);
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [v8 name];
    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = sub_1D1B1312C(v14, v16, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D16EC000, v9, v10, "(AutoClimateModel - homeManager(:didRemoveHome:)) - Removing thermostat controllers for home: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v8;
  v20 = v8;
  v21 = v2;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1EABBC0, v19);
}

uint64_t sub_1D1D51244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D4FE8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1D5130C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D50AC8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1D51414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1D4F9F0(a1, v4, v5, v7, v6);
}

void sub_1D1D514D4(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D1E686DC();
    }

    else
    {
      v3 = sub_1D1E6869C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D1790CC8(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_1D1E6781C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D178CD24((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E568, &qword_1D1EABE68);
          v6 = sub_1D1E681AC();
          sub_1D1E687AC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D1716920(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D1716920(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D1716920(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D1D51854(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1D1D518EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D1864AF4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D1D66490(v11, a2, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D1D51AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for EndpointPath(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + v17[39], v8, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D1D52E14(a1, type metadata accessor for StaticService);
    sub_1D1741A30(v8, &qword_1EC644870, &unk_1D1EABA00);
    v18 = 1;
    return (*(v14 + 56))(a2, v18, 1, v13);
  }

  v27 = v14;
  v28 = a2;
  sub_1D1D66490(v8, v12, type metadata accessor for EndpointPath);
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v16, a1, v19);
  v21(&v16[v13[6]], a1 + v17[11], v19);
  v22 = *(a1 + v17[19]);
  v23 = v29;
  sub_1D17721A0(v22, v29);
  result = (*(v20 + 48))(v23, 1, v19);
  if (result != 1)
  {
    (*(v20 + 32))(&v16[v13[7]], v23, v19);
    sub_1D1D52E14(a1, type metadata accessor for StaticService);
    v25 = *&v12[*(v9 + 20)];
    sub_1D1D52E14(v12, type metadata accessor for EndpointPath);
    *&v16[v13[5]] = v25;
    a2 = v28;
    sub_1D1D66490(v16, v28, _s10ThermostatC23ThermostatServiceConfigVMa);
    v18 = 0;
    v14 = v27;
    return (*(v14 + 56))(a2, v18, 1, v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D51EA4(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1D51F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v5 = sub_1D1E66C5C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D1D51FC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1D1D520E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v4 = sub_1D1E66C5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D1D52168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v4 = sub_1D1E66C5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *AutoClimateModel.Thermostat.init(staticService:homeUUID:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v33 = sub_1D1E66A7C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4D8, qword_1D1EABBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite) = 0;
  sub_1D1E66C4C();
  *(v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer) = 0;
  v32 = a1;
  sub_1D1D52DAC(a1, v7, type metadata accessor for StaticService);
  sub_1D1D51AB8(v7, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D1741A30(v10, &qword_1EC64E4D8, qword_1D1EABBD0);

    v15 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    v16 = sub_1D1E66C5C();
    (*(*(v16 - 8) + 8))(v2 + v15, v16);

    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_defaultActor_destroy();
    (*(v31 + 8))(v30, v33);
    sub_1D1D52E14(v32, type metadata accessor for StaticService);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1D1D66490(v10, v14, _s10ThermostatC23ThermostatServiceConfigVMa);
    sub_1D1D52DAC(v14, v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);
    v18 = v30;
    v17 = v31;
    v19 = *(v31 + 16);
    v20 = v33;
    v19(v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID, v30, v33);
    v21 = v32;
    v22 = v29;
    v19(v29, v32 + *(v5 + 44), v20);
    type metadata accessor for AutoClimateModel.Thermostat.State(0);
    v23 = swift_allocObject();
    v24 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
    v25 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
    *(v23 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule) = 0;
    v26 = v23 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = xmmword_1D1E85870;
    *(v26 + 32) = 0;
    sub_1D1E66CDC();
    (*(v17 + 8))(v18, v20);
    sub_1D1D52E14(v21, type metadata accessor for StaticService);
    sub_1D1D52E14(v14, _s10ThermostatC23ThermostatServiceConfigVMa);
    (*(v17 + 32))(v23 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID, v22, v20);
    *(v2 + 112) = v23;
  }

  return v2;
}

uint64_t AutoClimateModel.Thermostat.init(accessory:homeUUID:)(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite) = 0;
  sub_1D1E66C4C();
  *(v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer) = 0;
  v50 = sub_1D1E682DC();
  if (v13)
  {
    goto LABEL_27;
  }

  v14 = [a1 room];
  if (!v14)
  {
    goto LABEL_27;
  }

  v43 = v10;
  v49 = v14;
  v45 = v7;
  v46 = a2;
  v47 = v6;
  v15 = [a1 services];
  v16 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v17 = sub_1D1E67C1C();

  v48 = a1;
  v44 = v9;
  v42[1] = v16;
  if (v17 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1D3891EF0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v20 isPrimaryService])
      {
        a1 = v48;
        goto LABEL_24;
      }

      ++v19;
      if (v22 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  a1 = v48;
  v23 = [v48 services];
  v24 = sub_1D1E67C1C();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
LABEL_26:

    a2 = v46;
    v6 = v47;
    v7 = v45;
LABEL_27:

    v40 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    v41 = sub_1D1E66C5C();
    (*(*(v41 - 8) + 8))(v3 + v40, v41);

    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_defaultActor_destroy();

    (*(v7 + 8))(a2, v6);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_20:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D3891EF0](0, v24);
LABEL_23:
    v21 = v26;
LABEL_24:

    v27 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v28 = [a1 uniqueIdentifier];
    v29 = v43;
    sub_1D1E66A5C();

    v30 = [v49 uniqueIdentifier];
    sub_1D1E66A5C();

    *&v12[*(v29 + 20)] = v50;
    sub_1D1D66490(v12, v3 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);
    v32 = v45;
    v31 = v46;
    v33 = v47;
    (*(v45 + 16))(v3 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID, v46, v47);
    v34 = [a1 uniqueIdentifier];
    v35 = v44;
    sub_1D1E66A5C();

    type metadata accessor for AutoClimateModel.Thermostat.State(0);
    v36 = swift_allocObject();
    v37 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
    v38 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
    *(v36 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule) = 0;
    v39 = v36 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = xmmword_1D1E85870;
    *(v39 + 32) = 0;
    sub_1D1E66CDC();

    (*(v32 + 8))(v31, v33);
    (*(v32 + 32))(v36 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID, v35, v33);
    *(v3 + 112) = v36;
    return v3;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D52DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D52E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D52E74()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D52F80, v0, 0);
}

uint64_t sub_1D1D52F80()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v23 = v0[6];
  v24 = v1;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v20 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v21 = v6;
  v22 = swift_allocObject();
  swift_weakInit();
  v9 = *(v4 + 16);
  v9(v2, v6 + v7, v5);
  v10 = v6 + v20;
  v11 = v5;
  v9(v23, v10, v5);
  v12 = *(v4 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = (v3 + v12 + v13) & ~v12;
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = *(v4 + 32);
  v17(v16 + v13, v2, v11);
  v17(v16 + v14, v23, v11);
  *(v16 + v15) = v22;
  *(v21 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer) = sub_1D17C6EF0(0, 0, v24, &unk_1D1EABBF0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D1D531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for StaticService(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E570, &qword_1D1EABEC0);
  v6[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E578, &unk_1D1EABEC8);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v6[22] = *(v11 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
  v6[25] = v12;
  v6[26] = *(v12 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D53498, 0, 0);
}

uint64_t sub_1D1D53498()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[29] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    v30 = v3;
    v31 = v7;
    v32 = v0[18];
    v9 = v0[5];
    v29 = v0[6];
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = *(v5 + 16);
    v11(v3, v9, v8);
    v11(v4, v29, v8);
    v12 = *(v5 + 80);
    v13 = (v12 + 24) & ~v12;
    v14 = (v6 + v12 + v13) & ~v12;
    v15 = swift_allocObject();
    v0[30] = v15;
    *(v15 + 16) = v2;
    v16 = *(v5 + 32);
    v16(v15 + v13, v30, v8);
    v16(v15 + v14, v4, v8);

    sub_1D1741C08(v31, v32, &unk_1EC6442C0, &qword_1D1E741A0);
    v17 = qword_1EC642358;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = v0[18];
    v19 = qword_1EC64ABE8;
    v20 = sub_1D1D66394(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = sub_1D1D67748;
    v21[5] = v15;

    v22 = sub_1D17C8154(0, 0, v18, &unk_1D1EABEE0, v21);
    v0[33] = v22;
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_1D1D53A6C;
    v24 = v0[27];
    v25 = v0[25];

    return MEMORY[0x1EEE6DA40](v24, v22, v25);
  }

  else
  {
    v0[31] = sub_1D1E67E1C();
    v0[32] = sub_1D1E67E0C();
    v27 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D537EC, v27, v26);
  }
}

uint64_t sub_1D1D537EC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v16 = v0[22];
  v4 = v0[20];
  v6 = v0[5];
  v5 = v0[6];

  v7 = *(v3 + 16);
  v7(v1, v6, v4);
  v7(v2, v5, v4);
  v8 = sub_1D1E67E0C();
  v9 = *(v3 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v16 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v8;
  *(v12 + 24) = v13;
  v14 = *(v3 + 32);
  v14(v12 + v10, v1, v4);
  v14(v12 + v11, v2, v4);
  sub_1D1E66D3C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D53978, 0, 0);
}

uint64_t sub_1D1D53978()
{
  (*(v0[26] + 32))(v0[28], v0[27], v0[25]);
  sub_1D1E66D0C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1D1D53CA4;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6CEB0](v2, 0, 0, v3);
}

uint64_t sub_1D1D53A6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1D53B84, 0, 0);
}

uint64_t sub_1D1D53B84()
{
  v1 = v0[19];

  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  (*(v0[26] + 32))(v0[28], v0[27], v0[25]);
  sub_1D1E66D0C();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1D1D53CA4;
  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x1EEE6CEB0](v3, 0, 0, v4);
}

uint64_t sub_1D1D53CA4()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D53DB4, 0, 0);
  }

  return result;
}

uint64_t sub_1D1D53DB4()
{
  v1 = v0[14];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[28];
    v3 = v0[25];
    v4 = v0[26];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v4 + 8))(v2, v3);
LABEL_5:

    v12 = v0[1];

    return v12();
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1D1D676D8(v1, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[28];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v10 + 8))(v8, v9);
    sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_5;
  }

  sub_1D1D66490(v0[10], v0[13], type metadata accessor for StaticService);
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_1D1D540DC;
    v16 = v0[13];

    return sub_1D1D5ABBC(v16);
  }

  else
  {
    sub_1D1D52E14(v0[13], type metadata accessor for StaticService);
    v17 = swift_task_alloc();
    v0[35] = v17;
    *v17 = v0;
    v17[1] = sub_1D1D53CA4;
    v18 = v0[14];
    v19 = v0[15];

    return MEMORY[0x1EEE6CEB0](v18, 0, 0, v19);
  }
}

uint64_t sub_1D1D540DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1D541F4, 0, 0);
}

uint64_t sub_1D1D541F4()
{
  sub_1D1D52E14(v0[13], type metadata accessor for StaticService);
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1D1D53CA4;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6CEB0](v2, 0, 0, v3);
}

uint64_t sub_1D1D542B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v8 + 16);
  v14(v24 - v12, a2, v7);
  v14(v11, a3, v7);
  v15 = qword_1EC642358;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC64ABE8;
  v17 = sub_1D1D66394(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v18 = *(v8 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v9 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = v16;
  *(v21 + 3) = v17;
  *(v21 + 4) = a1;
  v22 = *(v8 + 32);
  v22(&v21[v19], v13, v7);
  v22(&v21[v20], v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  return sub_1D1E66D3C();
}

uint64_t sub_1D1D5450C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = *(a1 + 24);
  swift_getKeyPath();
  v33 = v9;
  sub_1D1D66394(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v10 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_1D1742188();
    if (v13)
    {
      v14 = v12;
      v31 = v4;
      v15 = *(v11 + 56);
      v16 = type metadata accessor for HomeState(0);
      v17 = *(v16 - 8);
      v32 = a2;
      v18 = v17;
      v4 = v31;
      sub_1D1D52DAC(v15 + *(v17 + 72) * v14, v8, type metadata accessor for HomeState);

      (*(v18 + 56))(v8, 0, 1, v16);
      a2 = v32;
      goto LABEL_6;
    }
  }

  v16 = type metadata accessor for HomeState(0);
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
LABEL_6:
  type metadata accessor for HomeState(0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16))
  {
    sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {
    v19 = v34;
    sub_1D1D52DAC(v8, v34, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
    v20 = *(v19 + *(v4 + 60));

    sub_1D1D52E14(v19, type metadata accessor for StateSnapshot);
    if (*(v20 + 16))
    {
      v21 = sub_1D1742188();
      if (v22)
      {
        v23 = v21;
        v24 = *(v20 + 56);
        v25 = type metadata accessor for StaticService(0);
        v26 = a2;
        v27 = *(v25 - 8);
        sub_1D1D52DAC(v24 + *(v27 + 72) * v23, v26, type metadata accessor for StaticService);

        return (*(v27 + 56))(v26, 0, 1, v25);
      }
    }
  }

  v29 = type metadata accessor for StaticService(0);
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

uint64_t sub_1D1D54990@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v3 = type metadata accessor for StateSnapshot(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE07DC60;
  swift_getKeyPath();
  v25[1] = v10;
  sub_1D1D66394(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_1D1742188();
    if (v14)
    {
      sub_1D1D52DAC(*(v12 + 56) + *(v4 + 72) * v13, v9, type metadata accessor for StateSnapshot);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  (*(v4 + 56))(v9, v15, 1, v3);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1D1741A30(v9, &unk_1EC649E30, &unk_1D1E91250);
  }

  else
  {
    sub_1D1D52DAC(v9, v6, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v9, &unk_1EC649E30, &unk_1D1E91250);
    v16 = *&v6[*(v3 + 60)];

    sub_1D1D52E14(v6, type metadata accessor for StateSnapshot);
    if (*(v16 + 16))
    {
      v17 = sub_1D1742188();
      if (v18)
      {
        v19 = v17;
        v20 = *(v16 + 56);
        v21 = type metadata accessor for StaticService(0);
        v22 = *(v21 - 8);
        sub_1D1D52DAC(v20 + *(v22 + 72) * v19, a2, type metadata accessor for StaticService);

        return (*(v22 + 56))(a2, 0, 1, v21);
      }
    }
  }

  v24 = type metadata accessor for StaticService(0);
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

void sub_1D1D54D94()
{
  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer))
  {

    sub_1D1E67F5C();
  }
}

uint64_t sub_1D1D54E08()
{
  *(v1 + 40) = v0;
  v2 = sub_1D1E66C5C();
  *(v1 + 48) = v2;
  *(v1 + 56) = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  v5 = v0 + v4;
  v6 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v1 + 144) = v6;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_1D1D54F30;

  return sub_1D1B9A370(v5 + v6);
}

uint64_t sub_1D1D54F30(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D55048, v2, 0);
}

uint64_t sub_1D1D55048()
{
  v15 = v0;
  if (v0[11])
  {
    v1 = v0[5];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D55344;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);

    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6833C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315650;
      *(v8 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v14);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D1B1312C(0x536C616974696E69, 0xEE00292870757465, &v14);
      *(v8 + 22) = 2080;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1D1E68FAC();
      v12 = sub_1D1B1312C(v10, v11, &v14);

      *(v8 + 24) = v12;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s - %s: Failed to find thermostat for accessory: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1D55344(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5545C, v2, 0);
}

uint64_t sub_1D1D5545C()
{
  if (v0[13])
  {
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D55624;
    v2 = v0[8];

    return sub_1D1D4EB8C(v2);
  }

  else
  {
    v4 = v0[11];
    sub_1D1D66394(&qword_1EC64E4F8, type metadata accessor for AutoClimateModel.Thermostat, &protocol conformance descriptor for AutoClimateModel.Thermostat);
    v5 = swift_allocObject();
    v0[15] = v5;
    swift_weakInit();
    v6 = swift_task_alloc();
    v0[16] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1D1D558D0;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1D55624()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1D55734, v1, 0);
}

uint64_t sub_1D1D55734()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  v6 = *(v0 + 88);
  sub_1D1D66394(&qword_1EC64E4F8, type metadata accessor for AutoClimateModel.Thermostat, &protocol conformance descriptor for AutoClimateModel.Thermostat);
  v7 = swift_allocObject();
  *(v0 + 120) = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1D1D558D0;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1D558D0()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1D55A20, v1, 0);
}

uint64_t sub_1D1D55A20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AutoClimateModel.Thermostat.thermostat.getter()
{
  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v3 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D19C8EA0;

  return sub_1D1B9A370(v2 + v3);
}

uint64_t AutoClimateModel.Thermostat.home.getter()
{
  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1AC3C3C;

  return sub_1D1E3766C(v0 + v2);
}

uint64_t sub_1D1D55C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D55CA0, 0, 0);
}

uint64_t sub_1D1D55CA0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1D1E67E7C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;

  v7 = v2;
  sub_1D1DE256C(v1, &unk_1D1EABE90, v6);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v7;

  v9 = v7;
  sub_1D1DE256C(v1, &unk_1D1EABEA0, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v5(v1, 1, 1, v4);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v9;

  v11 = v9;
  sub_1D1DE256C(v1, &unk_1D1EABEB0, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1D55ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D55EF4, 0, 0);
}

uint64_t sub_1D1D55EF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1D19DD7D0;
    v3 = v0[6];

    return sub_1D1D55FE8(v3, 1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1D55FE8(uint64_t a1, char a2)
{
  *(v3 + 408) = a2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  *(v3 + 208) = swift_task_alloc();
  v4 = sub_1D1E66C5C();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  *(v3 + 272) = v5;
  *(v3 + 280) = v6;
  v7 = swift_task_alloc();
  *(v3 + 288) = v7;
  *v7 = v3;
  v7[1] = sub_1D1D561A4;

  return sub_1D1E3766C(v2 + v6);
}

uint64_t sub_1D1D561A4(uint64_t a1)
{
  v2 = *(*v1 + 200);
  *(*v1 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D562BC, v2, 0);
}

uint64_t sub_1D1D562BC()
{
  v18 = v0;
  if (v0[37])
  {
    v1 = v0[25];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
    v0[38] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
    v3 = v1 + v2;
    v4 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
    v0[39] = v4;
    v5 = *(v4 + 28);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_1D1D5659C;

    return sub_1D1E50EB4(v3 + v5);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F470);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v13 = sub_1D1E68FAC();
      v15 = sub_1D1B1312C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v9, v10, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to find home for accessory: %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1D1D5659C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D566B4, v2, 0);
}

uint64_t sub_1D1D566B4()
{
  v45 = v0;
  v1 = *(v0 + 328);
  if (v1)
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    *(v0 + 336) = __swift_project_value_buffer(v2, qword_1EC64F470);

    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v44 = v6;
      *v5 = 136315138;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v7 = sub_1D1E68FAC();
      v9 = sub_1D1B1312C(v7, v8, &v44);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1D16EC000, v3, v4, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Fetching current Adaptive Temperature settings for accessory: %s.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v41 = *(v0 + 280);
    v42 = *(v0 + 216);
    v15 = *(v0 + 200);
    v43 = *(v0 + 192);
    v16 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    v17 = [v1 name];
    v18 = sub_1D1E6781C();
    v20 = v19;

    v21 = *(v11 + 24);
    v22 = sub_1D1E66A7C();
    *(v0 + 344) = v22;
    (*(*(v22 - 8) + 16))(v10 + v21, v15 + v41, v22);
    v23 = (v10 + *(v11 + 20));
    *v23 = v18;
    v23[1] = v20;
    v24 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    *(v0 + 352) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    swift_beginAccess();
    v25 = *(v13 + 24);
    *(v0 + 400) = v25;
    v26 = *(v14 + 16);
    *(v0 + 360) = v26;
    *(v0 + 368) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(&v12[v25], v15 + v24, v42);
    *v12 = xmmword_1D1E85870;
    v27 = *(v13 + 28);
    *(v0 + 404) = v27;
    v12[v27] = 0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D1D56C8C;
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E560, &unk_1D1EABE58);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D1D63674;
    *(v0 + 104) = &block_descriptor_64_0;
    *(v0 + 112) = v28;
    [v43 fetchAdaptiveTemperatureSettingsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EC64F470);

    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6833C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 296);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v35 = sub_1D1E68FAC();
      v37 = sub_1D1B1312C(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D16EC000, v30, v31, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to find room for accessory: %s.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v33, -1, -1);
    }

    else
    {
      v38 = *(v0 + 296);
    }

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_1D1D56C8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_1D1D576D0;
  }

  else
  {
    v4 = sub_1D1D56DAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1D56DAC()
{
  v33 = v0;
  v1 = *(v0 + 168);
  v31 = *(v0 + 176);
  sub_1D1D514D4(v31);
  *(v0 + 184) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v3 = sub_1D1E6770C();
  v5 = v4;

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  v29 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v28 = v3;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136315650;
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D1E68FAC();
    v12 = sub_1D1B1312C(v10, v11, v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = HMAdaptiveTemperatureDriver.description.getter(v1);
    v15 = sub_1D1B1312C(v13, v14, v32);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = sub_1D1B1312C(v28, v5, v32);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Successfully fetched adaptive temperature settings for accessory: %s with temperature driver: %s and selected rooms: %s.", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }

  v30 = *(v0 + 404);
  v17 = *(v0 + 360);
  v18 = *(v0 + 400);
  v19 = *(v0 + 352);
  v20 = *(v0 + 256);
  v21 = *(v0 + 216);
  v22 = *(v0 + 200);

  v23 = sub_1D1D65CAC(v31, v22);

  sub_1D1D52E14(v20, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  v17(v20 + v18, v22 + v19, v21);
  *v20 = v29;
  v20[1] = v23;
  *(v20 + v30) = 0;
  v24 = swift_task_alloc();
  *(v0 + 384) = v24;
  *v24 = v0;
  v24[1] = sub_1D1D57104;
  v25 = *(v0 + 256);
  v26 = *(v0 + 192);

  return sub_1D1D60634(v25, v26);
}

uint64_t sub_1D1D57104()
{
  v1 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D1D57214, v1, 0);
}

uint64_t sub_1D1D57214()
{
  if (*(v0 + 408) == 1)
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 352);
    v3 = *(v0 + 296);
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    sub_1D1D52DAC(*(v0 + 256), *(v0 + 248), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v1(v4, v6 + v2, v5);
    v7 = v3;

    return MEMORY[0x1EEE6DFA0](sub_1D1D573A4, 0, 0);
  }

  else
  {
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 256);

    sub_1D1D52E14(v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1D52E14(v9, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1D573A4()
{
  sub_1D1E67E1C();
  *(v0 + 392) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D57438, v2, v1);
}

uint64_t sub_1D1D57438()
{
  v1 = v0[45];
  v15 = v0[37];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v16 = v0[25];

  v8 = *v3;
  v9 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  sub_1D1D52DAC(v2, &v7[v9[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v10 = v3[1];
  v1(&v7[v9[8]], v5, v6);

  v11 = [v15 isAllowedToEnableAdaptiveTemperatureAutomations];
  v12 = v9[6];
  v13 = v9[7];
  *v7 = v8;
  *&v7[v12] = v10;
  *&v7[v13] = 0;
  v7[v9[9]] = v11;
  (*(*(v9 - 1) + 56))(v7, 0, 1, v9);
  sub_1D1D67F68(v7);

  (*(v4 + 8))(v5, v6);
  sub_1D1D52E14(v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

  return MEMORY[0x1EEE6DFA0](sub_1D1D575EC, v16, 0);
}

uint64_t sub_1D1D575EC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);

  sub_1D1D52E14(v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1D52E14(v2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1D576D0(uint64_t a1)
{
  v29 = v1;
  v2 = *(v1 + 376);
  swift_willThrow();

  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 376);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 136315394;
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = sub_1D1B1312C(v11, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to get adaptive temperature settings for accessory: %s because of error: %@.", v8, 0x16u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 408) == 1)
  {
    v16 = *(v1 + 360);
    v17 = *(v1 + 352);
    v18 = *(v1 + 296);
    v19 = *(v1 + 232);
    v20 = *(v1 + 216);
    v21 = *(v1 + 200);
    sub_1D1D52DAC(*(v1 + 256), *(v1 + 248), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v16(v19, v21 + v17, v20);
    v22 = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D1D573A4, 0, 0);
  }

  else
  {
    v23 = *(v1 + 296);
    v24 = *(v1 + 272);
    v25 = *(v1 + 256);

    sub_1D1D52E14(v25, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1D52E14(v24, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_1D1D57A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D57A48, 0, 0);
}

uint64_t sub_1D1D57A48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1D17D3554;
    v3 = v0[6];

    return sub_1D1D57B3C(v3, 1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1D57B3C(uint64_t a1, char a2)
{
  *(v3 + 436) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  *(v3 + 184) = v4;
  *(v3 + 192) = *(v4 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  *(v3 + 224) = swift_task_alloc();
  v5 = sub_1D1E662EC();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D57CE4, v2, 0);
}

uint64_t sub_1D1D57CE4()
{
  v44 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  *(v0 + 264) = __swift_project_value_buffer(v1, qword_1EC64F470);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v43 = v5;
    *v4 = 136315138;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v6 = sub_1D1E68FAC();
    v8 = sub_1D1B1312C(v6, v7, &v43);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D16EC000, v2, v3, "(AutoClimateModel.Thermostat - (fetchCurrentSleepSchedule(isInitialSetup:)) - Fetching current sleep schedule for accessory: %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v42 = *(v0 + 256);
  v35 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 216);
  v36 = *(v0 + 240);
  v37 = *(v0 + 208);
  v39 = *(v0 + 232);
  v40 = *(v0 + 192);
  v38 = *(v0 + 184);
  v41 = *(v0 + 168);
  sub_1D1E66B9C();
  v11 = sub_1D1E66BBC();
  *(v0 + 272) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 0, 1, v11);
  v14 = sub_1D1E66C5C();
  *(v0 + 296) = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  *(v0 + 304) = v16;
  *(v0 + 312) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v10, 1, 1, v14);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v13(v9, 0, 1, v11);
  v16(v10, 1, 1, v14);
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 1;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 1;
  LOBYTE(v29) = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v27) = 1;
  LOBYTE(v26) = 0;
  LOBYTE(v25) = 0;
  LOBYTE(v24) = 1;
  sub_1D1E662BC();
  v17 = *(v36 + 16);
  *(v0 + 320) = v17;
  *(v0 + 328) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v37, v42, v39);
  v17(v37 + *(v38 + 20), v35, v39);
  *(v37 + *(v38 + 24)) = 127;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  *(v0 + 344) = *(v40 + 72);
  v18 = *(v40 + 80);
  *(v0 + 432) = v18;
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  *(v0 + 352) = v20;
  *(v20 + 16) = xmmword_1D1E739C0;
  sub_1D1D66490(v37, v20 + v19, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v21 = *(v36 + 8);
  *(v0 + 360) = v21;
  *(v0 + 368) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v35, v39);
  v21(v42, v39);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D1D582E8;
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C60, &qword_1D1EABE80);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17AFE50;
  *(v0 + 104) = &block_descriptor_78;
  *(v0 + 112) = v22;
  [v41 fetchThermostatSleepScheduleWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D582E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_1D1D59260;
  }

  else
  {
    v4 = sub_1D1D58408;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void *sub_1D1D58408()
{
  v73 = v0;
  v1 = *(v0 + 144);
  *(v0 + 384) = v1;

  v2 = v1;
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71 = v6;
    *v5 = 136315394;
    v7 = [v2 scheduleRules];
    sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
    v8 = sub_1D1E67C1C();

    if (v8 >> 62)
    {
      v9 = sub_1D1E6873C();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x1E69E7CC0];
    v67 = v3;
    v69 = v2;
    v66 = v5;
    v65 = v4;
    v64 = v6;
    if (v9)
    {
      v72 = MEMORY[0x1E69E7CC0];
      result = sub_1D178DD28(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = 0;
      v13 = v72;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v12, v8);
        }

        else
        {
          v14 = *(v8 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = *(v0 + 200);
        v17 = *(v0 + 184);
        v18 = [v14 startTime];
        sub_1D1E6621C();

        v19 = [v15 endTime];
        sub_1D1E6621C();

        v20 = [v15 daysOfTheWeek];
        *(v16 + *(v17 + 24)) = v20;
        v72 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D178DD28((v21 > 1), v22 + 1, 1);
          v13 = v72;
        }

        v23 = *(v0 + 432);
        v24 = *(v0 + 344);
        v25 = *(v0 + 200);
        ++v12;
        *(v13 + 16) = v22 + 1;
        sub_1D1D66490(v25, v13 + ((v23 + 32) & ~v23) + v24 * v22, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      }

      while (v9 != v12);

      v10 = MEMORY[0x1E69E7CC0];
      v26 = *(v13 + 16);
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
      v26 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v26)
      {
LABEL_16:
        v27 = (*(v0 + 432) + 32) & ~*(v0 + 432);
        v72 = v10;
        sub_1D178CD24(0, v26, 0);
        v28 = 0;
        v29 = v10;
        do
        {
          v30 = *(v0 + 208);
          sub_1D1D52DAC(v13 + v27 + *(v0 + 344) * v28, v30, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
          v31 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
          v33 = v32;
          sub_1D1D52E14(v30, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
          v72 = v29;
          v35 = *(v29 + 16);
          v34 = *(v29 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1D178CD24((v34 > 1), v35 + 1, 1);
            v29 = v72;
          }

          ++v28;
          *(v29 + 16) = v35 + 1;
          v36 = v29 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v26 != v28);

        goto LABEL_23;
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v37 = MEMORY[0x1D3891260](v29, MEMORY[0x1E69E6158]);
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v71);

    *(v66 + 1) = v40;
    *(v66 + 6) = 2080;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v41 = sub_1D1E68FAC();
    v43 = sub_1D1B1312C(v41, v42, &v71);

    *(v66 + 14) = v43;
    _os_log_impl(&dword_1D16EC000, v67, v65, "(AutoClimateModel.Thermostat: (fetchCurrentSleepSchedule(isInitialSetup:)) - Successfully fetched sleep schedule: {%s} for accessory: %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v64, -1, -1);
    MEMORY[0x1D3893640](v66, -1, -1);

    v2 = v69;
    goto LABEL_24;
  }

LABEL_24:
  if (*(v0 + 436) == 1 && ((v44 = [v2 scheduleRules], sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0), v45 = sub_1D1E67C1C(), v44, v45 >> 62) ? (v46 = sub_1D1E6873C()) : (v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v46))
  {
    v68 = *(v0 + 360);
    v63 = *(v0 + 320);
    v50 = *(v0 + 304);
    v51 = *(v0 + 296);
    v52 = *(v0 + 272);
    v53 = *(v0 + 280);
    v70 = *(v0 + 256);
    v59 = *(v0 + 248);
    v54 = *(v0 + 224);
    v61 = *(v0 + 232);
    v55 = *(v0 + 216);
    v58 = *(v0 + 208);
    v62 = (*(v0 + 432) + 32) & ~*(v0 + 432);
    v60 = *(v0 + 184);
    sub_1D1E66B9C();
    v53(v54, 0, 1, v52);
    v50(v55, 1, 1, v51);
    sub_1D1E662BC();
    sub_1D1E66B9C();
    v53(v54, 0, 1, v52);
    v50(v55, 1, 1, v51);
    sub_1D1E662BC();
    v63(v58, v70, v61);
    v63(v58 + *(v60 + 20), v59, v61);
    *(v58 + *(v60 + 24)) = 127;
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D1E739C0;
    sub_1D1D66490(v58, v56 + v62, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v68(v59, v61);
    v68(v70, v61);
    *(v0 + 160) = v56;
    v57 = swift_task_alloc();
    *(v0 + 392) = v57;
    *v57 = v0;
    v57[1] = sub_1D1D58D28;

    return sub_1D1D5D1E0((v0 + 160));
  }

  else
  {

    AutoClimateModel.Thermostat.WeekdaySchedule.init(hmweekdaySchedule:)(v2, &v72);
    v47 = v72;
    *(v0 + 400) = v72;
    *(v0 + 152) = v47;

    v48 = swift_task_alloc();
    *(v0 + 408) = v48;
    *v48 = v0;
    v48[1] = sub_1D1D58ECC;
    v49 = *(v0 + 168);

    return sub_1D1D5E184((v0 + 152), v49);
  }
}

uint64_t sub_1D1D58D28()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D1D58E5C, v1, 0);
}

uint64_t sub_1D1D58E5C()
{
  *(v0 + 416) = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
}

uint64_t sub_1D1D58ECC()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D1D59000, v1, 0);
}

uint64_t sub_1D1D59000()
{
  if (*(v0 + 436) == 1)
  {
    *(v0 + 416) = *(v0 + 400);

    return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1D1D59100()
{
  sub_1D1E67E1C();
  *(v0 + 424) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59194, v2, v1);
}

uint64_t sub_1D1D59194()
{
  v5 = v0;
  v1 = *(v0 + 416);

  v4 = v1;

  sub_1D1D68428(&v4);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D59260(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 376);
  swift_willThrow();

  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 376);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = sub_1D1B1312C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat: (fetchCurrentSleepSchedule(isInitialSetup:)) - Failed to get current sleep schedule for accessory: %s with error: %@.", v8, 0x16u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 436) == 1)
  {
    *(v1 + 416) = *(v1 + 352);

    return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
  }

  else
  {

    v16 = *(v1 + 8);

    return v16();
  }
}

uint64_t sub_1D1D59540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D59560, 0, 0);
}

uint64_t sub_1D1D59560()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1D19DD7D0;
    v3 = v0[6];

    return sub_1D1D59654(v3, 1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1D59654(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_1D1E66DAC();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E550, &qword_1D1EABE28);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59768, v2, 0);
}

uint64_t sub_1D1D59768()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = xmmword_1D1E85870;
  *(v0 + 48) = 0;
  sub_1D1C2B470(0, 0, 1);
  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite;
  *(v0 + 224) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite;
  v3 = *(v1 + v2);
  *(v0 + 232) = v3;
  if (v3)
  {
    *(v0 + 256) = v3;
    *(v0 + 264) = v3;
    *(v0 + 272) = sub_1D1E66DDC();
    *(v0 + 280) = sub_1D1E67E1C();
    swift_retain_n();
    *(v0 + 288) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D59CF0, v5, v4);
  }

  else
  {
    sub_1D1E66E9C();
    v6 = sub_1D1E66A1C();
    v8 = v7;
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_1D1D5990C;

    return MEMORY[0x1EEE02D38](v6, v8);
  }
}

uint64_t sub_1D1D5990C(uint64_t a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D59A24, v2, 0);
}

uint64_t sub_1D1D59A24()
{
  v18 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = *(v2 + v1);
  v4 = v0[31];
  if (v3)
  {
LABEL_4:
    v0[32] = v3;
    v0[33] = v4;
    v0[34] = sub_1D1E66DDC();
    v0[35] = sub_1D1E67E1C();

    v0[36] = sub_1D1E67E0C();
    v6 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D59CF0, v6, v5);
  }

  *(v2 + v1) = v4;
  if (v4)
  {

    v3 = v4;
    goto LABEL_4;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F470);

  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6833C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D1E68FAC();
    v14 = sub_1D1B1312C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v8, v9, "AutoClimateMode.Thermostat - (setUpCleanEnergySetting(isInitialSetup:)) - Failed to load clean energy settings for home: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D1D59CF0()
{
  v1 = *(v0 + 168);

  *(v0 + 296) = sub_1D1E66DCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59D68, v1, 0);
}