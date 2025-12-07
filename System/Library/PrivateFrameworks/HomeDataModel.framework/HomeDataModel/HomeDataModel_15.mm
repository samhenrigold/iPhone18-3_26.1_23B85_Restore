uint64_t GaugeDataHolder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CA8, &qword_1D1E77668);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18318E4();
  sub_1D1E6930C();
  LOBYTE(v11[0]) = 0;
  sub_1D1E68EEC();
  if (!v2)
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    sub_1D1831F90(&qword_1EC644CC0, MEMORY[0x1E69E63C0], MEMORY[0x1E69E5F98]);
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D18318E4()
{
  result = qword_1EC644CB0;
  if (!qword_1EC644CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CB0);
  }

  return result;
}

uint64_t GaugeDataHolder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1D3892890](*&v5);
}

uint64_t GaugeDataHolder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}

uint64_t GaugeDataHolder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CC8, &qword_1D1E77670);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18318E4();
  sub_1D1E692FC();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    sub_1D1E68D4C();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    v13[15] = 1;
    sub_1D1831F90(&qword_1EC644CD0, MEMORY[0x1E69E63E8], MEMORY[0x1E69E5FC0]);
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1831C3C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);

  return sub_1D1831F40(v3, v4);
}

uint64_t sub_1D1831CA0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_1D1E6920C();
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x1D3892890](*&v5);
  sub_1D1831F40(v2, v4);
  return sub_1D1E6926C();
}

BOOL sub_1D1831D44(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t GaugeDataHolder.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EBA480);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](0x5265756C6176202CLL, 0xEE00203A65676E61);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3026478, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0, 0xE000000000000000);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D1831F40(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1D3892890](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1D3892890](*&v3);
}

uint64_t sub_1D1831F90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644CB8, &qword_1D1EAE5D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1832000()
{
  result = qword_1EC644CD8;
  if (!qword_1EC644CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CD8);
  }

  return result;
}

unint64_t sub_1D1832078()
{
  result = qword_1EC644CE0;
  if (!qword_1EC644CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CE0);
  }

  return result;
}

unint64_t sub_1D18320D0()
{
  result = qword_1EC644CE8;
  if (!qword_1EC644CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CE8);
  }

  return result;
}

unint64_t sub_1D1832128()
{
  result = qword_1EC644CF0;
  if (!qword_1EC644CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CF0);
  }

  return result;
}

int *IconTextValueStringDataHolder.init(value:valueRange:iconSymbol:label:valueString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  sub_1D1E66A6C();
  result = type metadata accessor for IconTextValueStringDataHolder(0);
  v21 = (a7 + result[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a7 + result[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a7 + result[7]);
  *v23 = a5;
  v23[1] = a6;
  v24 = a7 + result[8];
  *v24 = a8;
  *(v24 + 8) = a9;
  *(v24 + 16) = a10;
  *(v24 + 24) = 1;
  return result;
}

uint64_t type metadata accessor for IconTextValueStringDataHolder(uint64_t a1)
{
  result = qword_1EC644DC8;
  if (!qword_1EC644DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IconTextValueStringDataHolder.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconTextValueStringDataHolder.iconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for IconTextValueStringDataHolder(0) + 20));

  return v1;
}

uint64_t IconTextValueStringDataHolder.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for IconTextValueStringDataHolder(0) + 24));

  return v1;
}

uint64_t IconTextValueStringDataHolder.valueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for IconTextValueStringDataHolder(0) + 28));

  return v1;
}

uint64_t IconTextValueStringDataHolder.attachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconTextValueStringDataHolder(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_1D18323FC(v4, v5, v6, v7);
}

uint64_t sub_1D18323FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1832410(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D1832410(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return v4;
}

uint64_t sub_1D1832424()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x72745365756C6176;
  if (v1 != 3)
  {
    v4 = 0x6465686361747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626D79536E6F6369;
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

uint64_t sub_1D18324C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1835D20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D18324EC(uint64_t a1)
{
  v2 = sub_1D18327F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1832528(uint64_t a1)
{
  v2 = sub_1D18327F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconTextValueStringDataHolder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CF8, &qword_1D1E778E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18327F0();
  sub_1D1E6930C();
  LOBYTE(v16) = 0;
  sub_1D1E66A7C();
  sub_1D18355F8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for IconTextValueStringDataHolder(0);
    LOBYTE(v16) = 1;
    sub_1D1E68ECC();
    LOBYTE(v16) = 2;
    sub_1D1E68ECC();
    LOBYTE(v16) = 3;
    sub_1D1E68E0C();
    v10 = v3 + *(v9 + 32);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v16 = *v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v15[15] = 4;
    sub_1D18323FC(v16, v11, v12, v13);
    sub_1D1832844();
    sub_1D1E68E5C();
    sub_1D1832898(v16, v17, v18, v19);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D18327F0()
{
  result = qword_1EC644D00;
  if (!qword_1EC644D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D00);
  }

  return result;
}

unint64_t sub_1D1832844()
{
  result = qword_1EC644D08;
  if (!qword_1EC644D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D08);
  }

  return result;
}

uint64_t sub_1D1832898(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D18328AC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D18328AC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return v4;
}

uint64_t IconTextValueStringDataHolder.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D18355F8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for IconTextValueStringDataHolder(0);
  sub_1D1E678EC();
  sub_1D1E678EC();
  if (*(v1 + *(v3 + 28) + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v4 = v1 + *(v3 + 32);
  v5 = *(v4 + 24);
  if (v5 == 255)
  {
    return sub_1D1E6922C();
  }

  v7 = *(v4 + 8);
  v6 = *(v4 + 16);
  v8 = *v4;
  sub_1D1E6922C();
  sub_1D1832410(v8, v7, v6, v5);
  IconTextValueStringDataHolder.AttachedData.hash(into:)(a1);

  return sub_1D18328AC(v8, v7, v6, v5);
}

uint64_t IconTextValueStringDataHolder.hashValue.getter()
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D1E66A7C();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D10, &qword_1D1E778E8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v27 - v6;
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18327F0();
  v31 = v7;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v28;
  LOBYTE(v33) = 0;
  sub_1D18355F8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v12 = v29;
  sub_1D1E68D7C();
  (*(v11 + 32))(v10, v12, v4);
  LOBYTE(v33) = 1;
  v13 = sub_1D1E68D2C();
  v14 = &v10[v8[5]];
  *v14 = v13;
  v14[1] = v15;
  LOBYTE(v33) = 2;
  v16 = sub_1D1E68D2C();
  v17 = v30;
  v18 = &v10[v8[6]];
  *v18 = v16;
  v18[1] = v19;
  LOBYTE(v33) = 3;
  v20 = sub_1D1E68C6C();
  v21 = &v10[v8[7]];
  *v21 = v20;
  v21[1] = v22;
  v36 = 4;
  sub_1D1834274();
  sub_1D1E68CBC();
  (*(v17 + 8))(v31, v32);
  v23 = v34;
  v24 = v35;
  v25 = &v10[v8[8]];
  *v25 = v33;
  *(v25 + 2) = v23;
  v25[24] = v24;
  sub_1D18342C8(v10, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1831068(v10);
}

uint64_t sub_1D1832F2C()
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1832F70(uint64_t a1)
{
  sub_1D1E6920C();
  IconTextValueStringDataHolder.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.AttachedData.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 == 2)
  {
    strcpy(v7, ".serviceIDs(");
    v7[13] = 0;
    *&v7[14] = -5120;
    v5 = sub_1D1E66A7C();
    v6 = MEMORY[0x1D3891260](v1, v5);
    MEMORY[0x1D3890F70](v6);

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v8 = 0x614465677561672ELL;
    v9 = 0xEB00000000286174;
    *v7 = v1;
    *&v7[8] = *(v0 + 1);
    v3 = GaugeDataHolder.description.getter();
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x614465677561672ELL;
  }

  if (!*(v0 + 24))
  {
    *v7 = 0;
    *&v7[8] = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0x746972756365732ELL, 0xEF28657573734979);
    LOBYTE(v8) = v1;
    sub_1D1E68ABC();
LABEL_7:
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return *v7;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1D18331A8()
{
  v1 = 0x7461446567756167;
  if (*v0 != 1)
  {
    v1 = 0x4965636976726573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974697275636573;
  }
}

uint64_t sub_1D1833218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1835ED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1833240(uint64_t a1)
{
  v2 = sub_1D183520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183327C(uint64_t a1)
{
  v2 = sub_1D183520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18332B8(uint64_t a1)
{
  v2 = sub_1D18352B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18332F4(uint64_t a1)
{
  v2 = sub_1D18352B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1833330(uint64_t a1)
{
  v2 = sub_1D183535C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183336C(uint64_t a1)
{
  v2 = sub_1D183535C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18333A8(uint64_t a1)
{
  v2 = sub_1D1835260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18333E4(uint64_t a1)
{
  v2 = sub_1D1835260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconTextValueStringDataHolder.AttachedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D20, &qword_1D1E778F0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D28, &qword_1D1E778F8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D30, &qword_1D1E77900);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D38, &qword_1D1E77908);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v29 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D183520C();
  sub_1D1E6930C();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v32) = 1;
      sub_1D18352B4();
      v17 = v31;
      sub_1D1E68DFC();
      v32 = v29;
      v33 = v14;
      v34 = v15;
      sub_1D1835308();
      v18 = v25;
      sub_1D1E68F1C();
      v19 = *(v24 + 8);
      v20 = v7;
    }

    else
    {
      LOBYTE(v32) = 2;
      sub_1D1835260();
      v21 = v26;
      v17 = v31;
      sub_1D1E68DFC();
      v32 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
      sub_1D1835404(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
      v18 = v28;
      sub_1D1E68F1C();
      v19 = *(v27 + 8);
      v20 = v21;
    }

    v19(v20, v18);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1D183535C();
    v17 = v31;
    sub_1D1E68DFC();
    LOBYTE(v32) = v29;
    sub_1D18353B0();
    sub_1D1E68F1C();
    (*(v23 + 8))(v10, v8);
  }

  return (*(v30 + 8))(v13, v17);
}

uint64_t IconTextValueStringDataHolder.AttachedData.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      v8 = v1[1];
      v7 = v1[2];
      MEMORY[0x1D3892850](1);
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0.0;
      }

      MEMORY[0x1D3892890](*&v9);

      return sub_1D1831F40(v8, v7);
    }

    else
    {
      MEMORY[0x1D3892850](2);
      result = MEMORY[0x1D3892850](*(*&v6 + 16));
      v11 = *(*&v6 + 16);
      if (v11)
      {
        v14 = *(v3 + 16);
        v12 = v3 + 16;
        v13 = v14;
        v15 = *&v6 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v16 = *(v12 + 56);
        do
        {
          v13(v5, v15, v2);
          sub_1D18355F8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          sub_1D1E676EC();
          result = (*(v12 - 8))(v5, v2);
          v15 += v16;
          --v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
    return MEMORY[0x1D3892850](LOBYTE(v6));
  }

  return result;
}

uint64_t IconTextValueStringDataHolder.AttachedData.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t IconTextValueStringDataHolder.AttachedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D80, &qword_1D1E77918);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v32[-v5];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D88, &qword_1D1E77920);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D90, &qword_1D1E77928);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D98, &qword_1D1E77930);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32[-v13];
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D183520C();
  v16 = v41;
  sub_1D1E692FC();
  if (!v16)
  {
    v41 = v12;
    v18 = v39;
    v17 = v40;
    v19 = sub_1D1E68DDC();
    v20 = (2 * *(v19 + 16)) | 1;
    v44 = v19;
    v45 = v19 + 32;
    v46 = 0;
    v47 = v20;
    v21 = sub_1D18085C8();
    if (v21 == 3 || v46 != v47 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v25 = v14;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v27 = &type metadata for IconTextValueStringDataHolder.AttachedData;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v41 + 8))(v25, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v42) = 1;
          sub_1D18352B4();
          sub_1D1E68C4C();
          sub_1D18354A0();
          v22 = v34;
          sub_1D1E68D7C();
          v23 = v41;
          (*(v36 + 1))(v7, v22);
          (*(v23 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v30 = v42;
          v31 = v43;
        }

        else
        {
          LOBYTE(v42) = 2;
          sub_1D1835260();
          sub_1D1E68C4C();
          v36 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
          sub_1D1835404(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
          v29 = v37;
          sub_1D1E68D7C();
          (*(v38 + 8))(v18, v29);
          (*(v41 + 8))(v36, v11);
          swift_unknownObjectRelease();
          v30 = v42;
          v31 = 0uLL;
        }
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_1D183535C();
        sub_1D1E68C4C();
        sub_1D18354F4();
        sub_1D1E68D7C();
        (*(v35 + 8))(v10, v8);
        (*(v41 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v30 = v42;
        v31 = 0uLL;
      }

      *v17 = v30;
      *(v17 + 8) = v31;
      *(v17 + 24) = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1D1834214()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)(v4);
  return sub_1D1E6926C();
}

unint64_t sub_1D1834274()
{
  result = qword_1EC644D18;
  if (!qword_1EC644D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D18);
  }

  return result;
}

uint64_t sub_1D18342C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D183432C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1D1E6920C();
  IconTextValueStringDataHolder.AttachedData.hash(into:)(v5);
  return sub_1D1E6926C();
}

int *IconTextValueStringDataHolder.init(id:iconSymbol:label:valueString:attachedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30[-v13];
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a8[1];
  v32 = *a8;
  v20 = a8[2];
  v31 = *(a8 + 24);
  sub_1D17783E0(a1, v14);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_1D1E66A6C();
    sub_1D1835548(a1);
    if (v21(v14, 1, v15) != 1)
    {
      sub_1D1835548(v14);
    }
  }

  else
  {
    sub_1D1835548(a1);
    (*(v16 + 32))(v18, v14, v15);
  }

  (*(v16 + 32))(a9, v18, v15);
  result = type metadata accessor for IconTextValueStringDataHolder(0);
  v23 = (a9 + result[5]);
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v25 = (a9 + result[6]);
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v27 = (a9 + result[7]);
  v28 = v38;
  *v27 = v37;
  v27[1] = v28;
  v29 = a9 + result[8];
  *v29 = v32;
  *(v29 + 8) = v19;
  *(v29 + 16) = v20;
  *(v29 + 24) = v31;
  return result;
}

uint64_t IconTextValueStringDataHolder.description.getter()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000023, 0x80000001D1EBA4A0);
  v2 = sub_1D1E66A1C();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA4D0);
  v3 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1D3890F70](*(v1 + v3[5]), *(v1 + v3[5] + 8));
  MEMORY[0x1D3890F70](0x6C6562616C202C22, 0xEB0000000022203ALL);
  MEMORY[0x1D3890F70](*(v1 + v3[6]), *(v1 + v3[6] + 8));
  MEMORY[0x1D3890F70](34, 0xE100000000000000);
  v4 = (v0 + v3[7]);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    sub_1D1E6884C();

    MEMORY[0x1D3890F70](v6, v5);
    MEMORY[0x1D3890F70](34, 0xE100000000000000);
    MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA510);
  }

  if (*(v0 + v3[8] + 24) != 255)
  {
    sub_1D1E6884C();

    v7 = IconTextValueStringDataHolder.AttachedData.description.getter();
    MEMORY[0x1D3890F70](v7);

    MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EBA4F0);
  }

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0;
}

uint64_t static IconTextValueStringDataHolder.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for IconTextValueStringDataHolder(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v10 = sub_1D1E66A1C();
    v12 = v11;
    if (v10 == sub_1D1E66A1C() && v12 == v13)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1D1E6904C();
    }
  }

  return v9 & 1;
}

uint64_t sub_1D1834994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v9 = sub_1D1E66A1C();
    v11 = v10;
    if (v9 == sub_1D1E66A1C() && v11 == v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1D1E6904C();
    }
  }

  return v8 & 1;
}

uint64_t sub_1D1834A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_8;
  }

  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
LABEL_11:
      v8 = 1;
      return v8 & 1;
    }

LABEL_8:
    v9 = sub_1D1E66A1C();
    v11 = v10;
    if (v9 != sub_1D1E66A1C() || v11 != v12)
    {
      v13 = sub_1D1E6904C();

      v8 = v13 ^ 1;
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1D1834B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a1 + v3);
  v5 = *(a1 + v3 + 8);
  v6 = (a2 + v3);
  if (v4 == *v6 && v5 == v6[1])
  {
    goto LABEL_8;
  }

  if ((sub_1D1E6904C() & 1) == 0)
  {
    if ((sub_1D1E6904C() & 1) == 0)
    {
LABEL_11:
      v8 = 1;
      return v8 & 1;
    }

LABEL_8:
    v9 = sub_1D1E66A1C();
    v11 = v10;
    if (v9 != sub_1D1E66A1C() || v11 != v12)
    {
      v13 = sub_1D1E6904C();

      v8 = v13 ^ 1;
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1D1834CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a2 + v3);
  v5 = *(a2 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (v8 = 1, (sub_1D1E6904C() & 1) == 0) && (v8 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v9 = sub_1D1E66A1C();
    v11 = v10;
    if (v9 == sub_1D1E66A1C() && v11 == v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1D1E6904C();
    }
  }

  return v8 & 1;
}

BOOL _s13HomeDataModel019IconTextValueStringB6HolderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = *v16 == *v18 && v17 == v19;
  if (!v20 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v21 = v4[8];
  v22 = a1 + v21;
  v24 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v25 = *(a1 + v21 + 16);
  v26 = *(v22 + 24);
  v27 = a2 + v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  if (v26 == 255)
  {
    sub_1D18323FC(v24, v23, v25, 255);
    if (v31 == 255)
    {
      sub_1D18323FC(v29, v28, v30, 255);
      sub_1D1832898(v24, v23, v25, 255);
      return 1;
    }

    sub_1D18323FC(v29, v28, v30, v31);
    goto LABEL_27;
  }

  v38 = v24;
  v39 = v23;
  v40 = v25;
  v41 = v26;
  if (v31 == 255)
  {
    sub_1D18323FC(v24, v23, v25, v26);
    sub_1D18323FC(v29, v28, v30, 255);
    sub_1D18323FC(v24, v23, v25, v26);
    sub_1D18328AC(v24, v23, v25, v26);
LABEL_27:
    sub_1D1832898(v24, v23, v25, v26);
    sub_1D1832898(v29, v28, v30, v31);
    return 0;
  }

  v34 = v29;
  v35 = v28;
  v36 = v30;
  v37 = v31;
  sub_1D18323FC(v24, v23, v25, v26);
  sub_1D18323FC(v29, v28, v30, v31);
  sub_1D18323FC(v24, v23, v25, v26);
  v32 = _s13HomeDataModel019IconTextValueStringB6HolderV08AttachedB0O2eeoiySbAE_AEtFZ_0(&v38, &v34);
  sub_1D18328AC(v34, v35, v36, v37);
  sub_1D18328AC(v38, v39, v40, v41);
  sub_1D1832898(v24, v23, v25, v26);
  return v32;
}

BOOL _s13HomeDataModel019IconTextValueStringB6HolderV08AttachedB0O2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      sub_1D18328AC(*a1, v3, v4, 0);
      sub_1D18328AC(v6, v7, v8, 0);
      return v6 == v2;
    }

    goto LABEL_14;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      sub_1D1832410(*a2, *(a2 + 8), v8, 2);
      sub_1D1832410(v2, v3, v4, 2);
      v12 = sub_1D17796E4(v2, v6);
      sub_1D18328AC(v2, v3, v4, 2);
      sub_1D18328AC(v6, v7, v8, 2);
      return v12 & 1;
    }

    goto LABEL_14;
  }

  if (v9 != 1)
  {
LABEL_14:
    sub_1D1832410(v6, v7, v8, v9);
    sub_1D18328AC(v2, v3, v4, v5);
    sub_1D18328AC(v6, v7, v8, v9);
    return 0;
  }

  sub_1D18328AC(*a1, v3, v4, 1);
  sub_1D18328AC(v6, v7, v8, 1);
  v10 = *&v2 == *&v6;
  if (*&v3 != *&v7)
  {
    v10 = 0;
  }

  return *&v4 == *&v8 && v10;
}

unint64_t sub_1D183520C()
{
  result = qword_1EC644D40;
  if (!qword_1EC644D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D40);
  }

  return result;
}

unint64_t sub_1D1835260()
{
  result = qword_1EC644D48;
  if (!qword_1EC644D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D48);
  }

  return result;
}

unint64_t sub_1D18352B4()
{
  result = qword_1EC644D60;
  if (!qword_1EC644D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D60);
  }

  return result;
}

unint64_t sub_1D1835308()
{
  result = qword_1EC644D68;
  if (!qword_1EC644D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D68);
  }

  return result;
}

unint64_t sub_1D183535C()
{
  result = qword_1EC644D70;
  if (!qword_1EC644D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D70);
  }

  return result;
}

unint64_t sub_1D18353B0()
{
  result = qword_1EC644D78;
  if (!qword_1EC644D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644D78);
  }

  return result;
}

uint64_t sub_1D1835404(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D18355F8(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D18354A0()
{
  result = qword_1EC644DA8;
  if (!qword_1EC644DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DA8);
  }

  return result;
}

unint64_t sub_1D18354F4()
{
  result = qword_1EC644DB0;
  if (!qword_1EC644DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DB0);
  }

  return result;
}

uint64_t sub_1D1835548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18355F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1835644()
{
  result = qword_1EC644DC0;
  if (!qword_1EC644DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DC0);
  }

  return result;
}

void sub_1D18356C0(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC644DD8, &type metadata for IconTextValueStringDataHolder.AttachedData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D18357FC()
{
  result = qword_1EC644DE0;
  if (!qword_1EC644DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DE0);
  }

  return result;
}

unint64_t sub_1D1835854()
{
  result = qword_1EC644DE8;
  if (!qword_1EC644DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DE8);
  }

  return result;
}

unint64_t sub_1D18358AC()
{
  result = qword_1EC644DF0;
  if (!qword_1EC644DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DF0);
  }

  return result;
}

unint64_t sub_1D1835904()
{
  result = qword_1EC644DF8;
  if (!qword_1EC644DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644DF8);
  }

  return result;
}

unint64_t sub_1D183595C()
{
  result = qword_1EC644E00;
  if (!qword_1EC644E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E00);
  }

  return result;
}

unint64_t sub_1D18359B4()
{
  result = qword_1EC644E08;
  if (!qword_1EC644E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E08);
  }

  return result;
}

unint64_t sub_1D1835A0C()
{
  result = qword_1EC644E10;
  if (!qword_1EC644E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E10);
  }

  return result;
}

unint64_t sub_1D1835A64()
{
  result = qword_1EC644E18;
  if (!qword_1EC644E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E18);
  }

  return result;
}

unint64_t sub_1D1835ABC()
{
  result = qword_1EC644E20;
  if (!qword_1EC644E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E20);
  }

  return result;
}

unint64_t sub_1D1835B14()
{
  result = qword_1EC644E28;
  if (!qword_1EC644E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E28);
  }

  return result;
}

unint64_t sub_1D1835B6C()
{
  result = qword_1EC644E30;
  if (!qword_1EC644E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E30);
  }

  return result;
}

unint64_t sub_1D1835BC4()
{
  result = qword_1EC644E38;
  if (!qword_1EC644E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E38);
  }

  return result;
}

unint64_t sub_1D1835C1C()
{
  result = qword_1EC644E40;
  if (!qword_1EC644E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E40);
  }

  return result;
}

unint64_t sub_1D1835C74()
{
  result = qword_1EC644E48;
  if (!qword_1EC644E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E48);
  }

  return result;
}

unint64_t sub_1D1835CCC()
{
  result = qword_1EC644E50;
  if (!qword_1EC644E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E50);
  }

  return result;
}

uint64_t sub_1D1835D20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465686361747461 && a2 == 0xEC00000061746144)
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

uint64_t sub_1D1835ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697275636573 && a2 == 0xED00006575737349;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567756167 && a2 == 0xE900000000000061 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xEA00000000007344)
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

uint64_t static LightbulbColor.convertKelvinToMired(_:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 0xF4240 / v1;
  if (a1 < 16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

BOOL static LightbulbColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v9 == 2)
      {
        v12 = *a1;
        sub_1D1780640(*a1, v2, v4, 2);
        sub_1D1780640(v7, v6, v8, 2);
        return v12 == v7;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        v15 = *(v3 + 32);
        v16 = *(v3 + 40);
        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        v19 = *(v7 + 32);
        v20 = *(v7 + 40);
        v36 = v17;
        v37 = v19;
        v34 = v20;
        v35 = v18;
        if (v16 == 255)
        {
          sub_1D178062C(v7, v6, v8, 3);
          sub_1D178062C(v3, v2, v4, 3);
          if (v34 == 255)
          {
            sub_1D1836504(v35, v36, v37, 255);
            sub_1D1836504(v14, v13, v15, 255);
            sub_1D1836518(v14, v13, v15, 255);
            sub_1D1780640(v3, v2, v4, 3);
            sub_1D1780640(v7, v6, v8, 3);
            return 1;
          }

          sub_1D1836504(v35, v36, v37, v34);
          sub_1D1836504(v14, v13, v15, 255);
        }

        else
        {
          v40[0] = *(v3 + 16);
          v40[1] = v13;
          v40[2] = v15;
          v41 = v16;
          if (v20 != 255)
          {
            v38[0] = v18;
            v38[1] = v17;
            v38[2] = v19;
            v39 = v20;
            v32 = v16;
            v21 = v18;
            v30 = v13;
            v31 = v15;
            v22 = v17;
            v23 = v19;
            v29 = v14;
            v24 = v20;
            sub_1D178062C(v7, v6, v8, 3);
            sub_1D178062C(v3, v2, v4, 3);
            sub_1D1836504(v21, v22, v23, v24);
            sub_1D1836504(v29, v30, v31, v32);
            sub_1D1836504(v29, v30, v31, v32);
            v33 = static LightbulbColor.== infix(_:_:)(v40, v38);
            sub_1D1780640(v35, v36, v37, v34);
            sub_1D1780640(v29, v30, v31, v32);
            sub_1D1836518(v29, v30, v31, v32);
            sub_1D1780640(v3, v2, v4, 3);
            sub_1D1780640(v7, v6, v8, 3);
            return (v33 & 1) != 0;
          }

          sub_1D178062C(v7, v6, v8, 3);
          sub_1D178062C(v3, v2, v4, 3);
          sub_1D1836504(v35, v36, v37, 255);
          sub_1D1836504(v14, v13, v15, v16);
          sub_1D1836504(v14, v13, v15, v16);
          sub_1D1780640(v14, v13, v15, v16);
        }

        sub_1D1836518(v14, v13, v15, v16);
        sub_1D1836518(v35, v36, v37, v34);
        sub_1D1780640(v3, v2, v4, 3);
        v25 = v7;
        v26 = v6;
        v27 = v8;
        v28 = 3;
LABEL_23:
        sub_1D1780640(v25, v26, v27, v28);
        return 0;
      }
    }

    goto LABEL_22;
  }

  if (*(a1 + 24))
  {
    if (v9 == 1)
    {
      sub_1D1780640(*a1, v2, v4, 1);
      sub_1D1780640(v7, v6, v8, 1);
      return *&v3 == *&v7 && *&v2 == *&v6;
    }

    goto LABEL_22;
  }

  if (*(a2 + 24))
  {
LABEL_22:
    sub_1D178062C(v7, v6, v8, v9);
    sub_1D1780640(v3, v2, v4, v5);
    v25 = v7;
    v26 = v6;
    v27 = v8;
    v28 = v9;
    goto LABEL_23;
  }

  sub_1D1780640(*a1, v2, v4, 0);
  sub_1D1780640(v7, v6, v8, 0);
  v10 = *&v3 == *&v7;
  if (*&v2 != *&v6)
  {
    v10 = 0;
  }

  return *&v4 == *&v8 && v10;
}

uint64_t sub_1D1836504(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D178062C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D1836518(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1780640(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D183652C(uint64_t a1)
{
  v2 = sub_1D1836F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836568(uint64_t a1)
{
  v2 = sub_1D1836F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18365A4()
{
  v1 = 4343634;
  v2 = 0x74617265706D6554;
  if (*v0 != 2)
  {
    v2 = 0x6576697470616461;
  }

  if (*v0)
  {
    v1 = 5657416;
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

uint64_t sub_1D1836624@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D183A160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D183664C(uint64_t a1)
{
  v2 = sub_1D1836F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836688(uint64_t a1)
{
  v2 = sub_1D1836F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18366C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1836790(uint64_t a1)
{
  v2 = sub_1D1837058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18367CC(uint64_t a1)
{
  v2 = sub_1D1837058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1836808(uint64_t a1)
{
  v2 = sub_1D18370AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1836844(uint64_t a1)
{
  v2 = sub_1D18370AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1836880(uint64_t a1)
{
  v2 = sub_1D1837004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18368BC(uint64_t a1)
{
  v2 = sub_1D1837004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LightbulbColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E58, &qword_1D1E78240);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v35 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E60, &qword_1D1E78248);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v35 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E68, &qword_1D1E78250);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E70, &qword_1D1E78258);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644E78, &qword_1D1E78260);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = *v1;
  v45 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = a1[3];
  v16 = a1;
  v18 = &v35 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1D1836F08();
  sub_1D1E6930C();
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      LOBYTE(v49) = 2;
      sub_1D1837004();
      v21 = v37;
      v22 = v47;
      sub_1D1E68DFC();
      v23 = v40;
      sub_1D1E68F4C();
      (*(v38 + 8))(v21, v23);
      return (*(v46 + 8))(v18, v22);
    }

    else
    {
      v27 = *(v12 + 16);
      v28 = *(v12 + 24);
      v29 = v18;
      v30 = *(v12 + 32);
      v31 = *(v12 + 40);
      LOBYTE(v49) = 3;
      sub_1D1836504(v27, v28, v30, v31);
      sub_1D1836F5C();
      v32 = v42;
      v33 = v47;
      sub_1D1E68DFC();
      v49 = v27;
      v50 = v28;
      v51 = v30;
      v52 = v31;
      sub_1D1836FB0();
      v34 = v44;
      sub_1D1E68E5C();
      (*(v43 + 8))(v32, v34);
      (*(v46 + 8))(v29, v33);
      return sub_1D1836518(v27, v28, v30, v31);
    }
  }

  else if (v14)
  {
    LOBYTE(v49) = 1;
    sub_1D1837058();
    v24 = v47;
    sub_1D1E68DFC();
    LOBYTE(v49) = 0;
    v25 = v41;
    v26 = v48;
    sub_1D1E68EEC();
    if (!v26)
    {
      LOBYTE(v49) = 1;
      sub_1D1E68EEC();
    }

    (*(v39 + 8))(v7, v25);
    return (*(v46 + 8))(v18, v24);
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_1D18370AC();
    v19 = v47;
    sub_1D1E68DFC();
    v49 = v12;
    v50 = v45;
    v51 = v13;
    sub_1D1837100();
    sub_1D1E68F1C();
    (*(v36 + 8))(v10, v8);
    return (*(v46 + 8))(v18, v19);
  }
}

unint64_t sub_1D1836F08()
{
  result = qword_1EC644E80;
  if (!qword_1EC644E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E80);
  }

  return result;
}

unint64_t sub_1D1836F5C()
{
  result = qword_1EC644E88;
  if (!qword_1EC644E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E88);
  }

  return result;
}

unint64_t sub_1D1836FB0()
{
  result = qword_1EC644E90;
  if (!qword_1EC644E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E90);
  }

  return result;
}

unint64_t sub_1D1837004()
{
  result = qword_1EC644E98;
  if (!qword_1EC644E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644E98);
  }

  return result;
}

unint64_t sub_1D1837058()
{
  result = qword_1EC644EA0;
  if (!qword_1EC644EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EA0);
  }

  return result;
}

unint64_t sub_1D18370AC()
{
  result = qword_1EC644EA8;
  if (!qword_1EC644EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EA8);
  }

  return result;
}

unint64_t sub_1D1837100()
{
  result = qword_1EC644EB0;
  if (!qword_1EC644EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EB0);
  }

  return result;
}

uint64_t LightbulbColor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 24) > 1u)
  {
    if (*(v1 + 24) == 2)
    {
      MEMORY[0x1D3892850](2);
      return sub_1D1E6923C();
    }

    else
    {
      v8 = *(v3 + 16);
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
      v11 = *(v3 + 40);
      MEMORY[0x1D3892850](3);
      if (v11 == 255)
      {
        return sub_1D1E6922C();
      }

      else
      {
        sub_1D1E6922C();
        sub_1D178062C(v8, v9, v10, v11);
        LightbulbColor.hash(into:)(a1);
        return sub_1D1780640(v8, v9, v10, v11);
      }
    }
  }

  else
  {
    v4 = v1[1];
    if (*(v1 + 24))
    {
      MEMORY[0x1D3892850](1);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x1D3892890](v6);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      return MEMORY[0x1D3892890](v7);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      return RGBColor.hash(into:)();
    }
  }
}

uint64_t LightbulbColor.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t LightbulbColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EB8, &qword_1D1E78268);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v45[-v3];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EC0, &qword_1D1E78270);
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v56 = &v45[-v4];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EC8, &qword_1D1E78278);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v45[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644ED0, &qword_1D1E78280);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644ED8, &qword_1D1E78288);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45[-v12];
  v14 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1836F08();
  v15 = v59;
  sub_1D1E692FC();
  if (!v15)
  {
    v16 = v9;
    v47 = v7;
    v17 = v55;
    v18 = v56;
    v48 = 0;
    v59 = v11;
    v20 = v57;
    v19 = v58;
    v21 = sub_1D1E68DDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v63 = v21;
    v64 = v21 + 32;
    v65 = 0;
    v66 = v22;
    v23 = sub_1D18085BC();
    if (v23 == 4 || v65 != v66 >> 1)
    {
      v31 = sub_1D1E688EC();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v33 = &type metadata for LightbulbColor;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v59 + 8))(v13, v10);
    }

    else
    {
      v46 = v23;
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          LOBYTE(v60) = 2;
          sub_1D1837004();
          v35 = v48;
          sub_1D1E68C4C();
          if (!v35)
          {
            v36 = v49;
            v41 = sub_1D1E68DAC();
            (*(v51 + 8))(v18, v36);
            (*(v59 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v30 = 0;
            v28 = v41;
            v29 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          LOBYTE(v60) = 3;
          sub_1D1836F5C();
          v39 = v48;
          sub_1D1E68C4C();
          if (!v39)
          {
            v28 = swift_allocObject();
            sub_1D183840C();
            v40 = v52;
            sub_1D1E68CBC();
            (*(v54 + 8))(v20, v40);
            (*(v59 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v30 = 0;
            v29 = 0;
            goto LABEL_21;
          }
        }

        v26 = v59;
      }

      else
      {
        if (v23)
        {
          LOBYTE(v60) = 1;
          sub_1D1837058();
          v37 = v48;
          sub_1D1E68C4C();
          v38 = v59;
          if (!v37)
          {
            LOBYTE(v60) = 0;
            sub_1D1E68D4C();
            v43 = v42;
            LOBYTE(v60) = 1;
            sub_1D1E68D4C();
            v29 = v44;
            (*(v53 + 8))(v6, v17);
            (*(v38 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v30 = 0;
            v28 = v43;
            goto LABEL_21;
          }

          (*(v59 + 8))(v13, v10);
          goto LABEL_9;
        }

        LOBYTE(v60) = 0;
        sub_1D18370AC();
        v24 = v16;
        v25 = v48;
        sub_1D1E68C4C();
        v26 = v59;
        if (!v25)
        {
          sub_1D1838460();
          v27 = v47;
          sub_1D1E68D7C();
          (*(v50 + 8))(v24, v27);
          (*(v26 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = v60;
          v29 = v61;
          v30 = v62;
LABEL_21:
          *v19 = v28;
          *(v19 + 8) = v29;
          *(v19 + 16) = v30;
          *(v19 + 24) = v46;
          return __swift_destroy_boxed_opaque_existential_1(v67);
        }
      }

      (*(v26 + 8))(v13, v10);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1D1837BF8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1837C58(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v5);
  return sub_1D1E6926C();
}

__n128 RGBColor.id.getter()
{
  v4 = *v0;
  v1 = v0[1].n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  v2 = swift_allocObject();
  result = v4;
  *(v2 + 16) = xmmword_1D1E6F900;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1;
  return result;
}

int8x16_t RGBColor.init(_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4.i64[0] = a1;
  v4.i64[1] = a2;
  v5 = vcvtq_f64_s64(v4);
  v6 = vdupq_n_s64(0x406FE00000000000uLL);
  v7 = a3 / 255.0;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = vdivq_f64(v5, v6);
  v9 = vbicq_s8(v8, vclezq_f64(v8));
  __asm { FMOV            V2.2D, #1.0 }

  result = vbslq_s8(vcgtq_f64(v9, _Q2), _Q2, v9);
  *a4 = result;
  *(a4 + 16) = v7;
  return result;
}

int8x16_t RGBColor.init(red:green:blue:)@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, double a4@<D2>)
{
  a2.f64[1] = a3;
  v4 = vclezq_f64(a2);
  if (a4 <= 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  v5 = vbicq_s8(a2, v4);
  __asm { FMOV            V1.2D, #1.0 }

  result = vbslq_s8(vcgtq_f64(v5, _Q1), _Q1, v5);
  *a1 = result;
  *(a1 + 16) = a4;
  return result;
}

uint64_t sub_1D1837E5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D183A2D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1837E84(uint64_t a1)
{
  v2 = sub_1D18384B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1837EC0(uint64_t a1)
{
  v2 = sub_1D18384B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RGBColor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644EF0, &qword_1D1E78290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18384B4();
  sub_1D1E6930C();
  v14 = v9;
  v13 = 0;
  sub_1D1838508();
  sub_1D1E68F1C();
  if (!v2)
  {
    v14 = v8;
    v13 = 1;
    sub_1D1E68F1C();
    v14 = v10;
    v13 = 2;
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RGBColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1D3892890](*&v5);
}

uint64_t RGBColor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}

uint64_t RGBColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F08, &qword_1D1E78298);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18384B4();
  sub_1D1E692FC();
  if (!v2)
  {
    v14 = 0;
    sub_1D183855C();
    sub_1D1E68D7C();
    v9 = v15;
    v14 = 1;
    sub_1D1E68D7C();
    v11 = v15;
    v14 = 2;
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D183840C()
{
  result = qword_1EC644EE0;
  if (!qword_1EC644EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EE0);
  }

  return result;
}

unint64_t sub_1D1838460()
{
  result = qword_1EC644EE8;
  if (!qword_1EC644EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EE8);
  }

  return result;
}

unint64_t sub_1D18384B4()
{
  result = qword_1EC644EF8;
  if (!qword_1EC644EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644EF8);
  }

  return result;
}

unint64_t sub_1D1838508()
{
  result = qword_1EC644F00;
  if (!qword_1EC644F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F00);
  }

  return result;
}

unint64_t sub_1D183855C()
{
  result = qword_1EC644F10;
  if (!qword_1EC644F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F10);
  }

  return result;
}

__n128 sub_1D18385E0@<Q0>(uint64_t *a1@<X8>)
{
  v6 = *v1;
  v3 = v1[1].n128_u64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  v4 = swift_allocObject();
  result = v6;
  *(v4 + 16) = xmmword_1D1E6F900;
  *(v4 + 32) = v6;
  *(v4 + 48) = v3;
  *a1 = v4;
  return result;
}

uint64_t ColorPickerFavorite.color.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_1D178062C(v2, v3, v4, v5);
}

__n128 ColorPickerFavorite.color.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_1D1780640(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ColorPickerFavorite.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColorPickerFavorite(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ColorPickerFavorite(uint64_t a1)
{
  result = qword_1EE07C6C8;
  if (!qword_1EE07C6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ColorPickerFavorite.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorPickerFavorite(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 ColorPickerFavorite.init(color:brightness:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v8 = *a1;
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u8[8];
  type metadata accessor for ColorPickerFavorite(0);
  sub_1D1E66A6C();
  result = v8;
  *a2 = v8;
  a2[1].n128_u64[0] = v5;
  a2[1].n128_u8[8] = v6;
  a2[2].n128_f64[0] = a3;
  return result;
}

uint64_t ColorPickerFavorite.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EBA530);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3826208, 0xE300000000000000);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](979659040, 0xE400000000000000);
  type metadata accessor for ColorPickerFavorite(0);
  sub_1D1E66A7C();
  sub_1D1839808(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  return 0;
}

uint64_t sub_1D1838A80()
{
  v1 = 0x656E746867697262;
  if (*v0 != 1)
  {
    v1 = 25705;
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

uint64_t sub_1D1838AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D183A3C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1838AF8(uint64_t a1)
{
  v2 = sub_1D1839534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1838B34(uint64_t a1)
{
  v2 = sub_1D1839534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ColorPickerFavorite.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F18, &qword_1D1E782A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1839534();
  sub_1D1E6930C();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v13[15] = 0;
  sub_1D178062C(v14, v9, v10, v11);
  sub_1D1836FB0();
  sub_1D1E68F1C();
  sub_1D1780640(v14, v15, v16, v17);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D1E68EEC();
    type metadata accessor for ColorPickerFavorite(0);
    LOBYTE(v14) = 2;
    sub_1D1E66A7C();
    sub_1D1839808(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ColorPickerFavorite.hash(into:)(uint64_t a1)
{
  LightbulbColor.hash(into:)(a1);
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);
  type metadata accessor for ColorPickerFavorite(0);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D1E676EC();
}

uint64_t ColorPickerFavorite.hashValue.getter()
{
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v3);
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  type metadata accessor for ColorPickerFavorite(0);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ColorPickerFavorite.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1D1E66A7C();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F28, &qword_1D1E782A8);
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ColorPickerFavorite(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v10 + 32);
  sub_1D1E66A6C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1839534();
  sub_1D1E692FC();
  if (v2)
  {
    v15 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v24 + 8))(&v12[v25], v15);
  }

  else
  {
    v13 = v6;
    v30 = 0;
    sub_1D183840C();
    v14 = v23;
    sub_1D1E68D7C();
    v16 = v28;
    v17 = v29;
    *v12 = v27;
    *(v12 + 2) = v16;
    v12[24] = v17;
    LOBYTE(v27) = 1;
    sub_1D1E68D4C();
    v18 = v26;
    *(v12 + 4) = v19;
    LOBYTE(v27) = 2;
    sub_1D1839808(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1E68D7C();
    (*(v13 + 8))(v8, v14);
    (*(v24 + 40))(&v12[v25], v5, v18);
    sub_1D1839588(v12, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D18395EC(v12);
  }
}

uint64_t sub_1D18392E4(uint64_t a1)
{
  sub_1D1E6920C();
  LightbulbColor.hash(into:)(v4);
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);
  sub_1D1E66A7C();
  sub_1D1839808(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel19ColorPickerFavoriteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  v17 = v7;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14[0] = *a2;
  v8 = v14[0];
  v14[1] = v9;
  v14[2] = v10;
  v15 = v11;
  sub_1D178062C(v4, v5, v6, v7);
  sub_1D178062C(v14[0], v9, v10, v11);
  v13 = static LightbulbColor.== infix(_:_:)(v16, v14);
  sub_1D1780640(v8, v9, v10, v11);
  sub_1D1780640(v4, v5, v6, v7);
  if (!v13 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for ColorPickerFavorite(0);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1839534()
{
  result = qword_1EC644F20;
  if (!qword_1EC644F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F20);
  }

  return result;
}

uint64_t sub_1D1839588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18395EC(uint64_t a1)
{
  v2 = type metadata accessor for ColorPickerFavorite(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D183964C()
{
  result = qword_1EC644F30;
  if (!qword_1EC644F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F30);
  }

  return result;
}

unint64_t sub_1D18396A4()
{
  result = qword_1EC644F38;
  if (!qword_1EC644F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F38);
  }

  return result;
}

unint64_t sub_1D18396FC()
{
  result = qword_1EC644F40;
  if (!qword_1EC644F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644F48, &qword_1D1E78420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F40);
  }

  return result;
}

uint64_t sub_1D1839808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D183985C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D18398A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1839934(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1839A2C()
{
  result = qword_1EC644F58;
  if (!qword_1EC644F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F58);
  }

  return result;
}

unint64_t sub_1D1839A84()
{
  result = qword_1EC644F60;
  if (!qword_1EC644F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F60);
  }

  return result;
}

unint64_t sub_1D1839ADC()
{
  result = qword_1EC644F68;
  if (!qword_1EC644F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F68);
  }

  return result;
}

unint64_t sub_1D1839B34()
{
  result = qword_1EC644F70;
  if (!qword_1EC644F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F70);
  }

  return result;
}

unint64_t sub_1D1839B8C()
{
  result = qword_1EC644F78;
  if (!qword_1EC644F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F78);
  }

  return result;
}

unint64_t sub_1D1839BE4()
{
  result = qword_1EC644F80;
  if (!qword_1EC644F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F80);
  }

  return result;
}

unint64_t sub_1D1839C3C()
{
  result = qword_1EC644F88;
  if (!qword_1EC644F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F88);
  }

  return result;
}

unint64_t sub_1D1839C94()
{
  result = qword_1EC644F90;
  if (!qword_1EC644F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F90);
  }

  return result;
}

unint64_t sub_1D1839CEC()
{
  result = qword_1EC644F98;
  if (!qword_1EC644F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644F98);
  }

  return result;
}

unint64_t sub_1D1839D44()
{
  result = qword_1EC644FA0;
  if (!qword_1EC644FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FA0);
  }

  return result;
}

unint64_t sub_1D1839D9C()
{
  result = qword_1EC644FA8;
  if (!qword_1EC644FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FA8);
  }

  return result;
}

unint64_t sub_1D1839DF4()
{
  result = qword_1EC644FB0;
  if (!qword_1EC644FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FB0);
  }

  return result;
}

unint64_t sub_1D1839E4C()
{
  result = qword_1EC644FB8;
  if (!qword_1EC644FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FB8);
  }

  return result;
}

unint64_t sub_1D1839EA4()
{
  result = qword_1EC644FC0;
  if (!qword_1EC644FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FC0);
  }

  return result;
}

unint64_t sub_1D1839EFC()
{
  result = qword_1EC644FC8;
  if (!qword_1EC644FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FC8);
  }

  return result;
}

unint64_t sub_1D1839F54()
{
  result = qword_1EC644FD0;
  if (!qword_1EC644FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FD0);
  }

  return result;
}

unint64_t sub_1D1839FAC()
{
  result = qword_1EC644FD8;
  if (!qword_1EC644FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FD8);
  }

  return result;
}

unint64_t sub_1D183A004()
{
  result = qword_1EC644FE0;
  if (!qword_1EC644FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FE0);
  }

  return result;
}

unint64_t sub_1D183A05C()
{
  result = qword_1EC644FE8;
  if (!qword_1EC644FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FE8);
  }

  return result;
}

unint64_t sub_1D183A0B4()
{
  result = qword_1EC644FF0;
  if (!qword_1EC644FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FF0);
  }

  return result;
}

unint64_t sub_1D183A10C()
{
  result = qword_1EC644FF8;
  if (!qword_1EC644FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644FF8);
  }

  return result;
}

uint64_t sub_1D183A160(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 4343634 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5657416 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74617265706D6554 && a2 == 0xEB00000000657275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697470616461 && a2 == 0xED0000746867694CLL)
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

uint64_t sub_1D183A2D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 103 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D183A3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E746867697262 && a2 == 0xEA00000000007373 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
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

__n128 static LightsSummarizer.lightsSummary(from:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1D183A9B8(a2, v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D183A528(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x80000001D1EBA5A0;

    return static String.hfLocalized(_:)(v4, v3);
  }

  if (a2 == a1)
  {
    v3 = 0x80000001D1EBA580;
    v4 = 0xD00000000000001ALL;

    return static String.hfLocalized(_:)(v4, v3);
  }

  static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EBA550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1D1E739C0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  v10 = sub_1D1E6784C();

  return v10;
}

uint64_t sub_1D183A63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E73A90;
  if (qword_1EC642198 != -1)
  {
    swift_once();
  }

  v1 = unk_1EC645010;
  v2 = qword_1EC645018;
  v3 = unk_1EC645020;
  v4 = qword_1EC645028;
  *(v0 + 32) = qword_1EC645008;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC6421A0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC645038;
  v7 = qword_1EC645040;
  v8 = unk_1EC645048;
  v9 = qword_1EC645050;
  *(v0 + 72) = qword_1EC645030;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  qword_1EC645000 = v0;
}

uint64_t static LightsSummarizer.allLightsSummaryFetchSpecifications.getter()
{
  if (qword_1EC642190 != -1)
  {
    swift_once();
  }
}

void sub_1D183A7E0()
{
  qword_1EC645008 = 0x6C7562746867694CLL;
  unk_1EC645010 = 0xEA00000000007362;
  qword_1EC645018 = &unk_1F4D624A0;
  unk_1EC645020 = MEMORY[0x1E69E7CC0];
  qword_1EC645028 = &unk_1F4D624C8;
}

uint64_t static LightsSummarizer.lightbulbsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642198 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645010;
  v2 = qword_1EC645018;
  v3 = unk_1EC645020;
  v4 = qword_1EC645028;
  *a1 = qword_1EC645008;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183A8CC()
{
  qword_1EC645030 = 0xD00000000000001CLL;
  *algn_1EC645038 = 0x80000001D1EBA5C0;
  qword_1EC645040 = &unk_1F4D624F0;
  unk_1EC645048 = MEMORY[0x1E69E7CC0];
  qword_1EC645050 = &unk_1F4D62518;
}

uint64_t static LightsSummarizer.lightbulbSwitchesAndOutletsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421A0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC645038;
  v2 = qword_1EC645040;
  v3 = unk_1EC645048;
  v4 = qword_1EC645050;
  *a1 = qword_1EC645030;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1D183A9B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  if (qword_1EC642190 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1828A0C(qword_1EC645000, 0, 0, 0, a1);
  v5 = sub_1D1B4E030(MEMORY[0x1E69E7CD0], v4, &v10, &v11);

  v6 = v10;
  result = sub_1D183A528(*(v5 + 16), *(v10 + 16));
  v8 = v11;
  *a2 = v5;
  a2[1] = v8;
  a2[2] = v6;
  a2[3] = result;
  a2[4] = v9;
  return result;
}

unint64_t static SecuritySummarizer.garageDoorIcon(_:)(uint64_t a1, char a2)
{
  result = 0xD000000000000010;
  if (a2)
  {
    return 0xD00000000000002ELL;
  }

  if (a1 > 1)
  {
    if ((a1 - 2) < 2)
    {
      return result;
    }

    return 0xD00000000000002ELL;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000012;
    }

    return 0xD00000000000002ELL;
  }

  return result;
}

uint64_t static SecuritySummarizer.garageDoorString(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000025;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = "ValueDoorStateClosed";
      v5 = 0xD000000000000022;
      return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      v7 = "ValueDoorStateOpening";
      v5 = 0xD000000000000024;
      return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v6 = "HFCharacteristicValueDoorStateOpening";
        goto LABEL_13;
      case 3:
        v6 = "HFCharacteristicValueDoorStateClosing";
        goto LABEL_13;
      case 4:
        v6 = "HFCharacteristicValueDoorStateStopped";
LABEL_13:
        v7 = (v6 - 32);
        return static String.hfLocalized(_:)(v5, v7 | 0x8000000000000000);
    }
  }

  return v4;
}

unint64_t static SecuritySummarizer.doorIcon(isSecure:)(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t static SecuritySummarizer.doorString(isSecure:)(char a1)
{
  v1 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D1E6776C();
  sub_1D1E66ACC();
  return sub_1D1E6787C();
}

unint64_t static SecuritySummarizer.windowIcon(isSecure:)(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t static SecuritySummarizer.windowString(isSecure:)(char a1)
{
  v1 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D1E6776C();
  sub_1D1E66ACC();
  return sub_1D1E6787C();
}

uint64_t static SecuritySummarizer.lockIcon(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000022;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000027;
    }

    return 0xD000000000000022;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0x6C69662E6B636F6CLL;
    }

    return 0xD000000000000022;
  }

  return 0x65706F2E6B636F6CLL;
}

unint64_t sub_1D183AFD0()
{
  v1 = *v0;
  v2 = 0x617261476E65706FLL;
  v3 = 0x6F707365726E6F6ELL;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x646E69576E65706FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6F446E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1D183B0EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1845480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D183B120(uint64_t a1)
{
  v2 = sub_1D1844998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B15C(uint64_t a1)
{
  v2 = sub_1D1844998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B198(uint64_t a1)
{
  v2 = sub_1D1844A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B1D4(uint64_t a1)
{
  v2 = sub_1D1844A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B210(uint64_t a1)
{
  v2 = sub_1D18449EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B24C(uint64_t a1)
{
  v2 = sub_1D18449EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B288(uint64_t a1)
{
  v2 = sub_1D1844A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B2C4(uint64_t a1)
{
  v2 = sub_1D1844A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B300(uint64_t a1)
{
  v2 = sub_1D1844B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B33C(uint64_t a1)
{
  v2 = sub_1D1844B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B378(uint64_t a1)
{
  v2 = sub_1D1844BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B3B4(uint64_t a1)
{
  v2 = sub_1D1844BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B3F0(uint64_t a1)
{
  v2 = sub_1D1844AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B42C(uint64_t a1)
{
  v2 = sub_1D1844AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B468(uint64_t a1)
{
  v2 = sub_1D1844C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B4A4(uint64_t a1)
{
  v2 = sub_1D1844C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D183B4E0(uint64_t a1)
{
  v2 = sub_1D1844B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D183B51C(uint64_t a1)
{
  v2 = sub_1D1844B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecurityIssue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645150, &qword_1D1E78E90);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645158, &qword_1D1E78E98);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645160, &qword_1D1E78EA0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645168, &qword_1D1E78EA8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645170, &qword_1D1E78EB0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645178, &qword_1D1E78EB8);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645180, &qword_1D1E78EC0);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645188, &qword_1D1E78EC8);
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645190, &qword_1D1E78ED0);
  v20 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1D1844998();
  sub_1D1E6930C();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_1D1844A40();
        v28 = v48;
        v27 = v54;
        sub_1D1E68DFC();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_1D18449EC();
        v28 = v51;
        v27 = v54;
        sub_1D1E68DFC();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_1D1844AE8();
      v28 = v42;
      v27 = v54;
      sub_1D1E68DFC();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_1D1844A94();
      v28 = v45;
      v27 = v54;
      sub_1D1E68DFC();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_1D1844B90();
      v28 = v36;
      v27 = v54;
      sub_1D1E68DFC();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_1D1844B3C();
      v28 = v39;
      v27 = v54;
      sub_1D1E68DFC();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_1D1844BE4();
    v31 = v54;
    sub_1D1E68DFC();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_1D1844C38();
  v27 = v54;
  sub_1D1E68DFC();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

uint64_t SecurityIssue.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t SecurityIssue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451E0, &qword_1D1E78ED8);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451E8, &qword_1D1E78EE0);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451F0, &qword_1D1E78EE8);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6451F8, &qword_1D1E78EF0);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645200, &qword_1D1E78EF8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645208, &qword_1D1E78F00);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645210, &qword_1D1E78F08);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645218, &qword_1D1E78F10);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645220, &unk_1D1E78F18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D1844998();
  v24 = v84;
  sub_1D1E692FC();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_1D1E68DDC();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_1D18085D4();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_1D1844A40();
            sub_1D1E68C4C();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_1D18449EC();
            v56 = v78;
            sub_1D1E68C4C();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_1D1844AE8();
          sub_1D1E68C4C();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_1D1844A94();
          v25 = v28;
          sub_1D1E68C4C();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_1D1844B90();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_1D1E68C4C();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_1D1844B3C();
            v50 = v61;
            v51 = v60;
            sub_1D1E68C4C();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_1D1844BE4();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_1D1E68C4C();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_1D1844C38();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_1D1E68C4C();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v37 = sub_1D1E688EC();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v39 = &type metadata for SecurityIssue;
    v40 = v61;
    v41 = v60;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_1D183C8D0()
{
  v0 = sub_1D18D8E0C(&unk_1F4D626F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645058 = v0;
  return result;
}

uint64_t sub_1D183C950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBAE80);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EBAEB0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBAEE0);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBAEE0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBAF00);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBAE80);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EBAF20);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645060 = v8;
  return result;
}

uint64_t sub_1D183CB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 40) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAD90);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBADC0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAE00);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAE00);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBAE30);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAD90);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBAE60);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  qword_1EC645068 = v8;
  return result;
}

uint64_t sub_1D183CCCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBAC80);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBACB0);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EBA6D0);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EBACE0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EBAD10);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBAD40);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EBAD70);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  off_1EC645070 = v8;
  return result;
}

uint64_t sub_1D183CE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452D8, &qword_1D1E797D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E78E80;
  *(inited + 32) = 0;
  *(inited + 40) = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBAB00);
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBAB40);
  *(inited + 72) = v2;
  *(inited + 80) = 2;
  *(inited + 88) = static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EBAB70);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EBABA0);
  *(inited + 120) = v4;
  *(inited + 128) = 4;
  *(inited + 136) = static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EBABD0);
  *(inited + 144) = v5;
  *(inited + 152) = 5;
  *(inited + 160) = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBAC00);
  *(inited + 168) = v6;
  *(inited + 176) = 6;
  *(inited + 184) = static String.hfLocalized(_:)(0xD00000000000003ELL, 0x80000001D1EBAC40);
  *(inited + 192) = v7;
  v8 = sub_1D18D8E0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E0, &qword_1D1E797D8);
  result = swift_arrayDestroy();
  off_1EC645078 = v8;
  return result;
}

uint64_t static SecuritySummarizer.lockString(_:)(uint64_t a1, char a2)
{
  v2 = 0x9380E29380E2;
  if (a2)
  {
    return 0x9380E29380E2;
  }

  v5 = 0xD00000000000002ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v6 = "ValueLockMechanismStateUnknown";
      v5 = 0xD00000000000002DLL;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 3)
    {
      v6 = "ge.exclamationmark.fill";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    if (!a1)
    {
      v6 = "ValueLockMechanismStateSecured";
      v5 = 0xD000000000000030;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      v6 = "ValueLockMechanismStateJammed";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v2;
}

uint64_t static SecuritySummarizer.securitySystemString(_:)(uint64_t a1, char a2)
{
  v2 = 0x9380E29380E2;
  if (a2)
  {
    return 0x9380E29380E2;
  }

  v5 = 0xD000000000000036;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v2;
      }

      v7 = "HFCharacteristicValueCurrentSecuritySystemStateAwayArm";
    }

    else
    {
      v7 = "HFCharacteristicValueCurrentSecuritySystemStateStayArm";
    }

    v6 = (v7 - 32);
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  switch(a1)
  {
    case 2:
      v8 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
LABEL_13:
      v6 = (v8 - 32);
      v5 = 0xD000000000000037;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    case 3:
      v8 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
      goto LABEL_13;
    case 4:
      v6 = "smStateUnsecured";
      v5 = 0xD000000000000038;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v2;
}

uint64_t sub_1D183D200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E74700;
  if (qword_1EC6421D8 != -1)
  {
    swift_once();
  }

  v1 = unk_1EC645090;
  v2 = qword_1EC645098;
  v3 = unk_1EC6450A0;
  v4 = qword_1EC6450A8;
  *(v0 + 32) = qword_1EC645088;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC6421E0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC6450B8;
  v7 = qword_1EC6450C0;
  v8 = unk_1EC6450C8;
  v9 = qword_1EC6450D0;
  *(v0 + 72) = qword_1EC6450B0;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = qword_1EC6421E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EC6450E0;
  v12 = qword_1EC6450E8;
  v13 = unk_1EC6450F0;
  v14 = qword_1EC6450F8;
  *(v0 + 112) = qword_1EC6450D8;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  v15 = qword_1EC6421F0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *algn_1EC645108;
  v17 = qword_1EC645110;
  v18 = unk_1EC645118;
  v19 = qword_1EC645120;
  *(v0 + 152) = qword_1EC645100;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  v20 = qword_1EC6421F8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = unk_1EC645130;
  v22 = qword_1EC645138;
  v23 = unk_1EC645140;
  v24 = qword_1EC645148;
  *(v0 + 192) = qword_1EC645128;
  *(v0 + 200) = v21;
  *(v0 + 208) = v22;
  *(v0 + 216) = v23;
  *(v0 + 224) = v24;
  qword_1EC645080 = v0;
}

uint64_t sub_1D183D4B0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void sub_1D183D510()
{
  qword_1EC645088 = 0xD000000000000013;
  unk_1EC645090 = 0x80000001D1EBAAE0;
  qword_1EC645098 = &unk_1F4D62540;
  unk_1EC6450A0 = MEMORY[0x1E69E7CC0];
  qword_1EC6450A8 = &unk_1F4D62568;
}

uint64_t static SecuritySummarizer.garageDoorOpenersFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645090;
  v2 = qword_1EC645098;
  v3 = unk_1EC6450A0;
  v4 = qword_1EC6450A8;
  *a1 = qword_1EC645088;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D5FC()
{
  qword_1EC6450B0 = 0xD000000000000019;
  *algn_1EC6450B8 = 0x80000001D1EBAAC0;
  qword_1EC6450C0 = &unk_1F4D62590;
  unk_1EC6450C8 = MEMORY[0x1E69E7CC0];
  qword_1EC6450D0 = &unk_1F4D625B8;
}

uint64_t static SecuritySummarizer.motorizedDoorsAndWindowsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421E0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC6450B8;
  v2 = qword_1EC6450C0;
  v3 = unk_1EC6450C8;
  v4 = qword_1EC6450D0;
  *a1 = qword_1EC6450B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D6E8()
{
  qword_1EC6450D8 = 0x1000000000000032;
  unk_1EC6450E0 = 0x80000001D1EBAA80;
  qword_1EC6450E8 = &unk_1F4D625E0;
  unk_1EC6450F0 = MEMORY[0x1E69E7CC0];
  qword_1EC6450F8 = &unk_1F4D62608;
}

uint64_t static SecuritySummarizer.doorsAndWindowsAndGarageDoorsContactSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421E8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC6450E0;
  v2 = qword_1EC6450E8;
  v3 = unk_1EC6450F0;
  v4 = qword_1EC6450F8;
  *a1 = qword_1EC6450D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D7D4()
{
  qword_1EC645100 = 0x736B636F4CLL;
  *algn_1EC645108 = 0xE500000000000000;
  qword_1EC645110 = &unk_1F4D62630;
  unk_1EC645118 = MEMORY[0x1E69E7CC0];
  qword_1EC645120 = &unk_1F4D62658;
}

uint64_t static SecuritySummarizer.locksFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC645108;
  v2 = qword_1EC645110;
  v3 = unk_1EC645118;
  v4 = qword_1EC645120;
  *a1 = qword_1EC645100;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D183D8B8()
{
  qword_1EC645128 = 0xD000000000000010;
  unk_1EC645130 = 0x80000001D1EBAA60;
  qword_1EC645138 = &unk_1F4D62680;
  unk_1EC645140 = MEMORY[0x1E69E7CC0];
  qword_1EC645148 = &unk_1F4D626A8;
}

uint64_t static SecuritySummarizer.securitySystemsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC6421F8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC645130;
  v2 = qword_1EC645138;
  v3 = unk_1EC645140;
  v4 = qword_1EC645148;
  *a1 = qword_1EC645128;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

uint64_t sub_1D183D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F8, &unk_1D1E797F0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50) + 48);
  sub_1D184586C(a1, a2, type metadata accessor for StaticServiceCharacteristicDoublet);
  return sub_1D184586C(a1 + v4, a2 + v5, type metadata accessor for IconTextValueStringDataHolder);
}

uint64_t sub_1D183DA40(uint64_t a1)
{
  v3 = type metadata accessor for IconTextValueStringDataHolder(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1D184586C(*(a1 + 56) + *(v4 + 72) * (v15 | (v12 << 6)), v6, type metadata accessor for IconTextValueStringDataHolder);
    v16 = (v6 + *(v3 + 32));
    if (v16[24])
    {
      sub_1D184580C(v6, type metadata accessor for IconTextValueStringDataHolder);
    }

    else
    {
      v90 = *v16;
      sub_1D184580C(v6, type metadata accessor for IconTextValueStringDataHolder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D177DC7C(0, *(v13 + 2) + 1, 1, v13);
      }

      isUniquelyReferenced_nonNull_native = *(v13 + 2);
      v17 = *(v13 + 3);
      v18 = isUniquelyReferenced_nonNull_native + 1;
      if (isUniquelyReferenced_nonNull_native >= v17 >> 1)
      {
        v89 = isUniquelyReferenced_nonNull_native + 1;
        v19 = sub_1D177DC7C((v17 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v13);
        v18 = v89;
        v13 = v19;
      }

      *(v13 + 2) = v18;
      v13[isUniquelyReferenced_nonNull_native + 32] = v90;
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_112;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v7 = *(v13 + 2);
  if (v7)
  {
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v20 >= *(v13 + 2))
      {
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:

        return static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EBAA30);
      }

      v22 = v13[v20 + 32];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v21;
      v23 = sub_1D174218C();
      v25 = v21[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_119;
      }

      v6 = v24;
      if (v21[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v35 = v23;
      sub_1D1738450();
      v23 = v35;
      v21 = v91;
      if (v6)
      {
        goto LABEL_26;
      }

LABEL_24:
      v21[(v23 >> 6) + 8] |= 1 << v23;
      *(v21[6] + v23) = v22;
      *(v21[7] + 8 * v23) = 0;
      v30 = v21[2];
      v27 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v27)
      {
        __break(1u);
LABEL_127:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v84 = swift_allocObject();
        v85 = MEMORY[0x1E69E6530];
        *(v84 + 16) = xmmword_1D1E739C0;
        v86 = MEMORY[0x1E69E65A8];
        *(v84 + 56) = v85;
        *(v84 + 64) = v86;
        *(v84 + 32) = v20;
        goto LABEL_128;
      }

      v21[2] = v31;
LABEL_26:
      v32 = v21[7];
      v33 = *(v32 + 8 * v23);
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_120;
      }

      ++v20;
      *(v32 + 8 * v23) = v34;
      if (v7 == v20)
      {
        goto LABEL_32;
      }
    }

    sub_1D172745C(v28, isUniquelyReferenced_nonNull_native);
    v21 = v91;
    v23 = sub_1D174218C();
    if ((v6 & 1) != (v29 & 1))
    {
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }

LABEL_23:
    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_32:

  v36 = v21[2];
  if (!v36)
  {
    v42 = 0;
    v39 = 0;
    goto LABEL_45;
  }

  v37 = sub_1D174218C();
  if (v38)
  {
    v39 = *(v21[7] + 8 * v37);
    v36 = v21[2];
    if (v36)
    {
      goto LABEL_35;
    }

LABEL_40:
    v42 = 0;
    goto LABEL_45;
  }

  v39 = 0;
  v36 = v21[2];
  if (!v36)
  {
    goto LABEL_40;
  }

LABEL_35:
  v40 = sub_1D174218C();
  if (v41)
  {
    v42 = *(v21[7] + 8 * v40);
    v36 = v21[2];
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v42 = 0;
    v36 = v21[2];
    if (!v36)
    {
      goto LABEL_45;
    }
  }

  v43 = sub_1D174218C();
  if (v44)
  {
    v36 = *(v21[7] + 8 * v43);
  }

  else
  {
    v36 = 0;
  }

LABEL_45:
  v27 = __OFADD__(v42, v36);
  v45 = v42 + v36;
  if (v27)
  {
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v46 = v21[2];
  if (v46)
  {
    v47 = sub_1D174218C();
    if (v48)
    {
      v46 = *(v21[7] + 8 * v47);
    }

    else
    {
      v46 = 0;
    }
  }

  v6 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
    goto LABEL_131;
  }

  if (!v21[2])
  {
    v7 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    goto LABEL_69;
  }

  v49 = sub_1D174218C();
  if ((v50 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = 0;
    if (v21[2])
    {
      goto LABEL_54;
    }

LABEL_59:
    v7 = 0;
    goto LABEL_69;
  }

  isUniquelyReferenced_nonNull_native = *(v21[7] + 8 * v49);
  if (!v21[2])
  {
    goto LABEL_59;
  }

LABEL_54:
  v51 = sub_1D174218C();
  if (v52)
  {
    v7 = *(v21[7] + 8 * v51);
    if (!v21[2])
    {
      goto LABEL_69;
    }
  }

  else
  {
    v7 = 0;
    if (!v21[2])
    {
      goto LABEL_69;
    }
  }

  v53 = sub_1D174218C();
  if (v54)
  {
    v20 = *(v21[7] + 8 * v53);
    if (v39 > 0)
    {
      goto LABEL_70;
    }

    goto LABEL_63;
  }

LABEL_69:
  while (1)
  {
    v20 = 0;
    if (v39 > 0)
    {
      break;
    }

LABEL_63:
    if (v6 < 1)
    {
      if (isUniquelyReferenced_nonNull_native >= 1)
      {
        if (isUniquelyReferenced_nonNull_native == 1)
        {
          if (qword_1EC6421C0 != -1)
          {
            swift_once();
          }

          v55 = off_1EC645070;
          if (*(off_1EC645070 + 2))
          {
            v56 = sub_1D174218C();
            v66 = v65;

            if ((v66 & 1) == 0)
            {
              __break(1u);
LABEL_87:

              if (qword_1EC6421C8 == -1)
              {
                goto LABEL_88;
              }

              goto LABEL_138;
            }

LABEL_74:
            v60 = *(v55[7] + 16 * v56);

            return v60;
          }

          __break(1u);
LABEL_140:
          swift_once();
LABEL_100:
          if (*(off_1EC645078 + 2))
          {
            sub_1D174218C();
            if (v73)
            {
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v74 = swift_allocObject();
          v75 = MEMORY[0x1E69E6530];
          *(v74 + 16) = xmmword_1D1E739C0;
          v76 = MEMORY[0x1E69E65A8];
          *(v74 + 56) = v75;
          *(v74 + 64) = v76;
          *(v74 + 32) = isUniquelyReferenced_nonNull_native;
          goto LABEL_128;
        }

LABEL_99:

        if (qword_1EC6421C8 != -1)
        {
          goto LABEL_140;
        }

        goto LABEL_100;
      }

      if (v7 >= 1)
      {
        if (v7 == 1)
        {
          if (qword_1EC6421C0 != -1)
          {
            swift_once();
          }

          v55 = off_1EC645070;
          if (*(off_1EC645070 + 2))
          {
            v56 = sub_1D174218C();
            v72 = v71;

            if (v72)
            {
              goto LABEL_74;
            }

            __break(1u);
            goto LABEL_99;
          }

          __break(1u);
LABEL_142:
          swift_once();
LABEL_114:
          if (*(off_1EC645078 + 2))
          {
            sub_1D174218C();
            if (v79)
            {
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v80 = swift_allocObject();
          v81 = MEMORY[0x1E69E6530];
          *(v80 + 16) = xmmword_1D1E739C0;
          v82 = MEMORY[0x1E69E65A8];
          *(v80 + 56) = v81;
          *(v80 + 64) = v82;
          *(v80 + 32) = v7;
          goto LABEL_128;
        }

LABEL_113:

        if (qword_1EC6421C8 != -1)
        {
          goto LABEL_142;
        }

        goto LABEL_114;
      }

      if (v20 < 1)
      {
        goto LABEL_121;
      }

      if (v20 == 1)
      {
        if (qword_1EC6421C0 != -1)
        {
          swift_once();
        }

        v55 = off_1EC645070;
        if (*(off_1EC645070 + 2))
        {
          v56 = sub_1D174218C();
          v78 = v77;

          if (v78)
          {
            goto LABEL_74;
          }

          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
      }

      else
      {

        if (qword_1EC6421C8 == -1)
        {
LABEL_123:
          if (*(off_1EC645078 + 2))
          {
            sub_1D174218C();
            if (v83)
            {
            }
          }

          goto LABEL_127;
        }
      }

      swift_once();
      goto LABEL_123;
    }

    if (v6 != 1)
    {
      goto LABEL_87;
    }

    if (qword_1EC6421C0 != -1)
    {
      goto LABEL_136;
    }

LABEL_66:
    v55 = off_1EC645070;
    if (!*(off_1EC645070 + 2))
    {
      __break(1u);
LABEL_138:
      swift_once();
LABEL_88:
      if (*(off_1EC645078 + 2))
      {
        sub_1D174218C();
        if (v67)
        {
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v68 = swift_allocObject();
      v69 = MEMORY[0x1E69E6530];
      *(v68 + 16) = xmmword_1D1E739C0;
      v70 = MEMORY[0x1E69E65A8];
      *(v68 + 56) = v69;
      *(v68 + 64) = v70;
      *(v68 + 32) = v6;
      goto LABEL_128;
    }

    v56 = sub_1D174218C();
    v39 = v57;

    if (v39)
    {
      goto LABEL_74;
    }

    __break(1u);
  }

LABEL_70:
  if (v39 != 1)
  {

    if (qword_1EC6421C8 != -1)
    {
      goto LABEL_134;
    }

    goto LABEL_76;
  }

  if (qword_1EC6421C0 != -1)
  {
LABEL_132:
    swift_once();
  }

  v55 = off_1EC645070;
  if (*(off_1EC645070 + 2))
  {
    v56 = sub_1D174218C();
    v59 = v58;

    if (v59)
    {
      goto LABEL_74;
    }

    __break(1u);
LABEL_136:
    swift_once();
    goto LABEL_66;
  }

  __break(1u);
LABEL_134:
  swift_once();
LABEL_76:
  if (*(off_1EC645078 + 2))
  {
    sub_1D174218C();
    if (v61)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v62 = swift_allocObject();
  v63 = MEMORY[0x1E69E6530];
  *(v62 + 16) = xmmword_1D1E739C0;
  v64 = MEMORY[0x1E69E65A8];
  *(v62 + 56) = v63;
  *(v62 + 64) = v64;
  *(v62 + 32) = v39;
LABEL_128:
  v60 = sub_1D1E6784C();

  return v60;
}

uint64_t sub_1D183E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v5 = sub_1D1E66A7C();
  v117 = *(v5 - 8);
  v118 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v104 - v8;
  v9 = type metadata accessor for IconTextValueStringDataHolder(0);
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v110 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v121 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v104 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v104 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v108 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v104 - v24;
  v25 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v116 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v104 - v28;
  v29 = type metadata accessor for StaticAccessory(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v104 - v34;
  v36 = type metadata accessor for StaticService(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v119 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v39 = sub_1D1742188(), (v40 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v30 + 72) * v39, v32, type metadata accessor for StaticAccessory);
    v41 = *&v32[*(v29 + 80)];

    sub_1D184580C(v32, type metadata accessor for StaticAccessory);
    if (*(v41 + 16))
    {
      v42 = a1;
      v43 = sub_1D1742188();
      v44 = v121;
      if (v45)
      {
        sub_1D184586C(*(v41 + 56) + *(v37 + 72) * v43, v35, type metadata accessor for StaticService);
        v46 = 0;
      }

      else
      {
        v46 = 1;
      }
    }

    else
    {
      v46 = 1;
      v44 = v121;
      v42 = a1;
    }

    v48 = v120;

    (*(v37 + 56))(v35, v46, 1, v36);
    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      v49 = v119;
      sub_1D18457A4(v35, v119, type metadata accessor for StaticService);
      v50 = StaticCharacteristic.intValue.getter();
      if (v51)
      {
        sub_1D184586C(v42, v116, type metadata accessor for StaticServiceCharacteristicDoublet);
        v53 = v117;
        v52 = v118;
        (*(v117 + 56))(v48, 1, 1, v118);
        v120 = 0x80000001D1EBA5E0;
        v54 = (v49 + *(v36 + 20));
        v55 = v54[1];
        v112 = *v54;

        v56 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
        v58 = v57;
        sub_1D17783E0(v48, v44);
        v59 = *(v53 + 48);
        if (v59(v44, 1, v52) == 1)
        {
          v60 = v109;
          sub_1D1E66A6C();
          v61 = v48;
          v62 = v60;
          v63 = v121;
          sub_1D1741A30(v61, &qword_1EC642590, qword_1D1E71260);
          if (v59(v63, 1, v52) != 1)
          {
            sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v48, &qword_1EC642590, qword_1D1E71260);
          v62 = v109;
          (*(v53 + 32))(v109, v44, v52);
        }

        v66 = v110;
        (*(v53 + 32))(v110, v62, v52);
        v67 = v114;
        v68 = (v66 + v114[5]);
        v69 = v120;
        *v68 = 0xD00000000000002ELL;
        v68[1] = v69;
        v70 = (v66 + v67[6]);
        *v70 = v112;
        v70[1] = v55;
        v71 = (v66 + v67[7]);
        *v71 = v56;
        v71[1] = v58;
        v72 = v66 + v67[8];
        *(v72 + 8) = 0;
        *(v72 + 16) = 0;
        *v72 = 6;
        *(v72 + 24) = 0;
        v73 = v108;
        sub_1D18457A4(v66, v108, type metadata accessor for IconTextValueStringDataHolder);
        (*(v113 + 56))(v73, 0, 1, v67);
        v74 = v73;
        v75 = v116;
LABEL_37:
        sub_1D1B0D938(v74, v75);
        v65 = v119;
        return sub_1D184580C(v65, type metadata accessor for StaticService);
      }

      v64 = v117;
      if (v50 == 1)
      {
        v65 = v49;
        return sub_1D184580C(v65, type metadata accessor for StaticService);
      }

      v76 = v50;
      sub_1D184586C(v42, v112, type metadata accessor for StaticServiceCharacteristicDoublet);
      (*(v64 + 56))(v111, 1, 1, v118);
      v77 = v76;
      v78 = (v49 + *(v36 + 20));
      v79 = *v78;
      v120 = v78[1];
      v121 = v79;
      if (v76 > 2)
      {
        v80 = v104;
        if (v77 != 3)
        {
          v81 = v111;
          if (v77 == 4)
          {

            v116 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
            v110 = v85;
LABEL_28:
            v83 = "Lightbulb Switches & Outlets";
            v84 = 0xD00000000000002ELL;
            goto LABEL_32;
          }

LABEL_27:

          v116 = 0;
          v110 = 0;
          goto LABEL_28;
        }

        v87 = 0x80000001D1EBA640;
        v86 = 0xD000000000000025;
      }

      else
      {
        v80 = v104;
        if (v77)
        {
          v81 = v111;
          if (v77 == 2)
          {

            v116 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA670);
            v110 = v82;
            v83 = "light.beacon.max.fill";
            v84 = 0xD000000000000010;
LABEL_32:
            v89 = v83 | 0x8000000000000000;
            sub_1D17783E0(v81, v80);
            v90 = v64;
            v91 = *(v64 + 48);
            v92 = v118;
            if (v91(v80, 1, v118) == 1)
            {
              v93 = v106;
              sub_1D1E66A6C();
              sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
              v94 = v93;
              if (v91(v80, 1, v92) != 1)
              {
                sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
              v94 = v106;
              (*(v90 + 32))(v106, v80, v92);
            }

            v95 = v107;
            (*(v90 + 32))(v107, v94, v92);
            v96 = v114;
            v97 = (v95 + v114[5]);
            *v97 = v84;
            v97[1] = v89;
            v98 = (v95 + v96[6]);
            v99 = v120;
            *v98 = v121;
            v98[1] = v99;
            v100 = (v95 + v96[7]);
            v101 = v110;
            *v100 = v116;
            v100[1] = v101;
            v102 = v95 + v96[8];
            *(v102 + 8) = 0;
            *(v102 + 16) = 0;
            *v102 = 1;
            *(v102 + 24) = 0;
            v103 = v105;
            sub_1D18457A4(v95, v105, type metadata accessor for IconTextValueStringDataHolder);
            (*(v113 + 56))(v103, 0, 1, v96);
            v74 = v103;
            v75 = v112;
            goto LABEL_37;
          }

          goto LABEL_27;
        }

        v86 = 0xD000000000000022;
        v87 = 0x80000001D1EBA6D0;
      }

      v116 = static String.hfLocalized(_:)(v86, v87);
      v110 = v88;
      v83 = "light.beacon.max.fill";
      v84 = 0xD000000000000010;
      v81 = v111;
      goto LABEL_32;
    }
  }

  else
  {
    (*(v37 + 56))(v35, 1, 1, v36);
  }

  return sub_1D1741A30(v35, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D183F150(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v18 = v6;
  if (qword_1EC6421D8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EC645088;
    v7 = unk_1EC645090;
    v9 = qword_1EC645098;
    v10 = unk_1EC6450A0;
    v11 = qword_1EC6450A8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v9;
    *(v12 + 56) = v10;
    *(v12 + 64) = v11;

    v13 = sub_1D1828A0C(v12, 1, 0, 0, a1);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v6 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D184586C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D183E5B8(v5, a1, &v18);
      ++v15;
      sub_1D184580C(v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v14 == v15)
      {
        v6 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D183F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v187 = a3;
  v5 = sub_1D1E66A7C();
  v188 = *(v5 - 8);
  v189 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v178 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v177 = &v161 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v169 = &v161 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v161 - v12;
  v13 = type metadata accessor for IconTextValueStringDataHolder(0);
  v185 = *(v13 - 8);
  v186 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v176 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v175 = &v161 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v167 = &v161 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v166 = &v161 - v20;
  v21 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v184 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v183 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v192 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v171 = &v161 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v173 = &v161 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v170 = &v161 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v163 = &v161 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v161 = &v161 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v162 = &v161 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v191 = &v161 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v174 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v172 = &v161 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v165 = &v161 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v164 = &v161 - v48;
  v49 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v182 = &v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v181 = &v161 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v180 = &v161 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v179 = &v161 - v56;
  v57 = type metadata accessor for StaticAccessory(0);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v161 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v161 - v62;
  v64 = type metadata accessor for StaticService(0);
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v190 = &v161 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v67 = sub_1D1742188(), (v68 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v58 + 72) * v67, v60, type metadata accessor for StaticAccessory);
    v69 = *&v60[*(v57 + 80)];

    sub_1D184580C(v60, type metadata accessor for StaticAccessory);
    if (*(v69 + 16))
    {
      v70 = a1;
      v71 = sub_1D1742188();
      v72 = v191;
      if (v73)
      {
        sub_1D184586C(*(v69 + 56) + *(v65 + 72) * v71, v63, type metadata accessor for StaticService);
        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      v76 = v192;
    }

    else
    {
      v74 = 1;
      v70 = a1;
      v72 = v191;
      v76 = v192;
    }

    (*(v65 + 56))(v63, v74, 1, v64);
    if ((*(v65 + 48))(v63, 1, v64) != 1)
    {
      v77 = v190;
      sub_1D18457A4(v63, v190, type metadata accessor for StaticService);
      v78 = StaticCharacteristic.intValue.getter();
      if (v79)
      {
        v80 = *(v77 + *(v64 + 104));
        v81 = v189;
        if (v80 == 14)
        {
          sub_1D184586C(v70, v181, type metadata accessor for StaticServiceCharacteristicDoublet);
          v104 = v188;
          v105 = v170;
          (*(v188 + 56))(v170, 1, 1, v81);
          v106 = (v77 + *(v64 + 20));
          v107 = v106[1];
          v191 = *v106;
          v192 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v184 = sub_1D1E6787C();
          v109 = v108;
          v110 = v173;
          sub_1D17783E0(v105, v173);
          v111 = *(v104 + 48);
          if (v111(v110, 1, v81) == 1)
          {
            v112 = v177;
            sub_1D1E66A6C();
            sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
            v113 = v112;
            if (v111(v110, 1, v81) != 1)
            {
              sub_1D1741A30(v110, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
            v113 = v177;
            (*(v104 + 32))(v177, v110, v81);
          }

          v135 = v175;
          (*(v104 + 32))(v175, v113, v81);
          v136 = v186;
          v137 = (v135 + v186[5]);
          *v137 = 0xD000000000000013;
          v138 = v191;
          v137[1] = v192;
          v139 = (v135 + v136[6]);
          *v139 = v138;
          v139[1] = v107;
          v140 = (v135 + v136[7]);
          *v140 = v184;
          v140[1] = v109;
          v141 = v135 + v136[8];
          *(v141 + 8) = 0;
          *(v141 + 16) = 0;
          *v141 = 6;
          *(v141 + 24) = 0;
          v142 = v172;
          sub_1D18457A4(v135, v172, type metadata accessor for IconTextValueStringDataHolder);
          (*(v185 + 56))(v142, 0, 1, v136);
          v133 = v142;
          v134 = v181;
          goto LABEL_40;
        }

        if (v80 == 51)
        {
          sub_1D184586C(v70, v182, type metadata accessor for StaticServiceCharacteristicDoublet);
          v82 = v188;
          v83 = v171;
          (*(v188 + 56))(v171, 1, 1, v81);
          v84 = (v77 + *(v64 + 20));
          v85 = v84[1];
          v191 = *v84;
          v192 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v184 = sub_1D1E6787C();
          v87 = v86;
          sub_1D17783E0(v83, v76);
          v88 = *(v82 + 48);
          if (v88(v76, 1, v81) == 1)
          {
            v89 = v76;
            v90 = v178;
            sub_1D1E66A6C();
            sub_1D1741A30(v83, &qword_1EC642590, qword_1D1E71260);
            v91 = v90;
            if (v88(v89, 1, v81) != 1)
            {
              sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v83, &qword_1EC642590, qword_1D1E71260);
            v91 = v178;
            (*(v82 + 32))(v178, v76, v81);
          }

          v124 = v176;
          (*(v82 + 32))(v176, v91, v81);
          v125 = v186;
          v126 = (v124 + v186[5]);
          v127 = v191;
          v128 = v192;
          *v126 = 0xD000000000000014;
          v126[1] = v128;
          v129 = (v124 + v125[6]);
          *v129 = v127;
          v129[1] = v85;
          v130 = (v124 + v125[7]);
          *v130 = v184;
          v130[1] = v87;
          v131 = v124 + v125[8];
          *(v131 + 8) = 0;
          *(v131 + 16) = 0;
          *v131 = 6;
          *(v131 + 24) = 0;
          v132 = v174;
          sub_1D18457A4(v124, v174, type metadata accessor for IconTextValueStringDataHolder);
          (*(v185 + 56))(v132, 0, 1, v125);
          v133 = v132;
          v134 = v182;
LABEL_40:
          sub_1D1B0D938(v133, v134);
          v103 = v190;
          return sub_1D184580C(v103, type metadata accessor for StaticService);
        }
      }

      else
      {
        v92 = v189;
        if (v78)
        {
          v93 = *(v77 + *(v64 + 104));
          if (v93 == 51)
          {
            sub_1D184586C(v70, v180, type metadata accessor for StaticServiceCharacteristicDoublet);
            v114 = v188;
            v115 = v161;
            (*(v188 + 56))(v161, 1, 1, v92);
            v116 = (v77 + *(v64 + 20));
            v117 = v116[1];
            v191 = *v116;
            v192 = 0x80000001D1EB6510;

            sub_1D1E6776C();
            sub_1D1E66ACC();
            v184 = sub_1D1E6787C();
            v119 = v118;
            v120 = v163;
            sub_1D17783E0(v115, v163);
            v121 = *(v114 + 48);
            if (v121(v120, 1, v92) == 1)
            {
              v122 = v169;
              sub_1D1E66A6C();
              sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
              v123 = v122;
              if (v121(v120, 1, v92) != 1)
              {
                sub_1D1741A30(v120, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
              v123 = v169;
              (*(v114 + 32))(v169, v120, v92);
            }

            v152 = v167;
            (*(v114 + 32))(v167, v123, v92);
            v153 = v186;
            v154 = (v152 + v186[5]);
            v155 = v191;
            v156 = v192;
            *v154 = 0xD000000000000014;
            v154[1] = v156;
            v157 = (v152 + v153[6]);
            *v157 = v155;
            v157[1] = v117;
            v158 = (v152 + v153[7]);
            *v158 = v184;
            v158[1] = v119;
            v159 = v152 + v153[8];
            *(v159 + 8) = 0;
            *(v159 + 16) = 0;
            *v159 = 4;
            *(v159 + 24) = 0;
            v160 = v165;
            sub_1D18457A4(v152, v165, type metadata accessor for IconTextValueStringDataHolder);
            (*(v185 + 56))(v160, 0, 1, v153);
            v133 = v160;
            v134 = v180;
            goto LABEL_40;
          }

          if (v93 == 14)
          {
            sub_1D184586C(v70, v179, type metadata accessor for StaticServiceCharacteristicDoublet);
            v94 = v188;
            (*(v188 + 56))(v72, 1, 1, v92);
            v95 = (v77 + *(v64 + 20));
            v96 = v95[1];
            v191 = *v95;
            v192 = 0x80000001D1EB64F0;

            sub_1D1E6776C();
            sub_1D1E66ACC();
            v97 = sub_1D1E6787C();
            v99 = v98;
            v100 = v162;
            sub_1D17783E0(v72, v162);
            v101 = *(v94 + 48);
            if (v101(v100, 1, v92) == 1)
            {
              v102 = v168;
              sub_1D1E66A6C();
              sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
              if (v101(v100, 1, v92) != 1)
              {
                sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
              }
            }

            else
            {
              sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
              v143 = *(v94 + 32);
              v102 = v168;
              v143(v168, v100, v92);
            }

            v144 = v166;
            (*(v188 + 32))(v166, v102, v92);
            v145 = v186;
            v146 = (v144 + v186[5]);
            *v146 = 0xD000000000000013;
            v147 = v191;
            v146[1] = v192;
            v148 = (v144 + v145[6]);
            *v148 = v147;
            v148[1] = v96;
            v149 = (v144 + v145[7]);
            *v149 = v97;
            v149[1] = v99;
            v150 = v144 + v145[8];
            *(v150 + 8) = 0;
            *(v150 + 16) = 0;
            *v150 = 2;
            *(v150 + 24) = 0;
            v151 = v164;
            sub_1D18457A4(v144, v164, type metadata accessor for IconTextValueStringDataHolder);
            (*(v185 + 56))(v151, 0, 1, v145);
            v133 = v151;
            v134 = v179;
            goto LABEL_40;
          }
        }
      }

      v103 = v77;
      return sub_1D184580C(v103, type metadata accessor for StaticService);
    }
  }

  else
  {
    (*(v65 + 56))(v63, 1, 1, v64);
  }

  return sub_1D1741A30(v63, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D1840708(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v18 = v6;
  if (qword_1EC6421E0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EC6450B0;
    v7 = *algn_1EC6450B8;
    v9 = qword_1EC6450C0;
    v10 = unk_1EC6450C8;
    v11 = qword_1EC6450D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v9;
    *(v12 + 56) = v10;
    *(v12 + 64) = v11;

    v13 = sub_1D1828A0C(v12, 1, 0, 0, a1);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v6 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D184586C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D183F3BC(v5, a1, &v18);
      ++v15;
      sub_1D184580C(v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v14 == v15)
      {
        v6 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D1840974(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v284 = a1;
  v278 = a3;
  v4 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v275 = &v239 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v274 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v279 = *(v8 - 8);
  v280 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v270 = &v239 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v268 = &v239 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v255 = &v239 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v254 = &v239 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v252 = &v239 - v20;
  v21 = type metadata accessor for IconTextValueStringDataHolder(0);
  v276 = *(v21 - 8);
  v277 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v269 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v267 = &v239 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v266 = &v239 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v253 = &v239 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v251 = &v239 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v250 = &v239 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v283 = &v239 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v264 = &v239 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v265 = &v239 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v261 = &v239 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v282 = &v239 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v259 = &v239 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v249 = &v239 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v245 = &v239 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v247 = &v239 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v242 = &v239 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v244 = &v239 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v241 = &v239 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v263 = &v239 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v262 = &v239 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v260 = &v239 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v248 = &v239 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v246 = &v239 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v243 = &v239 - v68;
  v69 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v70 = MEMORY[0x1EEE9AC00](v69);
  v273 = &v239 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v272 = &v239 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v271 = &v239 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v258 = &v239 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v257 = &v239 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v256 = &v239 - v80;
  v81 = type metadata accessor for StaticAccessory(0);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v239 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v87 = &v239 - v86;
  v88 = type metadata accessor for StaticService(0);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v281 = &v239 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (v91 = sub_1D1742188(), (v92 & 1) == 0))
  {
    (*(v89 + 56))(v87, 1, 1, v88);
    return sub_1D1741A30(v87, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v240 = v11;
  v93 = v284;
  sub_1D184586C(*(a2 + 56) + *(v82 + 72) * v91, v84, type metadata accessor for StaticAccessory);
  v94 = *&v84[*(v81 + 80)];

  sub_1D184580C(v84, type metadata accessor for StaticAccessory);
  if (*(v94 + 16))
  {
    v95 = v93;
    v96 = sub_1D1742188();
    v97 = v283;
    if (v98)
    {
      sub_1D184586C(*(v94 + 56) + *(v89 + 72) * v96, v87, type metadata accessor for StaticService);
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }
  }

  else
  {
    v99 = 1;
    v95 = v93;
    v97 = v283;
  }

  v101 = v282;

  (*(v89 + 56))(v87, v99, 1, v88);
  if ((*(v89 + 48))(v87, 1, v88) == 1)
  {
    return sub_1D1741A30(v87, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v102 = v87;
  v103 = v281;
  sub_1D18457A4(v102, v281, type metadata accessor for StaticService);
  v104 = *(v103 + *(v88 + 112));
  if (v104 != 53)
  {
    v106 = StaticCharacteristic.BOOLValue.getter();
    if (v106 == 2)
    {
      v107 = v280;
      switch(v104)
      {
        case 14:
          sub_1D184586C(v95, v272, type metadata accessor for StaticServiceCharacteristicDoublet);
          v145 = v279;
          v146 = v261;
          (*(v279 + 56))(v261, 1, 1, v107);
          v147 = *(v88 + 20);
          v148 = v146;
          v149 = (v103 + v147);
          v150 = v149[1];
          v283 = *v149;
          v284 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v282 = sub_1D1E6787C();
          v152 = v151;
          v153 = v265;
          sub_1D17783E0(v148, v265);
          v154 = v107;
          v155 = *(v145 + 48);
          if (v155(v153, 1, v107) == 1)
          {
            v156 = v270;
            sub_1D1E66A6C();
            sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
            v157 = v156;
            if (v155(v153, 1, v154) != 1)
            {
              sub_1D1741A30(v153, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
            v157 = v270;
            (*(v145 + 32))(v270, v153, v154);
          }

          v193 = v267;
          (*(v145 + 32))(v267, v157, v154);
          v194 = v277;
          v195 = (v193 + v277[5]);
          v196 = v283;
          v197 = v284;
          *v195 = 0xD000000000000013;
          v195[1] = v197;
          v198 = (v193 + v194[6]);
          *v198 = v196;
          v198[1] = v150;
          v199 = (v193 + v194[7]);
          *v199 = v282;
          v199[1] = v152;
          v200 = v193 + v194[8];
          *(v200 + 8) = 0;
          *(v200 + 16) = 0;
          *v200 = 6;
          *(v200 + 24) = 0;
          v201 = v262;
          sub_1D18457A4(v193, v262, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v201, 0, 1, v194);
          v179 = v201;
          v180 = v272;
          break;
        case 19:
          sub_1D184586C(v95, v271, type metadata accessor for StaticServiceCharacteristicDoublet);
          v134 = v279;
          v135 = v259;
          (*(v279 + 56))(v259, 1, 1, v107);
          v136 = (v103 + *(v88 + 20));
          v137 = v136[1];
          v283 = *v136;
          v284 = 0x80000001D1EBA5E0;

          v282 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBA610);
          v139 = v138;
          sub_1D17783E0(v135, v101);
          v140 = v107;
          v141 = *(v134 + 48);
          if (v141(v101, 1, v107) == 1)
          {
            v142 = v101;
            v143 = v268;
            sub_1D1E66A6C();
            sub_1D1741A30(v135, &qword_1EC642590, qword_1D1E71260);
            v144 = v143;
            if (v141(v142, 1, v140) != 1)
            {
              sub_1D1741A30(v142, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v135, &qword_1EC642590, qword_1D1E71260);
            v144 = v268;
            (*(v134 + 32))(v268, v101, v140);
          }

          v170 = v266;
          (*(v134 + 32))(v266, v144, v140);
          v171 = v277;
          v172 = (v170 + v277[5]);
          v173 = v283;
          v174 = v284;
          *v172 = 0xD00000000000002ELL;
          v172[1] = v174;
          v175 = (v170 + v171[6]);
          *v175 = v173;
          v175[1] = v137;
          v176 = (v170 + v171[7]);
          *v176 = v282;
          v176[1] = v139;
          v177 = v170 + v171[8];
          *(v177 + 8) = 0;
          *(v177 + 16) = 0;
          *v177 = 6;
          *(v177 + 24) = 0;
          v178 = v260;
          sub_1D18457A4(v170, v260, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v178, 0, 1, v171);
          v179 = v178;
          v180 = v271;
          break;
        case 51:
          sub_1D184586C(v95, v273, type metadata accessor for StaticServiceCharacteristicDoublet);
          v108 = v279;
          v109 = v264;
          (*(v279 + 56))(v264, 1, 1, v107);
          v110 = (v103 + *(v88 + 20));
          v111 = v110[1];
          v283 = *v110;
          v284 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v112 = sub_1D1E6787C();
          v114 = v113;
          sub_1D17783E0(v109, v97);
          v115 = *(v108 + 48);
          if (v115(v97, 1, v107) == 1)
          {
            v282 = v111;
            v116 = v114;
            v117 = v112;
            v118 = v109;
            v119 = v240;
            sub_1D1E66A6C();
            v120 = v118;
            v112 = v117;
            v114 = v116;
            v111 = v282;
            sub_1D1741A30(v120, &qword_1EC642590, qword_1D1E71260);
            if (v115(v97, 1, v107) != 1)
            {
              sub_1D1741A30(v97, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v109, &qword_1EC642590, qword_1D1E71260);
            v119 = v240;
            (*(v108 + 32))(v240, v97, v107);
          }

          v202 = v269;
          (*(v108 + 32))(v269, v119, v107);
          v203 = v277;
          v204 = (v202 + v277[5]);
          v205 = v283;
          v206 = v284;
          *v204 = 0xD000000000000014;
          v204[1] = v206;
          v207 = (v202 + v203[6]);
          *v207 = v205;
          v207[1] = v111;
          v208 = (v202 + v203[7]);
          *v208 = v112;
          v208[1] = v114;
          v209 = v202 + v203[8];
          *(v209 + 8) = 0;
          *(v209 + 16) = 0;
          *v209 = 6;
          *(v209 + 24) = 0;
          v210 = v263;
          sub_1D18457A4(v202, v263, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v210, 0, 1, v203);
          v179 = v210;
          v180 = v273;
          break;
        default:
          goto LABEL_12;
      }
    }

    else
    {
      v121 = v280;
      if ((v106 & 1) == 0)
      {
        goto LABEL_12;
      }

      switch(v104)
      {
        case 14:
          sub_1D184586C(v95, v257, type metadata accessor for StaticServiceCharacteristicDoublet);
          v181 = v279;
          v182 = v242;
          (*(v279 + 56))(v242, 1, 1, v121);
          v183 = *(v88 + 20);
          v184 = v182;
          v185 = (v103 + v183);
          v186 = v185[1];
          v283 = *v185;
          v284 = 0x80000001D1EB64F0;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v282 = sub_1D1E6787C();
          v188 = v187;
          v189 = v247;
          sub_1D17783E0(v184, v247);
          v190 = *(v181 + 48);
          if (v190(v189, 1, v121) == 1)
          {
            v191 = v254;
            sub_1D1E66A6C();
            sub_1D1741A30(v184, &qword_1EC642590, qword_1D1E71260);
            v192 = v191;
            if (v190(v189, 1, v121) != 1)
            {
              sub_1D1741A30(v189, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v184, &qword_1EC642590, qword_1D1E71260);
            v192 = v254;
            (*(v181 + 32))(v254, v189, v121);
          }

          v221 = v251;
          (*(v181 + 32))(v251, v192, v121);
          v222 = v277;
          v223 = (v221 + v277[5]);
          v224 = v283;
          v225 = v284;
          *v223 = 0xD000000000000013;
          v223[1] = v225;
          v226 = (v221 + v222[6]);
          *v226 = v224;
          v226[1] = v186;
          v227 = (v221 + v222[7]);
          *v227 = v282;
          v227[1] = v188;
          v228 = v221 + v222[8];
          *(v228 + 8) = 0;
          *(v228 + 16) = 0;
          *v228 = 2;
          *(v228 + 24) = 0;
          v229 = v246;
          sub_1D18457A4(v221, v246, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v229, 0, 1, v222);
          v179 = v229;
          v220 = &v286;
          break;
        case 51:
          sub_1D184586C(v95, v258, type metadata accessor for StaticServiceCharacteristicDoublet);
          v158 = v279;
          v159 = v245;
          (*(v279 + 56))(v245, 1, 1, v121);
          v160 = *(v88 + 20);
          v161 = v159;
          v162 = (v103 + v160);
          v163 = v162[1];
          v283 = *v162;
          v284 = 0x80000001D1EB6510;

          sub_1D1E6776C();
          sub_1D1E66ACC();
          v282 = sub_1D1E6787C();
          v165 = v164;
          v166 = v249;
          sub_1D17783E0(v161, v249);
          v167 = *(v158 + 48);
          if (v167(v166, 1, v121) == 1)
          {
            v168 = v255;
            sub_1D1E66A6C();
            sub_1D1741A30(v161, &qword_1EC642590, qword_1D1E71260);
            v169 = v168;
            if (v167(v166, 1, v121) != 1)
            {
              sub_1D1741A30(v166, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v161, &qword_1EC642590, qword_1D1E71260);
            v169 = v255;
            (*(v158 + 32))(v255, v166, v121);
          }

          v211 = v253;
          (*(v158 + 32))(v253, v169, v121);
          v212 = v277;
          v213 = (v211 + v277[5]);
          v214 = v283;
          v215 = v284;
          *v213 = 0xD000000000000014;
          v213[1] = v215;
          v216 = (v211 + v212[6]);
          *v216 = v214;
          v216[1] = v163;
          v217 = (v211 + v212[7]);
          *v217 = v282;
          v217[1] = v165;
          v218 = v211 + v212[8];
          *(v218 + 8) = 0;
          *(v218 + 16) = 0;
          *v218 = 4;
          *(v218 + 24) = 0;
          v219 = v248;
          sub_1D18457A4(v211, v248, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v219, 0, 1, v212);
          v179 = v219;
          v220 = &v287;
          break;
        case 19:
          sub_1D184586C(v95, v256, type metadata accessor for StaticServiceCharacteristicDoublet);
          v122 = v279;
          v123 = v241;
          (*(v279 + 56))(v241, 1, 1, v121);
          v124 = v121;
          v125 = (v103 + *(v88 + 20));
          v126 = v125[1];
          v283 = *v125;
          v284 = 0x80000001D1EB64D0;

          v127 = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EBA6D0);
          v129 = v128;
          v130 = v244;
          sub_1D17783E0(v123, v244);
          v131 = *(v122 + 48);
          if (v131(v130, 1, v124) == 1)
          {
            v132 = v123;
            v133 = v252;
            sub_1D1E66A6C();
            sub_1D1741A30(v132, &qword_1EC642590, qword_1D1E71260);
            if (v131(v130, 1, v124) != 1)
            {
              sub_1D1741A30(v130, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
            v133 = v252;
            (*(v122 + 32))(v252, v130, v124);
          }

          v230 = v250;
          (*(v279 + 32))(v250, v133, v124);
          v231 = v277;
          v232 = (v230 + v277[5]);
          v233 = v283;
          v234 = v284;
          *v232 = 0xD000000000000010;
          v232[1] = v234;
          v235 = (v230 + v231[6]);
          *v235 = v233;
          v235[1] = v126;
          v236 = (v230 + v231[7]);
          *v236 = v127;
          v236[1] = v129;
          v237 = v230 + v231[8];
          *(v237 + 8) = 0;
          *(v237 + 16) = 0;
          *v237 = 1;
          *(v237 + 24) = 0;
          v238 = v243;
          sub_1D18457A4(v230, v243, type metadata accessor for IconTextValueStringDataHolder);
          (*(v276 + 56))(v238, 0, 1, v231);
          v179 = v238;
          v220 = &v285;
          break;
        default:
          goto LABEL_12;
      }

      v180 = *(v220 - 32);
    }

    sub_1D1B0D938(v179, v180);
    v105 = v281;
    return sub_1D184580C(v105, type metadata accessor for StaticService);
  }

LABEL_12:
  v105 = v103;
  return sub_1D184580C(v105, type metadata accessor for StaticService);
}

unint64_t sub_1D1842398(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v18 = v6;
  if (qword_1EC6421E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EC6450D8;
    v7 = unk_1EC6450E0;
    v9 = qword_1EC6450E8;
    v10 = unk_1EC6450F0;
    v11 = qword_1EC6450F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v9;
    *(v12 + 56) = v10;
    *(v12 + 64) = v11;

    v13 = sub_1D1828A0C(v12, 1, 0, 0, a1);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v6 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D184586C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1840974(v5, a1, &v18);
      ++v15;
      sub_1D184580C(v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v14 == v15)
      {
        v6 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D1842604(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v112 = a1;
  v4 = sub_1D1E66A7C();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v103 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v93 - v7;
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v99 = &v93 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v101 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v93 - v24;
  v25 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v108 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v93 - v28;
  v29 = type metadata accessor for StaticAccessory(0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v93 - v34;
  v36 = type metadata accessor for StaticService(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (v39 = sub_1D1742188(), (v40 & 1) == 0))
  {
    (*(v37 + 56))(v35, 1, 1, v36);
    return sub_1D1741A30(v35, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v94 = v20;
  v41 = v112;
  sub_1D184586C(*(a2 + 56) + *(v30 + 72) * v39, v32, type metadata accessor for StaticAccessory);
  v42 = *&v32[*(v29 + 80)];

  sub_1D184580C(v32, type metadata accessor for StaticAccessory);
  if (*(v42 + 16))
  {
    v43 = v41;
    v44 = sub_1D1742188();
    if (v45)
    {
      sub_1D184586C(*(v42 + 56) + *(v37 + 72) * v44, v35, type metadata accessor for StaticService);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
    v43 = v41;
  }

  v48 = v94;

  (*(v37 + 56))(v35, v46, 1, v36);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    return sub_1D1741A30(v35, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  v49 = v35;
  v50 = v109;
  sub_1D18457A4(v49, v109, type metadata accessor for StaticService);
  v51 = StaticCharacteristic.intValue.getter();
  if (v52)
  {
    sub_1D184586C(v43, v108, type metadata accessor for StaticServiceCharacteristicDoublet);
    v54 = v110;
    v53 = v111;
    v55 = v99;
    (*(v110 + 56))(v99, 1, 1, v111);
    v56 = (v50 + *(v36 + 20));
    v57 = v56[1];
    v112 = *v56;
    v58 = v100;
    sub_1D17783E0(v55, v100);
    v59 = *(v54 + 48);
    v60 = v59(v58, 1, v53);

    if (v60 == 1)
    {
      v102 = v57;
      v61 = v50;
      v62 = v55;
      v63 = v103;
      sub_1D1E66A6C();
      v64 = v62;
      v50 = v61;
      v57 = v102;
      sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
      if (v59(v58, 1, v53) != 1)
      {
        sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
      v63 = v103;
      (*(v54 + 32))(v103, v58, v53);
    }

    v69 = v104;
    (*(v54 + 32))(v104, v63, v53);
    v70 = v106;
    v71 = (v69 + v106[5]);
    *v71 = 0xD000000000000022;
    v71[1] = 0x80000001D1EBA780;
    v72 = (v69 + v70[6]);
    *v72 = v112;
    v72[1] = v57;
    v73 = (v69 + v70[7]);
    *v73 = 0xD000000000000022;
    v73[1] = 0x80000001D1EBA780;
    v74 = v69 + v70[8];
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *v74 = 6;
    *(v74 + 24) = 0;
    v75 = v101;
    sub_1D18457A4(v69, v101, type metadata accessor for IconTextValueStringDataHolder);
    (*(v105 + 56))(v75, 0, 1, v70);
    v76 = v75;
    v77 = v108;
LABEL_28:
    sub_1D1B0D938(v76, v77);
    return sub_1D184580C(v50, type metadata accessor for StaticService);
  }

  v66 = v110;
  v65 = v111;
  if (v51 != 1)
  {
    v67 = v51;
    sub_1D184586C(v43, v102, type metadata accessor for StaticServiceCharacteristicDoublet);
    (*(v66 + 56))(v48, 1, 1, v65);
    if (v67)
    {
      v68 = v95;
      if (v67 == 2)
      {
        v108 = 0x80000001D1EBA7B0;
        v112 = 0xD000000000000027;
      }

      else
      {
        v112 = 0xD000000000000022;
        v108 = 0x80000001D1EBA780;
      }
    }

    else
    {
      v108 = 0xEE006C6C69662E6ELL;
      v112 = 0x65706F2E6B636F6CLL;
      v68 = v95;
    }

    v78 = (v50 + *(v36 + 20));
    v79 = v78[1];
    v104 = *v78;

    v80 = v94;
    sub_1D17783E0(v94, v68);
    v81 = *(v66 + 48);
    if (v81(v68, 1, v65) == 1)
    {
      v82 = v97;
      sub_1D1E66A6C();
      sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
      v83 = v82;
      if (v81(v68, 1, v65) != 1)
      {
        sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
      v83 = v97;
      (*(v66 + 32))(v97, v68, v65);
    }

    v84 = v98;
    (*(v66 + 32))(v98, v83, v65);
    v85 = v106;
    v86 = (v84 + v106[5]);
    v87 = v112;
    v88 = v108;
    *v86 = v112;
    v86[1] = v88;
    v89 = (v84 + v85[6]);
    *v89 = v104;
    v89[1] = v79;
    v90 = (v84 + v85[7]);
    *v90 = v87;
    v90[1] = v88;
    v91 = v84 + v85[8];
    *(v91 + 8) = 0;
    *(v91 + 16) = 0;
    *v91 = 3;
    *(v91 + 24) = 0;
    v92 = v96;
    sub_1D18457A4(v84, v96, type metadata accessor for IconTextValueStringDataHolder);
    (*(v105 + 56))(v92, 0, 1, v85);
    v76 = v92;
    v77 = v102;
    goto LABEL_28;
  }

  return sub_1D184580C(v50, type metadata accessor for StaticService);
}

unint64_t sub_1D18430E0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v18 = v6;
  if (qword_1EC6421F0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EC645100;
    v7 = *algn_1EC645108;
    v9 = qword_1EC645110;
    v10 = unk_1EC645118;
    v11 = qword_1EC645120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v9;
    *(v12 + 56) = v10;
    *(v12 + 64) = v11;

    v13 = sub_1D1828A0C(v12, 1, 0, 0, a1);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v6 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D184586C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1842604(v5, a1, &v18);
      ++v15;
      sub_1D184580C(v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v14 == v15)
      {
        v6 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D184334C(char *a1, uint64_t a2, uint64_t a3)
{
  v140 = a3;
  v144 = a1;
  v142 = sub_1D1E66A7C();
  v137 = *(v142 - 8);
  v4 = MEMORY[0x1EEE9AC00](v142);
  v136 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v122 = &v120 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v120 - v8;
  v9 = type metadata accessor for IconTextValueStringDataHolder(0);
  v138 = *(v9 - 8);
  v139 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v135 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v130 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v143 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v133 = &v120 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v126 = &v120 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v124 = &v120 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v125 = &v120 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v134 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v128 = &v120 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v127 = &v120 - v32;
  v33 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v141 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v132 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v131 = &v120 - v38;
  v39 = type metadata accessor for StaticAccessory(0);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v120 - v44;
  v46 = type metadata accessor for StaticService(0);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v50 = sub_1D1742188(), (v51 & 1) != 0))
  {
    sub_1D184586C(*(a2 + 56) + *(v40 + 72) * v50, v42, type metadata accessor for StaticAccessory);
    v52 = *&v42[*(v39 + 80)];

    sub_1D184580C(v42, type metadata accessor for StaticAccessory);
    if (*(v52 + 16))
    {
      v53 = v144;
      v54 = sub_1D1742188();
      v55 = v49;
      if (v56)
      {
        sub_1D184586C(*(v52 + 56) + *(v47 + 72) * v54, v45, type metadata accessor for StaticService);
        v57 = 0;
      }

      else
      {
        v57 = 1;
      }
    }

    else
    {
      v57 = 1;
      v55 = v49;
      v53 = v144;
    }

    v59 = v143;

    (*(v47 + 56))(v45, v57, 1, v46);
    if ((*(v47 + 48))(v45, 1, v46) != 1)
    {
      sub_1D18457A4(v45, v55, type metadata accessor for StaticService);
      v60 = StaticCharacteristic.intValue.getter();
      if (v61)
      {
        sub_1D184586C(v53, v141, type metadata accessor for StaticServiceCharacteristicDoublet);
        v62 = v137;
        v63 = v133;
        v64 = v142;
        (*(v137 + 56))(v133, 1, 1, v142);
        v65 = *(v46 + 20);
        v66 = v62;
        v67 = &v55[v65];
        v68 = *(v67 + 1);
        v143 = *v67;
        v144 = v55;
        sub_1D17783E0(v63, v59);
        v69 = *(v66 + 48);
        v70 = v69(v59, 1, v64);

        v71 = v59;
        if (v70 == 1)
        {
          v72 = v136;
          sub_1D1E66A6C();
          sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
          if (v69(v71, 1, v64) != 1)
          {
            sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
          v72 = v136;
          (*(v66 + 32))(v136, v71, v64);
        }

        v85 = v135;
        (*(v66 + 32))(v135, v72, v64);
        v86 = v139;
        v87 = (v85 + v139[5]);
        *v87 = 0xD000000000000015;
        v87[1] = 0x80000001D1EB64B0;
        v88 = (v85 + v86[6]);
        *v88 = v143;
        v88[1] = v68;
        v89 = (v85 + v86[7]);
        *v89 = 0xD000000000000015;
        v89[1] = 0x80000001D1EB64B0;
        v90 = v85 + v86[8];
        *(v90 + 8) = 0;
        *(v90 + 16) = 0;
        *v90 = 6;
        *(v90 + 24) = 0;
        v91 = v134;
        sub_1D18457A4(v85, v134, type metadata accessor for IconTextValueStringDataHolder);
        (*(v138 + 56))(v91, 0, 1, v86);
        sub_1D1B0D938(v91, v141);
        v92 = v144;
        return sub_1D184580C(v92, type metadata accessor for StaticService);
      }

      v73 = v142;
      if (v60 >= 3)
      {
        if (v60 == 3)
        {
          sub_1D184586C(v144, v131, type metadata accessor for StaticServiceCharacteristicDoublet);
          v93 = v137;
          v94 = v123;
          (*(v137 + 56))(v123, 1, 1, v73);
          v95 = *(v46 + 20);
          v96 = v94;
          v97 = &v55[v95];
          v98 = *(v97 + 1);
          v144 = *v97;
          v99 = v125;
          sub_1D17783E0(v96, v125);
          v100 = *(v93 + 48);
          v101 = v100(v99, 1, v73);

          if (v101 == 1)
          {
            v143 = v98;
            v102 = v96;
            v103 = v121;
            sub_1D1E66A6C();
            v98 = v143;
            sub_1D1741A30(v102, &qword_1EC642590, qword_1D1E71260);
            if (v100(v99, 1, v73) != 1)
            {
              sub_1D1741A30(v99, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v96, &qword_1EC642590, qword_1D1E71260);
            v103 = v121;
            (*(v93 + 32))(v121, v99, v73);
          }

          v104 = v129;
          (*(v93 + 32))(v129, v103, v73);
          v105 = v139;
          v106 = (v104 + v139[5]);
          *v106 = 0xD000000000000015;
          v106[1] = 0x80000001D1EB6120;
          v107 = (v104 + v105[6]);
          *v107 = v144;
          v107[1] = v98;
          v108 = (v104 + v105[7]);
          *v108 = 0xD000000000000015;
          v108[1] = 0x80000001D1EB6120;
          v109 = v104 + v105[8];
          *(v109 + 8) = 0;
          *(v109 + 16) = 0;
          *v109 = 5;
          *(v109 + 24) = 0;
          v110 = v127;
          sub_1D18457A4(v104, v127, type metadata accessor for IconTextValueStringDataHolder);
          (*(v138 + 56))(v110, 0, 1, v105);
          v111 = v110;
          v112 = v131;
          goto LABEL_31;
        }

        if (v60 == 4)
        {
          sub_1D184586C(v144, v132, type metadata accessor for StaticServiceCharacteristicDoublet);
          v74 = v137;
          v75 = v124;
          (*(v137 + 56))(v124, 1, 1, v73);
          v76 = *(v46 + 20);
          v77 = v75;
          v78 = &v55[v76];
          v79 = *(v78 + 1);
          v144 = *v78;
          v80 = v126;
          sub_1D17783E0(v77, v126);
          v81 = *(v74 + 48);
          v82 = v81(v80, 1, v73);

          if (v82 == 1)
          {
            v143 = v79;
            v83 = v77;
            v84 = v122;
            sub_1D1E66A6C();
            v79 = v143;
            sub_1D1741A30(v83, &qword_1EC642590, qword_1D1E71260);
            if (v81(v80, 1, v73) != 1)
            {
              sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
            }
          }

          else
          {
            sub_1D1741A30(v77, &qword_1EC642590, qword_1D1E71260);
            v84 = v122;
            (*(v74 + 32))(v122, v80, v73);
          }

          v113 = v130;
          (*(v74 + 32))(v130, v84, v73);
          v114 = v139;
          v115 = (v113 + v139[5]);
          *v115 = 0xD000000000000015;
          v115[1] = 0x80000001D1EB64B0;
          v116 = (v113 + v114[6]);
          *v116 = v144;
          v116[1] = v79;
          v117 = (v113 + v114[7]);
          *v117 = 0xD000000000000015;
          v117[1] = 0x80000001D1EB64B0;
          v118 = v113 + v114[8];
          *v118 = 0;
          *(v118 + 8) = 0;
          *(v118 + 24) = 0;
          *(v118 + 16) = 0;
          v119 = v128;
          sub_1D18457A4(v113, v128, type metadata accessor for IconTextValueStringDataHolder);
          (*(v138 + 56))(v119, 0, 1, v114);
          v111 = v119;
          v112 = v132;
LABEL_31:
          sub_1D1B0D938(v111, v112);
        }
      }

      v92 = v55;
      return sub_1D184580C(v92, type metadata accessor for StaticService);
    }
  }

  else
  {
    (*(v47 + 56))(v45, 1, 1, v46);
  }

  return sub_1D1741A30(v45, &qword_1EC6436F0, &qword_1D1E99BC0);
}

unint64_t sub_1D18440F4(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v18 = v6;
  if (qword_1EC6421F8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EC645128;
    v7 = unk_1EC645130;
    v9 = qword_1EC645138;
    v10 = unk_1EC645140;
    v11 = qword_1EC645148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D1E739C0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    *(v12 + 48) = v9;
    *(v12 + 56) = v10;
    *(v12 + 64) = v11;

    v13 = sub_1D1828A0C(v12, 1, 0, 0, a1);

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v6 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_1D184586C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D184334C(v5, a1, &v18);
      ++v15;
      sub_1D184580C(v5, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (v14 == v15)
      {
        v6 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_7:

  if (!*(v6 + 16))
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1D1844360(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for IconTextValueStringDataHolder(0);
  v54 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v44 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452E8, &unk_1D1E797E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v47 = a1;
  v48 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v49 = v22;
  v50 = 0;
  v51 = v25 & v23;
  v52 = a2;
  v53 = a3;

  v45 = a3;

  while (1)
  {
    sub_1D1ABF99C(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918(v47);
    }

    v28 = *(v27 + 48);
    sub_1D18457A4(v20, v17, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D18457A4(&v20[v28], v15, type metadata accessor for IconTextValueStringDataHolder);
    v29 = *a5;
    v31 = sub_1D171D710(v17);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173859C();
        v38 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = *(v54 + 72) * v31;
      sub_1D184586C(v38[7] + v26, v13, type metadata accessor for IconTextValueStringDataHolder);
      sub_1D184580C(v15, type metadata accessor for IconTextValueStringDataHolder);
      sub_1D184580C(v17, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1845740(v13, v38[7] + v26);
      a4 = 1;
    }

    else
    {
      sub_1D17276DC(v34, a4 & 1);
      v36 = sub_1D171D710(v17);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v31 = v36;
      v38 = *a5;
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v31 >> 6) + 8] |= 1 << v31;
      sub_1D18457A4(v17, v38[6] + *(v46 + 72) * v31, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D18457A4(v15, v38[7] + *(v54 + 72) * v31, type metadata accessor for IconTextValueStringDataHolder);
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_20;
      }

      v38[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t _s13HomeDataModel18SecuritySummarizerO23securityIssueDictionary4fromSDyAA34StaticServiceCharacteristicDoubletVAA019IconTextValueStringB6HolderVGSDy10Foundation4UUIDVAA0J9AccessoryVG_tFZ_0(uint64_t a1)
{
  v2 = sub_1D18D8F20(MEMORY[0x1E69E7CC0]);
  v3 = sub_1D183F150(a1);
  if (v3)
  {
    v4 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v4, sub_1D183D9A4, 0, isUniquelyReferenced_nonNull_native, &v19);

    v2 = v19;
  }

  v6 = sub_1D1840708(a1);
  if (v6)
  {
    v7 = v6;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v7, sub_1D183D9A4, 0, v8, &v19);

    v2 = v19;
  }

  v9 = sub_1D1842398(a1);
  if (v9)
  {
    v10 = v9;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v10, sub_1D183D9A4, 0, v11, &v19);

    v2 = v19;
  }

  v12 = sub_1D18430E0(a1);
  if (v12)
  {
    v13 = v12;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v13, sub_1D183D9A4, 0, v14, &v19);

    v2 = v19;
  }

  v15 = sub_1D18440F4(a1);
  if (v15)
  {
    v16 = v15;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v2;
    sub_1D1844360(v16, sub_1D183D9A4, 0, v17, &v19);

    return v19;
  }

  return v2;
}

unint64_t sub_1D1844998()
{
  result = qword_1EC645198;
  if (!qword_1EC645198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645198);
  }

  return result;
}

unint64_t sub_1D18449EC()
{
  result = qword_1EC6451A0;
  if (!qword_1EC6451A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451A0);
  }

  return result;
}

unint64_t sub_1D1844A40()
{
  result = qword_1EC6451A8;
  if (!qword_1EC6451A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451A8);
  }

  return result;
}

unint64_t sub_1D1844A94()
{
  result = qword_1EC6451B0;
  if (!qword_1EC6451B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451B0);
  }

  return result;
}

unint64_t sub_1D1844AE8()
{
  result = qword_1EC6451B8;
  if (!qword_1EC6451B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451B8);
  }

  return result;
}

unint64_t sub_1D1844B3C()
{
  result = qword_1EC6451C0;
  if (!qword_1EC6451C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451C0);
  }

  return result;
}

unint64_t sub_1D1844B90()
{
  result = qword_1EC6451C8;
  if (!qword_1EC6451C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451C8);
  }

  return result;
}

unint64_t sub_1D1844BE4()
{
  result = qword_1EC6451D0;
  if (!qword_1EC6451D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451D0);
  }

  return result;
}

unint64_t sub_1D1844C38()
{
  result = qword_1EC6451D8;
  if (!qword_1EC6451D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6451D8);
  }

  return result;
}

unint64_t sub_1D1844C90()
{
  result = qword_1EC645228;
  if (!qword_1EC645228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645230, &qword_1D1E78F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645228);
  }

  return result;
}

unint64_t sub_1D1844CF4()
{
  result = qword_1EC645238;
  if (!qword_1EC645238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645238);
  }

  return result;
}

unint64_t sub_1D1844DFC()
{
  result = qword_1EC645240;
  if (!qword_1EC645240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645240);
  }

  return result;
}

unint64_t sub_1D1844E54()
{
  result = qword_1EC645248;
  if (!qword_1EC645248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645248);
  }

  return result;
}

unint64_t sub_1D1844EAC()
{
  result = qword_1EC645250;
  if (!qword_1EC645250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645250);
  }

  return result;
}

unint64_t sub_1D1844F04()
{
  result = qword_1EC645258;
  if (!qword_1EC645258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645258);
  }

  return result;
}

unint64_t sub_1D1844F5C()
{
  result = qword_1EC645260;
  if (!qword_1EC645260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645260);
  }

  return result;
}

unint64_t sub_1D1844FB4()
{
  result = qword_1EC645268;
  if (!qword_1EC645268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645268);
  }

  return result;
}

unint64_t sub_1D184500C()
{
  result = qword_1EC645270;
  if (!qword_1EC645270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645270);
  }

  return result;
}

unint64_t sub_1D1845064()
{
  result = qword_1EC645278;
  if (!qword_1EC645278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645278);
  }

  return result;
}

unint64_t sub_1D18450BC()
{
  result = qword_1EC645280;
  if (!qword_1EC645280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645280);
  }

  return result;
}

unint64_t sub_1D1845114()
{
  result = qword_1EC645288;
  if (!qword_1EC645288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645288);
  }

  return result;
}

unint64_t sub_1D184516C()
{
  result = qword_1EC645290;
  if (!qword_1EC645290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645290);
  }

  return result;
}

unint64_t sub_1D18451C4()
{
  result = qword_1EC645298;
  if (!qword_1EC645298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645298);
  }

  return result;
}

unint64_t sub_1D184521C()
{
  result = qword_1EC6452A0;
  if (!qword_1EC6452A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452A0);
  }

  return result;
}

unint64_t sub_1D1845274()
{
  result = qword_1EC6452A8;
  if (!qword_1EC6452A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452A8);
  }

  return result;
}

unint64_t sub_1D18452CC()
{
  result = qword_1EC6452B0;
  if (!qword_1EC6452B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452B0);
  }

  return result;
}

unint64_t sub_1D1845324()
{
  result = qword_1EC6452B8;
  if (!qword_1EC6452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452B8);
  }

  return result;
}

unint64_t sub_1D184537C()
{
  result = qword_1EC6452C0;
  if (!qword_1EC6452C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452C0);
  }

  return result;
}

unint64_t sub_1D18453D4()
{
  result = qword_1EC6452C8;
  if (!qword_1EC6452C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452C8);
  }

  return result;
}

unint64_t sub_1D184542C()
{
  result = qword_1EC6452D0;
  if (!qword_1EC6452D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6452D0);
  }

  return result;
}

uint64_t sub_1D1845480(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001D1EBA9F0 == a2;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617261476E65706FLL && a2 == 0xEE00726F6F446567 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6F446E65706FLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xEC000000726F6F44 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E69576E65706FLL && a2 == 0xEA0000000000776FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EBAA10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F707365726E6F6ELL && a2 == 0xED0000657669736ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1845740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18457A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D184580C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D184586C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *_s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v4 + 24);
    v9 = &v6[v8 + *(type metadata accessor for StaticCharacteristic(0) + 24)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    v19 = xmmword_1D1E739C0;
    while (1)
    {
      sub_1D1845D30(v10, v6);
      if (v9[16] == 7)
      {
        v13 = *v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
        inited = swift_initStackObject();
        *(inited + 16) = v19;
        *(inited + 32) = v13;
        v15 = *(v12 + 2);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v17 = *(v12 + 3) >> 1, v17 <= v15))
        {
          result = sub_1D177D4E8(result, v15 + 1, 1, v12);
          v12 = result;
          v17 = *(result + 3) >> 1;
        }

        v18 = *(v12 + 2);
        if (v17 <= v18)
        {
          __break(1u);
          return result;
        }

        *&v12[8 * v18 + 32] = *(inited + 32);

        ++*(v12 + 2);
      }

      sub_1D1757BF8(v6);
      v10 += v11;
      if (!--v7)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _s13HomeDataModel17ValueAccumulatorsO9intValues4fromSaySiGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v4 + 24);
  v9 = &v6[v8 + *(type metadata accessor for StaticCharacteristic(0) + 24)];
  v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v11 = *(v3 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  v20 = xmmword_1D1E739C0;
  while (1)
  {
    result = sub_1D1845D30(v10, v6);
    v16 = *v9;
    v17 = v9[16];
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        if (v16 < 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 != 6 && v17 != 5)
        {
          goto LABEL_6;
        }

        v16 = v16;
      }
    }

    else
    {
      switch(v17)
      {
        case 1u:
          v16 = *v9;
          break;
        case 2u:
          v16 = *v9;
          break;
        case 3u:
          v16 = v16;
          break;
        default:
          goto LABEL_6;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
    inited = swift_initStackObject();
    *(inited + 16) = v20;
    *(inited + 32) = v16;
    v19 = *(v12 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v14 = *(v12 + 24) >> 1, v14 <= v19))
    {
      result = sub_1D177D8E4(result, v19 + 1, 1, v12);
      v12 = result;
      v14 = *(result + 24) >> 1;
    }

    v15 = *(v12 + 16);
    if (v14 <= v15)
    {
      break;
    }

    *(v12 + 8 * v15 + 32) = *(inited + 32);

    ++*(v12 + 16);
LABEL_6:
    sub_1D1757BF8(v6);
    v10 += v11;
    if (!--v7)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D1845D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D1845D94()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_AlarmConnectionProvider__alarmManagerServiceConnection;
  v2 = *&v0[OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_AlarmConnectionProvider__alarmManagerServiceConnection];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6997438] options:4096];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846464;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_22;
    v6 = _Block_copy(&v11);

    [v4 setInterruptionHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846498;
    v16 = v7;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_26;
    v8 = _Block_copy(&v11);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v9 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;
  }

  objc_sync_exit(v0);
  return v3;
}

uint64_t sub_1D1845F94(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1D1846088()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_TimerConnectionProvider__timerManagerServiceConnection;
  v2 = *&v0[OBJC_IVAR____TtC13HomeDataModelP33_06687A056795A35B04F0AB8E8B09184924_TimerConnectionProvider__timerManagerServiceConnection];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6997458] options:4096];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846428;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_5;
    v6 = _Block_copy(&v11);

    [v4 setInterruptionHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_1D1846494;
    v16 = v7;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D1845F94;
    v14 = &block_descriptor_16_0;
    v8 = _Block_copy(&v11);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v9 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;
  }

  objc_sync_exit(v0);
  return v3;
}

void sub_1D1846288(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

id sub_1D184634C(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  *&a1[*a3] = 0;
  v5.receiver = a1;
  v5.super_class = (a4)(0, a2);
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D18463B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoordinationSnapshot.multipleUpdatesNeeded(for:)(unint64_t a1)
{
  v3 = *v1;
  if (!*(v3 + 16))
  {
    return 2;
  }

  v5 = sub_1D1742188();
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  v7 = *(v3 + 56) + 32 * v5;
  v8 = *(v7 + 16);
  if (v8 != 4)
  {
    sub_1D1741C70(*(v7 + 16));
    sub_1D1757B18(v8);
    sub_1D1757B18(4);
    return 2;
  }

  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *(v7 + 24);

  sub_1D1741C70(4);
  sub_1D1741C70(v11);
  sub_1D1757B18(4);
  sub_1D1757B18(4);
  if (v11 != 4)
  {
    sub_1D1741C70(v11);
    sub_1D1757B18(v11);
    sub_1D1757B18(4);

    sub_1D1757B18(4);
    sub_1D1757B18(v11);
    return 2;
  }

  sub_1D1757B18(4);
  sub_1D1757B18(4);
  if (qword_1EE07B1D8 != -1)
  {
    goto LABEL_86;
  }

LABEL_6:
  v12 = qword_1EE07B1E0;
  v13 = sub_1D187845C(a1);
  v14 = v13;
  if (v13 >> 62)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_8;
    }

LABEL_88:

    sub_1D1757B18(4);
    sub_1D1757B18(4);

    return 2;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_88;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D3891EF0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v19 = sub_1D1E6873C();
      goto LABEL_14;
    }

    v15 = *(v14 + 32);
  }

  v2 = v15;

  v16 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v17 = *(v12 + v16);
  v59 = v2;
  if (!v17)
  {
    v20 = 0;
    goto LABEL_52;
  }

  v54 = v16;
  v55 = v12;
  v56 = a1;
  v18 = [v17 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v12 = sub_1D1E67C1C();

  v61 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
    goto LABEL_94;
  }

  v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v20 = MEMORY[0x1E69E7CC0];
  v57 = v10;
  v58 = v9;
  if (v19)
  {
    v21 = 0;
    v60 = (v12 & 0xC000000000000001);
    v2 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v60)
      {
        v22 = MEMORY[0x1D3891EF0](v21, v12);
      }

      else
      {
        if (v21 >= *(v2 + 16))
        {
          goto LABEL_83;
        }

        v22 = *(v12 + 8 * v21 + 32);
      }

      v9 = v22;
      a1 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        swift_once();
        goto LABEL_6;
      }

      v10 = v19;
      v23 = v12;
      v24 = [v22 category];
      v25 = [v24 categoryType];

      v26 = sub_1D1E6781C();
      v28 = v27;

      if (v26 == 0xD000000000000024 && 0x80000001D1EBB040 == v28)
      {
        break;
      }

      v30 = sub_1D1E6904C();

      v19 = v10;
      if (v30)
      {
        goto LABEL_30;
      }

LABEL_18:
      v12 = v23;
      ++v21;
      if (a1 == v19)
      {
        v31 = v61;
        v10 = v57;
        v9 = v58;
        v2 = v59;
        v20 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }
    }

    v19 = v10;
LABEL_30:
    sub_1D1E6896C();
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    goto LABEL_18;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v61 = v20;
  if (v31 < 0 || (v31 & 0x4000000000000000) != 0)
  {
    a1 = sub_1D1E6873C();
    if (a1)
    {
LABEL_39:
      v32 = 0;
      v2 = v31 & 0xC000000000000001;
      v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      while (1)
      {
        if (v2)
        {
          v33 = MEMORY[0x1D3891EF0](v32, v31);
        }

        else
        {
          if (v32 >= *(v31 + 16))
          {
            goto LABEL_85;
          }

          v33 = *(v31 + 8 * v32 + 32);
        }

        v9 = v33;
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_84;
        }

        v35 = [v33 softwareVersion];
        if (v35 && (v36 = v35, v37 = [v35 majorVersion], v36, v37 < 18))
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v32;
        if (v34 == a1)
        {
          v20 = v61;
          v10 = v57;
          v9 = v58;
          v2 = v59;
          break;
        }
      }
    }
  }

  else
  {
    a1 = *(v31 + 16);
    if (a1)
    {
      goto LABEL_39;
    }
  }

  v12 = v55;
  a1 = v56;
  v16 = v54;
LABEL_52:
  v38 = [v2 siriEndpointProfile];
  if (v38)
  {

    if (v20)
    {
      if (v20 >> 62)
      {
        v39 = sub_1D1E6873C();
      }

      else
      {
        v39 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D1757B18(4);
      sub_1D1757B18(4);

      if (v39 > 1)
      {
        return 1;
      }
    }

    else
    {

      sub_1D1757B18(4);
      sub_1D1757B18(4);
    }

    return 0;
  }

  else
  {

    v41 = *(v12 + v16);
    if (v41)
    {
      v42 = [v41 mediaSystems];
      sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
      v43 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v44);
      v53[2] = a1;
      v45 = sub_1D174A6C4(sub_1D1855E08, v53, v43);

      v60 = v45;
      if (v45)
      {
        v57 = v10;
        v58 = v9;
        v46 = [v60 components];
        sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
        v2 = sub_1D1E67C1C();

        if (v2 >> 62)
        {
          v10 = sub_1D1E6873C();
        }

        else
        {
          v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = 0;
        v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        while (1)
        {
          if (v10 == a1)
          {

            sub_1D1757B18(4);
            sub_1D1757B18(4);
            return 1;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x1D3891EF0](a1, v2);
          }

          else
          {
            if (a1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_93;
            }

            v47 = *(v2 + 8 * a1 + 32);
          }

          v48 = v47;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_92;
          }

          v49 = [v47 mediaProfile];
          if (!v49)
          {
            break;
          }

          v50 = v49;
          v9 = [v49 accessory];

          if (!v9)
          {
            break;
          }

          v51 = [v9 softwareVersion];

          if (!v51)
          {
            break;
          }

          v52 = [v51 majorVersion];

          ++a1;
          if (v52 >= 18)
          {

            v48 = v60;
            goto LABEL_80;
          }
        }

LABEL_80:
      }

      else
      {
      }
    }

    else
    {
    }

    sub_1D1757B18(4);
    sub_1D1757B18(4);
    return 0;
  }
}

uint64_t sub_1D1846D5C(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D1846E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &qword_1EC645548;
  v23 = &unk_1D1E79AE0;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + v24);
    v31 = v57;
    sub_1D186155C(*(v52 + 56) + *(v58 + 72) * v24, v57, type metadata accessor for StaticCharacteristic);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_1D18614F4(v31, &v12[v33], type metadata accessor for StaticCharacteristic);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_1D1741A90(v12, v15, &qword_1EC645540, &unk_1D1E96BA0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_1D18614F4(&v15[v37], v27, type metadata accessor for StaticCharacteristic);
    v39 = v53;
    v40 = sub_1D171D140(v38);
    if ((v41 & 1) == 0)
    {
      sub_1D18615C4(v27, type metadata accessor for StaticCharacteristic);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_1D186155C(v43, v57, type metadata accessor for StaticCharacteristic);
    v55 = _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_1D18615C4(v49, type metadata accessor for StaticCharacteristic);
    result = sub_1D18615C4(v27, type metadata accessor for StaticCharacteristic);
    v20 = v56;
    if (!v55)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1847318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    sub_1D171D15C(*(*(v2 + 48) + 2 * v11));
    if (v13)
    {

      v15 = sub_1D1847450(v14, v12);

      if (v15)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1847450(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 8 * v12);
    v14 = *v13;
    v15 = *(v13 + 4);
    v16 = *(v3 + 56) + 16 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1D1741AF8(*v16, *(v16 + 8));
    v19 = v18 == 255;
    if (v18 == 255)
    {
      return v19;
    }

    v20 = sub_1D171D1A4(v14 | (v15 << 32));
    if ((v21 & 1) == 0)
    {
      goto LABEL_68;
    }

    v22 = *(a2 + 56) + 16 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    if (v24 <= 1)
    {
      v28 = *v22;
      if (*(v22 + 8))
      {
        sub_1D1757AE8(v28, 1u);
        if (v18 != 1)
        {
          goto LABEL_68;
        }

        v29 = v17;
        v30 = 1;
LABEL_36:
        result = sub_1D1757AE8(v29, v30);
        v7 = v36;
        if (v23 != v17)
        {
          return v19;
        }
      }

      else
      {
        sub_1D1757AE8(v28, 0);
        if (v18)
        {
          goto LABEL_68;
        }

        result = sub_1D1757AE8(v17, 0);
        v7 = v36;
        if ((v23 ^ v17))
        {
          return v19;
        }
      }
    }

    else
    {
      if (v24 == 2)
      {
        sub_1D1757AE8(*v22, 2u);
        if (v18 != 2)
        {
          goto LABEL_68;
        }

        v29 = v17;
        v30 = 2;
        goto LABEL_36;
      }

      if (v24 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_64;
        }

        v25 = *(v23 + 16);
        if (v25 != *(v17 + 16))
        {

          LOBYTE(v18) = 3;
          goto LABEL_67;
        }

        if (v25)
        {
          if (v23 != v17)
          {
            v32 = (v23 + 32);
            v33 = (v17 + 32);
            while (*v32 == *v33)
            {
              ++v32;
              ++v33;
              if (!--v25)
              {
                sub_1D1741AF8(v23, 3u);
                v26 = v23;
                v27 = 3;
                goto LABEL_41;
              }
            }

            LOBYTE(v18) = 3;
            sub_1D1741AF8(v23, 3u);
            goto LABEL_67;
          }

          v26 = v17;
          v27 = 3;
        }

        else
        {

          v27 = 3;
        }
      }

      else
      {
        if (v18 != 4)
        {
LABEL_64:

LABEL_67:
          sub_1D1757AE8(v23, v24);
LABEL_68:
          sub_1D1757AE8(v17, v18);
          return 0;
        }

        v31 = *(v23 + 16);
        if (v31 != *(v17 + 16))
        {

          LOBYTE(v18) = 4;
          goto LABEL_67;
        }

        if (v31)
        {
          if (v23 != v17)
          {
            v34 = (v17 + 52);
            v35 = (v23 + 52);
            while (*(v35 - 5) == *(v34 - 5) && *(v35 - 16) == *(v34 - 16))
            {
              if (*(v35 - 8))
              {
                if ((*(v34 - 8) & 1) == 0)
                {
                  break;
                }
              }

              else if ((*(v34 - 8) & 1) != 0 || *(v35 - 3) != *(v34 - 3))
              {
                break;
              }

              if (*v35)
              {
                if ((*v34 & 1) == 0)
                {
                  break;
                }
              }

              else if ((*v34 & 1) != 0 || *(v35 - 1) != *(v34 - 1))
              {
                break;
              }

              v34 += 24;
              v35 += 24;
              if (!--v31)
              {
                sub_1D1741AF8(v23, 4u);
                v26 = v23;
                goto LABEL_40;
              }
            }

            LOBYTE(v18) = 4;
            sub_1D1741AF8(v23, 4u);
            goto LABEL_67;
          }

          v26 = v17;
        }

        else
        {
        }

LABEL_40:
        v27 = 4;
      }

LABEL_41:
      sub_1D1757AE8(v26, v27);
      result = sub_1D1757AE8(v17, v24);
      v7 = v36;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}