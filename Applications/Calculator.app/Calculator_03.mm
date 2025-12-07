uint64_t sub_1000530B4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[17];
    sub_100008E68(v0[11], v5, &qword_100154E10, &qword_10010C4C0);
    v6 = *(v4 + 48);
    if (v6(v5, 1, v3) == 1)
    {
      sub_1000035CC(v0[17], &qword_100154E10, &qword_10010C4C0);
      goto LABEL_13;
    }

    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[12];
    v38 = v0[13];
    v35 = v9[4];
    v35(v7, v0[17], v8);
    v37 = v9[2];
    v37(v10, v7, v8);
    v36 = v9[7];
    v36(v10, 0, 1, v8);
    swift_getKeyPath();
    v0[9] = v2;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
    swift_beginAccess();
    v13 = *(v11 + 48);
    sub_100008E68(v10, v38, &qword_100154E10, &qword_10010C4C0);
    sub_100008E68(v2 + v12, v38 + v13, &qword_100154E10, &qword_10010C4C0);
    v14 = v6(v38, 1, v8);
    v15 = v0[18];
    if (v14 == 1)
    {
      sub_1000035CC(v0[16], &qword_100154E10, &qword_10010C4C0);
      if (v6(v38 + v13, 1, v15) == 1)
      {
        v16 = v0[19];
        sub_1000035CC(v0[13], &qword_100154E10, &qword_10010C4C0);
        (*(v16 + 8))(v0[21], v0[18]);
        goto LABEL_13;
      }
    }

    else
    {
      sub_100008E68(v0[13], v0[15], &qword_100154E10, &qword_10010C4C0);
      if (v6(v38 + v13, 1, v15) != 1)
      {
        v25 = v0[19];
        v24 = v0[20];
        v26 = v0[18];
        v27 = v0[15];
        v33 = v0[16];
        v34 = v0[13];
        v35(v24, v38 + v13, v26);
        sub_100054468(&qword_100154F78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v25 + 8);
        v29(v24, v26);
        sub_1000035CC(v33, &qword_100154E10, &qword_10010C4C0);
        v29(v27, v26);
        sub_1000035CC(v34, &qword_100154E10, &qword_10010C4C0);
        if (v28)
        {
          v29(v0[21], v0[18]);
LABEL_13:
          if (*(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate))
          {
            swift_getKeyPath();
            v30 = swift_task_alloc();
            *(v30 + 16) = v2;
            *(v30 + 24) = 0;
            v0[8] = v2;
            sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            *(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) = 0;
          }

          goto LABEL_16;
        }

LABEL_10:
        v20 = v0[21];
        v21 = v0[18];
        v22 = v0[19];
        v23 = v0[14];
        v37(v23, v20, v21);
        v36(v23, 0, 1, v21);
        sub_100051938(v23);
        (*(v22 + 8))(v20, v21);
        goto LABEL_13;
      }

      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[15];
      sub_1000035CC(v0[16], &qword_100154E10, &qword_10010C4C0);
      (*(v18 + 8))(v19, v17);
    }

    sub_1000035CC(v0[13], &qword_100154F70, &unk_10010C6C0);
    goto LABEL_10;
  }

LABEL_16:

  v31 = v0[1];

  return v31();
}

uint64_t sub_10005368C()
{
  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider, &qword_100154F60, &qword_10010C620);
  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate, &qword_100154E10, &qword_10010C4C0);
  v1 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorCurrencyCacheProvider(uint64_t a1)
{
  result = qword_100154E98;
  if (!qword_100154E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000537CC(uint64_t a1)
{
  sub_100053924(319, &unk_100154EA8, &type metadata accessor for StocksKitCurrencyCache.Provider);
  if (v1 <= 0x3F)
  {
    sub_100053924(319, &qword_100154D68, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100053924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100053990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100050E84(a1, v4, v5, v6);
}

void sub_100053A44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100053B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030DE0;

  return sub_100030330(a1, v4);
}

uint64_t sub_100053BCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030CEC;

  return sub_100030330(a1, v4);
}

uint64_t sub_100053C84(uint64_t a1)
{
  v4 = *(sub_10003AE84(&qword_100154F60, &qword_10010C620) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100051380(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100053DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030CEC;

  return sub_100052A08(a1, v4, v5, v6);
}

uint64_t sub_100053E88(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, __n128))
{
  v5 = *(sub_10003AE84(a1, a2) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  v7 = (a3)(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_100053FA8(uint64_t a1)
{
  v4 = *(sub_10003AE84(&qword_100154E10, &qword_10010C4C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100052F1C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000540AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_100008E68(a1, &v21 - v12, &qword_100154E10, &qword_10010C4C0);
  sub_100008E68(a2, &v13[v15], &qword_100154E10, &qword_10010C4C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100008E68(v13, v10, &qword_100154E10, &qword_10010C4C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100054468(&qword_100154F78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000035CC(v13, &qword_100154E10, &qword_10010C4C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000035CC(v13, &qword_100154F70, &unk_10010C6C0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000035CC(v13, &qword_100154E10, &qword_10010C4C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000543CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10003AE84(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_100054468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100054528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100054570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000545DC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000546A4()
{
  type metadata accessor for CalculateExpression.Operation();
  static CalculateExpression.Operation.digit00.getter();
  sub_100055948();
  v0 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v0)
  {
    return 73;
  }

  static CalculateExpression.Operation.digit0.getter();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v2)
  {
    return 12;
  }

  static CalculateExpression.Operation.digit1.getter();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v3)
  {
    return 13;
  }

  static CalculateExpression.Operation.digit2.getter();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v4)
  {
    return 14;
  }

  static CalculateExpression.Operation.digit3.getter();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v5)
  {
    return 15;
  }

  static CalculateExpression.Operation.digit4.getter();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v6)
  {
    return 16;
  }

  static CalculateExpression.Operation.digit5.getter();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v7)
  {
    return 17;
  }

  static CalculateExpression.Operation.digit6.getter();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v8)
  {
    return 18;
  }

  static CalculateExpression.Operation.digit7.getter();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v9)
  {
    return 19;
  }

  static CalculateExpression.Operation.digit8.getter();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v10)
  {
    return 20;
  }

  static CalculateExpression.Operation.digit9.getter();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v11)
  {
    return 21;
  }

  static CalculateExpression.Operation.digitA.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v12)
  {
    return 66;
  }

  static CalculateExpression.Operation.digitB.getter();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v13)
  {
    return 67;
  }

  static CalculateExpression.Operation.digitC.getter();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v14)
  {
    return 68;
  }

  static CalculateExpression.Operation.digitD.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v15)
  {
    return 69;
  }

  static CalculateExpression.Operation.digitE.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v16)
  {
    return 70;
  }

  static CalculateExpression.Operation.digitF.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v17)
  {
    return 71;
  }

  static CalculateExpression.Operation.digitFF.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v18)
  {
    return 72;
  }

  static CalculateExpression.Operation.pi.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v19)
  {
    return 51;
  }

  static CalculateExpression.Operation.eulerNumber.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v20)
  {
    return 45;
  }

  static CalculateExpression.Operation.ee.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v21)
  {
    return 46;
  }

  static CalculateExpression.Operation.random.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v22)
  {
    return 52;
  }

  static CalculateExpression.Operation.equals.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v23)
  {
    return 9;
  }

  static CalculateExpression.Operation.delete.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v24)
  {
    return 53;
  }

  static CalculateExpression.Operation.clear.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v25)
  {
    return 1;
  }

  static CalculateExpression.Operation.allClear.getter();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v26)
  {
    return 1;
  }

  static CalculateExpression.Operation.negate.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v27)
  {
    return 3;
  }

  static CalculateExpression.Operation.add.getter();
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v28)
  {
    return 8;
  }

  static CalculateExpression.Operation.subtract.getter();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v29)
  {
    return 7;
  }

  static CalculateExpression.Operation.multiply.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v30)
  {
    return 6;
  }

  static CalculateExpression.Operation.divide.getter();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v31)
  {
    return 5;
  }

  static CalculateExpression.Operation.decimal.getter();
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v32)
  {
    return 10;
  }

  static CalculateExpression.Operation.openParenthesis.getter();
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v33)
  {
    return 22;
  }

  static CalculateExpression.Operation.closeParenthesis.getter();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v34)
  {
    return 23;
  }

  static CalculateExpression.Operation.factorial.getter();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v35)
  {
    return 41;
  }

  static CalculateExpression.Operation.percent.getter();
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v36)
  {
    return 4;
  }

  static CalculateExpression.Operation.reciprocal.getter();
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v37)
  {
    return 34;
  }

  static CalculateExpression.Operation.square.getter();
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v38)
  {
    return 29;
  }

  static CalculateExpression.Operation.cube.getter();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v39)
  {
    return 30;
  }

  static CalculateExpression.Operation.power.getter();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v40)
  {
    return 31;
  }

  static CalculateExpression.Operation.root.getter();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v41)
  {
    return 37;
  }

  static CalculateExpression.Operation.reverseRoot.getter();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v42)
  {
    return 38;
  }

  static CalculateExpression.Operation.squareRoot.getter();
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v43)
  {
    return 35;
  }

  static CalculateExpression.Operation.cubeRoot.getter();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v44)
  {
    return 36;
  }

  static CalculateExpression.Operation.logarithmBase10.getter();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v45)
  {
    return 40;
  }

  static CalculateExpression.Operation.logarithmBase2.getter();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v46)
  {
    return 59;
  }

  static CalculateExpression.Operation.logarithmBaseCustom.getter();
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v47)
  {
    return 58;
  }

  static CalculateExpression.Operation.logarithmNatural.getter();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v48)
  {
    return 39;
  }

  static CalculateExpression.Operation.exponentialBase10.getter();
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v49)
  {
    return 33;
  }

  static CalculateExpression.Operation.exponentialBase2.getter();
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v50)
  {
    return 57;
  }

  static CalculateExpression.Operation.exponentialBaseEuler.getter();
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v51)
  {
    return 32;
  }

  static CalculateExpression.Operation.exponentialBaseCustom.getter();
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v52)
  {
    return 56;
  }

  static CalculateExpression.Operation.sine.getter();
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v53)
  {
    return 42;
  }

  static CalculateExpression.Operation.cosine.getter();
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v54)
  {
    return 43;
  }

  static CalculateExpression.Operation.tangent.getter();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v55)
  {
    return 44;
  }

  static CalculateExpression.Operation.hyperbolicSine.getter();
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v56)
  {
    return 48;
  }

  static CalculateExpression.Operation.hyperbolicCosine.getter();
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v57)
  {
    return 49;
  }

  static CalculateExpression.Operation.hyperbolicTangent.getter();
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v58)
  {
    return 50;
  }

  static CalculateExpression.Operation.inverseSine.getter();
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v59)
  {
    return 60;
  }

  static CalculateExpression.Operation.inverseCosine.getter();
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v60)
  {
    return 61;
  }

  static CalculateExpression.Operation.inverseTangent.getter();
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v61)
  {
    return 62;
  }

  static CalculateExpression.Operation.inverseHyperbolicSine.getter();
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v62)
  {
    return 63;
  }

  static CalculateExpression.Operation.inverseHyperbolicCosine.getter();
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v63)
  {
    return 64;
  }

  static CalculateExpression.Operation.inverseHyperbolicTangent.getter();
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v64)
  {
    return 65;
  }

  static CalculateExpression.Operation.and.getter();
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v65)
  {
    return 74;
  }

  static CalculateExpression.Operation.or.getter();
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v66)
  {
    return 75;
  }

  static CalculateExpression.Operation.nor.getter();
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v67)
  {
    return 76;
  }

  static CalculateExpression.Operation.xor.getter();
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v68)
  {
    return 77;
  }

  static CalculateExpression.Operation.leftShift.getter();
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v69)
  {
    return 79;
  }

  static CalculateExpression.Operation.rightShift.getter();
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v70)
  {
    return 78;
  }

  static CalculateExpression.Operation.leftShiftCustom.getter();
  v71 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v71)
  {
    return 81;
  }

  static CalculateExpression.Operation.rightShiftCustom.getter();
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v72)
  {
    return 80;
  }

  static CalculateExpression.Operation.leftRotate.getter();
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v73)
  {
    return 83;
  }

  static CalculateExpression.Operation.rightRotate.getter();
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v74)
  {
    return 82;
  }

  static CalculateExpression.Operation.byteFlip.getter();
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v75)
  {
    return 84;
  }

  static CalculateExpression.Operation.wordFlip.getter();
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v76)
  {
    return 85;
  }

  static CalculateExpression.Operation.not.getter();
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v77)
  {
    return 87;
  }

  static CalculateExpression.Operation.neg.getter();
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v78)
  {
    return 86;
  }

  static CalculateExpression.Operation.mod.getter();
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v79)
  {
    return 88;
  }

  static CalculateExpression.Operation.drop.getter();
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v80)
  {
    return 89;
  }

  static CalculateExpression.Operation.swap.getter();
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v81)
  {
    return 90;
  }

  static CalculateExpression.Operation.rollOut.getter();
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v82)
  {
    return 91;
  }

  static CalculateExpression.Operation.rollIn.getter();
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v83)
  {
    return 92;
  }

  static CalculateExpression.Operation.enter.getter();
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v84)
  {
    return 93;
  }

  else
  {
    return 94;
  }
}

unint64_t sub_100055948()
{
  result = qword_100154FC8;
  if (!qword_100154FC8)
  {
    type metadata accessor for CalculateExpression.Operation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154FC8);
  }

  return result;
}

uint64_t sub_1000559D4()
{
  v0 = type metadata accessor for Text.TruncationMode();
  sub_100004078(v0, qword_100160890);
  v1 = sub_1000048C8(v0, qword_100160890);
  v2 = enum case for Text.TruncationMode.middle(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100055A5C()
{
  v0 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  sub_100004078(v0, qword_1001608A8);
  sub_1000048C8(v0, qword_1001608A8);
  return URL.init(string:)();
}

uint64_t sub_100055ACC()
{
  v0 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  sub_100004078(v0, qword_1001608C0);
  sub_1000048C8(v0, qword_1001608C0);
  return URL.init(string:)();
}

unint64_t sub_100055B48(uint64_t a1, int a2, unint64_t a3)
{
  v4 = a2;
  v6 = a2 & 0xFFFFFF;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v34 - v13;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = sub_100076F10(_swiftEmptyArrayStorage, v12);
  }

  Date.init()();
  v16 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
  swift_beginAccess();
  (*(v8 + 16))(v10, a1 + v16, v7);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v14, v7);
  v20 = [objc_allocWithZone(NSNumber) initWithDouble:v18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v15;
  sub_1000768A4(v20, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v22 = v34;
  v23 = v6 & 0xFF00;
  v24 = 2;
  v25 = 3;
  if ((v6 & 0x100) == 0)
  {
    v25 = 1;
  }

  if ((v6 & 0x10000) == 0)
  {
    v24 = v25;
  }

  if (v23 == 512)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_allocWithZone(NSNumber) initWithInteger:v26];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_1000768A4(v27, 0x7475706E69, 0xE500000000000000, v28);
  v29 = v34;
  if (v23 == 512)
  {
    v30 = 1;
  }

  else
  {
    v30 = qword_10010CA70[v4];
  }

  v31 = [objc_allocWithZone(NSNumber) initWithInteger:v30];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v29;
  sub_1000768A4(v31, 1701080941, 0xE400000000000000, v32);
  return v34;
}

unint64_t sub_100055E20(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_100076F10(_swiftEmptyArrayStorage, v5);
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v8;
  sub_1000768A4(v11, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v13 = v18;
  v14 = [objc_allocWithZone(NSNumber) initWithBool:1];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v13;
  sub_1000768A4(v14, 0xD000000000000011, 0x8000000100105C30, v15);
  return v18;
}

uint64_t sub_100055FE4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100056040(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000560A8(uint64_t a1)
{
  swift_getKeyPath();
  v11 = v1;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (sub_100006CE8(*(v1 + 48), a1))
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000048C8(v3, qword_100160D38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = String.init<A>(describing:)();
      v10 = sub_100006E5C(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "No change to current calculator mode: %{public}s", v6, 0xCu);
      sub_100003F80(v7);
    }
  }

  else
  {
    sub_1000055C8(a1, 0);
  }
}

uint64_t sub_10005628C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_100056380()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

id sub_100056430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_100056514(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  type metadata accessor for CalculatorMDMRestrictionsManager(0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100056670(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

double sub_100056740(unsigned __int8 a1)
{
  if (sub_100006CE8(*(v1 + 48), a1))
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100056858()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_1000568F8()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 49);
}

double sub_100056998(unsigned __int8 a1)
{
  if (*(v1 + 49) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100056AA8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 50);
}

void sub_100056B78(char a1)
{
  if (*(v1 + 50) == (a1 & 1))
  {
    *(v1 + 50) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100056C8C()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 50);
}

double sub_100056D2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, char a6)
{
  v10 = *(v6 + 16);
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v10[40] & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + 50) == 1)
  {
    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      CalculateExpression.expression.setter();
    }

    if (a4)
    {
      v13 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v13 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        sub_1000DBEAC();

        CalculateExpression.expression.setter();
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v10[42] != (a5 & 1))
    {
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (a4)
    {
      v16 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v16 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        sub_1000DBEAC();

        CalculateExpression.expression.setter();
      }

      v17 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v17 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        CalculateExpression.expression.setter();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((v10[41] & 1) == 0)
      {
        v18 = swift_getKeyPath();
        __chkstk_darwin(v18);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      CalculateExpression.inlineEvaluate()();

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000DBEAC();

      CalculateExpression.setRepeatableOperation(from:)();
    }

    else
    {
      v19 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v19 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        CalculateExpression.expression.setter();
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v10[41] == 1)
      {
        v20 = swift_getKeyPath();
        __chkstk_darwin(v20);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    if (a6)
    {
      sub_10001B0D8();

      CalculateExpression.rich.getter();
      v21 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

      if ((v21 & 1) == 0)
      {
        CalculateExpression.rich.getter();
        v22 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

        if (v22)
        {
          return result;
        }

        sub_1000D6098(0);
        v23 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v23 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {

          sub_1000DBEAC();

          CalculateExpression.expression.setter();
        }

        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        sub_1000DBEAC();

        CalculateExpression.setRepeatableOperation(from:)();
      }
    }
  }

  return result;
}

void sub_1000574F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003AE84(&qword_1001551D0, &qword_10010CDF0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_10007519C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1000576D8(char a1)
{
  if (*(v1 + 51) == (a1 & 1))
  {
    *(v1 + 51) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000577E8(char a1)
{
  if (*(v1 + 52) == (a1 & 1))
  {
    *(v1 + 52) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000578F8(char a1)
{
  if (*(v1 + 53) == (a1 & 1))
  {
    *(v1 + 53) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100057A08(char a1)
{
  v3 = 12337;
  if (*(v1 + 55) != 1)
  {
    v3 = 13873;
  }

  if (*(v1 + 55))
  {
    v4 = v3;
  }

  else
  {
    v4 = 56;
  }

  if (*(v1 + 55))
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 12337;
    }

    else
    {
      v6 = 13873;
    }

    v7 = 0xE200000000000000;
    if (v4 != v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0xE100000000000000;
    if (v4 != 56)
    {
      goto LABEL_18;
    }
  }

  if (v5 == v7)
  {

LABEL_19:
    *(v1 + 55) = a1;
    return result;
  }

LABEL_18:
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_19;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_100057BC4(char a1)
{
  v3 = 0xE500000000000000;
  v4 = 0x4949435341;
  if (*(v1 + 56) != 1)
  {
    v4 = 0x65646F63696E55;
    v3 = 0xE700000000000000;
  }

  if (*(v1 + 56))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*(v1 + 56))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x4949435341;
    }

    else
    {
      v7 = 0x65646F63696E55;
    }

    if (a1 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    if (v5 != 1701736302)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

LABEL_22:
    *(v1 + 56) = a1;
    return result;
  }

LABEL_21:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_100057DA8(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {

    sub_100058B18();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100057ED4(uint64_t a1)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(result + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = result == a1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_10:
      *(v1 + 72) = a1;
    }

    else
    {
      v6 = (result + 32);
      v7 = (a1 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          goto LABEL_11;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_100058044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000055C8(*(v6 + 48), 0);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v6 + 50) == 1)
    {
      swift_getKeyPath();
      sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(a3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed) & 1) == 0)
      {
        sub_100009774(0);
      }
    }

    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = CalculateExpression.format.getter();

    if (v7 == 2)
    {
      swift_getKeyPath();
      sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(a3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeRPNAllowed) & 1) == 0)
      {
        sub_100007648(0);
      }
    }
  }

  return result;
}

uint64_t sub_100058308()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 51);
}

uint64_t sub_1000583B0()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 52);
}

void sub_100058450(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 52);
}

uint64_t sub_100058528()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 53);
}

void sub_1000585C8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 53);
}

uint64_t sub_1000586A0()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 54);
}

void sub_100058740(unsigned __int8 a1)
{
  v2 = *(v1 + 54);
  if (v2 == 11)
  {
    if (a1 != 11)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  else if (v2 != a1)
  {
    goto LABEL_3;
  }

  *(v1 + 54) = a1;
}

uint64_t sub_100058860()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 55);
}

void sub_100058900(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 55);
}

uint64_t sub_1000589A8()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_100058A48(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

void sub_100058B18()
{
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpression.engine.setter();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v9 = v0;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpression.engine.setter();

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000048C8(v1, qword_100160D38);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    type metadata accessor for CalculateEngine(0);
    v6 = String.init<A>(describing:)();
    v8 = sub_100006E5C(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "current engine: %{public}s", v4, 0xCu);
    sub_100003F80(v5);
  }
}

uint64_t sub_100058E44()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

void sub_100058EE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
}

void sub_100058F8C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v165 = type metadata accessor for Locale();
  v171 = *(v165 - 8);
  __chkstk_darwin(v165);
  v166 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityNotification.Announcement();
  v178 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100155208, &unk_10010CF10);
  __chkstk_darwin(v12 - 8);
  v174 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v176 = &v154 - v15;
  v170 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v170);
  v169 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003AE84(&qword_100155210, &qword_100111700);
  __chkstk_darwin(v17 - 8);
  v168 = &v154 - v18;
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v172 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  v167 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AttributedString();
  v175 = *(v23 - 8);
  __chkstk_darwin(v23);
  v173 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v179 = &v154 - v26;
  v27 = [objc_opt_self() defaultCenter];
  if (qword_1001544C0 != -1)
  {
    swift_once();
  }

  [v27 postNotificationName:qword_100160AE8 object:0];

  v180 = a3;
  v181 = v3;
  v177 = v11;
  if (a1 > 0x1Bu)
  {
    if (a1 != 55 && a1 != 47)
    {
      v28 = v9;
      if (a1 == 28)
      {
        swift_getKeyPath();
        *&v187[0] = v181;
        sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *&v187[0] = v181;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        *(v181 + 52) = (*(v181 + 52) & 1) == 0;
        *&v187[0] = v181;
        swift_getKeyPath();
        a3 = v180;
        v4 = v181;
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        goto LABEL_58;
      }

LABEL_10:
      sub_1000D6B08(a1, a2 & 1);
      goto LABEL_58;
    }

    v29 = *(v3 + 16);
    swift_getKeyPath();
    *&v187[0] = v29;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v29 + 41) == 1)
    {
      KeyPath = swift_getKeyPath();
      v164 = v23;
      __chkstk_darwin(KeyPath);
      *&v187[0] = v29;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v23 = v164;
    }

    v28 = v9;
    sub_10001B0D8();

    v31 = CalculateExpression.assumeDegrees.getter();

    v4 = v181;
    sub_100009584((v31 & 1) == 0);
    goto LABEL_57;
  }

  if (a1 != 9)
  {
    v28 = v9;
    if (a1 == 11)
    {
      goto LABEL_58;
    }

    goto LABEL_10;
  }

  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
  *&v187[0] = v3;
  v160 = sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v3 + 50);
  v34 = *(v3 + 16);
  sub_10001B0D8();

  CalculateExpression.repeatOperation()();

  if (v33 == 1)
  {
    v159 = v32;
    sub_1000D6098(1);
    if (a3)
    {

      sub_1000D62AC(v35);
    }

    v162 = sub_10001B0D8();

    v36 = sub_1000DBEAC();
    swift_getKeyPath();
    *&v187[0] = v34;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    v163 = v36;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v34 + 40) == 1)
    {
      v37 = v180;
      if (v180)
      {
        v38 = sub_100072148();
        v155 = CalculateUnit.id.getter();
        v157 = v39;

        v40 = sub_100072328();
LABEL_25:
        v46 = v40;
        v156 = CalculateUnit.id.getter();
        v158 = v47;

LABEL_27:
        v43 = v162;
        goto LABEL_28;
      }
    }

    else
    {
      v37 = v180;
      if (v180)
      {
        v44 = sub_100072328();
        v155 = CalculateUnit.id.getter();
        v157 = v45;

        v40 = sub_100072148();
        goto LABEL_25;
      }
    }

    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    goto LABEL_27;
  }

  sub_10001B0D8();

  v41 = CalculateExpression.result.getter();

  if (v41)
  {
    v42 = [v41 isTrivial];

    if (v42)
    {
      return;
    }
  }

  v159 = v32;
  sub_1000D6098(0);
  swift_getKeyPath();
  *&v187[0] = v34;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v34 + 32);
  swift_getKeyPath();
  *&v187[0] = v34;

  v37 = v180;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v163 = *(v34 + 24);

  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
LABEL_28:
  swift_getKeyPath();
  v48 = v181;
  *&v187[0] = v181;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v48 + 50);
  v162 = v43;
  if (v49 == 1 && v37)
  {

    if (sub_100072508())
    {

      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000048C8(v50, qword_100160D38);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "User attempting to tap on equal while in unit conversion mode for currency and currency conversion being unavailable. Skipping saving current conversion to history.", v53, 2u);
      }

      swift_getKeyPath();
      v54 = v181;
      *&v187[0] = v181;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = v9;
      if ((*(v54 + 53) & 1) == 0)
      {
        v62 = swift_getKeyPath();
        __chkstk_darwin(v62);
        *&v187[0] = v54;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_1000DBEAC();

      CalculateExpression.clearAll()();

      swift_getKeyPath();
      *&v187[0] = v34;
      sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v34 + 41) == 1)
      {
        v63 = swift_getKeyPath();
        v160 = &v154;
        __chkstk_darwin(v63);
        *&v187[0] = v34;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      a3 = v180;

      v4 = v181;
      goto LABEL_58;
    }
  }

  if (CalculateExpression.activeError.getter() || CalculateExpression.activeError.getter())
  {

    v4 = v181;
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000048C8(v55, qword_100160D38);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      LODWORD(v160) = v57;
      v58 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v187[0] = v159;
      *v58 = 136315394;
      v59 = CalculateExpression.debugDescription.getter();
      v61 = sub_100006E5C(v59, v60, v187);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      if (CalculateExpression.activeError.getter() || CalculateExpression.activeError.getter())
      {
        swift_getErrorValue();
        v64 = Error.localizedDescription.getter();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0xE000000000000000;
      }

      v28 = v9;
      v67 = sub_100006E5C(v64, v66, v187);

      *(v58 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v56, v160, "Could not solve expression: %s = %s", v58, 0x16u);
      swift_arrayDestroy();

      v4 = v181;
    }

    else
    {
      v28 = v9;
    }

    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v68 = qword_100160D68;
    v69 = String._bridgeToObjectiveC()();
    [v68 setObject:0 forKey:v69];

    v70 = String._bridgeToObjectiveC()();
    [v68 setObject:0 forKey:v70];

LABEL_57:
    a3 = v180;
    goto LABEL_58;
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  sub_1000048C8(v133, qword_100160D38);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v187[0] = v160;
    *v136 = 136315394;
    LODWORD(v159) = v135;
    v137 = CalculateExpression.debugDescription.getter();
    v139 = sub_100006E5C(v137, v138, v187);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2080;
    v140 = CalculateExpression.debugDescription.getter();
    v142 = sub_100006E5C(v140, v141, v187);

    *(v136 + 14) = v142;
    _os_log_impl(&_mh_execute_header, v134, v159, "Solved expression: %s = %s", v136, 0x16u);
    swift_arrayDestroy();
  }

  v28 = v9;
  v143 = CalculateExpression.expression.getter();
  v160 = v144;
  v145 = CalculateExpression.expression.getter();
  v159 = v146;
  sub_10001B0D8();

  v147 = CalculateExpression.assumeDegrees.getter();

  v148 = v180;
  if (v180)
  {
    swift_getKeyPath();
    *&v187[0] = v148;
    sub_100006530(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v149 = [*(v148 + 32) unitType] == 16;
  }

  else
  {
    v149 = 0;
  }

  *&v182 = v143;
  *(&v182 + 1) = v160;
  *&v183 = v145;
  *(&v183 + 1) = v159;
  v150 = v156;
  v151 = v158;
  *&v184 = v155;
  *(&v184 + 1) = v157;
  *&v185 = v156;
  *(&v185 + 1) = v158;
  LOBYTE(v186) = v147 & 1;
  HIBYTE(v186) = v149;
  v187[2] = v184;
  v187[3] = v185;
  v187[0] = v182;
  v187[1] = v183;
  v188 = v186;

  v4 = v181;
  sub_10005AED8(v187);
  sub_100063218(&v182);
  v152 = CalculateExpression.expression.getter();
  sub_100080C2C(v152, v153, v150, v151);

  a3 = v180;
LABEL_58:
  swift_getKeyPath();
  *&v182 = v4;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 50) != 1)
  {
    goto LABEL_68;
  }

  if (a3)
  {

    if ((sub_100072508() & 1) == 0)
    {
      sub_1000D62AC(a3);

      goto LABEL_68;
    }
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_1000048C8(v71, qword_100160D38);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Unable to recompute unit conversion due to currency conversion being unavailable.", v74, 2u);
  }

LABEL_68:
  if (a1 > 8u)
  {
    if (a1 == 53)
    {
      goto LABEL_78;
    }

    if (a1 != 9)
    {
      return;
    }

    swift_getKeyPath();
    v75 = v181;
    *&v182 = v181;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v76 = *(v75 + 50);
    v161 = v28;
    v164 = v23;
    if (v76 != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v86 = *(v75 + 16);
      swift_getKeyPath();
      *&v182 = v86;
      sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v87 = CalculateExpression.activeError.getter();

      if (v87)
      {
        swift_getErrorValue();
        Error.localizedDescription.getter();
        v88 = objc_allocWithZone(NSAttributedString);
        v89 = String._bridgeToObjectiveC()();

        v90 = [v88 initWithString:v89];

        v91 = v179;
      }

      else
      {
        sub_1000050A0(0, &qword_100155218, NSAttributedString_ptr);
        swift_getKeyPath();
        *&v182 = v86;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v91 = v179;
        CalculateExpression.accessibilityMathEquationDescription.getter();

        v90 = NSAttributedString.init(_:)();
      }

      v93 = objc_allocWithZone(NSMutableAttributedString);
      v94 = v90;
      v95 = String._bridgeToObjectiveC()();
      v96 = [v93 initWithString:v95];

      v97 = objc_allocWithZone(NSString);
      v98 = String._bridgeToObjectiveC()();

      v99 = [v97 initWithString:v98];

      v100 = String._bridgeToObjectiveC()();
      v101 = [v99 rangeOfString:v100];
      v103 = v102;

      [v96 replaceCharactersInRange:v101 withAttributedString:{v103, v94}];
      v104 = v96;
      AttributedString.init(_:)();
      v105 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
      v106 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
      v107 = *(v106 - 8);
      v108 = v176;
      (*(v107 + 104))(v176, v105, v106);
      (*(v107 + 56))(v108, 0, 1, v106);
      sub_100008E68(v108, v174, &qword_100155208, &unk_10010CF10);
      sub_1000631C4();
      AttributedString.subscript.setter();
      sub_1000035CC(v108, &qword_100155208, &unk_10010CF10);
      v109 = v175;
      v110 = v164;
      (*(v175 + 16))(v173, v91, v164);
      v111 = v177;
      AccessibilityNotification.Announcement.init(_:)();
      v112 = v161;
      _AccessibilityNotifications.post()();

      goto LABEL_104;
    }

    v77 = *(v75 + 16);
    swift_getKeyPath();
    *&v182 = v77;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v77 + 40) == 1)
    {
      if (v180)
      {
        v78 = sub_100072148();
LABEL_92:
        v92 = v78;
        goto LABEL_96;
      }
    }

    else if (v180)
    {
      v78 = sub_100072328();
      goto LABEL_92;
    }

    v92 = 0;
LABEL_96:
    swift_getKeyPath();
    *&v182 = v77;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v77 + 40) == 1)
    {
      if (v180)
      {
        v113 = sub_100072328();
LABEL_101:
        v114 = v113;
LABEL_103:
        v115 = v165;
        sub_10001B0D8();

        v117 = sub_10005B934(v116, v92);
        v119 = v118;

        sub_1000DBEAC();

        v121 = sub_10005B934(v120, v114);
        v123 = v122;

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v124._countAndFlagsBits = 0x202C7475706E49;
        v124._object = 0xE700000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v124);
        v125._countAndFlagsBits = v117;
        v125._object = v119;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v125);

        v126._object = 0x8000000100106010;
        v126._countAndFlagsBits = 0xD000000000000015;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v126);
        v127._countAndFlagsBits = v121;
        v127._object = v123;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v127);

        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v128);
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v171 + 56))(v168, 1, 1, v115);
        *&v182 = _swiftEmptyArrayStorage;
        sub_100006530(&qword_100155228, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        sub_10003AE84(&qword_100155230, &qword_10010CF20);
        sub_100004880(&qword_100155238, &qword_100155230, &qword_10010CF20, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v91 = v179;
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        v129 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
        v130 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
        v131 = *(v130 - 8);
        v132 = v176;
        (*(v131 + 104))(v176, v129, v130);
        (*(v131 + 56))(v132, 0, 1, v130);
        sub_100008E68(v132, v174, &qword_100155208, &unk_10010CF10);
        sub_1000631C4();
        AttributedString.subscript.setter();
        sub_1000035CC(v132, &qword_100155208, &unk_10010CF10);
        v109 = v175;
        v110 = v164;
        (*(v175 + 16))(v173, v91, v164);
        v111 = v177;
        AccessibilityNotification.Announcement.init(_:)();
        v112 = v161;
        _AccessibilityNotifications.post()();

LABEL_104:
        (*(v178 + 8))(v111, v112);
        (*(v109 + 8))(v91, v110);
        return;
      }
    }

    else if (v180)
    {
      v113 = sub_100072148();
      goto LABEL_101;
    }

    v114 = 0;
    goto LABEL_103;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return;
    }

LABEL_78:
    sub_10001B0D8();

    CalculateExpression.rich.getter();
    v79 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

    if (v79)
    {
    }

    else
    {
      CalculateExpression.rich.getter();
      v80 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

      if ((v80 & 1) == 0)
      {
        return;
      }
    }
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v81 = qword_100160D98;
  swift_getKeyPath();
  *&v182 = v81;
  sub_100006530(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v81 + 72) & 1) == 0)
  {
    sub_100080D98();
  }

  sub_100080254(48, 0xE100000000000000);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v82 = qword_100160D68;
  v83 = String._bridgeToObjectiveC()();

  v84 = String._bridgeToObjectiveC()();
  [v82 setObject:v83 forKey:v84];

  v85 = String._bridgeToObjectiveC()();
  [v82 setObject:0 forKey:v85];
}

void sub_10005AED8(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  isa = v4[-1].isa;
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenericRecord(0);
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000AA04())
  {
    v58 = v8;
    v59 = v7;
    v60 = isa;
    v61 = v4;
    if (qword_100154370 != -1)
    {
      swift_once();
    }

    v57 = qword_100160878;
    v11 = sub_100045480();
    if (!v11)
    {
LABEL_38:
      swift_getKeyPath();
      *&v66 = v2;
      sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + 48) > 1u)
      {
        if (*(v2 + 48) == 2)
        {
          v56 = 0xE900000000000072;
          v34 = 0x657061506874616DLL;
        }

        else
        {
          v56 = 0xEA00000000007265;
          v34 = 0x6D6D6172676F7270;
        }
      }

      else
      {
        if (*(v2 + 48))
        {
          v55 = 0x6669746E65696373;
          v34 = 0xEA00000000006369;
          v35 = &v68;
LABEL_46:
          *(v35 - 32) = v34;
          v36 = *(v2 + 16);
          swift_getKeyPath();
          *&v66 = v36;
          sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v37 = CalculateExpression.format.getter();

          v38 = v37 == 2;
          v39 = *(a1 + 65);
          swift_getKeyPath();
          *&v66 = v36;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v40 = CalculateExpression.assumeDegrees.getter();

          v41 = *a1;
          v65 = a1[1];
          v66 = v41;
          v42 = a1[2];
          v63 = a1[3];
          v64 = v42;
          sub_100063268(&v66, v62);
          sub_100063268(&v65, v62);
          sub_100008E68(&v64, v62, &qword_100154C40, &qword_10010CFA0);
          sub_100008E68(&v63, v62, &qword_100154C40, &qword_10010CFA0);
          v43 = v59;
          UUID.init()();
          v44 = UUID.uuidString.getter();
          v46 = v45;
          (*(v60 + 1))(v43, v61);
          static Date.now.getter();
          *v10 = v44;
          *(v10 + 1) = v46;
          v47 = v56;
          *(v10 + 2) = v55;
          *(v10 + 3) = v47;
          v10[32] = v38;
          v10[33] = v39;
          v10[34] = v40 & 1;
          v48 = v65;
          *(v10 + 40) = v66;
          *(v10 + 56) = v48;
          v49 = v63;
          *(v10 + 72) = v64;
          *(v10 + 88) = v49;
          sub_100042024(v10);
          sub_10003AE84(&qword_100155248, &qword_10010CFA8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10010BDE0;
          strcpy((inited + 32), "insertElement");
          *(inited + 46) = -4864;
          *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
          v52 = sub_100076F10(inited, v51);
          swift_setDeallocating();
          sub_1000035CC(inited + 32, &qword_100155250, &qword_10010CFB0);
          sub_100062CB8(v52);

          sub_10004B55C(v10);
          return;
        }

        v56 = 0xE500000000000000;
        v34 = 0x6369736162;
      }

      v35 = &v67;
      goto LABEL_46;
    }

    v12 = v11;
    v13 = *a1;
    v14 = *(a1 + 1);
    v15 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    *&v66 = v11;
    swift_getKeyPath();
    v16 = sub_100006530(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    v56 = v15;
    v55 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100006530(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    PersistentModel.getValue<A>(forKey:)();

    if (__PAIR128__(v14, v13) == v66)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v22 = *(a1 + 2);
    v23 = *(a1 + 3);
    *&v66 = v12;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    if (__PAIR128__(v23, v22) == v66)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v26 = *(a1 + 4);
    v25 = *(a1 + 5);
    *&v66 = v12;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10004B3E8();
    PersistentModel.getValue<A>(forKey:)();

    if (!v25)
    {
      if (*(&v66 + 1))
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (*(&v66 + 1))
    {
      if (__PAIR128__(v25, v26) == v66)
      {

LABEL_25:
        v28 = *(a1 + 7);
        v54 = *(a1 + 6);
        *&v66 = v12;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        if (v28)
        {
          if (*(&v66 + 1))
          {
            if (__PAIR128__(v28, v54) == v66)
            {

LABEL_32:
              if (qword_1001546E8 != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for Logger();
              sub_1000048C8(v30, qword_100160D38);
              v31 = Logger.logObject.getter();
              v32 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                *v33 = 0;
                _os_log_impl(&_mh_execute_header, v31, v32, "Duplicate calculation performed, skipping adding existing entry to history list", v33, 2u);
              }

              return;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_37;
        }

        if (!*(&v66 + 1))
        {
          goto LABEL_32;
        }

LABEL_30:

        goto LABEL_38;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_25;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000048C8(v17, qword_100160D38);
  v61 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v61, v18, "History not supported for current app settings", v19, 2u);
  }

  v20 = v61;
}

uint64_t sub_10005B934(int a1, id a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [a2 category];
    if (v3 && (v4 = v3, v5 = [v3 unitType], v4, v5 == 16))
    {
      v6 = &selRef_name;
    }

    else
    {
      v6 = &selRef_displayName;
    }

    v7 = [v2 *v6];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  if (!v9)
  {
    v9 = 0xE000000000000000;
  }

  v11 = v9;
  String.append(_:)(*&v10);

  v12._countAndFlagsBits = 10282;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = CalculateExpression.expression.getter();
  String.append(_:)(v13);

  CalculateExpression.options.getter();
  v14 = evaluateError(_:options:)();

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v15 = sub_1000F6110();
  [v14 setNumberFormatter:v15];

  [v14 setAutoScientificNotation:0];
  v16 = [v14 formattedResult];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v17;
}

double sub_10005BB60()
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_10005BC18@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);

  return result;
}

uint64_t sub_10005BD04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_10005BD6C()
{

  v1 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10005BE30()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 48);
}

uint64_t sub_10005BED0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 50);
}

BOOL sub_10005BF70()
{
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = CalculateExpression.format.getter();

  return v0 == 2;
}

double sub_10005C034(uint64_t a1, uint64_t a2, double result)
{
  if (!a1)
  {
    return v33;
  }

  v4 = v3;
  v5 = a1;
  v37 = a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006530(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  v36 = v5;
  if (!v38)
  {
    goto LABEL_8;
  }

  v37 = v5;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  if (!a2)
  {

LABEL_8:
    swift_getKeyPath();
    v37 = v3;
    sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + 50) == 1)
    {
      sub_100009774(0);
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 16);
  swift_getKeyPath();
  v37 = v6;
  sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 16);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 findUnitWithName:v8];

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();

    v11 = [v7 findUnitWithName:v10];

    if (v11)
    {
      sub_1000726F8(v9);
      sub_1000733A8(v11);
    }

    else
    {
    }
  }

  else
  {
  }

  swift_getKeyPath();
  v37 = v4;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v4 + 50) & 1) == 0)
  {
    sub_100009774(1);
  }

  v5 = v36;
LABEL_15:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v12 = sub_100008E44(_swiftEmptyArrayStorage);
  sub_100080868(v5, v38, v12);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v13 = sub_100008E44(_swiftEmptyArrayStorage);
  sub_100080868(v5, v38, v13);

  v34 = CalculateExpression.expression.getter();
  v15 = v14;
  v16 = CalculateExpression.expression.getter();
  v18 = v17;
  v37 = v5;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v19 = sub_10007BF50();
  sub_100056D2C(v34, v15, v16, v18, v5, (v19 & 1) == 0);

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000048C8(v20, qword_100160D38);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = CalculateExpression.debugDescription.getter();
    v26 = sub_100006E5C(v24, v25, &v37);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = CalculateExpression.debugDescription.getter();
    v29 = sub_100006E5C(v27, v28, &v37);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Restored expression from history: %s = %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v37 = v36;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  sub_100009584(v37);
  swift_getKeyPath();
  v37 = v4;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 50) == 1 && a2)
  {
    swift_getKeyPath();
    v37 = a2;
    sub_100006530(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel, &unk_10010E2F0);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ([*(a2 + 32) unitType] == 16)
    {
      sub_1000D62AC(a2);
    }
  }

  sub_10003AE84(&qword_100155248, &qword_10010CFA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BDE0;
  *(inited + 32) = 0x656D656C45706174;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v32 = sub_100076F10(inited, v31);
  swift_setDeallocating();
  sub_1000035CC(inited + 32, &qword_100155250, &qword_10010CFB0);
  sub_100062CB8(v32);

  return v33;
}

void sub_10005CA30()
{
  v1 = *(v0 + 16);
  sub_10001B0D8();

  v2 = CalculateExpression.activeError.getter();

  if (v2)
  {

    v31 = 0;
    v3 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = CalculateExpression.expression.getter();
    v3 = v4;
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + 50) & 1) != 0 || (swift_getKeyPath(), sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v1 + 41) == 1))
  {
    swift_getKeyPath();
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = CalculateExpression.expression.getter();
    v6 = v5;
  }

  else
  {
    v30 = 0;
    v6 = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D68;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [v7 stringForKey:v13];

  if (v14)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v29 = 0;
    v16 = 0;
  }

  if (v12)
  {
    if (!v3)
    {

      v18 = String._bridgeToObjectiveC()();
      [v7 setValue:0 forKey:v18];

      goto LABEL_24;
    }

    if (v10 == v31 && v12 == v3)
    {

LABEL_24:
      v17 = v6;
      goto LABEL_28;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v6;
    if (v19)
    {

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v17 = v6;
  if (v3)
  {
LABEL_27:
    sub_100080254(v31, v3);

    v20 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [v7 setValue:v20 forKey:v21];
  }

LABEL_28:
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    v22 = v30;
LABEL_38:
    sub_100080254(v22, v17);

    v25 = String._bridgeToObjectiveC()();

    v26 = String._bridgeToObjectiveC()();
    [v7 setValue:v25 forKey:v26];

    goto LABEL_39;
  }

  if (!v17)
  {

    v23 = String._bridgeToObjectiveC()();
    [v7 setValue:0 forKey:v23];

    goto LABEL_39;
  }

  v22 = v30;
  if (v29 != v30 || v16 != v17)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {

      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_39:
  sub_10001B0D8();

  CalculateExpression.assumeDegrees.getter();

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v28 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKey:v28];
}

void sub_10005D098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v264 = a2;
  v275 = type metadata accessor for CalculateExpression.TokenType();
  v5 = *(v275 - 8);
  __chkstk_darwin(v275);
  v274 = &v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v273 = &v252 - v8;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v268 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for CalculateExpression.Base();
  v265 = *(v266 - 8);
  __chkstk_darwin(v266);
  v267 = &v252 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003AE84(&qword_100155258, &qword_10010D100);
  v270 = *(v12 - 1);
  v271 = v12;
  __chkstk_darwin(v12);
  v269 = &v252 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v276 = (&v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v252 - v18;
  v20 = sub_10003AE84(&qword_100155260, &unk_10010D108);
  __chkstk_darwin(v20 - 8);
  v22 = &v252 - v21;
  v23 = type metadata accessor for URLComponents();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v252 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v27 = &off_100154000;
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v272 = v3;
    v263 = v24;
    v29 = *(v24 + 32);
    v262 = v23;
    v29(v26, v22, v23);
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = sub_1000048C8(v30, qword_100160D38);
    (*(v15 + 16))(v19, v277, v14);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v260 = v5;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v261 = v31;
      v36 = v35;
      v37 = swift_slowAlloc();
      *&v280 = v37;
      *v36 = 136380675;
      sub_100006530(&qword_100155268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v26;
      v41 = v40;
      (*(v15 + 8))(v19, v14);
      v42 = sub_100006E5C(v38, v41, &v280);
      v26 = v39;
      v27 = &off_100154000;

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Restoring calculator from url: %{private}s", v36, 0xCu);
      sub_100003F80(v37);

      v31 = v261;
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v43 = URLComponents.queryItems.getter();
    v3 = v272;
    v28 = v276;
    if (v43)
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v259 = v26;
        v48 = v47;
        *&v280 = v47;
        *v46 = 136380675;
        type metadata accessor for URLQueryItem();
        v49 = Array.description.getter();
        v51 = v50;

        v52 = v49;
        v3 = v272;
        v53 = sub_100006E5C(v52, v51, &v280);
        v28 = v276;

        *(v46 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "query: %{private}s", v46, 0xCu);
        sub_100003F80(v48);

        (*(v263 + 8))(v259, v262);
        goto LABEL_17;
      }

LABEL_16:
      (*(v263 + 8))(v26, v262);
      goto LABEL_17;
    }

    v54 = URLComponents.host.getter();
    if (!v55)
    {
      goto LABEL_16;
    }

    v261 = v31;
    v56 = v54;
    v282 = v54;
    v283 = v55;
    v57 = v55;
    swift_getKeyPath();
    v58 = OBJC_IVAR____TtC10Calculator19CalculatorViewModel___observationRegistrar;
    *&v280 = v3;
    v277 = sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[48] <= 1u && !v3[48])
    {
      goto LABEL_29;
    }

    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    *&v280 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[48] <= 1u && v3[48])
    {
LABEL_29:
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        sub_1000560A8(0);
      }
    }

LABEL_30:
    v259 = v26;
    swift_getKeyPath();
    *&v280 = v3;
    v276 = v58;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3[50] == 1)
    {
      sub_100009774(0);
    }

    v72 = *(v3 + 2);
    swift_getKeyPath();
    *&v280 = v72;
    sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v73 = CalculateExpression.format.getter();

    if (v73 == 2)
    {
      sub_100007648(0);
    }

    v74 = v56;
    *&v280 = v56;
    *(&v280 + 1) = v57;

    v75 = v269;
    Regex.init(_regexString:version:)();
    sub_100063408();
    sub_100004880(&qword_100155278, &qword_100155258, &qword_10010D100, &protocol conformance descriptor for Regex<A>);
    v76 = v271;
    v77 = BidirectionalCollection<>.contains<A>(_:)();
    (v270[1].isa)(v75, v76);

    if (v77)
    {
      *&v280 = v74;
      *(&v280 + 1) = v57;
      *&v279[0] = 808556483;
      *(&v279[0] + 1) = 0xA400000000000000;
      v278[0] = 101;
      v278[1] = 0xE100000000000000;
      sub_10006345C();
      *&v280 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      *(&v280 + 1) = v78;
      v74 = StringProtocol.decomposedStringWithCompatibilityMapping.getter();
      v80 = v79;

      v282 = v74;
      v283 = v80;
      v57 = v80;
    }

    swift_getKeyPath();
    *&v280 = v72;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v81 = CalculateExpression.options.getter();

    v82 = CalculateKeyConvertTrivial;
    p_name = &stru_100152FF8.name;
    v84 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v85 = sub_1000050A0(0, &qword_100155280, NSNumber_ptr);
    v281 = v85;
    *&v280 = v84;
    sub_100008F60(&v280, v279);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278[0] = v81;
    sub_100076B80(v279, v82, isUniquelyReferenced_nonNull_native);
    v87 = v278[0];
    v88 = CalculateKeyAllowStaleCurrencyConversions;
    v89 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v281 = v85;
    *&v280 = v89;
    sub_100008F60(&v280, v279);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v278[0] = v87;
    sub_100076B80(v279, v88, v90);
    v91 = v278[0];
    v92 = CalculateKeyAllowEqualSign;
    v93 = [objc_allocWithZone(NSNumber) initWithBool:1];
    v281 = v85;
    *&v280 = v93;
    sub_100008F60(&v280, v279);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v278[0] = v91;
    sub_100076B80(v279, v92, v94);
    v95 = v278[0];

    v96 = evaluate(_:options:)();

    if (!v96)
    {
      goto LABEL_50;
    }

    v258 = v95;
    v97 = v96;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Url query is solveable, checking if any units are declared", v100, 2u);
    }

    v101 = [v97 inputValueAndUnit];
    v102 = &stru_100152FF8.name;
    v256 = v97;
    if (!v101)
    {
      goto LABEL_58;
    }

    v103 = v101;
    v104 = [v101 terms];

    sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
    v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v105 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_42;
      }
    }

    else if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      if ((v105 & 0xC000000000000001) != 0)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v106 = *(v105 + 32);
      }

      v107 = v106;

      v108 = [v107 units];

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v105 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_47:
          if ((v105 & 0xC000000000000001) == 0)
          {
            if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_50:

              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                *&v280 = v112;
                *v111 = 136380675;

                v113 = sub_100006E5C(v74, v57, &v280);

                *(v111 + 4) = v113;
                _os_log_impl(&_mh_execute_header, v109, v110, "Url query: %{private}s results in an error, clearing input", v111, 0xCu);
                sub_100003F80(v112);
              }

              v114 = v263;
              v115 = v262;
              v116 = v259;
              v117.n128_f64[0] = sub_1000D7638();
              (*(v114 + 8))(v116, v115, v117);
              goto LABEL_173;
            }

            goto LABEL_67;
          }

LABEL_96:
          v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_68;
        }
      }

      else if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    v104 = [v97 terms];
    sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
    v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v105 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_99;
      }
    }

    else if (!*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    if ((v105 & 0xC000000000000001) != 0)
    {
      v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
      v104 = v118;

      v119 = [v104 units];

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v105 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v105 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_65;
        }
      }

      else if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_65:
        if ((v105 & 0xC000000000000001) != 0)
        {
          goto LABEL_96;
        }

        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_67:
          v120 = *(v105 + 32);
LABEL_68:
          v121 = v120;
          v255 = v74;
          v257 = v57;

          v122 = CalculateUnit.id.getter();
          v124 = v123;

          if (qword_1001546A0 != -1)
          {
            swift_once();
          }

          v74 = qword_100160D00;
          swift_getKeyPath();
          *&v280 = v74;
          v97 = sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v125 = *(v74 + 16);
          v126 = String._bridgeToObjectiveC()();
          v127 = [v125 findUnitWithName:v126];

          if (v127)
          {

            v253 = v127;
            p_name = v127;
            v128 = v256;
            v129 = [v256 inputValueAndUnit];
            v271 = p_name;
            if (!v129)
            {

              v254 = 0;
              v97 = v272;
              v57 = v257;
              v74 = v255;
              goto LABEL_119;
            }

            v105 = v129;
            v102 = &stru_100152FF8.name;
            v130 = [v128 terms];
            sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
            v104 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(v104 >> 62))
            {
              if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_110;
              }

              goto LABEL_74;
            }

LABEL_106:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_110;
            }

LABEL_74:
            if ((v104 & 0xC000000000000001) != 0)
            {
              v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_77:
              v132 = v131;

              v133 = [v132 units];

              sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
              v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v134 >> 62)
              {
                v102 = &stru_100152FF8.name;
                if (_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v102 = (&stru_100152FF8 + 8);
                if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_79:
                  if ((v134 & 0xC000000000000001) != 0)
                  {
                    goto LABEL_182;
                  }

                  if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  for (i = *(v134 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
                  {
                    v136 = i;

                    v137 = CalculateUnit.id.getter();
                    v139 = v138;

                    swift_getKeyPath();
                    *&v280 = v74;
                    ObservationRegistrar.access<A, B>(_:keyPath:)();

                    v140 = *(v74 + 16);
                    v141 = String._bridgeToObjectiveC()();
                    v142 = [v140 findUnitWithName:v141];

                    v254 = v142;
                    if (v142)
                    {
                    }

                    else
                    {
                      v149 = p_name;

                      v150 = Logger.logObject.getter();
                      v151 = static os_log_type_t.error.getter();

                      v270 = v150;
                      if (os_log_type_enabled(v150, v151))
                      {
                        v152 = swift_slowAlloc();
                        v153 = v137;
                        v154 = swift_slowAlloc();
                        v155 = swift_slowAlloc();
                        *&v280 = v155;
                        *v152 = 136315394;
                        v156 = sub_100006E5C(v153, v139, &v280);

                        *(v152 + 4) = v156;
                        *(v152 + 12) = 2112;
                        *(v152 + 14) = v149;
                        *v154 = v253;
                        v157 = v270;
                        _os_log_impl(&_mh_execute_header, v270, v151, "Unable to resolve and set unit conversion result unit to: %s, falling back to %@ preferred to unit", v152, 0x16u);
                        sub_1000035CC(v154, &qword_100154BE8, &qword_10010C010);

                        sub_100003F80(v155);
                      }

                      else
                      {
                      }

                      v254 = 0;
                    }

                    v57 = v257;
                    v102 = (&stru_100152FF8 + 8);
LABEL_111:
                    p_name = v276;
                    v168 = [v105 v102[118]];
                    v169 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    v97 = v272;
                    v74 = v255;
                    if (!(v169 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10)))
                    {
                      break;
                    }

                    if ((v169 & 0xC000000000000001) != 0)
                    {
                      goto LABEL_180;
                    }

                    if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v171 = *(v169 + 32);
                      goto LABEL_117;
                    }

                    __break(1u);
LABEL_182:
                    ;
                  }

                  v282 = v74;
                  v283 = v57;
                  goto LABEL_119;
                }
              }

LABEL_110:

              v254 = 0;
              v57 = v257;
              goto LABEL_111;
            }

            if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v131 = *(v104 + 32);
              goto LABEL_77;
            }

            __break(1u);
LABEL_180:
            v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_117:
            v172 = v171;

            v173 = [v172 formattedValue];

            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v175 = v174;

            v282 = v74;
            v283 = v175;
            v57 = v175;
LABEL_119:
            swift_getKeyPath();
            *&v280 = v97;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v176 = *(v97 + 5);
            swift_getKeyPath();
            *&v280 = v176;
            sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
            v177 = v176;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v178 = v177[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed];

            if ((v178 & 1) == 0)
            {

              v190 = Logger.logObject.getter();
              v191 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v190, v191))
              {
                v192 = swift_slowAlloc();
                *v192 = 0;
                _os_log_impl(&_mh_execute_header, v190, v191, "Unable to open url containing unit(s) in unit conversion mode due to feature being managed by a profile", v192, 2u);
              }

              v193 = v254;
              if (*(v97 + 49) != 7)
              {
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                *&v280 = v97;
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }

              v195 = [objc_opt_self() defaultCenter];
              v196 = v263;
              v197 = v262;
              if (qword_1001544F0 == -1)
              {
                goto LABEL_139;
              }

              goto LABEL_178;
            }

            v164 = v260;
            v165 = v267;
            v166 = v266;
            v167 = v265;
            v163 = v254;
LABEL_121:
            (*(v167 + 104))(v165, enum case for CalculateExpression.Base.base10(_:), v166);

            UUID.init()();
            type metadata accessor for CalculateExpression();
            swift_allocObject();
            v267 = CalculateExpression.init(_:options:base:id:)();
            CalculateExpression.plain.getter();
            v179 = dispatch thunk of CalculateExpression.PlainExpression.tokens.getter();

            v257 = v57;
            v255 = v74;
            v254 = v163;
            if (v179 >> 62)
            {
              goto LABEL_141;
            }

            v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v180)
            {
              while (1)
              {
                v181 = 0;
                v276 = (v179 & 0xC000000000000001);
                v271 = (v179 & 0xFFFFFFFFFFFFFF8);
                LODWORD(v270) = enum case for CalculateExpression.TokenType.unit(_:);
                v269 = v164 + 104;
                v268 = v164 + 8;
                v183 = v274;
                v182 = v275;
                v184 = (v164 + 8);
                while (v276)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v185 = v181 + 1;
                  if (__OFADD__(v181, 1))
                  {
LABEL_132:
                    __break(1u);
LABEL_133:

                    CalculateExpression.inlineEvaluate()();
                    v187 = CalculateExpression.expression.getter();
                    v189 = v188;
                    swift_beginAccess();
                    v282 = v187;
                    v283 = v189;
                    goto LABEL_143;
                  }

LABEL_127:
                  v186 = v273;
                  CalculateExpression.Token.type.getter();
                  (*v269)(v183, v270, v182);
                  LODWORD(v277) = static CalculateExpression.TokenType.== infix(_:_:)();
                  v164 = *v184;
                  (*v184)(v183, v182);
                  v164(v186, v182);

                  if (v277)
                  {
                    goto LABEL_133;
                  }

                  ++v181;
                  if (v185 == v180)
                  {
                    goto LABEL_142;
                  }
                }

                if (v181 < v271[2])
                {
                  break;
                }

                __break(1u);
LABEL_141:
                v180 = _CocoaArrayWrapper.endIndex.getter();
                if (!v180)
                {
                  goto LABEL_142;
                }
              }

              v185 = v181 + 1;
              if (__OFADD__(v181, 1))
              {
                goto LABEL_132;
              }

              goto LABEL_127;
            }

LABEL_142:

            v189 = v257;
            v187 = v255;
LABEL_143:

            v198 = v254;
            v199 = v253;
            if (!v253)
            {
              v208 = Logger.logObject.getter();
              v209 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v208, v209))
              {
                v210 = swift_slowAlloc();
                v211 = swift_slowAlloc();
                *&v279[0] = v211;
                *v210 = 136380675;

                v212 = sub_100006E5C(v187, v189, v279);

                *(v210 + 4) = v212;
                _os_log_impl(&_mh_execute_header, v208, v209, "Re-evaluating the original input: %{private}s from url", v210, 0xCu);
                sub_100003F80(v211);
              }

              v213 = v263;
              v214 = v262;

              sub_100056D2C(v187, v189, 0, 0, 0, 0);

              sub_100058F8C(9, 0, 0);

              (*(v213 + 8))(v259, v214, v215);
              goto LABEL_173;
            }

            if (v254)
            {
              v200 = v254;
              v201 = v199;
              v202 = [v201 category];
              if (v202)
              {
                v203 = v202;
                v204 = CalculateUnit.id.getter();
                v206 = v205;
                if (v204 == CalculateUnit.id.getter() && v206 == v207)
                {
                }

                else
                {
                  v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v216 & 1) == 0)
                  {
                    v232 = v200;
                    v233 = v201;
                    v234 = v203;
                    v235 = Logger.logObject.getter();
                    v236 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v235, v236))
                    {
                      v237 = swift_slowAlloc();
                      v255 = v187;
                      v238 = v237;
                      v277 = swift_slowAlloc();
                      v278[0] = v277;
                      *v238 = 136315907;
                      *&v279[0] = CalculateUnitCategory.id.getter();
                      *(&v279[0] + 1) = v239;
                      sub_10006345C();
                      v240 = StringProtocol.capitalized.getter();
                      v257 = v189;
                      v242 = v241;

                      v243 = sub_100006E5C(v240, v242, v278);

                      *(v238 + 4) = v243;
                      *(v238 + 12) = 2080;
                      v244 = CalculateUnit.id.getter();
                      v246 = sub_100006E5C(v244, v245, v278);

                      *(v238 + 14) = v246;
                      *(v238 + 22) = 2080;
                      v247 = CalculateUnit.id.getter();
                      v249 = sub_100006E5C(v247, v248, v278);

                      *(v238 + 24) = v249;
                      v189 = v257;
                      *(v238 + 32) = 2081;

                      v250 = sub_100006E5C(v255, v189, v278);

                      *(v238 + 34) = v250;
                      _os_log_impl(&_mh_execute_header, v235, v236, "%s conversion resolved from url. Setting input unit to %s, result unit to %s, and re-evaluating the original input: %{private}s in unit conversion mode", v238, 0x2Au);
                      swift_arrayDestroy();

                      v187 = v255;
                    }

                    v251 = v264;
                    sub_1000726F8(v233);
                    sub_1000733A8(v232);

                    sub_100056D2C(v187, v189, 0, 0, 0, 0);

                    sub_100009774(1);
                    sub_100058F8C(9, 0, v251);

                    goto LABEL_172;
                  }
                }

                v199 = v253;
              }

              else
              {
              }
            }

            v195 = v199;
            v217 = Logger.logObject.getter();
            v193 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v217, v193))
            {
              v218 = swift_slowAlloc();
              *&v279[0] = swift_slowAlloc();
              *v218 = 136315395;
              v219 = CalculateUnit.id.getter();
              v221 = v187;
              v222 = sub_100006E5C(v219, v220, v279);

              *(v218 + 4) = v222;
              v187 = v221;
              *(v218 + 12) = 2081;

              v223 = sub_100006E5C(v221, v189, v279);

              *(v218 + 14) = v223;
              _os_log_impl(&_mh_execute_header, v217, v193, "Calculation containing unit(s) resolved from url. Setting input unit to first unit specified: %s and re-evaluating the original input: %{private}s without saving in unit conversion mode", v218, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000726F8(v195);
            v197 = v256;
            v224 = [v197 convertedTo:v195];
            if (!v224)
            {

              goto LABEL_171;
            }

            v225 = v224;
            v226 = [v224 terms];

            sub_1000050A0(0, &qword_100155288, CalculateTerm_ptr);
            v196 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v196 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_161;
              }
            }

            else if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_161:
              if ((v196 & 0xC000000000000001) != 0)
              {
                v227 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                goto LABEL_164;
              }

              if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v227 = *(v196 + 32);
LABEL_164:
                v228 = v227;

                v229 = [v228 formattedValue];

                v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v231 = v230;

                v189 = v231;
LABEL_171:

                sub_100056D2C(v187, v189, 0, 0, 0, 0);

                sub_100009774(1);

LABEL_172:
                (*(v263 + 8))(v259, v262);
                goto LABEL_173;
              }

              __break(1u);
LABEL_178:
              swift_once();
LABEL_139:
              [v195 postNotificationName:qword_100160B18 object:0];

              (*(v196 + 8))(v259, v197);
LABEL_173:

              return;
            }

            goto LABEL_171;
          }

          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.error.getter();

          v145 = os_log_type_enabled(v143, v144);
          v57 = v257;
          v74 = v255;
          if (v145)
          {
            v146 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            *&v280 = v147;
            *v146 = 136315138;
            v148 = sub_100006E5C(v122, v124, &v280);

            *(v146 + 4) = v148;
            _os_log_impl(&_mh_execute_header, v143, v144, "Unable to resolve and set unit conversion input unit to: %s", v146, 0xCu);
            sub_100003F80(v147);
          }

          else
          {
          }

LABEL_102:
          v163 = 0;
          v253 = 0;
          v164 = v260;
          v165 = v267;
          v166 = v266;
          v167 = v265;
          goto LABEL_121;
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_99:

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        *&v280 = v161;
        *v160 = 136380675;

        v162 = sub_100006E5C(v74, v57, &v280);

        *(v160 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v158, v159, "No unit(s) defined in url query: %{private}s", v160, 0xCu);
        sub_100003F80(v161);
      }

      goto LABEL_102;
    }

    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v118 = *(v105 + 32);
      goto LABEL_63;
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_1000035CC(v22, &qword_100155260, &unk_10010D108);
  v28 = v276;
LABEL_17:
  if (v27[221] != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_1000048C8(v59, qword_100160D38);
  (*(v15 + 16))(v28, v277, v14);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v280 = v63;
    *v62 = 136380675;
    sub_100006530(&qword_100155268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    (*(v15 + 8))(v28, v14);
    v67 = sub_100006E5C(v64, v66, &v280);

    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "Unable to resolve components from url: %{private}s clearing input", v62, 0xCu);
    sub_100003F80(v63);
  }

  else
  {

    (*(v15 + 8))(v28, v14);
  }

  v68 = *(v3 + 2);
  sub_10001B0D8();

  CalculateExpression.clearAll()();

  sub_1000DBEAC();

  CalculateExpression.clearAll()();

  swift_getKeyPath();
  *&v280 = v68;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v68 + 41) == 1)
  {
    v69 = swift_getKeyPath();
    __chkstk_darwin(v69);
    *&v280 = v68;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10005FA64(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 72) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000AC2B0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 72) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000AC2B0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = a1;
  *(v2 + 72) = v4;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

double sub_10005FC0C(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v1 + 72);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + v6) != a1)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000A8754(v6);
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_10005FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v8;
  *(v5 + 64) = v7;

  return _swift_task_switch(sub_10005FEB4, v8, v7);
}

uint64_t sub_10005FEB4()
{
  v1 = static Duration.zero.getter();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10005FF98;

  return sub_100060F34(70000000000000000, 0, v1, v3, 0);
}

uint64_t sub_10005FF98()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1000601B4;
  }

  else
  {
    v8 = sub_100060130;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100060130()
{
  v1 = *(v0 + 88);

  sub_10005FC0C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000601B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100008E68(a3, v22 - v9, &qword_100154BB0, &qword_10010FAE0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000035CC(v10, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1000604CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000546A4();
  if (v8 != 94)
  {
    v9 = v8;
    sub_10005FA64(v8);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v3;
    *(v12 + 40) = v9;
    sub_100060220(0, 0, v7, &unk_10010CED8, v12);
  }

  type metadata accessor for CalculateExpression.Operation();
  static CalculateExpression.Operation.equals.getter();
  v13 = static CalculateExpression.Operation.== infix(_:_:)();

  if (v13)
  {
    sub_100058F8C(9, 0, a2);
    return;
  }

  v14 = *(v3 + 16);
  swift_getKeyPath();
  v27 = v14;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = CalculateExpression.format.getter();

  if (v15 != 2)
  {
    v16 = [objc_opt_self() defaultCenter];
    if (qword_1001544C0 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:qword_100160AE8 object:0];

    swift_getKeyPath();
    v27 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v14 + 41) == 1)
    {
      swift_getKeyPath();
      v27 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v14 + 41) == 1)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v26 - 2) = v14;
        *(&v26 - 8) = 0;
        v27 = v14;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    if (a2)
    {

      sub_1000D62AC(v18);
    }

    static CalculateExpression.Operation.delete.getter();
    v19 = static CalculateExpression.Operation.== infix(_:_:)();

    if (v19)
    {
      sub_10001B0D8();

      CalculateExpression.rich.getter();
      v20 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

      if (v20)
      {
      }

      else
      {
        CalculateExpression.rich.getter();
        v21 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

        if ((v21 & 1) == 0)
        {
          return;
        }
      }

      sub_100080254(48, 0xE100000000000000);
      if (qword_1001546F8 != -1)
      {
        swift_once();
      }

      v22 = qword_100160D68;
      v23 = String._bridgeToObjectiveC()();

      v24 = String._bridgeToObjectiveC()();
      [v22 setObject:v23 forKey:v24];

      v25 = String._bridgeToObjectiveC()();
      [v22 setObject:0 forKey:v25];
    }
  }
}

void *sub_100060A20()
{
  v1 = v0;
  v7 = &_swiftEmptySetSingleton;
  v2 = *(v0 + 16);
  sub_10001B0D8();

  v3 = CalculateExpression.activeOperation.getter();

  if (v3)
  {
    v4 = sub_1000546A4();

    if (v4 != 94)
    {
      sub_10004FA18(&v6, v4);
    }
  }

  swift_getKeyPath();
  v6 = v2;
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 48))
  {
    sub_10004FA18(&v6, 27);
  }

  swift_getKeyPath();
  v6 = v1;
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 52) == 1)
  {
    sub_10004FA18(&v6, 28);
  }

  return v7;
}

Class sub_100060BCC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_100060CB8(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_100060D94(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
}

void sub_100060E64(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006530(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_100060F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100061034, 0, 0);
}

uint64_t sub_100061034()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100006530(&qword_1001551F8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100006530(&qword_100155200, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000611C4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000611C4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100061380, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100061380()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000613EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorViewModel(0);
  v28[3] = v4;
  v28[4] = &off_10014A310;
  v28[0] = a1;
  sub_100062B18(v28, v27);
  v5 = sub_100062B7C(v27, v27[3]);
  v6 = __chkstk_darwin(v5);
  v8 = (&v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v25 = v4;
  v26 = &off_10014A310;
  v24[0] = v10;
  sub_100017F20(v24, v4);

  v11 = sub_10005BE30();
  sub_100017F20(v24, v25);
  LOBYTE(v8) = sub_10005BED0();
  sub_100017F20(v24, v25);
  v12 = sub_10005BF70();
  sub_100003F80(v24);
  sub_100003F80(v27);
  if (v8)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 26) = v12;
  *(a2 + 24) = v13 & 0xFF00 | v11;
  if (qword_1001546F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000048C8(v14, qword_100160D50);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_10;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v27[0] = v18;
  *v17 = 136315138;
  v19 = *(a2 + 24) | (*(a2 + 26) << 16);

  if ((v19 & 0xFF00) != 0x200)
  {
    v20 = sub_1000F4214(v19 & 0x101FF);
    v22 = sub_100006E5C(v20, v21, v27);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "updated snapshot to: %s", v17, 0xCu);
    sub_100003F80(v18);

LABEL_10:

    sub_100003F80(v28);
    return;
  }

  __break(1u);
}

uint64_t sub_1000616E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for CalculatorViewModel(0);
  v32 = v6;
  v33 = &off_10014A310;
  v31[0] = a2;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Currently running in debug.  No events will be posted.", v10, 2u);
    }
  }

  else if ((*(a3 + 27) & 1) != 0 && (v11 = *(a3 + 24), v12 = v11 | (*(a3 + 26) << 16), (v11 & 0xFF00) != 0x200))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = (v14 + 16);

    v17 = sub_100055B48(v16, v12, a1);

    if (v17)
    {
      *v15 = v17;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000048C8(v18, qword_100160D50);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100006E5C(0xD000000000000020, 0x8000000100105EA0, aBlock);
      *(v21 + 12) = 2080;
      swift_beginAccess();
      if (*v15)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v22 = Dictionary.description.getter();
        v24 = v23;
      }

      else
      {

        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_100006E5C(v22, v24, aBlock);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Posting event (%s) to CoreAnalytics with payload: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v26 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100062B10;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A418;
    v27 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v27);

    sub_100070EB8();
    v28 = sub_100017F20(v31, v32);
    sub_1000613EC(*v28, a3);
  }

  else
  {
    v13 = sub_100017F20(v31, v6);
    sub_1000613EC(*v13, a3);
  }

  sub_100062ABC(&v34);
  return sub_100003F80(v31);
}

uint64_t sub_100061B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v6 = type metadata accessor for CalculatorViewModel(0);
  v30 = v6;
  v31 = &off_10014A310;
  v29[0] = a2;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Currently running in debug.  No events will be posted.", v10, 2u);
    }
  }

  else if ((*(a3 + 27) & 1) != 0 && *(a3 + 25) << 8 != 512)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = (v12 + 16);

    v15 = sub_100055E20(v14, a1);

    if (v15)
    {
      *v13 = v15;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000048C8(v16, qword_100160D50);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_100006E5C(0xD00000000000001DLL, 0x8000000100106050, aBlock);
      *(v19 + 12) = 2080;
      swift_beginAccess();
      if (*v13)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v20 = Dictionary.description.getter();
        v22 = v21;
      }

      else
      {

        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = sub_100006E5C(v20, v22, aBlock);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Posting event (%s) to CoreAnalytics with payload: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100063510;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A548;
    v25 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v25);

    sub_100070EB8();
    v26 = sub_100017F20(v29, v30);
    sub_1000613EC(*v26, a3);
  }

  else
  {
    v11 = sub_100017F20(v29, v6);
    sub_1000613EC(*v11, a3);
  }

  sub_1000633A4(&v32);
  return sub_100003F80(v29);
}

uint64_t sub_100062034(unint64_t a1, uint64_t a2)
{
  v25 = a1;

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000048C8(v4, qword_100160D50);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Currently running in debug.  No events will be posted.", v7, 2u);
    }
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = (v8 + 16);
    v10 = *(a2 + 24) | (*(a2 + 26) << 16);

    v12 = sub_100055B48(v11, v10, a1);

    if (v12)
    {
      *v9 = v12;
    }

    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000048C8(v13, qword_100160D50);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_100006E5C(0xD000000000000020, 0x8000000100105EA0, aBlock);
      *(v16 + 12) = 2080;
      swift_beginAccess();
      if (*v9)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v17 = Dictionary.description.getter();
        v19 = v18;
      }

      else
      {

        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_100006E5C(v17, v19, aBlock);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Posting event (%s) to CoreAnalytics with payload: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v21 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100062B10;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A440;
    v22 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v22);
  }

  return sub_100062ABC(&v25);
}

void sub_10006245C()
{
  if (qword_1001546F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0 = qword_100160D68;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 objectForKey:v1];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17[0] = v15;
    v17[1] = v16;
    if (*(&v16 + 1))
    {
      break;
    }

    sub_1000035CC(v17, &qword_1001551B8, &qword_10010E3E0);
LABEL_9:
    if (qword_1001546A0 != -1)
    {
      swift_once();
    }

    v3 = qword_100160D00;
    swift_getKeyPath();
    *&v17[0] = v3;
    sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = [*(v3 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (!v6)
      {
LABEL_31:

        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 unitType] == 16)
      {

        CalculateUnitCategory.id.getter();

        goto LABEL_23;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  if (qword_1001546A0 != -1)
  {
    swift_once();
  }

  v11 = qword_100160D00;
  swift_getKeyPath();
  *&v17[0] = v11;
  sub_100006530(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider, &unk_1001122F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 findCategoryWithName:v13];

  if (v14)
  {

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_100062844()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035CC(v7, &qword_1001551B8, &qword_10010E3E0);
    return 0;
  }
}

uint64_t sub_100062970()
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100160D68;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035CC(v7, &qword_1001551B8, &qword_10010E3E0);
    return 0;
  }
}

uint64_t sub_100062B18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100062B7C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_100062BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_100062CB8(unint64_t a1)
{

  if (sub_100071234())
  {
    if (qword_1001546F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000048C8(v2, qword_100160D50);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Currently running in debug.  No events will be posted.", v4, 2u);
    }
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v7 = (v5 + 16);
    v8 = a1;
    if (!a1)
    {
      v8 = sub_100076F10(_swiftEmptyArrayStorage, v6);
    }

    *v7 = v8;
    v9 = qword_1001546F0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000048C8(v10, qword_100160D50);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100006E5C(0xD00000000000001CLL, 0x8000000100106030, aBlock);
      *(v13 + 12) = 2080;
      swift_beginAccess();
      if (*v7)
      {
        sub_1000050A0(0, &qword_1001551C8, NSObject_ptr);

        v14 = Dictionary.description.getter();
        v16 = v15;
      }

      else
      {

        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = sub_100006E5C(v14, v16, aBlock);

      *(v13 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Posting event (%s) to CoreAnalytics with payload: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v18 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100063510;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060BCC;
    aBlock[3] = &unk_10014A490;
    v19 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);
  }
}

uint64_t sub_1000630E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_10005FDBC(a1, v4, v5, v6, v7);
}

unint64_t sub_1000631C4()
{
  result = qword_100155220;
  if (!qword_100155220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155220);
  }

  return result;
}

__n128 sub_1000632C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000632E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_100063330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100063408()
{
  result = qword_100155270;
  if (!qword_100155270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155270);
  }

  return result;
}

unint64_t sub_10006345C()
{
  result = qword_100155298;
  if (!qword_100155298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155298);
  }

  return result;
}

uint64_t type metadata accessor for InputAccessoryView(uint64_t a1)
{
  result = qword_100155300;
  if (!qword_100155300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000635E0(uint64_t a1)
{
  sub_100002B70(319);
  if (v1 <= 0x3F)
  {
    sub_1000047DC(319, &qword_100155318, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1000047DC(319, &unk_100155320, &type metadata for Color);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000636E4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PopoverAttachmentAnchor();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for PlainButtonStyle();
  v37 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InputAccessoryView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = v9;
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10003AE84(&qword_100154760, &unk_10010B5B0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v31 - v11;
  v38 = sub_10003AE84(&qword_100154758, &qword_10010B5A8);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v31 - v13;
  v32 = v1;
  sub_100064E6C(v1, v10);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_100064ED0(v10, v15 + v14);
  v45 = v1;
  sub_10003AE84(&qword_100155378, &qword_10010D228);
  sub_100064F9C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v31 = sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0, &protocol conformance descriptor for Button<A>);
  v16 = sub_10006535C(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v17 = v34;
  v18 = v44;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v5, v18);
  (*(v36 + 8))(v12, v17);
  v19 = v32;
  v20 = v32 + *(v7 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v50 = v21;
  v51 = v22;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  sub_100064E6C(v19, v10);
  v23 = swift_allocObject();
  sub_100064ED0(v10, v23 + v14);
  v24 = static Anchor.Source<A>.bounds.getter();
  v25 = v39;
  *v39 = v24;
  v27 = v41;
  v26 = v42;
  (*(v41 + 104))(v25, enum case for PopoverAttachmentAnchor.rect(_:), v42);
  type metadata accessor for UnitConversionPopoverView(0);
  v46 = v17;
  v47 = v44;
  v48 = v31;
  v49 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10006535C(&qword_100154778, type metadata accessor for UnitConversionPopoverView, &unk_1001130F0);
  v28 = v38;
  v29 = v35;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v27 + 8))(v25, v26);
  return (*(v40 + 8))(v29, v28);
}

uint64_t sub_100063CFC(uint64_t a1)
{
  type metadata accessor for InputAccessoryView(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_100063D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_10003AE84(&qword_100155410, &qword_10010D270);
  __chkstk_darwin(v3 - 8);
  v5 = &v80 - v4;
  v84 = sub_10003AE84(&qword_100155418, &qword_10010D278) - 8;
  __chkstk_darwin(v84);
  v7 = &v80 - v6;
  v83 = sub_10003AE84(&qword_100155420, &qword_10010D280) - 8;
  __chkstk_darwin(v83);
  v9 = &v80 - v8;
  v10 = sub_10003AE84(&qword_100155428, &qword_10010D288);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v80 - v12;
  v14 = sub_10003AE84(&qword_100155430, &qword_10010D290);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v82 = &v80 - v16;
  v88 = sub_10003AE84(&qword_100155438, &qword_10010D298) - 8;
  __chkstk_darwin(v88);
  v85 = &v80 - v17;
  v87 = sub_10003AE84(&qword_1001553C0, &qword_10010D248);
  __chkstk_darwin(v87);
  v19 = &v80 - v18;
  v90 = sub_10003AE84(&qword_1001553A8, &qword_10010D240);
  __chkstk_darwin(v90);
  v86 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v89 = &v80 - v22;
  __chkstk_darwin(v23);
  v92 = &v80 - v24;
  v25 = sub_10003AE84(&qword_100155440, &qword_10010D2A0);
  v26 = *(v25 - 8);
  v96 = v25;
  v97 = v26;
  __chkstk_darwin(v25);
  v91 = &v80 - v27;
  v28 = sub_10003AE84(&qword_1001553A0, &qword_10010D238);
  __chkstk_darwin(v28 - 8);
  v93 = &v80 - v29;
  v95 = sub_10003AE84(&qword_100155390, &qword_10010D230) - 8;
  __chkstk_darwin(v95);
  v94 = &v80 - v30;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v31 = sub_10003AE84(&qword_100155448, &qword_10010D2A8);
  sub_100064734(a1, &v5[*(v31 + 44)]);
  v32 = type metadata accessor for InputAccessoryView(0);
  v33 = (a1 + v32[6]);
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v100) = v34;
  v101 = v35;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  if (v99)
  {
    v36 = 0.5;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = v7;
  sub_10000D5B8(v5, v7, &qword_100155410, &qword_10010D270);
  *&v7[*(v84 + 44)] = v36;
  v38 = *(a1 + v32[9]);
  KeyPath = swift_getKeyPath();
  sub_10000D5B8(v37, v9, &qword_100155418, &qword_10010D278);
  v40 = &v9[*(v83 + 44)];
  *v40 = KeyPath;
  v40[1] = v38;
  v41 = swift_getKeyPath();
  sub_10000D5B8(v9, v13, &qword_100155420, &qword_10010D280);
  v42 = &v13[*(v11 + 44)];
  *v42 = v41;
  v42[1] = 0x3FE0000000000000;
  v43 = swift_getKeyPath();
  v44 = v82;
  sub_10000D5B8(v13, v82, &qword_100155428, &qword_10010D288);
  v45 = v44 + *(v15 + 44);
  *v45 = v43;
  *(v45 + 8) = 2;
  v46 = v32[7];
  v81 = a1;
  v47 = (a1 + v46);
  v49 = *v47;
  v48 = v47[1];
  v100 = v49;
  v101 = v48;

  sub_10003AE84(&qword_100155450, &qword_10010D340);
  State.wrappedValue.getter();
  v50 = v99;
  v51 = swift_getKeyPath();
  v100 = v50;
  v52 = AnyShapeStyle.init<A>(_:)();
  v53 = v85;
  sub_10000D5B8(v44, v85, &qword_100155430, &qword_10010D290);
  v54 = (v53 + *(v88 + 44));
  *v54 = v51;
  v54[1] = v52;
  v55 = (a1 + v32[8]);
  v57 = *v55;
  v56 = v55[1];
  sub_10000D5B8(v53, v19, &qword_100155438, &qword_10010D298);
  v58 = &v19[*(v87 + 52)];
  *v58 = v57;
  *(v58 + 1) = v56;
  sub_100004880(&qword_1001553B8, &qword_1001553C0, &qword_10010D248, &protocol conformance descriptor for IDView<A, B>);

  v59 = v86;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v19, &qword_1001553C0, &qword_10010D248);
  v60 = v81;

  v61 = Text.init(_:tableName:bundle:comment:)();
  v63 = v62;
  LOBYTE(v44) = v64;
  v66 = v89;
  v65 = v90;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v61, v63, v44 & 1);

  sub_1000035CC(v59, &qword_1001553A8, &qword_10010D240);
  v67 = (v60 + v32[13]);
  v69 = *v67;
  v68 = v67[1];
  v100 = v69;
  v101 = v68;
  sub_10006345C();
  v70 = v92;
  ModifiedContent<>.accessibilityValue<A>(_:)();
  sub_1000035CC(v66, &qword_1001553A8, &qword_10010D240);
  v71 = sub_100065204();
  v72 = v91;
  View.help(_:)();
  sub_1000035CC(v70, &qword_1001553A8, &qword_10010D240);
  LocalizedStringKey.init(stringLiteral:)();
  v100 = v65;
  v101 = v71;
  swift_getOpaqueTypeConformance2();
  v73 = v93;
  v74 = v96;
  View.accessibilityHint(_:)();

  (*(v97 + 8))(v72, v74);
  v75 = static Color.clear.getter();
  LOBYTE(v57) = static Edge.Set.all.getter();
  v76 = v94;
  sub_10000D5B8(v73, v94, &qword_1001553A0, &qword_10010D238);
  v77 = v76 + *(v95 + 44);
  *v77 = v75;
  *(v77 + 8) = v57;
  v78 = v98;
  sub_10000D5B8(v76, v98, &qword_100155390, &qword_10010D230);
  result = sub_10003AE84(&qword_100155378, &qword_10010D228);
  *(v78 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100064734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_10003AE84(&qword_100155458, &qword_10010D378);
  __chkstk_darwin(v37);
  v5 = &v35[-v4];
  v6 = sub_10003AE84(&qword_100155460, &qword_10010D380);
  __chkstk_darwin(v6 - 8);
  v39 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v35[-v9];
  v10 = (a1 + *(type metadata accessor for InputAccessoryView(0) + 32));
  v11 = v10[1];
  v40 = *v10;
  v41 = v11;
  sub_10006345C();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  if (qword_1001545D0 != -1)
  {
    swift_once();
  }

  v17 = qword_100160BF8;
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v36 = v21;
  v23 = v22;
  sub_10000C6AC(v12, v14, v16 & 1);

  if (qword_100154408 != -1)
  {
    swift_once();
  }

  v24 = qword_100160940;
  v25 = (v5 + *(sub_10003AE84(&qword_100155468, &qword_10010D388) + 36));
  v26 = *(sub_10003AE84(&qword_100155470, &qword_10010D390) + 28);
  v27 = enum case for Image.Scale.small(_:);
  v28 = type metadata accessor for Image.Scale();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v5 = v24;
  KeyPath = swift_getKeyPath();
  v30 = (v5 + *(v37 + 36));
  *v30 = KeyPath;
  v30[1] = v17;
  sub_10006546C();

  v31 = v38;
  View.accessibilityHidden(_:)();
  sub_1000035CC(v5, &qword_100155458, &qword_10010D378);
  v32 = v39;
  sub_1000655DC(v31, v39);
  *a2 = v18;
  *(a2 + 8) = v20;
  LOBYTE(v27) = v36 & 1;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v23;
  v33 = sub_10003AE84(&qword_1001554A0, &qword_10010D400);
  sub_1000655DC(v32, a2 + *(v33 + 48));
  sub_10006564C(v18, v20, v27);

  sub_1000035CC(v31, &qword_100155460, &qword_10010D380);
  sub_1000035CC(v32, &qword_100155460, &qword_10010D380);
  sub_10000C6AC(v18, v20, v27);
}

uint64_t sub_100064AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InputAccessoryView(0);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  v5 = *(a1 + *(v4 + 40));
  v6 = type metadata accessor for UnitConversionPopoverView(0);
  sub_10000D594((a2 + v6[9]));
  sub_10000D594((a2 + v6[10]));
  type metadata accessor for CalculatorViewModel(0);
  sub_10006535C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v7 & 1;
  type metadata accessor for CalculatorUnitConversionViewModelWrapper(0);
  sub_10006535C(&qword_1001553F8, type metadata accessor for CalculatorUnitConversionViewModelWrapper, &unk_10010E2D4);
  *(a2 + 16) = Environment.init<A>(_:)();
  *(a2 + 24) = v8 & 1;
  type metadata accessor for CalculatorLayout(0);
  sub_10006535C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  *(a2 + 32) = Environment.init<A>(_:)();
  *(a2 + 40) = v9 & 1;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  *(a2 + 65) = v5;
  v10 = a2 + v6[11];
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  State.init(wrappedValue:)();
  *v10 = v14;
  *(v10 + 16) = v15;
  v11 = a2 + v6[12];
  State.init(wrappedValue:)();
  *v11 = v14;
  *(v11 + 16) = v15;
  sub_10001BB68();
  FocusState.init<A>()();
  v12 = a2 + v6[14];
  State.init(wrappedValue:)();
  *v12 = v14;
  *(v12 + 16) = v15;
  sub_1000103CC();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_100064E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputAccessoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputAccessoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064F34()
{
  v1 = *(type metadata accessor for InputAccessoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100063CFC(v2);
}

unint64_t sub_100064F9C()
{
  result = qword_100155380;
  if (!qword_100155380)
  {
    sub_10003AECC(&qword_100155378, &qword_10010D228);
    sub_100065054();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155380);
  }

  return result;
}

unint64_t sub_100065054()
{
  result = qword_100155388;
  if (!qword_100155388)
  {
    sub_10003AECC(&qword_100155390, &qword_10010D230);
    sub_10006510C();
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155388);
  }

  return result;
}

unint64_t sub_10006510C()
{
  result = qword_100155398;
  if (!qword_100155398)
  {
    sub_10003AECC(&qword_1001553A0, &qword_10010D238);
    sub_10003AECC(&qword_1001553A8, &qword_10010D240);
    sub_100065204();
    swift_getOpaqueTypeConformance2();
    sub_10006535C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155398);
  }

  return result;
}

unint64_t sub_100065204()
{
  result = qword_1001553B0;
  if (!qword_1001553B0)
  {
    sub_10003AECC(&qword_1001553A8, &qword_10010D240);
    sub_100004880(&qword_1001553B8, &qword_1001553C0, &qword_10010D248, &protocol conformance descriptor for IDView<A, B>);
    sub_10006535C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001553B0);
  }

  return result;
}

uint64_t sub_1000652EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InputAccessoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100064AE8(v4, a1);
}

uint64_t sub_10006535C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000653A4(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_10006546C()
{
  result = qword_100155478;
  if (!qword_100155478)
  {
    sub_10003AECC(&qword_100155458, &qword_10010D378);
    sub_100065524();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155478);
  }

  return result;
}

unint64_t sub_100065524()
{
  result = qword_100155480;
  if (!qword_100155480)
  {
    sub_10003AECC(&qword_100155468, &qword_10010D388);
    sub_100004880(&qword_100155488, &qword_100155470, &qword_10010D390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155480);
  }

  return result;
}

uint64_t sub_1000655DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155460, &qword_10010D380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10006564C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_10006565C()
{
  result = Image.init(_:bundle:)();
  qword_1001608E8 = result;
  return result;
}

uint64_t sub_100065698()
{
  result = Image.init(_:bundle:)();
  qword_1001608F8 = result;
  return result;
}

uint64_t sub_1000656D8()
{
  result = Image.init(_:bundle:)();
  qword_100160908 = result;
  return result;
}

uint64_t sub_100065714()
{
  result = Image.init(_:bundle:)();
  qword_100160918 = result;
  return result;
}

uint64_t sub_100065750()
{
  result = Image.init(systemName:)();
  qword_100160920 = result;
  return result;
}

uint64_t sub_100065780()
{
  result = Image.init(systemName:)();
  qword_100160928 = result;
  return result;
}

uint64_t sub_1000657AC()
{
  result = Image.init(systemName:)();
  qword_100160930 = result;
  return result;
}

uint64_t sub_1000657E4()
{
  result = Image.init(systemName:)();
  qword_100160938 = result;
  return result;
}

uint64_t sub_100065820()
{
  result = Image.init(systemName:)();
  qword_100160940 = result;
  return result;
}

uint64_t sub_100065858()
{
  result = Image.init(_internalSystemName:)();
  qword_100160948 = result;
  return result;
}

uint64_t sub_100065898()
{
  result = Image.init(_:bundle:)();
  qword_100160950 = result;
  return result;
}

uint64_t sub_1000658DC()
{
  result = Image.init(systemName:)();
  qword_100160958 = result;
  return result;
}

uint64_t sub_10006590C()
{
  result = Image.init(systemName:)();
  qword_100160960 = result;
  return result;
}

uint64_t sub_100065944()
{
  result = Image.init(_internalSystemName:)();
  qword_100160968 = result;
  return result;
}

Swift::Int sub_10006597C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000659F0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100065A34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100067668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100065A74(uint64_t a1)
{
  v2 = sub_100017ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100065AB0(uint64_t a1)
{
  v2 = sub_100017ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100065AF0()
{
  type metadata accessor for CalculatorButtonSizeCacheManager(0);
  swift_allocObject();
  result = sub_100065B30();
  qword_100160980 = result;
  return result;
}

uint64_t sub_100065B30()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100155678, &qword_10010D658);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100155680, &qword_10010D660);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = sub_10003AE84(&qword_100155688, &qword_10010D668);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  __chkstk_darwin(v12);
  v26 = &v25 - v14;
  *(v0 + 16) = 0xD00000000000001DLL;
  *(v0 + 24) = 0x8000000100106210;
  v15 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
  v16 = type metadata accessor for CalculatorButtonSizeCache(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cacheSubject;
  sub_10003AE84(&qword_100155690, &qword_10010D670);
  swift_allocObject();
  *(v1 + v17) = PassthroughSubject.init()();
  v25 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cancellable;
  *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cancellable) = 0;
  sub_100066074();
  v34 = *(v1 + v17);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_10000A84C();
  v18 = static OS_dispatch_queue.main.getter();
  v33 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_100004880(&qword_100155698, &qword_100155690, &qword_10010D670, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100067550(&qword_1001556A0, sub_10000A84C, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000035CC(v4, &qword_100155678, &qword_10010D658);

  (*(v27 + 8))(v7, v28);

  sub_100004880(&qword_1001556A8, &qword_100155680, &qword_10010D660, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  sub_100067550(&qword_1001556B0, type metadata accessor for CalculatorButtonSizeCache, &unk_10010D4AC);
  v20 = v26;
  v21 = v29;
  Publisher<>.removeDuplicates()();
  (*(v30 + 8))(v11, v21);
  sub_100004880(&qword_1001556B8, &qword_100155688, &qword_10010D668, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  v22 = v31;
  v23 = Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v20, v22);
  *(v1 + v25) = v23;

  return v1;
}

void sub_100066074()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  __chkstk_darwin(v5 - 8);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for CalculatorButtonSizeCache(0);
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v62 - v13;
  __chkstk_darwin(v14);
  v66 = &v62 - v15;
  __chkstk_darwin(v16);
  v65 = (&v62 - v17);
  __chkstk_darwin(v18);
  v72 = &v62 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v27 = [objc_opt_self() defaultManager];
  v28 = [v27 URLsForDirectory:13 inDomains:1];

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v69 = v4;
  (*(v21 + 16))(v23, v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

  URL.appendingPathComponent(_:)();
  v30 = *(v21 + 8);
  v30(v23, v20);
  v31 = Data.init(contentsOf:options:)();
  v32 = v1;
  v33 = v31;
  v35 = v34;
  v63 = v32;
  v30(v26, v20);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100067550(&qword_1001556E0, type metadata accessor for CalculatorButtonSizeCache, &unk_10010D4FC);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v36 = v35;
  v37 = v33;

  v38 = *(v73 + 56);
  v38(v9, 0, 1, v10);
  v39 = v72;
  sub_100018114(v9, v72);
  v40 = v69;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v42 = v41;
  (*(v70 + 8))(v40, v71);
  if (v42 < 2592000.0)
  {
    v43 = v64;
    sub_100018208(v39, v64);
    v38(v43, 0, 1, v10);
    v44 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
    v45 = v63;
    swift_beginAccess();
    sub_10006780C(v43, v45 + v44);
    swift_endAccess();
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000048C8(v46, qword_100160D38);
    v47 = v65;
    sub_100018208(v39, v65);
    v48 = v66;
    sub_100018208(v39, v66);
    v49 = v67;
    sub_100018208(v39, v67);
    v50 = v68;
    sub_100018208(v39, v68);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218752;
      v54 = *v47;
      sub_10001826C(v47);
      *(v53 + 4) = v54;
      *(v53 + 12) = 2048;
      v55 = *(v48 + 8);
      sub_10001826C(v48);
      *(v53 + 14) = v55;
      *(v53 + 22) = 2048;
      v56 = *(v49 + 16);
      sub_10001826C(v49);
      *(v53 + 24) = v56;
      *(v53 + 32) = 2048;
      v57 = *(v50 + 24);
      sub_10001826C(v50);
      *(v53 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "Successfully loaded cached button sizes - basic: %fx%f, scientific: %fx%f", v53, 0x2Au);

      sub_1000182C8(v37, v36);
    }

    else
    {
      sub_1000182C8(v37, v36);

      sub_10001826C(v50);
      sub_10001826C(v49);
      sub_10001826C(v48);
      sub_10001826C(v47);
    }

    sub_10001826C(v39);
    return;
  }

  sub_10001826C(v39);
  sub_1000182C8(v33, v35);
  if (qword_1001546E8 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v58 = type metadata accessor for Logger();
  sub_1000048C8(v58, qword_100160D38);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "No valid cache found for button sizes", v61, 2u);
  }
}

double sub_100066888(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v22 = a1;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculatorButtonSizeCache(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A84C();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_100018208(v22, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_100018114(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1000677A0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014A6B8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100067550(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0, &protocol conformance descriptor for [A]);
  v19 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v3, v19);
  (*(v24 + 8))(v6, v25);

  return result;
}

void sub_100066CF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CalculatorButtonSizeCache(0);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  __chkstk_darwin(v9);
  v42 = &v38 - v10;
  __chkstk_darwin(v11);
  v13 = (&v38 - v12);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v41 = v8;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100067550(&qword_1001556D8, type metadata accessor for CalculatorButtonSizeCache, &unk_10010D4D4);
    v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v40 = v21;
    v38 = v5;

    v22 = [objc_opt_self() defaultManager];
    v23 = [v22 URLsForDirectory:13 inDomains:1];

    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v24 + 16))
    {
      (*(v15 + 16))(v17, v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);

      URL.appendingPathComponent(_:)();
      v25 = *(v15 + 8);
      v25(v17, v14);
      Data.write(to:options:)();
      v23 = v38;
      v25(v20, v14);
      if (qword_1001546E8 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_6:
    v26 = type metadata accessor for Logger();
    sub_1000048C8(v26, qword_100160D38);
    v27 = a2;
    sub_100018208(a2, v13);
    v28 = a2;
    v29 = v42;
    sub_100018208(v28, v42);
    v30 = v41;
    sub_100018208(v27, v41);
    sub_100018208(v27, v23);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218752;
      v34 = *v13;
      sub_10001826C(v13);
      *(v33 + 4) = v34;
      *(v33 + 12) = 2048;
      v35 = *(v29 + 8);
      sub_10001826C(v29);
      *(v33 + 14) = v35;
      *(v33 + 22) = 2048;
      v36 = *(v30 + 16);
      sub_10001826C(v30);
      *(v33 + 24) = v36;
      *(v33 + 32) = 2048;
      v37 = v23[3];
      sub_10001826C(v23);
      *(v33 + 34) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully cached button sizes - basic: %fx%f, scientific: %fx%f", v33, 0x2Au);

      sub_1000182C8(v39, v40);
    }

    else
    {
      sub_1000182C8(v39, v40);

      sub_10001826C(v23);
      sub_10001826C(v30);
      sub_10001826C(v29);
      sub_10001826C(v13);
    }
  }
}

double sub_100067348(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_10006738C()
{

  sub_1000035CC(v0 + OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache, &qword_100155658, &qword_10010D538);

  return swift_deallocClassInstance();
}

void sub_100067430(uint64_t a1)
{
  sub_1000674E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000674E4(uint64_t a1)
{
  if (!qword_1001554F8)
  {
    type metadata accessor for CalculatorButtonSizeCache(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001554F8);
    }
  }
}

uint64_t sub_100067550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100067598(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v8 = *(type metadata accessor for CalculatorButtonSizeCache(0) + 24);

  return static Date.== infix(_:_:)(a1 + v8, a2 + v8);
}

unint64_t sub_100067614()
{
  result = qword_100155660;
  if (!qword_100155660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155660);
  }

  return result;
}

uint64_t sub_100067668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475426369736162 && a2 == 0xEF657A69536E6F74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001061F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void sub_1000677A0()
{
  v1 = *(type metadata accessor for CalculatorButtonSizeCache(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100066CF0(v2, v3);
}

uint64_t sub_10006780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006787C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 144);
}

uint64_t sub_10006794C@<X0>(void (*a1)(char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v125 = a1;
  v113 = a4;
  v6 = sub_10003AE84(&qword_100155720, &qword_10010D9A8);
  v114 = *(v6 - 8);
  v115 = v6;
  __chkstk_darwin(v6);
  v112 = &v88 - v7;
  v8 = sub_10003AE84(&qword_100155728, &qword_10010D9B0);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v109 = &v88 - v9;
  v106 = sub_10003AE84(&qword_100155730, &qword_10010D9B8);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v88 - v10;
  v101 = sub_10003AE84(&qword_100155738, &qword_10010D9C0);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v88 - v11;
  v96 = sub_10003AE84(&qword_100155740, &qword_10010D9C8);
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v88 - v12;
  v13 = type metadata accessor for PPTTestCase.Name();
  v126 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003AE84(&qword_100155748, &qword_10010D9D0);
  v17 = *(v16 - 8);
  v123 = v16;
  v124 = v17;
  __chkstk_darwin(v16);
  v19 = &v88 - v18;
  v91 = sub_10003AE84(&qword_100155750, &qword_10010D9D8);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v116 = &v88 - v20;
  v95 = sub_10003AE84(&qword_100155758, &qword_10010D9E0);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v117 = &v88 - v21;
  v100 = sub_10003AE84(&qword_100155760, &qword_10010D9E8);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v118 = &v88 - v22;
  v103 = sub_10003AE84(&qword_100155768, &qword_10010D9F0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v119 = &v88 - v23;
  v108 = sub_10003AE84(&qword_100155770, &qword_10010D9F8);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v120 = &v88 - v24;
  if (qword_100154470 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v13, qword_1001609E8);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v121 = a3;
  LODWORD(v89) = a3 & 1;
  *(v25 + 24) = a3 & 1;

  v26 = sub_10003AE84(&qword_100155778, &unk_10010DA00);
  v27 = a2;
  v28 = sub_100004880(&qword_100155780, &qword_100155778, &unk_10010DA00, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v29;

  v30._countAndFlagsBits = 0x70616373646E614CLL;
  v30._object = 0xE900000000000065;
  String.append(_:)(v30);

  PPTTestCase.Name.init(_:)();
  v127 = v26;
  v128 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v123;
  View.onTest(_:handler:)();

  v125 = *(v126 + 8);
  v126 += 8;
  (v125)(v15, v13);
  (*(v124 + 8))(v19, v32);
  if (qword_100154478 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v13, qword_100160A00);
  v33 = swift_allocObject();
  v124 = v13;
  *(v33 + 16) = v27;
  *(v33 + 24) = v89;

  v127 = v32;
  v128 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v123 = v27;
  v35 = v92;
  v36 = v91;
  v37 = v116;
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v38;

  v39._countAndFlagsBits = 0x70616373646E614CLL;
  v39._object = 0xE900000000000065;
  String.append(_:)(v39);

  PPTTestCase.Name.init(_:)();
  v127 = v36;
  v128 = v34;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v96;
  v89 = v40;
  View.onTest(_:handler:)();

  v42 = v124;
  (v125)(v15, v124);
  (*(v93 + 8))(v35, v41);
  (*(v90 + 8))(v37, v36);
  v122 = v15;
  if (qword_100154480 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v42, qword_100160A18);
  v43 = swift_allocObject();
  v44 = v123;
  *(v43 + 16) = v123;
  LODWORD(v116) = v121 & 1;
  *(v43 + 24) = v121 & 1;

  v127 = v41;
  v128 = v89;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v97;
  v47 = v95;
  v48 = v117;
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v49;

  v50._countAndFlagsBits = 0x70616373646E614CLL;
  v50._object = 0xE900000000000065;
  String.append(_:)(v50);

  v51 = v122;
  PPTTestCase.Name.init(_:)();
  v127 = v47;
  v128 = v45;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v101;
  View.onTest(_:handler:)();
  v54 = v124;

  (v125)(v51, v54);
  (*(v99 + 8))(v46, v53);
  (*(v94 + 8))(v48, v47);
  if (qword_100154488 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v54, qword_100160A30);
  v55 = swift_allocObject();
  *(v55 + 16) = v44;
  *(v55 + 24) = v116;

  v127 = v53;
  v128 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v104;
  v58 = v100;
  v59 = v118;
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v60;

  v61._countAndFlagsBits = 0x70616373646E614CLL;
  v61._object = 0xE900000000000065;
  String.append(_:)(v61);

  v62 = v122;
  PPTTestCase.Name.init(_:)();
  v127 = v58;
  v128 = v56;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v106;
  View.onTest(_:handler:)();
  v65 = v124;

  (v125)(v62, v65);
  (*(v105 + 8))(v57, v64);
  (*(v98 + 8))(v59, v58);
  v66 = v62;
  if (qword_100154490 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v65, qword_100160A48);
  v67 = swift_allocObject();
  *(v67 + 16) = v123;
  v121 &= 1u;
  *(v67 + 24) = v121;

  v127 = v64;
  v128 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v109;
  v70 = v103;
  v71 = v119;
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v72;

  v73._countAndFlagsBits = 0x70616373646E614CLL;
  v73._object = 0xE900000000000065;
  String.append(_:)(v73);

  PPTTestCase.Name.init(_:)();
  v127 = v70;
  v128 = v68;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v111;
  View.onTest(_:handler:)();
  v76 = v66;
  v77 = v124;

  (v125)(v76, v77);
  (*(v110 + 8))(v69, v75);
  (*(v102 + 8))(v71, v70);
  if (qword_100154498 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v77, qword_100160A60);
  v78 = swift_allocObject();
  *(v78 + 16) = v123;
  *(v78 + 24) = v121;

  v127 = v75;
  v128 = v74;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v112;
  v81 = v108;
  v82 = v120;
  View.onTest(_:handler:)();
  v127 = PPTTestCase.Name.rawValue.getter();
  v128 = v83;

  v84._countAndFlagsBits = 0x70616373646E614CLL;
  v84._object = 0xE900000000000065;
  String.append(_:)(v84);

  v85 = v122;
  PPTTestCase.Name.init(_:)();
  v127 = v81;
  v128 = v79;
  swift_getOpaqueTypeConformance2();
  v86 = v115;
  View.onTest(_:handler:)();

  (v125)(v85, v77);
  (*(v114 + 8))(v80, v86);
  return (*(v107 + 8))(v82, v81);
}

void sub_100068B24(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v29 = a3;
  v30 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v27 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v28 = a5;
  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v16, v14);
  }

  v26 = v14;
  sub_1000560A8(a2);

  v18 = objc_opt_self();
  v19 = [v18 mainRunLoop];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v20 = *(v8 + 8);
  v20(v10, v7);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20(v13, v7);
  [v19 runUntilDate:isa];

  PPTTestCase.startTest()();

  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v16, v26);
  }

  sub_1000560A8(v29);

  v23 = [v18 mainRunLoop];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v20(v10, v7);
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v20(v13, v7);
  [v23 runUntilDate:v24];

  PPTTestCase.finishTest()();
}

uint64_t sub_100068F0C(uint64_t a1)
{
  v27 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PPTTestCase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for DispatchTime();
  v31 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_10000A84C();
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v9 + 8);
  v30(v11, v8);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v5);
  v44 = *v1;
  v45 = *(v1 + 8);
  v42 = v1[2];
  v43 = *(v1 + 24);
  v15 = v1[4];
  v41 = *(v1 + 40);
  v39 = v1[7];
  v40 = v15;
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(v1 + 1);
  *v18 = *v1;
  v18[1] = v19;
  v20 = *(v1 + 3);
  v18[2] = *(v1 + 2);
  v18[3] = v20;
  aBlock[4] = sub_10006C0C0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014A860;
  v21 = _Block_copy(aBlock);
  sub_100008E68(&v44, v37, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v42, v37, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v40, v37, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(&v39, v37, &qword_100155700, &qword_10010D938);

  v22 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0, &protocol conformance descriptor for [A]);
  v24 = v32;
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v36 + 8))(v24, v23);
  (*(v34 + 8))(v22, v35);
  return (v30)(v14, v31);
}

unint64_t sub_100069494(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v58[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D68;
  v8 = String._bridgeToObjectiveC()();
  [v7 setBool:1 forKey:v8];

  PPTTestCase.startTest()();
  v9 = PPTTestCase.parameters.getter();
  v65 = 0x664F7265626D756ELL;
  v66 = 0xEF7364726F636552;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = sub_100075284(&aBlock), (v11 & 1) != 0))
  {
    sub_100007314(*(v9 + 56) + 32 * v10, &v67);
    sub_10006C154(&aBlock);

    if (swift_dynamicCast())
    {
      v13 = v65;
      result = v66;
      goto LABEL_9;
    }
  }

  else
  {

    sub_10006C154(&aBlock);
  }

  result = 0xE400000000000000;
  v13 = 808464433;
LABEL_9:
  v14 = HIBYTE(result) & 0xF;
  v15 = v13 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(result) & 0xF;
  }

  else
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_71;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v20 = sub_10006FF4C(v13, result, 10);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((result & 0x2000000000000000) != 0)
  {
    aBlock = v13;
    v60 = result & 0xFFFFFFFFFFFFFFLL;
    if (v13 == 43)
    {
      if (!v14)
      {
LABEL_87:
        __break(1u);
        return result;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v31 = &aBlock + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v17)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v13 == 45)
    {
      if (!v14)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &aBlock + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v14)
    {
      v20 = 0;
      p_aBlock = &aBlock;
      while (1)
      {
        v37 = *p_aBlock - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        p_aBlock = (p_aBlock + 1);
        if (!--v14)
        {
LABEL_68:
          LOBYTE(v17) = 0;
          goto LABEL_70;
        }
      }
    }
  }

  else
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v17 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v56 = result;
      v17 = _StringObject.sharedUTF8.getter();
      result = v56;
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v27 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_70;
          }

          v28 = v17 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v27)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_86;
    }

    if (v18 == 45)
    {
      if (v15 >= 1)
      {
        v19 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_70;
          }

          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_85;
    }

    if (v15)
    {
      v20 = 0;
      if (!v17)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v34 = *v17 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_69:
  v20 = 0;
  LOBYTE(v17) = 1;
LABEL_70:
  LOBYTE(v67) = v17;
  v39 = v17;

  if (v39)
  {
LABEL_71:
    v20 = 1000;
  }

LABEL_72:
  v68 = *(a2 + 24);
  v67 = *(a2 + 16);
  v40 = v68;

  if ((v40 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v67, &qword_100154810, &qword_10010DF90);
    (*(v4 + 8))(v6, v3);
  }

  sub_1000E3C28(v20, 1, 1);

  v42 = *(a2 + 48);
  v43 = *(a2 + 56);
  v71 = v43;
  aBlock = v42;
  v60 = v43;
  swift_unknownObjectRetain();
  sub_100008E68(&v71, &v65, &qword_100155700, &qword_10010D938);
  sub_10003AE84(&qword_100155718, &qword_10010D950);
  State.wrappedValue.getter();
  v44 = v65;
  v45 = [objc_allocWithZone(NSNull) init];

  swift_unknownObjectRelease();
  if (v44 == v45)
  {
    v46 = [objc_opt_self() defaultCenter];
    if (qword_1001544D0 != -1)
    {
      swift_once();
    }

    v47 = qword_100160AF8;
    v48 = [objc_opt_self() mainQueue];
    v65 = *a2;
    LOBYTE(v66) = *(a2 + 8);
    v69 = *(a2 + 32);
    v70 = *(a2 + 40);
    v49 = swift_allocObject();
    v50 = *(a2 + 16);
    v49[1] = *a2;
    v49[2] = v50;
    v51 = *(a2 + 48);
    v49[3] = *(a2 + 32);
    v49[4] = v51;
    v63 = sub_10006C1A8;
    v64 = v49;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10005628C;
    v62 = &unk_10014A8B0;
    v52 = _Block_copy(&aBlock);
    sub_100008E68(&v67, v58, &qword_100154810, &qword_10010DF90);
    swift_unknownObjectRetain();
    sub_100008E68(&v71, v58, &qword_100155700, &qword_10010D938);
    sub_100008E68(&v65, v58, &qword_1001556F0, &unk_10010D920);
    sub_100008E68(&v69, v58, &qword_1001556F8, &qword_10010D930);

    v53 = [v46 addObserverForName:v47 object:0 queue:v48 usingBlock:v52];
    _Block_release(v52);

    aBlock = v42;
    v60 = v43;
    v58[0] = v53;
    State.wrappedValue.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1000035CC(&v71, &qword_100155700, &qword_10010D938);
}

uint64_t sub_100069CFC(uint64_t a1, uint64_t *a2)
{
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v32 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  sub_10000A84C();
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v31 = *(v9 + 8);
  v31(v11, v8);
  v49 = *a2;
  v50 = *(a2 + 8);
  v47 = a2[2];
  v48 = *(a2 + 24);
  v15 = a2[4];
  v46 = *(a2 + 40);
  v16 = a2[6];
  v29 = a2[7];
  v44 = v29;
  v45 = v15;
  v17 = swift_allocObject();
  v18 = *(a2 + 1);
  v17[1] = *a2;
  v17[2] = v18;
  v19 = *(a2 + 3);
  v17[3] = *(a2 + 2);
  v17[4] = v19;
  v42 = sub_10006C1B0;
  v43 = v17;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100067348;
  v41 = &unk_10014A900;
  v20 = _Block_copy(&aBlock);
  sub_100008E68(&v49, v37, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v47, v37, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v45, v37, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(&v44, v37, &qword_100155700, &qword_10010D938);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0, &protocol conformance descriptor for [A]);
  v21 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v30;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  v23 = v4;
  v24 = v29;
  (*(v36 + 8))(v23, v21);
  (*(v34 + 8))(v7, v35);
  v31(v14, v32);
  v25 = [objc_opt_self() defaultCenter];
  aBlock = v16;
  v39 = v24;
  swift_unknownObjectRetain();
  sub_100008E68(&v44, v37, &qword_100155700, &qword_10010D938);
  sub_10003AE84(&qword_100155718, &qword_10010D950);
  State.wrappedValue.getter();
  v26 = v37[0];
  if (qword_1001544D0 != -1)
  {
    swift_once();
  }

  [v25 removeObserver:v26 name:qword_100160AF8 object:0];

  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(NSNull) init];
  aBlock = v16;
  v39 = v24;
  v37[0] = v27;
  State.wrappedValue.setter();
  swift_unknownObjectRelease();
  return sub_1000035CC(&v44, &qword_100155700, &qword_10010D938);
}

double sub_10006A2B0(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

void sub_10006A31C(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v6 = *a1;
  v19 = *a1;
  v7 = v20;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v19, &qword_1001556F0, &unk_10010D920);
    (*(v3 + 8))(v5, v2);
    v6 = v17;
  }

  if (*(v6 + 144) == 1)
  {
    *(v6 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v16 = v2;
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = v6;
    *(&v15 - 8) = 1;
    v17 = v6;
    sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v2 = v16;
  }

  v18 = *(a1 + 40);
  v10 = a1[4];
  v17 = v10;
  v11 = v18;

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v17, &qword_1001556F8, &qword_10010D930);
    (*(v3 + 8))(v5, v2);
    v10 = v21;
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v13 = qword_100160D98;
  sub_10000362C();
  swift_getKeyPath();
  v21 = v13;
  sub_10000F210(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + 72) == 1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v14);
  }

  else
  {
    sub_100091C5C(1);
  }
}

uint64_t sub_10006A75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v19 = sub_10003AE84(&qword_1001556E8, &qword_10010D918);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = v18 - v4;
  v6 = v2[1];
  v21 = *v2;
  v22 = v6;
  v23 = v2[2];
  v8 = *(v2 + 6);
  v7 = *(v2 + 7);
  if (qword_1001544A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for PPTTestCase.Name();
  sub_1000048C8(v9, qword_100160A78);
  v24 = v21;
  v25 = BYTE8(v21);
  v26 = v22;
  v27 = BYTE8(v22);
  v28 = v23;
  v29 = BYTE8(v23);
  v30[0] = v7;
  v10 = swift_allocObject();
  v11 = v22;
  *(v10 + 16) = v21;
  *(v10 + 32) = v11;
  *(v10 + 48) = v23;
  *(v10 + 64) = v8;
  *(v10 + 72) = v7;
  sub_100008E68(&v24, v20, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v26, v20, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v28, v20, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(v30, v20, &qword_100155700, &qword_10010D938);
  v12 = sub_10003AE84(&qword_100155708, &unk_10010D940);
  v13 = sub_100004880(&qword_100155710, &qword_100155708, &unk_10010D940, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onTest(_:handler:)();

  if (qword_1001544A8 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v9, qword_100160A90);
  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v21;
  *(v14 + 32) = v15;
  *(v14 + 48) = v23;
  *(v14 + 64) = v8;
  *(v14 + 72) = v7;
  sub_100008E68(&v24, v20, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v26, v20, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v28, v20, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(v30, v20, &qword_100155700, &qword_10010D938);
  v20[0] = v12;
  v20[1] = v13;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  View.onTest(_:handler:)();

  return (*(v3 + 8))(v5, v16);
}

uint64_t sub_10006AB3C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v49 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorHistoryScrollPPTTests(0);
  v41 = *(v6 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ScrollViewProxy();
  v8 = *(v37 - 8);
  v38 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PPTTestCase();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v40 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v34 - v17;
  PPTTestCase.startTest()();
  sub_10000A84C();
  v44 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v13 + 8);
  v45 = v13 + 8;
  v46 = v18;
  v18(v15, v12);
  v19 = v35;
  (*(v10 + 16))(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v35);
  v20 = v36;
  v21 = v37;
  (*(v8 + 16))(v36, v47, v37);
  v22 = v39;
  sub_10006C410(v48, v39);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = (v11 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = (v38 + *(v41 + 80) + v24) & ~*(v41 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v23, v34, v19);
  (*(v8 + 32))(v26 + v24, v20, v21);
  sub_10006C474(v22, v26 + v25);
  aBlock[4] = sub_10006C640;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014AAB8;
  v27 = _Block_copy(aBlock);

  v28 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0, &protocol conformance descriptor for [A]);
  v30 = v50;
  v29 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v43;
  v31 = v44;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v54 + 8))(v30, v29);
  (*(v52 + 8))(v28, v53);
  return v46(v32, v40);
}

double sub_10006B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculatorHistoryScrollPPTTests(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000048C8(v11, qword_100160D38);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start scroll test", v14, 2u);
    v7 = v20;
  }

  sub_10006C410(a3, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v22, v4);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_10006C474(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  (*(v5 + 32))(v17 + v16, v7, v4);
  PPTTestCase.performScrollTest(_:onComplete:)();

  return result;
}

void sub_10006B468(uint64_t a1, uint64_t a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  PPTTestCase.finishTest()();
}

void sub_10006B4DC(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  sub_10000362C();
  sub_100091C5C(0);

  v8 = *(a1 + 24);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_100044EA4();
  sub_10004EAC8();

  v10 = *a1;
  v11 = *(a1 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v10 = v17;
  }

  if (*(v10 + 144))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v16 - 2) = v10;
    *(&v16 - 8) = 0;
    v17 = v10;
    sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v10 + 144) = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v14 = qword_100160D68;
  v15 = String._bridgeToObjectiveC()();
  [v14 removeObjectForKey:v15];
}

uint64_t sub_10006B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a1;
  v20 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_10003AE84(&qword_100155838, &qword_10010DA80);
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v21 = v17 - v7;
  if (qword_1001544A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for PPTTestCase.Name();
  sub_1000048C8(v8, qword_100160A78);
  sub_10006C410(v3, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_10006C474(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v17[0] = v3;
  v11 = sub_10003AE84(&qword_100155840, &qword_10010DA88);
  v12 = sub_100004880(&qword_100155848, &qword_100155840, &qword_10010DA88, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onTest(_:handler:)();

  if (qword_1001544A8 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v8, qword_100160A90);
  sub_10006C410(v17[0], v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_10006C474(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  v22 = v11;
  v23 = v12;
  swift_getOpaqueTypeConformance2();
  v14 = v19;
  v15 = v21;
  View.onTest(_:handler:)();

  return (*(v18 + 8))(v15, v14);
}

uint64_t sub_10006BC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006BC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CalculatorHistoryRecordDeletionMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006BCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10006BD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006BD7C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_1001609E8);
  sub_1000048C8(v0, qword_1001609E8);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BDE0()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A00);
  sub_1000048C8(v0, qword_100160A00);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BE44()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A18);
  sub_1000048C8(v0, qword_100160A18);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BEA8()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A30);
  sub_1000048C8(v0, qword_100160A30);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BF0C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A48);
  sub_1000048C8(v0, qword_100160A48);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BF70()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A60);
  sub_1000048C8(v0, qword_100160A60);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BFD4()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A78);
  sub_1000048C8(v0, qword_100160A78);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006C038()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A90);
  sub_1000048C8(v0, qword_100160A90);
  return PPTTestCase.Name.init(_:)();
}

unint64_t sub_10006C0C0()
{
  v1 = *(type metadata accessor for PPTTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100069494(v0 + v2, v3);
}

uint64_t type metadata accessor for CalculatorHistoryScrollPPTTests(uint64_t a1)
{
  result = qword_1001557E0;
  if (!qword_1001557E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C2EC(uint64_t a1)
{
  sub_1000105F4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
  if (v1 <= 0x3F)
  {
    sub_1000105F4(319, &qword_1001557F8, type metadata accessor for CalculatorHistoryViewModel);
    if (v2 <= 0x3F)
    {
      sub_1000105F4(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ScrollViewProxy();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10006C410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryScrollPPTTests(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryScrollPPTTests(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C4D8()
{
  v1 = (type metadata accessor for CalculatorHistoryScrollPPTTests(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = type metadata accessor for ScrollViewProxy();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

double sub_10006C640()
{
  v1 = *(type metadata accessor for PPTTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ScrollViewProxy() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for CalculatorHistoryScrollPPTTests(0) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10006B1A4(v0 + v2, v0 + v5, v8);
}

void sub_10006C768(uint64_t a1)
{
  v3 = *(type metadata accessor for CalculatorHistoryScrollPPTTests(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for PPTTestCase();

  sub_10006B468(a1, v1 + v4);
}

uint64_t sub_10006C894()
{
  v0 = type metadata accessor for Calendar.Component();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v39 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Date();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v35 - v6;
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v12 = Calendar.isDateInToday(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  result = 0;
  if ((v12 & 1) == 0)
  {
    static Calendar.current.getter();
    v15 = Calendar.isDateInYesterday(_:)();
    v13(v11, v8);
    if (v15)
    {
      return 0;
    }

    else
    {
      v37 = v0;
      static Date.now.getter();
      static Calendar.current.getter();
      Calendar.startOfDay(for:)();
      v13(v11, v8);
      v18 = *(v2 + 8);
      v16 = v2 + 8;
      v17 = v18;
      v19 = v7;
      v20 = v41;
      v18(v4, v41);
      v38 = v19;
      Date.addingTimeInterval(_:)();
      v21 = Date.compare(_:)();
      v18(v4, v20);
      if (v21 == 1 || (Date.addingTimeInterval(_:)(), v22 = Date.compare(_:)(), v17(v4, v20), v22 == 1))
      {
        v17(v38, v20);
        return 0;
      }

      else
      {
        v35[1] = v16;
        v36 = v17;
        v23 = v39;
        v24 = v40;
        v25 = v37;
        (*(v40 + 104))(v39, enum case for Calendar.Component.year(_:), v37);
        static Calendar.current.getter();
        v26 = Calendar.isDate(_:equalTo:toGranularity:)();
        v13(v11, v8);
        (*(v24 + 8))(v23, v25);
        if (v26)
        {
          v27 = v41;
          if (qword_100154700 != -1)
          {
            swift_once();
          }

          v28 = qword_100160D70;
          static Calendar.current.getter();
          Calendar.startOfDay(for:)();
          v13(v11, v8);
          v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v30 = v36;
          v36(v4, v27);
          v31 = [v28 stringFromDate:v29.super.isa];
        }

        else
        {
          v27 = v41;
          if (qword_100154708 != -1)
          {
            swift_once();
          }

          v32 = qword_100160D78;
          static Calendar.current.getter();
          Calendar.startOfDay(for:)();
          v13(v11, v8);
          v29.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v30 = v36;
          v36(v4, v27);
          v31 = [v32 stringFromDate:v29.super.isa];
        }

        v33 = v31;

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30(v38, v27);
        return v34;
      }
    }
  }

  return result;
}

uint64_t sub_10006CE14()
{
  v19 = type metadata accessor for Date();
  v18 = *(v19 - 8);
  __chkstk_darwin(v19);
  v1 = &v15 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Calendar();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateComponents();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_10003AE84(&qword_100155850, &unk_10010DA90);
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10010BDE0;
  (*(v9 + 104))(v11 + v10, enum case for Calendar.Component.hour(_:), v8);
  sub_1000CF36C(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v18 + 8))(v1, v19);
  (*(v2 + 8))(v4, v17);
  v12 = DateComponents.hour.getter();
  LODWORD(v9) = v13;
  (*(v5 + 8))(v7, v16);
  return (v12 < 24) & ~v9;
}

uint64_t sub_10006D154()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006CE14())
  {
    if (qword_100154718 != -1)
    {
      swift_once();
    }

    v4 = qword_100160D88;
    isa = Date._bridgeToObjectiveC()().super.isa;
    static Date.now.getter();
    v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v7 = [v4 localizedStringForDate:isa relativeToDate:v6.super.isa];
  }

  else
  {
    if (qword_100154710 != -1)
    {
      swift_once();
    }

    v8 = qword_100160D80;
    v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v7 = [v8 stringFromDate:v6.super.isa];
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

void sub_10006D31C(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v2 - 8);
  v41 = &v41 - v3;
  v4 = type metadata accessor for URL();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v42 = a1;
  v18 = *(a1 + 40);
  v50 = v17;
  v47 = v17;
  v48 = v16;
  v43 = v18;
  v49 = v18;
  sub_100015064(&v50, &v46);

  sub_100015064(&v50, &v46);

  sub_100015064(&v50, &v46);

  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  Binding.wrappedValue.getter();
  if (v46 == 1)
  {
    if (qword_100154390 != -1)
    {
      swift_once();
    }

    v19 = qword_1001608A8;
  }

  else
  {
    if (qword_100154398 != -1)
    {
      swift_once();
    }

    v19 = qword_1001608C0;
  }

  v20 = sub_1000048C8(v7, v19);
  sub_100008E68(v20, v15, &qword_100155078, &qword_10010DBA0);
  sub_100008E68(v15, v12, &qword_100155078, &qword_10010DBA0);
  v22 = v44;
  v21 = v45;
  if ((*(v44 + 48))(v12, 1, v45) == 1)
  {
    sub_100031158(&v50);

    sub_100031158(&v50);

    sub_1000035CC(v12, &qword_100155078, &qword_10010DBA0);
    v47 = v17;
    v48 = v16;
    v49 = v43;
    LOBYTE(v46) = 0;
    Binding.wrappedValue.setter();
    v23 = v15;
LABEL_10:
    sub_1000035CC(v23, &qword_100155078, &qword_10010DBA0);
    sub_100031158(&v50);

    return;
  }

  v24 = v6;
  (*(v22 + 32))(v6, v12, v21);
  if (qword_1001546C8 != -1)
  {
    swift_once();
  }

  v25 = qword_100160D28;
  swift_getKeyPath();
  v47 = v25;
  sub_10006DE24();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = v43;
  if (*(v25 + 16) == 1)
  {
    sub_100031158(&v50);

    v27 = v15;
    v28 = v44;
LABEL_16:
    sub_100031158(&v50);

    v47 = v17;
    v48 = v16;
    v49 = v26;
    LOBYTE(v46) = 0;
    Binding.wrappedValue.setter();
    sub_100031158(&v50);

    v30 = v24;
    v31 = v24;
    v32 = v45;
    (*(v28 + 16))(v9, v30, v45);
    (*(v28 + 56))(v9, 0, 1, v32);
    sub_100080E84(v9);
    sub_1000035CC(v9, &qword_100155078, &qword_10010DBA0);
    (*(v28 + 8))(v31, v32);
    v33 = v27;
    goto LABEL_17;
  }

  v47 = v17;
  v48 = v16;
  v49 = v43;
  Binding.wrappedValue.getter();
  v29 = v46;
  sub_100031158(&v50);

  v27 = v15;
  v28 = v44;
  if (v29 == 2)
  {
    goto LABEL_16;
  }

  v47 = v17;
  v48 = v16;
  v49 = v26;
  Binding.wrappedValue.getter();
  v34 = v46;
  sub_100031158(&v50);

  if (v34 != 1)
  {
    v47 = v17;
    v48 = v16;
    v49 = v26;
    LOBYTE(v46) = 0;
    Binding.wrappedValue.setter();
    (*(v28 + 8))(v24, v45);
    v23 = v27;
    goto LABEL_10;
  }

  v47 = v17;
  v48 = v16;
  v49 = v26;
  LOBYTE(v46) = 3;
  Binding.wrappedValue.setter();
  sub_100031158(&v50);

  v35 = type metadata accessor for TaskPriority();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = v42;
  v47 = *v42;
  type metadata accessor for MainActor();
  sub_100015064(&v50, &v46);

  sub_100015064(&v47, &v46);

  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = &protocol witness table for MainActor;
  v40 = v37[1];
  *(v39 + 32) = *v37;
  *(v39 + 48) = v40;
  *(v39 + 57) = *(v37 + 25);
  sub_100050560(0, 0, v36, &unk_10010DBD8, v39);

  (*(v28 + 8))(v24, v45);
  v33 = v27;
LABEL_17:
  sub_1000035CC(v33, &qword_100155078, &qword_10010DBA0);
}

uint64_t sub_10006DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DAEC, v6, v5);
}

uint64_t sub_10006DAEC()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + 24);
  *(v0 + 32) = *(v1 + 40);
  *(v0 + 16) = v2;
  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  Binding.wrappedValue.getter();
  if (*(v0 + 33))
  {
    v3 = *(v0 + 40);
    v4 = *(v3 + 16);
    *(v0 + 16) = *v3;
    *(v0 + 32) = v4;
    *(v0 + 33) = 1;
    sub_10003AE84(&qword_100155868, &qword_10010DB60);
    Binding.wrappedValue.setter();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006DBC4@<X0>(uint64_t a5@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}