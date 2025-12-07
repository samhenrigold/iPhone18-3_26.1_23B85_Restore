uint64_t sub_10001CB08(uint64_t *a1)
{
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10001CB70(uint64_t *a1)
{
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10003AF60();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_10003AF14(&qword_100154788, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

uint64_t sub_10001CC64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10001CD08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v68 = sub_10003AE84(&qword_100156AD8, &qword_1001102F8);
  __chkstk_darwin(v68);
  v58 = &v57 - v3;
  v64 = sub_10003AE84(&qword_100156AE0, &qword_100110300);
  __chkstk_darwin(v64);
  v66 = &v57 - v4;
  v61 = sub_10003AE84(&qword_100156AE8, &qword_100110308);
  __chkstk_darwin(v61);
  v6 = &v57 - v5;
  v65 = sub_10003AE84(&qword_100156AF0, &qword_100110310);
  __chkstk_darwin(v65);
  v63 = &v57 - v7;
  v62 = sub_10003AE84(&qword_100156AF8, &qword_100110318);
  __chkstk_darwin(v62);
  v9 = (&v57 - v8);
  v10 = type metadata accessor for EnvironmentValues();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a1 + 8);
  v79 = *a1;
  v13 = v79;
  v14 = v80;

  v15 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v79, &qword_100154810, &qword_10010DF90);
    (*(v60 + 8))(v12, v10);
    v15 = v77;
  }

  swift_getKeyPath();
  *&v77 = v15;
  v59 = sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + 50);

  if (v17 == 1)
  {
    v77 = *(a1 + 2);
    v78 = *(a1 + 48);
    v75 = *(a1 + 2);
    v76 = *(a1 + 48);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.projectedValue.getter();
    v18 = v72;
    v19 = v73;
    v20 = v74;
    v72 = a1[2];
    LOBYTE(v73) = *(a1 + 24);
    v21 = swift_allocObject();
    v22 = *(a1 + 1);
    *(v21 + 16) = *a1;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a1 + 2);
    *(v21 + 64) = *(a1 + 48);
    sub_100008E68(&v79, &v75, &qword_100154810, &qword_10010DF90);
    sub_100008E68(&v72, &v75, &qword_1001556F0, &unk_10010D920);
    sub_100008E68(&v77, &v75, &qword_100156AA8, &qword_100110298);
    sub_10008E9FC(v18, v19, v20, sub_100020894, v21, v9);
    *(v9 + *(v62 + 36)) = 1;
    sub_100008E68(v9, v6, &qword_100156AF8, &qword_100110318);
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100156B38, &qword_1001103E8);
    sub_10001DAC8();
    sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8, &unk_100111D18);
    v23 = v63;
    _ConditionalContent<>.init(storage:)();
    sub_100008E68(v23, v66, &qword_100156AF0, &qword_100110310);
    swift_storeEnumTagMultiPayload();
    sub_10001DA10();
    sub_10001DBD4();
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v23, &qword_100156AF0, &qword_100110310);
    v24 = v9;
    v25 = &qword_100156AF8;
    v26 = &qword_100110318;
  }

  else
  {

    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v79, &qword_100154810, &qword_10010DF90);
      (*(v60 + 8))(v12, v10);
      v13 = v77;
    }

    v28 = *(v13 + 16);
    swift_getKeyPath();
    *&v77 = v28;
    sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = CalculateExpression.format.getter();

    v77 = *(a1 + 2);
    v78 = *(a1 + 48);
    v75 = *(a1 + 2);
    v76 = *(a1 + 48);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.projectedValue.getter();
    if (v29 == 2)
    {
      v31 = v72;
      v30 = v73;
      v32 = v74;
      v72 = a1[2];
      LOBYTE(v73) = *(a1 + 24);
      v33 = swift_allocObject();
      v34 = *(a1 + 1);
      *(v33 + 16) = *a1;
      *(v33 + 32) = v34;
      *(v33 + 48) = *(a1 + 2);
      *(v33 + 64) = *(a1 + 48);
      type metadata accessor for CalculatorViewModel(0);
      sub_100008E68(&v79, &v75, &qword_100154810, &qword_10010DF90);
      sub_100008E68(&v72, &v75, &qword_1001556F0, &unk_10010D920);
      sub_100008E68(&v77, &v75, &qword_100156AA8, &qword_100110298);
      v35 = Environment.init<A>(_:)();
      v37 = v36;
      type metadata accessor for CalculatorLayout(0);
      sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
      v38 = Environment.init<A>(_:)();
      v71 = v37 & 1;
      v70 = v39 & 1;
      *v6 = sub_100020878;
      *(v6 + 1) = v33;
      *(v6 + 2) = v35;
      v6[24] = v37 & 1;
      *(v6 + 25) = v75;
      *(v6 + 7) = *(&v75 + 3);
      *(v6 + 4) = v38;
      v6[40] = v39 & 1;
      *(v6 + 41) = *v69;
      *(v6 + 11) = *&v69[3];
      v60 = v31;
      *(v6 + 6) = v31;
      *(v6 + 7) = v30;
      v6[64] = v32;
      swift_storeEnumTagMultiPayload();

      sub_10003AE84(&qword_100156B38, &qword_1001103E8);
      sub_10001DAC8();
      sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8, &unk_100111D18);
      v40 = v63;
      _ConditionalContent<>.init(storage:)();
      sub_100008E68(v40, v66, &qword_100156AF0, &qword_100110310);
      swift_storeEnumTagMultiPayload();
      sub_10001DA10();
      sub_10001DBD4();
      _ConditionalContent<>.init(storage:)();

      v24 = v40;
      v25 = &qword_100156AF0;
      v26 = &qword_100110310;
    }

    else
    {
      v41 = v72;
      v42 = v73;
      v43 = v74;
      v72 = a1[2];
      LOBYTE(v73) = *(a1 + 24);
      v44 = swift_allocObject();
      v45 = *(a1 + 1);
      *(v44 + 16) = *a1;
      *(v44 + 32) = v45;
      *(v44 + 48) = *(a1 + 2);
      *(v44 + 64) = *(a1 + 48);
      v46 = sub_10003AE84(&qword_100156B00, &qword_100110370);
      v47 = v46[9];
      KeyPath = swift_getKeyPath();
      v49 = v58;
      *&v58[v47] = KeyPath;
      sub_10003AE84(&qword_100154F90, &qword_10010C910);
      swift_storeEnumTagMultiPayload();
      v50 = v46[10];
      *(v49 + v50) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v51 = v49 + v46[11];
      type metadata accessor for CalculatorViewModel(0);
      sub_100008E68(&v79, &v75, &qword_100154810, &qword_10010DF90);
      sub_100008E68(&v72, &v75, &qword_1001556F0, &unk_10010D920);
      sub_100008E68(&v77, &v75, &qword_100156AA8, &qword_100110298);
      *v51 = Environment.init<A>(_:)();
      v51[8] = v52 & 1;
      v53 = v49 + v46[12];
      type metadata accessor for CalculatorLayout(0);
      sub_100090A7C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
      *v53 = Environment.init<A>(_:)();
      v53[8] = v54 & 1;
      v55 = v49 + v46[13];
      *v55 = v41;
      *(v55 + 1) = v42;
      v55[16] = v43;
      *v49 = sub_100020894;
      v49[1] = v44;
      *(v49 + *(v68 + 36)) = 0;
      sub_100008E68(v49, v66, &qword_100156AD8, &qword_1001102F8);
      swift_storeEnumTagMultiPayload();
      sub_10001DA10();
      sub_10001DBD4();
      _ConditionalContent<>.init(storage:)();
      v24 = v49;
      v25 = &qword_100156AD8;
      v26 = &qword_1001102F8;
    }
  }

  return sub_1000035CC(v24, v25, v26);
}

unint64_t sub_10001DA10()
{
  result = qword_100156B08;
  if (!qword_100156B08)
  {
    sub_10003AECC(&qword_100156AF0, &qword_100110310);
    sub_10001DAC8();
    sub_100004880(&qword_100156B30, &qword_100156B38, &qword_1001103E8, &unk_100111D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B08);
  }

  return result;
}

unint64_t sub_10001DAC8()
{
  result = qword_100156B10;
  if (!qword_100156B10)
  {
    sub_10003AECC(&qword_100156AF8, &qword_100110318);
    sub_100004880(&qword_100156B18, &qword_100156B20, &qword_1001103E0, &unk_100114DA8);
    sub_10001DB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B10);
  }

  return result;
}

unint64_t sub_10001DB80()
{
  result = qword_100156B28;
  if (!qword_100156B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B28);
  }

  return result;
}

unint64_t sub_10001DBD4()
{
  result = qword_100156B40;
  if (!qword_100156B40)
  {
    sub_10003AECC(&qword_100156AD8, &qword_1001102F8);
    sub_100004880(&qword_100156B48, &qword_100156B00, &qword_100110370, &unk_100114B50);
    sub_10001DB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B40);
  }

  return result;
}

NSString sub_10001DC8C()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B00 = result;
  return result;
}

uint64_t sub_10001DD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001DDE0(void *a1)
{
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

__n128 sub_10001DED8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v59 = *(a1 + 16);
  v60 = a2;
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
  swift_getTupleTypeMetadata2();
  v56 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v50 - v7;
  v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v8 - 8);
  v52 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v50 - v11);
  v50 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v50);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v3;
  v62 = v2;
  v19 = v2 + *(v3 + 48);
  v20 = *v19;
  LOBYTE(v3) = *(v19 + 8);

  if ((v3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    v20 = v63;
  }

  v22 = v62 + *(v61 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    v23 = v63;
  }

  swift_getKeyPath();
  v63 = v23;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v23 + 48);

  v51 = v14;
  if (v26)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_10001E850(v61);
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v12);
  v29 = v52;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v52);
  v30 = type metadata accessor for UserInterfaceSizeClass();
  v31 = *(*(v30 - 8) + 56);
  v32 = v51;
  v31(v51, 1, 1, v30);
  v33 = *(v50 + 20);
  v31((v32 + v33), 1, 1, v30);
  sub_10006E758(v12, v32);
  sub_10006E758(v29, v32 + v33);
  v34 = sub_1000D3C58(v20, v27 & 1, v32);
  v35 = sub_10003C9A0(v32);
  if (v27)
  {
    swift_getKeyPath();
    v63 = v20;
    sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v20 + 96);
    swift_getKeyPath();
    v63 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v36 / *(v20 + 104) <= 0.98)
    {
      v37 = 0.25;
    }

    else
    {
      v37 = 0.166666667;
    }
  }

  else if (sub_10003C9A0(v32))
  {
    v37 = 0.25;
  }

  else
  {
    v37 = 0.111111111;
  }

  v38 = 70.0;
  if (v34 >= 70.0)
  {
    v38 = v34;
  }

  v39 = 60.0;
  if (v34 >= 60.0)
  {
    v39 = v34;
  }

  if ((v35 & 1) == 0)
  {
    v38 = v39;
  }

  v40 = (v38 - v28) * 0.6;
  swift_getKeyPath();
  v63 = v20;
  sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v20 + 96);

  if (v37 * v41 < v40)
  {
    v40 = v37 * v41;
  }

  sub_10006E7C8(v32);
  v42 = static VerticalAlignment.bottom.getter();
  __chkstk_darwin(v42);
  v43 = *(v61 + 24);
  *(&v50 - 6) = v59;
  *(&v50 - 5) = v43;
  *(&v50 - 4) = v62;
  *(&v50 - 3) = v40 * 0.259259259;
  *(&v50 - 2) = v40 * 0.425;
  *(&v50 - 1) = v40;
  v44 = v53;
  HStack.init(alignment:spacing:content:)();
  v45 = v58;
  v46 = swift_getWitnessTable();
  v47 = v55;
  sub_100020EE8(v44, v45, v46);
  v48 = *(v57 + 8);
  v48(v44, v45);
  sub_100020EE8(v47, v45, v46);
  return (v48)(v47, v45);
}

double sub_10001E850(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v4 - 8);
  v28 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v27 = (&v26 - v7);
  v26 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + *(a1 + 48);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v15 = v29;
  }

  v18 = v27;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v27);
  v19 = v28;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v28);
  v20 = type metadata accessor for UserInterfaceSizeClass();
  v21 = *(*(v20 - 8) + 56);
  v21(v9, 1, 1, v20);
  v22 = *(v26 + 20);
  v21(&v9[v22], 1, 1, v20);
  sub_10006E758(v18, v9);
  sub_10006E758(v19, &v9[v22]);
  sub_1000D3FB8(v15, 0, v9);
  v24 = v23;

  sub_10006E7C8(v9);
  return v24;
}

BOOL sub_10001EB88()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return !sub_10003C1F8();
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return v4 != 6 || !sub_10003C1F8();
}

unint64_t sub_10001EC3C()
{
  result = qword_100154958;
  if (!qword_100154958)
  {
    type metadata accessor for CalculatorLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154958);
  }

  return result;
}

uint64_t sub_10001EC94@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a7@<D1>, double a8@<D2>)
{
  v91 = a5;
  v76 = a2;
  v74 = a3;
  v79 = type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, a4);
  v89 = *(v79 - 8);
  v87 = *(v89 + 64);
  __chkstk_darwin(v79);
  v88 = &v73[-v12];
  v13 = sub_10003AE84(&qword_1001598A8, &qword_100114C00);
  __chkstk_darwin(v13 - 8);
  v78 = &v73[-v14];
  v82 = sub_10003AE84(&qword_1001598B0, &unk_100114C08);
  __chkstk_darwin(v82);
  v84 = &v73[-v15];
  v86 = sub_10003AE84(&qword_1001598A0, &qword_100114BA8);
  __chkstk_darwin(v86);
  v90 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v83 = &v73[-v18];
  __chkstk_darwin(v19);
  v85 = &v73[-v20];
  v21 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v21 - 8);
  v77 = &v73[-v22];
  v23 = type metadata accessor for Optional();
  v75 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v73[-v24];
  v26 = type metadata accessor for ModifiedContent();
  v81 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v73[-v27];
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v29 = type metadata accessor for ModifiedContent();
  v92 = *(v29 - 8);
  __chkstk_darwin(v29);
  v80 = &v73[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v73[-v32];
  v35 = __chkstk_darwin(v34);
  v93 = &v73[-v36];
  (*a1)(v35);
  static Edge.Set.bottom.getter();
  v97[6] = a3;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v75 + 8))(v25, v23);
  v38 = type metadata accessor for Font.Design();
  v39 = v77;
  (*(*(v38 - 8) + 56))(v77, 1, 1, v38);
  static Font.system(size:weight:design:)();
  v40 = v74;
  sub_1000035CC(v39, &qword_1001567E0, &qword_10010F970);
  v97[4] = WitnessTable;
  v97[5] = &protocol witness table for _PaddingLayout;
  v41 = swift_getWitnessTable();
  View.font(_:)();

  v42 = v28;
  v43 = v76;
  (*(v81 + 8))(v42, v26);
  v44 = sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v97[2] = v41;
  v97[3] = v44;
  v77 = swift_getWitnessTable();
  sub_100020EE8(v33, v29, v77);
  v45 = *(v92 + 8);
  v46 = v33;
  v47 = v78;
  v81 = v29;
  v45(v46, v29);
  v48 = static HorizontalAlignment.trailing.getter();
  v49 = v79;
  v50 = sub_10001E850(v79);
  *v47 = v48;
  v51 = v49;
  *(v47 + 8) = v50;
  *(v47 + 16) = 0;
  v52 = sub_10003AE84(&qword_1001598B8, &unk_100114C18);
  v53 = v40;
  sub_100020F28(a1, v43, v40, v47 + *(v52 + 44), a7, a8);
  sub_10002248C(v51);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v84;
  sub_10000D5B8(v47, v84, &qword_1001598A8, &qword_100114C00);
  v55 = &v54[*(v82 + 36)];
  v56 = v101;
  v57 = v103;
  v58 = v104;
  v55[4] = v102;
  v55[5] = v57;
  v55[6] = v58;
  v59 = v99;
  *v55 = v98;
  v55[1] = v59;
  v55[2] = v100;
  v55[3] = v56;
  v60 = v89;
  v61 = v88;
  (*(v89 + 16))(v88, a1, v51);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v43;
  *(v63 + 24) = v53;
  (*(v60 + 32))(v63 + v62, v61, v51);
  v64 = v83;
  sub_10000D5B8(v54, v83, &qword_1001598B0, &unk_100114C08);
  v65 = v86;
  v66 = &v64[*(v86 + 36)];
  *v66 = 0;
  v66[1] = 0;
  v66[2] = sub_1000E7744;
  v66[3] = v63;
  v67 = v85;
  sub_10000D5B8(v64, v85, &qword_1001598A0, &qword_100114BA8);
  v68 = v80;
  v69 = v93;
  v70 = v81;
  (*(v92 + 16))(v80, v93, v81);
  v97[0] = v68;
  v71 = v90;
  sub_100008E68(v67, v90, &qword_1001598A0, &qword_100114BA8);
  v97[1] = v71;
  v96[0] = v70;
  v96[1] = v65;
  v94 = v77;
  v95 = sub_1000229B8();
  sub_100022AFC(v97, 2uLL, v96);
  sub_1000035CC(v67, &qword_1001598A0, &qword_100114BA8);
  v45(v69, v70);
  sub_1000035CC(v71, &qword_1001598A0, &qword_100114BA8);
  return v45(v68, v70);
}

uint64_t sub_10001F72C@<X0>(void *a1@<X8>)
{
  v70 = a1;
  v69 = sub_10003AE84(&qword_100156B58, &qword_1001103F8);
  __chkstk_darwin(v69);
  v3 = &v61 - v2;
  v67 = sub_10003AE84(&qword_100156B60, &qword_100110400);
  __chkstk_darwin(v67);
  v68 = &v61 - v4;
  v64 = sub_10003AE84(&qword_100156B68, &qword_100110408);
  __chkstk_darwin(v64);
  v65 = &v61 - v5;
  v63 = sub_10003AE84(&qword_100156B70, &qword_100110410);
  __chkstk_darwin(v63);
  v61 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  v66 = sub_10003AE84(&qword_100156B78, &qword_100110418);
  __chkstk_darwin(v66);
  v11 = &v61 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v71 = *(v12 - 8);
  v72 = v12;
  __chkstk_darwin(v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v1 + 8);
  v62 = v1;
  v75 = *v1;
  v15 = v75;
  v16 = v76;

  v17 = v15;
  v73 = v16;
  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
    (*(v71 + 8))(v14, v72);
    v17 = v74;
  }

  swift_getKeyPath();
  v74 = v17;
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v17 + 48);

  if (v19 > 2)
  {

LABEL_10:

    v24 = v15;
    if ((v73 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
      (*(v71 + 8))(v14, v72);
      v24 = v74;
    }

    swift_getKeyPath();
    v74 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v24 + 56);

    if (v26 == 1)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {

        v35 = v15;
        if ((v73 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v36 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
          (*(v71 + 8))(v14, v72);
          v35 = v74;
        }

        swift_getKeyPath();
        v74 = v35;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v37 = *(v35 + 56);

        if (v37 > 1)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            v50 = 1;
            v38 = v68;
LABEL_48:
            v59 = sub_10003AE84(&qword_100156B98, &qword_100110450);
            (*(*(v59 - 8) + 56))(v11, v50, 1, v59);
            v46 = &qword_100156B78;
            v47 = &qword_100110418;
            sub_100008E68(v11, v38, &qword_100156B78, &qword_100110418);
            swift_storeEnumTagMultiPayload();
            sub_100090AC4(&qword_100156B88, &qword_100156B78, &qword_100110418, sub_100020898);
            sub_100090AC4(&qword_100156C28, &qword_100156B58, &qword_1001103F8, sub_100020D18);
            _ConditionalContent<>.init(storage:)();
            v48 = v11;
            return sub_1000035CC(v48, v46, v47);
          }
        }

        if ((v73 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v51 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
          (*(v71 + 8))(v14, v72);
          v15 = v74;
        }

        v52 = *(v15 + 16);

        swift_getKeyPath();
        v74 = v52;
        sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v53 = CalculateExpression.unicode.getter();
        v55 = v54;

        v56 = HIBYTE(v55) & 0xF;
        if ((v55 & 0x2000000000000000) == 0)
        {
          v56 = v53 & 0xFFFFFFFFFFFFLL;
        }

        if (v56)
        {

          v9 = v61;
          sub_10008EDA8(1, v53, v55, 0x2065646F63696E55, 0xED000065756C6176, "Unicode text tooltip in the display area", 40, v61);
          v57 = 0;
          v38 = v68;
        }

        else
        {
          v57 = 1;
          v38 = v68;
          v9 = v61;
        }

        v58 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
        (*(*(v58 - 8) + 56))(v9, v57, 1, v58);
LABEL_47:
        sub_100008E68(v9, v65, &qword_100156B70, &qword_100110410);
        swift_storeEnumTagMultiPayload();
        sub_100090AC4(&qword_100156BA0, &qword_100156B70, &qword_100110410, sub_100020948);
        _ConditionalContent<>.init(storage:)();
        sub_1000035CC(v9, &qword_100156B70, &qword_100110410);
        v50 = 0;
        goto LABEL_48;
      }
    }

    if ((v73 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
      (*(v71 + 8))(v14, v72);
      v15 = v74;
    }

    v29 = *(v15 + 16);

    swift_getKeyPath();
    v74 = v29;
    sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = CalculateExpression.ascii.getter();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {

      sub_10008EDA8(1, v30, v32, 0x6176204949435341, 0xEB0000000065756CLL, "ASCII text tooltip in the display area", 38, v9);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v38 = v68;

    v39 = sub_10003AE84(&qword_100156BB0, &qword_100110458);
    (*(*(v39 - 8) + 56))(v9, v34, 1, v39);
    goto LABEL_47;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_10;
  }

  v21 = v15;
  if ((v73 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
    (*(v71 + 8))(v14, v72);
    v21 = v74;
  }

  swift_getKeyPath();
  v74 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v21 + 48);

  if (v23)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {

      if ((v73 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v42 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v75, &qword_100154810, &qword_10010DF90);
        (*(v71 + 8))(v14, v72);
        v15 = v74;
      }

      v43 = *(v15 + 16);

      swift_getKeyPath();
      v74 = v43;
      sub_100090A7C(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LOBYTE(v43) = CalculateExpression.assumeDegrees.getter();

      if (v43)
      {
        v41 = 1;
      }

      else
      {
        sub_10008F650(0, v3);
        v41 = 0;
      }

      goto LABEL_35;
    }
  }

  else
  {
  }

  v41 = 1;
LABEL_35:
  v44 = v68;
  v45 = sub_10003AE84(&qword_100156B80, &qword_100110448);
  (*(*(v45 - 8) + 56))(v3, v41, 1, v45);
  v46 = &qword_100156B58;
  v47 = &qword_1001103F8;
  sub_100008E68(v3, v44, &qword_100156B58, &qword_1001103F8);
  swift_storeEnumTagMultiPayload();
  sub_100090AC4(&qword_100156B88, &qword_100156B78, &qword_100110418, sub_100020898);
  sub_100090AC4(&qword_100156C28, &qword_100156B58, &qword_1001103F8, sub_100020D18);
  _ConditionalContent<>.init(storage:)();
  v48 = v3;
  return sub_1000035CC(v48, v46, v47);
}

uint64_t sub_1000207F8@<X0>(void *a1@<X8>)
{
  sub_10001F72C(a1);
  v2 = sub_10003AE84(&qword_100156B50, &qword_1001103F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_100020898()
{
  result = qword_100156B90;
  if (!qword_100156B90)
  {
    sub_10003AECC(&qword_100156B98, &qword_100110450);
    sub_100090AC4(&qword_100156BA0, &qword_100156B70, &qword_100110410, sub_100020948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156B90);
  }

  return result;
}

unint64_t sub_100020948()
{
  result = qword_100156BA8;
  if (!qword_100156BA8)
  {
    sub_10003AECC(&qword_100156BB0, &qword_100110458);
    sub_100020A00(&qword_100156BB8, &qword_100156BC0, &qword_100110460, sub_100020B34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156BA8);
  }

  return result;
}

uint64_t sub_100020A00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_100004880(&qword_100156C18, &qword_100156C20, &qword_100110490, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100020AB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020B94()
{
  result = qword_100156BE8;
  if (!qword_100156BE8)
  {
    sub_10003AECC(&qword_100156BF0, &qword_100110478);
    sub_100020C4C(&qword_100156BF8, &qword_100156C00, &qword_100110480, &opaque type descriptor for <<opaque return type of View.help(_:)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156BE8);
  }

  return result;
}

uint64_t sub_100020C4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100156C08, &qword_100156C10, &qword_100110488, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020D18()
{
  result = qword_100156C30;
  if (!qword_100156C30)
  {
    sub_10003AECC(&qword_100156B80, &qword_100110448);
    sub_100020A00(&qword_100156C38, &qword_100156C40, &qword_100110498, sub_100020DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156C30);
  }

  return result;
}

unint64_t sub_100020E30()
{
  result = qword_100156C68;
  if (!qword_100156C68)
  {
    sub_10003AECC(&qword_100156C70, &qword_1001104B0);
    sub_100020C4C(&qword_100156C78, &qword_100156C80, &qword_1001104B8, &opaque type descriptor for <<opaque return type of View.help(_:)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156C68);
  }

  return result;
}

uint64_t sub_100020F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v142 = a4;
  v11 = sub_10003AE84(&qword_1001598D8, &qword_100114C50);
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v133 = &v115 - v12;
  v13 = sub_10003AE84(&qword_1001598E0, &qword_100114C58);
  __chkstk_darwin(v13 - 8);
  v139 = &v115 - v14;
  v138 = sub_10003AE84(&qword_1001598E8, &qword_100114C60);
  __chkstk_darwin(v138);
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v137 = &v115 - v17;
  __chkstk_darwin(v18);
  v140 = &v115 - v19;
  v20 = sub_10003AE84(&qword_1001598F0, &qword_100114C68);
  __chkstk_darwin(v20);
  v129 = &v115 - v21;
  v22 = type metadata accessor for Locale();
  __chkstk_darwin(v22 - 8);
  v136 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v24 - 8);
  v153 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AccessibilityChildBehavior();
  v148 = *(v26 - 8);
  v149 = v26;
  __chkstk_darwin(v26);
  v131 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v121 = &v115 - v29;
  v151 = a2;
  v152 = a3;
  v31 = type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, v30);
  v32 = *(v31 - 8);
  v33 = *(v32 + 8);
  __chkstk_darwin(v31);
  v145 = &v115 - v34;
  v122 = sub_10003AE84(&qword_1001598F8, &qword_100114C70);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v115 - v35;
  v36 = sub_10003AE84(&qword_100159900, &qword_100114C78);
  __chkstk_darwin(v36 - 8);
  v124 = &v115 - v37;
  v130 = sub_10003AE84(&qword_100159908, &qword_100114C80);
  __chkstk_darwin(v130);
  v123 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v125 = &v115 - v40;
  v41 = type metadata accessor for EnvironmentValues();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v143 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10003AE84(&qword_100159910, &qword_100114C88);
  __chkstk_darwin(v44 - 8);
  v132 = &v115 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v154 = &v115 - v47;
  v146 = v31;
  v48 = *(v31 + 44);
  v150 = a1;
  v49 = a1 + v48;
  v50 = *v49;
  LODWORD(a1) = *(v49 + 8);

  v51 = v50;
  v147 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v53 = v143;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v42 + 8))(v53, v41);
    v51 = v155;
  }

  v126 = v42;
  v127 = v41;
  v54 = *(v51 + 2);

  swift_getKeyPath();
  v155 = v54;
  v144 = sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v54 + 41);

  v128 = v50;
  if (v55 == 1)
  {
    v118 = v20;
    v57 = v145;
    v56 = v146;
    v117 = *(v32 + 2);
    v117(v145, v150, v146);
    v58 = (v32[80] + 32) & ~v32[80];
    v116 = v33 + 7;
    v59 = (v33 + 7 + v58) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v152;
    *(v60 + 16) = v151;
    *(v60 + 24) = v61;
    (*(v32 + 4))(v60 + v58, v57, v56);
    *(v60 + v59) = a5;
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v166[0]) = BYTE8(v171);
    v169 = BYTE8(v172);
    v155 = sub_1000E79CC;
    v156 = v60;
    v157 = sub_100094548;
    v158 = 0;
    v159 = v171;
    v160 = BYTE8(v171);
    *v161 = v174;
    *&v161[3] = *(&v174 + 3);
    v162 = v172;
    v163 = BYTE8(v172);
    *v164 = *v168;
    *&v164[3] = *&v168[3];
    v165 = v173;
    if (_AXSAutomationEnabled())
    {
      v62 = v121;
      static AccessibilityChildBehavior.contain.getter();
    }

    else
    {
      v62 = v121;
      static AccessibilityChildBehavior.ignore.getter();
    }

    v68 = v124;
    v124 = v32;
    v69 = sub_10003AE84(&qword_100159930, &qword_100114CC0);
    v70 = sub_100022210();
    v71 = v119;
    View.accessibilityElement(children:)();
    (*(v148 + 8))(v62, v149);

    v155 = v69;
    v156 = v70;
    swift_getOpaqueTypeConformance2();
    v72 = v122;
    View.accessibilityIdentifier(_:)();
    (*(v120 + 8))(v71, v72);

    v73 = v50;
    if ((v147 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v74 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v75 = v143;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v126 + 8))(v75, v127);
      v73 = v155;
    }

    v76 = *(v73 + 2);
    swift_getKeyPath();
    v155 = v76;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v77 = *(v76 + 32);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    v80 = v79;
    v81 = v123;
    sub_10000D5B8(v68, v123, &qword_100159900, &qword_100114C78);
    v82 = (v81 + *(v130 + 36));
    *v82 = v77;
    v82[1] = v78;
    v82[2] = v80;
    v83 = v125;
    sub_10000D5B8(v81, v125, &qword_100159908, &qword_100114C80);
    sub_100008E68(v83, v129, &qword_100159908, &qword_100114C80);
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100159918, &qword_100114CB8);
    sub_10002208C();
    sub_10002231C();
    _ConditionalContent<>.init(storage:)();
    sub_1000035CC(v83, &qword_100159908, &qword_100114C80);
    v32 = v124;
    v67 = v116;
    v66 = v117;
  }

  else
  {
    v63 = static HorizontalAlignment.center.getter();
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v170[39] = v173;
    *&v170[23] = v172;
    *&v170[7] = v171;
    v64 = *&v170[16];
    v65 = v129;
    *(v129 + 17) = *v170;
    LOBYTE(v155) = 1;
    *v65 = v63;
    *(v65 + 8) = 0;
    *(v65 + 16) = 1;
    *(v65 + 33) = v64;
    *(v65 + 49) = *&v170[32];
    *(v65 + 64) = *&v170[47];
    swift_storeEnumTagMultiPayload();
    sub_10003AE84(&qword_100159918, &qword_100114CB8);
    sub_10002208C();
    sub_10002231C();
    _ConditionalContent<>.init(storage:)();
    v66 = *(v32 + 2);
    v67 = v33 + 7;
  }

  v85 = v145;
  v84 = v146;
  v66(v145, v150, v146);
  v86 = (v32[80] + 32) & ~v32[80];
  v87 = (v67 + v86) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v152;
  *(v88 + 16) = v151;
  *(v88 + 24) = v89;
  (*(v32 + 4))(v88 + v86, v85, v84);
  *(v88 + v87) = a6;
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  v169 = v175;
  v167 = v177;
  v155 = sub_1000238C0;
  v156 = v88;
  v157 = sub_100094548;
  v158 = 0;
  v159 = v174;
  v160 = v175;
  *v161 = *v168;
  *&v161[3] = *&v168[3];
  v162 = v176;
  v163 = v177;
  *v164 = v166[0];
  *&v164[3] = *(v166 + 3);
  v165 = v178;
  v90 = _AXSAutomationEnabled();
  v91 = v131;
  if (v90)
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  v92 = v128;
  v93 = sub_10003AE84(&qword_100159970, &qword_100114CD8);
  v94 = sub_1000223D4();
  v95 = v133;
  View.accessibilityElement(children:)();
  (*(v148 + 8))(v91, v149);

  v155 = v93;
  v156 = v94;
  swift_getOpaqueTypeConformance2();
  v96 = v139;
  v97 = v135;
  View.accessibilityIdentifier(_:)();
  (*(v134 + 8))(v95, v97);

  if ((v147 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v98 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v99 = v143;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v126 + 8))(v99, v127);
    v92 = v155;
  }

  v100 = *(v92 + 2);
  swift_getKeyPath();
  v155 = v100;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v101 = *(v100 + 24);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v102 = String.init(localized:table:bundle:locale:comment:)();
  v104 = v103;
  v105 = v96;
  v106 = v137;
  sub_10000D5B8(v105, v137, &qword_1001598E0, &qword_100114C58);
  v107 = (v106 + *(v138 + 36));
  *v107 = v101;
  v107[1] = v102;
  v107[2] = v104;
  v108 = v140;
  sub_10000D5B8(v106, v140, &qword_1001598E8, &qword_100114C60);
  v109 = v154;
  v110 = v132;
  sub_100008E68(v154, v132, &qword_100159910, &qword_100114C88);
  v111 = v141;
  sub_100008E68(v108, v141, &qword_1001598E8, &qword_100114C60);
  v112 = v142;
  sub_100008E68(v110, v142, &qword_100159910, &qword_100114C88);
  v113 = sub_10003AE84(&qword_100159990, &qword_100114D10);
  sub_100008E68(v111, v112 + *(v113 + 48), &qword_1001598E8, &qword_100114C60);
  sub_1000035CC(v108, &qword_1001598E8, &qword_100114C60);
  sub_1000035CC(v109, &qword_100159910, &qword_100114C88);
  sub_1000035CC(v111, &qword_1001598E8, &qword_100114C60);
  return sub_1000035CC(v110, &qword_100159910, &qword_100114C88);
}

unint64_t sub_10002208C()
{
  result = qword_100159920;
  if (!qword_100159920)
  {
    sub_10003AECC(&qword_100159908, &qword_100114C80);
    sub_100022118();
    sub_1000222C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159920);
  }

  return result;
}

unint64_t sub_100022118()
{
  result = qword_100159928;
  if (!qword_100159928)
  {
    sub_10003AECC(&qword_100159900, &qword_100114C78);
    sub_10003AECC(&qword_100159930, &qword_100114CC0);
    sub_100022210();
    swift_getOpaqueTypeConformance2();
    sub_100006650(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159928);
  }

  return result;
}

unint64_t sub_100022210()
{
  result = qword_100159938;
  if (!qword_100159938)
  {
    sub_10003AECC(&qword_100159930, &qword_100114CC0);
    sub_100004880(&qword_100159940, &qword_100159948, &qword_100114CC8, &unk_100110F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159938);
  }

  return result;
}

unint64_t sub_1000222C8()
{
  result = qword_100159950;
  if (!qword_100159950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159950);
  }

  return result;
}

unint64_t sub_10002231C()
{
  result = qword_100159958;
  if (!qword_100159958)
  {
    sub_10003AECC(&qword_100159918, &qword_100114CB8);
    sub_100004880(&qword_100159960, &qword_100159968, &qword_100114CD0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159958);
  }

  return result;
}

unint64_t sub_1000223D4()
{
  result = qword_100159978;
  if (!qword_100159978)
  {
    sub_10003AECC(&qword_100159970, &qword_100114CD8);
    sub_100004880(&qword_100159980, &qword_100159988, &qword_100114CE0, &unk_100110F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159978);
  }

  return result;
}

double sub_10002248C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v4 - 8);
  v38 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v37 = &v34[-v7];
  v36 = type metadata accessor for CalculatorSizeClass(0);
  __chkstk_darwin(v36);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v2 + *(a1 + 48);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v15 = v39;
  }

  v18 = v2 + *(a1 + 44);
  v19 = *v18;
  v20 = *(v18 + 8);

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v19 = v39;
  }

  swift_getKeyPath();
  v39 = v19;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v19 + 48);

  if (v22)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v35 = 1;
  }

  v23 = v37;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v37);
  v24 = v38;
  sub_1000E7568(&qword_100154F90, &qword_10010C910, &qword_100154948, qword_1001130B0, v38);
  v25 = type metadata accessor for UserInterfaceSizeClass();
  v26 = *(*(v25 - 8) + 56);
  v26(v9, 1, 1, v25);
  v27 = *(v36 + 20);
  v26(&v9[v27], 1, 1, v25);
  sub_10006E758(v23, v9);
  sub_10006E758(v24, &v9[v27]);
  v28 = sub_1000D3C58(v15, v35 & 1, v9);
  v29 = sub_10003C9A0(v9);

  v30 = 60.0;
  if (v28 >= 60.0)
  {
    v30 = v28;
  }

  v31 = 70.0;
  if (v28 >= 70.0)
  {
    v31 = v28;
  }

  if (v29)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  sub_10006E7C8(v9);
  return v32;
}

unint64_t sub_1000229B8()
{
  result = qword_1001598C0;
  if (!qword_1001598C0)
  {
    sub_10003AECC(&qword_1001598A0, &qword_100114BA8);
    sub_100022A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001598C0);
  }

  return result;
}

unint64_t sub_100022A44()
{
  result = qword_1001598C8;
  if (!qword_1001598C8)
  {
    sub_10003AECC(&qword_1001598B0, &unk_100114C08);
    sub_100004880(&qword_1001598D0, &qword_1001598A8, &qword_100114C00, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001598C8);
  }

  return result;
}

uint64_t sub_100022AFC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

unint64_t sub_100022CEC()
{
  result = qword_100156A80;
  if (!qword_100156A80)
  {
    sub_10003AECC(&qword_100156A48, &qword_100110118);
    sub_100004880(&qword_100156A58, &qword_100156A50, &unk_100110120, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100090A7C(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156A80);
  }

  return result;
}

uint64_t sub_100022E18(uint64_t *a1)
{
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for GridRow();

  return swift_getWitnessTable();
}

uint64_t sub_100022EDC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100022FBC()
{
  result = qword_100156960;
  if (!qword_100156960)
  {
    type metadata accessor for CalculateExpressionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156960);
  }

  return result;
}

__n128 sub_100023014(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  v27 = a4;
  v24 = a7;
  v25 = a3;
  v28 = a9;
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for GridRow();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v23 - v18;
  static VerticalAlignment.firstTextBaseline.getter();
  v29 = a5;
  v30 = a6;
  v31 = v24;
  v32 = v26;
  v33 = a1;
  v34 = a2;
  v35 = v25;
  v36 = v27;
  GridRow.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v16, v13, WitnessTable);
  v21 = *(v14 + 8);
  v21(v16, v13);
  sub_100020EE8(v19, v13, WitnessTable);
  return (v21)(v19, v13);
}

uint64_t sub_100023250@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v37 = a2;
  v38 = a7;
  v34 = a6;
  v36 = a3;
  v40 = a8;
  v11 = type metadata accessor for Optional();
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *(a4 - 8);
  __chkstk_darwin(v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v41 = &v33 - v23;
  a1(v22);
  v33 = a4;
  sub_100020EE8(v20, a4, a6);
  v35 = *(v17 + 8);
  v24 = v35(v20, a4);
  v37(v24);
  v45[2] = v38;
  WitnessTable = swift_getWitnessTable();
  v26 = v16;
  sub_100020EE8(v13, v11, WitnessTable);
  v27 = v39;
  v28 = *(v39 + 8);
  v28(v13, v11);
  v29 = *(v17 + 16);
  v30 = v33;
  v29(v20, v41, v33);
  v45[0] = v20;
  (*(v27 + 16))(v13, v26, v11);
  v45[1] = v13;
  v44[0] = v30;
  v44[1] = v11;
  v42 = v34;
  v43 = WitnessTable;
  sub_100022AFC(v45, 2uLL, v44);
  v28(v26, v11);
  v31 = v35;
  v35(v41, v30);
  v28(v13, v11);
  return v31(v20, v30);
}

uint64_t sub_10002356C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CalculatorStandardDisplayView(0, a2, a3, v12);
  v14 = a1 + *(v13 + 44);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v15 = v29;
  }

  v18 = *(v15 + 16);
  swift_getKeyPath();
  v29 = v18;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + 24);

  if (qword_100154530 != -1)
  {
    swift_once();
  }

  v20 = qword_100160B58;
  type metadata accessor for CalculatorViewModel(0);
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);

  v29 = Environment.init<A>(_:)();
  v30 = v21 & 1;
  v31 = v19;
  v32 = 0;
  v33 = v20;
  v34 = 1;
  v35 = a4;
  v26 = sub_1000E68CC(v13);
  v27 = v22;
  v28 = v23;
  v25[15] = 0;
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  sub_100023954();
  sub_1000239A8();
  View.focused<A>(_:equals:)();
}

uint64_t sub_1000238D8()
{
  result = static Color.primary.getter();
  qword_100160B58 = result;
  return result;
}

uint64_t sub_1000238F8()
{
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v1;
}

unint64_t sub_100023954()
{
  result = qword_1001599B0;
  if (!qword_1001599B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001599B0);
  }

  return result;
}

unint64_t sub_1000239A8()
{
  result = qword_100157818;
  if (!qword_100157818)
  {
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157818);
  }

  return result;
}

uint64_t sub_100023A2C()
{
  v1 = sub_10003AE84(&qword_100156948, &qword_10010FBC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2 - 8];
  v15 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v14[0] = *(v0 + 41);
  *(v14 + 3) = *(v0 + 11);
  v7 = *(v0 + 6);
  v8 = *(v0 + 40);
  v9 = type metadata accessor for Text.TruncationMode();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v16 = v15;
  v17 = BYTE8(v15);
  v18 = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = v15;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  *(v10 + 56) = v8;
  *(v10 + 57) = v14[0];
  *(v10 + 60) = *(v14 + 3);
  *(v10 + 64) = v7;
  swift_retain_n();
  swift_retain_n();
  sub_100008E68(&v16, v13, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v18, v13, &qword_100158FF8, &qword_100113A78);
  return CalculateExpressionView.init(expression:isEditable:height:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)();
}

uint64_t sub_100023C10()
{

  return swift_deallocObject();
}

unint64_t sub_100023C6C()
{
  result = qword_1001575C8;
  if (!qword_1001575C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001575C8);
  }

  return result;
}

void sub_100023CC0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 initializeBufferWithCopyOfBuffer for InsettableRoundendRectangle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100023CE0(uint64_t *a1)
{
  sub_100023D3C(*a1, a1[1], a1[2]);
  sub_100023C6C();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100023D3C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;
  }

  return result;
}

void sub_100023D7C(uint64_t a1, char a2)
{
  if (*a1)
  {
    if (a2)
    {
      if (qword_1001546E0 != -1)
      {
        swift_once();
      }

      v3 = qword_100160D30;
      v4 = qword_100160D30;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 16) = v3;
  }
}

unint64_t sub_100023E08()
{
  result = qword_1001576F8;
  if (!qword_1001576F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001576F8);
  }

  return result;
}

unint64_t sub_100023E60()
{
  result = qword_100156318;
  if (!qword_100156318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156318);
  }

  return result;
}

uint64_t sub_100023EB4()
{
  v1 = (type metadata accessor for GenericRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[15];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100023FD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100024014()
{
  v1 = type metadata accessor for InputAccessoryView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000242CC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100024324()
{

  return swift_deallocObject();
}

uint64_t sub_100024374()
{

  sub_100030EDC(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1000243D8()
{

  return swift_deallocObject();
}

uint64_t sub_100024420()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = type metadata accessor for EditMode();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v7 = v1[9];
  v8 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v9 = *(*(v8 - 8) + 8);
  v9(v2 + v7, v8);
  v9(v2 + v1[10], v8);
  v9(v2 + v1[11], v8);

  return swift_deallocObject();
}

uint64_t sub_10002464C()
{
  v1 = type metadata accessor for CalculatorDetailsView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 24);
  sub_10003AE84(&qword_100154FA0, &unk_100110DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for LayoutDirection();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000248F8()
{

  sub_1000309E0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_100024948()
{
  v1 = type metadata accessor for CalculatorKeypadView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100024BD8()
{

  return swift_deallocObject();
}

uint64_t sub_100024C30()
{
  v1 = (type metadata accessor for ModeMenuView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_100030EDC(*v2, *(v2 + 8));

  v3 = v1[8];
  v4 = type metadata accessor for LayoutDirection();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_100024D38()
{
  v1 = (type metadata accessor for CalculatorHistoryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for EditMode();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10003AE84(&qword_100157F98, qword_100112550);

  v5 = v1[13];
  v6 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v5, v6);
  v7(v2 + v1[14], v6);

  return swift_deallocObject();
}

uint64_t sub_100024F00()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v1[10];
  if (!v6(v2 + v7, 1, v4))
  {
    (*(v5 + 8))(v2 + v7, v4);
  }

  v8 = v1[15];
  v9 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v10 = *(*(v9 - 8) + 8);
  v10(v2 + v8, v9);
  v10(v2 + v1[16], v9);
  v10(v2 + v1[17], v9);
  v10(v2 + v1[18], v9);
  v10(v2 + v1[19], v9);
  v10(v2 + v1[20], v9);

  return swift_deallocObject();
}

uint64_t sub_1000251BC()
{
  v1 = type metadata accessor for CalculatorAppContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + *(v1 + 24);
  v10 = sub_10003AE84(&qword_1001593A0, &qword_100114170);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_10003AE84(&qword_1001593A8, &qword_100114178);

  return swift_deallocObject();
}

uint64_t sub_100025460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CalculatorStandardDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 36);
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = *(v5 + 40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000256C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CalculatorUnitConversionDisplayView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  v7 = v5[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v5[19];
  v14 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v14 - 8) + 8))(v6 + v13, v14);

  return swift_deallocObject();
}

uint64_t sub_10002599C()
{
  v2 = *(v0 + 56);
  v14 = *(v0 + 32);
  v1 = v14;
  v15 = *(v0 + 40);
  v13 = v15;
  v16 = v2;
  v3 = type metadata accessor for CalculatorPresentationView(0, &v14);
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  swift_unknownObjectRelease();
  v5 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  (*(*(v13 - 8) + 8))(v0 + v4 + v3[13]);
  v6 = v3[14];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

_DWORD *initializeBufferWithCopyOfBuffer for CalculatorKeypadButton(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for CalculatorButtonRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 93 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 93) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA3)
  {
    v4 = 0;
  }

  if (a2 > 0xA2)
  {
    v5 = ((a2 - 163) >> 8) + 1;
    *result = a2 + 93;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 93;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100025D2C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x10000) != 0)
  {
    if (qword_100154510 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
    {
      if (v1 > 0x24u)
      {
        if (v1 == 37)
        {
          return 38;
        }

        else if (v1 == 56)
        {
          return 31;
        }
      }

      else if (v1 == 9)
      {
        return 93;
      }

      else if (v1 == 31)
      {
        return 56;
      }

      return v1;
    }
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_16;
  }

  if (qword_100154508 != -1)
  {
    swift_once();
  }

  if (!sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
  {
LABEL_16:
    if ((v1 & 0x1000000FFLL) == 0x100000003)
    {
      v3 = 35;
    }

    else
    {
      v3 = v1;
    }

    if ((v1 & 0x10000FF) == 0x1000001)
    {
      return 2;
    }

    else
    {
      return v3;
    }
  }

  return CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
}

uint64_t sub_100025E90(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.allClear.getter();
      break;
    case 2:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.clear.getter();
      break;
    case 3:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.negate.getter();
      break;
    case 4:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.percent.getter();
      break;
    case 5:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.divide.getter();
      break;
    case 6:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.multiply.getter();
      break;
    case 7:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.subtract.getter();
      break;
    case 8:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.add.getter();
      break;
    case 9:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.equals.getter();
      break;
    case 10:
    case 54:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.decimal.getter();
      break;
    case 12:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit0.getter();
      break;
    case 13:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit1.getter();
      break;
    case 14:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit2.getter();
      break;
    case 15:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit3.getter();
      break;
    case 16:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit4.getter();
      break;
    case 17:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit5.getter();
      break;
    case 18:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit6.getter();
      break;
    case 19:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit7.getter();
      break;
    case 20:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit8.getter();
      break;
    case 21:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit9.getter();
      break;
    case 22:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.openParenthesis.getter();
      break;
    case 23:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.closeParenthesis.getter();
      break;
    case 29:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.square.getter();
      break;
    case 30:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cube.getter();
      break;
    case 31:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.power.getter();
      break;
    case 32:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBaseEuler.getter();
      break;
    case 33:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBase10.getter();
      break;
    case 34:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.reciprocal.getter();
      break;
    case 35:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.squareRoot.getter();
      break;
    case 36:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cubeRoot.getter();
      break;
    case 37:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.root.getter();
      break;
    case 38:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.reverseRoot.getter();
      break;
    case 39:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmNatural.getter();
      break;
    case 40:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBase10.getter();
      break;
    case 41:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.factorial.getter();
      break;
    case 42:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.sine.getter();
      break;
    case 43:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.cosine.getter();
      break;
    case 44:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.tangent.getter();
      break;
    case 45:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.eulerNumber.getter();
      break;
    case 46:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.ee.getter();
      break;
    case 48:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicSine.getter();
      break;
    case 49:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicCosine.getter();
      break;
    case 50:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.hyperbolicTangent.getter();
      break;
    case 51:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.pi.getter();
      break;
    case 52:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.random.getter();
      break;
    case 53:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.delete.getter();
      break;
    case 56:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBaseCustom.getter();
      break;
    case 57:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.exponentialBase2.getter();
      break;
    case 58:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBaseCustom.getter();
      break;
    case 59:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.logarithmBase2.getter();
      break;
    case 60:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseSine.getter();
      break;
    case 61:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseCosine.getter();
      break;
    case 62:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseTangent.getter();
      break;
    case 63:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicSine.getter();
      break;
    case 64:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicCosine.getter();
      break;
    case 65:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.inverseHyperbolicTangent.getter();
      break;
    case 66:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitA.getter();
      break;
    case 67:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitB.getter();
      break;
    case 68:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitC.getter();
      break;
    case 69:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitD.getter();
      break;
    case 70:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitE.getter();
      break;
    case 71:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitF.getter();
      break;
    case 72:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digitFF.getter();
      break;
    case 73:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.digit00.getter();
      break;
    case 74:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.and.getter();
      break;
    case 75:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.or.getter();
      break;
    case 76:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.nor.getter();
      break;
    case 77:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.xor.getter();
      break;
    case 78:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightShift.getter();
      break;
    case 79:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftShift.getter();
      break;
    case 80:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightShiftCustom.getter();
      break;
    case 81:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftShiftCustom.getter();
      break;
    case 82:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rightRotate.getter();
      break;
    case 83:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.leftRotate.getter();
      break;
    case 84:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.byteFlip.getter();
      break;
    case 85:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.wordFlip.getter();
      break;
    case 86:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.neg.getter();
      break;
    case 87:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.not.getter();
      break;
    case 88:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.mod.getter();
      break;
    case 89:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.drop.getter();
      break;
    case 90:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.swap.getter();
      break;
    case 91:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rollOut.getter();
      break;
    case 92:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.rollIn.getter();
      break;
    case 93:
      type metadata accessor for CalculateExpression.Operation();
      result = static CalculateExpression.Operation.enter.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000266E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.contains(_:)();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for CalculateExpression.Operation(), sub_1000065C0(&qword_100157708, &type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation), v5 = dispatch thunk of Hashable._rawHashValue(seed:)(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_1000065C0(&qword_100154FC8, &type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
      do
      {
        v9 = dispatch thunk of static Equatable.== infix(_:_:)();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_100026874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002693C()
{
  result = qword_100157398;
  if (!qword_100157398)
  {
    sub_10003AECC(&qword_100157388, &qword_1001115D0);
    sub_1000269F8();
    sub_1000999E8(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157398);
  }

  return result;
}

unint64_t sub_1000269F8()
{
  result = qword_1001573A0;
  if (!qword_1001573A0)
  {
    sub_10003AECC(&qword_1001573A8, &qword_1001115E0);
    sub_10003AECC(&qword_1001573B0, &qword_1001115E8);
    sub_100004880(&qword_1001573B8, &qword_1001573B0, &qword_1001115E8, &protocol conformance descriptor for Button<A>);
    sub_100026B34();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573A0);
  }

  return result;
}

unint64_t sub_100026B34()
{
  result = qword_1001573C0;
  if (!qword_1001573C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573C0);
  }

  return result;
}

unint64_t sub_100026BA8()
{
  result = qword_1001584B0;
  if (!qword_1001584B0)
  {
    sub_10003AECC(&qword_100158408, &qword_100112D00);
    sub_100026C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584B0);
  }

  return result;
}

unint64_t sub_100026C34()
{
  result = qword_1001584B8;
  if (!qword_1001584B8)
  {
    sub_10003AECC(&qword_100158400, &qword_100112CF8);
    sub_100026CEC();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584B8);
  }

  return result;
}

unint64_t sub_100026CEC()
{
  result = qword_1001584C0;
  if (!qword_1001584C0)
  {
    sub_10003AECC(&qword_100158450, &qword_100112DA8);
    sub_100026DA4();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584C0);
  }

  return result;
}

unint64_t sub_100026DA4()
{
  result = qword_1001584C8;
  if (!qword_1001584C8)
  {
    sub_10003AECC(&qword_100158448, &qword_100112D70);
    sub_1000B8F8C(&qword_1001584D0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001584C8);
  }

  return result;
}

void sub_100026EA4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for LayoutSubviews();
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v13 != v12)
  {
    sub_100027084(a5, a1, a2 & 1, a3, a4 & 1);
    if (__OFSUB__(*(v6 + 16), 1))
    {
      __break(1u);
    }

    else if (!__OFSUB__(*(v6 + 8), 1))
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_10002703C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100027084(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v52) = a5;
  v53 = a1;
  v55 = type metadata accessor for LayoutSubview();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LayoutSubviews();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  if ((a3 & 1) != 0 || (a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v18 = INFINITY;
  }

  else
  {
    v19 = *(v5 + 16);
    if (__OFSUB__(v19, 1))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v20 = *&a2 - *(v5 + 24) * (v19 - 1);
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    v18 = v20 / v19;
  }

  v21 = *(v5 + 8);
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  v22 = *&a4;
  if (LOBYTE(v52))
  {
    v22 = 10.0;
  }

  v49 = v5;
  v23 = v22 - *(v5 + 24) * (v21 - 1);
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  (*(v12 + 16))(v14, v53, v11);
  sub_10002703C(&unk_1001564D0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v25 = *(v15 + 36);
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v17[v25] == v57[0])
  {
    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    v52 = v24 / v21;
    v53 = *&v18;
    v50 = (v9 + 8);
    v51 = (v9 + 16);
    v26 = _swiftEmptyArrayStorage;
    v42 = v55;
    do
    {
      v43 = dispatch thunk of Collection.subscript.read();
      v44 = v54;
      (*v51)(v54);
      v43(v57, 0);
      dispatch thunk of Collection.formIndex(after:)();
      LOBYTE(v57[0]) = 0;
      v56 = 0;
      LayoutSubview.sizeThatFits(_:)();
      v46 = v45;
      (*v50)(v44, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10002BA10(0, *(v26 + 2) + 1, 1, v26);
      }

      v48 = *(v26 + 2);
      v47 = *(v26 + 3);
      if (v48 >= v47 >> 1)
      {
        v26 = sub_10002BA10((v47 > 1), v48 + 1, 1, v26);
      }

      *(v26 + 2) = v48 + 1;
      *&v26[8 * v48 + 32] = v46;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v17[v25] != v57[0]);
  }

  sub_10002BDE8(v17);
  v27 = *(v26 + 2);
  v28 = v49;
  if (v27)
  {
    v29 = *(v26 + 4);
    v30 = v27 - 1;
    if (v30)
    {
      v31 = (v26 + 40);
      do
      {
        v32 = *v31++;
        v33 = v32;
        if (v29 < v32)
        {
          v29 = v33;
        }

        --v30;
      }

      while (v30);
    }
  }

  v34 = objc_opt_self();
  v35 = [v34 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36)
  {
    v37 = [objc_opt_self() mainScreen];
    [v37 bounds];

    sub_10003C664();
  }

  v38 = [v34 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 1)
  {
    v40 = *v28;
    swift_getKeyPath();
    v57[0] = v40;
    sub_10002703C(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = [objc_opt_self() mainScreen];
    [v41 bounds];
  }
}

uint64_t sub_1000276EC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100027704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100027728()
{
  sub_10003AE84(&qword_100157380, &qword_1001115C8);
  sub_10003AECC(&qword_100157388, &qword_1001115D0);
  sub_10003AECC(&qword_100157390, &qword_1001115D8);
  sub_10002693C();
  sub_100004880(&qword_1001573D8, &qword_100157390, &qword_1001115D8, &protocol conformance descriptor for _EndedGesture<A>);
  swift_getOpaqueTypeConformance2();
  return GlassEffectContainer.init(spacing:content:)();
}

unint64_t sub_1000278A0()
{
  result = qword_1001573F0;
  if (!qword_1001573F0)
  {
    sub_10003AECC(&qword_1001573F8, &qword_100111600);
    sub_1000999E8(&qword_100157400, &type metadata accessor for CalculateExpression.Label, &protocol conformance descriptor for CalculateExpression.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001573F0);
  }

  return result;
}

Swift::Int sub_100027954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

BOOL sub_100027A90(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100027B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001573F8, &qword_100111600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002866C(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      return 0x7261656C436C6C41;
    case 2:
      return 0x7261656C43;
    case 3:
      return 0x65746167654ELL;
    case 4:
      v4 = 1668441424;
      return v4 | 0x746E6500000000;
    case 5:
      return 0x656469766944;
    case 6:
      return 0x796C7069746C754DLL;
    case 7:
      return 0x7463617274627553;
    case 8:
      return 6579265;
    case 9:
      return 0x736C61757145;
    case 10:
      return 0x6C616D69636544;
    case 11:
      return 1701080909;
    case 12:
      return 1869768026;
    case 13:
      return 6647375;
    case 14:
      return 7305044;
    case 15:
      return 0x6565726854;
    case 16:
      return 1920298822;
    case 17:
      return 1702259014;
    case 18:
      return 7891283;
    case 19:
      return 0x6E65766553;
    case 20:
      return 0x7468676945;
    case 21:
      return 1701734734;
    case 22:
      return 0x657261506E65704FLL;
    case 23:
      return 0xD000000000000010;
    case 24:
      return 0x6C4379726F6D654DLL;
    case 25:
      return 0x644179726F6D654DLL;
    case 26:
      return 0x755379726F6D654DLL;
    case 27:
      return 0x655279726F6D654DLL;
    case 28:
      return 0x7466696853;
    case 29:
      return 0x657261757153;
    case 30:
      return 1700951363;
    case 31:
      return 0x7265776F50;
    case 32:
      return 0x6E65746E6F707845;
    case 33:
    case 50:
    case 80:
      return 0xD000000000000011;
    case 34:
      return 0x636F727069636552;
    case 35:
      return 0x6F52657261757153;
    case 36:
      return 0x746F6F5265627543;
    case 37:
      return 1953460050;
    case 38:
      return 0x746F6F5258;
    case 39:
      return 0xD000000000000010;
    case 40:
    case 59:
      return 0x6874697261676F4CLL;
    case 41:
      return 0x6169726F74636146;
    case 42:
      return 1701734739;
    case 43:
      return 0x656E69736F43;
    case 44:
      v4 = 1735287124;
      return v4 | 0x746E6500000000;
    case 45:
      return 0x6D754E72656C7545;
    case 46:
      return 0x776F5073656D6954;
    case 47:
      return 0x736E6169646152;
    case 48:
      return 0x6C6F627265707948;
    case 49:
      return 0xD000000000000010;
    case 51:
      return 26960;
    case 52:
      return 0x6D6F646E6152;
    case 53:
      return 0x6574656C6544;
    case 54:
      return 0x616D6D6F43;
    case 55:
      return 0x73656572676544;
    case 56:
      return 0xD000000000000010;
    case 57:
      return 0xD000000000000010;
    case 58:
      return 0x6874697261676F4CLL;
    case 60:
      return 0x5365737265766E49;
    case 61:
      return 0x4365737265766E49;
    case 62:
      return 0x5465737265766E49;
    case 63:
      return 0xD000000000000015;
    case 64:
      return 0xD000000000000017;
    case 65:
      return 0xD000000000000018;
    case 66:
      return 65;
    case 67:
      return 66;
    case 68:
      return 67;
    case 69:
      return 68;
    case 70:
      return 69;
    case 71:
      return 70;
    case 72:
      return 17990;
    case 73:
      return 12336;
    case 74:
      return 0x4165736977746942;
    case 75:
      return 0x4F65736977746942;
    case 76:
      return 0x4E65736977746942;
    case 77:
      return 0x5865736977746942;
    case 78:
      return 0xD000000000000010;
    case 79:
      return 0x666968537466654CLL;
    case 81:
      return 0xD000000000000010;
    case 82:
      return 0x6952657461746F52;
    case 83:
      return 0x654C657461746F52;
    case 84:
      v3 = 1702132034;
      goto LABEL_69;
    case 85:
      v3 = 1685221207;
LABEL_69:
      result = v3 | 0x70696C4600000000;
      break;
    case 86:
      result = 6776174;
      break;
    case 87:
      result = 7630702;
      break;
    case 88:
      result = 0x73756C75646F4DLL;
      break;
    case 89:
      result = 1886351940;
      break;
    case 90:
      result = 1885435731;
      break;
    case 91:
      result = 0x70556C6C6F52;
      break;
    case 92:
      result = 0x6E776F446C6C6F52;
      break;
    case 93:
      result = 0x7265746E45;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100029718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v146 = a2;
  v145 = type metadata accessor for GlassEffectTransition();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Capsule();
  __chkstk_darwin(v142);
  v141 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Material._GlassVariant();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v109 - v9;
  __chkstk_darwin(v10);
  v120 = &v109 - v11;
  v122 = type metadata accessor for Material();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for _Glass();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v153 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v137 = &v109 - v15;
  __chkstk_darwin(v16);
  v138 = &v109 - v17;
  v154 = type metadata accessor for LiftHoverEffect();
  v116 = *(v154 - 8);
  __chkstk_darwin(v154);
  v115 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v148 = *(v19 - 8);
  v149 = v19;
  __chkstk_darwin(v19);
  v147 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  __chkstk_darwin(v21 - 8);
  v23 = &v109 - v22;
  v24 = sub_10003AE84(&qword_100158400, &qword_100112CF8);
  __chkstk_darwin(v24);
  v26 = &v109 - v25;
  v114 = sub_10003AE84(&qword_100158408, &qword_100112D00);
  __chkstk_darwin(v114);
  v28 = &v109 - v27;
  v112 = sub_10003AE84(&qword_100158410, &qword_100112D08);
  __chkstk_darwin(v112);
  v30 = &v109 - v29;
  v113 = sub_10003AE84(&qword_100158418, &qword_100112D10);
  __chkstk_darwin(v113);
  v32 = &v109 - v31;
  v151 = sub_10003AE84(&qword_100158420, &qword_100112D18);
  __chkstk_darwin(v151);
  v34 = &v109 - v33;
  v128 = sub_10003AE84(&qword_100158428, &qword_100112D20);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v152 = &v109 - v35;
  v132 = sub_10003AE84(&qword_100158430, &qword_100112D28);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v109 - v36;
  v136 = sub_10003AE84(&qword_100158438, &qword_100112D30);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v109 - v37;
  v135 = sub_10003AE84(&qword_100158440, &qword_100112D38);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v130 = &v109 - v38;
  v155 = a1;
  ButtonStyleConfiguration.label.getter();
  v39 = 0x1000000000000;
  if (!v3[6])
  {
    v39 = 0;
  }

  v40 = 0x10000000000;
  if (!v3[5])
  {
    v40 = 0;
  }

  v41 = &_mh_execute_header;
  if (!v3[4])
  {
    v41 = 0;
  }

  v42 = 0x1000000;
  if (!v3[3])
  {
    v42 = 0;
  }

  v43 = 0x10000;
  if (!v3[2])
  {
    v43 = 0;
  }

  v44 = 256;
  if (!v3[1])
  {
    v44 = 0;
  }

  v125 = v44 | *v3 | v43 | v42 | v41 | v40 | v39;
  sub_100025D2C(v125);
  static Font.Weight.regular.getter();
  v45 = type metadata accessor for Font.Design();
  (*(*(v45 - 8) + 56))(v23, 1, 1, v45);
  v46 = static Font.system(size:weight:design:)();
  sub_1000035CC(v23, &qword_1001567E0, &qword_10010F970);
  KeyPath = swift_getKeyPath();
  v48 = &v26[*(sub_10003AE84(&qword_100158448, &qword_100112D70) + 36)];
  *v48 = KeyPath;
  v48[1] = v46;
  v49 = swift_getKeyPath();
  v50 = &v26[*(sub_10003AE84(&qword_100158450, &qword_100112DA8) + 36)];
  *v50 = v49;
  v50[1] = 0x3FE4CCCCCCCCCCCDLL;
  v51 = swift_getKeyPath();
  v52 = &v26[*(v24 + 36)];
  *v52 = v51;
  *(v52 + 1) = 1;
  v52[16] = 0;
  v53 = *(v3 + 4);
  v162 = v53;
  v163 = v3[40];
  v150 = v3;
  if ((v163 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v55 = v147;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v162, &qword_100158458, &unk_100112DE0);
    (*(v148 + 8))(v55, v149);
    LOBYTE(v53) = v156;
  }

  if (v53)
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.4;
  }

  sub_10000D5B8(v26, v28, &qword_100158400, &qword_100112CF8);
  *&v28[*(v114 + 36)] = v56;
  v57 = &v30[*(v112 + 36)];
  sub_10003AE84(&qword_100158460, &qword_100115570);
  static ButtonBorderShape.capsule.getter();
  *v57 = swift_getKeyPath();
  sub_10000D5B8(v28, v30, &qword_100158408, &qword_100112D00);
  v58 = &v32[*(v113 + 36)];
  sub_10003AE84(&qword_100158468, &unk_100112E20);
  static ContentShapeKinds.interaction.getter();
  *v58 = 0;
  sub_10000D5B8(v30, v32, &qword_100158410, &qword_100112D08);
  sub_10003AE84(&qword_100158470, &qword_100114980);
  type metadata accessor for ContentShapeKinds();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10010DBE0;
  static ContentShapeKinds.hoverEffect.getter();
  static ContentShapeKinds.accessibility.getter();
  v156 = v59;
  v111 = v32;
  v60 = &v34[*(v151 + 36)];
  v61 = sub_10003AE84(&qword_100158478, &unk_100112E30);
  sub_1000B8F8C(&qword_100158480, &type metadata accessor for ContentShapeKinds, &protocol conformance descriptor for ContentShapeKinds);
  sub_10003AE84(&qword_100158488, &qword_100114990);
  sub_100004880(&qword_100158490, &qword_100158488, &qword_100114990, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  v64 = *(v63 - 8);
  v65 = *(v64 + 104);
  LODWORD(v114) = v62;
  v113 = v65;
  v112 = v64 + 104;
  v65(v60, v62, v63);
  v60[*(v61 + 36)] = 0;
  sub_10000D5B8(v111, v34, &qword_100158418, &qword_100112D10);
  v66 = v115;
  static CustomHoverEffect<>.lift.getter();
  v67 = sub_1000B822C();
  v68 = sub_1000B8F8C(&qword_100158500, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
  v69 = v154;
  v111 = v67;
  v110 = v68;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v116 + 8))(v66, v69);
  sub_1000035CC(v34, &qword_100158420, &qword_100112D18);
  v70 = v118;
  static Material._GlassVariant.regular.getter();
  static Color.black.getter();
  v71 = v119;
  Material._GlassVariant.fixedBackgroundColor(_:)();

  v72 = *(v123 + 8);
  v73 = v124;
  v72(v70, v124);
  v74 = v120;
  Material._GlassVariant.sharpTinting(_:)();
  v72(v71, v73);
  v75 = v117;
  static Material._glass(_:)();
  v72(v74, v73);
  static _Glass.explicit(_:)();
  (*(v121 + 8))(v75, v122);
  v161 = v150[88];
  v160 = *(v150 + 10);
  v76 = v160;
  v77 = v161;

  v78 = v76;
  if ((v77 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v79 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v80 = v147;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v160, &qword_1001556F8, &qword_10010D930);
    (*(v148 + 8))(v80, v149);
    v78 = v156;
  }

  swift_getKeyPath();
  v156 = v78;
  sub_1000B8F8C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v81 = *(v78 + 16);

  if (v81 == 1)
  {

    if ((v77 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v82 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v83 = v147;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v160, &qword_1001556F8, &qword_10010D930);
      (*(v148 + 8))(v83, v149);
      v76 = v156;
    }

    swift_getKeyPath();
    v156 = v76;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  v84 = v137;
  v85 = v153;
  _Glass.interactive(_:)();
  v86 = *(v139 + 8);
  v87 = v140;
  v86(v85, v140);
  v149 = v86;
  v88 = ButtonStyleConfiguration.isPressed.getter();
  v89 = sub_1000B7F84(v88 & 1);
  sub_1000B8CD4(v89);

  v90 = v138;
  _Glass.tintColor(_:)();

  v86(v84, v87);
  v91 = v141;
  (v113)(v141, v114, v63);
  v156 = v151;
  v157 = v154;
  v158 = v111;
  v159 = v110;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_1000B8F8C(&qword_100158508, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  v94 = v127;
  v95 = v128;
  v96 = v142;
  v97 = v152;
  View._glassEffect<A>(_:in:)();
  sub_10002B1C0(v91);
  v149(v90, v87);
  (*(v126 + 8))(v97, v95);
  v98 = v143;
  static GlassEffectTransition.identity.getter();
  v156 = v95;
  v157 = v96;
  v158 = OpaqueTypeConformance2;
  v159 = v93;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v131;
  v101 = v132;
  View.glassEffectTransition(_:)();
  (*(v144 + 8))(v98, v145);
  (*(v129 + 8))(v94, v101);
  v102 = v125;
  v103 = sub_100025D2C(v125);
  sub_10002B21C(v103);
  v156 = v101;
  v157 = v99;
  swift_getOpaqueTypeConformance2();
  v104 = v130;
  v105 = v136;
  View.help(_:)();

  (*(v134 + 8))(v100, v105);
  v106 = sub_100025D2C(v102);
  if ((ButtonStyleConfiguration.isPressed.getter() & 1) == 0)
  {
    v106 = 94;
  }

  v107 = v146;
  (*(v133 + 32))(v146, v104, v135);
  result = sub_10003AE84(&qword_100158510, &qword_100112E78);
  *(v107 + *(result + 36)) = v106;
  return result;
}

BOOL sub_10002AD34(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10002AD64(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (qword_100154518 != -1)
  {
    swift_once();
  }

  if (!sub_100027A90(v1, static CalculatorButtonRepresentable.swappableButtons))
  {
LABEL_5:
    if ((v1 & 0x1000000FFLL) != 0x100000003)
    {
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_30;
      }

      if (qword_100154510 != -1)
      {
        swift_once();
      }

      if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
      {
        if (v1 <= 0x24u)
        {
          if (v1 == 9)
          {
            goto LABEL_59;
          }

          if (v1 != 31)
          {
            goto LABEL_44;
          }

LABEL_62:
          if (qword_100154650 != -1)
          {
            swift_once();
          }

          v3 = &qword_100160C78;
          return *v3;
        }

        if (v1 == 37 || v1 == 56)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_39;
        }

LABEL_30:
        if (qword_100154508 != -1)
        {
          swift_once();
        }

        if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
        {
          LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
        }

        else
        {
LABEL_39:
          if ((v1 & 0x10000FF) == 0x1000001)
          {
            goto LABEL_40;
          }

          if ((v1 & 0x1000000FFLL) == 0x100000003)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_44:
      v2 = v1;
      if (v1 > 0x36u)
      {
        goto LABEL_48;
      }

      if (((1 << v1) & 0x400000003FFC08) == 0)
      {
        if (((1 << v1) & 0x3E0) == 0)
        {
          if (((1 << v1) & 0x20000000000016) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

LABEL_59:
        if (qword_100154620 != -1)
        {
          swift_once();
        }

        v3 = &qword_100160C48;
        return *v3;
      }

LABEL_49:
      if (qword_100154638 != -1)
      {
        swift_once();
      }

      v3 = &qword_100160C60;
      return *v3;
    }
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_25;
  }

  if (qword_100154510 != -1)
  {
    swift_once();
  }

  if (sub_100027A90(v1, static CalculatorButtonRepresentable.alternateRPNButtons))
  {
    if (v1 > 0x24u)
    {
      if (v1 == 37 || v1 == 56)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v1 == 9)
      {
        goto LABEL_59;
      }

      if (v1 == 31)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (qword_100154508 != -1)
    {
      swift_once();
    }

    if (sub_100027A90(v1, static CalculatorButtonRepresentable.shiftableButtons))
    {
      LOBYTE(v1) = CalculatorButtonRepresentable.shiftedButton(isRPN:)(v1 & 0x10000);
    }

    else
    {
LABEL_33:
      if ((v1 & 0x10000FF) == 0x1000001 || (v1 & 0x1000000FFLL) == 0x100000003)
      {
        goto LABEL_40;
      }
    }
  }

  v2 = v1;
  if (v1 > 0x36u)
  {
    goto LABEL_48;
  }

  if (((1 << v1) & 0x400000003FF408) != 0)
  {
    goto LABEL_49;
  }

  if (((1 << v1) & 0x3E0) != 0)
  {
    goto LABEL_59;
  }

  if (((1 << v1) & 0x800000016) == 0)
  {
LABEL_48:
    if ((v2 - 66) < 8)
    {
      goto LABEL_49;
    }

    if (v2 == 93)
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

LABEL_40:
  if (qword_100154608 != -1)
  {
    swift_once();
  }

  v3 = &qword_100160C30;
  return *v3;
}

uint64_t sub_10002B1C0(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10002BA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_100157D48, qword_100112450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10002BB14(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  *a4 = *a3;
}

uint64_t sub_10002BBA0()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154738 != -1)
  {
    swift_once();
  }

  v4 = sub_1000048C8(v0, qword_100160DA0);
  (*(v1 + 16))(v3, v4, v0);
  result = Color.init(_:)();
  qword_100160B50 = result;
  return result;
}

uint64_t sub_10002BCAC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100004078(v0, qword_100160DA0);
  sub_1000048C8(v0, qword_100160DA0);
  if (qword_100154730 != -1)
  {
    swift_once();
  }

  v1 = qword_10015A5C8;
  return ColorResource.init(name:bundle:)();
}

id sub_10002BD58()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10015A5C8 = result;
  return result;
}

uint64_t sub_10002BDE8(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10002BEC8(uint64_t a1, char a2, void (**a3)(char *), int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  LODWORD(v39) = a4;
  v40 = a1;
  v41 = a3;
  v43 = type metadata accessor for LayoutSubview();
  v17 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10003AE84(&qword_1001564C0, &qword_10010F720);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = type metadata accessor for LayoutSubviews();
  sub_10002703C(&qword_1001564C8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v44[0] != v45)
  {
    v46.origin.x = a6;
    v46.origin.y = a7;
    v46.size.width = a8;
    v46.size.height = a9;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a6;
    v47.origin.y = a7;
    v47.size.width = a8;
    v47.size.height = a9;
    MinY = CGRectGetMinY(v47);
    LOBYTE(v44[0]) = a2 & 1;
    LOBYTE(v45) = LOBYTE(v39) & 1;
    sub_100027084(a5, v40, a2 & 1, v41, LOBYTE(v39) & 1);
    v27 = v26;
    v29 = v28;
    (*(*(v22 - 8) + 16))(v21, a5, v22);
    v30 = *(v19 + 36);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v21[v30] != v44[0])
    {
      v41 = (v17 + 16);
      v39 = v29;
      v40 = *&v27;
      v31 = (v17 + 8);
      while (2)
      {
        v32 = -1;
        while (1)
        {
          v33 = dispatch thunk of Collection.subscript.read();
          v34 = v42;
          v35 = v43;
          (*v41)(v42);
          v33(v44, 0);
          dispatch thunk of Collection.formIndex(after:)();
          static UnitPoint.topLeading.getter();
          LOBYTE(v44[0]) = 0;
          LOBYTE(v45) = 0;
          LayoutSubview.place(at:anchor:proposal:)();
          result = (*v31)(v34, v35);
          v36 = *(v10 + 16);
          v37 = __OFSUB__(v36, 1);
          v38 = v36 - 1;
          if (v37)
          {
            __break(1u);
            return result;
          }

          if (++v32 >= v38)
          {
            break;
          }

          MinX = v27 + MinX + *(v10 + 24);
          dispatch thunk of Collection.endIndex.getter();
          if (*&v21[v30] == v44[0])
          {
            return sub_10002BDE8(v21);
          }
        }

        v48.origin.x = a6;
        v48.origin.y = a7;
        v48.size.width = a8;
        v48.size.height = a9;
        MinX = CGRectGetMinX(v48);
        MinY = v29 + MinY + *(v10 + 24);
        dispatch thunk of Collection.endIndex.getter();
        if (*&v21[v30] != v44[0])
        {
          continue;
        }

        break;
      }
    }

    return sub_10002BDE8(v21);
  }

  return result;
}

uint64_t sub_10002C35C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PopoverAttachmentAnchor();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v68 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ModeMenuView(0);
  v58 = *(v56 - 8);
  v57 = *(v58 + 64);
  __chkstk_darwin(v56);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10003AE84(&qword_100157978, &qword_100111EB8);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v10 = &v54 - v9;
  v61 = sub_10003AE84(&qword_100157980, &qword_100111EC0);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v54 - v11;
  v63 = sub_10003AE84(&qword_100157988, &qword_100111EC8);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v54 - v13;
  v71 = sub_10003AE84(&qword_100157990, &unk_100111ED0);
  __chkstk_darwin(v71);
  v15 = &v54 - v14;
  v76 = v1;
  sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_10003AE84(&qword_100157998, &qword_100111EE0);
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
  v16 = v1;
  sub_100004880(&qword_1001579A0, &qword_100157998, &qword_100111EE0, &protocol conformance descriptor for TupleView<A>);
  v17 = v56;
  Menu.init(content:label:)();
  v18 = v1;
  v19 = v54;
  sub_1000A75C8(v18, v54);
  v20 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v21 = swift_allocObject();
  sub_1000A762C(v19, v21 + v20);
  v22 = sub_100004880(&qword_1001579A8, &qword_100157978, &qword_100111EB8, &protocol conformance descriptor for Menu<A, B>);
  v23 = v59;
  View.onTapGesture(count:perform:)();

  (*(v60 + 8))(v10, v23);
  v24 = v64;
  static AccessibilityChildBehavior.contain.getter();
  v79[0] = v23;
  v79[1] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v55;
  v27 = v61;
  View.accessibilityElement(children:)();
  (*(v66 + 8))(v24, v67);
  v28 = v27;
  (*(v62 + 8))(v12, v27);
  v29 = *(v16 + *(v17 + 28));
  v79[3] = &type metadata for ModeMenuTip;
  v79[4] = sub_10002DD60();
  v79[0] = v29;

  v30 = static Anchor.Source<A>.bounds.getter();
  v32 = v68;
  v31 = v69;
  *v68 = v30;
  v33 = v70;
  (*(v31 + 104))(v32, enum case for PopoverAttachmentAnchor.rect(_:), v70);
  v77 = v28;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v63;
  View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)();
  (*(v31 + 8))(v32, v33);
  (*(v65 + 8))(v26, v34);
  sub_1000035CC(v79, &qword_1001579B0, &qword_100111EE8);
  KeyPath = swift_getKeyPath();
  v36 = &v15[*(sub_10003AE84(&qword_1001579B8, &qword_100111F20) + 36)];
  *v36 = KeyPath;
  v36[8] = 2;
  v37 = *(v16 + 16);
  v38 = *(v16 + 24);

  v39 = v37;
  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v41 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v73 + 8))(v41, v74);
    v39 = v79[0];
  }

  swift_getKeyPath();
  v79[0] = v39;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v39 + 48);

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v72;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v73 + 8))(v44, v74);
    v37 = v79[0];
  }

  swift_getKeyPath();
  v79[0] = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v37 + 50);

  v46 = &v15[*(v71 + 36)];
  *v46 = 11;
  v46[1] = v42;
  v46[2] = v45;
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000A7C68();
  v47 = v75;
  View.help(_:)();

  sub_1000035CC(v15, &qword_100157990, &unk_100111ED0);
  v48 = swift_getKeyPath();
  v49 = *(v17 + 24);
  v50 = (v47 + *(sub_10003AE84(&qword_1001579E8, &unk_100111FB0) + 36));
  v51 = *(sub_10003AE84(&qword_100157080, &qword_100110E08) + 28);
  v52 = type metadata accessor for LayoutDirection();
  result = (*(*(v52 - 8) + 16))(v50 + v51, v16 + v49, v52);
  *v50 = v48;
  return result;
}

uint64_t sub_10002CE70@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.menuIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002CF74()
{
  result = Image.init(_internalSystemName:)();
  qword_1001608D8 = result;
  return result;
}

uint64_t sub_10002CFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModeMenuView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v55 = sub_10003AE84(&qword_100157A90, &qword_100112070);
  __chkstk_darwin(v55);
  v11 = &v52 - v10;
  v12 = sub_10003AE84(&qword_100157A98, &qword_100112078);
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = &v52 - v13;
  v61 = sub_10003AE84(&qword_100157A00, &qword_100111FD0);
  __chkstk_darwin(v61);
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v52 - v16;
  sub_1000A75C8(v1, &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_1000A762C(&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_1000A75C8(v1, &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = v21 + v18;
  v23 = v11;
  sub_1000A762C(&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  Binding.init(get:set:)();
  sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0, &protocol conformance descriptor for Label<A, B>);
  Toggle.init(isOn:label:)();
  v24 = *(v2 + 24);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v26 = v52;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v53 + 8))(v26, v54);
  }

  v27 = sub_10000EBC8();

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = v55;
  v31 = &v11[*(v55 + 36)];
  *v31 = KeyPath;
  v31[1] = sub_1000296E4;
  v31[2] = v29;
  v32 = *v2;
  if (*(v2 + 8) == 1)
  {
    v33 = v32;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v52;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v36 = sub_100030EDC(v32, 0);
    (*(v53 + 8))(v35, v54, v36);
    v33 = v66;
  }

  swift_getKeyPath();
  v66 = v33;
  sub_100006608(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LocalizedStringKey.init(stringLiteral:)();
  v37 = sub_10002DC7C();
  v38 = v56;
  View.help(_:)();

  sub_1000035CC(v23, &qword_100157A90, &qword_100112070);
  LocalizedStringKey.init(stringLiteral:)();
  v39 = Text.init(_:tableName:bundle:comment:)();
  v41 = v40;
  v43 = v42;
  v66 = v30;
  v67 = v37;
  swift_getOpaqueTypeConformance2();
  v44 = v58;
  v45 = v59;
  View.accessibilityLabel(_:)();
  sub_10000C6AC(v39, v41, v43 & 1);

  (*(v57 + 8))(v38, v44);
  sub_10003AE84(&qword_100157A80, &unk_100115410);
  v46 = v63;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10010DBE0;
  static AccessibilityTraits.isToggle.getter();
  static AccessibilityTraits.isButton.getter();
  v66 = v47;
  sub_100006608(&qword_100156A68, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10003AE84(&qword_100156A70, &qword_100112040);
  sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040, &protocol conformance descriptor for [A]);
  v48 = v62;
  v49 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v60;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v46 + 8))(v48, v49);
  sub_1000035CC(v45, &qword_100157A00, &qword_100111FD0);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000035CC(v50, &qword_100157A00, &qword_100111FD0);
}

uint64_t sub_10002D96C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v13;
  }

  swift_getKeyPath();
  v13 = v8;
  sub_100006608(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 50);

  *a2 = v10;
  return result;
}

uint64_t sub_10002DB34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ModeMenuView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10002D96C(v4, a1);
}

uint64_t sub_10002DBA8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10002DC7C()
{
  result = qword_100157AA0;
  if (!qword_100157AA0)
  {
    sub_10003AECC(&qword_100157A90, &qword_100112070);
    sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010, &protocol conformance descriptor for Toggle<A>);
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157AA0);
  }

  return result;
}

unint64_t sub_10002DD60()
{
  result = qword_100157378;
  if (!qword_100157378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157378);
  }

  return result;
}

unint64_t sub_10002DDB8()
{
  result = qword_100157360;
  if (!qword_100157360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157360);
  }

  return result;
}

uint64_t sub_10002DE10()
{
  v0 = sub_10003AE84(&qword_100157368, &qword_1001113D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100157370, &qword_1001113D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t initializeBufferWithCopyOfBuffer for CalculatorConfigSnapshot(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10002E0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for KeyEquivalent();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SidebarButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10003AE84(&qword_100155948, &qword_10010DC60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10003AE84(&qword_100155950, &qword_10010DC68);
  v25 = *(v13 - 8);
  v26 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_10006E630(v2, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_10006E694(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v30 = v2;
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10003AE84(&qword_100155958, &qword_1001159D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v19 = static EventModifiers.command.getter();
  *(inited + 32) = v19;
  v20 = static EventModifiers.control.getter();
  *(inited + 40) = v20;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v19)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v20)
  {
    EventModifiers.init(rawValue:)();
  }

  v21 = sub_100015CAC();
  View.keyboardShortcut(_:modifiers:)();
  (*(v27 + 8))(v5, v28);
  (*(v10 + 8))(v12, v9);
  v31 = v9;
  v32 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  View.accessibilityIdentifier(_:)();
  return (*(v25 + 8))(v15, v22);
}

uint64_t sub_10002E4F8()
{
  v1 = type metadata accessor for SidebarButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002E774()
{
  result = Image.init(systemName:)();
  qword_100160978 = result;
  return result;
}

void sub_10002E7A4(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_10002E7D0(void *a1@<X8>)
{
  GeometryProxy.safeAreaInsets.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t getEnumTagSinglePayload for CalculatorAppMode(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_10002E894()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC10CalculatorP33_975093CEE8F9D0E989FB2156FC3C1A8C38CalculatorAppDebugMenuGestureProxyView_action];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10002E950(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v24 = *(a2 + 24);
  v10 = *(a2 + 16);
  v23 = v10;
  v11 = v24;

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v23, &qword_1001556F0, &unk_10010D920);
    (*(v5 + 8))(v7, v4);
    v12 = v22;
  }

  swift_getKeyPath();
  v22 = v12;
  sub_10000F258(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v12 + 48);
  v15 = *(v12 + 56);

  if (v14 != v9 || v15 != v8)
  {

    if ((v11 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v23, &qword_1001556F0, &unk_10010D920);
      (*(v5 + 8))(v7, v4);
      v10 = v22;
    }

    if (*(v10 + 48) == v9 && *(v10 + 56) == v8)
    {
      *(v10 + 48) = v9;
      *(v10 + 56) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v21 - 4) = v10;
      *(&v21 - 3) = v9;
      *(&v21 - 2) = v8;
      v22 = v10;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_10002ECBC(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v21 = *(a2 + 24);
  v12 = *(a2 + 16);
  v20 = v12;
  v13 = v21;

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v20, &qword_1001556F0, &unk_10010D920);
    (*(v5 + 8))(v7, v4);
    v14 = v19;
  }

  swift_getKeyPath();
  v19 = v14;
  sub_10000F258(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v20, &qword_1001556F0, &unk_10010D920);
      (*(v5 + 8))(v7, v4);
      v12 = v19;
    }

    if (static EdgeInsets.== infix(_:_:)())
    {
      v12[8] = v9;
      v12[9] = v8;
      v12[10] = v11;
      v12[11] = v10;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v18 - 6) = v12;
      *(&v18 - 5) = v9;
      *(&v18 - 4) = v8;
      *(&v18 - 3) = v11;
      *(&v18 - 2) = v10;
      v19 = v12;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_10002F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F0E4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100154FA0, &unk_100110DC0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100008E68(v2, &v14 - v9, &qword_100154FA0, &unk_100110DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10002F2E4()
{
  if (qword_100154698 != -1)
  {
    return swift_once();
  }

  return result;
}

void sub_10002F314()
{
  v0 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for CalculatorTipManager();
  inited = swift_initStaticObject();
  sub_10002F480();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_100050560(0, 0, v2, &unk_100111E38, v5);

  qword_100160CF8 = inited;
}

uint64_t sub_10002F424()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002F480()
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v0 = qword_100160D68;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];

    if (v2)
    {
      static Tips.showAllTipsForTesting()();
      v3 = String._bridgeToObjectiveC()();
      [v0 removeObjectForKey:v3];
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v4 = qword_100160D68;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      static Tips.resetDatastore()();
      v7 = String._bridgeToObjectiveC()();
      [v4 removeObjectForKey:v7];
    }
  }

  return static Tips.configure(_:)();
}

void sub_10002F67C(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = (a2 + *(type metadata accessor for CalculatorDetailsView(0) + 32));
  v11 = *v10;
  v12 = *(v10 + 8);

  v13 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v22;
  }

  swift_getKeyPath();
  v22 = v13;
  sub_10000F330(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + 96);
  v16 = *(v13 + 104);

  if (v15 != v9 || v16 != v8)
  {

    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v11 = v22;
    }

    if (*(v11 + 96) == v9 && *(v11 + 104) == v8)
    {
      *(v11 + 96) = v9;
      *(v11 + 104) = v8;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v21 - 4) = v11;
      *(&v21 - 3) = v9;
      *(&v21 - 2) = v8;
      v22 = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void sub_10002F9C4(double *a1)
{
  v3 = *(type metadata accessor for CalculatorDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10002F67C(a1, v4);
}

void sub_10002FA34(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = a2 + *(type metadata accessor for CalculatorDetailsView(0) + 32);
  v13 = *v12;
  v14 = *(v12 + 8);

  v15 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v15 = v20;
  }

  swift_getKeyPath();
  v20 = v15;
  sub_10000F330(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {

    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v13 = v20;
    }

    if (static EdgeInsets.== infix(_:_:)())
    {
      v13[14] = v9;
      v13[15] = v8;
      v13[16] = v11;
      v13[17] = v10;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v19 - 6) = v13;
      *(&v19 - 5) = v9;
      *(&v19 - 4) = v8;
      *(&v19 - 3) = v11;
      *(&v19 - 2) = v10;
      v20 = v13;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

void sub_10002FDC8(double *a1)
{
  v3 = *(type metadata accessor for CalculatorDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10002FA34(a1, v4);
}

uint64_t sub_10002FE38(double a1, double a2, double a3, double a4)
{
  v9 = sub_10003AE84(&qword_100155658, &qword_10010D538);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for CalculatorButtonSizeCache(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  Date.init()();
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  sub_100018208(v15, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  v16 = OBJC_IVAR____TtC10Calculator32CalculatorButtonSizeCacheManager__cache;
  swift_beginAccess();
  sub_10006780C(v11, v4 + v16);
  swift_endAccess();

  PassthroughSubject.send(_:)();

  return sub_10001826C(v15);
}

uint64_t sub_10002FFEC(void *a1)
{
  v3 = v1;
  v5 = sub_10003AE84(&qword_100155640, &qword_10010D530);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100017F20(a1, a1[3]);
  sub_100017ECC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for CGSize(0);
  sub_100067550(&qword_100155648, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for CalculatorButtonSizeCache(0);
    LOBYTE(v12) = 2;
    type metadata accessor for Date();
    sub_100067550(&qword_100155650, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100030284(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100030CEC;

  return sub_100030428();
}

uint64_t sub_100030330(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100030DE4;

  return v6(a1);
}

uint64_t sub_100030444()
{
  if (qword_100154690 != -1)
  {
    swift_once();
  }

  v1 = sub_10003AE84(&qword_100157098, qword_100111E40);
  sub_1000048C8(v1, qword_100160CE0);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100030CEC;

  return Tips.Event.donate<>()();
}

uint64_t sub_100030528()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100030CEC;

  return sub_1000305BC(v0 + 16);
}

uint64_t sub_1000305BC(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100030F34, v3, v2);
}

double sub_100030654(uint64_t a1)
{
  v1 = sub_10003AE84(&qword_10015A3C0, &qword_100115DE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  v5 = swift_projectBox();
  v6 = *(v2 + 16);
  v6(v4, v5, v1);
  Bindable.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v4, v1);
  v8 = v14;
  swift_getKeyPath();
  v14 = v8;
  v13[1] = sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel, &unk_100110758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 17);

  if (v9 == 1)
  {
    v6(v4, v5, v1);
    Bindable.wrappedValue.getter();
    v7(v4, v1);
    v11 = v14;
    if (*(v14 + 17))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v13[-2] = v11;
      LOBYTE(v13[-1]) = 0;
      v14 = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v14 + 17) = 0;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CalculatorKeypadButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorKeypadButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double sub_1000309E0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_1000309EC(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

void sub_1000309EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_100030A3C(uint64_t a1)
{
  String.hash(into:)();
}

void sub_100030B68(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  objc_msgSendSuper2(&v9, "willMoveToWindow:", a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1000DDEE4;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_100067348;
        v8[3] = &unk_10014D5C0;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler:v7];
        _Block_release(v7);
      }
    }
  }
}

uint64_t sub_100030CAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030CE4(uint64_t result, double a2, double a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t sub_100030CEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100030DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100030EDC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

__n128 sub_100030EE8()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

double *sub_100030F20(double *result, double a2, double a3, double a4, double a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

uint64_t sub_100030F2C(uint64_t result, double a2, double a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t sub_100030F34()
{
  v1 = *(v0 + 96);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v0 + 16) = v3;
  *(v0 + 80) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  sub_100015064(v0 + 80, v0 + 88);

  sub_10003AE84(&qword_100155868, &qword_10010DB60);
  Binding.wrappedValue.getter();
  if (*(v0 + 33) == 1)
  {
    v5 = *(v0 + 96);
    sub_100031158(v0 + 80);

    v7 = *(v5 + 40) * 1000000000.0;
    if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -1.0)
    {
      if (v7 < 1.84467441e19)
      {
        v8 = v7;
        v9 = swift_task_alloc();
        *(v0 + 128) = v9;
        *v9 = v0;
        v9[1] = sub_1000DCCA0;
        v6 = v8;

        return static Task<>.sleep(nanoseconds:)(v6);
      }

LABEL_13:
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(v6);
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v0 + 96);

  *(v0 + 64) = *v10;
  *(v0 + 34) = 1;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.setter();
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  *(v0 + 35) = 1;
  Binding.wrappedValue.setter();
  sub_100031158(v0 + 80);

  v11 = *(v0 + 8);

  return v11();
}

void sub_1000311AC()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + 8);
  v28 = *v0;
  v6 = v28;
  v7 = v29;

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v28, &qword_100154810, &qword_10010DF90);
    (*(v3 + 8))(v5, v2);
    v8 = v25;
  }

  swift_getKeyPath();
  *&v25 = v8;
  sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 54);

  if ((v10 - 4) >= 7)
  {
    v25 = *(v1 + 2);
    v26 = *(v1 + 48);
    v27 = *(&v25 + 1);
    v23 = *(v1 + 2);
    v24 = *(v1 + 48);
    sub_100008E68(&v27, &v22, &qword_100156AD0, &qword_1001102F0);
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.wrappedValue.getter();
    if (v22 != 11)
    {
      goto LABEL_8;
    }

    v11 = v6;
    if ((v7 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v28, &qword_100154810, &qword_10010DF90);
      (*(v3 + 8))(v5, v2);
      v11 = v23;
    }

    swift_getKeyPath();
    *&v23 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v11 + 54);

    if (v13 != 9)
    {
LABEL_8:

      if ((v7 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v14 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v28, &qword_100154810, &qword_10010DF90);
        (*(v3 + 8))(v5, v2);
      }

      v15 = sub_100031888();

      v23 = v25;
      v24 = v26;
      FocusState.wrappedValue.getter();
      if (v22 == 11 || v22 != v15)
      {
        v23 = v25;
        v24 = v26;
        FocusState.wrappedValue.getter();
        if (v22 == 11)
        {
          HIDWORD(v21) = v15;

          v16 = v6;
          if ((v7 & 1) == 0)
          {
            static os_log_type_t.fault.getter();
            v17 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_1000035CC(&v28, &qword_100154810, &qword_10010DF90);
            (*(v3 + 8))(v5, v2);
            v16 = v23;
          }

          swift_getKeyPath();
          *&v23 = v16;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v18 = *(v16 + 54);

          LOBYTE(v15) = BYTE4(v21);
          if (v18 == 11)
          {
            goto LABEL_21;
          }
        }
      }

      v23 = v25;
      v24 = v26;
      FocusState.wrappedValue.getter();
      if (v22 == 11)
      {

        if ((v7 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v19 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000035CC(&v28, &qword_100154810, &qword_10010DF90);
          (*(v3 + 8))(v5, v2);
          v6 = v23;
        }

        swift_getKeyPath();
        *&v23 = v6;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v20 = *(v6 + 54);

        if (v20 == 9)
        {
          goto LABEL_21;
        }
      }

      v23 = v25;
      v24 = v26;
      FocusState.wrappedValue.getter();
      if (v22 != 11)
      {
LABEL_21:
        v23 = v25;
        v24 = v26;
        LOBYTE(v22) = v15;
        FocusState.wrappedValue.setter();
      }
    }

    sub_1000035CC(&v25, &qword_100156AA8, &qword_100110298);
  }
}

uint64_t sub_100031888()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_100006530(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager, &unk_100113EE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = CalculateExpression.format.getter();

  if (v2 == 2)
  {
    return 3;
  }

  swift_getKeyPath();
  sub_100006530(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 50) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 40))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

__n128 sub_100031A28()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

double *sub_100031A60(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

double sub_100031A6C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (v10 != 11)
  {
    v27 = *(a3 + 8);
    v11 = *a3;
    v26 = v11;
    v12 = v27;

    v13 = v11;
    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v26, &qword_100154810, &qword_10010DF90);
      (*(v6 + 8))(v9, v5);
      v13 = v25;
    }

    swift_getKeyPath();
    v25 = v13;
    sub_100090A7C(&qword_100154FA8, type metadata accessor for CalculatorViewModel, &unk_10010CC00);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v13 + 54);

    if (v15 == 9)
    {
      goto LABEL_8;
    }

    v16 = v11;
    if ((v12 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v26, &qword_100154810, &qword_10010DF90);
      (*(v6 + 8))(v9, v5);
      v16 = v25;
    }

    swift_getKeyPath();
    v25 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v16 + 54);

    if (v18 == 10)
    {
LABEL_8:

      if ((v12 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v19 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v26, &qword_100154810, &qword_10010DF90);
        (*(v6 + 8))(v9, v5);
        v11 = v25;
      }

      swift_getKeyPath();
      v25 = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v11 + 54) != 11)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v24 - 2) = v11;
        *(&v24 - 8) = 11;
        v25 = v11;
LABEL_18:
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return result;
      }
    }

    else
    {

      if ((v12 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v21 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000035CC(&v26, &qword_100154810, &qword_10010DF90);
        (*(v6 + 8))(v9, v5);
        v11 = v25;
      }

      swift_getKeyPath();
      v25 = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v11 + 54);
      if (v22 == 11 || v22 != v10)
      {
        v23 = swift_getKeyPath();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v11;
        *(&v24 - 8) = v10;
        v25 = v11;
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_100032058(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if ((v3 - 4) > 4 && ((v3 - 9) >= 3 ? (v4 = *a1 == 9) : (v4 = 1), v4))
  {
    sub_1000311AC();
  }

  else
  {
    sub_10003AE84(&qword_100156AA8, &qword_100110298);
    FocusState.wrappedValue.setter();
  }
}

uint64_t sub_100032228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154790, &qword_100110280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000322CC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000322F8()
{

  sub_100030EDC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_10003234C()
{
  sub_10003AECC(&qword_100154820, &qword_10010BB28);
  sub_100004880(&qword_100154828, &qword_100154820, &qword_10010BB28, &protocol conformance descriptor for ZStack<A>);
  sub_10000482C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032414(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003248C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000325D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10003263C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10003FA48(v1);
}

uint64_t sub_100032710()
{

  return swift_deallocObject();
}

uint64_t sub_100032790()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003288C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100032974()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000329AC()
{

  return swift_deallocObject();
}

uint64_t sub_100032BD4()
{

  return swift_deallocObject();
}

uint64_t sub_100032C1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100032D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100032DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100032EDC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032F64()
{
  sub_10003AECC(&qword_100154758, &qword_10010B5A8);
  type metadata accessor for UnitConversionPopoverView(255);
  sub_10003AECC(&qword_100154760, &unk_10010B5B0);
  type metadata accessor for PlainButtonStyle();
  sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0, &protocol conformance descriptor for Button<A>);
  sub_10006535C(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10006535C(&qword_100154778, type metadata accessor for UnitConversionPopoverView, &unk_1001130F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000330D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10003314C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100033184()
{
  v1 = (type metadata accessor for CalculatorButtonSizeCache(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[8];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_100033270()
{
  v1 = type metadata accessor for PPTTestCase();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100033364()
{

  return swift_deallocObject();
}

uint64_t sub_10003339C()
{

  return swift_deallocObject();
}

uint64_t sub_1000333D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ScrollViewProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033478(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ScrollViewProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003351C()
{
  v12 = type metadata accessor for PPTTestCase();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (type metadata accessor for CalculatorHistoryScrollPPTTests(0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  (*(v1 + 8))(v0 + v2, v12);
  v10 = *(v5 + 8);
  v10(v0 + v6, v4);

  v10(v0 + v9 + v8[9], v4);

  return swift_deallocObject();
}

uint64_t sub_100033708()
{
  v1 = (type metadata accessor for CalculatorHistoryScrollPPTTests(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v1[9];
  v8 = type metadata accessor for ScrollViewProxy();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_100033884()
{
  sub_10003AECC(&qword_100155838, &qword_10010DA80);
  sub_10003AECC(&qword_100155840, &qword_10010DA88);
  sub_100004880(&qword_100155848, &qword_100155840, &qword_10010DA88, &protocol conformance descriptor for _ViewModifier_Content<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100033978()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000339D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100033A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_100033B70()
{

  return swift_deallocObject();
}

uint64_t sub_100033F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033FB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000344C4()
{
  sub_10003AECC(&qword_100156388, &qword_10010F418);
  sub_10003AECC(&qword_100156390, &qword_10010F420);
  sub_100004880(&qword_100156398, &qword_100156388, &qword_10010F418, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100004880(&qword_1001563A0, &qword_100156390, &qword_10010F420, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000345D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D0, qword_10010F780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100034708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D0, qword_10010F780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003484C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003488C()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = type metadata accessor for EditMode();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v1[9];
  v9 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v10(v3 + v1[10], v9);
  v10(v3 + v1[11], v9);

  return swift_deallocObject();
}

uint64_t sub_100034AE4()
{

  return swift_deallocObject();
}

uint64_t sub_100034B4C()
{

  return swift_deallocObject();
}

uint64_t sub_100034B84()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = type metadata accessor for EditMode();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v1[9];
  v9 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v10(v3 + v1[10], v9);
  v10(v3 + v1[11], v9);

  return swift_deallocObject();
}

uint64_t sub_100034DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001568E8, &qword_10010FA88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034E60()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = type metadata accessor for EditMode();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v1[9];
  v9 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v10 = *(*(v9 - 8) + 8);
  v10(v3 + v8, v9);
  v10(v3 + v1[10], v9);
  v10(v3 + v1[11], v9);

  return swift_deallocObject();
}

uint64_t sub_100035094()
{
  v1 = type metadata accessor for CalculatorHistoryListView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = v0 + v2 + v1[8];
  sub_10003AE84(&qword_1001566B0, &qword_100112A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10003AE84(&qword_1001566B8, &qword_10010F820);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = type metadata accessor for EditMode();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[9];
  v11 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v12 = *(*(v11 - 8) + 8);
  v12(v4 + v10, v11);
  v12(v4 + v1[10], v11);
  v12(v4 + v1[11], v11);

  return swift_deallocObject();
}

uint64_t sub_100035388()
{

  return swift_deallocObject();
}

uint64_t sub_1000353D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalculatorSizeClass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100035484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalculatorSizeClass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100035580()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000355C8()
{

  return swift_deallocObject();
}

uint64_t sub_10003560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10003AE84(&qword_100156F18, qword_100110CC8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100035730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10003AE84(&qword_100156F18, qword_100110CC8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000358B0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100035908@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.appearsActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

double sub_100035B34@<D0>(uint64_t a1@<X8>)
{
  sub_100023C6C();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100035C0C(void *a1)
{
  type metadata accessor for Optional();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_1001577E0, &qword_100111D70);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_100035CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100035DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LayoutDirection();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100035E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001579F0, &qword_100111FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035EE0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100035F54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000AA58C(v1);
}

void sub_100035F88(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000AA29C(v1);
}

void sub_100035FBC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A9FAC(v1);
}

uint64_t sub_10003604C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalculatorSizeClass(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1000360F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalculatorSizeClass(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100157F98, qword_100112550);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000362D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100157F98, qword_100112550);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000364BC()
{

  return swift_deallocObject();
}

uint64_t sub_10003655C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000366E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100154948, qword_1001130B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000368AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100036914@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003696C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000369C4()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v15 = v0;
  v4 = v0 + v2;

  v5 = v1[9];
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v1[10];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[15];
  v12 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v13 = *(*(v12 - 8) + 8);
  v13(v4 + v11, v12);
  v13(v4 + v1[16], v12);
  v13(v4 + v1[17], v12);
  v13(v4 + v1[18], v12);
  v13(v4 + v1[19], v12);
  v13(v4 + v1[20], v12);

  return swift_deallocObject();
}

uint64_t sub_100036C94@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036CFC()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[10];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[15];
  v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v11(v3 + v1[16], v10);
  v11(v3 + v1[17], v10);
  v11(v3 + v1[18], v10);
  v11(v3 + v1[19], v10);
  v11(v3 + v1[20], v10);

  return swift_deallocObject();
}

uint64_t sub_100036FCC()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UnitConversionPopoverView(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v18 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v19 = v0;
  v8 = v0 + v7;

  v9 = v5[9];
  v10 = type metadata accessor for UserInterfaceSizeClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v13 = v5[10];
  if (!v12(v8 + v13, 1, v10))
  {
    (*(v11 + 8))(v8 + v13, v10);
  }

  v14 = v5[15];
  v15 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v16 = *(*(v15 - 8) + 8);
  v16(v8 + v14, v15);
  v16(v8 + v5[16], v15);
  v16(v8 + v5[17], v15);
  v16(v8 + v5[18], v15);
  v16(v8 + v5[19], v15);
  v16(v8 + v5[20], v15);

  return swift_deallocObject();
}

uint64_t sub_10003732C()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for ScrollViewProxy();
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = *(v18 + 80);
  v16 = *(v18 + 64);
  v20 = v0;
  v5 = v0 + v2;

  v6 = v1[9];
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = v1[10];
  if (!v9(v5 + v10, 1, v7))
  {
    (*(v8 + 8))(v5 + v10, v7);
  }

  v11 = (v2 + v17 + v4) & ~v4;

  v12 = v1[15];
  v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v14 = *(*(v13 - 8) + 8);
  v14(v5 + v12, v13);
  v14(v5 + v1[16], v13);
  v14(v5 + v1[17], v13);
  v14(v5 + v1[18], v13);
  v14(v5 + v1[19], v13);
  v14(v5 + v1[20], v13);
  (*(v18 + 8))(v20 + v11, v19);

  return swift_deallocObject();
}

uint64_t sub_1000376C0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003776C()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[10];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[15];
  v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v11(v3 + v1[16], v10);
  v11(v3 + v1[17], v10);
  v11(v3 + v1[18], v10);
  v11(v3 + v1[19], v10);
  v11(v3 + v1[20], v10);

  return swift_deallocObject();
}

uint64_t sub_100037A30()
{

  return swift_deallocObject();
}

uint64_t sub_100037A68()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[10];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[15];
  v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v11(v3 + v1[16], v10);
  v11(v3 + v1[17], v10);
  v11(v3 + v1[18], v10);
  v11(v3 + v1[19], v10);
  v11(v3 + v1[20], v10);

  return swift_deallocObject();
}

uint64_t sub_100037D2C()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[10];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[15];
  v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v11(v3 + v1[16], v10);
  v11(v3 + v1[17], v10);
  v11(v3 + v1[18], v10);
  v11(v3 + v1[19], v10);
  v11(v3 + v1[20], v10);

  return swift_deallocObject();
}

uint64_t sub_100037FF8()
{
  v1 = type metadata accessor for UnitConversionPopoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[10];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[15];
  v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v11(v3 + v1[16], v10);
  v11(v3 + v1[17], v10);
  v11(v3 + v1[18], v10);
  v11(v3 + v1[19], v10);
  v11(v3 + v1[20], v10);

  return swift_deallocObject();
}

uint64_t sub_1000382E0()
{
  sub_10003AECC(&qword_100158828, &qword_100113198);
  sub_10003AECC(&qword_100158820, &qword_100113190);
  sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
  sub_1000CECA8();
  sub_10001BAF0(&qword_100156AC0, sub_10001B814, &protocol conformance descriptor for <A> A?);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000383F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SheetPresentationModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ToolbarItem();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_100038670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003872C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000387DC()
{
  v1 = (type metadata accessor for UnitConversionUnitButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[16];
  v4 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10003892C()
{
  sub_10003AECC(&qword_1001591A8, &unk_100113E20);
  sub_1000D5E4C();
  sub_10006345C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100038A04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100038A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100038A98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000D8708(v1);
}

uint64_t sub_100038AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10003AE84(&qword_1001592F0, qword_1001140D8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100038BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10003AE84(&qword_1001592F0, qword_1001140D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100038D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_100159458, &qword_100114528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100038E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_100159458, &qword_100114528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100038F1C()
{

  return swift_deallocObject();
}

uint64_t sub_100038F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159688, &qword_100114750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038FFC()
{
  sub_10003AECC(&qword_1001597B8, &qword_100114978);
  type metadata accessor for HighlightHoverEffect();
  sub_1000E5FF8();
  sub_1000E60DC(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect, &protocol conformance descriptor for HighlightHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000390B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10003916C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039224()
{

  return swift_deallocObject();
}

uint64_t sub_100039260(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10003939C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100039504@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100039680(uint64_t *a1)
{
  sub_10003AECC(&qword_100159A40, &unk_100114DF8);
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10003AECC(&qword_100159A48, &qword_100114E08);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000398AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100039968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039A18()
{
  v1 = (type metadata accessor for UnitConversionCategoryButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[10], v4);

  return swift_deallocObject();
}

uint64_t sub_100039B40(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039BA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100039C64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039DA4()
{

  return swift_deallocObject();
}

uint64_t sub_100039DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159FA8, &unk_1001157E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100039E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159FA8, &unk_1001157E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100039ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_10015A050, &qword_100115848);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10003AE84(&qword_10015A058, &unk_100115850);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003A00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_10015A050, &qword_100115848);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10003AE84(&qword_10015A058, &unk_100115850);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10003A170()
{

  return swift_deallocObject();
}

uint64_t sub_10003A200(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_10015A238, &qword_100115A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A270()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003A2F8()
{

  return swift_deallocObject();
}

uint64_t sub_10003A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003A3F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

double sub_10003A4FC(uint64_t a1)
{
  static Alignment.center.getter();
  v10 = *(v1 + 2);
  sub_10003AE84(&qword_100154808, &unk_10010BB10);
  State.projectedValue.getter();
  v5 = v10;
  State.wrappedValue.getter();
  v8 = *v1;
  v9 = *(v1 + 8);
  v6 = v1[2];
  v7 = *(v1 + 24);
  v2 = swift_allocObject();
  v3 = *(v1 + 1);
  v2[1] = *v1;
  v2[2] = v3;
  v2[3] = *(v1 + 2);
  sub_100008E68(&v8, &v5, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v6, &v5, &qword_100154818, &qword_10010BB20);
  sub_100008E68(&v10, &v5, &qword_100154808, &unk_10010BB10);
  sub_10003AE84(&qword_100154820, &qword_10010BB28);
  sub_100004880(&qword_100154828, &qword_100154820, &qword_10010BB28, &protocol conformance descriptor for ZStack<A>);
  sub_10000482C();
  View.onChange<A>(of:initial:_:)();

  return result;
}

double sub_10003A6F8(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = 0xE500000000000000;
  v13 = 0xE900000000000072;
  v14 = 0x6D6D6172676F7270;
  if (*a1 == 2)
  {
    v14 = 0x657061506874616DLL;
  }

  else
  {
    v13 = 0xEA00000000007265;
  }

  v15 = 0x6669746E65696373;
  if (*a1)
  {
    v12 = 0xEA00000000006369;
  }

  else
  {
    v15 = 0x6369736162;
  }

  if (*a1 <= 1u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (*a1 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  v18 = 0xE500000000000000;
  v19 = 0x657061506874616DLL;
  v20 = 0xEA00000000007265;
  if (v11 == 2)
  {
    v20 = 0xE900000000000072;
  }

  else
  {
    v19 = 0x6D6D6172676F7270;
  }

  v21 = 0x6669746E65696373;
  if (v11)
  {
    v18 = 0xEA00000000006369;
  }

  else
  {
    v21 = 0x6369736162;
  }

  if (v11 <= 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (v11 <= 1)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (v16 == v22 && v17 == v23)
  {

    return result;
  }

  v25 = v8;
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    return result;
  }

  if (v11 != 1)
  {
    v39 = *(a3 + 8);
    v38 = *a3;
    v29 = v39;

    if ((v29 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v38, &qword_100154810, &qword_10010DF90);
      (*(v7 + 8))(v10, v25);
    }

    sub_1000560A8(v11);
    goto LABEL_42;
  }

  v39 = *(a3 + 24);
  v27 = a3[2];
  v38 = v27;
  if (v39 == 1)
  {
    v28 = v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v38, &qword_100154818, &qword_10010BB20);
    (*(v7 + 8))(v10, v25);
    v28 = v36;
  }

  swift_getKeyPath();
  v36 = v28;
  sub_10003AF14(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager, &unk_10010E108);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v28[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

  if (v32 == 1)
  {
    v37 = *(a3 + 8);
    v36 = *a3;
    v33 = v37;

    if ((v33 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v36, &qword_100154810, &qword_10010DF90);
      (*(v7 + 8))(v10, v25);
    }

    sub_1000560A8(1);
LABEL_42:
  }

  return result;
}

id variable initialization expression of CalculatorHistoryRecordManager.inputCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

uint64_t sub_10003AC4C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Anchor.Source<A>.bounds.getter();
  v3 = enum case for PopoverAttachmentAnchor.rect(_:);
  v4 = type metadata accessor for PopoverAttachmentAnchor();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_10003ACC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    Edge.Set.init(_:)();
  }

  sub_10003AE84(&qword_100154758, &qword_10010B5A8);
  type metadata accessor for UnitConversionPopoverView(0);
  sub_10003AECC(&qword_100154760, &unk_10010B5B0);
  type metadata accessor for PlainButtonStyle();
  sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0, &protocol conformance descriptor for Button<A>);
  sub_10003AF14(&qword_100154770, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10003AF14(&qword_100154778, type metadata accessor for UnitConversionPopoverView, &unk_1001130F0);
  return View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();
}

uint64_t sub_10003AE84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003AECC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003AF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003AF60()
{
  result = qword_100154780;
  if (!qword_100154780)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154780);
  }

  return result;
}

uint64_t sub_10003AFAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a8;
    v37 = v9;
    v34 = type metadata accessor for _TaskModifier2();
    v18 = *(v34 - 8);
    __chkstk_darwin(v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      v25._countAndFlagsBits = a4;
      v25._object = a5;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v38 = a6;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = type metadata accessor for TaskPriority();
    v29 = __chkstk_darwin(v28);
    (*(v31 + 16))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v29);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_100032228(v37, a9);
    v32 = sub_10003AE84(&qword_100154798, &qword_10010B5C0);
    return (*(v18 + 32))(a9 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a9 + *(sub_10003AE84(&qword_1001547A0, &qword_10010B5C8) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;

    return sub_100032228(v9, a9);
  }
}

uint64_t variable initialization expression of CalculatorNetworkManager.networkMonitor()
{
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  return NWPathMonitor.init()();
}

uint64_t getEnumTagSinglePayload for EdgeOutset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EdgeOutset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10003B388(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10003B400(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10003B480@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10003B4C4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10003B500(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10003B554(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void *sub_10003B5C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10003B5D8(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10003B660(uint64_t a1)
{
  v2 = sub_10003AF14(&qword_1001547D8, type metadata accessor for CalculateKey, &unk_10010B77C);
  v3 = sub_10003AF14(&qword_1001547E0, type metadata accessor for CalculateKey, &unk_10010B71C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10003B7F4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

__n128 sub_10003B850(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003B864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10003B8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10003B920(uint64_t a1)
{
  v2 = sub_10003AF14(&qword_100154840, type metadata accessor for OpenExternalURLOptionsKey, &unk_10010BA78);
  v3 = sub_10003AF14(&qword_100154848, type metadata accessor for OpenExternalURLOptionsKey, &unk_10010B9CC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_10003BB28(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (v4 != 94)
  {
    *a1 = v4;
  }

  return result;
}

void sub_10003BB78(double a1, double a2)
{
  if (*(v2 + 48) == a1 && *(v2 + 56) == a2)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10003BC98(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (static EdgeInsets.== infix(_:_:)())
  {
    v5[8] = a2;
    v5[9] = a3;
    v5[10] = a4;
    v5[11] = a5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10003BDE0(double a1, double a2)
{
  if (*(v2 + 96) == a1 && *(v2 + 104) == a2)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10003BF00(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (static EdgeInsets.== infix(_:_:)())
  {
    v5[14] = a2;
    v5[15] = a3;
    v5[16] = a4;
    v5[17] = a5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10003C048(char a1)
{
  if (*(v1 + 144) == (a1 & 1))
  {
    *(v1 + 144) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10003C158()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

BOOL sub_10003C1F8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v5 != sub_10003C664())
  {
    return 0;
  }

  v6 = [v2 mainScreen];
  [v6 bounds];
  v8 = v7;

  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v1[12];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = v9 + v1[15];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v8 == v10 + v1[17])
  {
    return 1;
  }

  v12 = [v2 mainScreen];
  [v12 bounds];
  v14 = v13;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v14 == v1[12];
}

__n128 sub_10003C41C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[3];
  *a2 = result;
  return result;
}

double sub_10003C4EC()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

__n128 sub_10003C590@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_10003C664()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0[6];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + v0[9];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v2 + v0[11];
}

double sub_10003C788()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

double sub_10003C828()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 112);
}

__n128 sub_10003C8CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_10003C9A0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    swift_getKeyPath();
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + 96);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return v6 / *(v1 + 104) < 0.98;
  }

  else
  {
    v8 = [v3 currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      return 0;
    }

    else
    {

      return sub_10003CC9C(a1);
    }
  }
}

uint64_t sub_10003CB50()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout, &unk_10010BC90);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 144);
}

uint64_t sub_10003CBF8()
{
  v1 = OBJC_IVAR____TtC10Calculator16CalculatorLayout___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10003CC9C(uint64_t a1)
{
  v51 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v11 - 8);
  v50 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v40 - v14;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 orientation];

  if (!sub_100018674(v22))
  {
    v44 = v4;
    v47 = v7;
    v46 = v2[13];
    v46(v20, enum case for UserInterfaceSizeClass.compact(_:), v1);
    v45 = v2[7];
    v45(v20, 0, 1, v1);
    v24 = *(v5 + 48);
    sub_10002F074(v51, v10);
    sub_10002F074(v20, &v10[v24]);
    v48 = v2;
    v25 = v2[6];
    if (v25(v10, 1, v1) == 1)
    {
      sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
      if (v25(&v10[v24], 1, v1) == 1)
      {
        v42 = v2 + 13;
        v43 = v5;
        sub_1000035CC(v10, &qword_100154948, qword_1001130B0);
LABEL_10:
        v31 = *(type metadata accessor for CalculatorSizeClass(0) + 20);
        v32 = v49;
        v46(v49, enum case for UserInterfaceSizeClass.regular(_:), v1);
        v45(v32, 0, 1, v1);
        v33 = *(v43 + 48);
        v34 = v47;
        sub_10002F074(v51 + v31, v47);
        sub_10002F074(v32, v34 + v33);
        if (v25(v34, 1, v1) == 1)
        {
          sub_1000035CC(v32, &qword_100154948, qword_1001130B0);
          if (v25(v34 + v33, 1, v1) == 1)
          {
            sub_1000035CC(v34, &qword_100154948, qword_1001130B0);
            v23 = 1;
            return v23 & 1;
          }
        }

        else
        {
          sub_10002F074(v34, v50);
          if (v25(v34 + v33, 1, v1) != 1)
          {
            v36 = v48;
            v37 = v44;
            (v48[4])(v44, v34 + v33, v1);
            sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
            v38 = v50;
            v23 = dispatch thunk of static Equatable.== infix(_:_:)();
            v39 = v36[1];
            v39(v37, v1);
            sub_1000035CC(v32, &qword_100154948, qword_1001130B0);
            v39(v38, v1);
            sub_1000035CC(v34, &qword_100154948, qword_1001130B0);
            return v23 & 1;
          }

          sub_1000035CC(v32, &qword_100154948, qword_1001130B0);
          (v48[1])(v50, v1);
        }

        v26 = v34;
        goto LABEL_16;
      }
    }

    else
    {
      sub_10002F074(v10, v17);
      v41 = v25;
      if (v25(&v10[v24], 1, v1) != 1)
      {
        v42 = v2 + 13;
        v43 = v5;
        v27 = v48;
        v28 = v44;
        (v48[4])(v44, &v10[v24], v1);
        sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = v27[1];
        v30(v28, v1);
        sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
        v30(v17, v1);
        sub_1000035CC(v10, &qword_100154948, qword_1001130B0);
        v25 = v41;
        if ((v29 & 1) == 0)
        {
LABEL_17:
          v23 = 0;
          return v23 & 1;
        }

        goto LABEL_10;
      }

      sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
      (v48[1])(v17, v1);
    }

    v26 = v10;
LABEL_16:
    sub_1000035CC(v26, &qword_100154940, &unk_10010BCB0);
    goto LABEL_17;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10003D380(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 currentDevice];
    v7 = [v6 orientation];

    if (sub_100018664(v7))
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_10003CC9C(a1) ^ 1;
    }
  }

  return v5 & 1;
}