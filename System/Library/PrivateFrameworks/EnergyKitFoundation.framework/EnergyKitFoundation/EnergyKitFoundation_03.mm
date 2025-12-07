uint64_t IntervalBlockPayload.Commodity.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.Commodity.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D2030314@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.Commodity.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D2030380()
{
  v2 = qword_1EC6BEEF8;
  if (!qword_1EC6BEEF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030434()
{
  v2 = qword_1EC6BEF00;
  if (!qword_1EC6BEF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.Unit.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.Unit.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.Unit.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D2030724@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.Unit.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D2030790()
{
  v2 = qword_1EC6BEF08;
  if (!qword_1EC6BEF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030844()
{
  v2 = qword_1EC6BEF10;
  if (!qword_1EC6BEF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.IntervalReading.qualities.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t IntervalBlockPayload.IntervalReading.qualities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t IntervalBlockPayload.IntervalReading.start.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for IntervalBlockPayload.IntervalReading(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 28)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D2030C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for IntervalBlockPayload.IntervalReading(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D203B684(v3, &v5 - v8);
  IntervalBlockPayload.IntervalReading.start.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D203B978(v14);
}

uint64_t sub_1D2030DD0(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return IntervalBlockPayload.IntervalReading.start.setter(v7);
}

uint64_t IntervalBlockPayload.IntervalReading.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 28)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*IntervalBlockPayload.IntervalReading.start.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 862);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 862);
  v8 = __swift_coroFrameAllocStub(v5, 862);
  v6[4] = v8;
  IntervalBlockPayload.IntervalReading.start.getter(v8);
  return sub_1D2031108;
}

void sub_1D2031108(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    IntervalBlockPayload.IntervalReading.start.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    IntervalBlockPayload.IntervalReading.start.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL IntervalBlockPayload.IntervalReading.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.IntervalReading.clearStart()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 28)));
}

uint64_t IntervalBlockPayload.IntervalReading.end.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for IntervalBlockPayload.IntervalReading(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 32)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D20315E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for IntervalBlockPayload.IntervalReading(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D203B684(v3, &v5 - v8);
  IntervalBlockPayload.IntervalReading.end.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D203B978(v14);
}

uint64_t sub_1D203171C(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return IntervalBlockPayload.IntervalReading.end.setter(v7);
}

uint64_t IntervalBlockPayload.IntervalReading.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 32)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*IntervalBlockPayload.IntervalReading.end.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 25839);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 25839);
  v8 = __swift_coroFrameAllocStub(v5, 25839);
  v6[4] = v8;
  IntervalBlockPayload.IntervalReading.end.getter(v8);
  return sub_1D2031A54;
}

void sub_1D2031A54(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    IntervalBlockPayload.IntervalReading.end.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    IntervalBlockPayload.IntervalReading.end.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL IntervalBlockPayload.IntervalReading.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D1FD5F1C((v0 + *(v2 + 32)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.IntervalReading.clearEnd()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 32)));
}

uint64_t IntervalBlockPayload.IntervalReading.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockPayload.IntervalReading(0) + 24);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockPayload.IntervalReading.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for IntervalBlockPayload.IntervalReading(v8);
  (*(v10 + 40))(v1 + *(v4 + 24), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.rawValue.getter()
{
  v3 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  switch(v3)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D20321D0@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.IntervalReading.Quality.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D203223C()
{
  v2 = qword_1EC6BEF18;
  if (!qword_1EC6BEF18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20322F0()
{
  v2 = qword_1EC6BEF20;
  if (!qword_1EC6BEF20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF20);
    return WitnessTable;
  }

  return v2;
}

char *IntervalBlockPayload.IntervalReading.init()@<X0>(char *a1@<X8>)
{
  v13 = a1;
  v14 = 0;
  v5 = 0;
  v7 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  v4 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v3 - v4;
  v14 = &v3 - v4;
  *v12 = 0;
  *(v12 + 1) = sub_1D208CB2C();
  sub_1D208C20C();
  v6 = *(v7 + 28);
  v9 = sub_1D208C1EC();
  v1 = *(v9 - 8);
  v11 = *(v1 + 56);
  v10 = v1 + 56;
  v8 = 1;
  v11(&v12[v6], 1);
  (v11)(&v12[*(v7 + 32)], v8, v8, v9);
  return sub_1D2032564(v12, v13);
}

char *sub_1D2032564(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  v8 = v10[6];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[7];
  v13 = sub_1D208C1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(&a1[v11], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v11], &a1[v11], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(&a2[v11], 0, 1, v13);
  }

  __dst = &a2[v10[8]];
  __src = &a1[v10[8]];
  if (v15())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1D2032888(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 28)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D203298C(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 32)));
  return sub_1D1FD6044(v8);
}

uint64_t IntervalBlockPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = 0;
  v19 = 0;
  v21 = type metadata accessor for IntervalBlockPayload(0);
  v18 = (*(*(v21 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v17 - v18);
  v28 = &v17 - v18;
  v1 = sub_1D208C51C();
  v2 = v26;
  *v26 = v1;
  v2[1] = v3;
  v4 = sub_1D208C51C();
  v5 = v26;
  v26[2] = v4;
  v5[3] = v6;
  v7 = sub_1D208C51C();
  v8 = v26;
  v26[4] = v7;
  v8[5] = v9;
  v10 = sub_1D208C51C();
  v11 = v26;
  v12 = v10;
  v13 = v19;
  v26[6] = v12;
  v11[7] = v14;
  v11[8] = 0;
  v22 = 1;
  *(v11 + 72) = 1;
  v11[10] = 0;
  *(v11 + 88) = 1;
  v11[12] = 0;
  *(v11 + 104) = 1;
  type metadata accessor for IntervalBlockPayload.IntervalReading(v13);
  v26[14] = sub_1D208CB2C();
  sub_1D208C20C();
  v20 = v21[13];
  v23 = sub_1D208C1EC();
  v15 = *(v23 - 8);
  v25 = *(v15 + 56);
  v24 = v15 + 56;
  v25(v26 + v20, v22);
  (v25)(v26 + v21[14], v22, v22, v23);
  (v25)(v26 + v21[15], v22, v22, v23);
  return sub_1D2032C4C(v26, v27);
}

uint64_t sub_1D2032C4C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  v13 = type metadata accessor for IntervalBlockPayload(0);
  v11 = v13[12];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v11, a1 + v11);
  v14 = v13[13];
  v16 = sub_1D208C1EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v14), (a1 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  __dst = (a2 + v13[14]);
  __src = (a1 + v13[14]);
  if (v18())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(__dst, __src, v16);
    (*(v17 + 56))(__dst, 0, 1, v16);
  }

  v7 = (a2 + v13[15]);
  v8 = (a1 + v13[15]);
  if (v18())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(v7, v8, v16);
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  return a2;
}

uint64_t sub_1D20330B0(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 52)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20331B4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 56)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20332B8(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 60)));
  return sub_1D1FD6044(v8);
}

void sub_1D203337C()
{
  sub_1D208CB2C();
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 32) = 2;
  *(v0 + 40) = 1;
  *(v0 + 48) = 3;
  *(v0 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C3388 = v1;
}

uint64_t *sub_1D2033418()
{
  if (qword_1EC6C3380 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3388;
}

uint64_t static IntervalBlockPayload.FlowDirection.allCases.getter()
{
  v1 = sub_1D2033418();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.FlowDirection.allCases.setter(uint64_t a1)
{
  v2 = sub_1D2033418();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.FlowDirection.allCases.modify())(uint64_t a1)
{
  sub_1D2033418();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20335A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.FlowDirection.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1D20335D4()
{
  sub_1D208CB2C();
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C3398 = v1;
}

uint64_t *sub_1D2033648()
{
  if (qword_1EC6C3390 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3398;
}

uint64_t static IntervalBlockPayload.Commodity.allCases.getter()
{
  v1 = sub_1D2033648();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.Commodity.allCases.setter(uint64_t a1)
{
  v2 = sub_1D2033648();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.Commodity.allCases.modify())(uint64_t a1)
{
  sub_1D2033648();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20337D8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.Commodity.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1D2033804()
{
  sub_1D208CB2C();
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C33A8 = v1;
}

uint64_t *sub_1D2033878()
{
  if (qword_1EC6C33A0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33A8;
}

uint64_t static IntervalBlockPayload.Unit.allCases.getter()
{
  v1 = sub_1D2033878();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.Unit.allCases.setter(uint64_t a1)
{
  v2 = sub_1D2033878();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.Unit.allCases.modify())(uint64_t a1)
{
  sub_1D2033878();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D2033A08@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.Unit.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1D2033A34()
{
  sub_1D208CB2C();
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 32) = 2;
  *(v0 + 40) = 1;
  *(v0 + 48) = 3;
  *(v0 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C33B8 = v1;
}

uint64_t *sub_1D2033AD0()
{
  if (qword_1EC6C33B0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33B8;
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality.allCases.getter()
{
  v1 = sub_1D2033AD0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality.allCases.setter(uint64_t a1)
{
  v2 = sub_1D2033AD0();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.IntervalReading.Quality.allCases.modify())(uint64_t a1)
{
  sub_1D2033AD0();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D2033C60@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.IntervalReading.Quality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D2033C8C()
{
  result = sub_1D208C64C();
  qword_1EC6C33C8 = result;
  qword_1EC6C33D0 = v1;
  return result;
}

uint64_t *sub_1D2033CD0()
{
  if (qword_1EC6C33C0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33C8;
}

uint64_t static IntervalBlockPayload.protoMessageName.getter()
{
  v1 = *sub_1D2033CD0();

  return v1;
}

uint64_t sub_1D2033D6C()
{
  v32 = sub_1D208C47C();
  __swift_allocate_value_buffer(v32, qword_1EC6C33E0);
  __swift_project_value_buffer(v32, qword_1EC6C33E0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v36 = v0;
  v1 = *(v38 + 48);
  *v0 = 1;
  v34 = v0 + v1;
  *v34 = "utilityID";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v33 = *MEMORY[0x1E69AADC8];
  v37 = *(*(sub_1D208C45C() - 8) + 104);
  (v37)(v34, v33);
  v35 = *(*(v38 - 8) + 72);
  v2 = *(v38 + 48);
  *(v36 + v35) = 2;
  v3 = v36 + v35 + v2;
  *v3 = "subscriptionID";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v37();
  v4 = *(v38 + 48);
  v5 = (v36 + 2 * v35);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "usagePointID";
  *(v6 + 1) = 12;
  v6[16] = 2;
  v37();
  v7 = *(v38 + 48);
  v8 = (v36 + 3 * v35);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "meterID";
  *(v9 + 1) = 7;
  v9[16] = 2;
  v37();
  v10 = *(v38 + 48);
  v11 = (v36 + 4 * v35);
  *v11 = 5;
  v12 = v11 + v10;
  *v12 = "sourceTime";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v37();
  v13 = *(v38 + 48);
  v14 = (v36 + 5 * v35);
  *v14 = 6;
  v15 = v14 + v13;
  *v15 = "start";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v37();
  v16 = *(v38 + 48);
  v17 = (v36 + 6 * v35);
  *v17 = 7;
  v18 = v17 + v16;
  *v18 = "end";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v37();
  v19 = *(v38 + 48);
  v20 = (v36 + 7 * v35);
  *v20 = 8;
  v21 = v20 + v19;
  *v21 = "unit";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v37();
  v22 = *(v38 + 48);
  v23 = &v36[v35];
  *v23 = 9;
  v24 = v23 + v22;
  *v24 = "commodity";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v37();
  v25 = *(v38 + 48);
  v26 = (v36 + 9 * v35);
  *v26 = 10;
  v27 = v26 + v25;
  *v27 = "flowDirection";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v37();
  v28 = *(v38 + 48);
  v29 = (v36 + 10 * v35);
  *v29 = 11;
  v30 = v29 + v28;
  *v30 = "readings";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v37();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2034344()
{
  if (qword_1EC6C33D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C33E0);
}

uint64_t static IntervalBlockPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2034344();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D1FDAE60(a1, v8);
        break;
      case 3:
        sub_1D1FDAEE4(a1, v8);
        break;
      case 4:
        sub_1D1FFF628(a1, v8);
        break;
      case 5:
        sub_1D20348F0(a1, v8, a2, a3);
        break;
      case 6:
        sub_1D20349B8(a1, v8, a2, a3);
        break;
      case 7:
        sub_1D2034A80(a1, v8, a2, a3);
        break;
      case 8:
        sub_1D2034B48(a1, v8, a2, a3);
        break;
      case 9:
        sub_1D2034BF0(a1, v8, a2, a3);
        break;
      case 10:
        sub_1D2034C98(a1, v8, a2, a3);
        break;
      case 11:
        sub_1D2034D40(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D20348F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D20349B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2034A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2034D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D2036578();
  return sub_1D208C32C();
}

uint64_t IntervalBlockPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v106 = a2;
  v107 = a3;
  v139 = 0;
  v138 = 0;
  v140 = a2;
  v111 = sub_1D208C21C();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v115 = v30 - v114;
  v139 = v4;
  v138 = v3;
  v116 = *v3;
  v117 = v3[1];

  v118 = sub_1D208C66C();

  if (v118)
  {
    v101 = v109;
  }

  else
  {
    v5 = v109;
    v102 = *v108;
    v103 = v108[1];

    sub_1D208C41C();
    v104 = v5;
    v105 = v5;
    if (v5)
    {
      v34 = v105;

      v35 = v34;
      return result;
    }

    v101 = v104;
  }

  v97 = v101;
  v98 = v108[2];
  v99 = v108[3];

  v100 = sub_1D208C66C();

  if (v100)
  {
    v92 = v97;
  }

  else
  {
    v6 = v97;
    v93 = v108[2];
    v94 = v108[3];

    sub_1D208C41C();
    v95 = v6;
    v96 = v6;
    if (v6)
    {
      v33 = v96;

      v35 = v33;
      return result;
    }

    v92 = v95;
  }

  v88 = v92;
  v89 = v108[4];
  v90 = v108[5];

  v91 = sub_1D208C66C();

  if (v91)
  {
    v83 = v88;
  }

  else
  {
    v7 = v88;
    v84 = v108[4];
    v85 = v108[5];

    sub_1D208C41C();
    v86 = v7;
    v87 = v7;
    if (v7)
    {
      v32 = v87;

      v35 = v32;
      return result;
    }

    v83 = v86;
  }

  v79 = v83;
  v80 = v108[6];
  v81 = v108[7];

  v82 = sub_1D208C66C();

  if (v82)
  {
    v74 = v79;
  }

  else
  {
    v8 = v79;
    v75 = v108[6];
    v76 = v108[7];

    sub_1D208C41C();
    v77 = v8;
    v78 = v8;
    if (v8)
    {
      v31 = v78;

      v35 = v31;
      return result;
    }

    v74 = v77;
  }

  v9 = v74;
  result = sub_1D2035BB4(v108, v110, v106, v107);
  v72 = v9;
  v73 = v9;
  if (v9)
  {
    v35 = v73;
    return result;
  }

  sub_1D2035E4C(v108, v110, v106, v107);
  v70 = 0;
  v71 = 0;
  sub_1D20360E4(v108, v110, v106, v107);
  v68 = 0;
  v69 = 0;
  v11 = v108[8];
  v12 = *(v108 + 72);
  v67 = &v136;
  v136 = v11;
  v137 = v12 & 1;
  v66 = &v134;
  v134 = 0;
  v135 = 1;
  sub_1D203637C();
  if (sub_1D208C59C())
  {
    v62 = v68;
  }

  else
  {
    v13 = v108[8];
    v14 = *(v108 + 72);
    v63 = &v119;
    v119 = v13;
    v120 = v14 & 1;
    sub_1D2030844();
    v15 = v68;
    result = sub_1D208C3CC();
    v64 = v15;
    v65 = v15;
    if (v15)
    {
      v35 = v65;
      return result;
    }

    v62 = 0;
  }

  v59 = v62;
  v16 = v108[10];
  v17 = *(v108 + 88);
  v61 = &v132;
  v132 = v16;
  v133 = v17 & 1;
  v60 = &v130;
  v130 = 0;
  v131 = 1;
  sub_1D20363F8();
  if (sub_1D208C59C())
  {
    v55 = v59;
  }

  else
  {
    v18 = v108[10];
    v19 = *(v108 + 88);
    v56 = &v121;
    v121 = v18;
    v122 = v19 & 1;
    sub_1D2030434();
    v20 = v59;
    result = sub_1D208C3CC();
    v57 = v20;
    v58 = v20;
    if (v20)
    {
      v35 = v58;
      return result;
    }

    v55 = 0;
  }

  v52 = v55;
  v21 = v108[12];
  v22 = *(v108 + 104);
  v54 = &v128;
  v128 = v21;
  v129 = v22 & 1;
  v53 = &v126;
  v126 = 0;
  v127 = 1;
  sub_1D2036474();
  if (sub_1D208C59C())
  {
    v48 = v52;
  }

  else
  {
    v23 = v108[12];
    v24 = *(v108 + 104);
    v49 = &v123;
    v123 = v23;
    v124 = v24 & 1;
    sub_1D2030024();
    v25 = v52;
    result = sub_1D208C3CC();
    v50 = v25;
    v51 = v25;
    if (v25)
    {
      v35 = v51;
      return result;
    }

    v48 = 0;
  }

  v44 = v48;
  v46 = v108[14];

  v125 = v46;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEF40, &unk_1D208FE50);
  sub_1D20364F0();
  v47 = sub_1D208C82C();

  if (v47)
  {
    v39 = v44;
  }

  else
  {
    v41 = v108[14];

    v40 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
    sub_1D2036578();
    v26 = v44;
    sub_1D208C43C();
    v42 = v26;
    v43 = v26;
    if (v26)
    {
      v30[2] = v43;
    }

    v39 = v42;
  }

  v27 = v115;
  v36 = v39;
  v28 = type metadata accessor for IntervalBlockPayload(0);
  (*(v112 + 16))(v27, v108 + *(v28 + 48), v111);
  v29 = v36;
  sub_1D208C1FC();
  v37 = v29;
  v38 = v29;
  if (v29)
  {
    v30[1] = v38;
  }

  return (*(v112 + 8))(v115, v111);
}

uint64_t sub_1D2035BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 52)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

uint64_t sub_1D2035E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 56)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

uint64_t sub_1D20360E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 60)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

unint64_t sub_1D203637C()
{
  v2 = qword_1EC6BEF28;
  if (!qword_1EC6BEF28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20363F8()
{
  v2 = qword_1EC6BEF30;
  if (!qword_1EC6BEF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2036474()
{
  v2 = qword_1EC6BEF38;
  if (!qword_1EC6BEF38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20364F0()
{
  v2 = qword_1EC6BEF48;
  if (!qword_1EC6BEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEF40, &unk_1D208FE50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2036578()
{
  v2 = qword_1EC6BEF50;
  if (!qword_1EC6BEF50)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF50);
    return WitnessTable;
  }

  return v2;
}

BOOL static IntervalBlockPayload.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v123 = a1;
  v145 = a2;
  v178 = 0;
  v177 = 0;
  v103 = 0;
  v104 = sub_1D208C21C();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (v105[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v108 = &v41 - v107;
  v109 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v41 - v109;
  v111 = sub_1D208C1EC();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v41 - v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v41 - v117;
  v119 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v41 - v119;
  v121 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v41 - v121;
  v124 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v41 - v125;
  v127 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v41 - v127;
  v129 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v41 - v129;
  v131 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v41 - v131;
  v133 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v41 - v133;
  v135 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v41 - v135;
  v137 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v41 - v137;
  v139 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v41 - v139;
  v141 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v41 - v141;
  v178 = v24;
  v177 = v25;
  v143 = *v24;
  v144 = v24[1];

  v149 = &v175;
  v175 = v143;
  v176 = v144;
  v146 = *v145;
  v147 = v145[1];

  v148 = v174;
  v174[0] = v146;
  v174[1] = v147;
  v150 = MEMORY[0x1D38948D0](v175, v176, v146, v147);
  sub_1D1FE023C(v148);
  sub_1D1FE023C(v149);
  if ((v150 & 1) == 0)
  {
    return 0;
  }

  v95 = *(v123 + 16);
  v96 = *(v123 + 24);

  v100 = &v172;
  v172 = v95;
  v173 = v96;
  v97 = v145[2];
  v98 = v145[3];

  v99 = v171;
  v171[0] = v97;
  v171[1] = v98;
  v101 = MEMORY[0x1D38948D0](v172, v173, v97, v98);
  sub_1D1FE023C(v99);
  sub_1D1FE023C(v100);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

  v88 = *(v123 + 32);
  v89 = *(v123 + 40);

  v93 = &v169;
  v169 = v88;
  v170 = v89;
  v90 = v145[4];
  v91 = v145[5];

  v92 = v168;
  v168[0] = v90;
  v168[1] = v91;
  v94 = MEMORY[0x1D38948D0](v169, v170, v90, v91);
  sub_1D1FE023C(v92);
  sub_1D1FE023C(v93);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v81 = *(v123 + 48);
  v82 = *(v123 + 56);

  v86 = &v166;
  v166 = v81;
  v167 = v82;
  v83 = v145[6];
  v84 = v145[7];

  v85 = v165;
  v165[0] = v83;
  v165[1] = v84;
  v87 = MEMORY[0x1D38948D0](v166, v167, v83, v84);
  sub_1D1FE023C(v85);
  sub_1D1FE023C(v86);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v77 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD5F1C((v123 + v77[13]), v142);
  sub_1D1FD5F1C(v145 + v77[13], v140);
  v78 = &v122[*(v116 + 48)];
  sub_1D1FD5F1C(v142, v122);
  sub_1D1FD5F1C(v140, v78);
  v79 = *(v112 + 48);
  v80 = v112 + 48;
  if (v79(v122, 1, v111) == 1)
  {
    if (v79(v78, 1, v111) == 1)
    {
      sub_1D1FD6044(v122);
      v76 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D1FD5F1C(v122, v138);
    if (v79(v78, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v78, v111);
      sub_1D1FE0494();
      v75 = sub_1D208C59C();
      v74 = *(v112 + 8);
      v73 = v112 + 8;
      v74(v115, v111);
      v74(v138, v111);
      sub_1D1FD6044(v122);
      v76 = v75;
      goto LABEL_15;
    }

    (*(v112 + 8))(v138, v111);
  }

  sub_1D1FE0268(v122);
  v76 = 0;
LABEL_15:
  v72 = v76;
  sub_1D1FD6044(v140);
  sub_1D1FD6044(v142);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[14]), v136);
  sub_1D1FD5F1C(v145 + v77[14], v134);
  v71 = &v120[*(v116 + 48)];
  sub_1D1FD5F1C(v136, v120);
  sub_1D1FD5F1C(v134, v71);
  if (v79(v120, 1, v111) == 1)
  {
    if (v79(v71, 1, v111) == 1)
    {
      sub_1D1FD6044(v120);
      v70 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D1FD5F1C(v120, v132);
    if (v79(v71, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v71, v111);
      sub_1D1FE0494();
      v69 = sub_1D208C59C();
      v68 = *(v112 + 8);
      v67 = v112 + 8;
      v68(v115, v111);
      v68(v132, v111);
      sub_1D1FD6044(v120);
      v70 = v69;
      goto LABEL_26;
    }

    (*(v112 + 8))(v132, v111);
  }

  sub_1D1FE0268(v120);
  v70 = 0;
LABEL_26:
  v66 = v70;
  sub_1D1FD6044(v134);
  sub_1D1FD6044(v136);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[15]), v130);
  sub_1D1FD5F1C(v145 + v77[15], v128);
  v65 = &v118[*(v116 + 48)];
  sub_1D1FD5F1C(v130, v118);
  sub_1D1FD5F1C(v128, v65);
  if (v79(v118, 1, v111) == 1)
  {
    if (v79(v65, 1, v111) == 1)
    {
      sub_1D1FD6044(v118);
      v64 = 1;
      goto LABEL_37;
    }
  }

  else
  {
    sub_1D1FD5F1C(v118, v126);
    if (v79(v65, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v65, v111);
      sub_1D1FE0494();
      v63 = sub_1D208C59C();
      v62 = *(v112 + 8);
      v61 = v112 + 8;
      v62(v115, v111);
      v62(v126, v111);
      sub_1D1FD6044(v118);
      v64 = v63;
      goto LABEL_37;
    }

    (*(v112 + 8))(v126, v111);
  }

  sub_1D1FE0268(v118);
  v64 = 0;
LABEL_37:
  v60 = v64;
  sub_1D1FD6044(v128);
  sub_1D1FD6044(v130);
  if (v60)
  {
    v26 = *(v123 + 64);
    v27 = *(v123 + 72);
    v59 = &v163;
    v163 = v26;
    v164 = v27 & 1;
    v28 = v145[8];
    v29 = *(v145 + 72);
    v58 = &v161;
    v161 = v28;
    v162 = v29 & 1;
    sub_1D203637C();
    v30 = sub_1D208C59C();
    if (v30)
    {
      v31 = *(v123 + 80);
      v32 = *(v123 + 88);
      v57 = &v159;
      v159 = v31;
      v160 = v32 & 1;
      v33 = v145[10];
      v34 = *(v145 + 88);
      v56 = &v157;
      v157 = v33;
      v158 = v34 & 1;
      sub_1D20363F8();
      if (sub_1D208C59C())
      {
        v35 = *(v123 + 96);
        v36 = *(v123 + 104);
        v55 = &v155;
        v155 = v35;
        v156 = v36 & 1;
        v37 = v145[12];
        v38 = *(v145 + 104);
        v54 = &v153;
        v153 = v37;
        v154 = v38 & 1;
        sub_1D2036474();
        if (sub_1D208C59C())
        {
          v46 = *(v123 + 112);

          v52 = &v152;
          v152 = v46;
          v47 = v145[14];

          v51 = &v151;
          v151 = v47;
          v50 = v152;
          v48 = v47;
          v49 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
          sub_1D203A5AC();
          v53 = sub_1D208C7BC();
          sub_1D1FD3C38(v51);
          sub_1D1FD3C38(v52);
          if (v53)
          {
            v39 = v123 + v77[12];
            v42 = v105[2];
            v41 = v105 + 2;
            v42(v110, v39, v104);
            v42(v108, v145 + v77[12], v104);
            sub_1D1FE0414();
            v45 = sub_1D208C59C();
            v44 = v105[1];
            v43 = v105 + 1;
            v44(v108, v104);
            v44(v110, v104);
            return (v45 & 1) != 0;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockPayload.hashValue.getter()
{
  type metadata accessor for IntervalBlockPayload(0);
  sub_1D203A62C();
  return sub_1D208C9DC();
}

void (*sub_1D2037764(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 45869);
  *a1 = v2;
  v2[4] = IntervalBlockPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2037954()
{
  v11 = sub_1D208C47C();
  __swift_allocate_value_buffer(v11, qword_1EC6C3400);
  __swift_project_value_buffer(v11, qword_1EC6C3400);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v15 = v0;
  v1 = *(v17 + 48);
  *v0 = 0;
  v13 = v0 + v1;
  *v13 = "FLOW_DIRECTION_UNSPECIFIED";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v13, v12);
  v14 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v15 + v14) = 1;
  v3 = v15 + v14 + v2;
  *v3 = "DELIVERED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v16();
  v4 = *(v17 + 48);
  v5 = (v15 + 2 * v14);
  *v5 = 2;
  v6 = v5 + v4;
  *v6 = "REVERSE";
  *(v6 + 1) = 7;
  v6[16] = 2;
  v16();
  v7 = *(v17 + 48);
  v8 = (v15 + 3 * v14);
  *v8 = 3;
  v9 = v8 + v7;
  *v9 = "NET";
  *(v9 + 1) = 3;
  v9[16] = 2;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2037BE4()
{
  if (qword_1EC6C33F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3400);
}

uint64_t static IntervalBlockPayload.FlowDirection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2037BE4();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2037CCC()
{
  v6 = sub_1D208C47C();
  __swift_allocate_value_buffer(v6, qword_1EC6C3420);
  __swift_project_value_buffer(v6, qword_1EC6C3420);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v9 = v0;
  v1 = *(v11 + 48);
  *v0 = 0;
  v8 = v0 + v1;
  *v8 = "COMMODITY_UNSPECIFIED";
  *(v8 + 1) = 21;
  v8[16] = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v10 = *(*(sub_1D208C45C() - 8) + 104);
  (v10)(v8, v7);
  v2 = *(v11 + 48);
  v3 = (v9 + *(*(v11 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "ELECTRIC";
  *(v4 + 1) = 8;
  v4[16] = 2;
  v10();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2037E80()
{
  if (qword_1EC6C3418 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3420);
}

uint64_t static IntervalBlockPayload.Commodity._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2037E80();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2037F68()
{
  v6 = sub_1D208C47C();
  __swift_allocate_value_buffer(v6, qword_1EC6C3440);
  __swift_project_value_buffer(v6, qword_1EC6C3440);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v9 = v0;
  v1 = *(v11 + 48);
  *v0 = 0;
  v8 = v0 + v1;
  *v8 = "UNIT_UNSPECIFIED";
  *(v8 + 1) = 16;
  v8[16] = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v10 = *(*(sub_1D208C45C() - 8) + 104);
  (v10)(v8, v7);
  v2 = *(v11 + 48);
  v3 = (v9 + *(*(v11 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "KWH";
  *(v4 + 1) = 3;
  v4[16] = 2;
  v10();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D203811C()
{
  if (qword_1EC6C3438 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3440);
}

uint64_t static IntervalBlockPayload.Unit._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D203811C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2038204()
{
  v0 = sub_1D2033CD0();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C3460 = v6;
  qword_1EC6C3468 = v7;
  return result;
}

uint64_t *sub_1D20382A4()
{
  if (qword_1EC6C3458 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3460;
}

uint64_t static IntervalBlockPayload.IntervalReading.protoMessageName.getter()
{
  v1 = *sub_1D20382A4();

  return v1;
}

uint64_t sub_1D2038340()
{
  v11 = sub_1D208C47C();
  __swift_allocate_value_buffer(v11, qword_1EC6C3478);
  __swift_project_value_buffer(v11, qword_1EC6C3478);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v15 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v13 = v0 + v1;
  *v13 = "value";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v13, v12);
  v14 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v15 + v14) = 2;
  v3 = v15 + v14 + v2;
  *v3 = "qualities";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v16();
  v4 = *(v17 + 48);
  v5 = (v15 + 2 * v14);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "start";
  *(v6 + 1) = 5;
  v6[16] = 2;
  v16();
  v7 = *(v17 + 48);
  v8 = (v15 + 3 * v14);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "end";
  *(v9 + 1) = 3;
  v9[16] = 2;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20385EC()
{
  if (qword_1EC6C3470 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3478);
}

uint64_t static IntervalBlockPayload.IntervalReading._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20385EC();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockPayload.IntervalReading.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8(a1, v8);
        break;
      case 2:
        sub_1D2038914(a1, v8, a2, a3);
        break;
      case 3:
        sub_1D20389BC(a1, v8, a2, a3);
        break;
      case 4:
        sub_1D2038A84(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D20389BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2038A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t IntervalBlockPayload.IntervalReading.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v29 = a2;
  v30 = a3;
  v41 = 0;
  v40 = 0;
  v42 = a2;
  v34 = sub_1D208C21C();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v38 = v12 - v37;
  v41 = v4;
  v40 = v3;
  if (*v3 == 0.0)
  {
    v26 = v32;
  }

  else
  {
    v5 = v32;
    result = sub_1D208C40C();
    v27 = v5;
    v28 = v5;
    if (v5)
    {
      v12[3] = v28;
      return result;
    }

    v26 = 0;
  }

  v22 = v26;
  v24 = *(v31 + 8);

  v39 = v24;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEF78, &qword_1D208FE60);
  sub_1D203A7AC();
  v25 = sub_1D208C82C();

  if (v25)
  {
    v18 = v22;
  }

  else
  {
    v19 = *(v31 + 8);

    sub_1D20322F0();
    v7 = v22;
    sub_1D208C3AC();
    v20 = v7;
    v21 = v7;
    if (v7)
    {
      v12[2] = v21;
    }

    v18 = v20;
  }

  v8 = v18;
  result = sub_1D2038F18(v31, v33, v29, v30);
  v16 = v8;
  v17 = v8;
  if (!v8)
  {
    sub_1D20391B0(v31, v33, v29, v30);
    v14 = 0;
    v15 = 0;
    v9 = v38;
    v10 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
    (*(v35 + 16))(v9, v31 + *(v10 + 24), v34);
    v11 = v14;
    sub_1D208C1FC();
    v12[4] = v11;
    v13 = v11;
    if (v11)
    {
      v12[1] = v13;
    }

    return (*(v35 + 8))(v38, v34);
  }

  return result;
}

uint64_t sub_1D2038F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for IntervalBlockPayload.IntervalReading(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 28)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

uint64_t sub_1D20391B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for IntervalBlockPayload.IntervalReading(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 32)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

BOOL static IntervalBlockPayload.IntervalReading.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v66 = a2;
  v83 = 0;
  v82 = 0;
  v48 = 0;
  v49 = sub_1D208C21C();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (v50[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v20 - v52;
  v54 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v20 - v54;
  v56 = sub_1D208C1EC();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v20 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v20 - v62;
  v64 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v20 - v64;
  v68 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v20 - v68;
  v70 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v20 - v70;
  v72 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v20 - v72;
  v74 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v20 - v74;
  v76 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v20 - v76;
  v78 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v20 - v78;
  v83 = v16;
  v82 = v17;
  if (*v16 != *v17)
  {
    return 0;
  }

  v40 = *(v67 + 8);

  v45 = &v81;
  v81 = v40;
  v41 = *(v66 + 8);

  v44 = &v80;
  v80 = v41;
  v43 = v81;
  v42 = v41;
  sub_1D203A834();
  v46 = sub_1D208C7BC();
  sub_1D1FD3C38(v44);
  sub_1D1FD3C38(v45);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D1FD5F1C((v67 + v36[7]), v79);
  sub_1D1FD5F1C((v66 + v36[7]), v77);
  v37 = &v65[*(v61 + 48)];
  sub_1D1FD5F1C(v79, v65);
  sub_1D1FD5F1C(v77, v37);
  v38 = *(v57 + 48);
  v39 = v57 + 48;
  if (v38(v65, 1, v56) == 1)
  {
    if (v38(v37, 1, v56) == 1)
    {
      sub_1D1FD6044(v65);
      v35 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1D1FD5F1C(v65, v75);
    if (v38(v37, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v37, v56);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v57 + 8);
      v32 = v57 + 8;
      v33(v60, v56);
      v33(v75, v56);
      sub_1D1FD6044(v65);
      v35 = v34;
      goto LABEL_11;
    }

    (*(v57 + 8))(v75, v56);
  }

  sub_1D1FE0268(v65);
  v35 = 0;
LABEL_11:
  v31 = v35;
  sub_1D1FD6044(v77);
  sub_1D1FD6044(v79);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v67 + v36[8]), v73);
  sub_1D1FD5F1C((v66 + v36[8]), v71);
  v30 = &v63[*(v61 + 48)];
  sub_1D1FD5F1C(v73, v63);
  sub_1D1FD5F1C(v71, v30);
  if (v38(v63, 1, v56) == 1)
  {
    if (v38(v30, 1, v56) == 1)
    {
      sub_1D1FD6044(v63);
      v29 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    sub_1D1FD5F1C(v63, v69);
    if (v38(v30, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v30, v56);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v57 + 8);
      v26 = v57 + 8;
      v27(v60, v56);
      v27(v69, v56);
      sub_1D1FD6044(v63);
      v29 = v28;
      goto LABEL_22;
    }

    (*(v57 + 8))(v69, v56);
  }

  sub_1D1FE0268(v63);
  v29 = 0;
LABEL_22:
  v25 = v29;
  sub_1D1FD6044(v71);
  sub_1D1FD6044(v73);
  if (v25)
  {
    v18 = v67 + v36[6];
    v21 = v50[2];
    v20 = v50 + 2;
    v21(v55, v18, v49);
    v21(v53, v66 + v36[6], v49);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v50[1];
    v22 = v50 + 1;
    v23(v53, v49);
    v23(v55, v49);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockPayload.IntervalReading.hashValue.getter()
{
  type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  sub_1D203A8B0();
  return sub_1D208C9DC();
}

void (*sub_1D203A040(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 29203);
  *a1 = v2;
  v2[4] = IntervalBlockPayload.IntervalReading.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D203A230()
{
  v11 = sub_1D208C47C();
  __swift_allocate_value_buffer(v11, qword_1EC6C3498);
  __swift_project_value_buffer(v11, qword_1EC6C3498);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v15 = v0;
  v1 = *(v17 + 48);
  *v0 = 0;
  v13 = v0 + v1;
  *v13 = "QUALITY_UNSPECIFIED";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v13, v12);
  v14 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v15 + v14) = 1;
  v3 = v15 + v14 + v2;
  *v3 = "ESTIMATED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v16();
  v4 = *(v17 + 48);
  v5 = (v15 + 2 * v14);
  *v5 = 2;
  v6 = v5 + v4;
  *v6 = "VALIDATED";
  *(v6 + 1) = 9;
  v6[16] = 2;
  v16();
  v7 = *(v17 + 48);
  v8 = (v15 + 3 * v14);
  *v8 = 3;
  v9 = v8 + v7;
  *v9 = "RAW";
  *(v9 + 1) = 3;
  v9[16] = 2;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D203A4C4()
{
  if (qword_1EC6C3490 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3498);
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D203A4C4();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1D203A5AC()
{
  v2 = qword_1EC6BEF58;
  if (!qword_1EC6BEF58)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A62C()
{
  v2 = qword_1EC6BEF60;
  if (!qword_1EC6BEF60)
  {
    type metadata accessor for IntervalBlockPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A6AC()
{
  v2 = qword_1EC6BEF68;
  if (!qword_1EC6BEF68)
  {
    type metadata accessor for IntervalBlockPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A72C()
{
  v2 = qword_1EC6BEF70;
  if (!qword_1EC6BEF70)
  {
    type metadata accessor for IntervalBlockPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A7AC()
{
  v2 = qword_1EC6BEF80;
  if (!qword_1EC6BEF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEF78, &qword_1D208FE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A834()
{
  v2 = qword_1EC6BEF88;
  if (!qword_1EC6BEF88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A8B0()
{
  v2 = qword_1EC6BEF90;
  if (!qword_1EC6BEF90)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A930()
{
  v2 = qword_1EC6BEF98;
  if (!qword_1EC6BEF98)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A9C8()
{
  v2 = qword_1EC6BEFA0;
  if (!qword_1EC6BEFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AA8C()
{
  v2 = qword_1EC6BEFA8;
  if (!qword_1EC6BEFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AB50()
{
  v2 = qword_1EC6BEFB0;
  if (!qword_1EC6BEFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AC14()
{
  v2 = qword_1EC6BEFB8;
  if (!qword_1EC6BEFB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203ACD8()
{
  v2 = qword_1EC6BEFC0;
  if (!qword_1EC6BEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFC8, &qword_1D2090208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AD78()
{
  v2 = qword_1EC6BEFD0;
  if (!qword_1EC6BEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFD8, &qword_1D2090248);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AE18()
{
  v2 = qword_1EC6BEFE0;
  if (!qword_1EC6BEFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFE8, &qword_1D2090288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AED0()
{
  v2 = qword_1EC6BEFF0;
  if (!qword_1EC6BEFF0)
  {
    type metadata accessor for IntervalBlockPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AF98()
{
  v2 = qword_1EC6BEFF8;
  if (!qword_1EC6BEFF8)
  {
    type metadata accessor for IntervalBlockPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203B030()
{
  v2 = qword_1EC6BF000;
  if (!qword_1EC6BF000)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203B170(uint64_t a1)
{
  v5 = sub_1D203B2FC(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1D208C21C();
    if (v2 <= 0x3F)
    {
      v5 = sub_1D1FE0FAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1D203B2FC(uint64_t a1)
{
  v5 = qword_1EC6BF008;
  if (!qword_1EC6BF008)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading(255);
    v4 = sub_1D208C7AC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF008);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D203B424(uint64_t a1)
{
  v5 = sub_1D203B544(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1D208C21C();
    if (v2 <= 0x3F)
    {
      v5 = sub_1D1FE0FAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1D203B544(uint64_t a1)
{
  v5 = qword_1EC6BF010;
  if (!qword_1EC6BF010)
  {
    v4 = sub_1D208C7AC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF010);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D203B608()
{
  v2 = qword_1EC6C4750[0];
  if (!qword_1EC6C4750[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C4750);
    return WitnessTable;
  }

  return v2;
}

char *sub_1D203B684(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  v9 = v11[6];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[7];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(&a1[v12], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v12], &a1[v12], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(&a2[v12], 0, 1, v14);
  }

  __dst = &a2[v11[8]];
  __src = &a1[v11[8]];
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_1D203B978(uint64_t a1)
{

  v5 = type metadata accessor for IntervalBlockPayload.IntervalReading(0);
  v4 = v5[6];
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v4);
  v6 = v5[7];
  v8 = sub_1D208C1EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  v3 = a1 + v5[8];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  return a1;
}

uint64_t sub_1D203BB14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v11 = *(a1 + 8);

  *(a2 + 8) = v11;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(a1 + 24);

  *(a2 + 24) = v12;
  *(a2 + 32) = *(a1 + 32);
  v13 = *(a1 + 40);

  *(a2 + 40) = v13;
  *(a2 + 48) = *(a1 + 48);
  v14 = *(a1 + 56);

  *(a2 + 56) = v14;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  v15 = *(a1 + 112);

  *(a2 + 112) = v15;
  v18 = type metadata accessor for IntervalBlockPayload(0);
  v16 = v18[12];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2 + v16, a1 + v16);
  v19 = v18[13];
  v21 = sub_1D208C1EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if ((v23)(a1 + v19, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v19), (a1 + v19), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))();
    (*(v22 + 56))(a2 + v19, 0, 1, v21);
  }

  __dst = (a2 + v18[14]);
  __src = (a1 + v18[14]);
  if (v23())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(__dst, __src, v21);
    (*(v22 + 56))(__dst, 0, 1, v21);
  }

  v7 = (a2 + v18[15]);
  v8 = (a1 + v18[15]);
  if (v23())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(v7, v8, v21);
    (*(v22 + 56))(v7, 0, 1, v21);
  }

  return a2;
}

char *sub_1D203BFB8(char *a1)
{

  v6 = type metadata accessor for IntervalBlockPayload(0);
  v5 = v6[12];
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(&a1[v5]);
  v7 = v6[13];
  v9 = sub_1D208C1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(&a1[v7], 1))
  {
    (*(v10 + 8))(&a1[v7], v9);
  }

  v4 = &a1[v6[14]];
  if (!v11())
  {
    (*(v10 + 8))(v4, v9);
  }

  v3 = &a1[v6[15]];
  if (!v11())
  {
    (*(v10 + 8))(v3, v9);
  }

  return a1;
}

uint64_t InsightRecordPayload.start.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v17 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v4 - v5;
  v17 = v1;
  v9 = 0;
  v8 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v6 = (v8 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v7 = &v16;
  swift_beginAccess();
  sub_1D1FD5F1C(v6, v10);
  swift_endAccess();

  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v4, v10, v11);
  }

  sub_1D208C1DC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t type metadata accessor for InsightRecordPayload(uint64_t a1)
{
  v2 = qword_1EC6C5840;
  if (!qword_1EC6C5840)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1D203C42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D204D580(v3, &v5 - v8);
  InsightRecordPayload.start.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D204D61C(v14);
}

uint64_t sub_1D203C568(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return InsightRecordPayload.start.setter(v7);
}

uint64_t InsightRecordPayload.start.setter(uint64_t a1)
{
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v6 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v11 = &v6 - v7;
  v19 = v4;
  v18 = v1;
  v12 = sub_1D203C804();
  v16 = sub_1D208C1EC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  (*(v13 + 16))(v11, v15);
  (*(v13 + 56))(v11, 0, 1, v16);
  sub_1D1FD5F1C(v11, v8);
  v9 = (v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v10 = &v17;
  swift_beginAccess();
  sub_1D1FD6448(v8, v9);
  swift_endAccess();
  sub_1D1FD6044(v11);

  return (*(v13 + 8))(v15, v16);
}

uint64_t sub_1D203C804()
{
  v4 = type metadata accessor for InsightRecordPayload(0);
  type metadata accessor for InsightRecordPayload._StorageClass(0);
  if ((sub_1D208CADC() & 1) == 0)
  {
    v2 = *(v3 + *(v4 + 20));

    *(v3 + *(v4 + 20)) = sub_1D20427F0(v2);
  }

  v1 = *(v3 + *(v4 + 20));

  return v1;
}

uint64_t type metadata accessor for InsightRecordPayload._StorageClass(uint64_t a1)
{
  v2 = qword_1EC6C5880;
  if (!qword_1EC6C5880)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t (*InsightRecordPayload.start.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 19928);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 19928);
  v8 = __swift_coroFrameAllocStub(v5, 19928);
  v6[4] = v8;
  InsightRecordPayload.start.getter(v8);
  return sub_1D203CA6C;
}

void sub_1D203CA6C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    InsightRecordPayload.start.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    InsightRecordPayload.start.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL InsightRecordPayload.hasStart.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearStart()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t InsightRecordPayload.end.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v17 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v4 - v5;
  v17 = v1;
  v9 = 0;
  v8 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v6 = (v8 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v7 = &v16;
  swift_beginAccess();
  sub_1D1FD5F1C(v6, v10);
  swift_endAccess();

  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v4, v10, v11);
  }

  sub_1D208C1DC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D203CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D204D580(v3, &v5 - v8);
  InsightRecordPayload.end.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D204D61C(v14);
}

uint64_t sub_1D203D130(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return InsightRecordPayload.end.setter(v7);
}

uint64_t InsightRecordPayload.end.setter(uint64_t a1)
{
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v6 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v11 = &v6 - v7;
  v19 = v4;
  v18 = v1;
  v12 = sub_1D203C804();
  v16 = sub_1D208C1EC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  (*(v13 + 16))(v11, v15);
  (*(v13 + 56))(v11, 0, 1, v16);
  sub_1D1FD5F1C(v11, v8);
  v9 = (v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v10 = &v17;
  swift_beginAccess();
  sub_1D1FD6448(v8, v9);
  swift_endAccess();
  sub_1D1FD6044(v11);

  return (*(v13 + 8))(v15, v16);
}

uint64_t (*InsightRecordPayload.end.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 872);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 872);
  v8 = __swift_coroFrameAllocStub(v5, 872);
  v6[4] = v8;
  InsightRecordPayload.end.getter(v8);
  return sub_1D203D4E4;
}

void sub_1D203D4E4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    InsightRecordPayload.end.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    InsightRecordPayload.end.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL InsightRecordPayload.hasEnd.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearEnd()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

double InsightRecordPayload.totalEnergy.getter()
{
  v3 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4;
}

uint64_t sub_1D203D930@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for InsightRecordPayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D204D580(v2, &v6 - v7);
  v3 = InsightRecordPayload.totalEnergy.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D204D61C(v4);
}

uint64_t InsightRecordPayload.totalEnergy.setter(double a1)
{
  v2 = (sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.totalEnergy.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = InsightRecordPayload.totalEnergy.getter();
  return sub_1D203DAD8;
}

double InsightRecordPayload.totalRuntime.getter()
{
  v3 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4;
}

uint64_t sub_1D203DBBC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for InsightRecordPayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D204D580(v2, &v6 - v7);
  v3 = InsightRecordPayload.totalRuntime.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D204D61C(v4);
}

uint64_t InsightRecordPayload.totalRuntime.setter(double a1)
{
  v2 = (sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.totalRuntime.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = InsightRecordPayload.totalRuntime.getter();
  return sub_1D203DD64;
}

char *InsightRecordPayload.byPeaks.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v8 = &v15;
  swift_beginAccess();
  sub_1D204283C(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.TariffPeakStats(v10);
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2042AF0(v11, v5);
  }

  InsightRecordPayload.TariffPeakStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D2042A34(v11);
  }

  return result;
}

uint64_t sub_1D203DF54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v5[1] = 0;
  v6 = (*(*(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v5 - v6;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v5 - v8;
  sub_1D204D580(v3, v5 - v8);
  InsightRecordPayload.byPeaks.getter(v9);
  sub_1D2042AF0(v9, v10);
  return sub_1D204D61C(v11);
}

uint64_t sub_1D203E05C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2042BB4(v1, &v3 - v5);
  return InsightRecordPayload.byPeaks.setter(v6);
}

uint64_t InsightRecordPayload.byPeaks.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2042BB4(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D204283C(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v12 = &v16;
  swift_beginAccess();
  sub_1D2042C78(v10, v11);
  swift_endAccess();
  sub_1D2042A34(v13);

  return sub_1D2042F30(v15);
}

char *InsightRecordPayload.TariffPeakStats.init()@<X0>(char *a1@<X8>)
{
  v6 = a1;
  v7 = 0;
  v1 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v2 = &v4 - v4;
  v5 = v2;
  v7 = &v4 - v4;
  *v2 = -1.0;
  *(v2 + 1) = -1.0;
  *(v2 + 2) = -1.0;
  *(v2 + 3) = -1.0;
  *(v2 + 4) = -1.0;
  *(v2 + 5) = -1.0;
  sub_1D208C20C();
  return sub_1D2042AF0(v5, v6);
}

void (*InsightRecordPayload.byPeaks.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 31227);
  v5 = __swift_coroFrameAllocStub(v3, 31227);
  a1[2] = v5;
  InsightRecordPayload.byPeaks.getter(v5);
  return sub_1D203E3E8;
}

void sub_1D203E3E8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D2042BB4(v2, v3);
    InsightRecordPayload.byPeaks.setter(v3);
    sub_1D2042F30(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    InsightRecordPayload.byPeaks.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL InsightRecordPayload.hasByPeaks.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v9 = &v13;
  swift_beginAccess();
  sub_1D204283C(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.TariffPeakStats(v11);
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D2042A34(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearByPeaks()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D204283C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v9 = &v12;
  swift_beginAccess();
  sub_1D2042C78(v7, v8);
  swift_endAccess();
  sub_1D2042A34(v10);
}

char *InsightRecordPayload.byGridCleanliness.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v8 = &v15;
  swift_beginAccess();
  sub_1D2042FAC(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(v10);
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2043250(v11, v5);
  }

  InsightRecordPayload.GridCleanlinessStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D2043194(v11);
  }

  return result;
}

uint64_t sub_1D203E8F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v5[1] = 0;
  v6 = (*(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v5 - v6;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v5 - v8;
  sub_1D204D580(v3, v5 - v8);
  InsightRecordPayload.byGridCleanliness.getter(v9);
  sub_1D2043250(v9, v10);
  return sub_1D204D61C(v11);
}

uint64_t sub_1D203EA00(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2043304(v1, &v3 - v5);
  return InsightRecordPayload.byGridCleanliness.setter(v6);
}

uint64_t InsightRecordPayload.byGridCleanliness.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2043304(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D2042FAC(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v12 = &v16;
  swift_beginAccess();
  sub_1D20433B8(v10, v11);
  swift_endAccess();
  sub_1D2043194(v13);

  return sub_1D2043650(v15);
}

char *InsightRecordPayload.GridCleanlinessStats.init()@<X0>(char *a1@<X8>)
{
  v6 = a1;
  v7 = 0;
  v1 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v2 = &v4 - v4;
  v5 = v2;
  v7 = &v4 - v4;
  *v2 = -1.0;
  *(v2 + 1) = -1.0;
  *(v2 + 2) = -1.0;
  *(v2 + 3) = -1.0;
  sub_1D208C20C();
  return sub_1D2043250(v5, v6);
}

void (*InsightRecordPayload.byGridCleanliness.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 10114);
  v5 = __swift_coroFrameAllocStub(v3, 10114);
  a1[2] = v5;
  InsightRecordPayload.byGridCleanliness.getter(v5);
  return sub_1D203ED84;
}

void sub_1D203ED84(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D2043304(v2, v3);
    InsightRecordPayload.byGridCleanliness.setter(v3);
    sub_1D2043650(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    InsightRecordPayload.byGridCleanliness.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL InsightRecordPayload.hasByGridCleanliness.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v9 = &v13;
  swift_beginAccess();
  sub_1D2042FAC(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(v11);
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D2043194(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearByGridCleanliness()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D2042FAC(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v9 = &v12;
  swift_beginAccess();
  sub_1D20433B8(v7, v8);
  swift_endAccess();
  sub_1D2043194(v10);
}

char *InsightRecordPayload.weather.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v8 = &v15;
  swift_beginAccess();
  sub_1D20436CC(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.WeatherStats(v10);
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2043970(v11, v5);
  }

  InsightRecordPayload.WeatherStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D20438B4(v11);
  }

  return result;
}

uint64_t sub_1D203F294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v5[1] = 0;
  v6 = (*(*(type metadata accessor for InsightRecordPayload.WeatherStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = v5 - v6;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v5 - v8;
  sub_1D204D580(v3, v5 - v8);
  InsightRecordPayload.weather.getter(v9);
  sub_1D2043970(v9, v10);
  return sub_1D204D61C(v11);
}

uint64_t sub_1D203F39C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.WeatherStats(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2043A24(v1, &v3 - v5);
  return InsightRecordPayload.weather.setter(v6);
}

uint64_t InsightRecordPayload.weather.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2043A24(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D20436CC(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v12 = &v16;
  swift_beginAccess();
  sub_1D2043AD8(v10, v11);
  swift_endAccess();
  sub_1D20438B4(v13);

  return sub_1D2043D70(v15);
}

char *InsightRecordPayload.WeatherStats.init()@<X0>(char *a1@<X8>)
{
  v6 = a1;
  v7 = 0;
  v1 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v2 = &v4 - v4;
  v5 = v2;
  v7 = &v4 - v4;
  *v2 = -1.0;
  *(v2 + 1) = -1.0;
  *(v2 + 2) = -1.0;
  *(v2 + 3) = -1.0;
  sub_1D208C20C();
  return sub_1D2043970(v5, v6);
}

void (*InsightRecordPayload.weather.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.WeatherStats(0) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 58853);
  v5 = __swift_coroFrameAllocStub(v3, 58853);
  a1[2] = v5;
  InsightRecordPayload.weather.getter(v5);
  return sub_1D203F720;
}

void sub_1D203F720(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D2043A24(v2, v3);
    InsightRecordPayload.weather.setter(v3);
    sub_1D2043D70(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    InsightRecordPayload.weather.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL InsightRecordPayload.hasWeather.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v9 = &v13;
  swift_beginAccess();
  sub_1D20436CC(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.WeatherStats(v11);
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D20438B4(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearWeather()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D20436CC(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v9 = &v12;
  swift_beginAccess();
  sub_1D2043AD8(v7, v8);
  swift_endAccess();
  sub_1D20438B4(v10);
}

uint64_t InsightRecordPayload.grouping.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v3 = (v7 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
}

uint64_t sub_1D203FB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v7 = a1;
  v8 = (*(*(type metadata accessor for InsightRecordPayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v7 - v8;
  sub_1D204D580(v2, &v7 - v8);
  InsightRecordPayload.grouping.getter(&v11);
  v3 = v9;
  v4 = v10;
  v5 = v12;
  *v9 = v11;
  *(v3 + 8) = v5 & 1;
  return sub_1D204D61C(v4);
}

uint64_t sub_1D203FC04(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1 & 1;
  return InsightRecordPayload.grouping.setter(&v3);
}

uint64_t InsightRecordPayload.grouping.setter(uint64_t *a1)
{
  v4 = a1[1] & 1;
  v2 = *a1;
  v3 = sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  swift_beginAccess();
  *v3 = v2;
  *(v3 + 8) = v4;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.grouping.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  InsightRecordPayload.grouping.getter(a1);
  return sub_1D203FD8C;
}

uint64_t sub_1D203FD8C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v2 & 1;
    return InsightRecordPayload.grouping.setter(&v4);
  }

  else
  {
    v6 = *a1;
    v7 = v2 & 1;
    return InsightRecordPayload.grouping.setter(&v6);
  }
}

uint64_t InsightRecordPayload.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t InsightRecordPayload.Grouping.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t InsightRecordPayload.Grouping.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t InsightRecordPayload.Grouping.rawValue.getter()
{
  v3 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  if (!v3)
  {
    return 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1D204020C@<X0>(uint64_t *a1@<X8>)
{
  result = InsightRecordPayload.Grouping.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t InsightRecordPayload.TariffPeakStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) + 40);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.TariffPeakStats.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for InsightRecordPayload.TariffPeakStats(v8);
  (*(v10 + 40))(v1 + *(v4 + 40), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) + 32);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(v8);
  (*(v10 + 40))(v1 + *(v4 + 32), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t InsightRecordPayload.WeatherStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats(0) + 32);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.WeatherStats.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for InsightRecordPayload.WeatherStats(v8);
  (*(v10 + 40))(v1 + *(v4 + 32), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t InsightRecordPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = 0;
  v6 = type metadata accessor for InsightRecordPayload(0);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v4 - v5;
  v11 = &v4 - v5;
  sub_1D208C20C();
  v8 = *(v6 + 20);
  v9 = *sub_1D20410A0();

  v1 = v7;
  v2 = v10;
  *&v7[v8] = v9;
  return sub_1D2043EE4(v1, v2);
}

uint64_t sub_1D2041070()
{
  v1 = *sub_1D20410A0();

  return v1;
}

uint64_t *sub_1D20410A0()
{
  if (qword_1EC6C4828 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4830;
}

uint64_t sub_1D2041100()
{
  v2 = *(v0 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  return v2;
}

uint64_t sub_1D2041144(uint64_t a1)
{

  *(v1 + *(type metadata accessor for InsightRecordPayload(0) + 20)) = a1;
}

void sub_1D20411A4()
{
  sub_1D208CB2C();
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 32) = 2;
  *(v0 + 40) = 1;
  sub_1D1FCECE8();
  qword_1EC6C47E8 = v1;
}

uint64_t *sub_1D204122C()
{
  if (qword_1EC6C47E0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C47E8;
}

uint64_t static InsightRecordPayload.Grouping.allCases.getter()
{
  v1 = sub_1D204122C();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static InsightRecordPayload.Grouping.allCases.setter(uint64_t a1)
{
  v2 = sub_1D204122C();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static InsightRecordPayload.Grouping.allCases.modify())(uint64_t a1)
{
  sub_1D204122C();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20413BC@<X0>(uint64_t *a1@<X8>)
{
  result = static InsightRecordPayload.Grouping.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D20413E8()
{
  result = sub_1D208C64C();
  qword_1EC6C47F8 = result;
  qword_1EC6C4800 = v1;
  return result;
}

uint64_t *sub_1D204142C()
{
  if (qword_1EC6C47F0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C47F8;
}

uint64_t static InsightRecordPayload.protoMessageName.getter()
{
  v1 = *sub_1D204142C();

  return v1;
}

uint64_t sub_1D20414C8()
{
  v23 = sub_1D208C47C();
  __swift_allocate_value_buffer(v23, qword_1EC6C4810);
  __swift_project_value_buffer(v23, qword_1EC6C4810);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v27 = v0;
  v1 = *(v29 + 48);
  *v0 = 1;
  v25 = v0 + v1;
  *v25 = "start";
  *(v25 + 1) = 5;
  v25[16] = 2;
  v24 = *MEMORY[0x1E69AADC8];
  v28 = *(*(sub_1D208C45C() - 8) + 104);
  (v28)(v25, v24);
  v26 = *(*(v29 - 8) + 72);
  v2 = *(v29 + 48);
  *(v27 + v26) = 2;
  v3 = v27 + v26 + v2;
  *v3 = "end";
  *(v3 + 1) = 3;
  v3[16] = 2;
  v28();
  v4 = *(v29 + 48);
  v5 = (v27 + 2 * v26);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "totalEnergy";
  *(v6 + 1) = 11;
  v6[16] = 2;
  v28();
  v7 = *(v29 + 48);
  v8 = (v27 + 3 * v26);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "totalRuntime";
  *(v9 + 1) = 12;
  v9[16] = 2;
  v28();
  v10 = *(v29 + 48);
  v11 = (v27 + 4 * v26);
  *v11 = 5;
  v12 = v11 + v10;
  *v12 = "byPeaks";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v28();
  v13 = *(v29 + 48);
  v14 = (v27 + 5 * v26);
  *v14 = 6;
  v15 = v14 + v13;
  *v15 = "byGridCleanliness";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v28();
  v16 = *(v29 + 48);
  v17 = (v27 + 6 * v26);
  *v17 = 7;
  v18 = v17 + v16;
  *v18 = "weather";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v28();
  v19 = *(v29 + 48);
  v20 = (v27 + 7 * v26);
  *v20 = 8;
  v21 = v20 + v19;
  *v21 = "grouping";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v28();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2041944()
{
  if (qword_1EC6C4808 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4810);
}

uint64_t static InsightRecordPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2041944();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2041A14@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041A70(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2041BA4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041C00(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

double sub_1D2041D34()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2041D90(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1D2041E50()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2041EAC(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D2041F6C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  swift_beginAccess();
  sub_1D204283C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041FC8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D204283C(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2042C78(v5, v6);
  swift_endAccess();
  return sub_1D2042A34(v8);
}

uint64_t sub_1D20420FC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  swift_beginAccess();
  sub_1D2042FAC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2042158(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D2042FAC(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v7 = &v9;
  swift_beginAccess();
  sub_1D20433B8(v5, v6);
  swift_endAccess();
  return sub_1D2043194(v8);
}

uint64_t sub_1D204228C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  swift_beginAccess();
  sub_1D20436CC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20422E8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D20436CC(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2043AD8(v5, v6);
  swift_endAccess();
  return sub_1D20438B4(v8);
}

uint64_t sub_1D204241C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D204249C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D2042578()
{
  type metadata accessor for InsightRecordPayload._StorageClass(0);
  result = sub_1D20425AC();
  qword_1EC6C4830 = result;
  return result;
}

uint64_t sub_1D20425E8()
{
  v6 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start;
  v7 = sub_1D208C1EC();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1);
  (v8)(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy) = -1.0;
  *(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime) = -1.0;
  v9 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks;
  v1 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  (*(*(v1 - 8) + 56))(v0 + v9, 1);
  v10 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness;
  v2 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  (*(*(v2 - 8) + 56))(v0 + v10, 1);
  v11 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather;
  v3 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  (*(*(v3 - 8) + 56))(v0 + v11, 1);
  result = v12;
  v5 = v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

void *sub_1D204283C(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    a2[4] = a1[4];
    a2[5] = a1[5];
    v6 = a2 + *(v9 + 40);
    v5 = a1 + *(v9 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.TariffPeakStats(uint64_t a1)
{
  v2 = qword_1EC6C5850;
  if (!qword_1EC6C5850)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1D2042A34(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 40);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2042AF0(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) + 40);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2042BB4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) + 40);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D2042C78(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      a2[4] = a1[4];
      a2[5] = a1[5];
      v8 = a2 + *(v13 + 40);
      v7 = a1 + *(v13 + 40);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2042F30(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    a2[4] = a1[4];
    a2[5] = a1[5];
    v10 = a2 + *(v13 + 40);
    v9 = a1 + *(v13 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2042F30(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats(0) + 40);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

void *sub_1D2042FAC(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.GridCleanlinessStats(uint64_t a1)
{
  v2 = qword_1EC6C5860;
  if (!qword_1EC6C5860)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1D2043194(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2043250(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2043304(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D20433B8(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      v8 = a2 + *(v13 + 32);
      v7 = a1 + *(v13 + 32);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2043650(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v10 = a2 + *(v13 + 32);
    v9 = a1 + *(v13 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2043650(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0) + 32);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

void *sub_1D20436CC(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.WeatherStats(uint64_t a1)
{
  v2 = qword_1EC6C5870;
  if (!qword_1EC6C5870)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1D20438B4(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2043970(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats(0) + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2043A24(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats(0) + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D2043AD8(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      v8 = a2 + *(v13 + 32);
      v7 = a1 + *(v13 + 32);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2043D70(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v10 = a2 + *(v13 + 32);
    v9 = a1 + *(v13 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2043D70(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.WeatherStats(0) + 32);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1D2043DEC()
{
  v2 = qword_1EC6BF030;
  if (!qword_1EC6BF030)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2043E68()
{
  v2 = qword_1EC6BF038;
  if (!qword_1EC6BF038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2043EE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for InsightRecordPayload(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1D2043F6C(uint64_t a1)
{
  v85 = a1;
  v105 = 0;
  v104 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v69 = (&v19 - v19);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v20 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v63 = (&v19 - v20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v21 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v57 = (&v19 - v21);
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v39 = &v19 - v22;
  v105 = v5;
  v104 = v1;
  v33 = &qword_1EC6C3498[365];
  v23 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start;
  v29 = 0;
  v24 = sub_1D208C1EC();
  v6 = *(v24 - 8);
  v26 = *(v6 + 56);
  v25 = v6 + 56;
  v82 = 1;
  v26(v1 + v23, 1);
  v38 = &qword_1EC6C3498[365];
  (v26)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end, v82, v82, v24);
  v7 = v29;
  v44 = &qword_1EC6C3498[365];
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy) = -1.0;
  v50 = &qword_1EC6C3498[365];
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime) = -1.0;
  v56 = &qword_1EC6C3498[365];
  v27 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks;
  v8 = type metadata accessor for InsightRecordPayload.TariffPeakStats(v7);
  (*(*(v8 - 8) + 56))(v1 + v27, v82);
  v62 = &qword_1EC6C3498[365];
  v28 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness;
  v9 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(v29);
  (*(*(v9 - 8) + 56))(v1 + v28, v82);
  v68 = &qword_1EC6C3498[365];
  v30 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather;
  v10 = type metadata accessor for InsightRecordPayload.WeatherStats(v29);
  (*(*(v10 - 8) + 56))(v1 + v30, v82);
  v11 = v33;
  v12 = v82;
  v13 = v85;
  v77 = &qword_1EC6C3498[365];
  v14 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  *v14 = 0;
  *(v14 + 8) = v12 & 1;
  v31 = (v13 + v11[288]);
  v32 = &v103;
  v72 = 32;
  v79 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v31, v39);
  swift_endAccess();
  v34 = (v1 + v33[288]);
  v35 = &v102;
  v78 = 33;
  swift_beginAccess();
  sub_1D1FD6448(v39, v34);
  swift_endAccess();
  v36 = (v85 + v38[289]);
  v37 = &v101;
  swift_beginAccess();
  sub_1D1FD5F1C(v36, v39);
  swift_endAccess();
  v40 = (v1 + v38[289]);
  v41 = &v100;
  swift_beginAccess();
  sub_1D1FD6448(v39, v40);
  swift_endAccess();
  v42 = (v85 + v44[290]);
  v43 = &v99;
  swift_beginAccess();
  v46 = *v42;
  swift_endAccess();
  v45 = (v1 + v44[290]);
  v47 = &v98;
  swift_beginAccess();
  *v45 = v46;
  swift_endAccess();
  v48 = (v85 + v50[291]);
  v49 = &v97;
  swift_beginAccess();
  v52 = *v48;
  swift_endAccess();
  v51 = (v1 + v50[291]);
  v53 = &v96;
  swift_beginAccess();
  *v51 = v52;
  swift_endAccess();
  v54 = (v85 + v56[292]);
  v55 = &v95;
  swift_beginAccess();
  sub_1D204283C(v54, v57);
  swift_endAccess();
  v58 = (v1 + v56[292]);
  v59 = &v94;
  swift_beginAccess();
  sub_1D2042C78(v57, v58);
  swift_endAccess();
  v60 = (v85 + v62[293]);
  v61 = &v93;
  swift_beginAccess();
  sub_1D2042FAC(v60, v63);
  swift_endAccess();
  v64 = (v1 + v62[293]);
  v65 = &v92;
  swift_beginAccess();
  sub_1D20433B8(v63, v64);
  swift_endAccess();
  v66 = (v85 + v68[294]);
  v67 = &v91;
  swift_beginAccess();
  sub_1D20436CC(v66, v69);
  swift_endAccess();
  v70 = (v1 + v68[294]);
  v71 = &v90;
  swift_beginAccess();
  sub_1D2043AD8(v69, v70);
  swift_endAccess();
  v73 = v85 + v77[295];
  v74 = v88;
  swift_beginAccess();
  v75 = *v73;
  v76 = *(v73 + 8);
  swift_endAccess();
  v88[3] = v75;
  v89 = v76 & 1 & v82;
  v80 = v75;
  v81 = v89;
  v83 = (v1 + v77[295]);
  v84 = &v87;
  swift_beginAccess();
  v15 = v81;
  v16 = v82;
  v17 = v83;
  *v83 = v80;
  *(v17 + 8) = v15 & 1 & v16;
  swift_endAccess();

  return v86;
}

uint64_t sub_1D2044750()
{
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  sub_1D2042A34(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  sub_1D2043194(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  sub_1D20438B4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  return v2;
}

uint64_t InsightRecordPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v22 = a1;
  v21 = v3;
  sub_1D203C804();

  v7 = *(v6 + *(type metadata accessor for InsightRecordPayload(0) + 20));

  v20 = v7;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v13 = sub_1D2044D70;
  v14 = &v15;
  v11 = type metadata accessor for InsightRecordPayload._StorageClass(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D201D1EC(&v20, sub_1D201D1BC, v12, v11, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1D20449A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v10 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D2044DAC(a2, a1, a3, a4);
        break;
      case 2:
        sub_1D2044E8C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1D2044F6C(a2, a1, a3);
        break;
      case 4:
        sub_1D2045034(a2, a1, a3);
        break;
      case 5:
        sub_1D20450FC(a2, a1, a3, a4);
        break;
      case 6:
        sub_1D20451DC(a2, a1, a3, a4);
        break;
      case 7:
        sub_1D20452BC(a2, a1, a3, a4);
        break;
      case 8:
        sub_1D204539C(a2, a1, a3, a4);
        break;
    }

    v10 = 0;
  }

  return result;
}

uint64_t sub_1D2044DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D2044E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D2044F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D2045034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D20450FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  sub_1D204A0F0();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D20451DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  sub_1D204B284();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D20452BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.WeatherStats(0);
  sub_1D204C418();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D204539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D2043E68();
  sub_1D208C2AC();
  return swift_endAccess();
}

uint64_t InsightRecordPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v21 = a2;
  v22 = a3;
  v24 = sub_1D2045C8C;
  v25 = sub_1D201D1BC;
  v41 = 0;
  v40 = 0;
  v42 = a2;
  v19 = 0;
  v13 = sub_1D208C21C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = v11 - v16;
  v41 = v23;
  v40 = v3;
  v5 = type metadata accessor for InsightRecordPayload(v4);
  v20 = *(v18 + *(v5 + 20));

  v29 = &v39;
  v39 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v26 = &v31;
  v32 = v24;
  v33 = &v34;
  v27 = type metadata accessor for InsightRecordPayload._StorageClass(v19);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v7 = v28;
  sub_1D201D1EC(v29, v25, v26, v27, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v38);
  v30 = v7;
  if (v7)
  {
    v11[2] = v38;
  }

  else
  {
    v8 = v17;

    (*(v14 + 16))(v8, v18, v13);
    v9 = v30;
    sub_1D208C1FC();
    v11[4] = v9;
    v12 = v9;
    if (v9)
    {
      v11[1] = v12;
    }

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1D2045778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D2045CC8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1D2045F78(a1, a2, a3, a4);
    v8 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
    swift_beginAccess();
    v9 = *v8;
    swift_endAccess();
    if (v9 != -1.0)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1D208C40C();
    }

    v6 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
    swift_beginAccess();
    v7 = *v6;
    swift_endAccess();
    if (v7 != -1.0)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1D208C40C();
    }

    sub_1D2046228(a1, a2, a3, a4);
    sub_1D2046460(a1, a2, a3, a4);
    sub_1D2046698(a1, a2, a3, a4);
    swift_beginAccess();
    swift_endAccess();
    sub_1D204C5C8();
    if ((sub_1D208C59C() & 1) == 0)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1D2043E68();
      sub_1D208C3CC();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D2045CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2045F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v22 = &v27;
  swift_beginAccess();
  sub_1D204283C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2042A34(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2042AF0(v25, v20);
    sub_1D204A0F0();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2042F30(v20);
    }

    else
    {
      sub_1D2042F30(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v22 = &v27;
  swift_beginAccess();
  sub_1D2042FAC(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2043194(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2043250(v25, v20);
    sub_1D204B284();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2043650(v20);
    }

    else
    {
      sub_1D2043650(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v22 = &v27;
  swift_beginAccess();
  sub_1D20436CC(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D20438B4(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2043970(v25, v20);
    sub_1D204C418();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2043D70(v20);
    }

    else
    {
      sub_1D2043D70(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

BOOL static InsightRecordPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v34 = a1;
  v26 = 0;
  v45 = 0;
  v44 = 0;
  v25 = 0;
  v41 = 0;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](0);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v10 - v32;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v10 - v32;
  v45 = v3;
  v44 = v4;
  v36 = type metadata accessor for InsightRecordPayload(v5);
  v35 = v36;
  v39 = *(v34 + *(v36 + 20));

  v38 = *(v37 + *(v36 + 20));

  v40 = sub_1D208CB6C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v40 & 1) == 0)
  {
    v17 = v25;
    goto LABEL_7;
  }

  v6 = v25;
  v20 = *(v34 + *(v35 + 20));

  v21 = *(v37 + *(v35 + 20));

  v42[0] = v20;
  v42[1] = v21;
  v22 = &v10;
  MEMORY[0x1EEE9AC00](&v10);
  v23 = &v10 - 4;
  *(&v10 - 2) = sub_1D2046CEC;
  *(&v10 - 1) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF040, &qword_1D2090868);
  sub_1D201D1EC(v42, sub_1D2024ECC, v23, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  v24 = v6;
  if (!v6)
  {
    sub_1D2024EFC(v42);
    v41 = v43;
    if ((v43 & 1) == 0)
    {
      v18 = 0;
      v19 = v24;
      return v18;
    }

    v17 = v24;
LABEL_7:
    v11 = v17;
    v13 = *(v29 + 16);
    v12 = v29 + 16;
    v13(v33, v34, v27);
    v13(v31, v37, v27);
    sub_1D1FE0414();
    v16 = sub_1D208C59C();
    v15 = *(v29 + 8);
    v14 = v29 + 8;
    v15(v31, v27);
    v15(v33, v27);
    v18 = (v16 & 1) != 0;
    v19 = v11;
    return v18;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1D2046CEC(uint64_t a1, uint64_t a2)
{
  v179 = a1;
  v183 = a2;
  v222 = 0;
  v223 = 0;
  v221 = 0;
  v220 = 0;
  v157 = 0;
  v121 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v125 = (v32 - v124);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF120, &qword_1D20911B0);
  v127 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v32 - v127;
  v129 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157);
  v130 = (v32 - v129);
  v131 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v132 = (v32 - v131);
  v133 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v134 = (v32 - v133);
  v135 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(v6);
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v138 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v139 = (v32 - v138);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF128, &qword_1D20911B8);
  v141 = (*(*(v140 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140);
  v142 = v32 - v141;
  v143 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157);
  v144 = (v32 - v143);
  v145 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v146 = (v32 - v145);
  v147 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v148 = (v32 - v147);
  v149 = type metadata accessor for InsightRecordPayload.TariffPeakStats(v11);
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v153 = (v32 - v152);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF130, &unk_1D20911C0);
  v155 = (*(*(v154 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v154);
  v156 = v32 - v155;
  v158 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157);
  v159 = (v32 - v158);
  v160 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v161 = (v32 - v160);
  v162 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v163 = (v32 - v162);
  v194 = sub_1D208C1EC();
  v192 = *(v194 - 8);
  v193 = v194 - 8;
  v164 = (*(v192 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v194);
  v165 = v32 - v164;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v166 = (*(*(v188 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v188);
  v167 = v32 - v166;
  v168 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v195 = v32 - v168;
  v169 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v179);
  v170 = v32 - v169;
  v171 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v172 = v32 - v171;
  v173 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v174 = v32 - v173;
  v175 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v176 = v32 - v175;
  v177 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v191 = v32 - v177;
  v178 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v189 = v32 - v178;
  v222 = v28;
  v223 = v29;

  v221 = v179;

  v220 = v183;

  v182 = &qword_1EC6C3498[365];
  v180 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v181 = &v219;
  v184 = 32;
  v185 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v180, v189);
  swift_endAccess();
  v186 = (v183 + v182[288]);
  v187 = &v218;
  swift_beginAccess();
  sub_1D1FD5F1C(v186, v191);
  swift_endAccess();
  v190 = *(v188 + 48);
  sub_1D1FD5F1C(v189, v195);
  sub_1D1FD5F1C(v191, &v195[v190]);
  v196 = *(v192 + 48);
  v197 = v192 + 48;
  if (v196(v195, 1, v194) == 1)
  {
    if (v196(&v195[v190], 1, v194) == 1)
    {
      sub_1D1FD6044(v195);
      v120 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D1FD5F1C(v195, v176);
    if (v196(&v195[v190], 1, v194) != 1)
    {
      (*(v192 + 32))(v165, &v195[v190], v194);
      sub_1D1FE0494();
      v119 = sub_1D208C59C();
      v118 = *(v192 + 8);
      v117 = v192 + 8;
      v118(v165, v194);
      v118(v176, v194);
      sub_1D1FD6044(v195);
      v120 = v119;
      goto LABEL_7;
    }

    (*(v192 + 8))(v176, v194);
  }

  sub_1D1FE0268(v195);
  v120 = 0;
LABEL_7:
  v116 = v120;
  sub_1D1FD6044(v191);
  sub_1D1FD6044(v189);
  if ((v116 & 1) == 0)
  {
    goto LABEL_60;
  }

  v109 = &qword_1EC6C3498[365];
  v107 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v108 = &v217;
  v110 = 32;
  v111 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v107, v174);
  swift_endAccess();
  v112 = (v183 + v109[289]);
  v113 = &v216;
  swift_beginAccess();
  sub_1D1FD5F1C(v112, v172);
  swift_endAccess();
  v114 = &v167[*(v188 + 48)];
  sub_1D1FD5F1C(v174, v167);
  sub_1D1FD5F1C(v172, v114);
  if (v196(v167, 1, v194) == 1)
  {
    if (v196(v114, 1, v194) != 1)
    {
      goto LABEL_20;
    }

    sub_1D1FD6044(v167);
    v106 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v167, v170);
    if (v196(v114, 1, v194) == 1)
    {
      (*(v192 + 8))(v170, v194);
LABEL_20:
      sub_1D1FE0268(v167);
      v106 = 0;
      goto LABEL_18;
    }

    (*(v192 + 32))(v165, v114, v194);
    sub_1D1FE0494();
    v105 = sub_1D208C59C();
    v104 = *(v192 + 8);
    v103 = v192 + 8;
    v104(v165, v194);
    v104(v170, v194);
    sub_1D1FD6044(v167);
    v106 = v105;
  }

LABEL_18:
  v102 = v106;
  sub_1D1FD6044(v172);
  sub_1D1FD6044(v174);
  if ((v102 & 1) == 0)
  {
    goto LABEL_60;
  }

  v95 = &qword_1EC6C3498[365];
  v93 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  v94 = &v215;
  v96 = 32;
  v97 = 0;
  swift_beginAccess();
  v101 = *v93;
  swift_endAccess();
  v98 = (v183 + v95[290]);
  v99 = &v214;
  swift_beginAccess();
  v100 = *v98;
  swift_endAccess();
  if (v101 != v100)
  {
    goto LABEL_60;
  }

  v86 = &qword_1EC6C3498[365];
  v84 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  v85 = &v213;
  v87 = 32;
  v88 = 0;
  swift_beginAccess();
  v92 = *v84;
  swift_endAccess();
  v89 = (v183 + v86[291]);
  v90 = &v212;
  swift_beginAccess();
  v91 = *v89;
  swift_endAccess();
  if (v92 != v91)
  {
    goto LABEL_60;
  }

  v76 = &qword_1EC6C3498[365];
  v74 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v75 = &v211;
  v77 = 32;
  v78 = 0;
  swift_beginAccess();
  sub_1D204283C(v74, v163);
  swift_endAccess();
  v79 = (v183 + v76[292]);
  v80 = &v210;
  swift_beginAccess();
  sub_1D204283C(v79, v161);
  swift_endAccess();
  v81 = &v156[*(v154 + 48)];
  sub_1D204283C(v163, v156);
  sub_1D204283C(v161, v81);
  v82 = *(v150 + 48);
  v83 = v150 + 48;
  if (v82(v156, 1, v149) == 1)
  {
    if (v82(v81, 1, v149) == 1)
    {
      sub_1D2042A34(v156);
      v73 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    sub_1D204283C(v156, v159);
    if (v82(v81, 1, v149) != 1)
    {
      sub_1D2042AF0(v81, v153);
      v72 = static InsightRecordPayload.TariffPeakStats.== infix(_:_:)(v159, v153);
      sub_1D2042F30(v153);
      sub_1D2042F30(v159);
      sub_1D2042A34(v156);
      v73 = v72;
      goto LABEL_32;
    }

    sub_1D2042F30(v159);
  }

  sub_1D204D698(v156);
  v73 = 0;
LABEL_32:
  v71 = v73;
  sub_1D2042A34(v161);
  sub_1D2042A34(v163);
  if ((v71 & 1) == 0)
  {
    goto LABEL_60;
  }

  v63 = &qword_1EC6C3498[365];
  v61 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v62 = &v209;
  v64 = 32;
  v65 = 0;
  swift_beginAccess();
  sub_1D2042FAC(v61, v148);
  swift_endAccess();
  v66 = (v183 + v63[293]);
  v67 = &v208;
  swift_beginAccess();
  sub_1D2042FAC(v66, v146);
  swift_endAccess();
  v68 = &v142[*(v140 + 48)];
  sub_1D2042FAC(v148, v142);
  sub_1D2042FAC(v146, v68);
  v69 = *(v136 + 48);
  v70 = v136 + 48;
  if (v69(v142, 1, v135) == 1)
  {
    if (v69(v68, 1, v135) == 1)
    {
      sub_1D2043194(v142);
      v60 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    sub_1D2042FAC(v142, v144);
    if (v69(v68, 1, v135) != 1)
    {
      sub_1D2043250(v68, v139);
      v59 = static InsightRecordPayload.GridCleanlinessStats.== infix(_:_:)(v144, v139);
      sub_1D2043650(v139);
      sub_1D2043650(v144);
      sub_1D2043194(v142);
      v60 = v59;
      goto LABEL_43;
    }

    sub_1D2043650(v144);
  }

  sub_1D204D7F4(v142);
  v60 = 0;
LABEL_43:
  v58 = v60;
  sub_1D2043194(v146);
  sub_1D2043194(v148);
  if ((v58 & 1) == 0)
  {
    goto LABEL_60;
  }

  v50 = &qword_1EC6C3498[365];
  v48 = (v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v49 = &v207;
  v51 = 32;
  v52 = 0;
  swift_beginAccess();
  sub_1D20436CC(v48, v134);
  swift_endAccess();
  v53 = (v183 + v50[294]);
  v54 = &v206;
  swift_beginAccess();
  sub_1D20436CC(v53, v132);
  swift_endAccess();
  v55 = &v128[*(v126 + 48)];
  sub_1D20436CC(v134, v128);
  sub_1D20436CC(v132, v55);
  v56 = *(v122 + 48);
  v57 = v122 + 48;
  if (v56(v128, 1, v121) == 1)
  {
    if (v56(v55, 1, v121) != 1)
    {
      goto LABEL_56;
    }

    sub_1D20438B4(v128);
    v47 = 1;
  }

  else
  {
    sub_1D20436CC(v128, v130);
    if (v56(v55, 1, v121) == 1)
    {
      sub_1D2043D70(v130);
LABEL_56:
      sub_1D204D950(v128);
      v47 = 0;
      goto LABEL_54;
    }

    sub_1D2043970(v55, v125);
    v46 = static InsightRecordPayload.WeatherStats.== infix(_:_:)(v130, v125);
    sub_1D2043D70(v125);
    sub_1D2043D70(v130);
    sub_1D20438B4(v128);
    v47 = v46;
  }

LABEL_54:
  v45 = v47;
  sub_1D20438B4(v132);
  sub_1D20438B4(v134);
  if (v45)
  {
    v35 = &qword_1EC6C3498[365];
    v32[0] = v179 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
    v32[1] = v204;
    v36 = 32;
    v37 = 0;
    swift_beginAccess();
    v33 = *v32[0];
    v34 = *(v32[0] + 8);
    swift_endAccess();
    v204[3] = v33;
    v42 = 1;
    v205 = v34 & 1;
    v44 = &v202;
    v202 = v33;
    v203 = v34 & 1;
    v38 = v183 + v35[295];
    v39 = v200;
    swift_beginAccess();
    v40 = *v38;
    v41 = *(v38 + 8);
    swift_endAccess();
    v200[3] = v40;
    v201 = v41 & 1 & v42;
    v43 = &v198;
    v198 = v40;
    v199 = v201;
    sub_1D204C5C8();
    v30 = sub_1D208C59C();
    if (v30)
    {

      v115 = 1;
      return v115 & 1;
    }
  }

LABEL_60:

  v115 = 0;
  return v115 & 1;
}

uint64_t InsightRecordPayload.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload(0);
  sub_1D204838C();
  return sub_1D208C9DC();
}

unint64_t sub_1D204838C()
{
  v2 = qword_1EC6BF048;
  if (!qword_1EC6BF048)
  {
    type metadata accessor for InsightRecordPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF048);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204846C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 32184);
  *a1 = v2;
  v2[4] = InsightRecordPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D20485A8()
{
  v2 = qword_1EC6BF050;
  if (!qword_1EC6BF050)
  {
    type metadata accessor for InsightRecordPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2048670()
{
  v2 = qword_1EC6BF058;
  if (!qword_1EC6BF058)
  {
    type metadata accessor for InsightRecordPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204875C()
{
  v8 = sub_1D208C47C();
  __swift_allocate_value_buffer(v8, qword_1EC6C4840);
  __swift_project_value_buffer(v8, qword_1EC6C4840);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v12 = v0;
  v1 = *(v14 + 48);
  *v0 = 0;
  v10 = v0 + v1;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v13 = *(*(sub_1D208C45C() - 8) + 104);
  (v13)(v10, v9);
  v11 = *(*(v14 - 8) + 72);
  v2 = *(v14 + 48);
  *(v12 + v11) = 1;
  v3 = v12 + v11 + v2;
  *v3 = "energy";
  *(v3 + 1) = 6;
  v3[16] = 2;
  v13();
  v4 = *(v14 + 48);
  v5 = (v12 + 2 * v11);
  *v5 = 2;
  v6 = v5 + v4;
  *v6 = "runtime";
  *(v6 + 1) = 7;
  v6[16] = 2;
  v13();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2048984()
{
  if (qword_1EC6C4838 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4840);
}

uint64_t static InsightRecordPayload.Grouping._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2048984();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2048A6C()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C4860 = v6;
  qword_1EC6C4868 = v7;
  return result;
}

uint64_t *sub_1D2048B0C()
{
  if (qword_1EC6C4858 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4860;
}

uint64_t static InsightRecordPayload.TariffPeakStats.protoMessageName.getter()
{
  v1 = *sub_1D2048B0C();

  return v1;
}

uint64_t sub_1D2048BA8()
{
  v17 = sub_1D208C47C();
  __swift_allocate_value_buffer(v17, qword_1EC6C4878);
  __swift_project_value_buffer(v17, qword_1EC6C4878);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v21 = v0;
  v1 = *(v23 + 48);
  *v0 = 1;
  v19 = v0 + v1;
  *v19 = "unknown";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v22 = *(*(sub_1D208C45C() - 8) + 104);
  (v22)(v19, v18);
  v20 = *(*(v23 - 8) + 72);
  v2 = *(v23 + 48);
  *(v21 + v20) = 2;
  v3 = v21 + v20 + v2;
  *v3 = "superOffPeak";
  *(v3 + 1) = 12;
  v3[16] = 2;
  v22();
  v4 = *(v23 + 48);
  v5 = (v21 + 2 * v20);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "offPeak";
  *(v6 + 1) = 7;
  v6[16] = 2;
  v22();
  v7 = *(v23 + 48);
  v8 = (v21 + 3 * v20);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "partialPeak";
  *(v9 + 1) = 11;
  v9[16] = 2;
  v22();
  v10 = *(v23 + 48);
  v11 = (v21 + 4 * v20);
  *v11 = 5;
  v12 = v11 + v10;
  *v12 = "onPeak";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v22();
  v13 = *(v23 + 48);
  v14 = (v21 + 5 * v20);
  *v14 = 6;
  v15 = v14 + v13;
  *v15 = "criticalPeak";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v22();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2048F4C()
{
  if (qword_1EC6C4870 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4878);
}

uint64_t static InsightRecordPayload.TariffPeakStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2048F4C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.TariffPeakStats.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v7 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8(a1, v6);
        break;
      case 2:
        sub_1D204932C(a1, v6);
        break;
      case 3:
        sub_1D20493B0(a1, v6);
        break;
      case 4:
        sub_1D2049434(a1, v6);
        break;
      case 5:
        sub_1D20494B8(a1, v6);
        break;
      case 6:
        sub_1D204953C(a1, v6);
        break;
    }

    v7 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.TariffPeakStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v42 = a2;
  v43 = a3;
  v53 = 0;
  v52 = 0;
  v54 = a2;
  v47 = sub_1D208C21C();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v51 = v15 - v50;
  v53 = v4;
  v52 = v3;
  if (*v3 == -1.0)
  {
    v39 = v45;
  }

  else
  {
    v5 = v45;
    result = sub_1D208C40C();
    v40 = v5;
    v41 = v5;
    if (v5)
    {
      return result;
    }

    v39 = 0;
  }

  v38 = v39;
  if (v44[1] == -1.0)
  {
    v35 = v38;
  }

  else
  {
    v7 = v38;
    result = sub_1D208C40C();
    v36 = v7;
    v37 = v7;
    if (v7)
    {
      return result;
    }

    v35 = 0;
  }

  v34 = v35;
  if (v44[2] == -1.0)
  {
    v31 = v34;
  }

  else
  {
    v8 = v34;
    result = sub_1D208C40C();
    v32 = v8;
    v33 = v8;
    if (v8)
    {
      return result;
    }

    v31 = 0;
  }

  v30 = v31;
  if (v44[3] == -1.0)
  {
    v27 = v30;
  }

  else
  {
    v9 = v30;
    result = sub_1D208C40C();
    v28 = v9;
    v29 = v9;
    if (v9)
    {
      return result;
    }

    v27 = 0;
  }

  v26 = v27;
  if (v44[4] == -1.0)
  {
    v23 = v26;
  }

  else
  {
    v10 = v26;
    result = sub_1D208C40C();
    v24 = v10;
    v25 = v10;
    if (v10)
    {
      return result;
    }

    v23 = 0;
  }

  v22 = v23;
  if (v44[5] == -1.0)
  {
    v19 = v22;
  }

  else
  {
    v11 = v22;
    result = sub_1D208C40C();
    v20 = v11;
    v21 = v11;
    if (v11)
    {
      return result;
    }

    v19 = 0;
  }

  v12 = v51;
  v16 = v19;
  v13 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  (*(v48 + 16))(v12, v44 + *(v13 + 40), v47);
  v14 = v16;
  sub_1D208C1FC();
  v17 = v14;
  v18 = v14;
  if (v14)
  {
    v15[1] = v18;
  }

  return (*(v48 + 8))(v51, v47);
}

BOOL static InsightRecordPayload.TariffPeakStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          if (v17[4] == v16[4])
          {
            if (v17[5] == v16[5])
            {
              v9 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
              v6 = v17 + *(v9 + 40);
              v11 = v19[2];
              v10 = v19 + 2;
              v11(v24, v6, v18);
              v11(v22, v16 + *(v9 + 40), v18);
              sub_1D1FE0414();
              v14 = sub_1D208C59C();
              v13 = v19[1];
              v12 = v19 + 1;
              v13(v22, v18);
              v13(v24, v18);
              return (v14 & 1) != 0;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.TariffPeakStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  sub_1D2049E0C();
  return sub_1D208C9DC();
}

unint64_t sub_1D2049E0C()
{
  v2 = qword_1EC6BF060;
  if (!qword_1EC6BF060)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF060);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D2049EEC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 33347);
  *a1 = v2;
  v2[4] = InsightRecordPayload.TariffPeakStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204A028()
{
  v2 = qword_1EC6BF068;
  if (!qword_1EC6BF068)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204A0F0()
{
  v2 = qword_1EC6BF070;
  if (!qword_1EC6BF070)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF070);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204A1DC()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C4898 = v6;
  qword_1EC6C48A0 = v7;
  return result;
}

uint64_t *sub_1D204A27C()
{
  if (qword_1EC6C4890 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4898;
}

uint64_t static InsightRecordPayload.GridCleanlinessStats.protoMessageName.getter()
{
  v1 = *sub_1D204A27C();

  return v1;
}

uint64_t sub_1D204A318()
{
  v11 = sub_1D208C47C();
  __swift_allocate_value_buffer(v11, qword_1EC6C48B0);
  __swift_project_value_buffer(v11, qword_1EC6C48B0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v15 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v13 = v0 + v1;
  *v13 = "unknown";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v13, v12);
  v14 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v15 + v14) = 2;
  v3 = v15 + v14 + v2;
  *v3 = "clean";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v16();
  v4 = *(v17 + 48);
  v5 = (v15 + 2 * v14);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "reduce";
  *(v6 + 1) = 6;
  v6[16] = 2;
  v16();
  v7 = *(v17 + 48);
  v8 = (v15 + 3 * v14);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "avoid";
  *(v9 + 1) = 5;
  v9[16] = 2;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D204A5C8()
{
  if (qword_1EC6C48A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C48B0);
}

uint64_t static InsightRecordPayload.GridCleanlinessStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D204A5C8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v7 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8(a1, v6);
        break;
      case 2:
        sub_1D204932C(a1, v6);
        break;
      case 3:
        sub_1D20493B0(a1, v6);
        break;
      case 4:
        sub_1D2049434(a1, v6);
        break;
    }

    v7 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.GridCleanlinessStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v32 = a2;
  v33 = a3;
  v43 = 0;
  v42 = 0;
  v44 = a2;
  v37 = sub_1D208C21C();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v41 = v13 - v40;
  v43 = v4;
  v42 = v3;
  if (*v3 == -1.0)
  {
    v29 = v35;
  }

  else
  {
    v5 = v35;
    result = sub_1D208C40C();
    v30 = v5;
    v31 = v5;
    if (v5)
    {
      return result;
    }

    v29 = 0;
  }

  v28 = v29;
  if (v34[1] == -1.0)
  {
    v25 = v28;
  }

  else
  {
    v7 = v28;
    result = sub_1D208C40C();
    v26 = v7;
    v27 = v7;
    if (v7)
    {
      return result;
    }

    v25 = 0;
  }

  v24 = v25;
  if (v34[2] == -1.0)
  {
    v21 = v24;
  }

  else
  {
    v8 = v24;
    result = sub_1D208C40C();
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      return result;
    }

    v21 = 0;
  }

  v20 = v21;
  if (v34[3] == -1.0)
  {
    v17 = v20;
  }

  else
  {
    v9 = v20;
    result = sub_1D208C40C();
    v18 = v9;
    v19 = v9;
    if (v9)
    {
      return result;
    }

    v17 = 0;
  }

  v10 = v41;
  v14 = v17;
  v11 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  (*(v38 + 16))(v10, v34 + *(v11 + 32), v37);
  v12 = v14;
  sub_1D208C1FC();
  v15 = v12;
  v16 = v12;
  if (v12)
  {
    v13[1] = v16;
  }

  return (*(v38 + 8))(v41, v37);
}

BOOL static InsightRecordPayload.GridCleanlinessStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          v9 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
          v6 = v17 + *(v9 + 32);
          v11 = v19[2];
          v10 = v19 + 2;
          v11(v24, v6, v18);
          v11(v22, v16 + *(v9 + 32), v18);
          sub_1D1FE0414();
          v14 = sub_1D208C59C();
          v13 = v19[1];
          v12 = v19 + 1;
          v13(v22, v18);
          v13(v24, v18);
          return (v14 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.GridCleanlinessStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  sub_1D204AFA0();
  return sub_1D208C9DC();
}

unint64_t sub_1D204AFA0()
{
  v2 = qword_1EC6BF078;
  if (!qword_1EC6BF078)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF078);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204B080(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 65409);
  *a1 = v2;
  v2[4] = InsightRecordPayload.GridCleanlinessStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204B1BC()
{
  v2 = qword_1EC6BF080;
  if (!qword_1EC6BF080)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204B284()
{
  v2 = qword_1EC6BF088;
  if (!qword_1EC6BF088)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204B370()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C48D0 = v6;
  qword_1EC6C48D8 = v7;
  return result;
}

uint64_t *sub_1D204B410()
{
  if (qword_1EC6C48C8 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C48D0;
}

uint64_t static InsightRecordPayload.WeatherStats.protoMessageName.getter()
{
  v1 = *sub_1D204B410();

  return v1;
}

uint64_t sub_1D204B4AC()
{
  v11 = sub_1D208C47C();
  __swift_allocate_value_buffer(v11, qword_1EC6C48E8);
  __swift_project_value_buffer(v11, qword_1EC6C48E8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v15 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v13 = v0 + v1;
  *v13 = "unknown";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v13, v12);
  v14 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v15 + v14) = 2;
  v3 = v15 + v14 + v2;
  *v3 = "lowTemperature";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v16();
  v4 = *(v17 + 48);
  v5 = (v15 + 2 * v14);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "highTemperature";
  *(v6 + 1) = 15;
  v6[16] = 2;
  v16();
  v7 = *(v17 + 48);
  v8 = (v15 + 3 * v14);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "avgTemperature";
  *(v9 + 1) = 14;
  v9[16] = 2;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D204B75C()
{
  if (qword_1EC6C48E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C48E8);
}

uint64_t static InsightRecordPayload.WeatherStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D204B75C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.WeatherStats.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v7 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8(a1, v6);
        break;
      case 2:
        sub_1D204932C(a1, v6);
        break;
      case 3:
        sub_1D20493B0(a1, v6);
        break;
      case 4:
        sub_1D2049434(a1, v6);
        break;
    }

    v7 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.WeatherStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v32 = a2;
  v33 = a3;
  v43 = 0;
  v42 = 0;
  v44 = a2;
  v37 = sub_1D208C21C();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v41 = v13 - v40;
  v43 = v4;
  v42 = v3;
  if (*v3 == -1.0)
  {
    v29 = v35;
  }

  else
  {
    v5 = v35;
    result = sub_1D208C40C();
    v30 = v5;
    v31 = v5;
    if (v5)
    {
      return result;
    }

    v29 = 0;
  }

  v28 = v29;
  if (v34[1] == -1.0)
  {
    v25 = v28;
  }

  else
  {
    v7 = v28;
    result = sub_1D208C40C();
    v26 = v7;
    v27 = v7;
    if (v7)
    {
      return result;
    }

    v25 = 0;
  }

  v24 = v25;
  if (v34[2] == -1.0)
  {
    v21 = v24;
  }

  else
  {
    v8 = v24;
    result = sub_1D208C40C();
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      return result;
    }

    v21 = 0;
  }

  v20 = v21;
  if (v34[3] == -1.0)
  {
    v17 = v20;
  }

  else
  {
    v9 = v20;
    result = sub_1D208C40C();
    v18 = v9;
    v19 = v9;
    if (v9)
    {
      return result;
    }

    v17 = 0;
  }

  v10 = v41;
  v14 = v17;
  v11 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  (*(v38 + 16))(v10, v34 + *(v11 + 32), v37);
  v12 = v14;
  sub_1D208C1FC();
  v15 = v12;
  v16 = v12;
  if (v12)
  {
    v13[1] = v16;
  }

  return (*(v38 + 8))(v41, v37);
}

BOOL static InsightRecordPayload.WeatherStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          v9 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
          v6 = v17 + *(v9 + 32);
          v11 = v19[2];
          v10 = v19 + 2;
          v11(v24, v6, v18);
          v11(v22, v16 + *(v9 + 32), v18);
          sub_1D1FE0414();
          v14 = sub_1D208C59C();
          v13 = v19[1];
          v12 = v19 + 1;
          v13(v22, v18);
          v13(v24, v18);
          return (v14 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.WeatherStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.WeatherStats(0);
  sub_1D204C134();
  return sub_1D208C9DC();
}

unint64_t sub_1D204C134()
{
  v2 = qword_1EC6BF090;
  if (!qword_1EC6BF090)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF090);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204C214(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 43556);
  *a1 = v2;
  v2[4] = InsightRecordPayload.WeatherStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204C350()
{
  v2 = qword_1EC6BF098;
  if (!qword_1EC6BF098)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C418()
{
  v2 = qword_1EC6BF0A0;
  if (!qword_1EC6BF0A0)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C51C()
{
  v2 = qword_1EC6BF0A8;
  if (!qword_1EC6BF0A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C5C8()
{
  v2 = qword_1EC6BF0B0;
  if (!qword_1EC6BF0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C65C()
{
  v2 = qword_1EC6BF0B8;
  if (!qword_1EC6BF0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF0C0, &qword_1D2090958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C6FC()
{
  v2 = qword_1EC6BF0C8;
  if (!qword_1EC6BF0C8)
  {
    type metadata accessor for InsightRecordPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C7C4()
{
  v2 = qword_1EC6BF0D0;
  if (!qword_1EC6BF0D0)
  {
    type metadata accessor for InsightRecordPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C85C()
{
  v2 = qword_1EC6BF0D8;
  if (!qword_1EC6BF0D8)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C924()
{
  v2 = qword_1EC6BF0E0;
  if (!qword_1EC6BF0E0)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C9BC()
{
  v2 = qword_1EC6BF0E8;
  if (!qword_1EC6BF0E8)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CA84()
{
  v2 = qword_1EC6BF0F0;
  if (!qword_1EC6BF0F0)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CB1C()
{
  v2 = qword_1EC6BF0F8;
  if (!qword_1EC6BF0F8)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CBE4()
{
  v2 = qword_1EC6BF100;
  if (!qword_1EC6BF100)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204CCDC(uint64_t a1)
{
  v4 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for InsightRecordPayload._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1D204CE9C(uint64_t a1)
{
  v3 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1D204CFD0(uint64_t a1)
{
  v3 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1D204D108(uint64_t a1)
{
  updated = sub_1D1FE0FAC(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1D204D318(319);
    if (v2 <= 0x3F)
    {
      updated = sub_1D204D3B4(319);
      if (v3 <= 0x3F)
      {
        updated = sub_1D204D450(319);
        if (v4 <= 0x3F)
        {
          updated = swift_updateClassMetadata2();
          if (!updated)
          {
            return 0;
          }
        }
      }
    }
  }

  return updated;
}

unint64_t sub_1D204D318(uint64_t a1)
{
  v5 = qword_1EC6BF108;
  if (!qword_1EC6BF108)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats(255);
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF108);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D204D3B4(uint64_t a1)
{
  v5 = qword_1EC6BF110;
  if (!qword_1EC6BF110)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats(255);
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF110);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D204D450(uint64_t a1)
{
  v5 = qword_1EC6BF118;
  if (!qword_1EC6BF118)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats(255);
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF118);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D204D504()
{
  v2 = qword_1EC6C5910[0];
  if (!qword_1EC6C5910[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C5910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204D580(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(type metadata accessor for InsightRecordPayload(0) + 20);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D204D61C(uint64_t a1)
{
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for InsightRecordPayload(0);

  return a1;
}

uint64_t sub_1D204D698(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.TariffPeakStats(0);
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 40);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF130, &unk_1D20911C0) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_1D204D7F4(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats(0);
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF128, &qword_1D20911B8) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_1D204D950(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.WeatherStats(0);
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF120, &qword_1D20911B0) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

id static IntervalBlocks.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  v4 = sub_1D208C64C();
  v3 = v0;
  v1 = type metadata accessor for IntervalBlocks();
  return sub_1D1FCF514(v4, v3, v1);
}

uint64_t sub_1D204DB2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 meterID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204DBBC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setMeterID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204DC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 start];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D204DD8C(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setStart_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D204DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 end];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D204E000(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setEnd_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D204E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 sourceTime];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D204E274(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setSourceTime_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D204E3C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 usagePointID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E454(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setUsagePointID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 creationDate];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D204E624(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setCreationDate_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D204E774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 readings];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E804(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setReadings_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D204E8B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 preprocessed];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204E928(char *a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setPreprocessed_];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204E9E8@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.unitAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EA54(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.unitAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.unitAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.unitAsInt.getter();
  return sub_1D204EB68;
}

uint64_t sub_1D204EC04@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.flowDirectionAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EC70(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.flowDirectionAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.flowDirectionAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.flowDirectionAsInt.getter();
  return sub_1D204ED84;
}

uint64_t sub_1D204EE20@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.commodityAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EE8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.commodityAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.commodityAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.commodityAsInt.getter();
  return sub_1D204EFA0;
}

uint64_t EKDateRange.end.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EKDateRange(0) + 20);
  v2 = sub_1D208BF1C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for EKDateRange(uint64_t a1)
{
  v2 = qword_1EC6C5AA0;
  if (!qword_1EC6C5AA0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t EKDateRange.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v105 = a1;
  v104 = a2;
  v83 = sub_1D20500E4;
  v84 = sub_1D20500E4;
  v85 = sub_1D20506D0;
  v86 = sub_1D205248C;
  v87 = sub_1D20506D0;
  v88 = sub_1D205248C;
  v89 = sub_1D2029A40;
  v90 = sub_1D2029A40;
  v91 = sub_1D2052498;
  v92 = sub_1D2029A40;
  v93 = sub_1D2029A40;
  v94 = sub_1D2052498;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v95 = 0;
  v96 = 0;
  v97 = sub_1D208BF1C();
  v99 = *(v97 - 8);
  v98 = v97 - 8;
  v100 = v99;
  v101 = v99[8];
  v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v103 = v33 - v102;
  v106 = type metadata accessor for EKDateRange(v3);
  v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v108 = v33 - v107;
  v116 = v33 - v107;
  v115 = v4;
  v114 = v5;
  if (sub_1D208BE8C())
  {
    v81 = sub_1D208C84C();
    v52 = v100;
    v56 = v99[2];
    v55 = v99 + 2;
    v56(v103, v105, v97);
    v57 = *(v52 + 20);
    v53 = (v57 + 16) & ~v57;
    v68 = 7;
    v54 = swift_allocObject();
    v60 = v99[4];
    v59 = v99 + 4;
    v60(v54 + v53, v103, v97);

    v67 = 32;
    v6 = swift_allocObject();
    v7 = v54;
    v62 = v6;
    *(v6 + 16) = v83;
    *(v6 + 24) = v7;

    v56(v103, v104, v97);
    v58 = (v57 + 16) & ~v57;
    v61 = swift_allocObject();
    v60(v61 + v58, v103, v97);

    v8 = swift_allocObject();
    v9 = v61;
    v69 = v8;
    *(v8 + 16) = v84;
    *(v8 + 24) = v9;

    sub_1D20507AC();
    v80 = sub_1D208C8AC();
    v65 = 17;
    v71 = swift_allocObject();
    v64 = 32;
    *(v71 + 16) = 32;
    v72 = swift_allocObject();
    v66 = 8;
    *(v72 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v62;
    v63 = v10;
    *(v10 + 16) = v85;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v63;
    v73 = v12;
    *(v12 + 16) = v86;
    *(v12 + 24) = v13;
    v74 = swift_allocObject();
    *(v74 + 16) = v64;
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    v14 = swift_allocObject();
    v15 = v69;
    v70 = v14;
    *(v14 + 16) = v87;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v70;
    v77 = v16;
    *(v16 + 16) = v88;
    *(v16 + 24) = v17;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
    v76 = sub_1D208CB2C();
    v78 = v18;

    v19 = v71;
    v20 = v78;
    *v78 = v89;
    v20[1] = v19;

    v21 = v72;
    v22 = v78;
    v78[2] = v90;
    v22[3] = v21;

    v23 = v73;
    v24 = v78;
    v78[4] = v91;
    v24[5] = v23;

    v25 = v74;
    v26 = v78;
    v78[6] = v92;
    v26[7] = v25;

    v27 = v75;
    v28 = v78;
    v78[8] = v93;
    v28[9] = v27;

    v29 = v77;
    v30 = v78;
    v78[10] = v94;
    v30[11] = v29;
    sub_1D1FCECE8();

    if (os_log_type_enabled(v80, v81))
    {
      v31 = v95;
      v44 = sub_1D208C8EC();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
      v45 = sub_1D2029898(0, v43, v43);
      v46 = sub_1D2029898(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v48 = &v113;
      v113 = v44;
      v49 = &v112;
      v112 = v45;
      v50 = &v111;
      v111 = v46;
      v47 = 2;
      sub_1D20298EC(2, &v113);
      sub_1D20298EC(v47, v48);
      v109 = v89;
      v110 = v71;
      sub_1D2029900(&v109, v48, v49, v50);
      v51 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v109 = v90;
        v110 = v72;
        sub_1D2029900(&v109, &v113, &v112, &v111);
        v42 = 0;
        v109 = v91;
        v110 = v73;
        sub_1D2029900(&v109, &v113, &v112, &v111);
        v41 = 0;
        v109 = v92;
        v110 = v74;
        sub_1D2029900(&v109, &v113, &v112, &v111);
        v40 = 0;
        v109 = v93;
        v110 = v75;
        sub_1D2029900(&v109, &v113, &v112, &v111);
        v39 = 0;
        v109 = v94;
        v110 = v77;
        sub_1D2029900(&v109, &v113, &v112, &v111);
        _os_log_impl(&dword_1D1FC7000, v80, v81, "EKDateRange ERROR start > end for start: %s end: %s) ", v44, 0x16u);
        sub_1D202994C(v45, 0, v43);
        sub_1D202994C(v46, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1D208C8BC();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v80);
  }

  v34 = v99[2];
  v33[1] = v99 + 2;
  v34(v103, v105, v97);
  v36 = v99[4];
  v35 = v99 + 4;
  v36(v108, v103, v97);
  v34(v103, v104, v97);
  v36(v108 + *(v106 + 20), v103, v97);
  sub_1D204FF3C(v108, v82);
  v38 = v99[1];
  v37 = v99 + 1;
  v38(v104, v97);
  v38(v105, v97);
  return sub_1D204FFE8(v108);
}

uint64_t sub_1D204FF3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D208BF1C();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = type metadata accessor for EKDateRange(0);
  (v6)(a2 + *(v2 + 20), a1 + *(v2 + 20), v5);
  return a2;
}

uint64_t sub_1D204FFE8(uint64_t a1)
{
  v4 = sub_1D208BF1C();
  v3 = *(*(v4 - 8) + 8);
  v3(a1);
  v1 = type metadata accessor for EKDateRange(0);
  (v3)(a1 + *(v1 + 20), v4);
  return a1;
}

uint64_t sub_1D20500E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D208BF1C();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1D2050084(v3, a1);
}

uint64_t EKDateRange.hash(into:)(uint64_t a1)
{
  v10 = a1;
  v2 = v1;
  v14 = v2;
  v23 = 0;
  v22 = 0;
  v13 = 0;
  v19 = sub_1D208BF1C();
  v11 = *(v19 - 8);
  v12 = v19 - 8;
  v9 = (v11[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v19);
  v18 = &v8 - v9;
  v23 = a1;
  v22 = v5;
  v16 = v11[2];
  v15 = v11 + 2;
  v16(v4);
  v17 = sub_1D1FE5320();
  sub_1D208CBAC();
  v21 = v11[1];
  v20 = v11 + 1;
  v21(v18, v19);
  v6 = type metadata accessor for EKDateRange(v13);
  (v16)(v18, v14 + *(v6 + 20), v19);
  sub_1D208CBAC();
  return (v21)(v18, v19);
}

uint64_t static EKDateRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v13 = a2;
  v25 = 0;
  v24 = 0;
  v20 = sub_1D208BF1C();
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v11 = v16[8];
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v5 - v10;
  v12 = v10;
  v2 = MEMORY[0x1EEE9AC00](&v5 - v10);
  v19 = &v5 - v12;
  v25 = v3;
  v24 = v13;
  v15 = v16[2];
  v14 = v16 + 2;
  v15(v2);
  (v15)(v18, v13, v20);
  v23 = sub_1D208BEBC();
  v22 = v16[1];
  v21 = v16 + 1;
  v22(v18, v20);
  v22(v19, v20);
  if (v23)
  {
    v6 = type metadata accessor for EKDateRange(0);
    (v15)(v19, v9 + *(v6 + 20), v20);
    (v15)(v18, v13 + *(v6 + 20), v20);
    v7 = sub_1D208BEBC();
    v22(v18, v20);
    v22(v19, v20);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t EKDateRange.hashValue.getter()
{
  type metadata accessor for EKDateRange(0);
  sub_1D20524A4();
  return sub_1D208C9DC();
}

uint64_t sub_1D20505EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1D208CACC();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_1D20506D0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1D208BF1C();
  v1 = sub_1D205072C();

  return sub_1D20505EC(v5, v3, v4, v1);
}

unint64_t sub_1D205072C()
{
  v2 = qword_1EC6BF138;
  if (!qword_1EC6BF138)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20507AC()
{
  v2 = qword_1EC6BF140;
  if (!qword_1EC6BF140)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BF140);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1D2050838(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_1D20508D4(v4, v5, a3);
  v8 = *a1;

  sub_1D208C91C();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1D20508D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1D2050A78(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1D20526B0(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1D20526B0(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

void *sub_1D2050A78(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1D208CA2C();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1D2050E30(v22, v17, v16);
        sub_1D208C92C();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1D2050FAC(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1D208CA0C();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1D208CA2C();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1D2050E30(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1D208CA4C();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1D208CA4C();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1D2050FAC(uint64_t a1, uint64_t a2)
{
  v7 = sub_1D2051068(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF158, &qword_1D2091280);
  inited = swift_initStackObject();
  sub_1D2051878(inited, 1);
  *v3 = 0;
  sub_1D20518C4();
  sub_1D20518F8(v4);

  v8 = sub_1D2051CA0(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1D2051068(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1D208C67C();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1D20521C0();
  }

  v10 = sub_1D2051CB8(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1D208CA4C();
    __break(1u);
    return sub_1D20521C0();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1D2051DFC(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1D208CA0C();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1D2051DFC(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1D208C9EC();
  if (v2)
  {
LABEL_29:
    sub_1D208CA2C();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  sub_1D1FE023C(v17);
  return v10;
}

uint64_t sub_1D2051878(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1D20518F8(uint64_t a1)
{
  v18 = sub_1D2051CA0(a1);
  v2 = sub_1D2051CA0(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_1D20521F0(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1D208CA4C();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1D205235C(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1D208CA2C();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1D208CA2C();
    __break(1u);
    goto LABEL_21;
  }

  sub_1D2051DFC((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1D1FCF41C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1D2051CB8(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF158, &qword_1D2091280);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1D2051DFC(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1D208CA4C();
    __break(1u);
  }

  result = sub_1D208CA4C();
  __break(1u);
  return result;
}

unint64_t sub_1D2051F4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1D3894910](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1D208CA2C();
    __break(1u);
  }

  v5 = sub_1D208C6BC();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}