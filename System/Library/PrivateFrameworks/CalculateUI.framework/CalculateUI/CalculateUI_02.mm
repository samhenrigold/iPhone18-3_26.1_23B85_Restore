uint64_t CalculateExpression.paste(_:)(uint64_t a1, unint64_t a2)
{
  if (sub_1C1E53D2C() == 1)
  {

    return sub_1C1E0030C(a1, a2, v2);
  }

  else
  {

    return sub_1C1E00B14(a1, a2);
  }
}

unint64_t sub_1C1DF7514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFD8, &qword_1C1E57E08);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1CFE0, &qword_1C1E57E10);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF763C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D030, &unk_1C1E57E40);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v13, &qword_1EBF1CFC0, &qword_1C1E57DF0);
      v5 = v13;
      v6 = v14;
      result = sub_1C1E33C1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C1DC7B3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF776C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D028, &qword_1C1E5AE60);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1C810, &qword_1C1E576E0);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D020, &qword_1C1E57E38);
    v3 = sub_1C1E54C3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1C1E33C1C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D000, &qword_1C1E57E20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
    v7 = sub_1C1E54C3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1DC1424(v9, v5, &qword_1EBF1D000, &qword_1C1E57E20);
      result = sub_1C1E33C94(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C1E51F9C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Function(0);
      result = sub_1C1DF7E98(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DF7B9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D010, &qword_1C1E57E30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
    v7 = sub_1C1E54C3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1DC1424(v9, v5, &qword_1EBF1D010, &qword_1C1E57E30);
      result = sub_1C1E33C94(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C1E51F9C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C1DF7D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF8, &qword_1C1E57E18);
  v3 = sub_1C1E54C3C();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1C1E33D2C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1C1E33D2C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DF7E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CalculateScrubber.formattedValue.getter()
{
  swift_getKeyPath();
  v7 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [v1 formattedResult];
LABEL_5:
    sub_1C1E545FC();

    return;
  }

  v3 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v7 = v0;
  sub_1C1E520BC();

  v4 = *(v0 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v4;
  sub_1C1DFF098(v3, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v7);

  v6 = sub_1C1E544FC();

  if (v6)
  {
    v2 = [v6 formattedResult];

    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
}

void CalculateScrubber.value.setter(void *a1, __n128 a2)
{
  v3 = a1;
  if (!a1)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v3 = sub_1C1E544FC();
  }

  v6 = a1;
  sub_1C1DFD1D4(v3);
  v5 = v4;

  sub_1C1DFCE18(v5);
}

uint64_t CalculateScrubber.didScrub.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_1C1DD6A34(v1, *(v3 + 64));
  return v1;
}

double sub_1C1DF8224(uint64_t a1)
{
  if (*(v1 + 104) == a1)
  {

    sub_1C1DFE054(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

void sub_1C1DF8354(char a1)
{
  if (*(v1 + 88) == (a1 & 1))
  {
    *(v1 + 88) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

uint64_t CalculateScrubber.didEndScrub.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_1C1DD6A34(v1, *(v3 + 80));
  return v1;
}

double CalculateScrubber.minValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16);
}

double sub_1C1DF85E0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void CalculateScrubber.minValue.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1DF87F0(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*CalculateScrubber.minValue.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF8984;
}

double CalculateScrubber.maxValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 24);
}

double sub_1C1DF8A44@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void CalculateScrubber.maxValue.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1DF8C54(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

uint64_t (*CalculateScrubber.maxValue.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF8DE8;
}

void *sub_1C1DF8DF4()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_1C1DF8E9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_1C1DF8F54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1E549BC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void *CalculateScrubber.step.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  result = *(v0 + 32);
  if (!result)
  {
    return result;
  }

  v2 = [result terms];
  sub_1C1DC0D28(0, &qword_1EBF1D048, 0x1E69922B0);
  v3 = sub_1C1E547EC();

  if (v3 >> 62)
  {
    result = sub_1C1E54ACC();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6910730](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_7:
    v5 = v4;

    v6 = [v5 value];

    [v6 doubleValue];
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1C1DF928C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
  }

  sub_1C1DF8F54(v1);
}

void CalculateScrubber.step.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = (v2 + 32);
    if (*(v2 + 32))
    {
      v4 = 0;
LABEL_14:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
      sub_1C1E520AC();

      return;
    }

    v10 = 0;
    v4 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v4 = v5;
    v3 = (v2 + 32);
    v6 = *(v2 + 32);
    if (v6)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
      v7 = v6;
      v8 = v4;
      v9 = sub_1C1E549BC();

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

      v10 = *v3;
    }

    else
    {
      if (v5)
      {
        goto LABEL_14;
      }

      v10 = 0;
    }
  }

  *v3 = v4;
}

void (*CalculateScrubber.step.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = CalculateScrubber.step.getter();
  *(a1 + 8) = v3 & 1;
  return sub_1C1DF9520;
}

void sub_1C1DF9520(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
  }

  sub_1C1DF8F54(v1);
}

uint64_t CalculateScrubber.didBeginScrub.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_1C1DD6A34(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_1C1DF9648@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF7B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4, v5);
}

double sub_1C1DF9748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C1DFF788;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v2, v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v5, v4);

  return result;
}

uint64_t sub_1C1DF98D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_1C1DD6A34(a2, a3);
  return sub_1C1DD0EB8(v6, v7);
}

uint64_t (*CalculateScrubber.didBeginScrub.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF9A94;
}

uint64_t sub_1C1DF9AA0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF840;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4, v5);
}

double sub_1C1DF9BA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C1DFF808;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v2, v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v5, v4);

  return result;
}

double sub_1C1DF9D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();
  a5(a1, a2);

  return result;
}

uint64_t sub_1C1DF9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1C1DD6A34(a2, a3);
  return sub_1C1DD0EB8(v6, v7);
}

uint64_t (*CalculateScrubber.didScrub.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DF9FD0;
}

uint64_t sub_1C1DF9FDC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1DFF9C0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1DD6A34(v4, v5);
}

double sub_1C1DFA0DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C1DFF9A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DD6A34(v2, v3);
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();
  sub_1C1DD0EB8(v5, v4);

  return result;
}

uint64_t sub_1C1DFA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  sub_1C1DD6A34(a2, a3);
  return sub_1C1DD0EB8(v6, v7);
}

uint64_t (*CalculateScrubber.didEndScrub.modify(uint64_t *a1))()
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
  v4[4] = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  swift_beginAccess();
  return sub_1C1DFA428;
}

void sub_1C1DFA434(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1C1E520CC();

  free(v3);
}

id sub_1C1DFA4B8()
{
  result = sub_1C1DFA4D8();
  qword_1EBF1D038 = result;
  return result;
}

id sub_1C1DFA4D8()
{
  v0 = sub_1C1E5207C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v8 = [v7 locale];
  if (v8)
  {
    v9 = v8;
    sub_1C1E5202C();

    (*(v1 + 56))(v6, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v6, 1, 1, v0);
  }

  sub_1C1DC1870(v6, &qword_1EBF1D058, &qword_1C1E57FB0);
  [v7 setNumberStyle_];
  sub_1C1E51FAC();
  v10 = sub_1C1E5200C();
  (*(v1 + 8))(v3, v0);
  [v7 setLocale_];

  [v7 setUsesGroupingSeparator_];
  return v7;
}

void sub_1C1DFA6DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v184 = a3;
  v190 = a2;
  v189 = a1;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D088, &qword_1C1E58150);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v164[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v167 = &v164[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v164[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v169 = &v164[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v164[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v164[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v164[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v164[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v164[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v164[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v164[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v164[-v26];
  v193 = sub_1C1E5443C();
  v183 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v164[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v192 = &v164[-v30];
  v31 = sub_1C1E51F9C();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v188 = &v164[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = sub_1C1E53CBC();
  v33 = *(v186 - 1);
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v164[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v164[-v36];
  v38 = sub_1C1E5207C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v164[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v42 setNumberStyle_];
  sub_1C1DC1424(v184, v37, &qword_1EBF1D058, &qword_1C1E57FB0);
  v43 = (*(v39 + 48))(v37, 1, v38);
  v168 = v20;
  v176 = v27;
  if (v43 == 1)
  {
    sub_1C1DC1870(v37, &qword_1EBF1D058, &qword_1C1E57FB0);
  }

  else
  {
    (*(v39 + 32))(v41, v37, v38);
    v44 = sub_1C1E5200C();
    [v42 setLocale_];

    (*(v39 + 8))(v41, v38);
  }

  [v42 setMaximumFractionDigits_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57E50;
  v46 = *MEMORY[0x1E6992278];
  *(inited + 32) = *MEMORY[0x1E6992278];
  v47 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v48 = v46;
  v49 = [v47 initWithUnsignedInteger_];
  v50 = sub_1C1DC0D28(0, &qword_1EBF1C808, 0x1E696AD98);
  *(inited + 40) = v49;
  v51 = *MEMORY[0x1E6992270];
  *(inited + 64) = v50;
  *(inited + 72) = v51;
  v52 = sub_1C1DC0D28(0, &qword_1EBF1D098, 0x1E696ADA0);
  *(inited + 80) = v42;
  v53 = *MEMORY[0x1E6992230];
  *(inited + 104) = v52;
  *(inited + 112) = v53;
  v54 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v55 = v51;
  v179 = v42;
  v56 = v53;
  v57 = [v54 initWithBool_];
  *(inited + 144) = v50;
  *(inited + 120) = v57;
  v58 = sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v60 = v185;
  *&v164[-16] = v185;
  *&v164[-8] = v58;
  v61 = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  v194[0] = v60;
  v62 = sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();
  v172 = 0;

  swift_getKeyPath();
  v194[0] = v60;

  v174 = v61;
  sub_1C1E520BC();

  (*(v33 + 104))(v187, *MEMORY[0x1E6992100], v186);

  v63 = v188;
  sub_1C1E51F8C();
  sub_1C1E5444C();
  swift_allocObject();
  v184 = sub_1C1E5445C();
  sub_1C1E53D1C();
  v64 = sub_1C1E53AEC();

  v194[0] = MEMORY[0x1E69E7CC0];
  if (v64 >> 62)
  {
LABEL_105:
    v65 = sub_1C1E54ACC();
  }

  else
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v182;
  v173 = v62;
  if (v65)
  {
    v60 = 0;
    v190 = v64 & 0xC000000000000001;
    v189 = v64 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v187) = *MEMORY[0x1E6992140];
    v186 = (v183 + 104);
    v63 = v183 + 8;
    v188 = v65;
    v62 = v191;
    while (1)
    {
      if (v190)
      {
        MEMORY[0x1C6910730](v60, v64);
        v67 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v73 = v194[0];
          v66 = v182;
          goto LABEL_20;
        }
      }

      else
      {
        if (v60 >= *(v189 + 16))
        {
          __break(1u);
          goto LABEL_105;
        }

        v67 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_17;
        }
      }

      v68 = v64;
      v69 = v192;
      sub_1C1E53D0C();
      v70 = v193;
      (*v186)(v62, v187, v193);
      sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
      v71 = sub_1C1E545AC();
      v72 = *v63;
      (*v63)(v62, v70);
      v72(v69, v70);
      if (v71)
      {
      }

      else
      {
        sub_1C1E54BAC();
        sub_1C1E54BDC();
        sub_1C1E54BEC();
        sub_1C1E54BBC();
      }

      v64 = v68;
      ++v60;
      if (v67 == v188)
      {
        goto LABEL_18;
      }
    }
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v74 = v185;
  if ((v73 & 0x8000000000000000) != 0 || (v73 & 0x4000000000000000) != 0)
  {
    if (sub_1C1E54ACC() != 2)
    {
      goto LABEL_62;
    }

    v187 = sub_1C1E54ACC();
    if (!v187)
    {
      v191 = v73;
      v187 = 0;
      v76 = 1;
      LODWORD(v190) = 1;
      v75 = v176;
      goto LABEL_28;
    }
  }

  else
  {
    if (*(v73 + 16) != 2)
    {
      goto LABEL_62;
    }

    v187 = 2;
  }

  v75 = v176;
  if ((v73 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6910730](0, v73);
  }

  else
  {
    if (!*(v73 + 16))
    {
      __break(1u);
      goto LABEL_114;
    }
  }

  v191 = v73;
  sub_1C1E53D0C();

  v76 = 0;
  LODWORD(v190) = 0;
LABEL_28:
  v77 = v183;
  v74 = (v183 + 56);
  v78 = *(v183 + 56);
  v79 = v193;
  v78(v75, v76, 1, v193);
  v80 = *MEMORY[0x1E69921A0];
  v188 = *(v77 + 104);
  (v188)(v66, v80, v79);
  v189 = v78;
  v78(v66, 0, 1, v79);
  v63 = *(v180 + 48);
  v81 = v178;
  sub_1C1DC1424(v75, v178, &qword_1EBF1D090, &qword_1C1E58158);
  v82 = v81;
  sub_1C1DC1424(v66, &v81[v63], &qword_1EBF1D090, &qword_1C1E58158);
  v83 = *(v77 + 48);
  if (v83(v81, 1, v79) != 1)
  {
    v87 = v81;
    v88 = v170;
    sub_1C1DC1424(v87, v170, &qword_1EBF1D090, &qword_1C1E58158);
    if (v83(v82 + v63, 1, v79) != 1)
    {
      v186 = v83;
      v89 = v183;
      v90 = v82 + v63;
      v91 = v192;
      (*(v183 + 32))(v192, v90, v79);
      sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
      v165 = sub_1C1E545AC();
      v92 = v88;
      v84 = *(v89 + 8);
      (v84)(v91, v79);
      v63 = &qword_1C1E58158;
      sub_1C1DC1870(v182, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v176, &qword_1EBF1D090, &qword_1C1E58158);
      (v84)(v92, v79);
      sub_1C1DC1870(v82, &qword_1EBF1D090, &qword_1C1E58158);
      v73 = v191;
      if (v165)
      {
        goto LABEL_36;
      }

LABEL_34:
      v74 = v185;
      goto LABEL_62;
    }

    sub_1C1DC1870(v182, &qword_1EBF1D090, &qword_1C1E58158);
    v85 = v178;
    sub_1C1DC1870(v176, &qword_1EBF1D090, &qword_1C1E58158);
    (*(v183 + 8))(v88, v79);
    v73 = v191;
LABEL_33:
    sub_1C1DC1870(v85, &qword_1EBF1D088, &qword_1C1E58150);
    goto LABEL_34;
  }

  v84 = &qword_1EBF1D090;
  sub_1C1DC1870(v66, &qword_1EBF1D090, &qword_1C1E58158);
  v85 = v178;
  sub_1C1DC1870(v75, &qword_1EBF1D090, &qword_1C1E58158);
  v186 = v83;
  v86 = v83(&v85[v63], 1, v79);
  v73 = v191;
  if (v86 != 1)
  {
    goto LABEL_33;
  }

  sub_1C1DC1870(v85, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_36:
  if (v190)
  {
    v93 = 1;
    v94 = v167;
    v63 = v168;
    goto LABEL_44;
  }

  v95 = v187 - 1;
  v94 = v167;
  v63 = v168;
  if (__OFSUB__(v187, 1))
  {
    goto LABEL_119;
  }

  if ((v73 & 0xC000000000000001) != 0)
  {
    goto LABEL_120;
  }

  if ((v95 & 0x8000000000000000) != 0)
  {
    goto LABEL_122;
  }

  if (v95 >= *(v73 + 16))
  {
    goto LABEL_125;
  }

  while (1)
  {
    sub_1C1E53D0C();

    v93 = 0;
LABEL_44:
    v96 = v193;
    v97 = v189;
    (v189)(v63, v93, 1, v193);
    v98 = v171;
    (v188)(v171, *MEMORY[0x1E6992178], v96);
    v97(v98, 0, 1, v96);
    v99 = v96;
    v84 = *(v180 + 48);
    sub_1C1DC1424(v63, v94, &qword_1EBF1D090, &qword_1C1E58158);
    sub_1C1DC1424(v98, v94 + v84, &qword_1EBF1D090, &qword_1C1E58158);
    v100 = v186;
    if (v186(v94, 1, v96) == 1)
    {
      break;
    }

    v102 = v166;
    sub_1C1DC1424(v94, v166, &qword_1EBF1D090, &qword_1C1E58158);
    v103 = v100(v94 + v84, 1, v96);
    v74 = v185;
    if (v103 == 1)
    {
      sub_1C1DC1870(v171, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v63, &qword_1EBF1D090, &qword_1C1E58158);
      (*(v183 + 8))(v102, v96);
      goto LABEL_49;
    }

    v104 = v183;
    v105 = v192;
    (*(v183 + 32))(v192, v94 + v84, v96);
    sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
    LODWORD(v191) = sub_1C1E545AC();
    v106 = v102;
    v84 = v104 + 8;
    v107 = *(v104 + 8);
    v107(v105, v99);
    v63 = &qword_1C1E58158;
    sub_1C1DC1870(v171, &qword_1EBF1D090, &qword_1C1E58158);
    sub_1C1DC1870(v168, &qword_1EBF1D090, &qword_1C1E58158);
    v107(v106, v99);
    sub_1C1DC1870(v94, &qword_1EBF1D090, &qword_1C1E58158);
    if (v191)
    {
      goto LABEL_51;
    }

    while (1)
    {
LABEL_62:
      v115 = sub_1C1E53D7C();
      if (v115)
      {
        v116 = v115;
        v117 = v115;
LABEL_67:
        v122 = v115;
        v123 = v116;
        goto LABEL_68;
      }

      v118 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
      v63 = swift_getKeyPath();
      v194[0] = v74;
      sub_1C1E520BC();

      v119 = *(v74 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194[0] = v119;
      v121 = v172;
      sub_1C1DFF098(v118, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v194);

      if (v121)
      {
        goto LABEL_132;
      }

      v117 = sub_1C1E544FC();

      if (v117)
      {
        v116 = v117;
        v115 = 0;
        goto LABEL_67;
      }

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v116 = sub_1C1E544FC();

      v123 = 0;
      v117 = v116;
LABEL_68:
      sub_1C1DFD1D4(v117);
      v125 = v124;

      sub_1C1DFCE18(v125);
      if (v73 >> 62)
      {
        v163 = sub_1C1E54ACC();
        v60 = v181;
        if (v163 != 1)
        {
          goto LABEL_80;
        }

        if (!sub_1C1E54ACC())
        {
          v127 = 1;
          v126 = v175;
          goto LABEL_74;
        }
      }

      else
      {
        v60 = v181;
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_80;
        }
      }

      if ((v73 & 0xC000000000000001) != 0)
      {
LABEL_114:
        MEMORY[0x1C6910730](0, v73);
        v126 = v175;
      }

      else
      {
        v126 = v175;
        if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_116:
          swift_once();
          goto LABEL_85;
        }
      }

      sub_1C1E53D0C();

      v127 = 0;
LABEL_74:
      v128 = v183;
      v129 = *(v183 + 56);
      v130 = v193;
      v129(v126, v127, 1, v193);
      (*(v128 + 104))(v60, *MEMORY[0x1E6992178], v130);
      v129(v60, 0, 1, v130);
      v131 = *(v180 + 48);
      v132 = v177;
      sub_1C1DC1424(v126, v177, &qword_1EBF1D090, &qword_1C1E58158);
      v133 = v132;
      sub_1C1DC1424(v60, &v132[v131], &qword_1EBF1D090, &qword_1C1E58158);
      v63 = v128 + 48;
      v134 = *(v128 + 48);
      if (v134(v133, 1, v130) == 1)
      {
        sub_1C1DC1870(v60, &qword_1EBF1D090, &qword_1C1E58158);
        v135 = v177;
        sub_1C1DC1870(v126, &qword_1EBF1D090, &qword_1C1E58158);
        if (v134(&v135[v131], 1, v130) != 1)
        {
          goto LABEL_79;
        }

        sub_1C1DC1870(v135, &qword_1EBF1D090, &qword_1C1E58158);
      }

      else
      {
        v136 = v169;
        sub_1C1DC1424(v133, v169, &qword_1EBF1D090, &qword_1C1E58158);
        if (v134((v133 + v131), 1, v130) == 1)
        {
          sub_1C1DC1870(v181, &qword_1EBF1D090, &qword_1C1E58158);
          v135 = v177;
          sub_1C1DC1870(v175, &qword_1EBF1D090, &qword_1C1E58158);
          (*(v183 + 8))(v136, v130);
LABEL_79:
          sub_1C1DC1870(v135, &qword_1EBF1D088, &qword_1C1E58150);
LABEL_80:

LABEL_81:

          return;
        }

        v137 = v183;
        v138 = v133 + v131;
        v139 = v192;
        (*(v183 + 32))(v192, v138, v130);
        sub_1C1DFF740(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
        v140 = v133;
        v141 = sub_1C1E545AC();
        v63 = *(v137 + 8);
        (v63)(v139, v130);
        sub_1C1DC1870(v181, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v175, &qword_1EBF1D090, &qword_1C1E58158);
        (v63)(v136, v130);
        sub_1C1DC1870(v140, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v141 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      if (qword_1EBF1C138 != -1)
      {
        goto LABEL_116;
      }

LABEL_85:
      v142 = qword_1EBF1D038;
      sub_1C1E53BDC();
      sub_1C1E53B0C();
      v84 = sub_1C1E545BC();

      v143 = sub_1C1E545BC();
      v144 = [v84 rangeOfString_];

      v145 = sub_1C1E545BC();
      v146 = [v84 rangeOfString_];

      v193 = sub_1C1E51DEC();
      if (v146 == v193)
      {
        v147 = [v84 length];
        goto LABEL_93;
      }

      v192 = v146;
      if (__OFADD__(v146, 1))
      {
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v148 = [v84 substringFromIndex_];
      v149 = sub_1C1E545FC();
      v151 = v150;

      v152 = sub_1C1DFC47C(v149, v151);
      v63 = (v153 & 1) != 0 ? 0 : v152;
      swift_getKeyPath();
      v194[0] = v74;
      sub_1C1E520BC();

      v194[0] = v74;
      swift_getKeyPath();
      sub_1C1E520DC();

      v154 = *(v74 + 17);
      v155 = __OFADD__(v154, v63);
      v156 = v154 + v63;
      if (!v155)
      {
        break;
      }

LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      MEMORY[0x1C6910730](0, v73);
LABEL_55:
      v108 = sub_1C1E53CFC();
      v110 = v109;

      v194[0] = v108;
      v194[1] = v110;
      v111 = v187 - 1;
      if (__OFSUB__(v187, 1))
      {
        __break(1u);
        goto LABEL_129;
      }

      if (v84)
      {
        MEMORY[0x1C6910730](v111, v73);
      }

      else
      {
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        if (v111 >= *(v73 + 16))
        {
          goto LABEL_131;
        }
      }

      v112 = sub_1C1E53CFC();
      v63 = v113;

      MEMORY[0x1C69102A0](v112, v63);

      sub_1C1E53B1C();
      sub_1C1E53D1C();
      v114 = sub_1C1E53AEC();

      v73 = v114;
    }

    *(v74 + 17) = v156;
    v194[0] = v74;
    swift_getKeyPath();
    sub_1C1E520CC();

    v146 = v192;
    v147 = v192;
LABEL_93:
    v95 = sub_1C1E51DEC();
    v157 = v147;
    v158 = v147;
    if (v144 == v95)
    {
      goto LABEL_96;
    }

    v158 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v157 = v144;
LABEL_96:
    v192 = v84;
    v94 = v147 - v158;
    if (__OFSUB__(v147, v158))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v194[0] = v74;
      v63 = v173;
      sub_1C1E520BC();

      v194[0] = v74;
      swift_getKeyPath();
      sub_1C1E520DC();

      v159 = *(v74 + 17);
      v155 = __OFSUB__(v159, v94);
      v160 = v159 - v94;
      if (!v155)
      {
        *(v74 + 17) = v160;
        v194[0] = v74;
        swift_getKeyPath();
        sub_1C1E520CC();

        if (v146 == v193)
        {
        }

        else
        {
          if (v157 <= 3)
          {
            v161 = 3;
          }

          else
          {
            v161 = v157;
          }

          v162 = v179;
          [v179 setMaximumIntegerDigits_];
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    MEMORY[0x1C6910730](v95, v73);
  }

  sub_1C1DC1870(v98, &qword_1EBF1D090, &qword_1C1E58158);
  sub_1C1DC1870(v63, &qword_1EBF1D090, &qword_1C1E58158);
  v101 = v100(v94 + v84, 1, v96);
  v74 = v185;
  if (v101 != 1)
  {
LABEL_49:
    sub_1C1DC1870(v94, &qword_1EBF1D088, &qword_1C1E58150);
    goto LABEL_62;
  }

  sub_1C1DC1870(v94, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_51:
  if (v190)
  {
    goto LABEL_126;
  }

  v84 = v73 & 0xC000000000000001;
  if ((v73 & 0xC000000000000001) != 0)
  {
    goto LABEL_127;
  }

  if (*(v73 + 16))
  {

    goto LABEL_55;
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:

  __break(1u);
}

uint64_t sub_1C1DFC3D8()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();
}

unint64_t sub_1C1DFC47C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1E54B9C();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1C1DFE648(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t CalculateScrubber.init(formattedValue:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  *(v2 + 16) = xmmword_1C1E57E60;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  v8 = objc_opt_self();
  v9 = [v8 lightConfiguration];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v9 view:0];

  *(v2 + 112) = v10;
  v11 = [v8 strongConfiguration];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v11 view:0];

  *(v2 + 120) = v12;
  *(v2 + 128) = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  *(v2 + 136) = 0;
  sub_1C1E520EC();
  v13 = sub_1C1E5207C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1C1DFA6DC(a1, a2, v7);
  LOBYTE(a1) = v14;

  sub_1C1DC1870(v7, &qword_1EBF1D058, &qword_1C1E57FB0);
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  return v2;
}

double sub_1C1DFC9B4(uint64_t a1)
{
  if (*(v1 + 136) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t CalculateScrubber.init(formattedValue:locale:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1C1E57E60;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 73) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  v7 = objc_opt_self();
  v8 = [v7 lightConfiguration];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v8 view:0];

  *(v3 + 112) = v9;
  v10 = [v7 strongConfiguration];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) initWithConfiguration:v10 view:0];

  *(v3 + 120) = v11;
  *(v3 + 128) = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
  *(v3 + 136) = 0;
  sub_1C1E520EC();
  sub_1C1DFA6DC(a1, a2, a3);
  LOBYTE(a1) = v12;

  sub_1C1DC1870(a3, &qword_1EBF1D058, &qword_1C1E57FB0);
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

uint64_t CalculateScrubber.isScrubbing.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 88);
}

void sub_1C1DFCD0C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 88);
}

void sub_1C1DFCDE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1DFCE18(v1);
}

void sub_1C1DFCE18(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
    sub_1C1E520AC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1DC0D28(0, &qword_1EBF1D050, 0x1E69922A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1E549BC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_1C1DFCFAC()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for CalculateScrubber(uint64_t a1)
{
  result = qword_1EBF1D078;
  if (!qword_1EBF1D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C1DFD0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_1C1DFD158(void **a1, __n128 a2)
{
  v2 = *a1;
  v3 = *a1;
  if (!*a1)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v3 = sub_1C1E544FC();
  }

  v4 = v2;
  sub_1C1DFD1D4(v3);
  v6 = v5;

  sub_1C1DFCE18(v6);
}

void sub_1C1DFD1D4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v25 = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v1 + 24) == INFINITY)
  {
    v4 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1E57DD0;
    v6 = *MEMORY[0x1E6992288];
    *(inited + 32) = *MEMORY[0x1E6992288];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1C1E55C40;
    *(v7 + 32) = 0x746C75736572;
    *(v7 + 40) = 0xE600000000000000;
    *(v7 + 48) = a1;
    *(v7 + 56) = 0x6C617678616DLL;
    *(v7 + 64) = 0xE600000000000000;
    swift_getKeyPath();
    v24[0] = v2;
    v8 = a1;
    v9 = v6;
    sub_1C1E520BC();

    *(v7 + 72) = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v10 = sub_1C1DF7894(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
    swift_arrayDestroy();
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
    *(inited + 40) = v10;
    v11 = sub_1C1DF776C(inited);
    swift_setDeallocating();
    sub_1C1DC1870(inited + 32, &qword_1EBF1C810, &qword_1C1E576E0);
    swift_getKeyPath();
    v24[0] = v2;
    sub_1C1E520BC();

    v12 = *(v2 + 128);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v12;
    sub_1C1DFF098(v11, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v24);

    a1 = sub_1C1E544FC();
  }

  swift_getKeyPath();
  v24[0] = v2;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v2 + 16) != -INFINITY)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1C1E57DD0;
    v15 = *MEMORY[0x1E6992288];
    *(v14 + 32) = *MEMORY[0x1E6992288];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1C1E55C40;
    *(v16 + 32) = 0x746C75736572;
    *(v16 + 40) = 0xE600000000000000;
    *(v16 + 48) = a1;
    *(v16 + 56) = 0x6C61766E696DLL;
    *(v16 + 64) = 0xE600000000000000;
    swift_getKeyPath();
    v23 = v2;
    v22 = a1;
    v17 = v15;
    sub_1C1E520BC();

    *(v16 + 72) = [objc_allocWithZone(MEMORY[0x1E69922A8]) initWithDouble_];
    v18 = sub_1C1DF7894(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
    swift_arrayDestroy();
    *(v14 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
    *(v14 + 40) = v18;
    v19 = sub_1C1DF776C(v14);
    swift_setDeallocating();
    sub_1C1DC1870(v14 + 32, &qword_1EBF1C810, &qword_1C1E576E0);
    swift_getKeyPath();
    v23 = v2;
    sub_1C1E520BC();

    v20 = *(v2 + 128);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v20;
    sub_1C1DFF098(v19, sub_1C1DFF048, 0, v21, &v23);

    sub_1C1E544FC();
  }
}

void (*CalculateScrubber.value.modify(void *a1))(void **a1, char a2, __n128 a3)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v3 = *(v1 + 96);
  *a1 = v3;
  v4 = v3;
  return sub_1C1DFD874;
}

void sub_1C1DFD874(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a1;
  if (a2)
  {
    if (!v3)
    {
      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v4 = sub_1C1E544FC();
    }

    v9 = v3;
    sub_1C1DFD1D4(v4);
    v6 = v5;

    sub_1C1DFCE18(v6);
  }

  else
  {
    if (!v3)
    {
      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v4 = sub_1C1E544FC();
    }

    v9 = v3;
    sub_1C1DFD1D4(v4);
    v8 = v7;

    sub_1C1DFCE18(v8);
  }
}

uint64_t CalculateScrubber.scrubberPositionValue.getter()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 104);
}

Swift::Void __swiftcall CalculateScrubber.didScrub(positionChange:)(Swift::Int positionChange)
{
  v2 = v1;
  swift_getKeyPath();
  v32 = v1;
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  v4 = v1[4];
  if (v4)
  {
    v5 = v1[4];
  }

  else
  {
    v32 = 0x202C303128776F70;
    v33 = 0xE800000000000000;
    swift_getKeyPath();
    v34[0] = v1;
    sub_1C1E520BC();

    v34[0] = v1[17];
    v6 = sub_1C1E54CFC();
    MEMORY[0x1C69102A0](v6);

    MEMORY[0x1C69102A0](41, 0xE100000000000000);
    v7 = sub_1C1DF776C(MEMORY[0x1E69E7CC0]);
    swift_getKeyPath();
    v32 = v1;
    sub_1C1E520BC();

    v8 = v1[16];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v8;
    sub_1C1DFF098(v7, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v32);

    v5 = sub_1C1E544FC();
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  v10 = v4;
  sub_1C1E54B4C();

  v32 = 0x202D2065756C6176;
  v33 = 0xE800000000000000;
  v34[0] = positionChange;
  v11 = sub_1C1E54CFC();
  MEMORY[0x1C69102A0](v11);

  MEMORY[0x1C69102A0](0x636E69202A20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57DD0;
  v13 = *MEMORY[0x1E6992288];
  *(inited + 32) = *MEMORY[0x1E6992288];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1C1E55C40;
  *(v14 + 32) = 0x65756C6176;
  *(v14 + 40) = 0xE500000000000000;
  swift_getKeyPath();
  v32 = v2;
  v15 = v13;
  sub_1C1E520BC();

  v16 = v2[12];
  *(v14 + 48) = v16;
  *(v14 + 56) = 6516329;
  *(v14 + 64) = 0xE300000000000000;
  *(v14 + 72) = v5;
  v17 = v5;
  v18 = v16;
  v19 = sub_1C1DF7894(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
  swift_arrayDestroy();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
  *(inited + 40) = v19;
  v20 = sub_1C1DF776C(inited);
  swift_setDeallocating();
  sub_1C1DC1870(inited + 32, &qword_1EBF1C810, &qword_1C1E576E0);
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  v21 = v2[16];

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v21;
  sub_1C1DFF098(v20, sub_1C1DFF048, 0, v22, &v32);

  v23 = sub_1C1E544FC();

  v24 = v23;
  if (!v23)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v24 = sub_1C1E544FC();
  }

  v25 = v23;
  sub_1C1DFD1D4(v24);
  v27 = v26;

  sub_1C1DFCE18(v27);
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  v28 = 14;
  if (!v2[13])
  {
    v28 = 15;
  }

  v29 = v2[v28];
  [v29 selectionChanged];
  swift_getKeyPath();
  v32 = v2;
  sub_1C1E520BC();

  swift_beginAccess();
  v30 = v2[7];
  if (v30)
  {
    v31 = v2[8];

    CalculateScrubber.formattedValue.getter();
    v30();

    sub_1C1DD0EB8(v30, v31);
  }

  else
  {

    v29 = v17;
  }
}

void sub_1C1DFE054(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  if (*(v1 + 104) != v2)
  {
    swift_getKeyPath();
    sub_1C1E520BC();

    v3 = *(v1 + 104);
    if (__OFSUB__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      CalculateScrubber.didScrub(positionChange:)(v3 - v2);
    }
  }
}

uint64_t sub_1C1DFE188()
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  return *(v0 + 136);
}

uint64_t sub_1C1DFE228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 128);
}

double sub_1C1DFE2D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520AC();

  return result;
}

void sub_1C1DFE3A0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DFF740(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 136);
}

uint64_t CalculateScrubber.deinit()
{
  sub_1C1DD0EB8(*(v0 + 40), *(v0 + 48));
  sub_1C1DD0EB8(*(v0 + 56), *(v0 + 64));
  sub_1C1DD0EB8(*(v0 + 72), *(v0 + 80));

  v1 = OBJC_IVAR____TtC11CalculateUI17CalculateScrubber___observationRegistrar;
  v2 = sub_1C1E520FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CalculateScrubber.__deallocating_deinit()
{
  CalculateScrubber.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C1DFE540(uint64_t a1)
{
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v2 = sub_1C1E54DAC();

  return sub_1C1DC7A38(a1, v2);
}

void *sub_1C1DFE5D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0A8, &qword_1C1E58160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1C1DFE648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1C1E5478C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1DFEBD4(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1C1E54B9C();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1C1DFEBD4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C1E5479C();
  v6 = sub_1C1DFEC54(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C1DFEC54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C1E549DC();
    if (!v9 || (v10 = v9, v11 = sub_1C1DFE5D4(v9, 0), v12 = sub_1C1DFEDAC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C1E5467C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C1E5467C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C1E54B9C();
LABEL_4:

  return sub_1C1E5467C();
}

unint64_t sub_1C1DFEDAC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C1DFEFCC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C1E5472C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C1E54B9C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C1DFEFCC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C1E5470C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C1DFEFCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C1E5473C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C69102F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_1C1DFF048@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C1DFF8A8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

void sub_1C1DFF098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_1C1E50E1C(&v41);
  v12 = v41;
  if (!v41)
  {
    goto LABEL_25;
  }

  sub_1C1DC7B3C(v42, v40);
  v13 = *a5;
  v14 = sub_1C1DC79A0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1E4FB9C(v19, a4 & 1);
    v14 = sub_1C1DC79A0(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey(0);
    v14 = sub_1C1E54D4C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    sub_1C1E506F4();
    v14 = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = v14;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1C1DC7B3C(v40, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 8 * v14) = v12;
  sub_1C1DC7B3C(v40, (v22[7] + 32 * v14));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1C1E50E1C(&v41);
    v12 = v41;
    if (v41)
    {
      v20 = 1;
      do
      {
        sub_1C1DC7B3C(v42, v40);
        v30 = *a5;
        v31 = sub_1C1DC79A0(v12);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v30[3] < v35)
        {
          sub_1C1E4FB9C(v35, 1);
          v31 = sub_1C1DC79A0(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          v28 = v31;

          v29 = (v37[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_1C1DC7B3C(v40, v29);
        }

        else
        {
          v37[(v31 >> 6) + 8] |= 1 << v31;
          *(v37[6] + 8 * v31) = v12;
          sub_1C1DC7B3C(v40, (v37[7] + 32 * v31));
          v38 = v37[2];
          v18 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v39;
        }

        sub_1C1E50E1C(&v41);
        v12 = v41;
      }

      while (v41);
    }

LABEL_25:
    sub_1C1DC7EA8(v43);

    return;
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_1C1DFF378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D028, &qword_1C1E5AE60);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1C810, &qword_1C1E576E0);
      v5 = v11;
      result = sub_1C1DFE540(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1DFF4A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C1DFF4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

void sub_1C1DFF548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_1C1DFF5E8(uint64_t a1)
{
  result = sub_1C1E520FC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C1DFF740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DFF808(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void sub_1C1DFF870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

uint64_t sub_1C1DFF8A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C1DFF904()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}

uint64_t sub_1C1DFF9C4()
{
  v0 = sub_1C1E522AC();
  __swift_allocate_value_buffer(v0, qword_1EBF20D40);
  __swift_project_value_buffer(v0, qword_1EBF20D40);

  return sub_1C1E5229C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C1DFFB1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C1E51F9C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C1E53CBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  if (sub_1C1E53D2C() == 1)
  {
    v10 = sub_1C1E53D7C();
    if (!v10)
    {
      if (qword_1EBF1C140 != -1)
      {
        swift_once();
      }

      v26 = sub_1C1E522AC();
      __swift_project_value_buffer(v26, qword_1EBF20D40);
      v27 = sub_1C1E5228C();
      v28 = sub_1C1E5491C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C1DBF000, v27, v28, "no expression result, skipping copy", v29, 2u);
        MEMORY[0x1C6911150](v29, -1, -1);
      }

      return 0;
    }

    v11 = v10;
    v46 = v1;
    sub_1C1E53B7C();
    v12 = *MEMORY[0x1E6992100];
    v45 = *(v4 + 104);
    v45(v6, v12, v3);
    v13 = sub_1C1E00ABC();
    sub_1C1E547BC();
    sub_1C1E547BC();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
    if (v47 == v49)
    {
      if (qword_1EBF1C140 != -1)
      {
        swift_once();
      }

      v15 = sub_1C1E522AC();
      __swift_project_value_buffer(v15, qword_1EBF20D40);
      v16 = sub_1C1E5228C();
      v17 = sub_1C1E5491C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1C1DBF000, v16, v17, "expression in base10, returning formattedResult", v18, 2u);
        MEMORY[0x1C6911150](v18, -1, -1);
      }

      v19 = [v11 formattedResult];
      v20 = sub_1C1E545FC();

      return v20;
    }

    v42 = v14;
    v44 = v13;
    v43 = v11;
    sub_1C1E53D9C();
    sub_1C1E53CCC();
    sub_1C1E51F8C();
    sub_1C1E53D6C();
    sub_1C1E53CEC();
    v30 = sub_1C1E53AAC();

    if (v30 >> 62)
    {
      if (sub_1C1E54ACC())
      {
        goto LABEL_21;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6910730](0, v30);
LABEL_24:

        sub_1C1E53B7C();
        v45(v6, *MEMORY[0x1E6992108], v3);
        sub_1C1E547BC();
        sub_1C1E547BC();
        v31 = v42;
        v42(v6, v3);
        v31(v9, v3);
        if (v47 == v49)
        {
          if (qword_1EBF1C140 != -1)
          {
            swift_once();
          }

          v32 = sub_1C1E522AC();
          __swift_project_value_buffer(v32, qword_1EBF20D40);
          v33 = sub_1C1E5228C();
          v34 = sub_1C1E5491C();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_1C1DBF000, v33, v34, "copying expression with base16 prefix", v35, 2u);
            MEMORY[0x1C6911150](v35, -1, -1);
          }

          v47 = 30768;
          v48 = 0xE200000000000000;
          v36 = sub_1C1E5439C();
          MEMORY[0x1C69102A0](v36);

          return v47;
        }

        else
        {
          v37 = sub_1C1E5439C();

          return v37;
        }
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (qword_1EBF1C140 == -1)
    {
LABEL_33:
      v38 = sub_1C1E522AC();
      __swift_project_value_buffer(v38, qword_1EBF20D40);
      v39 = sub_1C1E5228C();
      v40 = sub_1C1E5491C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1C1DBF000, v39, v40, "copy expression does not have any rich tokens, skipping copy", v41, 2u);
        MEMORY[0x1C6911150](v41, -1, -1);
      }

      return 0;
    }

LABEL_39:
    swift_once();
    goto LABEL_33;
  }

  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v22 = sub_1C1E522AC();
  __swift_project_value_buffer(v22, qword_1EBF20D40);
  v23 = sub_1C1E5228C();
  v24 = sub_1C1E5491C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C1DBF000, v23, v24, "engine is decimal, copying the plain expression", v25, 2u);
    MEMORY[0x1C6911150](v25, -1, -1);
  }

  return sub_1C1E53AFC();
}

uint64_t sub_1C1E0030C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1C1E5207C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E53CBC();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  sub_1C1E53B7C();
  v67 = a1;
  v68 = a2;
  v61[1] = a3;
  sub_1C1E53BBC();
  v19 = sub_1C1E51FFC();
  v21 = v20;
  v22 = (*(v7 + 8))(v9, v6);
  if (v21)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  if (!v21)
  {
    v21 = 0xE000000000000000;
  }

  v64 = v25;
  v65 = v21;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1C1DC733C(v22, v23, v24);
  v26 = sub_1C1E54A1C();
  v28 = v27;

  v71 = v26;
  v72 = v28;
  result = sub_1C1E5474C();
  if (result)
  {
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      goto LABEL_51;
    }

    result = sub_1C1DC9F68(v26, v28);
    if (!v31)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v32 = 1;
    goto LABEL_14;
  }

  if (sub_1C1E5474C())
  {
    v32 = 2;
LABEL_14:
    sub_1C1DD3370(v32);
    v34 = v62;
    v33 = v63;
    (*(v62 + 8))(v18, v63);
    v35 = MEMORY[0x1E69920F8];
LABEL_15:
    (*(v34 + 104))(v18, *v35, v33);
    goto LABEL_16;
  }

  if (sub_1C1E5474C())
  {
    sub_1C1DD3370(2);
LABEL_30:
    v34 = v62;
    v33 = v63;
    (*(v62 + 8))(v18, v63);
    v35 = MEMORY[0x1E6992108];
    goto LABEL_15;
  }

  v67 = v26;
  v68 = v28;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v49 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v69 = 0;
  v70 = v49;

  while (1)
  {
    sub_1C1E546EC();
    if (!v50)
    {
      break;
    }

    sub_1C1E5455C();
    v52 = v51;

    if (v52)
    {

      v34 = v62;
      v33 = v63;
      goto LABEL_16;
    }
  }

  v67 = v26;
  v68 = v28;
  v69 = 0;
  v70 = v49;

  while (1)
  {
    sub_1C1E546EC();
    if (!v53)
    {
      break;
    }

    v54 = sub_1C1E5457C();

    if ((v54 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v67 = v26;
  v68 = v28;
  v69 = 0;
  v70 = v49;

  v34 = v62;
  v33 = v63;
  do
  {
    sub_1C1E546EC();
    if (!v55)
    {

      goto LABEL_16;
    }

    v56 = sub_1C1E5456C();
    v58 = v57;
  }

  while ((v58 & 1) == 0 && v56 <= 7);

  sub_1C1E53B7C();
  v59 = *(v34 + 104);
  v59(v12, *MEMORY[0x1E69920F8], v33);
  sub_1C1E00ABC();
  sub_1C1E547BC();
  sub_1C1E547BC();
  v60 = *(v34 + 8);
  v60(v12, v33);
  v60(v15, v33);
  if (v67 == v64)
  {
    v60(v18, v33);
    v59(v18, *MEMORY[0x1E6992100], v33);
  }

LABEL_16:
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v36 = sub_1C1E522AC();
  __swift_project_value_buffer(v36, qword_1EBF20D40);
  v37 = sub_1C1E5228C();
  v38 = sub_1C1E5491C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    swift_beginAccess();
    *(v39 + 4) = sub_1C1E53CAC();
    _os_log_impl(&dword_1C1DBF000, v37, v38, "handlePaste: Attempting to paste a value with base%ld", v39, 0xCu);
    MEMORY[0x1C6911150](v39, -1, -1);
  }

  swift_beginAccess();
  result = sub_1C1E53CAC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_50;
  }

  v40 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = sub_1C1E5464C();

  v42 = strtoull((v41 + 32), 0, v40);

  v66 = v42;
  sub_1C1E54CFC();
  sub_1C1E53D9C();
  v43 = sub_1C1E544FC();

  if (v43)
  {
    sub_1C1E53C4C();
    v44 = v43;
    v45 = sub_1C1E53C5C();

    sub_1C1E53D8C();

    (*(v34 + 8))(v18, v33);
  }

  else
  {
    v46 = sub_1C1E5228C();
    v47 = sub_1C1E5491C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C1DBF000, v46, v47, "Unable to evaluate pasteboard string", v48, 2u);
      MEMORY[0x1C6911150](v48, -1, -1);
    }

    (*(v34 + 8))(v18, v33);
    return 0;
  }

  return v45;
}

unint64_t sub_1C1E00ABC()
{
  result = qword_1EDE738B8;
  if (!qword_1EDE738B8)
  {
    sub_1C1E53CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE738B8);
  }

  return result;
}

uint64_t sub_1C1E00B14(uint64_t a1, uint64_t a2)
{
  sub_1C1E53D9C();
  v2 = sub_1C1E544FC();

  if (v2)
  {
    sub_1C1E53C4C();
    v3 = v2;
    v4 = sub_1C1E53C5C();

    sub_1C1E53D8C();
  }

  else
  {
    if (qword_1EBF1C140 != -1)
    {
      swift_once();
    }

    v5 = sub_1C1E522AC();
    __swift_project_value_buffer(v5, qword_1EBF20D40);
    v6 = sub_1C1E5228C();
    v7 = sub_1C1E548FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C1DBF000, v6, v7, "Unable to evaluate pasteboard contents", v8, 2u);
      MEMORY[0x1C6911150](v8, -1, -1);
    }

    return 0;
  }

  return v4;
}

double sub_1C1E00C70()
{
  v1 = v0;
  v2 = *(v0 + 72);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (v2 == 2)
    {
      return result;
    }

LABEL_6:
    v8 = swift_weakLoadStrong();
    if (v8)
    {
      v9 = v8;
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
      sub_1C1E520BC();

      v10 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
      swift_beginAccess();
      v11 = *(v9 + v10);
    }

    else
    {
      v11 = 0;
    }

    *(v1 + 72) = v11;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;
    v16[5] = sub_1C1E04094;
    v16[6] = v12;

    sub_1C1E537BC();
    v17 = sub_1C1E03368(v50, v51, v52);

    *(v1 + 24) = v17;

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    v21[5] = sub_1C1E04094;
    v21[6] = v12;

    sub_1C1E537BC();
    v22 = sub_1C1E03368(v50, v51, v52);

    *(v1 + 32) = v22;

    sub_1C1E00C70();
    v23 = *(v1 + 24);

    sub_1C1E00C70();
    v24 = *(v1 + 32);

    sub_1C1E036B8(v23, v24);

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v25;
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = sub_1C1E04094;
    v28[6] = v12;

    sub_1C1E537BC();
    v29 = sub_1C1E03368(v50, v51, v52);

    *(v1 + 40) = v29;

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v32;
    v33[5] = sub_1C1E04094;
    v33[6] = v12;

    sub_1C1E537BC();
    v34 = sub_1C1E03368(v50, v51, v52);

    *(v1 + 48) = v34;

    sub_1C1E00C70();
    v35 = *(v1 + 40);

    sub_1C1E00C70();
    v36 = *(v1 + 48);

    sub_1C1E036B8(v35, v36);

    v37 = *(v1 + 72);
    if (v37 == 2 || (v37 & 1) != 0)
    {
      if (v37 != 2 && (v37 & 1) != 0)
      {
        v38 = swift_allocObject();
        swift_weakInit();
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v39[4] = v38;
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v41[4] = v40;
        v41[5] = sub_1C1E04094;
        v41[6] = v12;

        sub_1C1E537BC();
        v42 = sub_1C1E03368(v50, v51, v52);

        *(v1 + 56) = v42;

        v43 = swift_allocObject();
        swift_weakInit();
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v43;
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = 0;
        v46[4] = v45;
        v46[5] = sub_1C1E04094;
        v46[6] = v12;

        sub_1C1E537BC();
        v47 = sub_1C1E03368(v50, v51, v52);

        *(v1 + 64) = v47;

        sub_1C1E00C70();
        v48 = *(v1 + 56);

        sub_1C1E00C70();
        v49 = *(v1 + 64);

        sub_1C1E036B8(v48, v49);

LABEL_16:

        return result;
      }

      *(v1 + 24) = 0;

      *(v1 + 32) = 0;

      *(v1 + 40) = 0;

      *(v1 + 48) = 0;
    }

    *(v1 + 56) = 0;

    *(v1 + 64) = 0;
    goto LABEL_16;
  }

  v5 = Strong;
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  v7 = *(v5 + v6);

  if (v2 == 2 || ((v7 ^ v2) & 1) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

double sub_1C1E015B4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 73) = 1;
    v6 = Strong;
    a1();
    *(v6 + 73) = 0;
  }

  return result;
}

void sub_1C1E0162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      a5(a7, v12);
      sub_1C1E00C70();
      v13 = *(v10 + 24);

      sub_1C1E00C70();
      v14 = *(v10 + 32);

      sub_1C1E036B8(v13, v14);
    }
  }
}

void sub_1C1E01744(double (*a2)(uint64_t)@<X3>, double *a3@<X8>)
{
  swift_beginAccess();
  v5 = -5.0;
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
      sub_1C1E520BC();

      v5 = a2(v6);
    }
  }

  *a3 = v5;
}

void sub_1C1E01874(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), double a4)
{
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  a2(v7);
  v9 = v8;

  v11 = v9 + -0.0001;
  if (v9 + -0.0001 >= a4)
  {
    v11 = a4;
  }

  if (v11 > v9)
  {
    __break(1u);
  }

  else
  {
    a3(v10);
  }
}

void sub_1C1E01984(void (*a2)(uint64_t)@<X3>, double *a3@<X8>)
{
  swift_beginAccess();
  v5 = 5.0;
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
      sub_1C1E520BC();

      a2(v6);
      v5 = v7;
    }
  }

  *a3 = v5;
}

void sub_1C1E01AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      a5(a7, v12);
      sub_1C1E00C70();
      v13 = *(v10 + 40);

      sub_1C1E00C70();
      v14 = *(v10 + 48);

      sub_1C1E036B8(v13, v14);
    }
  }
}

void sub_1C1E01BCC(uint64_t a1, double (*a2)(uint64_t), void (*a3)(uint64_t, double), double a4)
{
  swift_getKeyPath();
  sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v8 = a2(v7);

  v10 = v8 + 0.0001;
  if (v8 + 0.0001 < a4)
  {
    v10 = a4;
  }

  if (v8 > v10)
  {
    __break(1u);
  }

  else
  {
    a3(v9, v8);
  }
}

void sub_1C1E01CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      a5(a7, v12);
      sub_1C1E00C70();
      v13 = *(v10 + 56);

      sub_1C1E00C70();
      v14 = *(v10 + 64);

      sub_1C1E036B8(v13, v14);
    }
  }
}

uint64_t sub_1C1E01DF4()
{
  sub_1C1E00C70();
}

uint64_t sub_1C1E01E20()
{
  sub_1C1E00C70();
}

uint64_t sub_1C1E01E4C()
{
  sub_1C1E00C70();
}

uint64_t sub_1C1E01E78()
{
  sub_1C1E00C70();
}

uint64_t sub_1C1E01EA4()
{
  sub_1C1E00C70();
}

uint64_t sub_1C1E01ED0()
{
  sub_1C1E00C70();
}

id sub_1C1E01EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setMinimumFractionDigits_];
  result = [v0 setMaximumFractionDigits_];
  qword_1EBF20D58 = v0;
  return result;
}

void sub_1C1E01F60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);

  sub_1C1E520BC();

  v7 = *(a6 + 96);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 terms];
  sub_1C1E03F38();
  v9 = sub_1C1E547EC();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sub_1C1E54ACC())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C6910730](0, v9);
    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_7:
    v11 = v10;

    v12 = [v11 value];

    [v12 doubleValue];
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0D0, &qword_1C1E582E0);
    sub_1C1E537AC();

    return;
  }

  __break(1u);
}

double sub_1C1E021D4(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520BC();

    sub_1C1E24AC8();
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520BC();

    sub_1C1E24CD4();
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520BC();

    sub_1C1E24EE0();
  }

  return result;
}

void (*sub_1C1E023E8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  return sub_1C1E03360;
}

void sub_1C1E02468(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + 73))
    {
      goto LABEL_49;
    }

    v3 = swift_weakLoadStrong();
    if (!v3)
    {
      goto LABEL_49;
    }

    v4 = v3;
    sub_1C1E00C70();
    if (v2[3])
    {
      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);

      sub_1C1E520BC();

      sub_1C1E24AC8();
      v6 = v5;

      if (qword_1EBF1C148 != -1)
      {
        swift_once();
      }

      v7 = qword_1EBF20D58;
      v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v9 = [v7 stringFromNumber_];

      if (!v9)
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_1C1E545FC();

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v10 = sub_1C1E544FC();

      v11 = v10;
      if (!v10)
      {
        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v11 = sub_1C1E544FC();
      }

      v12 = v10;
      sub_1C1DFD1D4(v11);
      v14 = v13;

      sub_1C1DFCE18(v14);
    }

    sub_1C1E00C70();
    if (!v2[4])
    {
LABEL_18:
      sub_1C1E00C70();
      v25 = v2[3];

      sub_1C1E00C70();
      v26 = v2[4];

      sub_1C1E036B8(v25, v26);

      sub_1C1E00C70();
      if (!v2[5])
      {
LABEL_25:
        sub_1C1E00C70();
        if (!v2[6])
        {
LABEL_32:
          sub_1C1E00C70();
          v47 = v2[5];

          sub_1C1E00C70();
          v48 = v2[6];

          sub_1C1E036B8(v47, v48);

          swift_getKeyPath();
          sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
          sub_1C1E520BC();

          v49 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
          swift_beginAccess();
          if (*(v4 + v49) != 1)
          {
LABEL_48:

LABEL_49:
            sub_1C1E5209C();

            return;
          }

          sub_1C1E00C70();
          if (!v2[7])
          {
            goto LABEL_40;
          }

          swift_getKeyPath();

          sub_1C1E520BC();

          sub_1C1E24EE0();
          v51 = v50;

          if (qword_1EBF1C148 != -1)
          {
            swift_once();
          }

          v52 = qword_1EBF20D58;
          v53 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          v54 = [v52 stringFromNumber_];

          if (v54)
          {
            sub_1C1E545FC();

            sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
            v55 = sub_1C1E544FC();

            v56 = v55;
            if (!v55)
            {
              sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
              v56 = sub_1C1E544FC();
            }

            v57 = v55;
            sub_1C1DFD1D4(v56);
            v59 = v58;

            sub_1C1DFCE18(v59);

LABEL_40:
            sub_1C1E00C70();
            if (!v2[8])
            {
LABEL_47:
              sub_1C1E00C70();
              v70 = v2[7];

              sub_1C1E00C70();
              v71 = v2[8];

              sub_1C1E036B8(v70, v71);

              goto LABEL_48;
            }

            swift_getKeyPath();

            sub_1C1E520BC();

            sub_1C1E24EE0();
            v61 = v60;

            if (qword_1EBF1C148 != -1)
            {
              swift_once();
            }

            v62 = qword_1EBF20D58;
            v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            v64 = [v62 stringFromNumber_];

            if (v64)
            {
              sub_1C1E545FC();

              sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
              v65 = sub_1C1E544FC();

              v66 = v65;
              if (!v65)
              {
                sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
                v66 = sub_1C1E544FC();
              }

              v67 = v65;
              sub_1C1DFD1D4(v66);
              v69 = v68;

              sub_1C1DFCE18(v69);

              goto LABEL_47;
            }

LABEL_56:
            __break(1u);
            return;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        swift_getKeyPath();
        sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);

        sub_1C1E520BC();

        sub_1C1E24CD4();
        v38 = v37;

        if (qword_1EBF1C148 != -1)
        {
          swift_once();
        }

        v39 = qword_1EBF20D58;
        v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v41 = [v39 stringFromNumber_];

        if (v41)
        {
          sub_1C1E545FC();

          sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
          v42 = sub_1C1E544FC();

          v43 = v42;
          if (!v42)
          {
            sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
            v43 = sub_1C1E544FC();
          }

          v44 = v42;
          sub_1C1DFD1D4(v43);
          v46 = v45;

          sub_1C1DFCE18(v46);

          goto LABEL_32;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      swift_getKeyPath();
      sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);

      sub_1C1E520BC();

      sub_1C1E24CD4();
      v28 = v27;

      if (qword_1EBF1C148 != -1)
      {
        swift_once();
      }

      v29 = qword_1EBF20D58;
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v31 = [v29 stringFromNumber_];

      if (v31)
      {
        sub_1C1E545FC();

        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v32 = sub_1C1E544FC();

        v33 = v32;
        if (!v32)
        {
          sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
          v33 = sub_1C1E544FC();
        }

        v34 = v32;
        sub_1C1DFD1D4(v33);
        v36 = v35;

        sub_1C1DFCE18(v36);

        goto LABEL_25;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    swift_getKeyPath();
    sub_1C1E03EF0(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);

    sub_1C1E520BC();

    sub_1C1E24AC8();
    v16 = v15;

    if (qword_1EBF1C148 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBF20D58;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v19 = [v17 stringFromNumber_];

    if (v19)
    {
      sub_1C1E545FC();

      sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
      v20 = sub_1C1E544FC();

      v21 = v20;
      if (!v20)
      {
        sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
        v21 = sub_1C1E544FC();
      }

      v22 = v20;
      sub_1C1DFD1D4(v21);
      v24 = v23;

      sub_1C1DFCE18(v24);

      goto LABEL_18;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }
}

void *CalculateGraph.Bounds.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t CalculateGraph.Bounds.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1C1E03368(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D058, &qword_1C1E57FB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24[-v7];
  if (qword_1EBF1C148 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBF20D58;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0D0, &qword_1C1E582E0);
  MEMORY[0x1C690F370](&v25, v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v12 = [v9 stringFromNumber_];

  if (v12)
  {
    v13 = sub_1C1E545FC();
    v15 = v14;
  }

  else
  {
    v15 = 0xE100000000000000;
    v13 = 48;
  }

  v16 = [v9 locale];
  if (v16)
  {
    v17 = v16;
    sub_1C1E5202C();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1C1E5207C();
  (*(*(v19 - 8) + 56))(v8, v18, 1, v19);
  type metadata accessor for CalculateScrubber(0);
  swift_allocObject();

  result = CalculateScrubber.init(formattedValue:locale:)(v13, v15, v8);
  if (result)
  {
    v21 = result;

    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;
    *(v22 + 32) = a3;
    *(v22 + 40) = v21;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v24[-32] = v21;
    *&v24[-24] = sub_1C1E044BC;
    *&v24[-16] = v22;
    v26 = v21;
    sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);

    sub_1C1E520AC();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C1E036B8(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v5 = *MEMORY[0x1E6992260];
  *(inited + 32) = *MEMORY[0x1E6992260];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0C0, &qword_1C1E58258);
  sub_1C1E5207C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1E57DD0;
  v7 = v5;

  sub_1C1E51FAC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0C8, &qword_1C1E58260);
  *(inited + 40) = v6;
  v9 = *MEMORY[0x1E6992288];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D060, &qword_1C1E58038);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1C1E55C40;
  *(v10 + 32) = 0x7265776F6CLL;
  *(v10 + 40) = 0xE500000000000000;
  swift_getKeyPath();
  sub_1C1E03EF0(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber, &protocol conformance descriptor for CalculateScrubber);
  v11 = v9;
  sub_1C1E520BC();

  v12 = *(a1 + 96);
  *(v10 + 48) = v12;
  *(v10 + 56) = 0x7265707075;
  *(v10 + 64) = 0xE500000000000000;
  swift_getKeyPath();
  v13 = v12;
  sub_1C1E520BC();

  v14 = *(a2 + 96);
  *(v10 + 72) = v14;
  v15 = v14;
  v16 = sub_1C1DF7894(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D068, &qword_1C1E58040);
  swift_arrayDestroy();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D070, &unk_1C1E58048);
  *(inited + 80) = v16;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  v17 = sub_1C1E544FC();

  v18 = 0.01;
  if (v17)
  {
    v19 = [v17 terms];
    sub_1C1E03F38();
    v20 = sub_1C1E547EC();

    if (v20 >> 62)
    {
      v21 = sub_1C1E54ACC();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6910730](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v22 = *(v20 + 32);
      }

      v23 = v22;

      v24 = [v23 value];

      [v24 doubleValue];
      v18 = v25;
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v26 = *(a2 + 96);
  v27 = 0.0;
  if (!v26)
  {
    goto LABEL_23;
  }

  v28 = [v26 terms];
  sub_1C1E03F38();
  v29 = sub_1C1E547EC();

  if (v29 >> 62)
  {
    if (sub_1C1E54ACC())
    {
      goto LABEL_16;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1C6910730](0, v29);
      goto LABEL_19;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
LABEL_19:
      v31 = v30;

      v32 = [v31 value];

      [v32 doubleValue];
      v27 = v33;

      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_23:
  v34 = v27 - v18;
  swift_beginAccess();
  if (*(a1 + 24) == v34)
  {
    *(a1 + 24) = v34;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E520AC();
  }

  v36 = v17;
  sub_1C1DF8F54(v17);
  swift_getKeyPath();
  sub_1C1E520BC();

  v37 = *(a1 + 96);
  v38 = 0.0;
  if (!v37)
  {
    goto LABEL_35;
  }

  v39 = [v37 &selRef_sceneCaptureState + 7];
  sub_1C1E03F38();
  v40 = sub_1C1E547EC();

  if (!(v40 >> 62))
  {
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!sub_1C1E54ACC())
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1C6910730](0, v40);
    goto LABEL_32;
  }

  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    __break(1u);
    return;
  }

  v41 = *(v40 + 32);
LABEL_32:
  v42 = v41;

  v43 = [v42 value];

  [v43 doubleValue];
  v38 = v44;

LABEL_35:
  v45 = v18 + v38;
  swift_beginAccess();
  if (*(a2 + 16) == v45)
  {
    *(a2 + 16) = v45;
  }

  else
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    sub_1C1E520AC();
  }

  sub_1C1DF8F54(v17);
}

uint64_t sub_1C1E03EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1E03F38()
{
  result = qword_1EBF1D048;
  if (!qword_1EBF1D048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D048);
  }

  return result;
}

uint64_t *sub_1C1E03FC4(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 72) = 2;
  swift_weakAssign();
  sub_1C1E5209C();
  return v1;
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1E0451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1DD0C3C(a1, a2, a3);
  sub_1C1E52B8C();
  return v4;
}

void sub_1C1E04670(void *a1)
{
  v2 = v1;
  v4 = [v2 view];
  [a1 locationInView_];

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v18.origin.x = v8;
    v18.origin.y = v10;
    v18.size.width = v12;
    v18.size.height = v14;
    CGRectGetMaxY(v18);
    sub_1C1DC0D28(0, &qword_1EBF1D178, 0x1E69DC9D8);
    v16 = sub_1C1E5497C();
    [v16 setPreferredArrowDirection_];
    v15 = *&v2[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction];
    [v15 presentEditMenuWithConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1E049A0()
{
  v1 = sub_1C1E5463C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard + 8);
    v4 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision);
    if (v4)
    {
      v5 = *(v0 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision + 8);
      sub_1C1DD6A34(v2, v3);
      v6 = sub_1C1DD6A34(v4, v5);
      v7 = v4(v6);
      sub_1C1DD0EB8(v4, v5);
      if (v7)
      {
        v8 = [objc_opt_self() generalPasteboard];
        v9 = sub_1C1E545BC();
        v10 = [v8 dataForPasteboardType_];

        if (v10)
        {
          v11 = sub_1C1E51EDC();
          v13 = v12;

          sub_1C1E5462C();
          v14 = sub_1C1E5460C();
          if (v15)
          {
            v2(v14);

            sub_1C1DD0EB8(v2, v3);
            sub_1C1E05078(v11, v13);
            return;
          }

          sub_1C1E05078(v11, v13);
        }
      }
    }

    else
    {
    }

    v16 = [objc_opt_self() generalPasteboard];
    v17 = [v16 string];

    if (v17)
    {
      v18 = sub_1C1E545FC();
      v20 = v19;

      (v2)(v18, v20);
    }

    sub_1C1DD0EB8(v2, v3);
  }
}

id sub_1C1E04DD0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = 0;
  v3 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PlatformViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1C1E04EC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C1E04F84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C1E04FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1DD0850(a1, a2, a3);
  sub_1C1E52EEC();
  __break(1u);
}

unint64_t sub_1C1E05010()
{
  result = qword_1EBF1D188;
  if (!qword_1EBF1D188)
  {
    sub_1C1DC0D28(255, &qword_1EBF1D180, 0x1E69DCDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D188);
  }

  return result;
}

double sub_1C1E05078(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

char *sub_1C1E050CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D198, &qword_1C1E58478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C1E051D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D1A0, &unk_1C1E58480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1C1E052F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D198, &qword_1C1E58478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E57DD0;
  *(inited + 32) = sel_copy_;
  v2 = objc_opt_self();
  v3 = [v2 generalPasteboard];
  v4 = [v3 hasStrings];

  if (v4 & 1) != 0 || (v5 = [v2 generalPasteboard], v6 = sub_1C1E547DC(), v7 = objc_msgSend(v5, sel_containsPasteboardTypes_, v6), v5, v6, (v7))
  {
    v8 = 2;
    v9 = sub_1C1E050CC(1, 2, 1, inited);
    *(v9 + 2) = 2;
    *(v9 + 5) = sel_paste_;
  }

  else
  {
    v8 = *(inited + 16);
  }

  v10 = 32;
  do
  {
    v11 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v10 += 8;
  }

  while ((sub_1C1E5208C() & 1) == 0);

  return v11 != 0;
}

uint64_t sub_1C1E054A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t StocksKitCurrencyCache.Provider.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for StocksKitCurrencyCache.Provider(uint64_t a1)
{
  result = qword_1EDE73898;
  if (!qword_1EDE73898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StocksKitCurrencyCache.Provider.logo.getter()
{
  type metadata accessor for StocksKitCurrencyCache.Provider(0);
}

uint64_t StocksKitCurrencyCache.providerLogo()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v2 = sub_1C1E544AC();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v5 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1C1E05734;

  return v5(v1);
}

uint64_t sub_1C1E05734()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1E05830, 0, 0);
}

uint64_t sub_1C1E05830()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
  }

  else
  {
    v5 = v0[5];
    (*(v2 + 32))(v5, v3, v1);
    sub_1C1E0701C();
    v4 = v6;
    (*(v2 + 8))(v5, v1);
  }

  v7 = v0[1];

  return v7(v4);
}

double sub_1C1E05940(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_1C1E5485C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C1E58598;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1E585A0;
  v12[5] = v11;
  v13 = a1;
  sub_1C1E06B30(0, 0, v7, &unk_1C1E585A8, v12);

  return result;
}

uint64_t sub_1C1E05AB4(const void *a1, void *a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500);
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = sub_1C1E544AC();
  v2[4] = v6;
  v2[5] = *(v6 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = _Block_copy(a1);
  v9 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  a2;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_1C1E05C24;

  return v9(v5);
}

uint64_t sub_1C1E05C24()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1E05D20, 0, 0);
}

uint64_t sub_1C1E05D20()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    (*(v2 + 32))(v5, v3, v1);
    sub_1C1E0701C();
    v4 = v7;

    (*(v2 + 8))(v5, v1);
  }

  v8 = *(v0 + 56);
  (v8)[2](v8, v4);
  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t StocksKitCurrencyCache.providerName()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v2 = sub_1C1E544AC();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v5 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1C1E05FAC;

  return v5(v1);
}

uint64_t sub_1C1E05FAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1E060A8, 0, 0);
}

uint64_t sub_1C1E060A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v0[5];
    (*(v2 + 32))(v6, v3, v1);
    v4 = sub_1C1E5449C();
    v5 = v7;
    (*(v2 + 8))(v6, v1);
  }

  v8 = v0[1];

  return v8(v4, v5);
}

double sub_1C1E061CC(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_1C1E5485C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C1E58550;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1E58560;
  v12[5] = v11;
  v13 = a1;
  sub_1C1E06B30(0, 0, v7, &unk_1C1E58570, v12);

  return result;
}

uint64_t sub_1C1E06340(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C1E063E8;

  return StocksKitCurrencyCache.providerName()();
}

uint64_t sub_1C1E063E8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_1C1E545BC();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t StocksKitCurrencyCache.provider.getter(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C8, &qword_1C1E58500);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = sub_1C1E544AC();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v6 = (*MEMORY[0x1E69921E8] + MEMORY[0x1E69921E8]);
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_1C1E06694;

  return v6(v2);
}

uint64_t sub_1C1E06694()
{

  return MEMORY[0x1EEE6DFA0](sub_1C1E06790, 0, 0);
}

uint64_t sub_1C1E06790()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    sub_1C1DC1870(v3, &qword_1EBF1D1C8, &qword_1C1E58500);
    v5 = type metadata accessor for StocksKitCurrencyCache.Provider(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    (*(v2 + 32))(v0[6], v3, v1);
    sub_1C1E0701C();
    if (v6)
    {
      v7 = sub_1C1E5369C();
    }

    else
    {
      v7 = 0;
    }

    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = v0[2];
    v12 = sub_1C1E5449C();
    v14 = v13;
    v15 = type metadata accessor for StocksKitCurrencyCache.Provider(0);
    sub_1C1E5447C();
    (*(v9 + 8))(v8, v10);
    *v11 = v12;
    v11[1] = v14;
    *(v11 + *(v15 + 24)) = v7;
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C1E06960(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C1DE184C;

  return v6();
}

uint64_t sub_1C1E06A48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C1DE1518;

  return v7();
}

uint64_t sub_1C1E06B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C1DC1424(a3, v23 - v10, &qword_1EBF1C748, &qword_1C1E56E20);
  v12 = sub_1C1E5485C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1DC1870(v11, &qword_1EBF1C748, &qword_1C1E56E20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C1E5484C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C1E5481C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C1E5464C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

    return v21;
  }

LABEL_8:
  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C1E06E2C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1E06F24;

  return v6(a1);
}

uint64_t sub_1C1E06F24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1C1E0701C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1E0, &unk_1C1E585B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v35 - v1;
  v3 = sub_1C1E544EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E5448C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1C1DC1870(v2, &qword_1EBF1D1E0, &unk_1C1E585B0);
    return;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = sub_1C1E544CC();
  v9 = v8;
  sub_1C1E544DC();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v13 = sub_1C1E51ECC();
  v14 = [v12 initWithData:v13 scale:v11];

  v15 = sub_1C1E05078(v7, v9);
  if (!v14)
  {
    (*(v4 + 8))(v6, v3, v15);
    return;
  }

  v16 = sub_1C1E544BC();
  if (v17 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  sub_1C1E07B0C(v16, v17);
  sub_1C1E544DC();
  v22 = v21;
  v23 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v24 = sub_1C1E51ECC();
  v25 = [v23 initWithData:v24 scale:v22];

  v26 = sub_1C1E07B60(v19, v20);
  if (!v25)
  {
    v18 = sub_1C1E07B60(v19, v20);
LABEL_13:
    v33 = [v14 imageWithRenderingMode_];
    v34 = [objc_opt_self() whiteColor];
    [v33 imageWithTintColor_];

    (*(v4 + 8))(v6, v3);
    return;
  }

  v27 = [v14 imageAsset];
  if (!v27)
  {
    sub_1C1E07B60(v19, v20);
    goto LABEL_12;
  }

  v35 = &v35;
  v36 = v27;
  MEMORY[0x1EEE9AC00](v27);
  *(&v35 - 2) = v6;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C1E07B74;
  *(v28 + 24) = &v35 - 4;
  aBlock[4] = sub_1C1E07BCC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1E054A4;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);
  v30 = objc_opt_self();

  v31 = [v30 traitCollectionWithTraits_];
  _Block_release(v29);

  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v32 = v36;
    [v36 registerImage:v25 withTraitCollection:v31];
    sub_1C1E07B60(v19, v20);

LABEL_12:
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1C1E074FC(uint64_t a1)
{
  sub_1C1E07590(319);
  if (v1 <= 0x3F)
  {
    sub_1C1E075E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1E07590(uint64_t a1)
{
  if (!qword_1EDE750A8)
  {
    sub_1C1E51EBC();
    v1 = sub_1C1E549CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE750A8);
    }
  }
}

void sub_1C1E075E8()
{
  if (!qword_1EBF1D1D0)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1D1D0);
    }
  }
}

uint64_t sub_1C1E07638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1DE184C;

  return sub_1C1E06340(v2, v3);
}

uint64_t sub_1C1E076E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1DE184C;

  return sub_1C1E06960(v2, v3, v4);
}

uint64_t sub_1C1E077A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1DE184C;

  return sub_1C1E06A48(a1, v4, v5, v6);
}

uint64_t sub_1C1E07870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1DE184C;

  return sub_1C1E06E2C(a1, v4);
}

uint64_t sub_1C1E07928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1DE1518;

  return sub_1C1E06E2C(a1, v4);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1E07A20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1DE1518;

  return sub_1C1E05AB4(v2, v3);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1E07B0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_1C1E07B60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1E05078(a1, a2);
  }

  return result;
}

id sub_1C1E07B74(void *a1)
{
  sub_1C1E544DC();
  [a1 setDisplayScale_];

  return [a1 setUserInterfaceStyle_];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1E07C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1E07C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C1E07CC8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E545BC();
  CTFontCreateWithNameAndOptions(v2, v1[2], 0, 0x20000uLL);

  sub_1C1E530DC();
  sub_1C1E5308C();
  sub_1C1E530BC();

  sub_1C1E5309C();

  if (v1[3])
  {
    *(&v62 + 1) = v1[1];
    sub_1C1DC733C(v3, v4, v5);

    v6 = sub_1C1E5316C();
    v8 = v7;
    v10 = v9;
    *&v62 = sub_1C1E5355C();
    v11 = sub_1C1E530FC();
    v13 = v12;
    v15 = v14;
    sub_1C1DECF2C(v6, v8, v10 & 1);

    v16 = sub_1C1E5311C();
    v18 = v17;
    LOBYTE(v6) = v19;

    sub_1C1DECF2C(v11, v13, v15 & 1);

    v20 = v6 & 1;
    sub_1C1E082A0(v16, v18, v6 & 1);

    sub_1C1E082A0(v16, v18, v6 & 1);

    sub_1C1E52CEC();
    v59 = v62;
    v60 = v63;
    v61 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
    sub_1C1E082B0();
    sub_1C1E52CEC();
  }

  else
  {
    v21 = *(v1 + 4);
    v67[0] = v21;
    if (!v21)
    {
      v45 = *(v1 + 1);
      *&v62 = *v1;
      *(&v62 + 1) = v45;
      sub_1C1DC733C(v3, v4, v5);

      v46 = sub_1C1E5316C();
      v48 = v47;
      v50 = v49;

      v51 = sub_1C1E5311C();
      v53 = v52;
      v55 = v54;
      v57 = v56;

      sub_1C1DECF2C(v46, v48, v50 & 1);

      *&v59 = v51;
      *(&v59 + 1) = v53;
      *&v60 = v55 & 1;
      *(&v60 + 1) = v57;
      v61 = 256;
      sub_1C1E082A0(v51, v53, v55 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
      sub_1C1E082B0();
      sub_1C1E52CEC();

      sub_1C1DECF2C(v51, v53, v55 & 1);
      goto LABEL_6;
    }

    v66 = *v1;
    v62 = *v1;
    sub_1C1E0832C(v67, &v59);
    v22 = sub_1C1E0839C(&v66, &v59);
    sub_1C1DC733C(v22, v23, v24);
    v25 = sub_1C1E5316C();
    v27 = v26;
    v29 = v28;
    *&v62 = v21;
    v30 = sub_1C1E530FC();
    v32 = v31;
    v34 = v33;
    sub_1C1DECF2C(v25, v27, v29 & 1);

    v16 = sub_1C1E5311C();
    v18 = v35;
    LOBYTE(v25) = v36;
    v38 = v37;

    sub_1C1DECF2C(v30, v32, v34 & 1);

    v20 = v25 & 1;
    *&v59 = v16;
    *(&v59 + 1) = v18;
    *&v60 = v25 & 1;
    *(&v60 + 1) = v38;
    LOBYTE(v61) = 1;
    sub_1C1E082A0(v16, v18, v25 & 1);

    sub_1C1E082A0(v16, v18, v25 & 1);

    sub_1C1E52CEC();
    v39 = v62;
    v40 = v63;
    v59 = v62;
    v60 = v63;
    v61 = v64;
    sub_1C1E083F8(v62, *(&v62 + 1), v63, *(&v63 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D250, &qword_1C1E58650);
    sub_1C1E082B0();
    sub_1C1E52CEC();
    sub_1C1E08434(v67);
    sub_1C1E0849C(v39, *(&v39 + 1), v40, *(&v40 + 1));
  }

  sub_1C1DECF2C(v16, v18, v20);

  sub_1C1DECF2C(v16, v18, v20);
LABEL_6:

  result = *&v62;
  v42 = v63;
  v43 = v64;
  v44 = v65;
  *a1 = v62;
  *(a1 + 16) = v42;
  *(a1 + 32) = v43;
  *(a1 + 33) = v44;
  return result;
}

uint64_t sub_1C1E082A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1E082B0()
{
  result = qword_1EBF1D258;
  if (!qword_1EBF1D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D250, &qword_1C1E58650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D258);
  }

  return result;
}

uint64_t sub_1C1E0832C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D260, &qword_1C1E58658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E083F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C1E082A0(a1, a2, a3 & 1);
}

uint64_t sub_1C1E08434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D260, &qword_1C1E58658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C1E0849C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C1DECF2C(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_1C1E084D8()
{
  result = qword_1EBF1D268;
  if (!qword_1EBF1D268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D270, &qword_1C1E58660);
    sub_1C1E082B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D268);
  }

  return result;
}

uint64_t sub_1C1E08564()
{
  v0 = sub_1C1E5216C();
  __swift_allocate_value_buffer(v0, qword_1EBF20D60);
  __swift_project_value_buffer(v0, qword_1EBF20D60);
  sub_1C1E5215C();
  return sub_1C1E5214C();
}

uint64_t sub_1C1E085BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if (a2[2])
    {
      return sub_1C1E263C0(v3, *a2);
    }

    return 0;
  }

  if (a2[2])
  {
    return 0;
  }

  v5 = a1[1];
  if (v3 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C1E54D2C();
  }
}

uint64_t sub_1C1E08614@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_1C1E08620(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1C1E09880(v5, v7);
}

void sub_1C1E0867C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, void *a7, char **a8)
{
  v73 = a6;
  v74 = a8;
  v10 = sub_1C1E51F9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1E51E2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v68 = a7;
    v69 = v13;
    v70 = v11;
    v71 = v10;
    v18 = a1;
    v19 = sub_1C1E545BC();
    v20 = [v18 rangeAtIndex_];
    v22 = [v19 substringWithRange_];

    v23 = sub_1C1E545FC();
    v25 = v24;

    v75 = v23;
    v76 = v25;
    v26 = sub_1C1E51E0C();
    sub_1C1DC733C(v26, v27, v28);
    v29 = sub_1C1E549FC();
    v31 = v30;
    (*(v15 + 8))(v17, v14);

    v32 = sub_1C1E545BC();
    v72 = v18;
    v33 = [v18 rangeAtIndex_];
    v35 = [v32 substringWithRange_];

    v36 = sub_1C1E545FC();
    v66 = v37;
    v67 = v36;

    v38 = v73;
    if (*v73)
    {
      goto LABEL_6;
    }

    v39 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v39 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
LABEL_6:
      v40 = 0;
    }

    else
    {

      v40 = sub_1C1E5363C();
      v31 = 0xE100000000000000;
      v29 = 43;
    }

    v42 = v70;
    v41 = v71;
    v43 = sub_1C1E545BC();
    v44 = sub_1C1E545BC();
    v45 = [v44 length];

    v46 = [v68 firstMatchInString:v43 options:0 range:{0, v45}];
    if (v46)
    {
      v47 = sub_1C1E545BC();
      v48 = [v46 rangeAtIndex_];
      v50 = [v47 substringWithRange_];

      v29 = sub_1C1E545FC();
      v52 = v51;

      v31 = v52;
    }

    v53 = v69;
    sub_1C1E51F8C();
    v54 = sub_1C1E51F6C();
    v56 = v55;
    (*(v42 + 8))(v53, v41);
    v57 = v74;
    v58 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v57 = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_1C1E051D0(0, *(v58 + 2) + 1, 1, v58);
      *v57 = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      *v57 = sub_1C1E051D0((v60 > 1), v61 + 1, 1, v58);
    }

    v62 = *v57;
    *(v62 + 2) = v61 + 1;
    v63 = &v62[56 * v61];
    *(v63 + 4) = v54;
    *(v63 + 5) = v56;
    v64 = v66;
    *(v63 + 6) = v67;
    *(v63 + 7) = v64;
    *(v63 + 8) = v29;
    *(v63 + 9) = v31;
    *(v63 + 10) = v40;
    *v38 = 0;
  }
}

void sub_1C1E08AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_1C1E08B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D278, &qword_1C1E587D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - v6;
  v7 = sub_1C1E5216C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D280, &qword_1C1E587D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_1C1E521EC();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D288, &unk_1C1E587E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_1C1E5223C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v54[0] = 36;
  v54[1] = 0xE100000000000000;
  v47 = a1;
  v52 = a2;
  MEMORY[0x1C69102A0](a1, a2, v23);
  MEMORY[0x1C69102A0](36, 0xE100000000000000);
  sub_1C1E5222C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_1C1DC1870(v17, &qword_1EBF1D288, &unk_1C1E587E0);
    v26 = v53;
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    (*(v19 + 16))(v21, v25, v18);
    if (qword_1EBF1C150 != -1)
    {
      swift_once();
    }

    v27 = v49;
    v28 = __swift_project_value_buffer(v49, qword_1EBF20D60);
    (*(v48 + 16))(v9, v28, v27);
    sub_1C1E521FC();
    v30 = v50;
    v29 = v51;
    v31 = (*(v50 + 48))(v12, 1, v51);
    v26 = v53;
    if (v31 != 1)
    {
      v42 = v45;
      (*(v30 + 32))(v45, v12, v29);
      v43 = sub_1C1E5218C();
      v44 = v46;
      (*(*(v43 - 8) + 56))(v46, 1, 1, v43);
      sub_1C1E521DC();
      sub_1C1DC1870(v44, &qword_1EBF1D278, &qword_1C1E587D0);
      (*(v30 + 8))(v42, v29);
      (*(v19 + 8))(v25, v18);
      v39 = 0;
      goto LABEL_12;
    }

    (*(v19 + 8))(v25, v18);
    sub_1C1DC1870(v12, &qword_1EBF1D280, &qword_1C1E587D8);
  }

  v32 = v52;
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v33 = sub_1C1E522AC();
  __swift_project_value_buffer(v33, qword_1EBF20D40);

  v34 = sub_1C1E5228C();
  v35 = sub_1C1E548FC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54[0] = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    *(v36 + 14) = sub_1C1E0934C(v47, v32, v54);
    _os_log_impl(&dword_1C1DBF000, v34, v35, "Custom LaTeX failed to generated math presentation for expression: %{private,mask.hash}s", v36, 0x16u);
    v38 = __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1C6911150](v37, -1, -1, v38);
    MEMORY[0x1C6911150](v36, -1, -1);
  }

  v39 = 1;
LABEL_12:
  v40 = sub_1C1E5226C();
  return (*(*(v40 - 8) + 56))(v26, v39, 1, v40);
}

id sub_1C1E09270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C1E545BC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C1E51E9C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1C1E0934C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C1E09418(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C1DFF8A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C1E09418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C1E09524(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C1E54B9C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1C1E09524(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C1E09570(a1, a2);
  sub_1C1E096A0(&unk_1F4186FB8);
  return v3;
}

void *sub_1C1E09570(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C1DFE5D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C1E54B9C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C1E546FC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C1DFE5D4(v10, 0);
        result = sub_1C1E54B3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1C1E096A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C1E0978C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_1C1E0978C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D0A8, &qword_1C1E58160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL sub_1C1E09880(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C1E54D2C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1C1E54D2C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  result = (v6 | v7) == 0;
  if (v6)
  {
    if (v7)
    {

      v9 = sub_1C1E5354C();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t sub_1C1E09930(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v4 = sub_1C1E09270(0xD000000000000033, 0x80000001C1E5C050, 0);
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v6 = sub_1C1E09270(0xD000000000000016, 0x80000001C1E5C0B0, 0);
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v8 = sub_1C1E09270(0xD000000000000019, 0x80000001C1E5C0D0, 0);
  v9 = sub_1C1E545BC();
  v10 = sub_1C1E545BC();
  v11 = [v10 length];

  v12 = [v4 firstMatchInString:v9 options:0 range:{0, v11}];
  if (!v12)
  {

    v29 = sub_1C1E545BC();
    v30 = sub_1C1E545BC();
    v31 = [v29 rangeOfString:v30 options:1024];

    if (v31 == sub_1C1E51DEC() || sub_1C1E5469C() <= 1)
    {
    }

    else
    {
      v32 = sub_1C1E545BC();
      v33 = [v32 substringToIndex_];

      a1 = sub_1C1E545FC();
    }

    return a1;
  }

  v35 = v6;
  v38 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C1E545BC();
  v14 = [v12 rangeAtIndex_];
  v16 = [v13 substringWithRange_];

  v17 = v16;
  v18 = v16;
  if (!v16)
  {
    sub_1C1E545FC();
    v18 = sub_1C1E545BC();

    sub_1C1E545FC();
    v17 = sub_1C1E545BC();
  }

  v19 = sub_1C1E545FC();
  v21 = v20;
  v37 = 1;
  v22 = v16;
  v23 = [v17 length];

  v24 = swift_allocObject();
  v24[2] = v19;
  v24[3] = v21;
  v24[4] = &v37;
  v24[5] = v8;
  v24[6] = &v38;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C1E0A088;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1C1E0A098;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1E08AF0;
  aBlock[3] = &block_descriptor_1;
  v26 = _Block_copy(aBlock);
  v27 = v8;

  [v35 enumerateMatchesInString:v18 options:0 range:0 usingBlock:{v23, v26}];

  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a1 = v38;

    return a1;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C1E09E10(uint64_t a1, unint64_t a2)
{

  v2 = 4;
  v3 = &unk_1F4187008;
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;

    v6 = MEMORY[0x1C69102A0](v4, v5);
    sub_1C1DC733C(v6, v7, v8);
    sub_1C1E54A1C();

    v3 += 2;
    --v2;
  }

  while (v2);
  swift_arrayDestroy();
  sub_1C1E54A1C();

  sub_1C1E54A1C();

  v9 = sub_1C1E54A1C();
  v11 = v10;

  MEMORY[0x1C69102A0](v9, v11);

  MEMORY[0x1C69102A0](125, 0xE100000000000000);
  return 0x7B747865745CLL;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1E0A0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1E0A13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1E0A1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1E0A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1E0A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1E0F9D4(a3, v25 - v10);
  v12 = sub_1C1E5485C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1DC1870(v11, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1E5481C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1E5464C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1E0A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1E0F9D4(a3, v25 - v10);
  v12 = sub_1C1E5485C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1DC1870(v11, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1E5481C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1E5464C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1E0A884()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_1C1E5490C();
    v6 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C1E0A9CC()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_1C1E5490C();
    v6 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C1E0AB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v1;
}

uint64_t sub_1C1E0AB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v1;
}

uint64_t sub_1C1E0ABE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v1;
}

uint64_t sub_1C1E0AC44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v1;
}

uint64_t sub_1C1E0ACAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v1;
}

uint64_t sub_1C1E0AD10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v1;
}

uint64_t GraphView3D.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v52 = sub_1C1E52E1C();
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v49 = a1;
  *&v55 = v7;
  *(&v55 + 1) = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_1C1E0F2FC();
  v47 = v6;
  v48 = v7;
  *&v55 = v7;
  *(&v55 + 1) = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v55 = v5;
  *(&v55 + 1) = OpaqueTypeMetadata2;
  *&v56 = v9;
  *(&v56 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v11 = sub_1C1E5378C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820, MEMORY[0x1E697E238]);
  v45 = v12;
  v46 = v11;
  *&v55 = v11;
  *(&v55 + 1) = v12;
  v44 = WitnessTable;
  *&v56 = WitnessTable;
  *(&v56 + 1) = v14;
  v42 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_1C1E10390(qword_1EBF1D2E0, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  v43 = v15;
  v41 = v16;
  v17 = sub_1C1E5280C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v24 = v2[7];
  v61 = v2[6];
  v62 = v24;
  v63 = v2[8];
  v64 = *(v2 + 18);
  v25 = v2[3];
  v57 = v2[2];
  v58 = v25;
  v26 = v2[5];
  v59 = v2[4];
  v60 = v26;
  v27 = v2[1];
  v55 = *v2;
  v56 = v27;
  v28 = v55;
  swift_getKeyPath();
  v54[0] = v28;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (!*(v28 + 16))
  {
    swift_getKeyPath();
    v54[0] = v28;
    sub_1C1E520BC();

    swift_beginAccess();
  }

  v29 = v50;
  sub_1C1E52E0C();
  v30 = swift_allocObject();
  v31 = v47;
  *(v30 + 16) = v48;
  *(v30 + 24) = v31;
  v32 = v62;
  *(v30 + 128) = v61;
  *(v30 + 144) = v32;
  *(v30 + 160) = v63;
  *(v30 + 176) = v64;
  v33 = v58;
  *(v30 + 64) = v57;
  *(v30 + 80) = v33;
  v34 = v60;
  *(v30 + 96) = v59;
  *(v30 + 112) = v34;
  v35 = v56;
  v36 = v49;
  *(v30 + 32) = v55;
  *(v30 + 48) = v35;
  (*(*(v36 - 8) + 16))(v54, &v55);
  v54[0] = v46;
  v54[1] = v45;
  v54[2] = v44;
  v54[3] = v42;
  v37 = swift_getOpaqueTypeConformance2();
  sub_1C1E0EFC0(v29, sub_1C1E0F4A0, v30, v52, v43, v41, v37);
  v53 = v37;
  swift_getWitnessTable();
  v38 = *(v18 + 16);
  v38(v23, v20, v17);
  v39 = *(v18 + 8);
  v39(v20, v17);
  v38(v51, v23, v17);
  return (v39)(v23, v17);
}

uint64_t sub_1C1E0B37C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v59 = a4;
  v54 = sub_1C1E52CFC();
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C1E52BDC();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  v48 = v9;
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v44 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v12 = a2;
  v63 = a2;
  v64 = a3;
  v46 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1C1E0F2FC();
  v63 = v12;
  v64 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v11;
  v64 = OpaqueTypeMetadata2;
  v65 = v14;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v16 = sub_1C1E5378C();
  v47 = v16;
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v44 - v17;
  WitnessTable = swift_getWitnessTable();
  v50 = WitnessTable;
  v49 = sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820, MEMORY[0x1E697E238]);
  v63 = v16;
  v64 = v9;
  v65 = WitnessTable;
  v66 = v49;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  sub_1C1E5389C();
  v26 = v12;
  v60 = v12;
  v27 = v46;
  v61 = v46;
  v62 = a1;
  sub_1C1E5377C();
  sub_1C1E52D9C();
  v28 = v52;
  sub_1C1E52BCC();
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  v30 = *(a1 + 112);
  *(v29 + 128) = *(a1 + 96);
  *(v29 + 144) = v30;
  *(v29 + 160) = *(a1 + 128);
  *(v29 + 176) = *(a1 + 144);
  v31 = *(a1 + 48);
  *(v29 + 64) = *(a1 + 32);
  *(v29 + 80) = v31;
  v32 = *(a1 + 80);
  *(v29 + 96) = *(a1 + 64);
  *(v29 + 112) = v32;
  v33 = *(a1 + 16);
  *(v29 + 32) = *a1;
  *(v29 + 48) = v33;
  v35 = type metadata accessor for GraphView3D(0, v26, v27, v34);
  (*(*(v35 - 8) + 16))(&v63, a1, v35);
  sub_1C1E10390(&qword_1EBF1D370, MEMORY[0x1E697C468], MEMORY[0x1E697C460]);
  v36 = v55;
  v37 = v56;
  sub_1C1E5381C();

  (*(v58 + 8))(v28, v37);
  sub_1C1E5275C();
  v38 = v47;
  v39 = v48;
  v40 = v45;
  sub_1C1E533FC();
  (*(v57 + 8))(v36, v39);
  (*(v51 + 8))(v40, v38);
  v41 = *(v20 + 16);
  v41(v25, v22, v19);
  v42 = *(v20 + 8);
  v42(v22, v19);
  v41(v59, v25, v19);
  return (v42)(v25, v19);
}

uint64_t sub_1C1E0BAB0@<X0>(__int128 *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v360 = a3;
  v361 = a2;
  v337 = a4;
  v292 = sub_1C1E52DBC();
  v281 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v280 = (&v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  *&v380 = a2;
  *(&v380 + 1) = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1C1E0F2FC();
  *&v380 = a2;
  *(&v380 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v351 = v8;
  *&v380 = v8;
  v350 = OpaqueTypeMetadata2;
  *(&v380 + 1) = OpaqueTypeMetadata2;
  v356 = v10;
  *&v381 = v10;
  v338 = OpaqueTypeConformance2;
  *(&v381 + 1) = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v334 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v279 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v278 = &v276 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v295 = &v276 - v17;
  v294 = type metadata accessor for Function(0);
  v296 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v276 = v18;
  v277 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v293 = &v276 - v20;
  v339 = v12;
  v336 = sub_1C1E549CC();
  v333 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v349 = &v276 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v335 = &v276 - v23;
  v24 = sub_1C1E5353C();
  v288 = *(v24 - 8);
  v289 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v287 = &v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C1E52E7C();
  v285 = *(v26 - 8);
  v286 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v284 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D378, &qword_1C1E58A48);
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v276 - v28;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D380, &unk_1C1E5A730);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v276 - v29;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  MEMORY[0x1EEE9AC00](v331);
  v332 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v359 = &v276 - v32;
  v33 = sub_1C1E5252C();
  v317 = *(v33 - 8);
  v318 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v314 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D388, &qword_1C1E58A50);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v309 = &v276 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D390, &qword_1C1E58A58);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v276 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D398, &qword_1C1E58A60);
  v41 = *(v40 - 8);
  v299 = v40;
  v300 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v342 = &v276 - v42;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3A0, &qword_1C1E58A68);
  v301 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v354 = &v276 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3A8, &qword_1C1E58A70);
  v45 = *(v44 - 8);
  v304 = v44;
  v305 = v45;
  MEMORY[0x1EEE9AC00](v44);
  *&v345 = &v276 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3B0, &qword_1C1E58A78);
  v48 = *(v47 - 8);
  v306 = v47;
  v307 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v302 = &v276 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3B8, &qword_1C1E58A80);
  v51 = *(v50 - 8);
  v310 = v50;
  v311 = v51;
  MEMORY[0x1EEE9AC00](v50);
  v303 = &v276 - v52;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3C0, &qword_1C1E58A88);
  v315 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v308 = &v276 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3C8, &qword_1C1E58A90);
  v55 = *(v54 - 8);
  v319 = v54;
  v320 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v312 = &v276 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3D0, &qword_1C1E58A98);
  v58 = *(v57 - 8);
  v321 = v57;
  v322 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v316 = &v276 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3D8, &qword_1C1E58AA0);
  v61 = *(v60 - 8);
  v323 = v60;
  v324 = v61;
  MEMORY[0x1EEE9AC00](v60);
  *(&v345 + 1) = &v276 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3E0, &qword_1C1E58AA8);
  v64 = *(v63 - 8);
  v326 = v63;
  v327 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v346 = &v276 - v65;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3E8, &qword_1C1E58AB0);
  v328 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v325 = &v276 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D290, &qword_1C1E58800);
  v329 = *(v67 - 8);
  v330 = v67;
  MEMORY[0x1EEE9AC00](v67);
  v348 = &v276 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v358 = &v276 - v70;
  v355 = *a1;
  *&v389 = v355;
  swift_retain_n();
  sub_1C1E24AC8();
  *&v380 = v71;
  *(&v380 + 1) = v72;
  v353 = xmmword_1C1E587F0;
  v373 = xmmword_1C1E587F0;
  v341 = sub_1C1E5263C();
  v73 = *(v341 - 8);
  v352 = *(v73 + 56);
  v340 = v73 + 56;
  v352(v39, 1, 1, v341);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F8, &qword_1C1E58AC0);
  v78 = sub_1C1E0FAFC(v75, v76, v77);
  v79 = sub_1C1E0FB50();
  v357 = sub_1C1DC1124(&qword_1EBF1D410, &qword_1EBF1D3F8, &qword_1C1E58AC0, MEMORY[0x1E695B428]);
  sub_1C1E531CC();
  sub_1C1DC1870(v39, &qword_1EBF1D390, &qword_1C1E58A58);

  sub_1C1E24EE0();
  *&v373 = v80;
  *(&v373 + 1) = v81;
  v389 = v353;
  v82 = v39;
  v352(v39, 1, 1, v341);
  *&v380 = &type metadata for Chart3DView;
  v343 = v74;
  *(&v380 + 1) = v74;
  v83 = v75;
  *&v381 = v75;
  *(&v381 + 1) = v78;
  v84 = v79;
  *&v382[0] = v79;
  *(&v382[0] + 1) = v357;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v82;
  v87 = v299;
  v88 = v342;
  sub_1C1E531EC();
  sub_1C1DC1870(v86, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v300 + 8))(v88, v87);
  sub_1C1E24CD4();
  *&v373 = v89;
  *(&v373 + 1) = v90;
  v389 = v353;
  v91 = v86;
  v352(v86, 1, 1, v341);
  v92 = v360;
  *&v380 = v87;
  *(&v380 + 1) = v343;
  v297 = v83;
  v298 = v84;
  *&v381 = v83;
  *(&v381 + 1) = v85;
  *&v382[0] = v84;
  *(&v382[0] + 1) = v357;
  v342 = swift_getOpaqueTypeConformance2();
  v93 = v344;
  v94 = v354;
  sub_1C1E531FC();
  sub_1C1DC1870(v91, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v301 + 8))(v94, v93);
  sub_1C1E5483C();
  v95 = v361;
  v97 = type metadata accessor for GraphView3D(0, v361, v92, v96);
  v98 = *(v97 - 8);
  v99 = *(v98 + 16);
  v100 = (v98 + 16);
  v354 = v97;
  v99(&v380, a1, v97);
  v352 = v100;
  *&v353 = v99;
  v101 = sub_1C1E5482C();
  v102 = swift_allocObject();
  v103 = MEMORY[0x1E69E85E0];
  *(v102 + 16) = v101;
  *(v102 + 24) = v103;
  *(v102 + 32) = v95;
  *(v102 + 40) = v92;
  v104 = a1[7];
  *(v102 + 144) = a1[6];
  *(v102 + 160) = v104;
  *(v102 + 176) = a1[8];
  *(v102 + 192) = *(a1 + 18);
  v105 = a1[3];
  *(v102 + 80) = a1[2];
  *(v102 + 96) = v105;
  v106 = a1[5];
  *(v102 + 112) = a1[4];
  *(v102 + 128) = v106;
  v107 = a1[1];
  *(v102 + 48) = *a1;
  *(v102 + 64) = v107;
  v99(&v380, a1, v97);
  v108 = sub_1C1E5482C();
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = MEMORY[0x1E69E85E0];
  *(v109 + 32) = v95;
  *(v109 + 40) = v92;
  v110 = a1[7];
  *(v109 + 144) = a1[6];
  *(v109 + 160) = v110;
  *(v109 + 176) = a1[8];
  *(v109 + 192) = *(a1 + 18);
  v111 = a1[3];
  *(v109 + 80) = a1[2];
  *(v109 + 96) = v111;
  v112 = a1[5];
  *(v109 + 112) = a1[4];
  *(v109 + 128) = v112;
  v113 = a1[1];
  *(v109 + 48) = *a1;
  *(v109 + 64) = v113;
  sub_1C1E5232C();
  v114 = v309;
  sub_1C1E537BC();
  *&v380 = v344;
  *(&v380 + 1) = v343;
  *&v381 = v297;
  *(&v381 + 1) = v342;
  *&v382[0] = v298;
  *(&v382[0] + 1) = v357;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = v302;
  v117 = v304;
  v118 = v345;
  sub_1C1E5319C();
  sub_1C1DC1870(v114, &qword_1EBF1D388, &qword_1C1E58A50);
  (*(v305 + 8))(v118, v117);
  v119 = v314;
  sub_1C1E5251C();
  *&v380 = v117;
  *(&v380 + 1) = v115;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v303;
  v122 = v306;
  sub_1C1E5328C();
  (*(v317 + 8))(v119, v318);
  (*(v307 + 8))(v116, v122);
  v123 = a1[7];
  v385 = a1[6];
  v386 = v123;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v124 = a1[3];
  v382[0] = a1[2];
  v382[1] = v124;
  v125 = a1[5];
  v383 = a1[4];
  v384 = v125;
  v126 = a1[1];
  v380 = *a1;
  v381 = v126;
  *&v373 = sub_1C1E0AB78();
  *(&v373 + 1) = v127;
  *&v374 = v128;
  BYTE8(v374) = v129 & 1;
  *&v389 = v122;
  *(&v389 + 1) = v120;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = MEMORY[0x1E69E63B0];
  v132 = v308;
  v133 = v310;
  sub_1C1E5323C();

  (*(v311 + 8))(v121, v133);
  v134 = a1[7];
  v385 = a1[6];
  v386 = v134;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v135 = a1[3];
  v382[0] = a1[2];
  v382[1] = v135;
  v136 = a1[5];
  v383 = a1[4];
  v384 = v136;
  v137 = a1[1];
  v380 = *a1;
  v381 = v137;
  *&v389 = sub_1C1E0AC44();
  *(&v389 + 1) = v138;
  v390 = v139;
  v391 = v140 & 1;
  *&v373 = v133;
  *(&v373 + 1) = v131;
  *&v374 = v130;
  *(&v374 + 1) = MEMORY[0x1E695B450];
  v141 = swift_getOpaqueTypeConformance2();
  v142 = v312;
  v143 = v313;
  sub_1C1E5325C();

  (*(v315 + 8))(v132, v143);
  v144 = a1[7];
  v385 = a1[6];
  v386 = v144;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v145 = a1[3];
  v382[0] = a1[2];
  v382[1] = v145;
  v146 = a1[5];
  v383 = a1[4];
  v384 = v146;
  v147 = a1[1];
  v380 = *a1;
  v381 = v147;
  *&v389 = sub_1C1E0AD10();
  *(&v389 + 1) = v148;
  v390 = v149;
  v391 = v150 & 1;
  *&v373 = v143;
  *(&v373 + 1) = v131;
  *&v374 = v141;
  *(&v374 + 1) = MEMORY[0x1E695B450];
  v151 = swift_getOpaqueTypeConformance2();
  v152 = v316;
  v153 = v319;
  sub_1C1E5327C();

  v154 = v153;
  (*(v320 + 8))(v142, v153);
  v155 = v361;
  v362 = v361;
  v156 = v360;
  v363 = v360;
  v364 = a1;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
  *&v380 = v154;
  *(&v380 + 1) = v131;
  *&v381 = v151;
  *(&v381 + 1) = MEMORY[0x1E695B450];
  *&v345 = swift_getOpaqueTypeConformance2();
  v157 = sub_1C1E0FC80();
  v158 = v321;
  sub_1C1E5340C();
  (*(v322 + 8))(v152, v158);
  v159 = a1[7];
  v385 = a1[6];
  v386 = v159;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v160 = a1[3];
  v382[0] = a1[2];
  v382[1] = v160;
  v161 = a1[5];
  v383 = a1[4];
  v384 = v161;
  v162 = a1[1];
  v380 = *a1;
  v381 = v162;
  *&v389 = sub_1C1E0AB14();
  BYTE8(v389) = v163 & 1;
  v164 = swift_allocObject();
  *(v164 + 16) = v155;
  *(v164 + 24) = v156;
  v165 = a1[7];
  *(v164 + 128) = a1[6];
  *(v164 + 144) = v165;
  *(v164 + 160) = a1[8];
  *(v164 + 176) = *(a1 + 18);
  v166 = a1[3];
  *(v164 + 64) = a1[2];
  *(v164 + 80) = v166;
  v167 = a1[5];
  *(v164 + 96) = a1[4];
  *(v164 + 112) = v167;
  v168 = a1[1];
  *(v164 + 32) = *a1;
  *(v164 + 48) = v168;
  v169 = v354;
  v170 = v353;
  (v353)(&v373, a1, v354);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  *&v373 = v158;
  *(&v373 + 1) = v357;
  *&v374 = v345;
  v357 = 1;
  *(&v374 + 1) = v157;
  *&v345 = swift_getOpaqueTypeConformance2();
  v172 = sub_1C1E0FD50();
  v173 = v323;
  v174 = *(&v345 + 1);
  sub_1C1E534CC();

  (*(v324 + 8))(v174, v173);
  v175 = a1[7];
  v385 = a1[6];
  v386 = v175;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v176 = a1[3];
  v382[0] = a1[2];
  v382[1] = v176;
  v177 = a1[5];
  v383 = a1[4];
  v384 = v177;
  v178 = a1[1];
  v380 = *a1;
  v381 = v178;
  *&v389 = sub_1C1E0ABE0();
  BYTE8(v389) = v179 & 1;
  v180 = swift_allocObject();
  v181 = v360;
  *(v180 + 16) = v361;
  *(v180 + 24) = v181;
  v182 = a1[7];
  *(v180 + 128) = a1[6];
  *(v180 + 144) = v182;
  *(v180 + 160) = a1[8];
  *(v180 + 176) = *(a1 + 18);
  v183 = a1[3];
  *(v180 + 64) = a1[2];
  *(v180 + 80) = v183;
  v184 = a1[5];
  *(v180 + 96) = a1[4];
  *(v180 + 112) = v184;
  v185 = a1[1];
  *(v180 + 32) = *a1;
  *(v180 + 48) = v185;
  v170(&v373, a1, v169);
  *&v373 = v173;
  *(&v373 + 1) = v171;
  *&v374 = v345;
  *(&v374 + 1) = v172;
  v186 = swift_getOpaqueTypeConformance2();
  v188 = v325;
  v187 = v326;
  v189 = v346;
  sub_1C1E534CC();

  (*(v327 + 8))(v189, v187);
  v190 = a1[7];
  v385 = a1[6];
  v386 = v190;
  v387 = a1[8];
  v388 = *(a1 + 18);
  v191 = a1[3];
  v382[0] = a1[2];
  v382[1] = v191;
  v192 = a1[5];
  v383 = a1[4];
  v384 = v192;
  v193 = a1[1];
  v380 = *a1;
  v381 = v193;
  *&v389 = sub_1C1E0ACAC();
  BYTE8(v389) = v194 & 1;
  v195 = swift_allocObject();
  v196 = v360;
  *(v195 + 16) = v361;
  *(v195 + 24) = v196;
  v197 = a1[7];
  *(v195 + 128) = a1[6];
  *(v195 + 144) = v197;
  *(v195 + 160) = a1[8];
  *(v195 + 176) = *(a1 + 18);
  v198 = a1[3];
  *(v195 + 64) = a1[2];
  *(v195 + 80) = v198;
  v199 = a1[5];
  *(v195 + 96) = a1[4];
  *(v195 + 112) = v199;
  v200 = a1[1];
  *(v195 + 32) = *a1;
  *(v195 + 48) = v200;
  (v353)(&v373, a1, v354);
  *&v373 = v187;
  *(&v373 + 1) = v171;
  *&v374 = v186;
  *(&v374 + 1) = v172;
  v201 = swift_getOpaqueTypeConformance2();
  v202 = v347;
  v346 = v171;
  *&v345 = v201;
  *(&v345 + 1) = v172;
  sub_1C1E534CC();

  (*(v328 + 8))(v188, v202);
  swift_getKeyPath();
  v203 = v355;
  *&v380 = v355;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v204 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v203 + v204) == 1)
  {
    swift_getKeyPath();
    *&v380 = v203;
    sub_1C1E520BC();

    swift_beginAccess();
    v205 = *(v203 + 17);
    v357 = 1;
    if (v205 == 1)
    {
      v206 = swift_allocObject();
      v207 = v360;
      *(v206 + 16) = v361;
      *(v206 + 24) = v207;
      v208 = a1[7];
      *(v206 + 128) = a1[6];
      *(v206 + 144) = v208;
      *(v206 + 160) = a1[8];
      *(v206 + 176) = *(a1 + 18);
      v209 = a1[3];
      *(v206 + 64) = a1[2];
      *(v206 + 80) = v209;
      v210 = a1[5];
      *(v206 + 96) = a1[4];
      *(v206 + 112) = v210;
      v211 = a1[1];
      *(v206 + 32) = *a1;
      *(v206 + 48) = v211;
      (v353)(&v380, a1, v354);
      v212 = v283;
      sub_1C1E5373C();
      v213 = (v212 + *(v282 + 36));
      v214 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4B0, &unk_1C1E5A800) + 28);
      v215 = *MEMORY[0x1E697DC20];
      v216 = sub_1C1E526FC();
      (*(*(v216 - 8) + 104))(v213 + v214, v215, v216);
      *v213 = swift_getKeyPath();
      v217 = v284;
      sub_1C1E52E6C();
      sub_1C1E102AC();
      sub_1C1E10390(&qword_1EBF1D4B8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
      v218 = v290;
      v219 = v286;
      sub_1C1E532EC();
      (*(v285 + 8))(v217, v219);
      sub_1C1DC1870(v212, &qword_1EBF1D378, &qword_1C1E58A48);
      (*(v288 + 104))(v287, *MEMORY[0x1E69814D8], v289);
      v220 = sub_1C1E5368C();
      KeyPath = swift_getKeyPath();
      *&v380 = v220;
      v222 = sub_1C1E5282C();
      v223 = (v218 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D498, &unk_1C1E5A7F0) + 36));
      *v223 = KeyPath;
      v223[1] = v222;
      *(v218 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D488, &qword_1C1E58B28) + 36)) = 0x3FE6666666666666;
      LOBYTE(v222) = sub_1C1E5300C();
      v224 = v218 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D478, &unk_1C1E5A7E0) + 36);
      *v224 = v222;
      *(v224 + 8) = 0u;
      *(v224 + 24) = 0u;
      *(v224 + 40) = 1;
      sub_1C1E538DC();
      sub_1C1E529FC();
      v225 = (v218 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D468, &qword_1C1E58B20) + 36));
      v226 = v378;
      v225[4] = v377;
      v225[5] = v226;
      v225[6] = v379;
      v227 = v374;
      *v225 = v373;
      v225[1] = v227;
      v228 = v376;
      v225[2] = v375;
      v225[3] = v228;
      *(v218 + *(v291 + 36)) = 0;
      v229 = a1[7];
      v385 = a1[6];
      v386 = v229;
      v387 = a1[8];
      v388 = *(a1 + 18);
      v230 = a1[3];
      v382[0] = a1[2];
      v382[1] = v230;
      v231 = a1[5];
      v383 = a1[4];
      v384 = v231;
      v232 = a1[1];
      v380 = *a1;
      v381 = v232;
      sub_1C1E0A884();
      sub_1C1E0FF0C();
      sub_1C1E533CC();
      v203 = v355;
      sub_1C1DC1870(v218, &qword_1EBF1D380, &unk_1C1E5A730);
      v357 = 0;
    }
  }

  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
  (*(*(v233 - 8) + 56))(v359, v357, 1, v233);
  swift_getKeyPath();
  *&v380 = v203;
  sub_1C1E520BC();

  v234 = v203 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  v235 = v338;
  v236 = v349;
  if (*(v234 + 16))
  {

    v237 = v356;
    v238 = v339;
LABEL_11:
    (*(v334 + 56))(v236, 1, 1, v238);
    *&v380 = v351;
    *(&v380 + 1) = v350;
    *&v381 = v237;
    *(&v381 + 1) = v235;
    swift_getOpaqueTypeConformance2();
    goto LABEL_12;
  }

  v240 = *v234;
  v239 = *(v234 + 8);
  v241 = v295;
  sub_1C1E220D4(v295);
  v242 = (*(v296 + 48))(v241, 1, v294);
  v237 = v356;
  v238 = v339;
  if (v242 == 1)
  {

    sub_1C1DC1870(v241, &qword_1EBF1C758, &qword_1C1E579C0);
    goto LABEL_11;
  }

  v243 = v241;
  v244 = v293;
  sub_1C1DF7E98(v243, v293);
  v245 = *(a1 + 1);
  if (!v245)
  {

    sub_1C1DE1670(v244);
    goto LABEL_11;
  }

  v246 = *(a1 + 2);

  sub_1C1E538DC();
  sub_1C1E5281C();
  LOBYTE(v369[0]) = BYTE8(v389);
  LOBYTE(v366) = v391;
  *&v380 = 0;
  *(&v380 + 1) = v389;
  LOBYTE(v381) = BYTE8(v389);
  *(&v381 + 1) = v390;
  LOBYTE(v382[0]) = v391;
  *(v382 + 8) = v392;
  *(&v382[1] + 1) = v240;
  *&v383 = v239;
  v247 = swift_allocObject();
  v247[2] = 0;
  v247[3] = 0;
  v247[4] = v203;
  v248 = swift_allocObject();
  v248[2] = 0;
  v248[3] = 0;
  v248[4] = v203;

  sub_1C1E537BC();
  v355 = v370;
  v354 = v371;
  LODWORD(v357) = v372;
  v249 = sub_1C1E5372C();
  v251 = v280;
  v250 = v281;
  *v280 = v249;
  (*(v250 + 104))(v251, *MEMORY[0x1E697C8C0], v292);
  v252 = v277;
  sub_1C1DE160C(v244, v277);
  v253 = (*(v296 + 80) + 48) & ~*(v296 + 80);
  v254 = swift_allocObject();
  v255 = v360;
  v254[2] = v361;
  v254[3] = v255;
  v254[4] = v245;
  v254[5] = v246;
  *&v353 = v246;
  sub_1C1DF7E98(v252, v254 + v253);

  v256 = swift_checkMetadataState();
  v360 = v245;
  v361 = v256;
  v257 = v279;
  v258 = v351;
  sub_1C1DD73C0(v355, v354, v357, v251, 4, sub_1C1E103F0, v254, v351, v256, v356, v338);

  sub_1C1DD0EB8(v360, v353);
  (*(v250 + 8))(v251, v292);
  sub_1C1DE1670(v293);
  *&v380 = v258;
  *(&v380 + 1) = v361;
  *&v381 = v356;
  *(&v381 + 1) = v338;
  swift_getOpaqueTypeConformance2();
  v259 = v334;
  v260 = *(v334 + 16);
  v261 = v278;
  v260(v278, v257, v339);
  v262 = *(v259 + 8);
  v262(v257, v339);
  v260(v257, v261, v339);
  v263 = v339;
  v262(v261, v339);
  v235 = v338;
  (*(v259 + 32))(v236, v257, v263);
  (*(v259 + 56))(v236, 0, 1, v263);
LABEL_12:
  v264 = v335;
  sub_1C1E3A5A0(v236, v335);
  v265 = v333;
  v361 = *(v333 + 8);
  v266 = v236;
  v267 = v236;
  v268 = v336;
  v361(v266, v336);
  v269 = v329;
  v270 = v330;
  v271 = v348;
  (*(v329 + 16))(v348, v358, v330);
  v370 = v271;
  v272 = v332;
  sub_1C1DD3BE0(v359, v332);
  v371 = v272;
  (*(v265 + 16))(v267, v264, v268);
  v372 = v267;
  v369[0] = v270;
  v369[1] = v331;
  v369[2] = v268;
  *&v380 = v347;
  *(&v380 + 1) = v346;
  v381 = v345;
  v366 = swift_getOpaqueTypeConformance2();
  v367 = sub_1C1E0FDCC();
  *&v380 = v351;
  *(&v380 + 1) = v350;
  *&v381 = v356;
  *(&v381 + 1) = v235;
  v365 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  sub_1C1E3A60C(&v370, 3uLL, v369);
  v273 = v361;
  v361(v264, v268);
  sub_1C1DC1870(v359, &qword_1EBF1D298, &qword_1C1E58808);
  v274 = *(v269 + 8);
  v274(v358, v270);
  v273(v349, v268);
  sub_1C1DC1870(v272, &qword_1EBF1D298, &qword_1C1E58808);
  return (v274)(v348, v270);
}

uint64_t sub_1C1E0E1D0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v5 = sub_1C1E5232C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1E0E2C8(uint64_t a1)
{
  v2 = sub_1C1E5232C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C1E16220(v5);
}

uint64_t sub_1C1E0E394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D430, &qword_1C1E58AC8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-1] - v10;
  v12 = *a1;
  swift_getKeyPath();
  v24[0] = v12;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v12 + v13) == 1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = *(a1 + 7);
    *(v14 + 128) = *(a1 + 6);
    *(v14 + 144) = v15;
    *(v14 + 160) = *(a1 + 8);
    *(v14 + 176) = a1[18];
    v16 = *(a1 + 3);
    *(v14 + 64) = *(a1 + 2);
    *(v14 + 80) = v16;
    v17 = *(a1 + 5);
    *(v14 + 96) = *(a1 + 4);
    *(v14 + 112) = v17;
    v18 = *(a1 + 1);
    *(v14 + 32) = *a1;
    *(v14 + 48) = v18;
    v20 = type metadata accessor for GraphView3D(0, a2, a3, v19);
    (*(*(v20 - 8) + 16))(v24, a1, v20);
    sub_1C1E5373C();
    (*(v9 + 32))(a4, v11, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v9 + 56))(a4, v21, 1, v8);
}

double sub_1C1E0E624()
{
  sub_1C1E5395C();
  sub_1C1E5291C();

  return result;
}

uint64_t sub_1C1E0E694@<X0>(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  result = sub_1C1E5314C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1C1E0E778()
{
  v0 = sub_1C1E0AB14();
  v2 = v1;
  v3 = sub_1C1E0ABE0();
  v5 = v4;
  v6 = sub_1C1E0ACAC();
  sub_1C1E226B0(v0, v2 & 1, v3, v5 & 1, v6, v7 & 1);
}

double sub_1C1E0E7EC()
{
  v0 = sub_1C1E0A9CC();
  v1 = 0;
  if ((v0 & 1) == 0)
  {
    v1 = sub_1C1E5395C();
  }

  MEMORY[0x1EEE9AC00](v1);
  sub_1C1E5291C();

  return result;
}

void sub_1C1E0E8C8(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  v3 = sub_1C1E5314C();
  v5 = v4;
  v7 = v6;
  v8 = sub_1C1E5310C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C1DECF2C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
}

uint64_t sub_1C1E0E9FC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a5@<X8>)
{
  v23 = a1;
  v24 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v10;
  v26 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = type metadata accessor for Function(0);
  v23(a2 + *(v19 + 48));
  sub_1C1E533DC();
  (*(v7 + 8))(v9, a3);
  v20 = *(v13 + 16);
  v20(v18, v15, OpaqueTypeMetadata2);
  v21 = *(v13 + 8);
  v21(v15, OpaqueTypeMetadata2);
  v20(v24, v18, OpaqueTypeMetadata2);
  return (v21)(v18, OpaqueTypeMetadata2);
}

double sub_1C1E0EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1E52BBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27[-v13];
  v15 = sub_1C1E5485C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  sub_1C1E5483C();
  v17 = type metadata accessor for GraphView3D(0, a3, a4, v16);
  (*(*(v17 - 8) + 16))(v27, a2, v17);
  v18 = sub_1C1E5482C();
  v19 = (*(v9 + 80) + 200) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v22 = *(a2 + 112);
  *(v20 + 144) = *(a2 + 96);
  *(v20 + 160) = v22;
  *(v20 + 176) = *(a2 + 128);
  *(v20 + 192) = *(a2 + 144);
  v23 = *(a2 + 48);
  *(v20 + 80) = *(a2 + 32);
  *(v20 + 96) = v23;
  v24 = *(a2 + 80);
  *(v20 + 112) = *(a2 + 64);
  *(v20 + 128) = v24;
  v25 = *(a2 + 16);
  *(v20 + 48) = *a2;
  *(v20 + 64) = v25;
  (*(v9 + 32))(v20 + v19, v11, v8);
  sub_1C1E0A594(0, 0, v14, &unk_1C1E58A28, v20);

  return result;
}