uint64_t sub_1C1E749AC(uint64_t a1)
{
  result = sub_1C1F528D4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C1E74A5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21248, &qword_1C1F58400);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
    v7 = sub_1C1F52BE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1EB6338(v9, v5);
      result = sub_1C1EB4BE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C1F52034();
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

uint64_t CalculateIndexedDocument.init(expressions:options:synchronous:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  v8 = qword_1EDC30828;
  *(v3 + v8) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v9 = qword_1EDC30830;
  v10 = *(v7 + 552);
  v11 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v12 = sub_1C1F526F4();
  v13 = sub_1C1E74FE8(v12, v10, v11, *(v7 + 568));

  *(v3 + v9) = v13;
  *(v3 + qword_1EDC30820) = 0;
  (*(*(v10 - 8) + 56))(v3 + *(*v3 + 600), 1, 1, v10);

  return CalculateDocument.init(expressions:options:synchronous:)(a1, a2, v4);
}

uint64_t type metadata accessor for CalculateDocument(uint64_t a1)
{
  result = qword_1EDC30FD0;
  if (!qword_1EDC30FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E74DD4(uint64_t a1)
{
  result = sub_1C1F52034();
  if (v2 <= 0x3F)
  {
    result = sub_1C1F52144();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C1E74EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, &v11, &qword_1EBF21180, &qword_1C1F564D0);
      v5 = v11;
      result = sub_1C1EE987C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1EB1C58(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1C1E74FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C1F52734())
  {
    sub_1C1F52BF4();
    v13 = sub_1C1F52BE4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C1F52734();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1C1F52714())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C1F52AB4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C1EB4C68(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t CalculateDocument.init(expressions:options:synchronous:)(unint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  sub_1C1F52024();
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v6;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v6);
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  if (*(v3 + v7) == v5)
  {
    *(v3 + v7) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 512))(v9);
  }

  v10 = swift_getKeyPath();
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  (*(*v3 + 512))(v11);

  sub_1C1E76674(a1);
  sub_1C1E76DC0(MEMORY[0x1E69E7CC0]);
  return v3;
}

unint64_t sub_1C1E75514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1C1E75610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CalculateExpression(uint64_t a1)
{
  result = qword_1EDC30AB0;
  if (!qword_1EDC30AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E756A4(uint64_t a1)
{
  result = sub_1C1F52034();
  if (v2 <= 0x3F)
  {
    result = sub_1C1F52144();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata accessor for CalculateKey()
{
  if (!qword_1EDC2EBF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2EBF8);
    }
  }
}

uint64_t sub_1C1E758CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t CalculateExpression.__allocating_init(options:base:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = *a2;
  v11 = *(v7 + 16);
  v21 = a3;
  v11(v10, a3, v6, v8);
  v12 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, a1, v24, v10);

  sub_1C1E7F10C();
  v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  if (*(v12 + v13))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v12;
    *(&v20 - 8) = 0;
    v23 = v12;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v12 + v13) = 0;
  }

  v15 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v12 + v15) == 1)
  {
    *(v12 + v15) = 1;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    *(&v20 - 2) = v12;
    *(&v20 - 8) = 1;
    v22 = v12;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression;
  if (*(v12 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    (*(v7 + 8))(v21, v6);
    *(v12 + v17) = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    *(&v20 - 2) = v12;
    *(&v20 - 8) = 1;
    v22 = v12;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();

    (*(v7 + 8))(v21, v6);
  }

  return v12;
}

uint64_t CalculateExpression.init(_:options:base:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear) = 1;
  v8 = *a4;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C1F52994())
  {
    v10 = sub_1C1E7D41C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations) = v10;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving) = 0;
  swift_weakInit();
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults) = sub_1C1E7635C(v9);
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__variables) = sub_1C1E76258(v9);
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables) = v9;
  v11 = (v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  *v11 = 0;
  v11[1] = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 0;
  v12 = sub_1C1E74EC0(v9);
  v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__options) = v12;
  v14 = v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales) = v9;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter) = 0;
  v15 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__base) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain) = 0;
  type metadata accessor for CalculateExpression.PlainExpression();
  v16 = CalculateExpression.PlainExpression.__allocating_init()();
  v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___plain) = v16;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich) = 1;
  type metadata accessor for CalculateExpression.RichExpression();
  v18 = sub_1C1E776F4(0);
  v19 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___rich) = v18;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__removed) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack) = v9;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) = 1;
  sub_1C1F52134();
  v20 = (v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  *v20 = a1;
  v20[1] = a2;

  *(v5 + v13) = a3;
  *(v5 + v15) = v8;
  v21 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  v22 = sub_1C1F52034();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v6 + v21, a5, v22);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  v24 = *(**(v6 + v19) + 184);
  swift_retain_n();

  v24(v6);

  swift_getKeyPath();
  sub_1C1F52104();

  swift_beginAccess();
  v25 = *(**(v6 + v17) + 192);

  v25(v6);

  sub_1C1E77A68();
  sub_1C1E7BEDC();
  (*(v23 + 8))(a5, v22);
  return v6;
}

unint64_t sub_1C1E76258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1C1E7635C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1C1EAC150(v5, v6);
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

uint64_t CalculateExpression.PlainExpression.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  return v0;
}

uint64_t sub_1C1E76630()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = *(v0 + 24);
}

uint64_t sub_1C1E76674(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];

  v5 = sub_1C1E767BC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1C1E76DC0(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v1;
    v11 = a1;
    (*(*v1 + 512))(v9);
  }
}

uint64_t sub_1C1E767BC(unint64_t a1, unint64_t a2)
{
  v53 = sub_1C1F52034();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v9;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = a1 >> 62;
  if (v11)
  {
    goto LABEL_42;
  }

  for (i = *(v10 + 16); ; i = v40)
  {
    if (a2 >> 62)
    {
      v41 = v7;
      result = sub_1C1F52994();
      v7 = v41;
      if (i != result)
      {
LABEL_44:
        LOBYTE(v4) = 0;
        return v4 & 1;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        goto LABEL_44;
      }
    }

    if (!i)
    {
      goto LABEL_30;
    }

    v14 = v7 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v43 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v14 = v7;
    }

    if (v11)
    {
      v15 = v14;
    }

    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v42 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v16 = a2;
    }

    if (a2 >> 62)
    {
      v17 = v16;
    }

    if (v15 == v17)
    {
LABEL_30:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (i < 0)
    {
      break;
    }

    if (((a2 | v7) & 0xC000000000000001) != 0)
    {
      v49 = a2 & 0xC000000000000001;
      v50 = v7 & 0xC000000000000001;
      v47 = (v4 + 8);
      v48 = (v4 + 16);
      v11 = 4;
      v45 = v7;
      v46 = a2;
      v44 = i;
      while (1)
      {
        v4 = v11 - 4;
        if (__OFADD__(v11 - 4, 1))
        {
          break;
        }

        if (v50)
        {
          v18 = MEMORY[0x1C6911DB0](v11 - 4, v8);
        }

        else
        {
          if (v4 >= *(v43 + 16))
          {
            goto LABEL_40;
          }

          v18 = *(v7 + 8 * v11);
        }

        v54 = (v11 - 3);
        v55 = v11;
        if (v49)
        {
          v19 = MEMORY[0x1C6911DB0](v11 - 4, a2);
        }

        else
        {
          if (v4 >= *(v42 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(a2 + 8 * v11);
        }

        swift_getKeyPath();
        v56 = v18;
        sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
        sub_1C1F52104();

        v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v21 = *v48;
        v22 = v51;
        v23 = v53;
        (*v48)(v51, v18 + v20, v53);
        swift_getKeyPath();
        v56 = v19;
        sub_1C1F52104();

        v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v25 = v52;
        v21(v52, v19 + v24, v23);
        LOBYTE(v4) = sub_1C1F52014();

        v26 = *v47;
        (*v47)(v25, v23);
        v26(v22, v23);
        if (v4)
        {
          v11 = v55 + 1;
          v7 = v45;
          a2 = v46;
          if (v54 != v44)
          {
            continue;
          }
        }

        return v4 & 1;
      }

      __break(1u);
    }

    else
    {
      v27 = (v7 + 32);
      v28 = (a2 + 32);
      v29 = *(v43 + 16);
      v48 = (v4 + 16);
      a2 = *(v42 + 16);
      v47 = (v4 + 8);
      v30 = i - 1;
      while (v29)
      {
        if (!a2)
        {
          goto LABEL_39;
        }

        v31 = *v27;
        v54 = v27 + 1;
        v55 = v30;
        v32 = *v28;
        v49 = v29;
        v50 = (v28 + 1);
        swift_getKeyPath();
        v56 = v31;
        sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);

        sub_1C1F52104();

        v33 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v34 = *v48;
        v11 = v51;
        v35 = v53;
        (*v48)(v51, v31 + v33, v53);
        swift_getKeyPath();
        v56 = v32;
        sub_1C1F52104();

        v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v37 = v52;
        v34(v52, v32 + v36, v35);
        v4 = sub_1C1F52014();

        v38 = *v47;
        (*v47)(v37, v35);
        v38(v11, v35);
        v30 = v55 - 1;
        if (v4)
        {
          --a2;
          v28 = v50;
          v29 = v49 - 1;
          v27 = v54;
          if (v55)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v39 = v7;
    v40 = sub_1C1F52994();
    v7 = v39;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E76DC0(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v4 = result;
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v9 = MEMORY[0x1C6911DB0](v5, v3);
        v10 = CalculateExpression.document.getter();
        if (v10)
        {
          v6 = v10;

          v7 = v6 == v2;
        }

        else
        {
          v7 = 0;
        }

        ++v5;
        v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        *(v9 + v8) = v7;
        swift_unknownObjectRelease();
      }

      while (v4 != v5);
    }

    else
    {
      v11 = (v3 + 32);
      v12 = v4;
      do
      {
        v15 = *v11;

        v16 = CalculateExpression.document.getter();
        if (v16)
        {
          v17 = v16;

          v13 = v17 == v2;
        }

        else
        {
          v13 = 0;
        }

        v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        *(v15 + v14) = v13;

        ++v11;
        --v12;
      }

      while (v12);
    }
  }

  result = (*(*v2 + 336))();
  v18 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v19 = result;
    if (result)
    {
LABEL_18:
      if (v19 >= 1)
      {
        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1C6911DB0](i, v18);
          }

          else
          {
            v23 = *(v18 + 8 * i + 32);
          }

          v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
          swift_beginAccess();
          *(v23 + v24) = 0;
          v25 = CalculateExpression.document.getter();
          if (!v25 || (v26 = v25, , v26 != v2))
          {

            sub_1C1ED9080(v21);
            v22 = sub_1C1E7DD60();
            CalculateExpression.setNeedsEvaluation(rebuild:)(v22 & 1);
          }
        }

        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
      __break(1u);
      return result;
    }
  }

  else
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_18;
    }
  }

LABEL_30:

  if (v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v4; ++j)
      {
        v29 = MEMORY[0x1C6911DB0](j, v3);
        v30 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        if (*(v29 + v30) == 1)
        {
          sub_1C1ED9080(0);
        }

        v27 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = (v3 + 32);
      do
      {
        v32 = *v31;
        v33 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        v27 = swift_beginAccess();
        if (*(v32 + v33) == 1)
        {

          sub_1C1ED9080(0);
        }

        ++v31;
        --v4;
      }

      while (v4);
    }
  }

  return (*(*v2 + 488))(v27);
}

uint64_t sub_1C1E7712C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();
}

uint64_t sub_1C1E7722C()
{
  v1 = sub_1C1F52184();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1F521A4();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 456))(v7);
  if ((result & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) == 1)
    {
      *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v14 - 2) = v0;
      *(&v14 - 8) = 1;
      (*(*v0 + 512))(v12);
    }

    if ((*(*v0 + 216))())
    {
      return (*(*v0 + 480))();
    }

    else
    {
      v14 = v6;
      v15 = v2;
      if (qword_1EDC30A10 != -1)
      {
        swift_once();
      }

      aBlock[4] = sub_1C1E7878C;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C1EF4B44;
      aBlock[3] = &block_descriptor_43;
      v13 = _Block_copy(aBlock);

      sub_1C1F52194();
      v16 = MEMORY[0x1E69E7CC0];
      sub_1C1E75610(&qword_1EDC2EBA0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21430, &qword_1C1F587C8);
      sub_1C1E785EC(qword_1EDC2E928, &qword_1EBF21430, &qword_1C1F587C8, MEMORY[0x1E69E6328]);
      sub_1C1F52954();
      MEMORY[0x1C6911B50](0, v9, v4, v13);
      _Block_release(v13);
      (*(v15 + 8))(v4, v1);
      (*(v14 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_1C1E77688(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();

  return *(v2 + *a2);
}

uint64_t sub_1C1E776F4(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  *(v1 + 24) = 16777473;
  *(v1 + 28) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t sub_1C1E77790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1E777D8(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t sub_1C1E778A0(uint64_t a1, id *a2)
{
  v3 = sub_1C1F52444();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C1E77920(uint64_t a1)
{
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v1 = sub_1C1F52CF4();

  return v1;
}

uint64_t sub_1C1E77994(void *a1, uint64_t *a2)
{
  v2 = sub_1C1F52454();
  v4 = v3;
  if (v2 == sub_1C1F52454() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C1F52C64();
  }

  return v7 & 1;
}

void sub_1C1E77A68()
{
  v1 = v0;
  swift_getKeyPath();
  v34 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  v33[4] = v1;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v5;
    sub_1C1EEDCDC(v3, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v33);
  }

  v7 = objc_allocWithZone(CalculateKeys);
  type metadata accessor for CalculateKey();
  sub_1C1E77790(&qword_1EDC2C320, type metadata accessor for CalculateKey, &unk_1C1F58590);
  v8 = sub_1C1F52344();

  v9 = [(CalculateKeys *)v7 initWithOptions:v8];

  v10 = [(CalculateKeys *)v9 assumeDegrees];
  if (v10 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v12 = [(CalculateKeys *)v9 allowPartialExpressions];
  if (v12 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v14 = [(CalculateKeys *)v9 flexibleFractionDigits];
  if (v14 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = v14;
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != [(CalculateKeys *)v9 engine])
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) != [(CalculateKeys *)v9 format])
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v18 = [(CalculateKeys *)v9 numberFormatter];
  sub_1C1E7B090(v18);
  v19 = [(CalculateKeys *)v9 variables];
  if (v19)
  {
    v20 = v19;
    sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
    v21 = sub_1C1F52354();

    sub_1C1ED88EC(v21);
    v23 = v22;

    sub_1C1ED9ACC(v23);
  }

  v24 = [(CalculateKeys *)v9 locales];
  if (v24)
  {
    v25 = v24;
    sub_1C1F520E4();
    v26 = sub_1C1F526B4();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1E7BACC(v26, &OBJC_IVAR____TtC9Calculate19CalculateExpression___locales, sub_1C1E7BC2C, &unk_1C1F57BF8, sub_1C1EEE0C0);
  v27 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v1 + v27) == 1)
  {
    *(v1 + v27) = 1;
  }

  else
  {
    v28 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v28);
    sub_1C1F520F4();
  }

  v29 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  if (*(v1 + v29) == 1)
  {
    *(v1 + v29) = 1;
  }

  else
  {
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    sub_1C1F520F4();
  }

  v31 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {

    *(v1 + v31) = 1;
  }

  else
  {
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E78330()
{
  v7 = sub_1C1F52844();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1F52834();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1F521A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
  sub_1C1F52194();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C1E75610(&qword_1EDC2E910, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21438, &qword_1C1F58910);
  sub_1C1E785EC(&qword_1EDC2E920, &qword_1EBF21438, &qword_1C1F58910, MEMORY[0x1E69E6328]);
  sub_1C1F52954();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C1F52874();
  qword_1EDC30798 = result;
  return result;
}

uint64_t sub_1C1E785A4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1E785EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1E786B4()
{
  swift_beginAccess();
  sub_1C1F52034();
  sub_1C1F52374();

  swift_getWitnessTable();
  return sub_1C1F52814();
}

uint64_t sub_1C1E787B8()
{
  v276 = *MEMORY[0x1E69E9840];
  v238 = sub_1C1F52034();
  v1 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v205 = &v197 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v221 = &v197 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v222 = &v197 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v214 = &v197 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v209 = &v197 - v10;
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1C1E7A408(v12);
  v237 = (v14 + 16);
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v11;
  v15[4] = v14;
  v16 = objc_opt_self();

  v202 = v16;
  v17 = [v16 isMainThread];
  v212 = v11;
  v200 = v0;
  v201 = v15;
  if (v17)
  {
    sub_1C1E7A790(v0, v11, v14);
    v198 = 0;
    v199 = 0;
  }

  else
  {
    sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
    v18 = sub_1C1F52854();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C1E7A784;
    *(v19 + 24) = v15;
    v20 = swift_allocObject();
    v198 = sub_1C1E7A75C;
    v199 = v19;
    *(v20 + 16) = sub_1C1E7A75C;
    *(v20 + 24) = v19;
    v266 = sub_1C1E7A75C;
    v267 = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v264 = sub_1C1E7A734;
    v265 = &block_descriptor_3;
    v21 = _Block_copy(&aBlock);

    dispatch_sync(v18, v21);

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v11 = v212;
  }

  v243 = sub_1C1E76258(MEMORY[0x1E69E7CC0]);
  v241 = MEMORY[0x1E69E7CD0];
  v242 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v22 = *v13;
  if (*v13 >> 62)
  {
    goto LABEL_163;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v208 = v14;
  if (!v23)
  {
LABEL_164:
    v187 = MEMORY[0x1E69E7CD0];
    goto LABEL_165;
  }

LABEL_7:
  v226 = v22 & 0xC000000000000001;
  v210 = v22 + 32;
  v211 = v22 & 0xFFFFFFFFFFFFFF8;
  v236 = (v1 + 8);
  v217 = @"CalculateKeyVariables";
  v220 = (v1 + 32);
  v204 = @"CalculateKeyAllowEqualSign";

  v24 = 0;
  v1 = v209;
  v203 = v22;
  v225 = v23;
  while (1)
  {
    while (1)
    {
      if (v226)
      {
        v25 = MEMORY[0x1C6911DB0](v24, v22);
        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (v24 >= *(v211 + 16))
        {
          goto LABEL_159;
        }

        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_158;
        }
      }

      v234 = v25;
      CalculateExpression.id.getter(v1);
      v27 = v237;
      swift_beginAccess();
      v28 = *v27;
      if (*(v28 + 16))
      {
        v29 = sub_1C1EB4BE4(v1);
        if (v30)
        {
          break;
        }
      }

      swift_endAccess();

      (*v236)(v1, v238);
      if (v24 == v225)
      {
        goto LABEL_153;
      }
    }

    v224 = v24;
    v31 = *(v28 + 56) + 120 * v29;
    v33 = *v31;
    v32 = *(v31 + 16);
    v34 = *(v31 + 48);
    v254 = *(v31 + 32);
    v255 = v34;
    v252 = v33;
    v253 = v32;
    v35 = *(v31 + 64);
    v36 = *(v31 + 80);
    v37 = *(v31 + 96);
    v259 = *(v31 + 112);
    v257 = v36;
    v258 = v37;
    v256 = v35;
    v38 = *v31;
    v262 = *(v31 + 16);
    v261 = v38;
    v39 = v254;
    v40 = *(&v253 + 1);
    v228 = v255;
    v229 = *(&v254 + 1);
    v41 = *(&v255 + 1);
    v233 = v256;
    LODWORD(v215) = BYTE8(v256);
    v42 = *(v31 + 73);
    *(v260 + 15) = *(v31 + 88);
    v260[0] = v42;
    v223 = *(&v37 + 1);
    v43 = v37;
    v227 = v259;
    swift_endAccess();
    sub_1C1EF816C(&v252, &v245);
    v44 = *v236;

    v232 = v44;
    v44(v1, v238);
    v14 = v243;
    v45 = sub_1C1EE958C(v39, v243);

    if (v45)
    {
      LODWORD(v231) = BYTE8(v256);
      v207 = v41;
      v216 = v41;
    }

    else
    {

      v207 = 0;
      v216 = 0;
      LODWORD(v215) = 1;
      v39 = v14;
      LODWORD(v231) = 1;
    }

    v235 = v39;
    v46 = *(&v258 + 1);
    v47 = v258;
    v48 = *(&v254 + 1);
    *(&v246 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21428, &qword_1C1F587C0);
    *&v245 = v39;
    sub_1C1EB1C58(&v245, v244);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v240 = v40;
    sub_1C1EEA928(v244, v217, isUniquelyReferenced_nonNull_native);
    v50 = v240;
    v230 = v240;
    if ((v45 & (v48 != 0)) == 1)
    {
      v213 = v47;
      v218 = v46;
      swift_retain_n();
      v51 = v43;
    }

    else
    {
      type metadata accessor for CalculateExpression.PlainExpression();
      v52 = v234;

      v53 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v52, v50);
      swift_retain_n();

      type metadata accessor for CalculateExpression.RichExpression();
      v228 = sub_1C1E88104(v53);

      v51 = (*(*v53 + 448))(v54);
      v56 = v55;

      LOBYTE(v227) = (*(*v53 + 488))(v57) & 1;
      v227 = v227;
      v229 = v53;
      v48 = v53;
      v213 = v51;
      v223 = v56;
      v218 = v56;
    }

    v58 = (*v48 + 288);
    v22 = *v58;
    v59 = (*v58)(0);
    if (v59 && (v60 = *(v59 + 48), , v60 != 53))
    {
      LOBYTE(v245) = v60;
      LOBYTE(v244[0]) = 17;
      sub_1C1E9019C();
      v61 = sub_1C1F52414() & 1;
    }

    else
    {
      v61 = 0;
    }

    v62 = (v22)(v61);

    v239 = v48;
    if (v62 && (v64 = *(v62 + 48), v63 = , v64 != 53) && (LOBYTE(v245) = v64, LOBYTE(v244[0]) = 14, sub_1C1E9019C(), v63 = sub_1C1F52414(), (v63 & 1) != 0))
    {
      v65 = v51;
      v66 = v61 + 1;
      v67 = (v22)(v61 + 1);
      if (v67)
      {
        v68 = *(v67 + 48);

        if (v68 != 53)
        {
          LOBYTE(v245) = v68;
          LOBYTE(v244[0]) = 17;
          if (sub_1C1F52414())
          {
            v66 = v61 | 2;
          }
        }
      }

      v63 = (v22)(v66);
      if (v63 && (v69 = *(v63 + 48), v63 = , v69 != 53) && (LOBYTE(v245) = v69, LOBYTE(v244[0]) = 35, v63 = sub_1C1F52414(), (v63 & 1) != 0))
      {
        v70 = v66 + 1;
        v71 = (v22)(v66 + 1);
        if (v71)
        {
          v72 = *(v71 + 48);

          v22 = v66 + 1;
          if (v72 != 53)
          {
            LOBYTE(v245) = v72;
            LOBYTE(v244[0]) = 17;
            if (sub_1C1F52414())
            {
              v22 = v66 + 2;
            }

            else
            {
              v22 = v66 + 1;
            }
          }
        }

        else
        {
          v22 = v66 + 1;
        }

        v185 = (*(*v239 + 264))();
        if (v185 >> 62)
        {
          v186 = sub_1C1F52994();
        }

        else
        {
          v186 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v65;

        if (v22 >= v186)
        {
          v73 = 0;
        }

        else
        {
          v73 = v70;
        }
      }

      else
      {
        v73 = 0;
        v51 = v65;
      }

      v48 = v239;
    }

    else
    {
      v73 = 0;
    }

    v219 = v51;
    v74 = (*v48 + 264);
    v1 = *v74;
    v75 = (*v74)(v63);
    if (v75 >> 62)
    {
      v11 = sub_1C1F52994();
    }

    else
    {
      v11 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 < v73)
    {
      goto LABEL_160;
    }

    if (v73 != v11)
    {
      if (v73 >= v11)
      {
        goto LABEL_162;
      }

      while (1)
      {
        v92 = v1(v76);
        if ((v92 & 0xC000000000000001) != 0)
        {
          v93 = MEMORY[0x1C6911DB0](v73, v92);
        }

        else
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_155;
          }

          if (v73 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            v23 = sub_1C1F52994();
            v208 = v14;
            if (!v23)
            {
              goto LABEL_164;
            }

            goto LABEL_7;
          }

          v93 = *(v92 + 8 * v73 + 32);
        }

        LOBYTE(v245) = v93[48];
        LOBYTE(v244[0]) = 14;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v245, v244) & 1) == 0)
        {
          goto LABEL_70;
        }

        (*(*v93 + 136))();
        v94 = sub_1C1F52464();
        v22 = v95;

        if (!*(v14 + 16))
        {
          break;
        }

        v96 = sub_1C1EAC150(v94, v22);
        v98 = v97;

        if ((v98 & 1) == 0)
        {
          goto LABEL_70;
        }

        v99 = *(**(*(v14 + 56) + 8 * v96) + 104);

        v22 = v99(v100);

        if (!v22)
        {
          goto LABEL_70;
        }

        v101 = v214;
        CalculateExpression.id.getter(v214);
        swift_beginAccess();
        v103 = sub_1C1EF42F8(&v245);
        if (*(v102 + 8))
        {
          v104 = *(v102 + 80);
          v26 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v26)
          {
            goto LABEL_161;
          }

          *(v102 + 80) = v105;
        }

        (v103)(&v245, 0);
        swift_endAccess();

        v76 = v232(v101, v238);
LABEL_71:
        if (v11 == ++v73)
        {
          goto LABEL_47;
        }
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_47:
    if (v231)
    {
      goto LABEL_88;
    }

    v1 = (v241 + 56);
    v77 = 1 << *(v241 + 32);
    v78 = v77 < 64 ? ~(-1 << v77) : -1;
    v79 = v78 & *(v241 + 56);
    v22 = (v77 + 63) >> 6;

    v81 = 0;
    v24 = v224;
    v206 = v22;
    v231 = v80;
LABEL_53:
    if (v79)
    {
      break;
    }

    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_157;
      }

      if (v82 >= v22)
      {
        break;
      }

      v79 = *(v1 + v82);
      ++v81;
      if (v79)
      {
        v81 = v82;
        goto LABEL_58;
      }
    }

    if (v218)
    {
      sub_1C1EF7298(v213, v218);
    }

    v166 = v207;
    v167 = v215;
LABEL_135:
    v173 = v205;
    CalculateExpression.id.getter(v205);
    aBlock = v261;
    v264 = v262;
    v265 = v230;
    v266 = v235;
    v267 = v229;
    v268 = v228;
    v269 = v166;
    v174 = v166;
    v270 = v233;
    v175 = v167;
    v271 = v167;
    *v272 = v260[0];
    *&v272[15] = *(v260 + 15);
    v176 = v219;
    v177 = v223;
    v273 = v219;
    v274 = v223;
    v275 = v227;
    v178 = v237;
    swift_beginAccess();
    sub_1C1EF816C(&aBlock, &v245);

    v179 = swift_isUniquelyReferenced_nonNull_native();
    *&v245 = *v178;
    *v178 = 0x8000000000000000;
    sub_1C1EF5B7C(&aBlock, v173, v179);
    v232(v173, v238);
    *v178 = v245;
    swift_endAccess();
    if (!v177)
    {

LABEL_140:

      goto LABEL_141;
    }

    v180 = v275;

    sub_1C1EACF44(&v245, v176, v177);

    if ((v180 & 1) == 0)
    {
      sub_1C1EF4F50(v176, v177);

      goto LABEL_140;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E8, &unk_1C1F58430);

    v182 = sub_1C1EB9370(v181);
    v183 = v243;
    v184 = swift_isUniquelyReferenced_nonNull_native();
    *&v245 = v183;
    sub_1C1EF5D4C(v182, v176, v177, v184);

    v243 = v245;
LABEL_141:
    v22 = v203;
    v245 = v261;
    *&v246 = v262;
    *(&v246 + 1) = v230;
    *&v247 = v235;
    *(&v247 + 1) = v229;
    *&v248 = v228;
    *(&v248 + 1) = v174;
    *&v249[0] = v233;
    BYTE8(v249[0]) = v175;
    *(v249 + 9) = v260[0];
    *(&v249[1] + 1) = *(v260 + 15);
    *&v250 = v176;
    *(&v250 + 1) = v177;
    v251 = v227;
    sub_1C1EF81A4(&v245);
    v14 = v208;
    v1 = v209;
    v11 = v212;
    if (v24 == v225)
    {
LABEL_153:

      v187 = v242;
LABEL_165:

      v188 = swift_allocObject();
      v188[2] = v11;
      v188[3] = v14;
      v189 = v200;
      v188[4] = v200;
      v188[5] = v187;

      if ([v202 isMainThread])
      {
        sub_1C1EF4750(v11, v14, v189, v187);

        v190 = 0;
        v191 = 0;
LABEL_168:

        sub_1C1E7A724(v198, v199);
        return sub_1C1E7A724(v190, v191);
      }

      sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
      v192 = sub_1C1F52854();
      v191 = swift_allocObject();
      *(v191 + 16) = sub_1C1EF8160;
      *(v191 + 24) = v188;
      v193 = swift_allocObject();
      v190 = sub_1C1EF85C8;
      *(v193 + 16) = sub_1C1EF85C8;
      *(v193 + 24) = v191;
      *&v254 = sub_1C1EF85C8;
      *(&v254 + 1) = v193;
      *&v252 = MEMORY[0x1E69E9820];
      *(&v252 + 1) = 1107296256;
      *&v253 = sub_1C1E7A734;
      *(&v253 + 1) = &block_descriptor_39;
      v194 = _Block_copy(&v252);

      dispatch_sync(v192, v194);

      _Block_release(v194);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_170;
    }
  }

LABEL_58:
  v83 = (*(v80 + 48) + ((v81 << 10) | (16 * __clz(__rbit64(v79)))));
  v84 = *v83;
  v11 = v83[1];
  v85 = *(*v239 + 456);

  v14 = v85(v86);
  if (!*(v14 + 16) || (sub_1C1F52CD4(), sub_1C1F524A4(), v87 = sub_1C1F52CF4(), v88 = -1 << *(v14 + 32), v89 = v87 & ~v88, ((*(v14 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0))
  {
LABEL_52:
    v79 &= v79 - 1;

    v24 = v224;
    v80 = v231;
    v22 = v206;
    goto LABEL_53;
  }

  v22 = ~v88;
  while (1)
  {
    v90 = (*(v14 + 48) + 16 * v89);
    v91 = *v90 == v84 && v90[1] == v11;
    if (v91 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v89 = (v89 + 1) & v22;
    if (((*(v14 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

LABEL_88:
  v106 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  v107 = v235 + 64;
  v108 = 1 << *(v235 + 32);
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  else
  {
    v109 = -1;
  }

  v14 = v109 & *(v235 + 64);
  v1 = ((v108 + 63) >> 6);

  v110 = 0;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v111 = v110;
        v231 = v106;
        if (!v14)
        {
          goto LABEL_94;
        }

LABEL_93:
        v110 = v111;
LABEL_97:
        v112 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v113 = v112 | (v110 << 6);
        v114 = *(v235 + 56);
        v115 = (*(v235 + 48) + 16 * v113);
        v11 = v115[1];
        v233 = *v115;
        v116 = *(**(v114 + 8 * v113) + 104);

        if (!v116(v117))
        {
LABEL_101:
          v106 = v231;
          v22 = sub_1C1EAC150(v233, v11);
          v125 = v124;

          if (v125)
          {
            v126 = swift_isUniquelyReferenced_nonNull_native();
            *&v245 = v106;
            if (!v126)
            {
              sub_1C1EEAC38();
              v106 = v245;
            }

            sub_1C1EC22D4(v22, v106);

            continue;
          }

          v111 = v110;
          if (!v14)
          {
LABEL_94:
            while (1)
            {
              v110 = v111 + 1;
              if (__OFADD__(v111, 1))
              {
                break;
              }

              if (v110 >= v1)
              {

                *(&v246 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
                *&v245 = v106;
                sub_1C1EB1C58(&v245, v244);
                v149 = v230;

                v150 = swift_isUniquelyReferenced_nonNull_native();
                v240 = v149;
                sub_1C1EEA928(v244, v217, v150);
                v151 = v240;
                if (!*(v240 + 16) || (, sub_1C1EE987C(v204), v153 = v152, , (v153 & 1) == 0))
                {
                  *(&v246 + 1) = MEMORY[0x1E69E6370];
                  LOBYTE(v245) = 1;
                  sub_1C1EB1C58(&v245, v244);
                  v154 = swift_isUniquelyReferenced_nonNull_native();
                  v240 = v151;
                  sub_1C1EEA928(v244, v204, v154);
                  v151 = v240;
                }

                LOBYTE(v244[0]) = 0;
                v155 = sub_1C1F52424();
                sub_1C1EF4488(v151);
                v156 = sub_1C1F52344();

                *&v245 = 0;
                v157 = CalculateEvaluateError(v155, v156, &v245, v244);

                v158 = v245;
                if (LOBYTE(v244[0]) == 1)
                {
                  type metadata accessor for StocksKitCurrencyCache();
                  v159 = v158;
                  v160 = v157;
                  if (static StocksKitCurrencyCache.isEnabled.getter())
                  {
                    v161 = sub_1C1EBB764();
                    v162 = *((*MEMORY[0x1E69E7D40] & **v161) + 0x60);
                    v163 = *v161;
                    v162(6.0);
                  }

                  else
                  {
                    if ([v202 isMainThread])
                    {
                      v168 = [objc_opt_self() shared];
                      [v168 setTimeout_];
                    }

                    v163 = [objc_opt_self() shared];
                    [v163 refreshIfNeeded];
                  }

                  v165 = v218;

                  v169 = sub_1C1F52424();
                  sub_1C1EF4488(v151);

                  v170 = sub_1C1F52344();

                  *&v245 = v159;
                  v157 = CalculateEvaluateError(v169, v170, &v245, v244);

                  v164 = v245;
                }

                else
                {
                  v164 = v245;

                  v165 = v218;
                }

                v166 = v157;
                v171 = v256;
                v233 = v164;
                v172 = v164;

                v24 = v224;
                if (v165)
                {

                  sub_1C1EACF44(&v245, v213, v165);
                }

                v167 = 0;
                goto LABEL_135;
              }

              v14 = *(v107 + 8 * v110);
              ++v111;
              if (v14)
              {
                goto LABEL_97;
              }
            }

            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          goto LABEL_93;
        }

        break;
      }

      v118 = v221;
      CalculateExpression.id.getter(v221);

      v119 = v222;
      (*v220)(v222, v118, v238);
      v120 = v237;
      swift_beginAccess();
      v121 = *v120;
      if (!*(v121 + 16) || (v122 = sub_1C1EB4BE4(v119), (v123 & 1) == 0))
      {
        swift_endAccess();
        v232(v119, v238);
        goto LABEL_101;
      }

      v127 = *(v121 + 56) + 120 * v122;
      v129 = *(v127 + 32);
      v128 = *(v127 + 48);
      v130 = *(v127 + 16);
      v245 = *v127;
      v246 = v130;
      v247 = v129;
      v248 = v128;
      v131 = *(v127 + 64);
      v132 = *(v127 + 80);
      v133 = *(v127 + 96);
      v251 = *(v127 + 112);
      v249[1] = v132;
      v250 = v133;
      v249[0] = v131;
      swift_endAccess();
      v134 = *(&v248 + 1);
      sub_1C1EF816C(&v245, v244);
      v215 = v134;
      v135 = v134;
      v136 = v231;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v244[0] = v136;
      v137 = v233;
      v139 = sub_1C1EAC150(v233, v11);
      v140 = *(v136 + 16);
      v141 = (v138 & 1) == 0;
      v142 = v140 + v141;
      if (__OFADD__(v140, v141))
      {
        goto LABEL_171;
      }

      if (*(v136 + 24) >= v142)
      {
        if (v22)
        {
          if (v138)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v231 = v139;
          v22 = v138;
          sub_1C1EEAC38();
          v139 = v231;
          if (v22)
          {
            goto LABEL_115;
          }
        }

LABEL_111:
        v106 = *&v244[0];
        *(*&v244[0] + 8 * (v139 >> 6) + 64) |= 1 << v139;
        v145 = (v106[6] + 16 * v139);
        *v145 = v137;
        v145[1] = v11;
        *(v106[7] + 8 * v139) = v215;

        sub_1C1EF81A4(&v245);
        v232(v222, v238);
        v146 = v106[2];
        v26 = __OFADD__(v146, 1);
        v147 = v146 + 1;
        if (!v26)
        {
          v106[2] = v147;
          continue;
        }

LABEL_172:
        __break(1u);
      }

      break;
    }

    LODWORD(v231) = v138;
    sub_1C1EEA1E0(v142, v22);
    v143 = sub_1C1EAC150(v137, v11);
    if ((v231 & 1) == (v144 & 1))
    {
      v139 = v143;
      if ((v231 & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_115:
      v11 = v139;

      v106 = *&v244[0];
      v148 = *(*&v244[0] + 56);
      v22 = *(v148 + 8 * v11);
      *(v148 + 8 * v11) = v215;

      sub_1C1EF81A4(&v245);
      v232(v222, v238);
      continue;
    }

    break;
  }

  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E7A2E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1E7A31C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1E7A364()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1E7A3AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1C1E7A408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21450, &unk_1C1F58940);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v7 = sub_1C1F52BE4();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_1C1EB1D18(a1 + v8, v5, &qword_1EBF21450, &unk_1C1F58940);
  v10 = sub_1C1EB4BE4(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_1C1F52034();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 120 * v12), &v5[v25], 0x71uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_1C1EB1D18(v16, v5, &qword_1EBF21450, &unk_1C1F58940);
    v12 = sub_1C1EB4BE4(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *NumberFormatterObserver.__allocating_init(_:didChange:willChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1C1E7B48C(a1, a2, a3, a4, a5);
  sub_1C1E7A724(a4, a5);

  return v10;
}

uint64_t sub_1C1E7A714(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E7A724(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E7A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = sub_1C1F52034();
  v43 = *(v46 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v46);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*a1 + 360))(v6);
  if (v9)
  {
    v10 = (*(*a1 + 368))();
    v9 = (*(*a1 + 344))(v10);
  }

  v11 = (*(*a1 + 336))(v9);
  swift_beginAccess();
  *(a2 + 16) = v11;

  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    do
    {
      v45 = v11 & 0xC000000000000001;
      v42[0] = v11 & 0xFFFFFFFFFFFFFF8;
      v42[1] = v43 + 16;
      v44 = (v43 + 8);

      v14 = 0;
      while (v45)
      {
        v15 = MEMORY[0x1C6911DB0](v14, v11);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_27;
        }

LABEL_13:
        CalculateExpression.id.getter(v8);

        sub_1C1EF7DDC(v17, v48);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *(a3 + 16);
        v19 = v47;
        *(a3 + 16) = 0x8000000000000000;
        v20 = sub_1C1EB4BE4(v8);
        v22 = v19[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_28;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v20;
            sub_1C1EF5FAC();
            v20 = v41;
          }
        }

        else
        {
          sub_1C1EF4FE8(v25, isUniquelyReferenced_nonNull_native);
          v20 = sub_1C1EB4BE4(v8);
          if ((v26 & 1) != (v27 & 1))
          {
            result = sub_1C1F52CA4();
            __break(1u);
            return result;
          }
        }

        v28 = v47;
        if (v26)
        {
          sub_1C1EF858C(v48, v47[7] + 120 * v20);
        }

        else
        {
          v47[(v20 >> 6) + 8] |= 1 << v20;
          v29 = v20;
          (*(v43 + 16))(v28[6] + *(v43 + 72) * v20, v8, v46);
          v30 = v28[7] + 120 * v29;
          v31 = v48[0];
          v32 = v48[1];
          v33 = v48[3];
          *(v30 + 32) = v48[2];
          *(v30 + 48) = v33;
          *v30 = v31;
          *(v30 + 16) = v32;
          v34 = v48[4];
          v35 = v48[5];
          v36 = v48[6];
          *(v30 + 112) = v49;
          *(v30 + 80) = v35;
          *(v30 + 96) = v36;
          *(v30 + 64) = v34;
          v37 = v28[2];
          v24 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v24)
          {
            goto LABEL_29;
          }

          v28[2] = v38;
        }

        (*v44)(v8, v46);
        *(a3 + 16) = v28;

        swift_endAccess();
        v39 = OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest;
        swift_beginAccess();
        v40 = *(v15 + v39);
        if (v40)
        {
          [v40 cancel];
        }

        sub_1C1ED67BC(1);

        ++v14;
        if (v16 == v13)
        {
        }
      }

      if (v14 >= *(v42[0] + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v11 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_13;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1C1F52994();
      v13 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1C1E7AC94()
{
  (*(*v0 + 728))();
  sub_1C1F52804();
  swift_getWitnessTable();
  sub_1C1F52674();

  sub_1C1F52754();
  type metadata accessor for CalculateExpression(0);

  swift_getWitnessTable();
  v1 = sub_1C1F52614();

  return v1;
}

void sub_1C1E7B090(void *a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter;
  v4 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1F528C4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1C1E7B254();
}

void sub_1C1E7B254()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (v1)
  {
    type metadata accessor for NumberFormatterObserver(0);
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v1;
    v5 = NumberFormatterObserver.__allocating_init(_:didChange:willChange:)(v4, sub_1C1EEDFD4, v2, sub_1C1EEDFDC, v3);
    sub_1C1E7B6FC(v5);
  }

  else
  {
    sub_1C1E7B6FC(0);
  }
}

uint64_t sub_1C1E7B3B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C1E7B3F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter) = v1;
  v4 = v1;

  sub_1C1E7B254();
}

uint64_t type metadata accessor for NumberFormatterObserver(uint64_t a1)
{
  result = qword_1EDC2F360;
  if (!qword_1EDC2F360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C1E7B48C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1C1F52024();
  if (qword_1EDC2F380 != -1)
  {
    swift_once();
  }

  [qword_1EDC2F388 lock];
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = sub_1C1ED1B7C(a1, qword_1EDC2F378);
  swift_endAccess();
  if (v12)
  {
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for _NumberFormatterObserver());
    v14 = a1;
    v21 = sub_1C1ED4C30(v14);

    swift_beginAccess();
    if ((qword_1EDC2F378 & 0xC000000000000001) != 0)
    {
      if (qword_1EDC2F378 < 0)
      {
        v15 = qword_1EDC2F378;
      }

      else
      {
        v15 = qword_1EDC2F378 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_1C1F52994();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      qword_1EDC2F378 = sub_1C1ED2CF4(v15, result + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = qword_1EDC2F378;
    sub_1C1ED3BE0(v21, v14, isUniquelyReferenced_nonNull_native);
    qword_1EDC2F378 = v22;
    swift_endAccess();
  }

  swift_beginAccess();
  v18 = sub_1C1ED1B7C(a1, qword_1EDC2F378);
  result = swift_endAccess();
  if (v18)
  {
    v6[2] = v18;
    v6[3] = a2;
    v6[4] = a3;
    v6[5] = a4;
    v6[6] = a5;
    v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x78);
    v20 = v18;

    sub_1C1E7A714(a4, a5);
    v19(v6);

    [qword_1EDC2F388 unlock];
    return v6;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1E7B6FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver))
  {
    if (a1)
    {
      type metadata accessor for NumberFormatterObserver(0);
      sub_1C1E77790(qword_1EDC2C408, type metadata accessor for NumberFormatterObserver, &protocol conformance descriptor for NumberFormatterObserver);

      v5 = sub_1C1F52414();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1C1E7BACC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E7BC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1F520E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1C1E77790(&qword_1EBF213D8, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v22 = sub_1C1F52414();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E7BE78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1C1E7BEDC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      if (*(v1 + v2) == 1)
      {
        if (qword_1EBF22078 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_1EDC2FED8 == -1)
      {
        goto LABEL_11;
      }

LABEL_21:
      swift_once();
      goto LABEL_11;
    }

    if (qword_1EBF22068 != -1)
    {
      goto LABEL_21;
    }
  }

  else if (qword_1EDC2FF18 != -1)
  {
    goto LABEL_21;
  }

LABEL_11:

  sub_1C1E7BACC(v3, &OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations, sub_1C1E7EDC0, &unk_1C1F57970, sub_1C1E81E78);
  swift_getKeyPath();
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1F57700;

    *(inited + 32) = *sub_1C1E7CFF8();

    *(inited + 40) = *sub_1C1E7D108();

    *(inited + 48) = *sub_1C1E7D3A8();
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 >= 0)
      {
        v5 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v7 = sub_1C1F52994();
      v5 = sub_1C1EE990C(v5, v7);
    }

    else
    {
    }

    v8 = sub_1C1EEADA8(inited, v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1EDC2FF08 != -1)
    {
      swift_once();
    }

    v10 = sub_1C1ED5818(v9, v8);
    return sub_1C1E7BACC(v10, &OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations, sub_1C1E7EDC0, &unk_1C1F57970, sub_1C1E81E78);
  }

  return result;
}

void sub_1C1E7C30C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C1E7C358()
{
  if (qword_1EDC2FEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FF00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576D0;

  *(inited + 32) = *sub_1C1E7D7BC();

  *(inited + 40) = *sub_1C1E7D80C();

  *(inited + 48) = *sub_1C1E7D910();

  *(inited + 56) = *sub_1C1E7D99C();

  *(inited + 64) = *sub_1C1E81450();

  *(inited + 72) = *sub_1C1E814A0();

  *(inited + 80) = *sub_1C1E7DA5C();

  *(inited + 88) = *sub_1C1E8153C();

  *(inited + 96) = *sub_1C1E8158C();

  *(inited + 104) = *sub_1C1E7DBF8();

  *(inited + 112) = *sub_1C1E81600();

  *(inited + 120) = *sub_1C1E7DCC0();

  *(inited + 128) = *sub_1C1E7DD10();

  *(inited + 136) = *sub_1C1E7DE50();

  *(inited + 144) = *sub_1C1E7DEA0();

  *(inited + 152) = *sub_1C1E7DF24();

  *(inited + 160) = *sub_1C1E7DF74();

  *(inited + 168) = *sub_1C1E817CC();

  *(inited + 176) = *sub_1C1E7DFE8();

  *(inited + 184) = *sub_1C1E7E0C8();

  *(inited + 192) = *sub_1C1E81864();

  *(inited + 200) = *sub_1C1E818FC();

  *(inited + 208) = *sub_1C1E8194C();

  *(inited + 216) = *sub_1C1E7E1F0();

  *(inited + 224) = *sub_1C1E8199C();

  *(inited + 232) = *sub_1C1E7E240();

  *(inited + 240) = *sub_1C1E7E2E0();

  *(inited + 248) = *sub_1C1E81A84();

  *(inited + 256) = *sub_1C1E8218C();

  *(inited + 264) = *sub_1C1E81AD4();

  *(inited + 272) = *sub_1C1E7E3DC();

  *(inited + 280) = *sub_1C1E81BB8();

  *(inited + 288) = *sub_1C1E81B68();

  *(inited + 296) = *sub_1C1E81C4C();

  *(inited + 304) = *sub_1C1E7E48C();

  *(inited + 312) = *sub_1C1E81CD8();

  *(inited + 320) = *sub_1C1E81D28();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDC2FF20 = v2;
  return result;
}

uint64_t sub_1C1E7C67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576C0;
  *(inited + 32) = *sub_1C1E7C82C();

  *(inited + 40) = *sub_1C1E7C9E0();

  *(inited + 48) = *sub_1C1E7CA30();

  *(inited + 56) = *sub_1C1E7CABC();

  *(inited + 64) = *sub_1C1E7CB48();

  *(inited + 72) = *sub_1C1E7CB98();

  *(inited + 80) = *sub_1C1E7CBE8();

  *(inited + 88) = *sub_1C1E7CCEC();

  *(inited + 96) = *sub_1C1E7CD3C();

  *(inited + 104) = *sub_1C1E7CE54();

  *(inited + 112) = *sub_1C1E7CF1C();

  *(inited + 120) = *sub_1C1E7CFA8();

  *(inited + 128) = *sub_1C1E7CFF8();

  *(inited + 136) = *sub_1C1E7D108();

  *(inited + 144) = *sub_1C1E7D17C();

  *(inited + 152) = *sub_1C1E7D258();

  *(inited + 160) = *sub_1C1E7D2CC();

  *(inited + 168) = *sub_1C1E7D3A8();

  v1 = sub_1C1E7D41C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDC2FF00 = v1;
  return result;
}

uint64_t *sub_1C1E7C82C()
{
  if (qword_1EDC2FAA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAA8;
}

uint64_t sub_1C1E7C87C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(48, 0xE100000000000000);
  qword_1EDC2FAA8 = result;
  return result;
}

uint64_t sub_1C1E7C8DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E7C924()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(49, 0xE100000000000000);
  qword_1EDC2FA98 = result;
  return result;
}

uint64_t sub_1C1E7C968()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2FA88 = result;
  return result;
}

uint64_t sub_1C1E7C9A4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(51, 0xE100000000000000);
  qword_1EDC2FA78 = result;
  return result;
}

uint64_t *sub_1C1E7C9E0()
{
  if (qword_1EDC2FA90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA98;
}

uint64_t *sub_1C1E7CA30()
{
  if (qword_1EDC2FA80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA88;
}

uint64_t sub_1C1E7CA80()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(52, 0xE100000000000000);
  qword_1EDC2FA68 = result;
  return result;
}

uint64_t *sub_1C1E7CABC()
{
  if (qword_1EDC2FA70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA78;
}

uint64_t sub_1C1E7CB0C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(53, 0xE100000000000000);
  qword_1EDC2FA58 = result;
  return result;
}

uint64_t *sub_1C1E7CB48()
{
  if (qword_1EDC2FA60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA68;
}

uint64_t *sub_1C1E7CB98()
{
  if (qword_1EDC2FA50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA58;
}

uint64_t *sub_1C1E7CBE8()
{
  if (qword_1EDC2FA40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA48;
}

uint64_t sub_1C1E7CC38()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(54, 0xE100000000000000);
  qword_1EDC2FA48 = result;
  return result;
}

uint64_t sub_1C1E7CC74()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(55, 0xE100000000000000);
  qword_1EDC2FA38 = result;
  return result;
}

uint64_t sub_1C1E7CCB0()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(43, 0xE100000000000000);
  qword_1EDC2FBB8 = result;
  return result;
}

uint64_t *sub_1C1E7CCEC()
{
  if (qword_1EDC2FA30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA38;
}

uint64_t *sub_1C1E7CD3C()
{
  if (qword_1EDC2FBB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBB8;
}

uint64_t sub_1C1E7CDB0(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  if (a1 == 6582125 && a2 == 0xE300000000000000 || (sub_1C1F52C64() & 1) != 0)
  {

    a2 = 0xE100000000000000;
    v5 = 1;
    a1 = 37;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E7C960();
}

uint64_t *sub_1C1E7CE54()
{
  if (qword_1EDC2F8A0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8A8;
}

uint64_t sub_1C1E7CEA4()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(45, 0xE100000000000000);
  qword_1EDC2F8A8 = result;
  return result;
}

uint64_t sub_1C1E7CEE0()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(38851, 0xA200000000000000);
  qword_1EDC2F8B8 = result;
  return result;
}

uint64_t *sub_1C1E7CF1C()
{
  if (qword_1EDC2F8B0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8B8;
}

uint64_t sub_1C1E7CF6C()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(47043, 0xA200000000000000);
  qword_1EDC2F9A8 = result;
  return result;
}

uint64_t *sub_1C1E7CFA8()
{
  if (qword_1EDC2F9A0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9A8;
}

uint64_t *sub_1C1E7CFF8()
{
  if (qword_1EDC2FCE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCE8;
}

uint64_t sub_1C1E7D048()
{
  type metadata accessor for CalculateExpression.OpenParenthesisOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FCE8 = result;
  return result;
}

uint64_t sub_1C1E7D0D4()
{
  type metadata accessor for CalculateExpression.CloseParenthesisOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FCD8 = result;
  return result;
}

uint64_t *sub_1C1E7D108()
{
  if (qword_1EDC2FCD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCD8;
}

uint64_t *sub_1C1E7D17C()
{
  if (qword_1EDC2FAB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAB8;
}

uint64_t sub_1C1E7D1CC()
{
  type metadata accessor for CalculateExpression.DeleteOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAB8 = result;
  return result;
}

uint64_t sub_1C1E7D224()
{
  type metadata accessor for CalculateExpression.ClearOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAF8 = result;
  return result;
}

uint64_t *sub_1C1E7D258()
{
  if (qword_1EDC2FAF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAF8;
}

uint64_t *sub_1C1E7D2CC()
{
  if (qword_1EDC2F8E0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8E8;
}

uint64_t sub_1C1E7D31C()
{
  type metadata accessor for CalculateExpression.AllClearOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F8E8 = result;
  return result;
}

uint64_t sub_1C1E7D374()
{
  type metadata accessor for CalculateExpression.EqualsOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F998 = result;
  return result;
}

uint64_t *sub_1C1E7D3A8()
{
  if (qword_1EDC2F990 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F998;
}

unint64_t sub_1C1E7D41C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
      result = sub_1C1F52A34();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1F52994();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1C6911DB0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
    result = sub_1C1F523B4();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
      do
      {
        result = sub_1C1F52414();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1C1E7D6D8()
{
  result = qword_1EDC2CA88;
  if (!qword_1EDC2CA88)
  {
    type metadata accessor for CalculateExpression.Operation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2CA88);
  }

  return result;
}

uint64_t sub_1C1E7D72C(uint64_t a1)
{
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](*v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E7D780()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(56, 0xE100000000000000);
  qword_1EDC2FA28 = result;
  return result;
}

uint64_t *sub_1C1E7D7BC()
{
  if (qword_1EDC2FA20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA28;
}

uint64_t *sub_1C1E7D80C()
{
  if (qword_1EDC2FA10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA18;
}

uint64_t sub_1C1E7D85C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(57, 0xE100000000000000);
  qword_1EDC2FA18 = result;
  return result;
}

uint64_t sub_1C1E7D898()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(46, 0xE100000000000000);
  qword_1EDC2F948 = result;
  return result;
}

uint64_t sub_1C1E7D8D4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(101, 0xE100000000000000);
  qword_1EDC2FBE8 = result;
  return result;
}

uint64_t *sub_1C1E7D910()
{
  if (qword_1EDC2F940 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F948;
}

uint64_t sub_1C1E7D960()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(37, 0xE100000000000000);
  qword_1EDC2F918 = result;
  return result;
}

uint64_t *sub_1C1E7D99C()
{
  if (qword_1EDC2FBE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBE8;
}

uint64_t sub_1C1E7D9EC()
{
  type metadata accessor for CalculateExpression.FactorialOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F888 = result;
  return result;
}

uint64_t sub_1C1E7DA20()
{
  type metadata accessor for CalculateExpression.ConstantOperation();
  result = sub_1C1E7DAAC(32975, 0xA200000000000000);
  qword_1EDC2FBC8 = result;
  return result;
}

uint64_t *sub_1C1E7DA5C()
{
  if (qword_1EDC2FBC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBC8;
}

uint64_t sub_1C1E7DAAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t sub_1C1E7DAF4()
{
  type metadata accessor for CalculateExpression.ConstantOperation();
  result = sub_1C1E7DAAC(101, 0xE100000000000000);
  qword_1EDC2FD88 = result;
  return result;
}

uint64_t sub_1C1E7DB30()
{
  type metadata accessor for CalculateExpression.RandOperation();
  result = sub_1C1E7DBC4();
  qword_1EDC2F978 = result;
  return result;
}

uint64_t sub_1C1E7DB88()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2F958 = result;
  return result;
}

uint64_t *sub_1C1E7DBF8()
{
  if (qword_1EDC2F950 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F958;
}

uint64_t sub_1C1E7DC48()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(51, 0xE100000000000000);
  qword_1EDC2FB48 = result;
  return result;
}

uint64_t sub_1C1E7DC84()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(0, 0xE000000000000000);
  qword_1EDC2FAD8 = result;
  return result;
}

uint64_t *sub_1C1E7DCC0()
{
  if (qword_1EDC2FAD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAD8;
}

uint64_t *sub_1C1E7DD10()
{
  if (qword_1EDC2FD90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD98;
}

uint64_t sub_1C1E7DD68()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(51, 0xE100000000000000, v0 & 1);
  qword_1EDC2F8C8 = result;
  return result;
}

uint64_t sub_1C1E7DDAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E7DE0C()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(0, 0xE000000000000000, v0 & 1);
  qword_1EDC2FB28 = result;
  return result;
}

uint64_t *sub_1C1E7DE50()
{
  if (qword_1EDC2F8C0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8C8;
}

uint64_t *sub_1C1E7DEA0()
{
  if (qword_1EDC2FB20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB28;
}

uint64_t sub_1C1E7DEF0()
{
  type metadata accessor for CalculateExpression.ReciprocalOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FDB8 = result;
  return result;
}

uint64_t *sub_1C1E7DF24()
{
  if (qword_1EDC2FDB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FDB8;
}

uint64_t *sub_1C1E7DF74()
{
  if (qword_1EDC2F980 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F988;
}

uint64_t *sub_1C1E7DFE8()
{
  if (qword_1EDC2FAC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAC8;
}

uint64_t sub_1C1E7E038()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7233908, 0xE300000000000000, v0 & 1);
  qword_1EDC2F8F8 = result;
  return result;
}

uint64_t sub_1C1E7E080()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1852404577, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD78 = result;
  return result;
}

uint64_t *sub_1C1E7E0C8()
{
  if (qword_1EDC2F8F0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8F8;
}

uint64_t sub_1C1E7E118()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1851880545, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD28 = result;
  return result;
}

uint64_t sub_1C1E7E160()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752066419, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD38 = result;
  return result;
}

uint64_t sub_1C1E7E1A8()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752395619, 0xE400000000000000, v0 & 1);
  qword_1EDC2FCB8 = result;
  return result;
}

uint64_t *sub_1C1E7E1F0()
{
  if (qword_1EDC2FD30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD38;
}

uint64_t *sub_1C1E7E240()
{
  if (qword_1EDC2FC60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC68;
}

uint64_t sub_1C1E7E290()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x68736F6361, 0xE500000000000000, v0 & 1);
  qword_1EDC2FC08 = result;
  return result;
}

uint64_t *sub_1C1E7E2E0()
{
  if (qword_1EDC2FC10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC18;
}

uint64_t sub_1C1E7E330()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(12337, 0xE200000000000000, v0 & 1);
  qword_1EDC2FCF8 = result;
  return result;
}

uint64_t sub_1C1E7E398()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(0, 0xE000000000000000, v0 & 1);
  qword_1EDC2FC48 = result;
  return result;
}

uint64_t *sub_1C1E7E3DC()
{
  if (qword_1EDC2FD10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD18;
}

uint64_t sub_1C1E7E450()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2FCC8 = result;
  return result;
}

uint64_t *sub_1C1E7E48C()
{
  if (qword_1EDC2FCC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCC8;
}

uint64_t sub_1C1E7E4DC()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(0, 0xE000000000000000);
  qword_1EDC2FC28 = result;
  return result;
}

uint64_t sub_1C1E7E518()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(101, 0xE100000000000000);
  qword_1EDC2FC38 = result;
  return result;
}

uint64_t sub_1C1E7E554(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1C1F529A4();

    if (v8)
    {

      type metadata accessor for CalculateExpression.Operation();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1C1F52994();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1C1EE990C(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1C1E7EB2C(v17 + 1);
    }

    sub_1C1EE9B40(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
  v10 = sub_1C1F523B4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1C1E7E7F4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
  while ((sub_1C1F52414() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1C1E7E7F4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1E7EB2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C1E7E9DC();
      goto LABEL_12;
    }

    sub_1C1EE9C28(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
  result = sub_1C1F523B4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
    do
    {
      result = sub_1C1F52414();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

void *sub_1C1E7E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  v2 = *v0;
  v3 = sub_1C1F52A04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1E7EB2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  result = sub_1C1F52A14();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression.Operation();
      sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
      result = sub_1C1F523B4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C1E7EDC0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for CalculateExpression.Operation();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = qword_1EDC2CA90;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);

          v19 = sub_1C1F523B4();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
          while ((sub_1C1F52414() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = qword_1EDC2CA90;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1C1EEB8EC(v8, v7);
}

uint64_t sub_1C1E7F0B4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1C1E7F10C()
{
  v1 = v0;
  swift_getKeyPath();
  v32 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27 = v1;
    LOBYTE(v28) = 0;
    v31 = v1;
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  v31 = v1;
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  v5 = &unk_1EDC30000;
  if (*(v1 + v4) == 1)
  {
    swift_getKeyPath();
    v30 = v1;
    sub_1C1F52104();

    v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
    swift_beginAccess();
    if (*(v1 + v6) != 1)
    {
      goto LABEL_13;
    }

    swift_getKeyPath();
    v30 = v1;
    sub_1C1F52104();

    v7 = *(v1 + v4);
    type metadata accessor for CalculateExpression.PlainExpression();
    if (v7 == 1)
    {

      v9 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v8, 0);
      v10 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v10) != v9)
      {
LABEL_9:
        v13 = swift_getKeyPath();
        v29[1] = v29;
        MEMORY[0x1EEE9AC00](v13);
        v27 = v1;
        v28 = v9;
        v30 = v1;
        sub_1C1F520F4();

        if (*(v1 + v6))
        {
LABEL_10:
          v14 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v14);
          *&v26[-16] = v1;
          v26[-8] = 0;
          v30 = v1;
          sub_1C1F520F4();

          goto LABEL_13;
        }

LABEL_12:
        *(v1 + v6) = 0;
LABEL_13:
        type metadata accessor for CalculateExpression.RichExpression();
        swift_getKeyPath();
        v30 = v1;
        sub_1C1F52104();

        swift_beginAccess();

        v16 = sub_1C1E88104(v15);
        sub_1C1E917DC(v16);
        swift_getKeyPath();
        v30 = v1;
        sub_1C1F52104();

        v5 = &unk_1EDC30000;
        v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
        swift_beginAccess();
        v18 = *(**(v1 + v17) + 224);

        LOBYTE(v18) = v18(v19);

        v20 = (v18 ^ 1) & 1;
        v21 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
        swift_beginAccess();
        if (v20 == *(v1 + v21))
        {
          *(v1 + v21) = v20;
          if ((*(v1 + v4) & 1) == 0)
          {
LABEL_15:
            *(v1 + v4) = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v22 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v22);
          v27 = v1;
          LOBYTE(v28) = v20;
          v30 = v1;
          sub_1C1F520F4();

          if ((*(v1 + v4) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v23 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v23);
        v27 = v1;
        LOBYTE(v28) = 0;
        v30 = v1;
        sub_1C1F520F4();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C1E7F10C();

      v9 = CalculateExpression.PlainExpression.__allocating_init(_:)(v11);
      v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v12) != v9)
      {
        goto LABEL_9;
      }
    }

    sub_1C1EE6650(v9);
    if (*(v1 + v6))
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_18:
  swift_getKeyPath();
  v30 = v1;
  sub_1C1F52104();

  v24 = v5[357];
  swift_beginAccess();
  return *(v1 + v24);
}

uint64_t CalculateExpression.PlainExpression.__allocating_init(parent:options:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CalculateExpression.PlainExpression.init(parent:options:)(a1, a2);
  return v4;
}

unint64_t CalculateExpression.PlainExpression.init(parent:options:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C1F51F94();
  v169 = *(v5 - 8);
  v170 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1F520E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 72) = 0;
  *(v2 + 24) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v178 = (v2 + 32);
  *(v2 + 40) = 1;
  v13 = MEMORY[0x1E69E7CD0];
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = v13;
  *(v2 + 80) = v12;
  v14 = (v2 + 80);
  v177 = v2 + 72;
  *(v2 + 88) = 0;
  swift_beginAccess();
  v183 = v2;
  swift_weakAssign();
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = sub_1C1E811D8();
  }

  v16 = *(v15 + 16);
  v181 = v15;
  if (v16)
  {

    v17 = sub_1C1E81EB0(@"CalculateKeyAllowUnits");
    if (v18)
    {
      sub_1C1EB0E00(*(v181 + 56) + 32 * v17, &v184);
      sub_1C1EC353C();
      if (swift_dynamicCast())
      {
        v19 = v195;
        v20 = [v195 BOOLValue];

        if ((v20 & 1) == 0)
        {
          v21 = 0;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
  }

  v21 = [objc_opt_self() converterUnits];
LABEL_11:
  v182 = [objc_allocWithZone(CalculateTokenizer) initWithUnits_];

  v22 = v181;
  if (*(v181 + 16))
  {
    v23 = sub_1C1E81EB0(@"CalculateKeyFormat");
    if (v24)
    {
      sub_1C1EB0E00(*(v22 + 56) + 32 * v23, &v195);
    }

    else
    {
      v195 = 0u;
      v196 = 0u;
    }
  }

  else
  {
    v195 = 0u;
    v196 = 0u;
  }

  sub_1C1E83510(&v195, &v184);
  v180 = a1;
  v174 = v14;
  v176 = a2;
  v171 = v7;
  if (!v187)
  {
    sub_1C1E83580(&v184, &qword_1EBF212D8, &qword_1C1F574F0);
    goto LABEL_25;
  }

  sub_1C1EC353C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    CalculateExpression.expression.getter();
    v28 = v41;
    v40 = 0;
    goto LABEL_27;
  }

  v25 = v193[0];
  v26 = [v193[0] integerValue];

  CalculateExpression.expression.getter();
  v28 = v27;
  if (v26 == 1)
  {
    v29 = sub_1C1F52424();

    v30 = sub_1C1F52424();
    v188 = sub_1C1EC7770;
    v189 = 0;
    v184 = MEMORY[0x1E69E9820];
    v185 = 1107296256;
    v186 = sub_1C1EC78F8;
    v187 = &block_descriptor_0;
    v31 = _Block_copy(&v184);
    v32 = [v29 calc:v30 stringByReplacingOccurrencesOfRegex:v31 usingBlock:?];
    _Block_release(v31);

    if (!v32)
    {
      sub_1C1F52454();
      v32 = sub_1C1F52424();
    }

    v33 = sub_1C1F52424();
    v188 = sub_1C1EC79A8;
    v189 = 0;
    v184 = MEMORY[0x1E69E9820];
    v185 = 1107296256;
    v186 = sub_1C1EC7874;
    v187 = &block_descriptor_3;
    v34 = _Block_copy(&v184);
    v35 = [v32 calc:v33 stringByReplacingOccurrencesOfRegex:v34 usingBlockWithResult:?];
    _Block_release(v34);

    if (!v35)
    {
      sub_1C1F52454();
      v35 = sub_1C1F52424();
    }

    v36 = sub_1C1F52424();
    v188 = sub_1C1EC79B4;
    v189 = 0;
    v184 = MEMORY[0x1E69E9820];
    v185 = 1107296256;
    v186 = sub_1C1EC78F8;
    v187 = &block_descriptor_6;
    v37 = _Block_copy(&v184);
    v38 = [v35 calc:v36 stringByReplacingOccurrencesOfRegex:v37 usingBlock:?];
    _Block_release(v37);

    sub_1C1F52454();
    v28 = v39;

    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

LABEL_27:
  if (!*(CalculateExpression.locales.getter() + 16))
  {

    v42 = [objc_opt_self() systemLocales];
    sub_1C1F526B4();
  }

  v179 = v28;
  v43 = sub_1C1F526A4();

  v44 = CalculateExpression.effectiveNumberFormatter.getter();
  v45 = [v44 locale];

  if (v45)
  {
    sub_1C1F520A4();

    v45 = sub_1C1F52094();
    (*(v9 + 8))(v11, v8);
  }

  v46 = v182;
  v47 = [objc_opt_self() locales:v43 withDefault:v45];

  if (!v47)
  {
    sub_1C1F526B4();
    v47 = sub_1C1F526A4();
  }

  [v46 setLocales_];

  v48 = sub_1C1F52424();
  [v46 setString_];

  if (*(v181 + 16) && (, sub_1C1E81EB0(@"CalculateKeyVariables"), v50 = v49, , (v50 & 1) != 0))
  {
    v51 = MEMORY[0x1E69E7CC0];
    if (*(v181 + 16) && (v52 = sub_1C1E81EB0(@"CalculateKeyVariables"), (v53 & 1) != 0) && (sub_1C1EB0E00(*(v181 + 56) + 32 * v52, &v184), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212E0, &unk_1C1F57108), (swift_dynamicCast() & 1) != 0))
    {
      v54 = sub_1C1F52344();
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v55 = sub_1C1E83C94();
    sub_1C1E8425C(v55);

    v54 = sub_1C1F52344();

    v51 = MEMORY[0x1E69E7CC0];
  }

  [v46 setVariables_];

  CalculateExpression.graphableVariable.getter();
  if (v56)
  {
    v57 = sub_1C1F52424();
  }

  else
  {
    v57 = 0;
  }

  [v46 setGraphableVariable_];

  v58 = CalculateExpression.numberFormatter.getter();
  [v46 setNumberFormatter_];

  [v46 setNormalizeNumbers_];
  [v46 setIsLaTeX_];
  v194 = v51;
  v59 = [v46 nextToken];
  if (!v59)
  {
LABEL_117:
    if (!(v51 >> 62))
    {
      v99 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v99)
      {
LABEL_134:

LABEL_135:
        v104 = v178;
        swift_beginAccess();
        *v104 = v51;

        v105 = 0;
        if ([v46 foundGraphableValue])
        {
          v105 = [v46 graphableType];
        }

        v106 = v177;
        swift_beginAccess();
        *v106 = v105;
        if ([v46 isGraphable])
        {
          goto LABEL_138;
        }

        v107 = [v46 suggestedGraphableVariable];
        if (v107)
        {
          v108 = v107;

          v109 = sub_1C1F52454();
          v111 = v110;

          v112 = [v46 suggestedGraphableVariable];
          if (!v112)
          {
            goto LABEL_185;
          }

          v113 = v112;
          v114 = sub_1C1F52454();
          v116 = v115;

          v184 = v114;
          v185 = v116;
          v117 = [v46 declaredVariable];
          if (v117)
          {
            v118 = v117;
            v119 = sub_1C1F52454();
            v121 = v120;
          }

          else
          {
            v119 = 0;
            v121 = 0xE000000000000000;
          }

          v190 = v119;
          v191 = v121;
          sub_1C1E94E48();
          v161 = sub_1C1F52924();

          if (!v161)
          {

            v162 = MEMORY[0x1E69E7CC0];
          }

          else
          {
LABEL_185:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
            v162 = swift_allocObject();
            *(v162 + 16) = xmmword_1C1F56480;
            *(v162 + 32) = v109;
            *(v162 + 40) = v111;
          }

          sub_1C1E83580(&v195, &qword_1EBF212D8, &qword_1C1F574F0);
          v163 = v174;
          swift_beginAccess();
          *v163 = v162;

          goto LABEL_199;
        }

        if ([v46 _isGraphableReserved])
        {
LABEL_138:
          sub_1C1E83580(&v195, &qword_1EBF212D8, &qword_1C1F574F0);
        }

        else
        {
          v192 = MEMORY[0x1E69E7CD0];
          v43 = *v104;
          if (*v104 >> 62)
          {
            goto LABEL_196;
          }

          v122 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v122)
          {
            goto LABEL_146;
          }

LABEL_197:

          v169 = MEMORY[0x1E69E7CC0];
LABEL_198:

          sub_1C1E83580(&v195, &qword_1EBF212D8, &qword_1C1F574F0);

          v164 = v174;
          swift_beginAccess();
          *v164 = v169;
        }

LABEL_199:

        return v183;
      }

LABEL_119:
      if (v99 < 1)
      {
        goto LABEL_195;
      }

      v100 = 0;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v101 = MEMORY[0x1C6911DB0](v100, v51);
        }

        else
        {
          v101 = *(v51 + 8 * v100 + 32);
        }

        ++v100;
        v102 = *(*v101 + 192);

        v102(v103);
      }

      while (v99 != v100);
      goto LABEL_135;
    }

LABEL_133:
    v99 = sub_1C1F52994();
    if (!v99)
    {
      goto LABEL_134;
    }

    goto LABEL_119;
  }

  v60 = v59;
  v61 = &selRef_addUnitRank_;
  while (1)
  {
    if ([v60 v61[470]] == 11)
    {
      type metadata accessor for CalculateExpression.Token();
      v62 = swift_allocObject();
      *(v62 + 40) = 0;
      *(v62 + 32) = 0;
      swift_weakInit();
      *(v62 + 72) = 0u;
      *(v62 + 88) = 0u;
      *(v62 + 16) = 0;
      *(v62 + 24) = 0xE000000000000000;
      swift_beginAccess();
      *(v62 + 32) = 0;
      *(v62 + 40) = 0;

      *(v62 + 48) = 7;
      *(v62 + 64) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v63 = [v60 v61[470]];
      v64 = [v60 text];
      v65 = sub_1C1F52454();
      v67 = v66;

      v68 = [v60 normalizedText];
      v43 = sub_1C1F52454();
      v70 = v69;

      if (v63 == 3)
      {
        type metadata accessor for CalculateExpression.Token();
        v62 = swift_allocObject();
        *(v62 + 40) = 0;
        *(v62 + 32) = 0;
        swift_weakInit();
        *(v62 + 88) = 0u;
        *(v62 + 72) = 0u;
        *(v62 + 16) = v65;
        *(v62 + 24) = v67;
        swift_beginAccess();
        *(v62 + 32) = v43;
        *(v62 + 40) = v70;

        *(v62 + 48) = 1;
      }

      else
      {
        sub_1C1ED5730([v60 v61[470]], &v184);
        v71 = v184;
        type metadata accessor for CalculateExpression.Token();
        v62 = swift_allocObject();
        *(v62 + 40) = 0;
        *(v62 + 32) = 0;
        swift_weakInit();
        *(v62 + 88) = 0u;
        *(v62 + 72) = 0u;
        *(v62 + 16) = v65;
        *(v62 + 24) = v67;
        swift_beginAccess();
        *(v62 + 32) = v43;
        *(v62 + 40) = v70;

        *(v62 + 48) = v71;
      }

      *(v62 + 64) = MEMORY[0x1E69E7CC0];
      v46 = v182;
    }

    v72 = v51 >> 62;
    if (v51 >> 62)
    {
      v98 = sub_1C1F52994();
      v74 = v98 - 1;
      if (!__OFSUB__(v98, 1))
      {
        goto LABEL_54;
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v73 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v73 - 1;
    if (__OFSUB__(v73, 1))
    {
      goto LABEL_125;
    }

LABEL_54:
    v75 = v74 - 1;
    if (__OFSUB__(v74, 1))
    {
      goto LABEL_126;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
    }

    else
    {
      v76 = v51 & 0xC000000000000001;
      if ((v51 & 0xC000000000000001) != 0)
      {

        v77 = MEMORY[0x1C6911DB0](v75, v51);
      }

      else
      {
        if (v75 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_129;
        }

        v77 = *(v51 + 8 * v75 + 32);
      }

      v43 = *(v77 + 48);

      LOBYTE(v184) = v43;
      LOBYTE(v193[0]) = 17;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v78 = __OFSUB__(v75--, 1);
    if (v78)
    {
      goto LABEL_128;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
      v79 = 0;
      goto LABEL_69;
    }

    v76 = v51 & 0xC000000000000001;
LABEL_65:
    if (v76)
    {
      v79 = MEMORY[0x1C6911DB0](v75, v51);
    }

    else
    {
      if (v75 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v79 = *(v51 + 8 * v75 + 32);
    }

LABEL_69:
    v80 = *(v62 + 48);

    LOBYTE(v184) = v80;
    LOBYTE(v193[0]) = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v184, v193) & 1) == 0)
    {
      goto LABEL_79;
    }

    if (v72)
    {
      v81 = sub_1C1F52994();
      if (!v81)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v81 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v81)
      {
        goto LABEL_79;
      }
    }

    v78 = __OFSUB__(v81, 1);
    v82 = v81 - 1;
    if (v78)
    {
      goto LABEL_130;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v83 = *(MEMORY[0x1C6911DB0](v82, v51) + 48);
      swift_unknownObjectRelease();
      if (v83 == 53)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (v82 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_132;
      }

      v83 = *(*(v51 + 8 * v82 + 32) + 48);
      if (v83 == 53)
      {
LABEL_79:
        swift_beginAccess();

        MEMORY[0x1C6911980](v84);
        if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        v51 = v194;
        swift_endAccess();

        v61 = &selRef_addUnitRank_;
        goto LABEL_82;
      }
    }

    LOBYTE(v184) = v83;
    LOBYTE(v193[0]) = 4;
    v43 = sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_79;
    }

    if (CalculateExpression.engine.getter() == 1)
    {
      goto LABEL_79;
    }

    if (v79)
    {
      LOBYTE(v184) = *(v79 + 48);
      if ((CalculateExpression.TokenType.isBinaryOperator.getter() & 1) == 0)
      {
        LOBYTE(v184) = *(v79 + 48);
        if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
        {
          if (*(v79 + 48) == 53)
          {
            goto LABEL_79;
          }

          LOBYTE(v184) = *(v79 + 48);
          LOBYTE(v193[0]) = 35;
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v85 = v72 ? sub_1C1F52994() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v85 - 1;
    if (__OFSUB__(v85, 1))
    {
      break;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x1C6911DB0](v85 - 1, v51);
      v86 = v87;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_191;
      }

      if (v46 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_193;
      }

      v86 = *(v51 + 8 * v46 + 32);
    }

    v88 = (*(*v86 + 136))(v87);
    v90 = v89;

    v184 = v88;
    v185 = v90;
    swift_beginAccess();
    v91 = *(v62 + 16);
    v92 = *(v62 + 24);

    MEMORY[0x1C69117F0](v91, v92);

    v175 = v184;
    v173 = v185;
    v184 = 45;
    v185 = 0xE100000000000000;
    swift_beginAccess();
    if (*(v62 + 40))
    {
      v93 = *(v62 + 32);
      v94 = *(v62 + 40);
    }

    else
    {
      v93 = 0;
      v94 = 0xE000000000000000;
    }

    MEMORY[0x1C69117F0](v93, v94);

    v43 = v184;
    v172 = v185;
    type metadata accessor for CalculateExpression.Token();
    v95 = swift_allocObject();
    *(v95 + 40) = 0;
    *(v95 + 32) = 0;
    swift_weakInit();
    *(v95 + 88) = 0u;
    *(v95 + 72) = 0u;
    v96 = v173;
    *(v95 + 16) = v175;
    *(v95 + 24) = v96;
    swift_beginAccess();
    *(v95 + 32) = v43;
    *(v95 + 40) = v172;

    *(v95 + 48) = 1;
    *(v95 + 64) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v72 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v51 = sub_1C1E98444(v51);
    }

    v61 = &selRef_addUnitRank_;
    if ((v46 & 0x8000000000000000) != 0)
    {
      goto LABEL_192;
    }

    if (v46 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_194;
    }

    *((v51 & 0xFFFFFFFFFFFFFF8) + 8 * v46 + 0x20) = v95;
    v194 = v51;
    swift_endAccess();

    v46 = v182;
LABEL_82:

    v60 = [v46 nextToken];
    if (!v60)
    {
      goto LABEL_117;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    v122 = sub_1C1F52994();
    if (!v122)
    {
      goto LABEL_197;
    }

LABEL_146:
    v175 = v43 & 0xC000000000000001;
    v167 = v43 + 32;
    v168 = v43 & 0xFFFFFFFFFFFFFF8;
    v166 = v169 + 8;

    v123 = 0;
    v169 = MEMORY[0x1E69E7CC0];
    v172 = v122;
    v173 = v43;
LABEL_149:
    if (v175)
    {
      v124 = MEMORY[0x1C6911DB0](v123, v43);
      v78 = __OFADD__(v123++, 1);
      if (v78)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v123 >= *(v168 + 16))
      {
        goto LABEL_189;
      }

      v124 = *(v167 + 8 * v123);

      v78 = __OFADD__(v123++, 1);
      if (v78)
      {
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        continue;
      }
    }

    break;
  }

  v125 = *(*v124 + 136);
  v177 = *v124 + 136;
  v178 = v125;
  v125();
  v126 = sub_1C1F52464();
  v128 = v127;

  LOBYTE(v184) = v124[48];
  LOBYTE(v190) = 14;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v184, &v190))
  {
LABEL_156:
    v129 = [v46 declaredVariable];
    if (v129)
    {
      v130 = v129;
      v131 = sub_1C1F52454();
      v133 = v132;

      v184 = v126;
      v185 = v128;
      v190 = v131;
      v191 = v133;
      sub_1C1E94E48();
      v134 = sub_1C1F52924();

      if (!v134)
      {

        goto LABEL_181;
      }

      v135 = v192;
      if (*(v192 + 16) && (sub_1C1F52CD4(), sub_1C1F524A4(), v136 = sub_1C1F52CF4(), v137 = -1 << *(v135 + 32), v138 = v136 & ~v137, ((*(v135 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) != 0))
      {
        v139 = ~v137;
        while (1)
        {
          v140 = (*(v135 + 48) + 16 * v138);
          v141 = *v140 == v126 && v140[1] == v128;
          if (v141 || (sub_1C1F52C64() & 1) != 0)
          {
            break;
          }

          v138 = (v138 + 1) & v139;
          if (((*(v135 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
          {
            goto LABEL_167;
          }
        }

        v46 = v182;
LABEL_181:
        v43 = v173;
      }

      else
      {
LABEL_167:
        sub_1C1EACF44(&v184, v126, v128);

        v143 = (v178)(v142);
        v145 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_1C1ECC638(0, *(v169 + 2) + 1, 1, v169);
        }

        v43 = v173;
        v147 = *(v169 + 2);
        v146 = *(v169 + 3);
        v46 = v182;
        if (v147 >= v146 >> 1)
        {
          v169 = sub_1C1ECC638((v146 > 1), v147 + 1, 1, v169);
        }

        v148 = v169;
        *(v169 + 2) = v147 + 1;
        v149 = &v148[16 * v147];
        *(v149 + 4) = v143;
        *(v149 + 5) = v145;
      }

      v122 = v172;
LABEL_148:
      if (v123 == v122)
      {
        goto LABEL_198;
      }

      goto LABEL_149;
    }

LABEL_147:

    goto LABEL_148;
  }

  LOBYTE(v184) = v124[48];
  LOBYTE(v190) = 19;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v184, &v190) & 1) == 0)
  {
    goto LABEL_147;
  }

  v178();
  v150 = sub_1C1F524B4();

  if (v150 != 1 || (v152 = (v178)(v151), v154 = sub_1C1EC79C0(v152, v153), , (v154 & 0x100000000) != 0))
  {

    v122 = v172;
    v43 = v173;
    goto LABEL_148;
  }

  v155 = sub_1C1F51F74();
  v156 = (v178)(v155);
  result = sub_1C1EC79C0(v156, v157);
  if ((result & 0x100000000) == 0)
  {

    v159 = v171;
    v160 = sub_1C1F51F84();
    (*v166)(v159, v170);
    v122 = v172;
    v43 = v173;
    if (v160)
    {
      goto LABEL_156;
    }

    goto LABEL_147;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E811D8()
{
  swift_getKeyPath();
  v9 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_getKeyPath();
  v8 = v0;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v4;
    sub_1C1EEDCDC(v2, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v7);

    return v7;
  }

  return v2;
}

uint64_t *sub_1C1E81450()
{
  if (qword_1EDC2F910 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F918;
}

uint64_t *sub_1C1E814A0()
{
  if (qword_1EDC2F880 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F888;
}

uint64_t *sub_1C1E8153C()
{
  if (qword_1EDC2FD80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD88;
}

uint64_t *sub_1C1E8158C()
{
  if (qword_1EDC2F970 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F978;
}

uint64_t *sub_1C1E81600()
{
  if (qword_1EDC2FB40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB48;
}

uint64_t sub_1C1E81650()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(50, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD98 = result;
  return result;
}

uint64_t sub_1C1E816DC()
{
  type metadata accessor for CalculateExpression.NegateOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F988 = result;
  return result;
}

uint64_t sub_1C1E81734()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7235955, 0xE300000000000000, v0 & 1);
  qword_1EDC2FB18 = result;
  return result;
}

uint64_t sub_1C1E8177C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t *sub_1C1E817CC()
{
  if (qword_1EDC2FB10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB18;
}

uint64_t sub_1C1E8181C()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7565155, 0xE300000000000000, v0 & 1);
  qword_1EDC2FAC8 = result;
  return result;
}

uint64_t *sub_1C1E81864()
{
  if (qword_1EDC2FD70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD78;
}

uint64_t sub_1C1E818B4()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1936679777, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD48 = result;
  return result;
}

uint64_t *sub_1C1E818FC()
{
  if (qword_1EDC2FD40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD48;
}

uint64_t *sub_1C1E8194C()
{
  if (qword_1EDC2FD20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD28;
}

uint64_t *sub_1C1E8199C()
{
  if (qword_1EDC2FCB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCB8;
}

uint64_t sub_1C1E819EC()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752064372, 0xE400000000000000, v0 & 1);
  qword_1EDC2FC68 = result;
  return result;
}

uint64_t sub_1C1E81A34()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x686E617461, 0xE500000000000000, v0 & 1);
  qword_1EDC2FBF8 = result;
  return result;
}

uint64_t *sub_1C1E81A84()
{
  if (qword_1EDC2FC00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC08;
}

uint64_t *sub_1C1E81AD4()
{
  if (qword_1EDC2FCF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCF8;
}

uint64_t sub_1C1E81B24()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(50, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD18 = result;
  return result;
}

uint64_t *sub_1C1E81B68()
{
  if (qword_1EDC2FC90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC98;
}

uint64_t *sub_1C1E81BB8()
{
  if (qword_1EDC2FC40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC48;
}

uint64_t sub_1C1E81C08()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(28268, 0xE200000000000000, v0 & 1);
  qword_1EDC2FC98 = result;
  return result;
}

uint64_t *sub_1C1E81C4C()
{
  if (qword_1EDC2FC70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC78;
}

uint64_t sub_1C1E81C9C()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(12337, 0xE200000000000000);
  qword_1EDC2FC78 = result;
  return result;
}

uint64_t *sub_1C1E81CD8()
{
  if (qword_1EDC2FC20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC28;
}

uint64_t *sub_1C1E81D28()
{
  if (qword_1EDC2FC30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC38;
}

uint64_t sub_1C1E81D78(unint64_t a1, uint64_t a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
LABEL_15:
    v8 = a2;
    v9 = sub_1C1F52994();
    a2 = v8;
    v3 = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1C6911DB0](i, a1);
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v11;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * i + 32);

          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        sub_1C1E7E554(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }
    }
  }

  return a2;
}

unint64_t sub_1C1E81EB0(uint64_t a1)
{
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v2 = sub_1C1F52CF4();

  return sub_1C1E81F44(a1, v2);
}

unint64_t sub_1C1E81F44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C1F52454();
      v8 = v7;
      if (v6 == sub_1C1F52454() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C1F52C64();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C1E8213C()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x686E697361, 0xE500000000000000, v0 & 1);
  qword_1EDC2FC18 = result;
  return result;
}

uint64_t *sub_1C1E8218C()
{
  if (qword_1EDC2FBF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBF8;
}

BOOL __bid128_quiet_equal(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      v5 = 0;
      *a5 |= 1u;
      return v5;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  v6 = a4 & 0x7800000000000000;
  if ((~a2 & 0x7800000000000000) == 0)
  {
    return v6 == 0x7800000000000000 && ((a4 ^ a2) & 0x8000000000000000) == 0;
  }

  if (v6 == 0x7800000000000000)
  {
    return 0;
  }

  v8 = a2 & 0x1FFFFFFFFFFFFLL;
  v9 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v8 == 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  if (v8 > 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  v11 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    if (v8 | a1)
    {
      LOBYTE(v12) = v9;
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v13 = 1;
    v14 = 1;
LABEL_43:
    v5 = 1;
    if (v12)
    {
      return v5;
    }

    goto LABEL_44;
  }

  if (v8 | a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  v15 = a3 >= 0x378D8E6400000000 && v11 == 0x1ED09BEAD87C0;
  v14 = v12 ^ 1;
  if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000)
  {
    v13 = 1;
    goto LABEL_43;
  }

  v13 = (v11 | a3) == 0;
  if (v11 | a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    return 1;
  }

LABEL_44:
  v5 = 0;
  if (v13 == v14 || ((a4 ^ a2) & 0x8000000000000000) != 0)
  {
    return v5;
  }

  v17 = (a4 >> 49) & 0x3FFF;
  if (((a2 >> 49) & 0x3FFF) <= v17)
  {
    v18 = a4 & 0x1FFFFFFFFFFFFLL;
    v19 = a3;
    v11 = a2 & 0x1FFFFFFFFFFFFLL;
    a3 = a1;
    v20 = (a4 >> 49) & 0x3FFF;
    v17 = (a2 >> 49) & 0x3FFF;
  }

  else
  {
    v18 = a2 & 0x1FFFFFFFFFFFFLL;
    v19 = a1;
    v20 = (a2 >> 49) & 0x3FFF;
  }

  v21 = v20 - v17;
  if (v21 > 33)
  {
    return 0;
  }

  v22 = v21 - 20;
  if (v21 < 20)
  {
    v59 = __bid_ten2k64[v21];
    v60 = HIDWORD(v59);
    v61 = HIDWORD(v18);
    v62 = HIDWORD(v59) * v18;
    v63 = v59 * v18;
    v64 = v59 * v61;
    v65 = HIDWORD(v62) + HIDWORD(v59) * v61;
    v66 = v64 + v62 + HIDWORD(v63);
    v67 = HIDWORD(v19);
    v68 = HIDWORD(v59) * v19;
    v69 = v59 * v19;
    v70 = v59 * v67 + v68 + HIDWORD(v69);
    v71 = HIDWORD(v68) + v60 * v67 + HIDWORD(v70);
    v72 = v69 | (v70 << 32);
    v73 = (v63 | (v66 << 32)) + v71;
    if (v65 | HIDWORD(v66))
    {
      v74 = 0;
    }

    else
    {
      v74 = v73 == v11;
    }

    return v74 && v73 >= v71 && v72 == a3;
  }

  else
  {
    v23 = HIDWORD(v19);
    v24 = v19;
    v26 = &__bid_ten2k128[2 * v22];
    v25 = v26[1];
    v27 = HIDWORD(v25);
    v28 = v25 * HIDWORD(v19);
    v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(v19);
    v30 = HIDWORD(v25) * v19 + v28 + ((v25 * v19) >> 32);
    v31 = (v25 * v19) | (v30 << 32);
    v32 = *v26 * HIDWORD(v19);
    v33 = *v26 * v19;
    v34 = HIDWORD(*v26) * v24 + v32 + HIDWORD(v33);
    v35 = v33 | (v34 << 32);
    v37 = v31 + HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34);
    v36 = (__PAIR128__(v29, v31) + __PAIR128__(HIDWORD(v30), HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34))) >> 64;
    v38 = HIDWORD(v18);
    v39 = v18;
    v40 = v25 * HIDWORD(v18);
    v41 = v25 * v18;
    v42 = v27 * v18;
    v43 = HIDWORD(v40) + v27 * HIDWORD(v18);
    v44 = v42 + v40 + HIDWORD(v41);
    v45 = HIDWORD(v44);
    v46 = v41 | (v44 << 32);
    v47 = *v26 * HIDWORD(v18);
    v48 = *v26 * v18;
    v49 = HIDWORD(*v26) * v39 + v47 + HIDWORD(v48);
    v50 = v48 | (v49 << 32);
    v52 = v46 + HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49);
    v51 = (__PAIR128__(v43, v46) + __PAIR128__(v45, HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49))) >> 64;
    v53 = __PAIR128__(v52, v37) + v50;
    LODWORD(v54) = __CFADD__(__CFADD__(v37, v50), v52);
    if (__CFADD__(v36, *(&v53 + 1)))
    {
      v54 = 1;
    }

    else
    {
      v54 = v54;
    }

    v55 = v54 << 63 >> 63;
    if (v36 + *(&v53 + 1))
    {
      v56 = 0;
    }

    else
    {
      v56 = v51 == v55;
    }

    return v56 && v53 == v11 && v35 == a3;
  }
}

uint64_t __bid128_from_string(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  v108 = a2;
  v109 = 0uLL;
  if (!a1)
  {
    return xmmword_1C1F58CF0;
  }

  while (1)
  {
    v5 = *a1;
    v6 = v5;
    if (v5 > 0x2E)
    {
      goto LABEL_77;
    }

    if (((1 << v5) & 0x100000200) == 0)
    {
      break;
    }

    ++a1;
  }

  if (((1 << v5) & 0x680000000000) == 0)
  {
    if (*a1)
    {
LABEL_77:
      if ((v5 - 58) >= 0xFFFFFFF6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    *&v109 = 0;
    if (((v6 - 65) & 0xFEu) >= 0x1A)
    {
      v32 = v6;
    }

    else
    {
      v32 = v6 + 32;
    }

    if (v32 == 115)
    {
      v47 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v47 += 32;
      }

      if (v47 == 110)
      {
        v48 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v48 += 32;
        }

        if (v48 == 97)
        {
          v49 = a1[3];
          if (((a1[3] - 65) & 0xFEu) < 0x1A)
          {
            v49 += 32;
          }

          if (v49 == 110)
          {
            goto LABEL_129;
          }
        }
      }
    }

    else if (v32 == 105)
    {
      v33 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v33 += 32;
      }

      if (v33 == 110)
      {
        v34 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v34 += 32;
        }

        if (v34 == 102)
        {
          v35 = a1[3];
          if (!a1[3])
          {
            goto LABEL_106;
          }

          if (((v35 - 65) & 0xFEu) < 0x1A)
          {
            v35 += 32;
          }

          if (v35 == 105)
          {
            v36 = a1[4];
            if (((a1[4] - 65) & 0xFEu) < 0x1A)
            {
              v36 += 32;
            }

            if (v36 == 110)
            {
              v37 = a1[5];
              if (((a1[5] - 65) & 0xFEu) < 0x1A)
              {
                v37 += 32;
              }

              if (v37 == 105)
              {
                v38 = a1[6];
                if (((a1[6] - 65) & 0xFEu) < 0x1A)
                {
                  v38 += 32;
                }

                if (v38 == 116)
                {
                  v39 = a1[7];
                  if (((a1[7] - 65) & 0xFEu) < 0x1A)
                  {
                    v39 += 32;
                  }

                  if (v39 == 121 && !a1[8])
                  {
LABEL_106:
                    v18 = 0x7800000000000000;
                    goto LABEL_131;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_130:
    v18 = 0x7C00000000000000;
    goto LABEL_131;
  }

LABEL_6:
  v7 = a1[1];
  if (((a1[1] - 65) & 0xFEu) < 0x1A)
  {
    v7 += 32;
  }

  if (v7 == 115)
  {
    v15 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v15 += 32;
    }

    if (v15 != 110)
    {
      goto LABEL_49;
    }

    v16 = a1[3];
    if (((a1[3] - 65) & 0xFEu) < 0x1A)
    {
      v16 += 32;
    }

    if (v16 != 97)
    {
      goto LABEL_49;
    }

    v17 = a1[4];
    if (((a1[4] - 65) & 0xFEu) < 0x1A)
    {
      v17 += 32;
    }

    if (v17 != 110)
    {
      goto LABEL_49;
    }

    *&v109 = 0;
    if (v5 == 45)
    {
      v18 = 0xFE00000000000000;
LABEL_131:
      *(&v109 + 1) = v18;
      return v109;
    }

LABEL_129:
    v18 = 0x7E00000000000000;
    goto LABEL_131;
  }

  if (v7 == 105)
  {
    v8 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v8 += 32;
    }

    if (v8 == 110)
    {
      v9 = a1[3];
      if (((a1[3] - 65) & 0xFEu) < 0x1A)
      {
        v9 += 32;
      }

      if (v9 == 102)
      {
        v10 = a1[4];
        if (!a1[4])
        {
          goto LABEL_33;
        }

        if (((v10 - 65) & 0xFEu) < 0x1A)
        {
          v10 += 32;
        }

        if (v10 == 105)
        {
          v11 = a1[5];
          if (((a1[5] - 65) & 0xFEu) < 0x1A)
          {
            v11 += 32;
          }

          if (v11 == 110)
          {
            v12 = a1[6];
            if (((a1[6] - 65) & 0xFEu) < 0x1A)
            {
              v12 += 32;
            }

            if (v12 == 105)
            {
              v13 = a1[7];
              if (((a1[7] - 65) & 0xFEu) < 0x1A)
              {
                v13 += 32;
              }

              if (v13 == 116)
              {
                v14 = a1[8];
                if (((a1[8] - 65) & 0xFEu) < 0x1A)
                {
                  v14 += 32;
                }

                if (v14 == 121 && !a1[9])
                {
LABEL_33:
                  *&v109 = 0;
                  if (v5 == 45)
                  {
                    v18 = 0xF800000000000000;
                    goto LABEL_131;
                  }

                  if (v5 != 43)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_106;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_49:
  v19 = v5 == 45;
  v20 = v19 << 63;
  if (v5 == 43)
  {
    LODWORD(v19) = 1;
  }

  if (v19)
  {
    v21 = a1 + 1;
  }

  else
  {
    v21 = a1;
  }

  v22 = *v21;
  if (v22 != 46 && (v22 - 58) <= 0xFFFFFFF5)
  {
LABEL_75:
    v31 = v20 | 0x7C00000000000000;
    goto LABEL_76;
  }

  v24 = *v21 == 46;
  v25 = v24;
  if (v24)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = *v26;
  if (v27 != 48)
  {
    LODWORD(v29) = 0;
LABEL_108:
    v40 = v27 - 48;
    if (v25)
    {
      if (v40 <= 9)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          if (v41 > 0x21)
          {
            if (v41 <= 0x63)
            {
              v111[v41 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v111[v41 - 1] = v27;
          }

          v43 = v26[v41 + 1];
          v27 = v26[++v41];
        }

        while ((v43 - 48) < 0xA);
        LODWORD(v44) = 0;
        v26 += v41;
        LODWORD(v45) = v41;
        if (!v27)
        {
          goto LABEL_119;
        }

        goto LABEL_143;
      }

      v42 = 0;
      LODWORD(v45) = 0;
      LODWORD(v41) = 0;
      LODWORD(v44) = 0;
      if (v27)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v40 > 9)
      {
        v42 = 0;
        LODWORD(v44) = 0;
      }

      else
      {
        v44 = 0;
        v42 = 0;
        do
        {
          if (v44 > 0x21)
          {
            if (v44 <= 0x63)
            {
              v111[v44 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v111[v44 - 1] = v27;
          }

          v50 = v26[v44 + 1];
          v27 = v26[++v44];
        }

        while ((v50 - 48) < 0xA);
        v26 += v44;
      }

      if (v27 == 46)
      {
        v54 = *++v26;
        v53 = v54;
        if (!v54)
        {
          LODWORD(v41) = 0;
          v27 = 0;
          v46 = 0;
          LODWORD(v45) = v44;
          goto LABEL_186;
        }

        v27 = v53;
        if ((v53 - 48) > 9)
        {
          LODWORD(v45) = v44;
        }

        else
        {
          v45 = v44;
          do
          {
            if (v45 > 0x21)
            {
              if (v45 <= 0x63)
              {
                v111[v45 - 1] = v27;
              }

              if (v27 > 48)
              {
                v42 = 1;
              }
            }

            else
            {
              v111[v45 - 1] = v27;
            }

            v55 = *++v26;
            v27 = v55;
            ++v45;
          }

          while ((v55 - 48) < 0xA);
        }

        LODWORD(v41) = v45 - v44;
        if (!v27)
        {
          goto LABEL_119;
        }

LABEL_143:
        if ((v27 & 0xFFFFFFDF) != 0x45)
        {
          return xmmword_1C1F58CF0;
        }

        v51 = v26[1];
        if ((v51 - 58) <= 0xFFFFFFF5 && (v51 != 45 && v26[1] != 43 || (v26[2] - 58) <= 0xFFFFFFF5))
        {
          return xmmword_1C1F58CF0;
        }

        if (v51 == 45)
        {
          v27 = -1;
        }

        else
        {
          if (v26[1] != 43)
          {
            v27 = 0;
            v57 = 1;
LABEL_176:
            v58 = &v26[v57];
            v46 = v51 - 48;
            if (v51 == 48)
            {
              do
              {
                v61 = *++v58;
                v59 = v61;
              }

              while (v61 == 48);
            }

            else
            {
              v60 = *++v58;
              v59 = v60;
            }

            v62 = v59 - 48;
            if (v62 <= 9)
            {
              v63 = 1;
              do
              {
                v46 = 10 * v46 + v62;
                v62 = v58[v63] - 48;
              }

              while (v62 <= 9 && v63++ < 6);
            }

LABEL_186:
            v65 = (v46 + v27) ^ v27;
            if (v45 <= 34)
            {
              v66 = v65 - (v41 + v29) + 6176;
              if (v66 < 0)
              {
                *&v109 = 0;
                *(&v109 + 1) = v20;
              }

              if (v45)
              {
                v67 = v110 - 48;
                if (v45 > 19)
                {
                  v85 = (v45 - 17);
                  v86 = v85 - 1;
                  v87 = v111;
                  do
                  {
                    v88 = *v87++;
                    v67 = v88 + 10 * v67 - 48;
                    --v86;
                  }

                  while (v86);
                  v89 = v111[v85 - 1] - 48;
                  v90 = v45 - 16;
                  v91 = &v111[(v45 - 16) - 1];
                  do
                  {
                    v92 = *v91++;
                    v89 = v92 + 10 * v89 - 48;
                    ++v90;
                  }

                  while (v45 > v90);
                  v93 = 1569325056 * v67;
                  v94 = 23283064 * v67 + 1569325056 * HIDWORD(v67) + HIDWORD(v93);
                  v71 = (__PAIR128__(23283064 * HIDWORD(v67), v93 | (v94 << 32)) + __PAIR128__(HIDWORD(v94), v89)) >> 64;
                  v67 = (v93 | (v94 << 32)) + v89;
                }

                else
                {
                  if (v45 >= 2)
                  {
                    v68 = v45 - 1;
                    v69 = v111;
                    do
                    {
                      v70 = *v69++;
                      v67 = v70 + 10 * v67 - 48;
                      --v68;
                    }

                    while (v68);
                  }

                  v71 = 0;
                }
              }

              else
              {
                v71 = 0;
                v67 = 0;
              }

LABEL_243:
              bid_get_BID128(&v109, v20, v66, v67, v71, &v108, a3);
              return v109;
            }

            v66 = v44 - v29 + 6142 + v65;
            if (v66 < 0)
            {
              *&v109 = 0;
              *(&v109 + 1) = v20;
            }

            v72 = 0;
            v73 = v110 - 48;
            do
            {
              v73 = v111[v72++] + 10 * v73 - 48;
            }

            while (v72 != 16);
            v74 = 0;
            v75 = v111[16] - 48;
            do
            {
              v76 = v111[v74 + 17];
              v75 = v76 + 10 * v75 - 48;
              ++v74;
            }

            while (v74 != 16);
            v77 = 0;
            v78 = 100000000000000000;
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                if (v5 != 45)
                {
                  v95 = v112;
                  v96 = v45 - 34;
                  v77 = 1;
                  do
                  {
                    v97 = *v95++;
                    if (v97 > 48)
                    {
                      goto LABEL_231;
                    }
                  }

                  while (--v96);
                }

LABEL_230:
                v77 = 0;
                goto LABEL_231;
              }

              if (a2 != 4)
              {
LABEL_231:
                v98 = 10 * v75;
                v99 = 1000000000000000000;
                if (v66 <= 0xFFFFFFDE)
                {
                  v99 = 100000000000000000;
                  v98 = v75;
                }

                v100 = v66 - (v66 > 0xFFFFFFDE);
                if (v100 == -34 && v73 > 0xB1A2BC2EC50000)
                {
                  v100 = -34;
                  v101 = 0;
                }

                else
                {
                  v101 = v77;
                }

                if (v66 < 0)
                {
                  v66 = v100;
                  v78 = v99;
                  v77 = v101;
                  v75 = v98;
                }

                goto LABEL_238;
              }

              v77 = v112[0] > 52;
              if (v66 < 0)
              {
                v82 = v112;
                v83 = v45 - 34;
                while (1)
                {
                  v84 = *v82++;
                  if (v84 >= 49)
                  {
                    break;
                  }

                  if (!--v83)
                  {
                    goto LABEL_231;
                  }
                }

LABEL_259:
                v77 = 1;
                goto LABEL_231;
              }
            }

            else
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  if (v5 == 45)
                  {
                    v79 = v112;
                    v80 = v45 - 34;
                    v77 = 1;
                    while (1)
                    {
                      v81 = *v79++;
                      if (v81 > 48)
                      {
                        goto LABEL_231;
                      }

                      if (!--v80)
                      {
                        goto LABEL_230;
                      }
                    }
                  }

                  goto LABEL_230;
                }

                goto LABEL_231;
              }

              v77 = v112[0] > 52;
              if (v112[0] == 53)
              {
                if (v66 < 0 || (v76 & 1) == 0)
                {
LABEL_249:
                  if (v66 < 0)
                  {
                    v104 = 34;
                  }

                  else
                  {
                    v104 = 35;
                  }

                  if (v66 >= 0)
                  {
                    v77 = 0;
                  }

                  if (v104 >= v45)
                  {
                    goto LABEL_231;
                  }

                  v105 = &v111[v104 - 1];
                  v106 = v45 - v104;
                  while (1)
                  {
                    v107 = *v105++;
                    if (v107 > 48)
                    {
                      goto LABEL_259;
                    }

                    if (!--v106)
                    {
                      goto LABEL_231;
                    }
                  }
                }
              }

              else if (v66 < 0)
              {
                goto LABEL_249;
              }
            }

LABEL_238:
            v102 = (v78 & 0xFFEE0000) * v73;
            v103 = HIDWORD(v78) * v73 + (v78 & 0xFFEE0000) * HIDWORD(v73) + HIDWORD(v102);
            v67 = v75 + v77 + v102 + (v103 << 32);
            if (v67 >= v75 + v77)
            {
              v71 = HIDWORD(v103) + HIDWORD(v78) * HIDWORD(v73);
            }

            else
            {
              v71 = HIDWORD(v103) + HIDWORD(v78) * HIDWORD(v73) + 1;
            }

            if (v42)
            {
              *a3 |= 0x20u;
            }

            goto LABEL_243;
          }

          v27 = 0;
        }

        v51 = v26[2];
        v57 = 2;
        goto LABEL_176;
      }

      LODWORD(v41) = 0;
      LODWORD(v45) = v44;
      if (v27)
      {
        goto LABEL_143;
      }
    }

LABEL_119:
    v46 = 0;
    goto LABEL_186;
  }

  v28 = 0;
  while (1)
  {
    v27 = v26[1];
    v29 = v25 ? v28 + 1 : v28;
    if (v27 != 46)
    {
      break;
    }

    if (v25)
    {
      goto LABEL_75;
    }

    v30 = v26[2];
    v26 += 2;
    v27 = v30;
    if (!v30)
    {
      v31 = (0x3040000000000000 - (v28 << 49)) | v20;
      goto LABEL_76;
    }

    v25 = 1;
LABEL_73:
    v28 = v29;
    if (v27 != 48)
    {
      goto LABEL_108;
    }
  }

  if (v26[1])
  {
    ++v26;
    goto LABEL_73;
  }

  v56 = 6176;
  if (v29 < 0x1820)
  {
    v56 = v29;
  }

  v31 = v20 - (v56 << 49) + 0x3040000000000000;
LABEL_76:
  *&v109 = 0;
  *(&v109 + 1) = v31;
  return v109;
}

void *bid_get_BID128(void *result, uint64_t a2, int a3, unint64_t a4, unint64_t a5, int *a6, _DWORD *a7)
{
  if (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0)
  {
    v7 = 0x38C15B0A00000000;
  }

  else
  {
    v7 = a4;
  }

  v8 = (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0) + a3;
  if (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0)
  {
    v9 = 0x314DC6448D93;
  }

  else
  {
    v9 = a5;
  }

  if (v8 < 0x3000)
  {
    goto LABEL_71;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if (v8 <= 0xFFFFFFDD)
    {
      *a7 |= 0x30u;
      *result = 0;
      result[1] = a2;
      v13 = *a6;
      if (a2)
      {
        if (v13 != 1)
        {
          return result;
        }
      }

      else if (v13 != 2)
      {
        return result;
      }

      v41 = 1;
LABEL_88:
      *result = v41;
      return result;
    }

    v14 = -v8;
    v15 = 3 - *a6;
    v16 = (*a6 - 1) >= 2 || a2 == 0;
    if (v16)
    {
      v15 = *a6;
    }

    v17 = __bid_round_const_table_128[36 * v15 + v14] + __PAIR128__(v9, v7);
    v18 = &__bid_reciprocals10_128[2 * v14];
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 * DWORD1(v17);
    v22 = HIDWORD(v21);
    v23 = HIDWORD(v20) * v17 + v21 + ((v20 * v17) >> 32);
    v24 = (v20 * v17) | (v23 << 32);
    v25 = DWORD2(v17) * HIDWORD(*v18);
    v26 = HIDWORD(v17) * v19 + v25 + ((DWORD2(v17) * v19) >> 32);
    v27 = (DWORD2(v17) * *v18) | (v26 << 32);
    v28 = *v18 * DWORD1(v17);
    v29 = HIDWORD(v19) * v17 + v28 + ((v19 * v17) >> 32);
    v30 = HIDWORD(v28) + HIDWORD(*v18) * DWORD1(v17) + HIDWORD(v29);
    v31 = (*v18 * v17) | (v29 << 32);
    v32 = HIDWORD(v17) * v20;
    v33 = HIDWORD(v32) + HIDWORD(v17) * HIDWORD(v20);
    v34 = DWORD2(v17) * HIDWORD(v20) + v32 + ((DWORD2(v17) * v20) >> 32);
    v35 = HIDWORD(v34);
    v36 = (DWORD2(v17) * v20) | (v34 << 32);
    v37 = __CFADD__(v24, v27);
    v38 = v24 + v27 + v30;
    v39 = __PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64);
    v40 = __bid_recip_scale[v14];
    v41 = (*(&v39 + 1) << -v40) | (v39 >> v40);
    v42 = ((__PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64)) >> 64) >> v40;
    if (v40 >= 64)
    {
      v41 = *(&v39 + 1) >> v40;
      v42 = 0;
    }

    if (!*a6 && (v41 & 1) != 0)
    {
      v43 = (*(&v39 + 1) << -v40) | (v39 >> v40);
      if (v40 >= 65)
      {
        v44 = v39 << -v40 != 0;
      }

      else
      {
        v43 = v39 << -v40;
        v44 = 0;
      }

      if (!v43 && !v44 && (v38 < v20 || v38 == v20 && v31 < v19))
      {
        --v41;
      }
    }

    if ((*a7 & 0x20) != 0)
    {
      v54 = 16;
LABEL_86:
      *a7 |= v54;
LABEL_87:
      result[1] = v42 | a2;
      goto LABEL_88;
    }

    v45 = 0x80 - v40;
    if (v40 >= 65)
    {
      v46 = (*(&v39 + 1) << (0x80 - v40)) | (v39 >> v40);
    }

    else
    {
      v46 = v39 << -v40;
    }

    if (v40 >= 65)
    {
      v47 = v39 << (0x80 - v40);
    }

    else
    {
      v47 = 0;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        goto LABEL_84;
      }

      if (v15 != 4)
      {
        goto LABEL_94;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
LABEL_94:
        v11 = __CFADD__(__CFADD__(v31, v19), v38);
        v57 = __CFADD__(v31, v19) + v38;
        v58 = v11;
        v59 = __CFADD__(v57, v20);
        v60 = (v59 | v58) & 1;
        v61 = v46 >> -v40;
        v62 = (v47 >> v45) | (v46 << v40);
        v63 = v46 >> v45;
        if (v40 >= 65)
        {
          v64 = v63;
        }

        else
        {
          v64 = 0;
        }

        if (v40 < 65)
        {
          v62 = v61;
        }

        v65 = 1 << (v40 - 64);
        if (v40 < 64)
        {
          v65 = 0;
        }

        v66 = v62 + v60;
        if (__CFADD__(v62, v60))
        {
          v67 = v64 + 1;
        }

        else
        {
          v67 = v64;
        }

        if (v67 > v65)
        {
          goto LABEL_87;
        }

        v68 = v66 >> v40;
        v69 = v40 < 64 && v68 == 0;
        v70 = v69;
        if (v67 == v65 && !v70)
        {
          goto LABEL_87;
        }

        goto LABEL_85;
      }

LABEL_84:
      if (v46 | v47)
      {
LABEL_85:
        v54 = 48;
        goto LABEL_86;
      }

LABEL_89:
      v56 = v38 == v20;
      if (v38 < v20)
      {
        goto LABEL_87;
      }

      v54 = 48;
      if (v56 && v31 < v19)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v46 != 0x8000000000000000 || v47 != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_89;
  }

  if (v8 > 0x3021)
  {
LABEL_60:
    if (v7 | v9)
    {
      v48 = 0x5FFFED09BEAD87C0;
      *a7 |= 0x28u;
      v49 = *a6;
      if (a2)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      v16 = v49 == v50;
      v51 = 0x7800000000000000;
      if (v16)
      {
        v51 = 0x5FFFED09BEAD87C0;
        v52 = 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        v52 = 0;
      }

      if (v49 == 3)
      {
        v53 = 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        v48 = v51;
        v53 = v52;
      }

      *result = v53;
      result[1] = v48 | a2;
    }

    else
    {
      *result = 0;
      result[1] = a2 | 0x5FFE000000000000;
    }

    return result;
  }

  while (1)
  {
    if (v9 < 0x314DC6448D93)
    {
      if (v8 < 12288)
      {
        goto LABEL_71;
      }

      goto LABEL_16;
    }

    if (v9 != 0x314DC6448D93)
    {
      goto LABEL_58;
    }

    if (v7 >= 0x38C15B0A00000000 || v8 < 12288)
    {
      break;
    }

LABEL_16:
    v10 = 10 * v7;
    v11 = 10 * v7 >= 8 * v7;
    v12 = (v7 >> 63) + (v7 >> 61) + 10 * v9;
    if (v11)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12 + 1;
    }

    v8 = (v8 - 1);
    v7 = v10;
  }

  v9 = 0x314DC6448D93;
LABEL_58:
  if (v8 >= 12288)
  {
    v9 = 1;
    goto LABEL_60;
  }

LABEL_71:
  *result = v7;
  result[1] = v9 | (v8 << 49) | a2;
  return result;
}

uint64_t sub_1C1E83510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D8, &qword_1C1F574F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E83580(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t CalculateExpression.expression.getter()
{
  v0 = sub_1C1E83618();

  return v0;
}

uint64_t sub_1C1E83618()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1F520F4();

    v2 = *(*sub_1C1EEBC30() + 296);

    v4 = v2(v3);
    v6 = v5;

    sub_1C1EDB5BC(v4, v6);
  }

  swift_getKeyPath();
  sub_1C1F52104();

  return *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
}

uint64_t sub_1C1E8381C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();
}

id CalculateExpression.effectiveNumberFormatter.getter()
{
  v1 = v0;
  v2 = sub_1C1F520E4();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v6 = Strong, swift_getKeyPath(), v15 = v6, sub_1C1F52104(), , v7 = *(v6 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter), v8 = v7, , !v7))
  {
    swift_getKeyPath();
    v15 = v1;
    sub_1C1F52104();

    v9 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
    if (v9)
    {
      v8 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
    }

    else
    {
      CalculateExpression.effectiveLocale.getter(v4);
      v10 = sub_1C1F52094();
      (*(v14 + 8))(v4, v2);
      v8 = CalculateDefaultNumberFormatter(v10);

      v9 = 0;
    }

    v11 = v9;
  }

  return v8;
}

uint64_t sub_1C1E83C94()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();
  v44 = v2;
  if (*(*(v1 + v2) + 16) || (swift_getKeyPath(), sub_1C1F52104(), , v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables, swift_beginAccess(), !*(*(v1 + v3) + 16)))
  {
LABEL_31:
    swift_getKeyPath();
    sub_1C1F52104();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v41 = *(v1 + v3);

  v12 = 0;
  while (v10)
  {
LABEL_13:
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = (*(v41 + 48) + 16 * v16);
    v18 = v17[1];
    v43 = *v17;
    v19 = *(**(*(v41 + 56) + 8 * v16) + 104);

    v21 = v19(v20);
    if (v21)
    {
      v22 = v21;
      swift_getKeyPath();
      sub_1C1F52104();

      if (*(v22 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
      {
        sub_1C1ED6924();
      }

      swift_getKeyPath();
      sub_1C1F52104();

      v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
      swift_beginAccess();
      v24 = *(v22 + v23);
      if (v24)
      {
        v25 = v24;
        v42 = [v25 ignoringNaN];

        goto LABEL_20;
      }
    }

    v42 = 0;
LABEL_20:
    swift_getKeyPath();
    sub_1C1F52104();

    swift_getKeyPath();
    sub_1C1F52124();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v1 + v44);
    *(v1 + v44) = 0x8000000000000000;
    v28 = sub_1C1EAC150(v43, v18);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_33;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_1C1EEA1E0(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1C1EAC150(v43, v18);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_35;
      }

LABEL_25:
      if (v34)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v39 = v28;
    sub_1C1EEAC38();
    v28 = v39;
    if (v34)
    {
LABEL_6:
      v13 = v27[7];
      v14 = *(v13 + 8 * v28);
      *(v13 + 8 * v28) = v42;

      goto LABEL_7;
    }

LABEL_26:
    v27[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v27[6] + 16 * v28);
    *v36 = v43;
    v36[1] = v18;
    *(v27[7] + 8 * v28) = v42;
    v37 = v27[2];
    v32 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v32)
    {
      goto LABEL_34;
    }

    v27[2] = v38;
LABEL_7:
    v10 &= v10 - 1;
    *(v1 + v44) = v27;
    swift_endAccess();
    swift_getKeyPath();
    sub_1C1F52114();
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      goto LABEL_31;
    }

    v10 = *(v6 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E8425C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211D0, &qword_1C1F568C0);
    v2 = sub_1C1F52BE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;
    v17 = v16;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21308, &qword_1C1F572A0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1C1EB1C58(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1C1EB1C58(v32, v33);
    result = sub_1C1F529E4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1C1EB1C58(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.graphableVariable.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = (v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void *sub_1C1E845F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_1C1E862D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1C1E87C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C1E87F4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  *(a1 + v4) = a2;

  if (*(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    *(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t CalculateExpression.PlainExpression.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 92, 7);
}

uint64_t sub_1C1E88104(void *a1)
{
  v2 = swift_allocObject();
  sub_1C1E88144(a1);
  return v2;
}

uint64_t sub_1C1E88144(void *a1)
{
  v7 = v2;
  v9 = swift_weakInit();
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 16777473;
  *(v2 + 28) = 1;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  v101 = (v2 + 40);
  *(v2 + 50) = 0;
  (*(*a1 + 184))(v9);
  swift_beginAccess();
  swift_weakAssign();

  v10 = (*(*a1 + 240))(1);
  v96 = *(*a1 + 264);
  v11 = (v96)(v10);
  v12 = v11;
  if (v11 >> 62)
  {
    v13 = sub_1C1F52994();
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_175;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1C6911DB0](v4, v12);
    }

    else
    {
      v14 = *(v12 + 8 * v4 + 32);
    }

    v3 = *((*(*v14 + 208))() + 16);

    if (v3)
    {
      (*(*v14 + 216))(v5);
    }

    ++v4;
  }

  while (v13 != v4);
LABEL_12:
  v97 = v7;

  v106 = 0;
  v105 = 0;
  swift_beginAccess();
  *v101 = MEMORY[0x1E69E7CC0];

  v6 = *(*a1 + 288);
  v15 = v6(0);
  if (v15 && (v16 = *(v15 + 48), , v16 != 53) && (LOBYTE(v104[0]) = v16, LOBYTE(v103) = 17, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
  {
    v17 = 1;
    v106 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v6(v17);
  v98 = a1;
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = v18;
  LOBYTE(v104[0]) = *(v18 + 48);
  LOBYTE(v103) = 14;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v104, &v103) & 1) == 0 && (LOBYTE(v104[0]) = v19[48], LOBYTE(v103) = 0, (static CalculateExpression.TokenType.== infix(_:_:)(v104, &v103) & 1) == 0) || (v104[0] = v17, sub_1C1EB078C(a1, v104), v4 = v104[0], (v20 = v6(v104[0])) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v21 = v20;
  LOBYTE(v103) = *(v20 + 48);
  v102 = 35;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v103, &v102) & 1) == 0 || (v103 = v4, sub_1C1EB078C(a1, &v103), !v6(v103)))
  {

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1C1F56430;
  v22 = *(*v19 + 160);

  v24 = v22(v23);
  if (!v25)
  {
    v24 = (*(*v19 + 136))(v24);
  }

  v26 = v24;
  v27 = v25;
  v102 = v19[48];
  type metadata accessor for CalculateExpression.RichToken(0);
  v28 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v26, v27, &v102, 0);

  *(v99 + 32) = v28;
  v29 = *(*v21 + 160);
  v3 = *v21 + 160;

  v31 = v29(v30);
  if (!v32)
  {
    v31 = (*(*v21 + 136))(v31);
  }

  v33 = v31;
  v4 = v32;
  a1 = v98;
  v102 = v21[48];
  v5 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v33, v4, &v102, 0);

  *(v99 + 40) = v5;
  *v101 = v99;

  sub_1C1EB078C(v98, v104);

  v106 = v104[0];
LABEL_30:
  v1 = v7;
  v34 = *sub_1C1E89704(a1, &v106, &v105);
  v35 = (*(v34 + 392))();

  swift_beginAccess();
  sub_1C1E8CECC(v35);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {
    v36 = sub_1C1E811D8();
  }

  else
  {
    v36 = sub_1C1EAFFF0(MEMORY[0x1E69E7CC0]);
  }

  if (*(v36 + 16) && (v37 = sub_1C1E81EB0(@"CalculateKeyAllowEqualSign"), (v38 & 1) != 0) && (sub_1C1EB0E00(*(v36 + 56) + 32 * v37, v104), (swift_dynamicCast() & 1) != 0))
  {

    if (v103 != 1)
    {
      goto LABEL_48;
    }
  }

  else if (*(v36 + 16) && (v39 = sub_1C1E81EB0(@"CalculateKeyAllowEqualSign"), (v40 & 1) != 0))
  {
    sub_1C1EB0E00(*(v36 + 56) + 32 * v39, v104);

    sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v41 = v103;
      v42 = [v103 BOOLValue];

      if ((v42 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  v13 = v106;
  v43 = v6(v106);
  if (!v43)
  {
    goto LABEL_49;
  }

  v1 = *(v43 + 48);

  if (v1 != 53)
  {
    LOBYTE(v104[0]) = v1;
    LOBYTE(v103) = 35;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      sub_1C1EB078C(a1, &v106);
    }
  }

LABEL_48:
  v13 = v106;
LABEL_49:
  v44 = v96();
  if (v44 >> 62)
  {
LABEL_168:
    v1 = v44;
    v45 = sub_1C1F52994();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= v45)
  {
    goto LABEL_69;
  }

  v105 = 1;
  v46 = v6(v13);
  if (!v46)
  {
LABEL_60:
    v50 = (v96)(v46);
    v51 = v50;
    if ((v50 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1C6911DB0](v13, v50);
    }

    else
    {
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_185;
      }

      if (v13 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_187;
      }

      v52 = *(v50 + 8 * v13 + 32);
    }

    v13 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v51 = (*(*v52 + 224))(v104);
    v4 = v53;
    v5 = *v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_65:
      v1 = *(v5 + 16);
      v55 = *(v5 + 24);
      v6 = (v1 + 1);
      if (v1 >= v55 >> 1)
      {
        v5 = sub_1C1EAECE0((v55 > 1), v1 + 1, 1, v5);
        *v4 = v5;
      }

      *(v5 + 16) = v6;
      *(v5 + 8 * v1 + 32) = v13;
      v51(v104, 0);
      goto LABEL_68;
    }

LABEL_185:
    v5 = sub_1C1EAECE0(0, *(v5 + 16) + 1, 1, v5);
    *v4 = v5;
    goto LABEL_65;
  }

  LOBYTE(v104[0]) = *(v46 + 48);
  if ((CalculateExpression.TokenType.isClose.getter() & 1) == 0)
  {

    goto LABEL_60;
  }

  v47 = v96();
  v1 = v47;
  if ((v47 & 0xC000000000000001) != 0)
  {
LABEL_202:
    v49 = MEMORY[0x1C6911DB0](v13, v1);
    goto LABEL_58;
  }

  v48 = v97;
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_204;
  }

  if (v13 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  v49 = *(v47 + 8 * v13 + 32);

LABEL_58:

  sub_1C1EA1078(v49);

LABEL_68:

LABEL_69:
  v56 = *v101;
  v103 = v56;
  if (v56 >> 62)
  {
    v57 = sub_1C1F52994();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v57 < 1)
  {
    goto LABEL_115;
  }

  v100 = 0;
  v13 = 0;
  v1 = &unk_1EDC31000;
  v3 = 1;
  do
  {
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1C6911DB0](v13, v56);
      }

      else
      {
        if (v13 < 0)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v13 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_159;
        }
      }

      v4 = *(v58 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      LOBYTE(v104[0]) = v4;
      v102 = 1;
      v44 = static CalculateExpression.TokenType.== infix(_:_:)(v104, &v102);
      if (v44)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6911DB0](v13, v56);
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_166;
          }

          if (v13 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_167;
          }

          v4 = *(v56 + 8 * v13 + 32);
        }

        v5 = (*(*v4 + 232))();
        v60 = v59;

        v61 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v61)
        {

          goto LABEL_103;
        }

        v5 = sub_1C1F525D4();
        v4 = v62;

        if (v5 == 45 && v4 == 0xE100000000000000)
        {
        }

        else
        {
          v64 = sub_1C1F52C64();

          if ((v64 & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v104[0]) = 4;
        type metadata accessor for CalculateExpression.RichToken(0);
        v4 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v104, 0);
        if (v56 >> 62)
        {
          v44 = sub_1C1F52994();
          if (v44 < v13)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v44 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44 < v13)
          {
            goto LABEL_161;
          }
        }

        if (v13 < 0)
        {
          goto LABEL_162;
        }

        sub_1C1EB0A48(v13, v13, v4, 0, type metadata accessor for CalculateExpression.RichToken);

        v65 = __OFADD__(v13++, 1);
        if (v65)
        {
          goto LABEL_163;
        }

        v56 = v103;
        if ((v103 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6911DB0](v13, v103);
          v67 = MEMORY[0x1C6911DB0](v13, v56);
          v66 = v67;
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_164;
          }

          if (v13 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }

          v66 = *(v103 + v13 + 4);
          v67 = swift_retain_n();
          v4 = v66;
        }

        v68 = (*(*v66 + 232))(v67);
        v6 = v69;

        v100 = 1;
        v70 = sub_1C1EB0B40(1uLL, v68, v6);
        v72 = v71;
        v74 = v73;
        v76 = v75;

        v77 = MEMORY[0x1C6911770](v70, v72, v74, v76);
        v5 = v78;

        (*(*v4 + 240))(v77, v5);
      }

LABEL_103:
      v65 = __OFADD__(v13++, 1);
      if (v65)
      {
        goto LABEL_160;
      }

      if (v56 >> 62)
      {
        break;
      }

      v44 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v44)
      {
        goto LABEL_113;
      }
    }

    v44 = sub_1C1F52994();
  }

  while (v13 < v44);
LABEL_113:
  if (v100)
  {
    *v101 = v56;
  }

LABEL_115:
  v3 = v97;
  sub_1C1E8D1DC();
  sub_1C1E8D4F8();
  v79 = sub_1C1E8E8D8();
  if (v105)
  {
LABEL_118:
    (*(*v97 + 424))(v79);
    goto LABEL_119;
  }

  v80 = (v96)(v79);
  if (v80 >> 62)
  {
    v1 = v80;
    v91 = sub_1C1F52994();

    if (v91)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v81)
  {
    goto LABEL_118;
  }

LABEL_119:
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C1F52994())
  {
    v13 = sub_1C1EB0BF0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  sub_1C1E90660(v13, 0, 1);

  v82 = v97[5];
  if (v82 >> 62)
  {
    if (sub_1C1F52994() != 1)
    {
      goto LABEL_135;
    }

LABEL_123:
    v83 = *v101;
    if (*v101 >> 62)
    {
      if (!sub_1C1F52994())
      {
        goto LABEL_129;
      }
    }

    else if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_129;
    }

    if ((v83 & 0xC000000000000001) != 0)
    {

      v92 = MEMORY[0x1C6911DB0](0, v83);

      v1 = *(v92 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v3 = v97;
      swift_unknownObjectRelease();
      if (v1 == 53)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_194;
      }

      v1 = *(*(v83 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (v1 == 53)
      {
LABEL_129:
        v83 = *v101;
        if (*v101 >> 62)
        {
          result = sub_1C1F52994();
          if (!result)
          {
            goto LABEL_200;
          }
        }

        else
        {
          result = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_200;
          }
        }

        if ((v83 & 0xC000000000000001) == 0)
        {
          if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_197;
          }

          v1 = *(*(v83 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          if (v1 == 53)
          {
            goto LABEL_199;
          }

LABEL_134:
          LOBYTE(v104[0]) = v1;
          v102 = 4;
          sub_1C1E9019C();
          if (sub_1C1F52414())
          {
            goto LABEL_135;
          }

          goto LABEL_199;
        }

LABEL_194:

        v93 = MEMORY[0x1C6911DB0](0, v83);

        v1 = *(v93 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v3 = v97;
        swift_unknownObjectRelease();
        if (v1 == 53)
        {
          goto LABEL_199;
        }

        goto LABEL_134;
      }
    }

    LOBYTE(v104[0]) = v1;
    v102 = 1;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      goto LABEL_135;
    }

    goto LABEL_129;
  }

  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_123;
  }

LABEL_135:
  v85 = *v101;
  if (*v101 >> 62)
  {
LABEL_175:
    v90 = sub_1C1F52994();
    v85 = *v101;
    if (v90 != 2)
    {
      goto LABEL_152;
    }

LABEL_137:
    if (v85 >> 62)
    {
      result = sub_1C1F52994();
      if (!result)
      {
        goto LABEL_200;
      }
    }

    else
    {
      result = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_200;
      }
    }

    if ((v85 & 0xC000000000000001) != 0)
    {

      v94 = MEMORY[0x1C6911DB0](0, v85);

      v86 = *(v94 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v3 = v97;
      swift_unknownObjectRelease();
      if (v86 == 53)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_202;
      }

      v86 = *(*(v85 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (v86 == 53)
      {
        goto LABEL_199;
      }
    }

    LOBYTE(v104[0]) = v86;
    v102 = 4;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_199;
    }

    v48 = *v101;
    if (!(*v101 >> 62))
    {
      result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_200;
      }

      goto LABEL_145;
    }

LABEL_205:
    result = sub_1C1F52994();
    if (!result)
    {
      goto LABEL_200;
    }

LABEL_145:
    v87 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v48 & 0xC000000000000001) == 0)
    {
      if ((v87 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v87 < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v88 = *(*(v48 + 8 * v87 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (v88 == 53)
        {
          goto LABEL_199;
        }

LABEL_150:
        LOBYTE(v104[0]) = v88;
        v102 = 1;
        if (sub_1C1F52414())
        {
          v85 = *v101;
          goto LABEL_152;
        }

        goto LABEL_199;
      }

      __break(1u);
      return result;
    }

    v95 = MEMORY[0x1C6911DB0](v87, v48);

    v88 = *(v95 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v3 = v97;
    swift_unknownObjectRelease();
    if (v88 == 53)
    {
      goto LABEL_199;
    }

    goto LABEL_150;
  }

  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
  {
    goto LABEL_137;
  }

LABEL_152:
  if (v85 >> 62)
  {
LABEL_187:
    if (sub_1C1F52994() < 1)
    {
      goto LABEL_199;
    }

LABEL_154:
    if (!(*v101 >> 62))
    {
      v89 = *((*v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_156:
      result = v89 < 3;
      goto LABEL_200;
    }

LABEL_197:
    v89 = sub_1C1F52994();
    goto LABEL_156;
  }

  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_154;
  }

LABEL_199:
  result = 0;
LABEL_200:
  (*(*v3 + 232))(result);

  swift_beginAccess();
  *(v3 + 25) = 0;

  return v3;
}

uint64_t sub_1C1E89588(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t sub_1C1E89600(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = (*v1 + 264);
  v4 = *v3;
  v5 = (*v3)();
  v6 = v5 >> 62 ? sub_1C1F52994() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 <= a1)
  {
    return 0;
  }

  result = (v4)(v7);
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6911DB0](a1, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v9 = *(result + 8 * a1 + 32);

LABEL_8:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E89704(uint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v6 = *(*v3 + 176);
  v7 = v6();
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v352 = sub_1C1E8CC64(v7);

  BYTE1(v377) = 0;
  v356 = v3;
  v345 = v6;
  if ((v6)(v8))
  {
    v9 = CalculateExpression.format.getter();

    v10 = v9 == 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*a1 + 264);
  v12 = a2;
  v13 = *v11;
  v14 = *v12;
  v15 = (*v11)();
  if (v15 >> 62)
  {
LABEL_376:
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v367 = v13;
  if (v14 < v16)
  {
    v340 = 0;
    v339 = 0;
    v349 = 0;
    v351 = 0;
    v19 = 0;
    v350 = -1;
    v353 = 15;
    v354 = a1;
    v357 = v12;
    v355 = v10;
    while (1)
    {
      v20 = (v13)(v17);
      if ((v20 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6911DB0](v14, v20);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_364;
        }

        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_365;
        }

        v13 = *(v20 + 8 * v14 + 32);
      }

      v376[0] = *(v13 + 48);
      if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
      {
        v376[0] = *(v13 + 48);
        if ((CalculateExpression.TokenType.isClose.getter() & 1) == 0)
        {
          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 11;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 || (v376[0] = *(v13 + 48), LOBYTE(v377) = 35, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)))
          {

            if (v351)
            {
              sub_1C1EB078C(a1, v12);
              v325 = v12;
              v326 = *v12;
              v327 = (*a1 + 288);
              v328 = *v327;
              v329 = (*v327)(v326);
              if (v329 && (v330 = *(v329 + 48), , v330 != 53) && (v376[0] = v330, LOBYTE(v377) = 41, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
              {
                sub_1C1EB078C(a1, v325);
              }

              else
              {
                *a3 = 1;
                v331 = v328(v326);
                if (v331)
                {
                  v332 = v331;
                  v333 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
                  v334 = (*(*v332 + 224))(v376);
                  v336 = v335;
                  sub_1C1EAEA50();
                  v337 = *(*v336 + 16);
                  sub_1C1EAEA9C(v337);
                  v338 = *v336;
                  *(v338 + 16) = v337 + 1;
                  *(v338 + 8 * v337 + 32) = v333;
                  v334(v376, 0);
                }
              }
            }

            goto LABEL_360;
          }

          goto LABEL_94;
        }

        if (BYTE1(v377) == 1)
        {
          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 22;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            BYTE1(v377) = 0;
            goto LABEL_94;
          }
        }

        v370 = v19;
        v55 = (v18 + 16);
        v54 = *(v18 + 2);
        if (!v54)
        {

          a1 = v354;
          goto LABEL_330;
        }

        LODWORD(v23) = *(v13 + 48);
        if (!v10)
        {
          goto LABEL_77;
        }

        v376[0] = *(v13 + 48);
        LOBYTE(v377) = 24;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 || (v376[0] = *(v13 + 48), LOBYTE(v377) = 22, result = static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377), (result))
        {
          *a3 = 1;
          v57 = v367();
          v21 = v57;
          v360 = v18;
          if ((v57 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1C6911DB0](v14, v57);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_379;
            }

            if (v14 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_380;
            }

            v58 = *(v57 + 8 * v14 + 32);
          }

          (*(*v13 + 136))(v59);
          v60 = objc_allocWithZone(CalculateError);
          v61 = sub_1C1F52424();

          v62 = [v60 initUnexpectedSymbol_];

          v63 = (*(*v58 + 224))(v376);
          v65 = v64;
          v66 = *v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v65 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_1C1EAECE0(0, v66[2] + 1, 1, v66);
            *v65 = v66;
          }

          v69 = v66[2];
          v68 = v66[3];
          if (v69 >= v68 >> 1)
          {
            v66 = sub_1C1EAECE0((v68 > 1), v69 + 1, 1, v66);
            *v65 = v66;
          }

          v66[2] = v69 + 1;
          v66[v69 + 4] = v62;
          v63(v376, 0);

          v12 = v357;
          v18 = v360;
          v10 = v355;
          goto LABEL_89;
        }

        v54 = *v55;
        LODWORD(v23) = *(v13 + 48);
        if (!*v55)
        {
          if (v23 == 53)
          {
            goto LABEL_405;
          }
        }

        else
        {
LABEL_77:
          v376[0] = v55[2 * v54 + 1];
          result = CalculateExpression.TokenType.match.getter(&v377);
          if (v23 == 53)
          {
            if (v377 == 53)
            {
LABEL_89:
              if (!*v55)
              {
                goto LABEL_405;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_1C1EAFA7C(v18);
              }

              a1 = v354;
              v19 = v370;
              v85 = *(v18 + 2);
              if (!v85)
              {
                goto LABEL_367;
              }

              *(v18 + 2) = v85 - 1;
LABEL_94:
              if (v10)
              {
                goto LABEL_101;
              }

              goto LABEL_95;
            }
          }

          else
          {
            v376[0] = v23;
            if (v377 != 53)
            {
              sub_1C1E9019C();
              result = sub_1C1F52414();
              if (result)
              {
                goto LABEL_89;
              }
            }
          }
        }

        *a3 = 1;
        v21 = v354;
        v82 = v367();
        LOBYTE(v23) = v82;
        if ((v82 & 0xC000000000000001) != 0)
        {
          v83 = v12;
          v84 = MEMORY[0x1C6911DB0](v14, v82);
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            v316 = MEMORY[0x1C6911DB0](v12, v21);
LABEL_342:

            sub_1C1EA1078(v316);

            goto LABEL_343;
          }

          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
          {
            goto LABEL_378;
          }

          v83 = v12;
          v84 = *(v82 + 8 * v14 + 32);
        }

        sub_1C1EA1078(v84);

        v12 = v83;
        goto LABEL_89;
      }

      if (v19)
      {
        v376[0] = *(v13 + 48);
        LOBYTE(v377) = 21;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
        {
          if (BYTE1(v377) == 1)
          {
            *a3 = 1;
            v21 = a1;
            v22 = v367();
            LOBYTE(v23) = v22;
            v358 = v18;
            v368 = v19;
            if ((v22 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x1C6911DB0](v14, v22);
            }

            else
            {
              if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_381;
              }

              if (v14 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_382;
              }

              v24 = *(v22 + 8 * v14 + 32);
            }

            v25 = v13;

            v26 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
            v27 = (*(*v24 + 224))(v376);
            v29 = v28;
            v30 = *v28;
            v31 = swift_isUniquelyReferenced_nonNull_native();
            *v29 = v30;
            v32 = a1;
            if ((v31 & 1) == 0)
            {
              v30 = sub_1C1EAECE0(0, v30[2] + 1, 1, v30);
              *v29 = v30;
            }

            v34 = v30[2];
            v33 = v30[3];
            if (v34 >= v33 >> 1)
            {
              v30 = sub_1C1EAECE0((v33 > 1), v34 + 1, 1, v30);
              *v29 = v30;
            }

            v30[2] = v34 + 1;
            v30[v34 + 4] = v26;
            v27(v376, 0);

            v12 = v357;
            v18 = v358;
            v10 = v355;
            v19 = v368;
            a1 = v32;
            v13 = v25;
          }

          else
          {
            BYTE1(v377) = 1;
          }

          goto LABEL_94;
        }
      }

      v35 = *(v13 + 48);
      v36 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1C1EAEF18(0, *(v18 + 2) + 1, 1, v18);
      }

      v12 = *(v18 + 2);
      v37 = *(v18 + 3);
      if (v12 >= v37 >> 1)
      {
        v18 = sub_1C1EAEF18((v37 > 1), v12 + 1, 1, v18);
      }

      *(v18 + 2) = v12 + 1;
      v38 = &v18[16 * v12];
      *(v38 + 4) = v14;
      v38[40] = v35;
      if (v10)
      {
        v376[0] = *(v13 + 48);
        LOBYTE(v377) = 23;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 || (v12 = v36, v376[0] = *(v13 + 48), LOBYTE(v377) = 21, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)))
        {
          *a3 = 1;
          v39 = v367();
          v369 = v19;
          v359 = v18;
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1C6911DB0](v14, v39);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_368;
            }

            if (v14 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_369;
            }

            v40 = *(v39 + 8 * v14 + 32);
          }

          v42 = v13;
          (*(*v13 + 136))(v41);
          v43 = objc_allocWithZone(CalculateError);
          v44 = sub_1C1F52424();

          v45 = [v43 initUnexpectedSymbol_];

          v46 = (*(*v40 + 224))(v376);
          v48 = v47;
          v49 = *v47;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *v48 = v49;
          v51 = a1;
          if ((v50 & 1) == 0)
          {
            v49 = sub_1C1EAECE0(0, v49[2] + 1, 1, v49);
            *v48 = v49;
          }

          v53 = v49[2];
          v52 = v49[3];
          if (v53 >= v52 >> 1)
          {
            v49 = sub_1C1EAECE0((v52 > 1), v53 + 1, 1, v49);
            *v48 = v49;
          }

          v49[2] = v53 + 1;
          v49[v53 + 4] = v45;
          v46(v376, 0);

          v12 = v357;
          v18 = v359;
          v10 = v355;
          v19 = v369;
          a1 = v51;
          v13 = v42;
          goto LABEL_101;
        }

        if ((v349 & 1) == 0)
        {
          v351 = 0;
          goto LABEL_101;
        }
      }

      else if ((v349 & 1) == 0)
      {
        v12 = v36;
        v351 = 0;
LABEL_95:
        v376[0] = *(v13 + 48);
        if (CalculateExpression.TokenType.isLaTeX.getter())
        {
          v86 = v14;
          v87 = v18;
          *a3 = 1;
          (*(*v13 + 136))();
          v88 = objc_allocWithZone(CalculateError);
          v89 = sub_1C1F52424();

          v90 = [v88 initUnexpectedSymbol_];

          v91 = (*(*v13 + 224))(v376);
          v93 = v92;
          v94 = *v92;
          v95 = swift_isUniquelyReferenced_nonNull_native();
          *v93 = v94;
          v96 = v10;
          if ((v95 & 1) == 0)
          {
            v94 = sub_1C1EAECE0(0, v94[2] + 1, 1, v94);
            *v93 = v94;
          }

          v98 = v94[2];
          v97 = v94[3];
          if (v98 >= v97 >> 1)
          {
            v94 = sub_1C1EAECE0((v97 > 1), v98 + 1, 1, v94);
            *v93 = v94;
          }

          v18 = v87;
          v94[2] = v98 + 1;
          v94[v98 + 4] = v90;
          v91(v376, 0);
          v12 = v357;
          v14 = v86;
          v10 = v96;
          a1 = v354;
        }

        goto LABEL_101;
      }

      v70 = v367();
      v371 = v19;
      v361 = v18;
      if ((v70 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x1C6911DB0](v14, v70);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_374;
        }

        if (v14 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_375;
        }

        v71 = *(v70 + 8 * v14 + 32);
      }

      v72 = v13;

      v73 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
      v74 = (*(*v71 + 224))(v376);
      v76 = v75;
      v77 = *v75;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v77;
      v79 = a1;
      if ((v78 & 1) == 0)
      {
        v77 = sub_1C1EAECE0(0, v77[2] + 1, 1, v77);
        *v76 = v77;
      }

      v81 = v77[2];
      v80 = v77[3];
      if (v81 >= v80 >> 1)
      {
        v77 = sub_1C1EAECE0((v80 > 1), v81 + 1, 1, v77);
        *v76 = v77;
      }

      v77[2] = v81 + 1;
      v77[v81 + 4] = v73;
      v74(v376, 0);

      v351 = 1;
      v12 = v357;
      v18 = v361;
      v10 = v355;
      v19 = v371;
      a1 = v79;
      v13 = v72;
      if ((v355 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_101:
      v376[0] = *(v13 + 48);
      LOBYTE(v377) = 17;
      sub_1C1E9019C();
      v19 &= sub_1C1F52414();
      v376[0] = *(v13 + 48);
      LOBYTE(v377) = 17;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
      {
        sub_1C1EB078C(a1, v12);
        goto LABEL_160;
      }

      v376[0] = *(v13 + 48);
      LOBYTE(v377) = 10;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
      {
        if (v351)
        {
          v99 = v367();
          v362 = v18;
          v372 = v19;
          if ((v99 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x1C6911DB0](v14, v99);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_370;
            }

            if (v14 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_371;
            }

            v100 = *(v99 + 8 * v14 + 32);
          }

          v101 = v13;

          v102 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
          v103 = (*(*v100 + 224))(v376);
          v105 = v104;
          v106 = *v104;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          *v105 = v106;
          v108 = a1;
          if ((v107 & 1) == 0)
          {
            v106 = sub_1C1EAECE0(0, v106[2] + 1, 1, v106);
            *v105 = v106;
          }

          v110 = v106[2];
          v109 = v106[3];
          if (v110 >= v109 >> 1)
          {
            v106 = sub_1C1EAECE0((v109 > 1), v110 + 1, 1, v106);
            *v105 = v106;
          }

          v106[2] = v110 + 1;
          v106[v110 + 4] = v102;
          v103(v376, 0);

          v12 = v357;
          v18 = v362;
          v10 = v355;
          v19 = v372;
          a1 = v108;
          v13 = v101;
        }

        v111 = sub_1C1EA13B8(a1, v12, a3, &v377 + 1);
        (*(*v352 + 600))(v111, 0);
      }

      else
      {
        v376[0] = *(v13 + 48);
        LOBYTE(v377) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
        {
          if (v351)
          {
            v376[0] = v353;
            LOBYTE(v377) = 19;
            if ((sub_1C1F52414() & 1) == 0)
            {
              v346 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
              v342 = (*(*v13 + 224))(v376);
              v113 = v112;
              sub_1C1EAEA50();
              v114 = v19;
              v115 = v12;
              v116 = v10;
              v117 = v13;
              v118 = a1;
              v119 = v114;
              v120 = v14;
              v121 = v18;
              v122 = *(*v113 + 16);
              sub_1C1EAEA9C(v122);
              v123 = *v113;
              *(v123 + 16) = v122 + 1;
              v124 = v123 + 8 * v122;
              v18 = v121;
              v14 = v120;
              LODWORD(v123) = v119;
              a1 = v118;
              v13 = v117;
              v10 = v116;
              v12 = v115;
              v19 = v123;
              *(v124 + 32) = v346;
              v342(v376, 0);
            }
          }

          v125 = sub_1C1EA8D94(a1, v12, a3);
          v126 = (*(*v352 + 592))();
          v127 = (*(*v125 + 304))(v126);
          if (!v127 || (v128 = (*(*v127 + 568))(v127), , (v128 & 1) != 0))
          {
            *a3 = 1;
            v347 = [objc_allocWithZone(CalculateError) initWithCode:-1004 userInfo:0];
            v129 = (*(*v13 + 224))(v376);
            v130 = v13;
            v131 = a1;
            v132 = v19;
            v133 = v14;
            v134 = v18;
            v135 = v129;
            v137 = v136;
            sub_1C1EAEA50();
            v138 = *(*v137 + 16);
            sub_1C1EAEA9C(v138);
            v139 = *v137;
            *(v139 + 16) = v138 + 1;
            *(v139 + 8 * v138 + 32) = v347;
            v135(v376, 0);
            v18 = v134;
            v14 = v133;
            v19 = v132;
            a1 = v131;
            v13 = v130;
            v10 = v355;
          }

          v12 = v357;
          goto LABEL_160;
        }

        v376[0] = *(v13 + 48);
        LOBYTE(v377) = 36;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 || (v376[0] = *(v13 + 48), LOBYTE(v377) = 38, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)) || (v376[0] = *(v13 + 48), LOBYTE(v377) = 44, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)) || (v376[0] = *(v13 + 48), LOBYTE(v377) = 46, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)) || (v376[0] = *(v13 + 48), LOBYTE(v377) = 48, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)))
        {
          v140 = sub_1C1EA7EC8(a1, v12, a3, 1);
          if (!*(v18 + 2))
          {
            goto LABEL_372;
          }

          v141 = v140;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v142 = *(v18 + 2);
            if (!v142)
            {
              goto LABEL_373;
            }
          }

          else
          {
            v18 = sub_1C1EAFA7C(v18);
            v142 = *(v18 + 2);
            if (!v142)
            {
              goto LABEL_373;
            }
          }

          *(v18 + 2) = v142 - 1;
          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 36;
          v348 = v141;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 || (v376[0] = *(v13 + 48), LOBYTE(v377) = 44, (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377)))
          {
            v143 = v12;
            v21 = 0xE400000000000000;
            v12 = 1818846563;
          }

          else
          {
            v143 = v12;
            v376[0] = *(v13 + 48);
            LOBYTE(v377) = 38;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
            {
              v21 = 0xE500000000000000;
              v12 = 0x726F6F6C66;
            }

            else
            {
              v376[0] = *(v13 + 48);
              LOBYTE(v377) = 46;
              v181 = static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377);
              if (v181)
              {
                v12 = 0x726F6F6C66;
              }

              else
              {
                v12 = 7561825;
              }

              if (v181)
              {
                v21 = 0xE500000000000000;
              }

              else
              {
                v21 = 0xE300000000000000;
              }
            }
          }

          if (v10)
          {
            v376[0] = 10;
            type metadata accessor for CalculateExpression.RichToken(0);
            v144 = v14;
            v145 = v18;
            v146 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(v12, v21, v376, 0);
            v363 = v13;
            v147 = (*v352 + 592);
            v148 = *v147;
            (*v147)(v146);
            v341 = v148;
            v18 = v145;
            v14 = v144;

            v376[0] = 15;
            v149 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v376, 0);
            v148(v149);

            (*(*v352 + 600))(v348, 0);
            v376[0] = 16;
            v150 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v376, 0);
            a1 = v354;
            v13 = v363;
            v10 = v355;
            v341(v150);
            v12 = v357;
          }

          else
          {

            v23 = *v143;
            if (v23 < v14)
            {
              goto LABEL_383;
            }

            v373 = v19;
            v364 = v18;
            v21 = (v367)(v151);
            sub_1C1EAEAE0(v14, v21);
            sub_1C1EAEAE0(v23, v21);
            sub_1C1EAF144(v14, v23, v21);
            v12 = v152;
            v154 = v153;
            v156 = v155;
            swift_unknownObjectRetain();

            v23 = v156 >> 1;
            v157 = (v156 >> 1) - v154;
            if (__OFSUB__(v156 >> 1, v154))
            {
              goto LABEL_384;
            }

            if (v157)
            {
              *v376 = MEMORY[0x1E69E7CC0];
              v21 = v376;
              sub_1C1EAC0D8((v156 >> 1) - v154);
              swift_unknownObjectRelease();
              if ((v157 & 0x8000000000000000) == 0)
              {
                v343 = v14;
                if (v154 <= v23)
                {
                  v158 = v156 >> 1;
                }

                else
                {
                  v158 = v154;
                }

                a1 = (v158 - v154);
                v14 = v12 + 8 * v154;
                while (a1)
                {
                  v159 = *(**v14 + 136);

                  v12 = v159(v160);
                  v162 = v161;

                  v10 = *v376;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C1EAF018(0, *(v10 + 16) + 1, 1);
                    v10 = *v376;
                  }

                  v164 = *(v10 + 16);
                  v163 = *(v10 + 24);
                  if (v164 >= v163 >> 1)
                  {
                    sub_1C1EAF018((v163 > 1), v164 + 1, 1);
                    v10 = *v376;
                  }

                  *(v10 + 16) = v164 + 1;
                  v165 = (v10 + 16 * v164);
                  *(v165 + 4) = v12;
                  *(v165 + 5) = v162;
                  a1 = (a1 - 1);
                  v14 += 8;
                  if (!--v157)
                  {
                    swift_unknownObjectRelease();
                    v18 = v364;
                    v14 = v343;
                    goto LABEL_154;
                  }
                }

                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
LABEL_367:
                __break(1u);
LABEL_368:
                __break(1u);
LABEL_369:
                __break(1u);
LABEL_370:
                __break(1u);
LABEL_371:
                __break(1u);
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
                goto LABEL_376;
              }

LABEL_388:
              __break(1u);
LABEL_389:
              v318 = MEMORY[0x1C6911DB0](v350, v21);
LABEL_351:

              v319 = [objc_allocWithZone(CalculateError) initWithCode:-1004 userInfo:0];
              v320 = (*(*v318 + 224))(v376);
              v322 = v321;
              sub_1C1EAEA50();
              v323 = *(*v322 + 16);
              sub_1C1EAEA9C(v323);
              v324 = *v322;
              *(v324 + 16) = v323 + 1;
              *(v324 + 8 * v323 + 32) = v319;
              v320(v376, 0);
LABEL_360:

              return v352;
            }

            swift_unknownObjectRelease_n();
            v10 = MEMORY[0x1E69E7CC0];
            v18 = v364;
LABEL_154:
            *v376 = v10;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
            sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100, MEMORY[0x1E69E6310]);
            v166 = sub_1C1F523E4();
            v168 = v167;

            v169 = sub_1C1EEECCC();
            v170._countAndFlagsBits = v166;
            v170._object = v168;
            evaluate(_:options:)(v171, v170, v169);
            v173 = v172;

            a1 = v354;
            v19 = v373;
            if (v173)
            {
              type metadata accessor for CalculateExpression.CustomOperandOperation();
              v174 = v173;
              v175 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v174);
              v176 = (*(*v175 + 128))();
              if (v176)
              {
                v376[0] = 4;
                type metadata accessor for CalculateExpression.RichToken(0);
                v177 = swift_allocObject();
                CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v376, 0);
                (*(*v352 + 592))(v177);
              }

              (*(*v175 + 120))(v176);
              (*(*v352 + 592))();
            }

            else
            {

              *a3 = 1;
            }

            v12 = v357;
            v10 = v355;
          }
        }

        else
        {
          v344 = v14;
          v365 = v18;
          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 20;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            v182 = *(*v13 + 136);
            if (v182() == 0x6D726874616D5CLL && v183 == 0xE700000000000000)
            {
              goto LABEL_175;
            }

            v184 = sub_1C1F52C64();

            if (v184)
            {
              goto LABEL_177;
            }

            if ((v182)(v185) == 0x747865745CLL && v186 == 0xE500000000000000)
            {
LABEL_175:

LABEL_177:
              v12 = v357;
              sub_1C1EB078C(a1, v357);
              v19 = 1;
              goto LABEL_251;
            }

            v187 = sub_1C1F52C64();

            if (v187)
            {
              goto LABEL_177;
            }
          }

          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 20;
          v12 = v357;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            if ((*(*v13 + 136))() == 0x726F6C6F635CLL && v188 == 0xE600000000000000)
            {

LABEL_188:
              sub_1C1EB078C(a1, v357);
              v190 = *v357;
              v191 = (*a1 + 288);
              v192 = *v191;
              v193 = (*v191)(*v357);
              if (v193 && (v194 = *(v193 + 48), , v194 != 53) && (v376[0] = v194, LOBYTE(v377) = 21, (sub_1C1F52414() & 1) != 0))
              {
                sub_1C1EB078C(a1, v357);
                sub_1C1EB078C(a1, v357);
                v195 = v192(*v357);
                if (!v195 || (v196 = *(v195 + 48), , v196 == 53) || (v376[0] = v196, LOBYTE(v377) = 22, (sub_1C1F52414() & 1) == 0))
                {
                  *a3 = 1;
                  result = v367();
                  if ((result & 0xC000000000000001) != 0)
                  {
                    v197 = MEMORY[0x1C6911DB0](v190, result);
                  }

                  else
                  {
                    if ((v190 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_397;
                    }

                    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v190)
                    {
                      goto LABEL_398;
                    }

                    v197 = *(result + 8 * v190 + 32);
                  }

                  sub_1C1EA1078(v197);
                }

                v12 = v357;
                sub_1C1EB078C(a1, v357);
                v19 = 1;
              }

              else
              {
                v19 = 1;
                v12 = v357;
              }

              goto LABEL_160;
            }

            v189 = sub_1C1F52C64();

            if (v189)
            {
              goto LABEL_188;
            }
          }

          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 50;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            if (v351)
            {
              result = v367();
              if ((result & 0xC000000000000001) != 0)
              {
                v198 = v19;
                v199 = MEMORY[0x1C6911DB0](v344, result);
              }

              else
              {
                if ((v14 & 0x8000000000000000) != 0)
                {
                  goto LABEL_392;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
                {
                  goto LABEL_393;
                }

                v198 = v19;
                v199 = *(result + 8 * v344 + 32);
              }

              v200 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
              v201 = (*(*v199 + 224))(v376);
              v203 = v202;
              sub_1C1EAEA50();
              v204 = *(*v203 + 16);
              sub_1C1EAEA9C(v204);
              v205 = *v203;
              *(v205 + 16) = v204 + 1;
              *(v205 + 8 * v204 + 32) = v200;
              v201(v376, 0);

              v12 = v357;
              v19 = v198;
            }

            v206 = sub_1C1EA6C88(a1, v12, a3);
            (*(*v352 + 600))(v206, 0);

            v18 = v365;
            goto LABEL_251;
          }

          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 40;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            if (v14)
            {
              *a3 = 1;
              result = v367();
              v207 = result;
              v374 = v19;
              if ((result & 0xC000000000000001) == 0)
              {
                v208 = v14;
                if ((v14 & 0x8000000000000000) != 0)
                {
                  goto LABEL_394;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
                {
                  goto LABEL_395;
                }

                goto LABEL_248;
              }

LABEL_323:
              v215 = MEMORY[0x1C6911DB0](v14, v207);
LABEL_249:

              v216 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
              v217 = (*(*v215 + 224))(v376);
              v219 = v218;
              sub_1C1EAEA50();
              v220 = *(*v219 + 16);
              sub_1C1EAEA9C(v220);
              v221 = *v219;
              *(v221 + 16) = v220 + 1;
              *(v221 + 8 * v220 + 32) = v216;
              v217(v376, 0);

              v12 = v357;
              v18 = v365;
              v19 = v374;
            }

            else
            {
              v349 = 1;
              v351 = 1;
            }

LABEL_250:
            sub_1C1EB078C(a1, v12);
LABEL_251:
            v14 = v344;
            goto LABEL_160;
          }

          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 41;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            v209 = v367();
            if (v209 >> 62)
            {
              v210 = sub_1C1F52994();
            }

            else
            {
              v210 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (__OFSUB__(v210, 1))
            {
              goto LABEL_396;
            }

            if (v14 == v210 - 1)
            {
              v349 = 0;
              v351 = 0;
              goto LABEL_250;
            }

            *a3 = 1;
            result = (v367)(result);
            v207 = result;
            v374 = v19;
            if ((result & 0xC000000000000001) != 0)
            {
              goto LABEL_323;
            }

            v208 = v14;
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_399;
            }

            if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
            {
              goto LABEL_400;
            }

            goto LABEL_248;
          }

          if (v10)
          {
            v376[0] = *(v13 + 48);
            LOBYTE(v377) = 25;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
            {
              if ((*(*v13 + 136))() == 38 && v211 == 0xE100000000000000)
              {
LABEL_229:

LABEL_230:
                if (v351)
                {
                  v376[0] = *(v13 + 48);
                  LOBYTE(v377) = 25;
                  LOBYTE(v340) = static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377);
                  BYTE4(v340) = v340;
                  v339 = v340;
                  goto LABEL_250;
                }

                *a3 = 1;
                result = (v367)(v213);
                v207 = result;
                v374 = v19;
                if ((result & 0xC000000000000001) != 0)
                {
                  goto LABEL_323;
                }

                v208 = v14;
                if ((v14 & 0x8000000000000000) != 0)
                {
                  goto LABEL_404;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
                {
                  goto LABEL_403;
                }

LABEL_248:
                v215 = *(v207 + 8 * v208 + 32);

                goto LABEL_249;
              }

              v212 = sub_1C1F52C64();

              if (v212)
              {
                goto LABEL_230;
              }
            }

            v376[0] = *(v13 + 48);
            LOBYTE(v377) = 20;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
            {
              if ((*(*v13 + 136))() == 23644 && v214 == 0xE200000000000000)
              {
                goto LABEL_229;
              }

              v222 = sub_1C1F52C64();

              if (v222)
              {
                goto LABEL_230;
              }
            }
          }

          v376[0] = *(v13 + 48);
          v375 = v19;
          if ((CalculateExpression.TokenType.isAnyUnknown.getter() & 1) == 0)
          {
            v376[0] = *(v13 + 48);
            LOBYTE(v377) = 1;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) != 0 && (v239 = (*v356 + 384), v240 = *v239, (*v239)(v376), LOBYTE(v377) = v376[0], sub_1C1E903DC(), (sub_1C1F52414() & 1) == 0))
            {
              v256 = (*(*v13 + 160))();
              if (!v257)
              {
                v256 = (*(*v13 + 136))(v256);
              }

              v258 = sub_1C1E9A504(v256, v257);
              if (v259)
              {
                v260 = 0;
              }

              else
              {
                v260 = v258;
              }

              type metadata accessor for CalculateExpression.RichToken(0);
              *v376 = v260;
              v240(&v377);
              CalculateExpression.Base.rawValue.getter();
              sub_1C1EB05DC();
              v261 = sub_1C1F525C4();
              v263 = v262;
              v264 = (v240)(v376);
              v265 = (v345)(v264);
              v248 = sub_1C1E8FBEC(v261, v263, v376, v265);
              v247 = v357;
              v18 = v365;
              v19 = v375;
            }

            else
            {
              v241 = *(*v13 + 160);

              v243 = v241(v242);
              if (!v244)
              {
                v243 = (*(*v13 + 136))(v243);
              }

              v245 = v243;
              v246 = v244;
              v247 = v357;
              v19 = v375;
              v376[0] = *(v13 + 48);
              type metadata accessor for CalculateExpression.RichToken(0);
              v248 = swift_allocObject();
              CalculateExpression.RichToken.init(text:type:isImplicit:)(v245, v246, v376, 0);
            }

            (*(*v352 + 592))(v248);

            v12 = v247;
            v266 = sub_1C1EB078C(a1, v247);
            v10 = v355;
            if ((v349 & 1) == 0)
            {
              goto LABEL_314;
            }

            if (qword_1EBF216D0 != -1)
            {
              swift_once();
            }

            v266 = sub_1C1E91F6C(*(v13 + 48), qword_1EBF22770);
            if (v266)
            {
              goto LABEL_314;
            }

            v376[0] = *(v13 + 48);
            if (CalculateExpression.TokenType.isPrefixOperator.getter())
            {
              LOBYTE(v377) = *(v13 + 48);
              v266 = sub_1C1F52414();
              if ((v266 & 1) == 0)
              {
                if ((v339 & 1) == 0)
                {
LABEL_308:
                  v340 = 0;
                  goto LABEL_309;
                }

LABEL_300:
                v277 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v278 = (*(*v13 + 224))(v376);
                v280 = v279;
                sub_1C1EAEA50();
                v281 = *(*v280 + 16);
                sub_1C1EAEA9C(v281);
                v282 = *v280;
                *(v282 + 16) = v281 + 1;
                *(v282 + 8 * v281 + 32) = v277;
                v266 = v278(v376, 0);
LABEL_301:
                v340 = 0x100000001;
                goto LABEL_309;
              }
            }

            v376[0] = *(v13 + 48);
            if (CalculateExpression.TokenType.isPostfixOperator.getter())
            {
              if ((v340 & 0x100000000) == 0)
              {
                v283 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v284 = (*(*v13 + 224))(v376);
                v286 = v285;
                sub_1C1EAEA50();
                v287 = *(*v286 + 16);
                sub_1C1EAEA9C(v287);
                v288 = *v286;
                *(v288 + 16) = v287 + 1;
                *(v288 + 8 * v287 + 32) = v283;
                v266 = v284(v376, 0);
                goto LABEL_308;
              }

              v376[0] = *(v13 + 48);
              LOBYTE(v377) = 9;
              if ((static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377) & 1) == 0)
              {
                goto LABEL_300;
              }

              v275 = (*(*v354 + 288))(*v357);
              if (!v275)
              {
                goto LABEL_300;
              }

              v276 = *(v275 + 48);

              if (v276 == 53)
              {
                goto LABEL_300;
              }

              v376[0] = v276;
              LOBYTE(v377) = 20;
              v266 = sub_1C1F52414();
              if ((v266 & 1) == 0)
              {
                goto LABEL_300;
              }

              goto LABEL_301;
            }

            v376[0] = *(v13 + 48);
            v266 = CalculateExpression.TokenType.isBinaryOperator.getter();
            if (v266)
            {
              if (v340)
              {
                v376[0] = v353;
                LOBYTE(v377) = 19;
                if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
                {
                  v266 = sub_1C1EA8FF4(*(v13 + 48), &unk_1F418D398);
                  if (v266)
                  {
                    LOBYTE(v340) = 1;
                    goto LABEL_312;
                  }
                }

                v299 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v300 = (*(*v13 + 224))(v376);
                v302 = v301;
                sub_1C1EAEA50();
                v303 = *(*v302 + 16);
                sub_1C1EAEA9C(v303);
                v304 = *v302;
                *(v304 + 16) = v303 + 1;
                *(v304 + 8 * v303 + 32) = v299;
                v266 = v300(v376, 0);
                LOBYTE(v340) = 1;
LABEL_309:
                a1 = v354;
                v12 = v357;
                v18 = v365;
                v289 = v355;
LABEL_313:
                v10 = v289;
LABEL_314:
                if ((v345)(v266))
                {
                  v290 = CalculateExpression.format.getter();

                  if (v290 == 1)
                  {
                    if (qword_1EBF216D0 != -1)
                    {
                      swift_once();
                    }

                    if (sub_1C1E91F6C(*(v13 + 48), qword_1EBF22770))
                    {
                      v291 = [objc_allocWithZone(CalculateError) initWithCode:-1008 userInfo:0];
                      v292 = v12;
                      v293 = (*(*v13 + 224))(v376);
                      v295 = v294;
                      sub_1C1EAEA50();
                      v296 = *(*v295 + 16);
                      sub_1C1EAEA9C(v296);
                      v297 = *v295;
                      *(v297 + 16) = v296 + 1;
                      v298 = v297 + 8 * v296;
                      v18 = v365;
                      *(v298 + 32) = v291;
                      v293(v376, 0);
                      v12 = v292;
                      *a3 = 1;
                    }
                  }
                }

                goto LABEL_251;
              }

              v266 = sub_1C1EA8FF4(*(v13 + 48), &unk_1F418D3C0);
              if ((v266 & 1) == 0)
              {
                v305 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v306 = (*(*v13 + 224))(v376);
                v308 = v307;
                sub_1C1EAEA50();
                v309 = *(*v308 + 16);
                sub_1C1EAEA9C(v309);
                v310 = *v308;
                *(v310 + 16) = v309 + 1;
                *(v310 + 8 * v309 + 32) = v305;
                v266 = v306(v376, 0);
                LOBYTE(v340) = 0;
                goto LABEL_309;
              }

              LOBYTE(v340) = 0;
            }

LABEL_312:
            a1 = v354;
            v18 = v365;
            v289 = v355;
            v12 = v357;
            goto LABEL_313;
          }

          *a3 = 1;
          v223 = *(*v13 + 160);

          v225 = v223(v224);
          if (!v226)
          {
            v225 = (*(*v13 + 136))(v225);
          }

          v227 = v225;
          v228 = v226;
          v376[0] = *(v13 + 48);
          type metadata accessor for CalculateExpression.RichToken(0);
          v229 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(v227, v228, v376, 0);

          (*(*v352 + 592))(v229);

          v376[0] = *(v13 + 48);
          LOBYTE(v377) = 0;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377))
          {
            result = v367();
            if ((result & 0xC000000000000001) != 0)
            {
              v230 = MEMORY[0x1C6911DB0](v14, result);
            }

            else
            {
              if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_401;
              }

              if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
              {
                goto LABEL_402;
              }

              v230 = *(result + 8 * v14 + 32);
            }

            v231 = objc_allocWithZone(CalculateError);
            v232 = sub_1C1F526A4();
            v233 = [v231 initUnknownVariable_];

            v234 = (*(*v230 + 224))(v376);
            v236 = v235;
            sub_1C1EAEA50();
            v237 = *(*v236 + 16);
            sub_1C1EAEA9C(v237);
            v238 = *v236;
            *(v238 + 16) = v237 + 1;
            *(v238 + 8 * v237 + 32) = v233;
            v234(v376, 0);
          }

          else
          {
            v376[0] = *(v13 + 48);
            LOBYTE(v377) = 51;
            v249 = static CalculateExpression.TokenType.== infix(_:_:)(v376, &v377);
            result = v367();
            v250 = result & 0xC000000000000001;
            if (v249)
            {
              if (v250)
              {
                v251 = MEMORY[0x1C6911DB0](v14, result);
              }

              else
              {
                if ((v14 & 0x8000000000000000) != 0)
                {
                  goto LABEL_409;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
                {
                  goto LABEL_408;
                }

                v251 = *(result + 8 * v14 + 32);
              }

              (*(*v13 + 136))(v252);
              v253 = objc_allocWithZone(CalculateError);
              v254 = sub_1C1F52424();

              v255 = [v253 initUnexpectedPunctuation_];
            }

            else
            {
              if (v250)
              {
                v251 = MEMORY[0x1C6911DB0](v14, result);
              }

              else
              {
                if ((v14 & 0x8000000000000000) != 0)
                {
                  goto LABEL_407;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v14)
                {
                  goto LABEL_406;
                }

                v251 = *(result + 8 * v14 + 32);
              }

              (*(*v13 + 136))(v267);
              v268 = objc_allocWithZone(CalculateError);
              v254 = sub_1C1F52424();

              v255 = [v268 initUnexpectedSymbol_];
            }

            v269 = v255;

            v270 = (*(*v251 + 224))(v376);
            v272 = v271;
            sub_1C1EAEA50();
            v273 = *(*v272 + 16);
            sub_1C1EAEA9C(v273);
            v274 = *v272;
            *(v274 + 16) = v273 + 1;
            *(v274 + 8 * v273 + 32) = v269;
            v270(v376, 0);
          }

          v12 = v357;
          sub_1C1EB078C(a1, v357);
          v18 = v365;
          v19 = v375;
        }
      }

LABEL_160:
      v376[0] = *(v13 + 48);
      LOBYTE(v377) = 17;
      if ((sub_1C1F52414() & 1) == 0)
      {
        v353 = *(v13 + 48);
        v350 = v14;
      }

      v14 = *v12;
      v13 = v367;
      v179 = (v367)(v178);
      if (v179 >> 62)
      {
        v180 = sub_1C1F52994();
      }

      else
      {
        v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 >= v180)
      {
        goto LABEL_330;
      }
    }
  }

  v350 = -1;
  v353 = 15;
LABEL_330:
  v311 = (v345)(v17);
  if (v311)
  {
    LOBYTE(v23) = CalculateExpression.allowPartialExpressions.getter();
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  v14 = v18;
  v312 = v18 + 40;
  v313 = -*(v18 + 2);
  v314 = -1;
  v13 = 15;
  while (v313 + v314 != -1)
  {
    if (++v314 >= *(v14 + 16))
    {
      goto LABEL_366;
    }

    v12 = *(v312 - 1);
    if (v23)
    {
      v10 = (v312 + 16);
      v376[0] = *v312;
      LOBYTE(v377) = 15;
      sub_1C1E9019C();
      v311 = sub_1C1F52414();
      v312 = v10;
      if (v311)
      {
        continue;
      }
    }

    *a3 = 1;
    v315 = (v367)(v311);
    v21 = v315;
    if ((v315 & 0xC000000000000001) != 0)
    {
      goto LABEL_385;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v315 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v316 = *(v315 + 8 * v12 + 32);

      goto LABEL_342;
    }

    __break(1u);
    goto LABEL_388;
  }

LABEL_343:
  if ((v23 & 1) != 0 || (v376[0] = v353, (CalculateExpression.TokenType.isBinaryOperator.getter() & 1) == 0))
  {

    return v352;
  }

  v376[0] = v353;
  v317 = CalculateExpression.TokenType.isPostfixOperator.getter();

  if (v317)
  {
    return v352;
  }

  v376[0] = v353;
  LOBYTE(v377) = 7;
  sub_1C1E9019C();
  if (sub_1C1F52414())
  {
    return v352;
  }

  result = v367();
  v21 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_389;
  }

  if ((v350 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v350 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v318 = *(result + 8 * v350 + 32);

    goto LABEL_351;
  }

  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
  return result;
}