__n128 sub_1000724B8@<Q0>(char a2@<W1>, __n128 *a3@<X8>)
{
  sub_1000040A8(&qword_1003567D0, &qword_100279E90);
  State.projectedValue.getter();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  result = v8;
  *a3 = v8;
  a3[1] = v9;
  a3[2].n128_u64[0] = KeyPath;
  a3[2].n128_u64[1] = sub_100074338;
  a3[3].n128_u64[0] = v6;
  a3[3].n128_u64[1] = ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter;
  a3[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100072590@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = *(a1 + 16);
  v25 = *(a1 + 32);
  sub_1000040A8(&qword_1003567D0, &qword_100279E90);
  State.projectedValue.getter();
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v11;
  v12 = *(a1 + 48);
  v10[3] = *(a1 + 32);
  v10[4] = v12;
  if (a2)
  {
    sub_100073B74(a1, &v20);
    v13 = 1;
  }

  else
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    sub_100073B74(a1, &v20);
    State.wrappedValue.getter();
    v15 = v20;
    v14 = v21;

    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v16 == 0;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  LOBYTE(v20) = 1;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = sub_100073C88;
  *(a3 + 56) = v10;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = sub_100073CA8;
  *(a3 + 80) = v18;
}

uint64_t sub_100072734(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v6 = *(*a1 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v6)
    {

      UUID.init()();
      v12 = *(a1 + 5);
      v13 = a1[7];
      sub_1000040A8(&qword_1003567D0, &qword_100279E90);
      State.wrappedValue.getter();
      v7 = v11;
      if (*(v6 + 16))
      {
        v8 = v10;

        sub_10004013C(v5, v8, v7, 0);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }

    v12 = *(a1 + 5);
    v13 = a1[7];
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1000040A8(&qword_1003567D0, &qword_100279E90);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for TryOutModel(0);
    sub_1000742A4(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10007294C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381D58);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Transcript is finished, clearing the state", v6, 2u);
    }

    sub_1000040A8(&qword_1003567D0, &qword_100279E90);
    State.wrappedValue.setter();
  }
}

uint64_t sub_100072AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a1;
  v38 = a3;
  v9 = sub_1000040A8(&qword_100358538, &unk_10027CEB8);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = [objc_opt_self() mainBundle];
  v48._object = 0x80000001002995E0;
  v14._object = 0x80000001002995C0;
  v48._countAndFlagsBits = 0xD000000000000055;
  v14._countAndFlagsBits = 0xD000000000000011;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v48);

  v47 = v16;
  v43 = a1;
  v44 = a2;
  v17 = a2;
  v45 = a3;
  v18 = v36;
  v46 = v36;
  sub_1000040A8(&qword_1003566E0, &qword_100279C90);
  v19 = Binding.projectedValue.getter();
  sub_100031770(v19, v20, v21);
  TextField<>.init<A>(_:text:axis:)();
  KeyPath = swift_getKeyPath();
  v23 = a5 + *(sub_1000040A8(&qword_1003567D8, &qword_100279EC8) + 36);
  *v23 = KeyPath;
  *(v23 + 8) = 5;
  *(v23 + 16) = 0;
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  v24 = a5 + *(sub_1000040A8(&qword_100358540, &qword_10027CF00) + 36);
  *v24 = KeyPath;
  *(v24 + 8) = xmmword_10027CAD0;
  *(v24 + 24) = xmmword_10027CAE0;
  *(v24 + 40) = 0;
  v25 = static Font.body.getter();
  v26 = swift_getKeyPath();
  v27 = (a5 + *(sub_1000040A8(&qword_100358548, &qword_10027CF08) + 36));
  *v27 = v26;
  v27[1] = v25;
  v28 = v37;
  v29 = v38;
  v43 = v37;
  v44 = v17;
  v45 = v38;
  v46 = v18;
  Binding.wrappedValue.getter();
  v43 = v41;
  v44 = v42;
  Sequence.publisher.getter();

  v30 = sub_1000040A8(&qword_100358550, &qword_10027CF10);
  v31 = v39;
  Publishers.Sequence.collect()();
  (*(v40 + 8))(v12, v31);
  v32 = swift_allocObject();
  *(v32 + 2) = v28;
  *(v32 + 3) = v17;
  *(v32 + 4) = v29;
  *(v32 + 5) = v18;
  v33 = (a5 + *(v30 + 56));
  *v33 = sub_1000741AC;
  v33[1] = v32;
}

uint64_t sub_100072E20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1000040A8(&qword_1003566E0, &qword_100279C90);
  Binding.wrappedValue.getter();
  v5 = String.count.getter();

  if (v5 >= 161)
  {

    sub_1000040A8(&qword_100358558, &qword_10027CF18);
    sub_100009274(&qword_100358560, &qword_100358558, &qword_10027CF18, &protocol conformance descriptor for ArraySlice<A>);
    String.init<A>(_:)();
    Binding.wrappedValue.setter();
  }
}

uint64_t sub_100072F98@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v3;
  v4 = sub_1000040A8(&qword_1003584D0, &unk_10027CDA8);
  sub_100073018(a2 + *(v4 + 44));
  v5 = static Edge.Set.all.getter();
  result = sub_1000040A8(&qword_1003584A8, &qword_10027CD98);
  v7 = a2 + *(result + 36);
  *v7 = v5;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0x4018000000000000;
  v7[40] = 0;
  return result;
}

uint64_t sub_100073018@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v52);
  v2 = &v49 - v1;
  v3 = sub_1000040A8(&qword_1003584D8, &qword_10027CDB8);
  __chkstk_darwin(v3);
  v5 = (&v49 - v4);
  v6 = sub_1000040A8(&qword_1003584E0, &qword_10027CDC0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_1000040A8(&qword_1003584E8, &qword_10027CDC8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  if (qword_100353970 != -1)
  {
    swift_once();
  }

  v19 = qword_100381BE0;
  KeyPath = swift_getKeyPath();
  *&v55 = v19;

  v21 = AnyShapeStyle.init<A>(_:)();
  v22 = &v16[*(sub_1000040A8(&qword_1003584F0, &unk_10027CE00) + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = &v16[*(v11 + 36)];
  v24 = v56;
  *v23 = v55;
  *(v23 + 1) = v24;
  *(v23 + 2) = v57;
  v25 = Image.init(systemName:)();
  v26 = (v5 + *(sub_1000040A8(&qword_1003584F8, &qword_10028C460) + 36));
  v27 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
  v28 = enum case for Image.Scale.small(_:);
  v29 = type metadata accessor for Image.Scale();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v5 = v25;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  v30 = Font.weight(_:)();

  v31 = swift_getKeyPath();
  v32 = (v5 + *(sub_1000040A8(&qword_100358508, &qword_1002892B0) + 36));
  *v32 = v31;
  v32[1] = v30;
  v33 = static Color.primary.getter();
  v34 = swift_getKeyPath();
  v35 = (v5 + *(v3 + 36));
  *v35 = v34;
  v35[1] = v33;
  v36 = enum case for DynamicTypeSize.accessibility2(_:);
  v37 = type metadata accessor for DynamicTypeSize();
  (*(*(v37 - 8) + 104))(v2, v36, v37);
  sub_1000742A4(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100073F34();
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v2, &qword_100354D60, &qword_100277B30);
    sub_100008FA0(v5, &qword_1003584D8, &qword_10027CDB8);
    v39 = v16;
    v40 = v16;
    v41 = v13;
    sub_100006C20(v40, v13, &qword_1003584E8, &qword_10027CDC8);
    v42 = v50;
    v43 = v51;
    v44 = *(v50 + 16);
    v45 = v53;
    v44(v53, v10, v51);
    v46 = v54;
    sub_100006C20(v41, v54, &qword_1003584E8, &qword_10027CDC8);
    v47 = sub_1000040A8(&qword_100358530, &qword_10027CEB0);
    v44((v46 + *(v47 + 48)), v45, v43);
    v48 = *(v42 + 8);
    v48(v10, v43);
    sub_100008FA0(v39, &qword_1003584E8, &qword_10027CDC8);
    v48(v45, v43);
    return sub_100008FA0(v41, &qword_1003584E8, &qword_10027CDC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100073678()
{
  v1 = sub_1000040A8(&qword_1003584A0, &qword_10027CD90);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_1000040A8(&qword_1003584A8, &qword_10027CD98);
  sub_100073E5C();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  sub_100009274(&qword_1003584C8, &qword_1003584A0, &qword_10027CD90, &protocol conformance descriptor for Button<A>);
  View.accessibility(label:)();
  sub_1000317C4(v8, v10, v12 & 1);

  return (*(v2 + 8))(v4, v1);
}

__n128 sub_10007389C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for TryOutModel(0);
  sub_1000742A4(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v6;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_100073988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000739D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100073A54()
{
  result = qword_100358450;
  if (!qword_100358450)
  {
    sub_100008CF0(&qword_100358420, &qword_10027CB98);
    sub_100009274(&qword_100358458, &qword_100358460, &qword_10027CBF8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358450);
  }

  return result;
}

uint64_t sub_100073B0C(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100073BAC()
{
  result = qword_100358478;
  if (!qword_100358478)
  {
    v1 = sub_100008CF0(&qword_100358470, &unk_10027CC00);
    sub_100044D70(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358478);
  }

  return result;
}

uint64_t sub_100073C30()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100073CD0()
{
  sub_100008CF0(&qword_100358428, &qword_10027CBA0);
  sub_100008CF0(&qword_100358470, &unk_10027CC00);
  sub_100008CF0(&qword_100358420, &qword_10027CB98);
  type metadata accessor for Capsule();
  sub_100073A54();
  sub_1000742A4(&qword_100358468, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  swift_getOpaqueTypeConformance2();
  sub_100073BAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100073E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100073E5C()
{
  result = qword_1003584B0;
  if (!qword_1003584B0)
  {
    sub_100008CF0(&qword_1003584A8, &qword_10027CD98);
    sub_100009274(&qword_1003584B8, &qword_1003584C0, &qword_10027CDA0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003584B0);
  }

  return result;
}

unint64_t sub_100073F34()
{
  result = qword_100358510;
  if (!qword_100358510)
  {
    sub_100008CF0(&qword_1003584D8, &qword_10027CDB8);
    sub_100073FEC();
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358510);
  }

  return result;
}

unint64_t sub_100073FEC()
{
  result = qword_100358518;
  if (!qword_100358518)
  {
    sub_100008CF0(&qword_100358508, &qword_1002892B0);
    sub_1000740A4();
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358518);
  }

  return result;
}

unint64_t sub_1000740A4()
{
  result = qword_100358520;
  if (!qword_100358520)
  {
    sub_100008CF0(&qword_1003584F8, &qword_10028C460);
    sub_100009274(&qword_100358528, &qword_100358500, &qword_10027CE10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358520);
  }

  return result;
}

uint64_t sub_100074164()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000741BC()
{
  result = qword_100358568;
  if (!qword_100358568)
  {
    sub_100008CF0(&qword_100358570, &qword_10027CF20);
    sub_100009274(&qword_1003584C8, &qword_1003584A0, &qword_10027CD90, &protocol conformance descriptor for Button<A>);
    sub_1000742A4(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100358568);
  }

  return result;
}

uint64_t sub_1000742A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000743E8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v4 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_100074580(double a1, double a2)
{
  v4 = type metadata accessor for UIMetricsSessionX();
  v5 = swift_allocObject();
  v2[6] = v4;
  v2[7] = &off_10032A2B8;
  v2[3] = v5;
  v6 = type metadata accessor for UIMetricsTranscriptDefault();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x404E000000000000;
  v2[22] = v6;
  v2[23] = &off_10032A280;
  v2[19] = v7;
  type metadata accessor for UIMetricsBannerX();
  v8 = swift_allocObject();
  *(v8 + 16) = a1 + -32.0;
  *(v8 + 24) = 0x405C800000000000;
  v2[2] = v8;
  v9 = type metadata accessor for UIMetricsQuestionnaireDefault();
  v10 = swift_allocObject();
  *(v10 + 32) = a2 * 0.03;
  *(v10 + 40) = xmmword_10027CF50;
  *(v10 + 56) = 0;
  v11 = vmulq_n_f64(xmmword_10027CF60, a2);
  *(v10 + 64) = v11;
  *(v10 + 80) = a2 * 0.2;
  *(v10 + 88) = v11.f64[0];
  *(v10 + 96) = a2 * 0.25;
  *(v10 + 104) = xmmword_10027CF70;
  *(v10 + 120) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v2[11] = v9;
  v2[12] = &off_100329C08;
  v2[8] = v10;
  type metadata accessor for UIMetricsFullScreenGuidanceX();
  v12 = swift_allocObject();
  v13 = a2;
  *(v12 + 224) = a1;
  *(v12 + 232) = a2;
  *(v12 + 16) = vmulq_n_f64(xmmword_10027CF80, a2);
  *(v12 + 32) = vmulq_n_f64(xmmword_10027CF90, a2);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  if (qword_100353988 != -1)
  {
    v20 = v12;
    swift_once();
    v13 = a2;
    v12 = v20;
  }

  v14 = 38.0 - *&qword_100381C20;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = v14;
  *(v12 + 104) = 0;
  *(v12 + 112) = v13 * 0.09;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13 * 0.025;
  *(v12 + 136) = 0;
  *(v12 + 144) = a2 * 0.03;
  v15.f64[0] = a1 + a1 * -0.8;
  *(v12 + 152) = 0;
  v15.f64[1] = v13;
  v16 = vmulq_f64(v15, xmmword_10027CFA0);
  *(v12 + 160) = v16;
  *(v12 + 176) = v16.f64[0];
  *(v12 + 184) = xmmword_10027CFB0;
  *(v12 + 200) = xmmword_10027CFB0;
  *(v12 + 216) = a1 * 0.835;
  v2[13] = v12;
  v17 = type metadata accessor for UIMetricsExplorerDefault();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v2[17] = v17;
  v2[18] = &off_10032A430;
  v2[14] = v18;
  return v2;
}

void *sub_100074920(double a1, double a2)
{
  v4 = type metadata accessor for UIMetricsSessionX();
  v5 = swift_allocObject();
  v2[6] = v4;
  v2[7] = &off_10032A2B8;
  v2[3] = v5;
  v6 = type metadata accessor for UIMetricsTranscriptDefault();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x404E000000000000;
  v2[22] = v6;
  v2[23] = &off_10032A280;
  v2[19] = v7;
  type metadata accessor for UIMetricsBannerX();
  v8 = swift_allocObject();
  *(v8 + 16) = a1 + -32.0;
  *(v8 + 24) = 0x405C800000000000;
  v2[2] = v8;
  v9 = type metadata accessor for UIMetricsQuestionnaireDefault();
  v10 = swift_allocObject();
  *(v10 + 32) = a2 * 0.03;
  *(v10 + 40) = xmmword_10027CF50;
  *(v10 + 56) = 0;
  v11 = vmulq_n_f64(xmmword_10027CF60, a2);
  *(v10 + 64) = v11;
  *(v10 + 80) = a2 * 0.2;
  *(v10 + 88) = v11.f64[0];
  *(v10 + 96) = a2 * 0.25;
  *(v10 + 104) = xmmword_10027CF70;
  *(v10 + 120) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v2[11] = v9;
  v2[12] = &off_100329C08;
  v2[8] = v10;
  type metadata accessor for UIMetricsFullScreenGuidanceX();
  v12 = swift_allocObject();
  v13 = a2;
  *(v12 + 224) = a1;
  *(v12 + 232) = a2;
  *(v12 + 16) = vmulq_n_f64(xmmword_10027CFC0, a2);
  *(v12 + 32) = vmulq_n_f64(xmmword_10027CF90, a2);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  if (qword_100353988 != -1)
  {
    v20 = v12;
    swift_once();
    v13 = a2;
    v12 = v20;
  }

  v14 = 38.0 - *&qword_100381C20;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = v14;
  *(v12 + 104) = 0;
  *(v12 + 112) = v13 * 0.09;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13 * 0.025;
  *(v12 + 136) = 0;
  *(v12 + 144) = a2 * 0.03;
  v15.f64[0] = a1 + a1 * -0.8;
  *(v12 + 152) = 0;
  v15.f64[1] = v13;
  v16 = vmulq_f64(v15, xmmword_10027CFA0);
  *(v12 + 160) = v16;
  *(v12 + 176) = v16.f64[0];
  *(v12 + 184) = xmmword_10027CFD0;
  *(v12 + 200) = xmmword_10027CFD0;
  *(v12 + 216) = a1 * 0.835;
  v2[13] = v12;
  v17 = type metadata accessor for UIMetricsExplorerDefault();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v2[17] = v17;
  v2[18] = &off_10032A430;
  v2[14] = v18;
  return v2;
}

uint64_t sub_100074BB0()
{

  sub_100008964(v0 + 3);
  sub_100008964(v0 + 8);

  sub_100008964(v0 + 14);
  sub_100008964(v0 + 19);

  return swift_deallocClassInstance();
}

uint64_t sub_100074C34@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  a1[3] = type metadata accessor for UIMetricsBannerX();
  a1[4] = &off_10032A398;
  *a1 = v3;
}

uint64_t sub_100074C84@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 104);
  a1[3] = type metadata accessor for UIMetricsFullScreenGuidanceX();
  a1[4] = &off_10032A190;
  *a1 = v3;
}

uint64_t sub_100074CD4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return Color.init(uiColor:)();
}

__n128 sub_100074D54()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_100381C10 = *&UIEdgeInsetsZero.top;
  *&qword_100381C20 = v1;
  return result;
}

void *sub_100074D70()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_1000040A8(&qword_100359000, &unk_10027D410);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v0[11] = [objc_allocWithZone(type metadata accessor for AccessibilitySettingsSource()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v0[12] = v8;
  v0[13] = UIContentSizeCategoryUnspecified;
  v0[14] = UIContentSizeCategoryUnspecified;
  v9 = objc_opt_self();
  v10 = UIContentSizeCategoryUnspecified;
  v11 = [v9 mainScreen];
  v12 = [v11 fixedCoordinateSpace];

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_unknownObjectRelease();
  v54.origin.x = v14;
  v54.origin.y = v16;
  v54.size.width = v18;
  v54.size.height = v20;
  Width = CGRectGetWidth(v54);
  v22 = [v9 mainScreen];
  v23 = [v22 fixedCoordinateSpace];

  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  swift_unknownObjectRelease();
  v55.origin.x = v25;
  v55.origin.y = v27;
  v55.size.width = v29;
  v55.size.height = v31;
  Height = CGRectGetHeight(v55);
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000F53C(v33, qword_100381ED8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v51 = v37;
    *v36 = 136315138;
    v38 = sub_1000E46EC(2, Width, Height);
    v40 = sub_10017C9E8(v38, v39, &v51);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "Screen size = %s", v36, 0xCu);
    sub_100008964(v37);
  }

  if (Width >= 428.0)
  {
    v41 = type metadata accessor for UIMetrics428();
    v42 = swift_allocObject();
    sub_100074920(Width, Height);
    v43 = &off_100329EC8;
  }

  else
  {
    v41 = type metadata accessor for UIMetrics390();
    v42 = swift_allocObject();
    sub_100074580(Width, Height);
    v43 = &off_10032A018;
  }

  v52 = v41;
  v53 = v43;
  *&v51 = v42;
  sub_100008A18(&v51, (v1 + 6));
  v1[4] = 0;
  *(v1 + 20) = 0;
  sub_1000040A8(&unk_100365610, &unk_100279630);
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  swift_allocObject();
  v1[3] = PassthroughSubject.init()();
  *&v51 = *(v1[11] + OBJC_IVAR____TtC8SOSBuddy27AccessibilitySettingsSource_contentSizeCategoryDidChange);
  sub_10000F574();
  swift_retain_n();

  v44 = static OS_dispatch_queue.main.getter();
  v50 = v44;
  v45 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v45 - 8) + 56))(v4, 1, 1, v45);
  sub_1000040A8(&qword_100359008, &unk_10027D420);
  sub_100009274(&qword_100359010, &qword_100359008, &unk_10027D420, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100026894(v4);

  swift_allocObject();
  swift_weakInit();

  sub_100009274(&qword_100359018, &qword_100359000, &unk_10027D410, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v46 = v49;
  Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v7, v46);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

void sub_1000753E4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v2;
    sub_100075A7C(v3);
  }
}

void sub_100075454()
{
  if ((sub_1001CFBB8() & 1) == 0)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F53C(v0, qword_100381C80);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Failed to start AccessibilitySettingsSource", v3, 2u);
    }
  }

  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  sub_100075A7C(v5);
}

void sub_1000755A4(void *a1)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      if (qword_100353AD8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000F53C(v9, qword_100381ED8);
      v10 = a1;

      v11 = v1;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v14 = 136446466;
        type metadata accessor for UIContentSizeCategory(0);
        v15 = v10;
        v16 = String.init<A>(describing:)();
        v18 = sub_10017C9E8(v16, v17, &v26);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        v19 = *(v11 + 104);
        v20 = String.init<A>(describing:)();
        v22 = sub_10017C9E8(v20, v21, &v26);

        *(v14 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v12, v13, "contentSizeCategory changed from: %{public}s to: %{public}s", v14, 0x16u);
        swift_arrayDestroy();
      }

      v23 = *(v11 + 104);
      v24 = *(v11 + 112);
      *(v11 + 112) = v23;
      v25 = v23;

      if (*(v11 + 32))
      {
        *(v11 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610, &unk_100279630);
        sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
        Subject<>.send()();
      }
    }
  }
}

void sub_100075880()
{
  sub_100008964((v0 + 48));

  v1 = *(v0 + 112);
}

uint64_t sub_1000758C8()
{

  sub_100008964((v0 + 48));

  v1 = *(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_10007598C(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 136);
  if (v1 > 2)
  {
    if (((1 << v1) & 0x2D8) != 0 || v1 != 5 && *(a1 + 56) != 1)
    {
      v2 = [objc_opt_self() secondaryLabelColor];

      return Color.init(uiColor:)();
    }

    goto LABEL_13;
  }

  if (*(*(a1 + 48) + 136))
  {
    if (v1 == 1)
    {
LABEL_13:

      return static Color.orange.getter();
    }

    return static Color.red.getter();
  }

  else
  {

    return static Color.green.getter();
  }
}

void sub_100075A7C(void *a1)
{
  v13 = *(v1 + 104);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v10 = v13;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      if (*(v1 + 32))
      {
        *(v1 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610, &unk_100279630);
        sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
        Subject<>.send()();
      }
    }
  }

  v11 = *(v1 + 104);
  *(v1 + 104) = a1;
  v12 = a1;

  sub_1000755A4(v13);
}

uint64_t sub_100075BD8(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 > 6)
  {
    if (v3 > 9)
    {
      if (v3 == 10)
      {
        v6 = "ated and what to do next";
        v7 = 0xD000000000000026;
      }

      else
      {
        if (v3 != 11)
        {
          return result;
        }

        v6 = "vigation bar title";
        v7 = 0xD000000000000023;
      }

      goto LABEL_18;
    }

    if (v3 != 7)
    {
      if (v3 == 8)
      {
        return result;
      }

      v6 = "at iPhone cooled down.";
      v7 = 0xD00000000000001CLL;
      goto LABEL_18;
    }

    v5 = "Turn on location access in Settings.";
LABEL_16:
    v6 = (v5 - 32);
    v7 = 0xD000000000000024;
LABEL_18:
    v8 = [objc_opt_self() mainBundle];
    v12._object = 0x8000000100299CB0;
    v9._object = (v6 | 0x8000000000000000);
    v12._countAndFlagsBits = 0xD000000000000048;
    v9._countAndFlagsBits = v7;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v12)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if ((v3 - 3) >= 4 && v3 >= 2)
  {
    v5 = "Turn off airplane mode to reconnect.";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100075D30(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x8000000100299C00;
    v2 = 0xD000000000000013;
    v3 = 0x80000001002973D0;
    v4 = 0x80000001002962C0;
    v5 = 0xD000000000000038;
    v6 = 0xD000000000000012;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x8000000100299C40;
    v2 = 0x636E656772656D45;
    v3 = 0xED0000534F532079;
    v5 = 0xD000000000000032;
    v6 = 0;
    v4 = 0;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, *&v6, v1, v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100075E64(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v9 = 0x8000000100299BA0;
    v3 = 0x8000000100299B70;
    v4 = 0xD00000000000005BLL;
    v5 = 0x1000000000000020;
  }

  else
  {
    v9 = 0x8000000100299B00;
    v3 = 0x8000000100299AD0;
    v4 = 0xD000000000000063;
    v5 = 0xD000000000000021;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, v6, *&v4)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100075F54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100076034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000760B8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008FA0(&v9, &qword_100359078, &qword_1002821A0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100076218()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 24);
  v5 = *(v0 + 16);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008FA0(&v9, &qword_100359078, &qword_1002821A0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100076378@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v60 = a1;
  v51 = type metadata accessor for KeyboardShortcut();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for GlassProminentButtonStyle();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100359020, &qword_10027D580);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v47 = sub_1000040A8(&qword_100359028, &qword_10027D588);
  __chkstk_darwin(v47);
  v12 = &v45 - v11;
  v53 = sub_1000040A8(&qword_100359030, &qword_10027D590);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v46 = &v45 - v13;
  v54 = sub_1000040A8(&qword_100359038, &qword_10027D598);
  __chkstk_darwin(v54);
  v15 = &v45 - v14;
  v16 = sub_1000040A8(&qword_100359040, &qword_10027D5A0);
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v57 = &v45 - v17;
  v55 = sub_1000040A8(&qword_100359048, &qword_10027D5A8);
  __chkstk_darwin(v55);
  v56 = &v45 - v18;
  v61 = v3;

  sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
  sub_10005D4D4();
  Button.init(action:label:)();
  v19 = &v10[*(v8 + 36)];
  v20 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
  v21 = enum case for ControlSize.large(_:);
  v22 = type metadata accessor for ControlSize();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  GlassProminentButtonStyle.init()();
  sub_100077350();
  sub_100077810(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v23 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v7, v23);
  v24 = &v12[*(v47 + 36)];
  sub_1000040A8(&qword_100357740, &qword_10027B2A0);
  static ButtonBorderShape.capsule.getter();
  sub_100008FA0(v10, &qword_100359020, &qword_10027D580);
  *v24 = swift_getKeyPath();
  v25 = v46;
  static KeyboardShortcut.defaultAction.getter();
  sub_10007743C();
  View.keyboardShortcut(_:)();
  (*(v50 + 8))(v5, v51);
  sub_100008FA0(v12, &qword_100359028, &qword_10027D588);
  v62[0] = v3[5];
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  if (v63 == 1)
  {
    v26 = static Color.white.getter();
  }

  else
  {
    v27 = [objc_opt_self() systemGray4Color];
    v26 = Color.init(uiColor:)();
  }

  v28 = v26;
  KeyPath = swift_getKeyPath();
  *&v62[0] = v28;
  v30 = AnyShapeStyle.init<A>(_:)();
  (*(v52 + 32))(v15, v25, v53);
  v31 = &v15[*(v54 + 36)];
  *v31 = KeyPath;
  v31[1] = v30;
  if (sub_1000760B8())
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_100076218();
  }

  v63 = v32 & 1;
  v33 = swift_allocObject();
  v34 = v3[3];
  v33[3] = v3[2];
  v33[4] = v34;
  v35 = v3[5];
  v33[5] = v3[4];
  v33[6] = v35;
  v36 = v3[1];
  v33[1] = *v3;
  v33[2] = v36;
  sub_1000775A0(v3, v62);
  sub_1000775D8();
  v37 = v57;
  View.onChange<A>(of:initial:_:)();

  sub_100008FA0(v15, &qword_100359038, &qword_10027D598);
  v38 = swift_allocObject();
  v39 = v3[3];
  *(v38 + 3) = v3[2];
  *(v38 + 4) = v39;
  v40 = v3[5];
  *(v38 + 5) = v3[4];
  *(v38 + 6) = v40;
  v41 = v3[1];
  *(v38 + 1) = *v3;
  *(v38 + 2) = v41;
  v42 = v56;
  (*(v58 + 32))(v56, v37, v59);
  v43 = (v42 + *(v55 + 36));
  *v43 = sub_100077734;
  v43[1] = v38;
  v43[2] = 0;
  v43[3] = 0;
  sub_10000CF4C(v42, v60, &qword_100359048, &qword_10027D5A8);
  return sub_1000775A0(v3, v62);
}

uint64_t sub_100076B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v40);
  v4 = &v38 - v3;
  v43 = sub_1000040A8(&qword_100359080, &qword_10027D680);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v38 - v5;
  v38 = sub_1000040A8(&qword_100357C98, &unk_10027D5C0);
  __chkstk_darwin(v38);
  v44 = &v38 - v6;
  v42 = sub_1000040A8(&qword_100357CA0, &unk_10027C090);
  __chkstk_darwin(v42);
  v45 = &v38 - v7;
  v8 = *(a1 + 40);
  *&v48 = *(a1 + 32);
  *(&v48 + 1) = v8;
  sub_100031770(v9, v10, v11);

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v48 = *(a1 + 80);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    static Color.black.getter();
  }

  else
  {
    static Color.white.getter();
  }

  v17 = Text.foregroundColor(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_1000317C4(v12, v14, v16 & 1);

  *&v48 = v17;
  *(&v48 + 1) = v19;
  LOBYTE(v49) = v21 & 1;
  *(&v49 + 1) = v23;
  v24 = enum case for DynamicTypeSize.accessibility2(_:);
  v25 = type metadata accessor for DynamicTypeSize();
  (*(*(v25 - 8) + 104))(v4, v24, v25);
  sub_100077810(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    v27 = v39;
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v4, &qword_100354D60, &qword_100277B30);
    sub_1000317C4(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    v29 = v44;
    (*(v41 + 32))(v44, v27, v43);
    v30 = v29 + *(v38 + 36);
    *v30 = KeyPath;
    *(v30 + 8) = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v31 = v45;
    sub_10000CF4C(v29, v45, &qword_100357C98, &unk_10027D5C0);
    v32 = (v31 + *(v42 + 36));
    v33 = v53;
    v32[4] = v52;
    v32[5] = v33;
    v32[6] = v54;
    v34 = v49;
    *v32 = v48;
    v32[1] = v34;
    v35 = v51;
    v32[2] = v50;
    v32[3] = v35;
    v36 = v31;
    v37 = v46;
    sub_10000CF4C(v36, v46, &qword_100357CA0, &unk_10027C090);
    result = sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
    *(v37 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000770A4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v11 = *(a3 + 80);
  v9 = *(a3 + 80);
  v12 = *(&v11 + 1);
  sub_10007773C(&v12, &v8);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  if (v4 == v8)
  {
    return sub_100008FA0(&v11, &qword_100354AA8, &qword_10027D640);
  }

  v8 = *(a3 + 64);
  v9 = v8;
  v10 = *(&v8 + 1);
  sub_10007773C(&v10, &v7);
  State.wrappedValue.getter();
  if (v7 == 1)
  {
    v8 = v11;
    LOBYTE(v7) = v4;
    State.wrappedValue.setter();
    sub_100008FA0(&v11, &qword_100354AA8, &qword_10027D640);
    v8 = v9;
    LOBYTE(v7) = v4;
    State.wrappedValue.setter();
    return sub_100008FA0(&v9, &qword_100354AA8, &qword_10027D640);
  }

  else
  {
    sub_100008FA0(&v9, &qword_100354AA8, &qword_10027D640);
    v6 = sub_100008FA0(&v11, &qword_100354AA8, &qword_10027D640);
    __chkstk_darwin(v6);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10007728C(uint64_t a1)
{
  if ((sub_1000760B8() & 1) == 0)
  {
    sub_100076218();
  }

  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  return State.wrappedValue.setter();
}

unint64_t sub_100077350()
{
  result = qword_100359050;
  if (!qword_100359050)
  {
    sub_100008CF0(&qword_100359020, &qword_10027D580);
    sub_100009274(&qword_100359058, &qword_100359060, &unk_10027D600, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359050);
  }

  return result;
}

unint64_t sub_10007743C()
{
  result = qword_100359068;
  if (!qword_100359068)
  {
    sub_100008CF0(&qword_100359028, &qword_10027D588);
    sub_100008CF0(&qword_100359020, &qword_10027D580);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100077350();
    sub_100077810(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359068);
  }

  return result;
}

uint64_t sub_10007758C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1000775D8()
{
  result = qword_100359070;
  if (!qword_100359070)
  {
    sub_100008CF0(&qword_100359038, &qword_10027D598);
    sub_100008CF0(&qword_100359028, &qword_10027D588);
    sub_10007743C();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359070);
  }

  return result;
}

uint64_t sub_1000776CC()
{
  sub_10007758C(*(v0 + 16), *(v0 + 24));
  sub_10007758C(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10007773C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354AB0, &unk_1002779B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100077810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100077864()
{
  result = qword_100359088;
  if (!qword_100359088)
  {
    sub_100008CF0(&qword_100359048, &qword_10027D5A8);
    sub_100008CF0(&qword_100359038, &qword_10027D598);
    sub_1000775D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359088);
  }

  return result;
}

uint64_t sub_100077944(uint64_t a1)
{
  *(v1 + 72) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 80) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = 769;
  *(v1 + 114) = 0;
  *(v1 + 118) = 2;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100077988(uint64_t a1)
{
  v3 = type metadata accessor for LinkState(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100359798, &unk_100284020);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_100006C20(a1, &v21 - v11, &qword_100359798, &unk_100284020);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_100008FA0(v12, &qword_100359798, &unk_100284020);
    v14 = (v1 + 118);
    LOBYTE(v15) = 2;
  }

  else
  {
    v15 = v12[1];
    result = sub_10007ADEC(v12, type metadata accessor for LinkState);
    v14 = (v1 + 118);
    if ((*(v1 + 118) & 1) != 0 && v15 != 2 && (v15 & 1) == 0)
    {
      v17 = *(v1 + 24);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lostSyncTimes);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return result;
        }

        *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lostSyncTimes) = v20;
      }
    }
  }

  *v14 = v15;
  sub_100006C20(a1, v9, &qword_100359798, &unk_100284020);
  if (v13(v9, 1, v3) == 1)
  {
    return sub_100008FA0(v9, &qword_100359798, &unk_100284020);
  }

  sub_10007AD88(v9, v6);
  if (*(v1 + 24))
  {

    sub_1000790D0(v6);
  }

  return sub_10007ADEC(v6, type metadata accessor for LinkState);
}

uint64_t sub_100077C18(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v2 != 2 && (v2 & 1) != 0 || (v3 = *(a1 + 58), v3 != 2) && (v3 & 1) != 0 || (v4 = *(a1 + 56), v4 == 4))
  {
    LOBYTE(v4) = 3;
  }

  *(v1 + 113) = v4;
  if ((v2 == 2 || (v2 & 1) == 0) && ((v5 = *(a1 + 58), v5 == 2) || (v5 & 1) == 0))
  {
    v7 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
    v6 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 16);
    v8 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 1;
  }

  *(v1 + 88) = v7;
  *(v1 + 104) = v6;
  *(v1 + 112) = v8;
  *(v1 + 114) = sub_100071A54() & 1;
  result = sub_100071A54();
  if ((result & 1) != 0 && (*(v1 + 116) & 1) == 0 && (*(v1 + 115) & 1) == 0)
  {
    v10 = *(v1 + 24);
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceTimes);
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
        return result;
      }

      *(v10 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceTimes) = v13;
    }
  }

  *(v1 + 115) = result & 1;
  if (*(v1 + 114) == 1 && *(v1 + 24))
  {
    v14 = *(v1 + 119);

    sub_1000793DC(v14);
  }

  return result;
}

uint64_t sub_100077D84(uint64_t result)
{
  if (!*(result + 48))
  {
    goto LABEL_19;
  }

  v2 = result;
  result = sub_100071A54();
  v3 = result;
  if (!*(v2 + 48))
  {
    if (result)
    {
      result = 0;
      goto LABEL_8;
    }

LABEL_19:
    v4 = 0;
    *(v1 + 116) = 0;
    goto LABEL_20;
  }

  result = sub_100071A54();
  if ((v3 & 1) == 0)
  {
    *(v1 + 116) = 0;
    if ((result & 1) == 0)
    {
LABEL_5:
      v4 = 0;
LABEL_20:
      *(v1 + 117) = v4;
      return result;
    }

    goto LABEL_14;
  }

LABEL_8:
  if ((*(v1 + 116) & 1) == 0 && (*(v1 + 115) & 1) == 0)
  {
    v5 = *(v1 + 24);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceTimes);
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        goto LABEL_22;
      }

      *(v5 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceTimes) = v8;
    }
  }

  *(v1 + 116) = 1;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_14:
  if (*(v1 + 117))
  {
    goto LABEL_18;
  }

  v9 = *(v1 + 24);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = *(v9 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceTimes);
  v7 = __OFADD__(v10, 1);
  v11 = v10 + 1;
  if (!v7)
  {
    *(v9 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceTimes) = v11;
LABEL_18:
    v4 = 1;
    goto LABEL_20;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_100077E78(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000040A8(&qword_100356510, &qword_10027D810);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) && *a1 == 5 && *(a1 + 17) == 1)
  {
    if (*(v2 + 24))
    {
      return;
    }

    static DispatchTime.now()();
    v14 = sub_100071A54();
    type metadata accessor for Data(0);
    swift_allocObject();
    *(v2 + 24) = sub_100078A50(v13, v14 & 1);
    goto LABEL_18;
  }

  v15 = *(v2 + 24);
  if (!v15)
  {
    return;
  }

  sub_100006C20(a2, v10, &qword_100356510, &qword_10027D810);
  v16 = type metadata accessor for ConnectionClosed(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v10, 1, v16) == 1)
  {

    sub_100008FA0(v10, &qword_100356510, &qword_10027D810);
LABEL_10:
    v19 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  v18 = *v10;

  sub_10007ADEC(v10, type metadata accessor for ConnectionClosed);
  if (v18 == 12)
  {
    goto LABEL_10;
  }

  v19 = sub_100078220(v18);
LABEL_12:
  v21 = (v15 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_exitReason);
  *v21 = v19;
  v21[1] = v20;

  sub_100006C20(a2, v7, &qword_100356510, &qword_10027D810);
  if (v17(v7, 1, v16) == 1)
  {
    sub_100008FA0(v7, &qword_100356510, &qword_10027D810);
  }

  else
  {

    sub_10007ADEC(v7, type metadata accessor for ConnectionClosed);
    v22 = *(v2 + 24);
    if (!v22)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v23 = sub_100109A94();
    v25 = v24;

    v26 = (v22 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_requestReason);
    *v26 = v23;
    v26[1] = v25;
  }

  if (!*(v2 + 24))
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = sub_100079FA0();

  sub_10017EEA8(0, v27);

  *(v2 + 24) = 0;
LABEL_18:

  sub_100078448();
}

uint64_t sub_100078220(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    if (a1 == 10)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001CLL;
    }

    v7 = 0xD000000000000014;
    v8 = 0xD000000000000014;
    if (a1 != 7)
    {
      v8 = 0x7265766F646E6148;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7571655272657355;
    v2 = 0xD000000000000011;
    v3 = 0x636E656772656D45;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x794D646E6946;
    if (a1 != 1)
    {
      v4 = 0x656E616C70726941;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000783D4(uint64_t result)
{
  if (*(v1 + 119) != (result & 1))
  {
    *(v1 + 119) = result & 1;
    if (result)
    {
      if (*(v1 + 24))
      {
        v2 = *(v1 + 114);

        sub_100079A60(v2);
      }
    }
  }

  return result;
}

uint64_t sub_100078448()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356A90, &unk_10027D800);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  result = *(v1 + 32);
  if (*(v1 + 24))
  {
    if (result)
    {
      return result;
    }

    sub_10001D630(0, &qword_100356B50, NSTimer_ptr);
    v11 = [objc_opt_self() mainRunLoop];
    v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100008FA0(v4, &qword_100356A90, &unk_10027D800);
    v17 = v13;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_10007AC8C();
    v14 = ConnectablePublisher.autoconnect()();

    v17 = v14;
    swift_allocObject();
    swift_weakInit();
    sub_1000040A8(&qword_100359788, &unk_1002882F0);
    sub_10007AD24();
    v15 = Publisher<>.sink(receiveValue:)();

    *(v1 + 32) = v15;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    *(v1 + 32) = 0;
  }
}

uint64_t sub_100078750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 24))
    {
      v3 = *(result + 56);
      v12 = *(result + 40);
      v13[0] = v3;
      *(v13 + 9) = *(result + 65);
      v4 = *(result + 88);
      v5 = *(result + 96);
      v6 = *(result + 104);
      v7 = *(result + 112);
      v8 = *(result + 113);
      if (*(result + 116))
      {
        v9 = 1;
      }

      else
      {
        v9 = *(result + 115);
      }

      v10 = *(result + 117);
      v11 = *(result + 118);

      sub_100079C0C(&v12, v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return result;
}

uint64_t sub_100078844()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000788B0(uint64_t result)
{
  v2 = *v1;
  v3 = *(result + 16);
  *(v2 + 40) = *result;
  *(v2 + 56) = v3;
  *(v2 + 65) = *(result + 25);
  if ((*(result + 40) & 1) == 0)
  {
    v4 = *(result + 16);
    v5[0] = *result;
    v5[1] = v4;
    v6 = *(result + 32);
    if (*(v2 + 24))
    {

      sub_100078E94(v5);
    }
  }

  return result;
}

void sub_1000789D0()
{
  if (*(*v0 + 24))
  {
    v1 = *(*v0 + 114);

    sub_100079818(v1);
  }
}

uint64_t sub_100078A50(char *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_firstTargetId;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lastTargetId;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_inServiceSeconds) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_outOfServiceSeconds) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_kRelativeAzimuthBuckets) = &off_100321D98;
  v15 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativeAzimuth;
  *(v3 + v15) = sub_100256650(_swiftEmptyArrayStorage);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativePitch) = &off_100321DF0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_targetVisibility) = &off_100321E28;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caForegroundRequests) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyTotal) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyCount) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caBannerTargetAimHelpCount) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceTimes) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceSeconds) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceTimes) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceSeconds) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lostSyncTimes) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_notSyncedSeconds) = 0;
  v16 = (v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_exitReason);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_requestReason);
  *v17 = 0;
  v17[1] = 0;
  (*(v7 + 56))(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingCALatencySince, 1, 1, v6);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection) = 2;
  v18 = *(v7 + 16);
  v18(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_startTimestamp, a1, v6);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_isTryOut) = a2;
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381C68);
  v18(v12, a1, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a1;
    v23 = v22;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v23 = 136315138;
    v18(v9, v12, v6);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = *(v7 + 8);
    v27(v12, v6);
    v28 = sub_10017C9E8(v24, v26, &v34);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "SatelliteConnectionStats: started tracking at %s", v23, 0xCu);
    sub_100008964(v32);

    v27(v33, v6);
  }

  else
  {

    v29 = *(v7 + 8);
    v29(a1, v6);
    v29(v12, v6);
  }

  return v3;
}

void sub_100078E94(uint64_t *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_firstTargetId;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_firstTargetId + 8) == 1)
  {
    v5 = *a1;
    *v4 = *a1;
    *(v4 + 8) = 0;
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381C68);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "SatelliteConnectionStats: first targetId == %lld", v9, 0xCu);
    }
  }

  v10 = v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lastTargetId;
  v11 = *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lastTargetId + 8);
  v12 = *a1;
  if ((v11 & 1) != 0 || *v10 != v12)
  {
    *v10 = v12;
    *(v10 + 8) = 0;
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381C68);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v14, "SatelliteConnectionStats: last targetId == %lld", v15, 0xCu);
    }
  }
}

void sub_1000790D0(uint64_t a1)
{
  v2 = *(a1 + 1);
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection) == 2)
  {
    if (v2 == 2 || (v2 & 1) != 0)
    {
      return;
    }

    *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection) = 0;
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381C68);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "SatelliteConnectionStats: started tracking lost connection";
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    return;
  }

  v7 = *(a1 + 2);
  if (v7 == 2 || (v7 & v2 & 1) == 0)
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection) = 2;
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381C68);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "SatelliteConnectionStats: stopped tracking lost connection";
LABEL_15:
    _os_log_impl(&_mh_execute_header, oslog, v4, v6, v5, 2u);
  }

LABEL_16:
}

void sub_1000792A4(uint64_t a1)
{
  v3 = *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyTotal);
  v4 = __CFADD__(v3, a1);
  v5 = v3 + a1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyTotal) = v5;
    v6 = *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyCount);
    v4 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (!v4)
    {
      v1 = a1;
      *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyCount) = v7;
      if (qword_100353A08 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_4:
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381C68);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v9, "SatelliteConnectionStats: recorded CA latency = %llu", v10, 0xCu);
  }
}

void sub_1000793DC(int a1)
{
  v37 = a1;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v5 - 8);
  v38 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v36[-v8];
  __chkstk_darwin(v10);
  v12 = &v36[-v11];
  v13 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingCALatencySince;
  swift_beginAccess();
  sub_100006C20(&v1[v13], v12, &qword_100356518, &qword_1002797E0);
  v39 = v3;
  v14 = *(v3 + 48);
  v15 = v14(v12, 1, v2);
  v16 = v12;
  v17 = v1;
  sub_100008FA0(v16, &qword_100356518, &qword_1002797E0);
  if (v15 != 1)
  {
    v18 = v40;
    static DispatchTime.now()();
    sub_100006C20(&v1[v13], v9, &qword_100356518, &qword_1002797E0);
    if (v14(v9, 1, v2) == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v19 = v1;
    v20 = DispatchTime.uptimeNanoseconds.getter();
    v21 = DispatchTime.uptimeNanoseconds.getter();
    v22 = v39;
    if (v21 >= v20)
    {
      v17 = *(v39 + 8);
      (v17)(v18, v2);
      v25 = 0;
    }

    else
    {
      v23 = DispatchTime.uptimeNanoseconds.getter();
      v24 = DispatchTime.uptimeNanoseconds.getter();
      v17 = *(v22 + 8);
      (v17)(v18, v2);
      v25 = v23 - v24;
      if (v23 < v24)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v26 = v25;
    (v17)(v9, v2);
    v17 = v19;
    sub_1000792A4(v26 / 0x3B9ACA00);
    v27 = v38;
    (*(v22 + 56))(v38, 1, 1, v2);
    swift_beginAccess();
    sub_10002B4A0(v27, &v17[v13]);
    swift_endAccess();
  }

  v13 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection;
  v28 = v17[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingLostConnection];
  if (v28 != 2 && (v28 & 1) == 0)
  {
    if ((v37 & 1) == 0)
    {
LABEL_16:
      v17[v13] = 1;
      return;
    }

    v29 = *&v17[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caBannerTargetAimHelpCount];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *&v17[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caBannerTargetAimHelpCount] = v31;
      if (qword_100353A08 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
    v32 = type metadata accessor for Logger();
    sub_10000F53C(v32, qword_100381C68);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "SatelliteConnectionStats: recorded CA banner orientation assistance", v35, 2u);
    }

    if (v17[v13] != 2)
    {
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_100079818(char a1)
{
  v3 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caForegroundRequests);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caForegroundRequests) = v8;
    if (qword_100353A08 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381C68);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SatelliteConnectionStats: recorded CA foreground request", v12, 2u);
  }

  if ((a1 & 1) == 0)
  {
    static DispatchTime.now()();
    v13 = type metadata accessor for DispatchTime();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    v14 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingCALatencySince;
    swift_beginAccess();
    sub_10002B4A0(v5, v1 + v14);
    swift_endAccess();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "SatelliteConnectionStats: started tracking CA latency", v17, 2u);
    }
  }
}

void sub_100079A60(char a1)
{
  v3 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if ((a1 & 1) == 0)
  {
    static DispatchTime.now()();
    v6 = type metadata accessor for DispatchTime();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingCALatencySince;
    swift_beginAccess();
    sub_10002B4A0(v5, v1 + v7);
    swift_endAccess();
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F53C(v8, qword_100381C68);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SatelliteConnectionStats: started tracking CA latency", v11, 2u);
    }
  }
}

void sub_100079C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8, char a9)
{
  v12 = v9;
  LOBYTE(v15) = a6;
  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_5:
    v16 = &v9[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_inServiceSeconds];
    v20 = *&v9[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_inServiceSeconds];
    v18 = __OFADD__(v20, 1);
    v19 = v20 + 1;
    if (v18)
    {
      goto LABEL_56;
    }

    goto LABEL_6;
  }

  v16 = &v9[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_outOfServiceSeconds];
  v17 = *&v9[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_outOfServiceSeconds];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  *v16 = v19;
  if (a5)
  {
    goto LABEL_34;
  }

  v21 = *&a2;
  if (*&a2 < 0.0)
  {
    v21 = -*&a2;
  }

  v22 = floor(v21 * 57.2957795);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v22 <= -9.22337204e18)
  {
    goto LABEL_58;
  }

  if (v22 >= 9.22337204e18)
  {
    goto LABEL_59;
  }

  v24 = *&v9[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_kRelativeAzimuthBuckets];
  v25 = *(v24 + 16);
  v26 = (v24 + 32);
  do
  {
    if (!v25)
    {
      goto LABEL_21;
    }

    v27 = *v26++;
    v10 = v27;
    --v25;
  }

  while (v27 < v22);
  v28 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativeAzimuth;
  swift_beginAccess();
  v30 = *&v9[v28];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = sub_1001921C8(v10, v29);
    if (v33)
    {
      v31 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v31 = 0;
    }
  }

  v11 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *&v12[v28];
    *&v12[v28] = 0x8000000000000000;
    v9 = &v50;
    sub_10018964C(v11, v10, isUniquelyReferenced_nonNull_native);
    *&v12[v28] = v50;
    swift_endAccess();
LABEL_21:
    v35 = -*&a3;
    if (*&a3 >= 0.0)
    {
      v35 = *&a3;
    }

    v36 = floor(v35 * 57.2957795 / 15.0);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_60;
    }

    if (v36 <= -9.22337204e18)
    {
      goto LABEL_61;
    }

    if (v36 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v10 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativePitch;
    v9 = *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativePitch];
    if (*(v9 + 2) - 1 >= v36)
    {
      v11 = v36;
    }

    else
    {
      v11 = *(v9 + 2) - 1;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v10] = v9;
    if ((v37 & 1) == 0)
    {
      goto LABEL_63;
    }

    for (; (v11 & 0x8000000000000000) == 0; v9 = sub_10019D068(v9))
    {
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_65;
      }

      v38 = *&v9[8 * v11 + 32];
      v18 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v18)
      {
        goto LABEL_68;
      }

      *&v9[8 * v11 + 32] = v39;
      *&v12[v10] = v9;
LABEL_34:
      v40 = qword_10027D818[v15];
      v15 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_targetVisibility;
      v9 = *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_targetVisibility];
      v11 = *(v9 + 2);
      if ((v11 - 1) >= v40)
      {
        v10 = v40;
      }

      else
      {
        v10 = v11 - 1;
      }

      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v15] = v9;
      if (v41)
      {
        if (!v11)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v9 = sub_10019D068(v9);
        if (!v11)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      if (v10 >= *(v9 + 2))
      {
        goto LABEL_54;
      }

      v42 = *&v9[8 * v10 + 32];
      v18 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (!v18)
      {
        *&v9[8 * v10 + 32] = v43;
        *&v12[v15] = v9;
        if (a7)
        {
          v44 = *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceSeconds];
          v18 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v18)
          {
            goto LABEL_66;
          }

          *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_obstructionGuidanceSeconds] = v45;
        }

        if (a8)
        {
          v46 = *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceSeconds];
          v18 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v18)
          {
            goto LABEL_67;
          }

          *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_skimmerGuidanceSeconds] = v47;
        }

        if (a9 != 2 && (a9 & 1) == 0)
        {
          v48 = *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_notSyncedSeconds];
          v18 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v18)
          {
            goto LABEL_69;
          }

          *&v12[OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_notSyncedSeconds] = v49;
        }

        return;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  __break(1u);
}

void *sub_100079FA0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_100358320, &qword_10027C9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027D6C0;
  *(inited + 32) = 0x6C614361436D756ELL;
  *(inited + 40) = 0xEB0000000070756CLL;
  *(inited + 48) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 56), "numCaCallupFS");
  *(inited + 70) = -4864;
  *(inited + 72) = Int64._bridgeToObjectiveC()();
  *(inited + 80) = 0x306E65704F727564;
  *(inited + 88) = 0xE800000000000000;
  v7 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_targetVisibility;
  if (!*(*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_targetVisibility) + 16))
  {
    goto LABEL_41;
  }

  *(inited + 96) = Int64._bridgeToObjectiveC()();
  *(inited + 104) = 0x316E65704F727564;
  *(inited + 112) = 0xE800000000000000;
  if (*(*(v1 + v7) + 16) < 2uLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(inited + 120) = Int64._bridgeToObjectiveC()();
  *(inited + 128) = 0x326E65704F727564;
  *(inited + 136) = 0xE800000000000000;
  if (*(*(v1 + v7) + 16) < 3uLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(inited + 144) = Int64._bridgeToObjectiveC()();
  *(inited + 152) = 0x336E65704F727564;
  *(inited + 160) = 0xE800000000000000;
  if (*(*(v1 + v7) + 16) < 4uLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(inited + 168) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 176), "durOrientv15");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v8 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativePitch;
  if (!*(*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativePitch) + 16))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(inited + 192) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 200), "durOrientv30");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  if (*(*(v1 + v8) + 16) < 2uLL)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  *(inited + 216) = Int64._bridgeToObjectiveC()();
  *(inited + 224) = 0x6E6569724F727564;
  *(inited + 232) = 0xEF726568744F7674;
  if (*(*(v1 + v8) + 16) < 3uLL)
  {
    goto LABEL_47;
  }

  *(inited + 240) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 248), "durInService");
  *(inited + 261) = 0;
  *(inited + 262) = -5120;
  *(inited + 264) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 272), "durOutService");
  *(inited + 286) = -4864;
  *(inited + 288) = Int64._bridgeToObjectiveC()();
  *(inited + 296) = 0x6C61746F54727564;
  *(inited + 304) = 0xE800000000000000;
  static DispatchTime.now()();
  v9 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v9)
  {
LABEL_11:
    (*(v3 + 8))(v5, v2);
    goto LABEL_12;
  }

  v10 = DispatchTime.uptimeNanoseconds.getter();
  v11 = DispatchTime.uptimeNanoseconds.getter();
  v12 = *(v3 + 8);
  v3 += 8;
  v12(v5, v2);
  if (v10 < v11)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  *(inited + 312) = UInt64._bridgeToObjectiveC()();
  strcpy((inited + 320), "is_tryout_mode");
  *(inited + 335) = -18;
  *(inited + 336) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 344), "numObstruction");
  *(inited + 359) = -18;
  *(inited + 360) = Int64._bridgeToObjectiveC()();
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x800000010029A1F0;
  *(inited + 384) = Int64._bridgeToObjectiveC()();
  *(inited + 392) = 0x6D6D696B536D756ELL;
  *(inited + 400) = 0xEA00000000007265;
  *(inited + 408) = Int64._bridgeToObjectiveC()();
  *(inited + 416) = 0x6E6F697461727564;
  *(inited + 424) = 0xEF72656D6D696B53;
  *(inited + 432) = Int64._bridgeToObjectiveC()();
  *(inited + 440) = 0x6E79736E556D756ELL;
  *(inited + 448) = 0xE900000000000063;
  *(inited + 456) = Int64._bridgeToObjectiveC()();
  strcpy((inited + 464), "durationUnsync");
  *(inited + 479) = -18;
  *(inited + 480) = Int64._bridgeToObjectiveC()();
  v13 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328, &unk_10027D7F0);
  swift_arrayDestroy();
  v14 = *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_kRelativeAzimuthBuckets);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    v51 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_relativeAzimuth;
    swift_beginAccess();
    v50 = v1;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      v52 = v20;
      v53 = 0x6E6569724F727564;
      v54 = 0xEA00000000006874;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v24 = v53;
      v23 = v54;
      if (*(*(v1 + v51) + 16))
      {
        sub_1001921C8(v19, v22);
      }

      v25.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v13;
      v27 = sub_100186A08(v24, v23);
      v29 = v13[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v33 = v28;
      if (v13[3] < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v38 = v27;
      sub_100091C60();
      v27 = v38;
      v13 = v53;
      if (v33)
      {
LABEL_14:
        v17 = v13[7];
        v18 = *(v17 + 8 * v27);
        *(v17 + 8 * v27) = v25;

        goto LABEL_15;
      }

LABEL_24:
      v13[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v13[6] + 16 * v27);
      *v35 = v24;
      v35[1] = v23;
      *(v13[7] + 8 * v27) = v25;
      v36 = v13[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_40;
      }

      v13[2] = v37;
LABEL_15:
      --v15;
      v1 = v50;
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    sub_10008F760(v32, isUniquelyReferenced_nonNull_native);
    v27 = sub_100186A08(v24, v23);
    if ((v33 & 1) != (v34 & 1))
    {
      goto LABEL_48;
    }

LABEL_23:
    v13 = v53;
    if (v33)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_28:
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_caLatencyCount))
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    sub_1001894D4(isa, 0x636E6574614C6163, 0xEC00000065764179, v40);
    v13 = v53;
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_firstTargetId + 8) & 1) == 0)
  {
    v41 = Int64._bridgeToObjectiveC()().super.super.isa;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    sub_1001894D4(v41, 0x6174536449746173, 0xEA00000000007472, v42);
    v13 = v53;
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_lastTargetId + 8) & 1) == 0)
  {
    v43 = Int64._bridgeToObjectiveC()().super.super.isa;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    sub_1001894D4(v43, 0x646E456449746173, 0xE800000000000000, v44);
    v13 = v53;
  }

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_exitReason + 8))
  {

    v45 = String._bridgeToObjectiveC()();

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    sub_1001894D4(v45, 0x7361655274697865, 0xEA00000000006E6FLL, v46);
    v13 = v53;
  }

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_requestReason + 8))
  {

    v47 = String._bridgeToObjectiveC()();

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v13;
    sub_1001894D4(v47, 0x5274736575716572, 0xED00006E6F736165, v48);
    return v53;
  }

  return v13;
}

uint64_t sub_10007A92C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_startTimestamp;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddyP33_01F568DD0E8813FA3CE40EF8739F88CF4Data_trackingCALatencySince, &qword_100356518, &qword_1002797E0);
  return v0;
}

uint64_t sub_10007AA14()
{
  sub_10007A92C();

  return swift_deallocClassInstance();
}

void sub_10007AABC(uint64_t a1)
{
  type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    sub_10002B388(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for TryOutModel.WhenActive(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

unint64_t sub_10007AC8C()
{
  result = qword_100359780;
  if (!qword_100359780)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359780);
  }

  return result;
}

uint64_t sub_10007ACE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10007AD24()
{
  result = qword_100359790;
  if (!qword_100359790)
  {
    sub_100008CF0(&qword_100359788, &unk_1002882F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359790);
  }

  return result;
}

uint64_t sub_10007AD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007ADEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SBUISystemApertureLayoutMode.debugDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6C616D696E696DLL;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6D6F74737563;
      }

      goto LABEL_12;
    }

    return 0x746361706D6F63;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6465766F6D6572;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6576697463616E69;
      }

LABEL_12:
      _StringGuts.grow(_:)(42);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0xD000000000000027;
    }

    return 0x6C616974696E69;
  }
}

uint64_t sub_10007AFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000040A8(&qword_1003597A0, &unk_10027D870);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007B0A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000040A8(&qword_1003597A0, &unk_10027D870);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007B170(uint64_t a1)
{
  sub_10007B2FC(319);
  if (v1 <= 0x3F)
  {
    sub_10007B390(319, &qword_100359818, type metadata accessor for StewieModel, &qword_1003561B8, type metadata accessor for StewieModel);
    if (v2 <= 0x3F)
    {
      sub_10007B46C(319, &qword_100359820, &type metadata accessor for Binding);
      if (v4 <= 0x3F)
      {
        sub_10007E2C4(319, &qword_100359830, &type metadata accessor for State, v3);
        if (v5 <= 0x3F)
        {
          sub_10007E324(319, &qword_100359838, &type metadata accessor for State);
          if (v6 <= 0x3F)
          {
            sub_10007B46C(319, &unk_100359840, &type metadata accessor for State);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10007B2FC(uint64_t a1)
{
  if (!qword_100359810)
  {
    type metadata accessor for AppEvents();
    sub_10007B424(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100359810);
    }
  }
}

void sub_10007B390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10007B424(a4, a5, "\ts\n");
    v8 = type metadata accessor for EnvironmentObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007B424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10007B46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100008CF0(&qword_100359828, &qword_100286100);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10007B4F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100359880, &qword_10027D8F0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000040A8(&qword_100359888, &qword_10027D8F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_1000040A8(&qword_100359890, &qword_10027D900);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v48 = *(v1 + 32);
  v49 = v12;
  LOBYTE(v50) = v13;
  sub_1000040A8(&qword_100359898, &qword_10027D908);
  Binding.wrappedValue.getter();
  if (LOBYTE(v47._countAndFlagsBits) > 2u)
  {
    if (LOBYTE(v47._countAndFlagsBits) - 4 >= 2)
    {
      if (LOBYTE(v47._countAndFlagsBits) != 3)
      {
        v35 = 1;
        return (*(v9 + 56))(a1, v35, 1, v8);
      }

      v38 = v11;
      v39 = v5;
      v43 = a1;
      v44 = v7;
      v40 = v9;
      v41 = v4;
      v42 = v8;
      sub_10007C8DC();
    }

    else
    {
      v38 = v11;
      v39 = v5;
      v43 = a1;
      v44 = v7;
      v40 = v9;
      v41 = v4;
      v42 = v8;
    }
  }

  else
  {
    v42 = v8;
    v43 = a1;
    v40 = v9;
    v41 = v4;
    v38 = v11;
    v39 = v5;
    v44 = v7;
  }

  v14 = type metadata accessor for IntroContentView(0);
  sub_1000040A8(&qword_1003597A0, &unk_10027D870);
  v15 = State.projectedValue.getter();
  __chkstk_darwin(v15);
  sub_1000040A8(&qword_1003598A0, &unk_10027D910);
  v16 = type metadata accessor for IntroContentView._IntroView(255);
  v17 = sub_10007B424(&qword_1003598A8, type metadata accessor for IntroContentView._IntroView, &unk_10027DA18);
  v20 = sub_10007DA5C(v17, v18, v19);
  v48 = v16;
  v49 = &type metadata for IntroContentType;
  v50 = v16;
  v51 = v17;
  v52 = v20;
  v53 = v17;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(path:root:)();
  v21 = [objc_opt_self() mainBundle];
  v54._object = 0x800000010029A340;
  v22._object = 0x800000010029A320;
  v54._countAndFlagsBits = 0xD00000000000007ALL;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v54);

  v47 = v24;
  v25 = (v1 + *(v14 + 32));
  v26 = *v25;
  v27 = *(v25 + 1);
  v45 = v26;
  v46 = v27;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  v28 = State.projectedValue.getter();
  v37 = &v37;
  __chkstk_darwin(v28);
  sub_1000040A8(&qword_1003598B8, &unk_10027D920);
  v29 = sub_100009274(&qword_1003598C0, &qword_100359888, &qword_10027D8F8, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_100031770(v29, v30, v31);
  sub_100009274(&qword_1003598C8, &qword_1003598B8, &unk_10027D920, &protocol conformance descriptor for TupleView<A>);
  v32 = v41;
  v33 = v38;
  v34 = v44;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v39 + 8))(v34, v32);
  v9 = v40;
  v8 = v42;
  a1 = v43;
  (*(v40 + 32))(v43, v33, v42);
  v35 = 0;
  return (*(v9 + 56))(a1, v35, 1, v8);
}

uint64_t sub_10007BAF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v44 = a3;
  v4 = type metadata accessor for IntroContentView(0);
  v5 = v4 - 8;
  v43 = *(v4 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v4);
  v40 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for IntroContentView._IntroView(0);
  __chkstk_darwin(v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000040A8(&qword_1003597A0, &unk_10027D870);
  State.projectedValue.getter();
  v10 = (a2 + *(v5 + 40));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v45) = v11;
  v46 = v12;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.projectedValue.getter();
  v38 = v49;
  v39 = v48;
  v37 = v50;
  v13 = (a2 + *(v5 + 44));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v45) = v14;
  v46 = v15;
  sub_1000040A8(&qword_1003598D8, &qword_10027D948);
  State.projectedValue.getter();
  v17 = v48;
  v16 = v49;
  v18 = v50;
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v48 = *(a2 + 32);
  v49 = v19;
  v50 = v20;
  sub_1000040A8(&qword_100359898, &qword_10027D908);
  Binding.projectedValue.getter();
  v22 = v45;
  v21 = v46;
  v23 = v47;
  type metadata accessor for UIMetrics();
  sub_10007B424(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  *v9 = EnvironmentObject.init()();
  *(v9 + 1) = v24;
  v9[16] = v41;
  v25 = &v9[v7[7]];
  v26 = v38;
  *v25 = v39;
  *(v25 + 1) = v26;
  v25[16] = v37;
  v27 = &v9[v7[8]];
  *v27 = v17;
  *(v27 + 1) = v16;
  v27[16] = v18;
  v28 = &v9[v7[9]];
  *v28 = v22;
  *(v28 + 1) = v21;
  v28[16] = v23;
  v29 = v40;
  sub_10007E5D0(a2, v40, type metadata accessor for IntroContentView);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = swift_allocObject();
  sub_10007E63C(v29, v31 + v30, type metadata accessor for IntroContentView);
  v32 = sub_10007B424(&qword_1003598A8, type metadata accessor for IntroContentView._IntroView, &unk_10027DA18);
  sub_10007DA5C(v32, v33, v34);
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10007DE0C(v9);
}

uint64_t sub_10007BE74@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *a1;
  v5 = type metadata accessor for IntroContentView(0);
  v6 = type metadata accessor for IntroContentView._IntroView(0);
  sub_1000040A8(&qword_1003597A0, &unk_10027D870);
  State.projectedValue.getter();
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.projectedValue.getter();
  v7 = a2 + *(v5 + 36);
  LOBYTE(v14) = *v7;
  v15 = *(v7 + 8);
  sub_1000040A8(&qword_1003598D8, &qword_10027D948);
  State.projectedValue.getter();
  sub_1000040A8(&qword_100359898, &qword_10027D908);
  Binding.projectedValue.getter();
  type metadata accessor for UIMetrics();
  sub_10007B424(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  v10 = a3 + v6[7];
  *v10 = v17;
  *(v10 + 8) = v18;
  *(v10 + 16) = v19;
  v11 = a3 + v6[8];
  *v11 = v17;
  *(v11 + 8) = v18;
  *(v11 + 16) = v19;
  v12 = a3 + v6[9];
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v16;
  return result;
}

uint64_t sub_10007C050@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v61 = a2;
  v2 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v2 - 8);
  v60 = &v48 - v3;
  v57 = type metadata accessor for KeyboardShortcut();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntroContentView(0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000040A8(&qword_100357568, &unk_10027D930);
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v58 = sub_1000040A8(&qword_100357570, &qword_10027AED0);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v63._object = 0x800000010029A4D0;
  v19._countAndFlagsBits = 0x66664F206E727554;
  v63._countAndFlagsBits = 0xD000000000000085;
  v19._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v63);

  v62 = v21;
  sub_10007E5D0(v53, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntroContentView);
  v22 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v23 = swift_allocObject();
  v24 = sub_10007E63C(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for IntroContentView);
  sub_100031770(v24, v25, v26);
  Button<>.init<A>(_:action:)();
  static KeyboardShortcut.defaultAction.getter();
  sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
  v49 = v16;
  v50 = v8;
  View.keyboardShortcut(_:)();
  (*(v55 + 8))(v5, v57);
  v27 = v52;
  v55 = *(v52 + 8);
  v57 = v52 + 8;
  (v55)(v12, v8);
  v28 = [v17 mainBundle];
  v64._object = 0x800000010029A560;
  v29._countAndFlagsBits = 0x6C65636E6143;
  v29._object = 0xE600000000000000;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v64);

  v62 = v31;
  v32 = v60;
  static ButtonRole.cancel.getter();
  v33 = type metadata accessor for ButtonRole();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v12;
  v48 = v12;
  Button<>.init<A>(_:role:action:)();
  v35 = v56;
  v36 = *(v56 + 16);
  v37 = v54;
  v38 = v16;
  v39 = v58;
  v36(v54, v38, v58);
  v40 = *(v27 + 16);
  v41 = v59;
  v42 = v50;
  v40(v59, v34, v50);
  v43 = v61;
  v36(v61, v37, v39);
  v44 = sub_1000040A8(&qword_1003598D0, &qword_10027D940);
  v40(&v43[*(v44 + 48)], v41, v42);
  v45 = v55;
  (v55)(v48, v42);
  v46 = *(v35 + 8);
  v46(v49, v39);
  v45(v41, v42);
  return (v46)(v37, v39);
}

uint64_t sub_10007C6D4(void *a1)
{
  if (*a1)
  {
    type metadata accessor for IntroContentView(0);

    sub_1000040A8(&qword_1003598D8, &qword_10027D948);
    State.wrappedValue.getter();
    PassthroughSubject.send(_:)();

    sub_1000040A8(&qword_100359898, &qword_10027D908);
    return Binding.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10007B424(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10007C804@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v12._object = 0x800000010029A430;
  v3._object = 0x800000010029A3C0;
  v3._countAndFlagsBits = 0x1000000000000063;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000094;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  sub_100031770(v5, v6, v7);
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_10007C8DC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v1 + 64) && (!*(*(v1 + 80) + 16) || (sub_100233FEC(&off_100321E68), v2 = sub_100204870(), , (v2 & 1) != 0) && *(v1 + 64)))
    {

      return sub_100071A54();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for StewieModel(0);
    sub_10007B424(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10007C9D8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntroContentView._IntroView(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6 - 8);
  v32 = type metadata accessor for WelcomeView();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000040A8(&qword_1003599B0, &qword_10027DA68);
  __chkstk_darwin(v35);
  v12 = &v31 - v11;
  sub_10007CEEC(*(v2 + 16), v38, v13, v14);
  v16 = v39;
  v15 = v40;
  v17 = sub_1000088DC(v38, v39);
  v37[3] = v16;
  v37[4] = *(v15 + 8);
  v18 = sub_10007E56C(v37);
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  sub_10007E5D0(v2, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntroContentView._IntroView);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject() + v19;
  v21 = v2;
  sub_10007E63C(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, type metadata accessor for IntroContentView._IntroView);
  WelcomeView.init(content:actionHandler:)();
  sub_100008964(v38);
  if (*v2)
  {
    sub_1000089B0(*v2 + 48, v38);
    v22 = v39;
    v23 = v40;
    sub_1000088DC(v38, v39);
    (*(v23 + 24))(v37, v22, v23);
    (*(v33 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v34);
    v24 = Color.init(_:red:green:blue:opacity:)();
    sub_100008964(v37);
    KeyPath = swift_getKeyPath();
    (*(v8 + 32))(v12, v10, v32);
    v26 = &v12[*(v35 + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = sub_100008964(v38);
    __chkstk_darwin(v27);
    *(&v31 - 2) = v21;
    sub_1000040A8(&qword_1003599B8, &unk_10027DAA0);
    sub_10007E718();
    v28 = sub_100008CF0(&qword_1003599D0, &qword_10027DAB0);
    v29 = sub_100009274(&qword_1003599D8, &qword_1003599D0, &qword_10027DAB0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v38[0] = v28;
    v38[1] = v29;
    swift_getOpaqueTypeConformance2();
    View.toolbar<A>(content:)();
    return sub_10007E800(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10007B424(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10007CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        *(a2 + 24) = &type metadata for FindMyIntroContent;
        result = sub_10007EC0C(a1, a3, a4);
      }

      else
      {
        *(a2 + 24) = &type metadata for RoadsideAssistanceIntroContent;
        result = sub_10007EBB8(a1, a3, a4);
      }
    }

    else if (a1 == 4)
    {
      *(a2 + 24) = &type metadata for EmergencyMessagesIntroContent;
      result = sub_10007ECB4(a1, a3, a4);
    }

    else
    {
      *(a2 + 24) = &type metadata for MessagesViaSatelliteIntroContent;
      result = sub_10007EC60(a1, a3, a4);
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *(a2 + 24) = &type metadata for EmergencySOSViaSatelliteIntroContent;
      result = sub_10007ED5C(a1, a3, a4);
    }

    else
    {
      *(a2 + 24) = &type metadata for EmergencyQuestionnaireIntroContent;
      result = sub_10007ED08(a1, a3, a4);
    }
  }

  else if (a1)
  {
    *(a2 + 24) = &type metadata for SatelliteConnectionAndEmergencyDemoIntroContent;
    result = sub_10007EDB0(a1, a3, a4);
  }

  else
  {
    *(a2 + 24) = &type metadata for SatelliteConnectionDemoIntroContent;
    result = sub_10007EE04(a1, a3, a4);
  }

  *(a2 + 32) = result;
  return result;
}

void sub_10007CFE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WelcomeAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v61 - v8;
  v10 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v10 - 8);
  v61[0] = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WelcomeAction.WelcomeActionType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v61[1] = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v61 - v16;
  WelcomeAction.type.getter();
  v18 = (*(v13 + 88))(v17, v12);
  v61[2] = v12;
  if (v18 != enum case for WelcomeAction.WelcomeActionType.primary(_:))
  {
    if (v18 == enum case for WelcomeAction.WelcomeActionType.secondary(_:))
    {
      v22 = 0;
      v21 = 0;
      goto LABEL_7;
    }

    if (v18 == enum case for WelcomeAction.WelcomeActionType.tertiary(_:))
    {
      v22 = 0;
      v21 = 1;
      goto LABEL_7;
    }

    (*(v13 + 8))(v17, v12);
  }

  v21 = -1;
  v22 = 1;
LABEL_7:
  sub_10007CEEC(*(v1 + 16), &v64, v19, v20);
  v24 = v67;
  v23 = v68;
  sub_1000088DC(&v64, v67);
  v25 = (*(v23 + 16))(v24, v23);
  sub_100008964(&v64);
  if (v22 || v21 >= *(v25 + 16))
  {

    v33 = v62;
    if (qword_100353AD0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381EC0);
    v35 = *(v5 + 16);
    v35(v9, a1, v4);
    v35(v33, a1, v4);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      v64 = v61[0];
      *v38 = 136315394;
      v39 = WelcomeAction.title.getter();
      v41 = v40;
      v42 = *(v5 + 8);
      v42(v9, v4);
      v43 = sub_10017C9E8(v39, v41, &v64);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      WelcomeAction.type.getter();
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v42(v33, v4);
      v47 = sub_10017C9E8(v44, v46, &v64);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unrecognized intro action – title: %s, type: %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v48 = *(v5 + 8);
      v48(v33, v4);
      v48(v9, v4);
    }
  }

  else
  {
    v26 = v25 + 24 * v21;
    v27 = *(v26 + 48);
    v28 = *(v26 + 49);

    if (v28)
    {
      if (v28 == 1)
      {
        v29 = type metadata accessor for IntroContentView._IntroView(0);
        v30 = v2 + v29[8];
        v31 = *v30;
        v32 = *(v30 + 8);
        LOBYTE(v30) = *(v30 + 16);
        v64 = v31;
        v65 = v32;
        v66 = v30;
        v63 = v27;
        sub_1000040A8(&qword_100359898, &qword_10027D908);
      }

      else
      {
        v29 = type metadata accessor for IntroContentView._IntroView(0);
        v52 = v2 + v29[9];
        v53 = *v52;
        v54 = *(v52 + 8);
        LOBYTE(v52) = *(v52 + 16);
        v64 = v53;
        v65 = v54;
        v66 = v52;
        sub_1000040A8(&qword_100359898, &qword_10027D908);
        Binding.wrappedValue.getter();
        v55 = v2 + v29[8];
        v56 = *v55;
        v57 = *(v55 + 8);
        LOBYTE(v55) = *(v55 + 16);
        v64 = v56;
        v65 = v57;
        v66 = v55;
      }

      Binding.wrappedValue.setter();
      v58 = v2 + v29[7];
      v59 = *v58;
      v60 = *(v58 + 8);
      LOBYTE(v58) = *(v58 + 16);
      v64 = v59;
      v65 = v60;
      v66 = v58;
      v63 = 1;
      sub_1000040A8(&qword_1003575B0, &qword_10027AFC0);
    }

    else
    {
      LOBYTE(v64) = v27;
      type metadata accessor for IntroContentView._IntroView(0);
      sub_1000040A8(&qword_100359880, &qword_10027D8F0);
      v49 = Binding.wrappedValue.getter();
      sub_10007DA5C(v49, v50, v51);
      NavigationPath.append<A>(_:)();
    }

    Binding.wrappedValue.setter();
  }
}

uint64_t sub_10007D64C(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000040A8(&qword_1003599D0, &qword_10027DAB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v9 = a1;
  sub_1000040A8(&qword_1003599E0, &qword_10027DAB8);
  sub_10007E870();
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_1003599D8, &qword_1003599D0, &qword_10027DAB0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10007D804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntroContentView._IntroView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v7 - 8);
  static ButtonRole.close.getter();
  sub_10007E5D0(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntroContentView._IntroView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10007E63C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for IntroContentView._IntroView);
  Button<>.init(role:action:)();
  v10 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1000040A8(&qword_1003599E0, &qword_10027DAB8);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t sub_10007D9B4(uint64_t a1)
{
  type metadata accessor for IntroContentView._IntroView(0);
  sub_1000040A8(&qword_100359898, &qword_10027D908);
  return Binding.wrappedValue.setter();
}

unint64_t sub_10007DA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003598B0;
  if (!qword_1003598B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003598B0);
  }

  return result;
}

void sub_10007DAB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x74754F797274;
  v5 = 0xE600000000000000;
  v6 = 0x794D646E6966;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000010029A580;
  }

  v7 = 0x800000010029A5A0;
  v8 = 0x736567617373656DLL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 0xD000000000000016;
  if (v2 == 2)
  {
    v10 = 7565171;
  }

  else
  {
    v9 = 0x800000010029A5C0;
  }

  if (*v1)
  {
    v4 = 0x6E4174754F797274;
    v3 = 0xEC000000736F5364;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10007DBB8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007DC40()
{
  v1 = (type metadata accessor for IntroContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for NavigationPath();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000040A8(&qword_1003597A0, &unk_10027D870);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007DD8C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IntroContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10007BE74(a1, v6, a2);
}

uint64_t sub_10007DE0C(uint64_t a1)
{
  v2 = type metadata accessor for IntroContentView._IntroView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransmissionProgress.PayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmissionProgress.PayloadType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040A8(&qword_100359880, &qword_10027D8F0);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10007E0B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000040A8(&qword_100359880, &qword_10027D8F0);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10007E17C(uint64_t a1)
{
  sub_10007B390(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
  if (v2 <= 0x3F)
  {
    sub_10007E2C4(319, &qword_100359950, &type metadata accessor for Binding, v1);
    if (v3 <= 0x3F)
    {
      sub_10007E324(319, &unk_100359958, &type metadata accessor for Binding);
      if (v4 <= 0x3F)
      {
        sub_10007B46C(319, &qword_100359820, &type metadata accessor for Binding);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007E2C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for NavigationPath();
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10007E324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10007E37C()
{
  result = qword_100359998;
  if (!qword_100359998)
  {
    sub_100008CF0(&qword_1003599A0, qword_10027D970);
    sub_100008CF0(&qword_100359888, &qword_10027D8F8);
    sub_100008CF0(&qword_1003598B8, &unk_10027D920);
    v3 = sub_100009274(&qword_1003598C0, &qword_100359888, &qword_10027D8F8, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100031770(v3, v1, v2);
    sub_100009274(&qword_1003598C8, &qword_1003598B8, &unk_10027D920, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359998);
  }

  return result;
}

unint64_t sub_10007E4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003599A8;
  if (!qword_1003599A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003599A8);
  }

  return result;
}

uint64_t *sub_10007E56C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10007E5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007E63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007E718()
{
  result = qword_1003599C0;
  if (!qword_1003599C0)
  {
    sub_100008CF0(&qword_1003599B0, &qword_10027DA68);
    sub_10007B424(&qword_1003599C8, &type metadata accessor for WelcomeView, &protocol conformance descriptor for WelcomeView);
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003599C0);
  }

  return result;
}

uint64_t sub_10007E800(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003599B0, &qword_10027DA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007E870()
{
  result = qword_1003599E8;
  if (!qword_1003599E8)
  {
    sub_100008CF0(&qword_1003599E0, &qword_10027DAB8);
    sub_100009274(&qword_1003599F0, &qword_1003599F8, &qword_10027DAC0, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003599E8);
  }

  return result;
}

uint64_t sub_10007E954()
{
  v1 = (type metadata accessor for IntroContentView._IntroView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];

  v6 = *(sub_1000040A8(&qword_100359880, &qword_10027D8F0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007EAE4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_10007EB60@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10007EBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A00;
  if (!qword_100359A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A00);
  }

  return result;
}

unint64_t sub_10007EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A08;
  if (!qword_100359A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A08);
  }

  return result;
}

unint64_t sub_10007EC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A10;
  if (!qword_100359A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A10);
  }

  return result;
}

unint64_t sub_10007ECB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A18;
  if (!qword_100359A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A18);
  }

  return result;
}

unint64_t sub_10007ED08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A20;
  if (!qword_100359A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A20);
  }

  return result;
}

unint64_t sub_10007ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A28;
  if (!qword_100359A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A28);
  }

  return result;
}

unint64_t sub_10007EDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A30;
  if (!qword_100359A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A30);
  }

  return result;
}

unint64_t sub_10007EE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359A38;
  if (!qword_100359A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359A38);
  }

  return result;
}

uint64_t sub_10007EE58()
{
  sub_100008CF0(&qword_1003599B0, &qword_10027DA68);
  sub_100008CF0(&qword_1003599B8, &unk_10027DAA0);
  sub_10007E718();
  sub_100008CF0(&qword_1003599D0, &qword_10027DAB0);
  sub_100009274(&qword_1003599D8, &qword_1003599D0, &qword_10027DAB0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007EF70(uint64_t a1, uint64_t a2)
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
  return sub_100081768(v5, v7) & 1;
}

id sub_10007EFCC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8SOSBuddy17NotificationAgent_didFinishPostNotificationRequest;
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  swift_allocObject();
  *&v0[v2] = PassthroughSubject.init()();
  v3 = OBJC_IVAR____TtC8SOSBuddy17NotificationAgent_didReceiveAction;
  sub_1000040A8(&qword_100356500, &qword_100289EB0);
  swift_allocObject();
  *&v0[v3] = PassthroughSubject.init()();
  v4 = OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__currentNotifications;
  *&v1[v4] = sub_10025672C(_swiftEmptyArrayStorage);
  v5 = &v1[OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent];
  v6 = type metadata accessor for NotificationAgent();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  v5[48] = 0;
  v24.receiver = v1;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, "init");
  v8 = qword_100353A10;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381C80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    v15 = v9;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10017C9E8(v17, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] init", v13, 0xCu);
    sub_100008964(v14);
  }

  v21 = [objc_opt_self() currentNotificationCenter];
  [v21 setDelegate:v9];

  return v9;
}

id sub_10007F278()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for NotificationAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

void sub_10007F4E8(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v126 = *(a1 + 2);
  v127 = v6;
  v128 = v4;
  v7 = *(a1 + 5);
  v124 = *(a1 + 4);
  v121 = v7;
  v8 = *(a1 + 48);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v14 = *(a1 + 48);
  v15 = OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__currentNotifications;
  swift_beginAccess();
  v113 = v15;
  v16 = *(v2 + v15);
  v17 = *(v16 + 16);
  v119 = v5;
  v125 = v2;
  v114 = v14;
  LODWORD(v115) = v8;
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = sub_10018699C(v14);
  if ((v19 & 1) == 0)
  {
    LOBYTE(v17) = 0;
LABEL_7:
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v32 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v31 = 0;
    v117 = 0;
    v118 = 0;
    v116 = 0;
    goto LABEL_10;
  }

  v20 = *(v16 + 56) + 72 * v18;
  v137 = *v20;
  v21 = *(v20 + 64);
  v23 = *(v20 + 32);
  v22 = *(v20 + 48);
  v138 = *(v20 + 16);
  v139 = v23;
  v140 = v22;
  v112 = v21;
  v141 = v21;
  v24 = *(&v137 + 1);
  v111 = v137;
  v26 = *(&v138 + 1);
  v25 = v138;
  v28 = *(&v23 + 1);
  v27 = v23;
  v29 = *(&v22 + 1);
  v30 = v22;
  sub_1000823C8(&v137, v135);
  if (v24)
  {
    v116 = v112 & 1;

    v122 = v25;
    v123 = v27;
    v120 = v26;
    v31 = v28;
    v117 = v30;
    v118 = v29;
  }

  else
  {
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v31 = 0;
    v117 = 0;
    v118 = 0;
    v116 = 0;
  }

  LOBYTE(v17) = v112;
  v32 = v111;
LABEL_10:
  v135[0] = v32;
  v135[1] = v24;
  v135[2] = v25;
  v135[3] = v26;
  v135[4] = v27;
  v135[5] = v28;
  v135[6] = v30;
  v135[7] = v29;
  v136 = v17;
  sub_100008FA0(v135, &qword_100359B20, &unk_10027DCD0);
  v33 = v115 & 1;
  v34 = v31;
  if (!v31)
  {
    v35 = v125;
    v36 = v118;
    v37 = v119;
    v38 = v127;
    v39 = v117;
    v40 = v120;
    if (!v127)
    {
      sub_100082480(a1, &v137);
      sub_100082400(v122, v40, v123, 0, v39, v36);
      return;
    }

    goto LABEL_24;
  }

  v35 = v125;
  v36 = v118;
  v37 = v119;
  v38 = v127;
  v39 = v117;
  v40 = v120;
  if (!v127)
  {
LABEL_24:
    v42 = v34;
    sub_100082480(a1, &v137);
    sub_100082400(v122, v40, v123, v42, v39, v36);
    v43 = v128;
    v44 = v37;
    v45 = v126;
    v46 = v38;
    v47 = v124;
    v48 = v121;
LABEL_36:
    sub_100082400(v43, v44, v45, v46, v47, v48);
    goto LABEL_37;
  }

  v115 = v34;
  if (!v120)
  {
    if (!v119)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (!v119)
  {
    sub_100082480(a1, &v137);
    v49 = 0;
    goto LABEL_29;
  }

  if (v122 != v128 || v120 != v119)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = v115;
    if ((v41 & 1) == 0)
    {
LABEL_26:
      sub_100082480(a1, &v137);
      v49 = v37;
LABEL_29:
      sub_100082400(v128, v49, v126, v38, v124, v121);
      v43 = v122;
      v44 = v40;
LABEL_35:
      v45 = v123;
      v46 = v115;
      v47 = v39;
      v48 = v36;
      goto LABEL_36;
    }
  }

LABEL_17:
  if ((v123 != v126 || v34 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100082480(a1, &v137);
    sub_100082400(v128, v37, v126, v38, v124, v121);
LABEL_34:
    v43 = v122;
    v44 = v120;
    goto LABEL_35;
  }

  if (v39 == v124 && v36 == v121)
  {
    sub_100082480(a1, &v137);
    sub_100082400(v128, v37, v126, v38, v124, v36);
    goto LABEL_31;
  }

  v50 = v124;
  v51 = v37;
  v52 = v121;
  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100082480(a1, &v137);
  v54 = v51;
  v55 = v50;
  v56 = v52;
  v37 = v51;
  v39 = v117;
  v36 = v118;
  sub_100082400(v128, v54, v126, v38, v55, v56);
  if ((v53 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v57 = v36;
  v58 = v116;
  sub_100082400(v122, v120, v123, v115, v39, v57);
  if (v58 == v33)
  {
    return;
  }

LABEL_37:
  v59 = v35 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent;
  if (*(v35 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 24))
  {
    if (qword_100353A98 == -1)
    {
LABEL_39:
      v60 = type metadata accessor for Logger();
      sub_10000F53C(v60, qword_100381E18);
      sub_100082480(a1, &v137);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      sub_1000824B8(a1);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v129[0] = v64;
        *v63 = 136446210;
        v65 = a1[1];
        v137 = *a1;
        v138 = v65;
        v139 = a1[2];
        LOBYTE(v140) = *(a1 + 48);
        sub_100082480(a1, &v130);
        v66 = String.init<A>(describing:)();
        v68 = sub_10017C9E8(v66, v67, v129);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v61, v62, "Request for another content is already pending, postponing the update until it is done: %{public}s", v63, 0xCu);
        sub_100008964(v64);
      }

      return;
    }

LABEL_57:
    swift_once();
    goto LABEL_39;
  }

  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  LODWORD(v123) = v33;
  v69 = type metadata accessor for Logger();
  sub_10000F53C(v69, qword_100381E18);
  sub_100082480(a1, &v137);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  sub_1000824B8(a1);
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v129[0] = v122;
    *v72 = 136446210;
    v73 = a1[1];
    v137 = *a1;
    v138 = v73;
    v139 = a1[2];
    LOBYTE(v140) = *(a1 + 48);
    sub_100082480(a1, &v130);
    v74 = String.init<A>(describing:)();
    v76 = sub_10017C9E8(v74, v75, v129);

    *(v72 + 4) = v76;
    v77 = v119;
    _os_log_impl(&_mh_execute_header, v70, v71, "Present notification: %{public}s", v72, 0xCu);
    sub_100008964(v122);

    v38 = v127;
  }

  else
  {

    v77 = v37;
  }

  v78 = v113;
  v79 = *v59;
  v80 = *(v59 + 8);
  v81 = *(v59 + 16);
  v82 = *(v59 + 24);
  v83 = *(v59 + 32);
  v84 = *(v59 + 40);
  *v59 = v128;
  *(v59 + 8) = v77;
  v85 = v126;
  *(v59 + 16) = v126;
  *(v59 + 24) = v38;
  v86 = v124;
  v87 = v121;
  *(v59 + 32) = v124;
  *(v59 + 40) = v87;
  v88 = v123;
  *(v59 + 48) = v123;
  sub_100082400(v79, v80, v81, v82, v83, v84);
  v89 = v114;
  v90 = 10;
  if (v114)
  {
    v90 = 7;
  }

  v91 = (v90 | 0xD000000000000010);
  v92 = "ConnectionAssistantRequest";
  if (v114)
  {
    v92 = "OffGridModeOfferRequest";
  }

  v122 = v91;
  *&v130 = v91;
  *(&v130 + 1) = (v92 - 32) | 0x8000000000000000;
  *&v131 = v128;
  *(&v131 + 1) = v77;
  *&v132 = v85;
  *(&v132 + 1) = v127;
  *&v133 = v86;
  *(&v133 + 1) = v87;
  v134 = v88;
  v141 = v88;
  v139 = v132;
  v140 = v133;
  v137 = v130;
  v138 = v131;
  v93 = v125;
  swift_beginAccess();
  sub_100082480(a1, v129);
  sub_100082480(a1, v129);

  sub_1000823C8(&v130, v129);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129[0] = *(v93 + v78);
  *(v93 + v78) = 0x8000000000000000;
  sub_100188AE8(&v137, v89, isUniquelyReferenced_nonNull_native);
  *(v93 + v78) = v129[0];
  swift_endAccess();
  v95 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v96 = String._bridgeToObjectiveC()();
  [v95 setTitle:v96];

  v97 = String._bridgeToObjectiveC()();
  [v95 setBody:v97];

  if (*(a1 + 1))
  {
    v98 = String._bridgeToObjectiveC()();
    v99 = [objc_opt_self() iconForSystemImageNamed:v98];

    [v95 setIcon:v99];
  }

  [v95 setInterruptionLevel:1];
  v100 = String._bridgeToObjectiveC()();

  [v95 setCategoryIdentifier:v100];

  if (v89)
  {
    [v95 setShouldDisplayActionsInline:1];
  }

  [v95 setShouldIgnoreDowntime:1];
  [v95 setShouldIgnoreDoNotDisturb:1];
  [v95 setShouldHideDate:1];
  [v95 setShouldPreemptPresentedNotification:1];
  [v95 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  v101 = v95;
  v102 = String._bridgeToObjectiveC()();

  v103 = [objc_opt_self() requestWithIdentifier:v102 content:v101 trigger:0];

  v104 = [objc_opt_self() currentNotificationCenter];
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = swift_allocObject();
  v107 = v137;
  *(v106 + 40) = v138;
  v108 = v140;
  *(v106 + 56) = v139;
  *(v106 + 72) = v108;
  *(v106 + 16) = v105;
  *(v106 + 88) = v141;
  *(v106 + 24) = v107;
  v129[4] = sub_100082578;
  v129[5] = v106;
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 1107296256;
  v129[2] = sub_100243DD8;
  v129[3] = &unk_10032AAB0;
  v109 = _Block_copy(v129);

  [v104 addNotificationRequest:v103 withCompletionHandler:v109];
  _Block_release(v109);
}

uint64_t sub_10008015C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v21 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  v15 = *a3;
  *(v14 + 40) = a3[1];
  v16 = a3[3];
  *(v14 + 56) = a3[2];
  *(v14 + 72) = v16;
  *(v14 + 16) = v12;
  *(v14 + 88) = *(a3 + 64);
  *(v14 + 24) = v15;
  *(v14 + 96) = a1;
  aBlock[4] = sub_1000825E4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032AB00;
  v17 = _Block_copy(aBlock);
  sub_1000823C8(a3, &v23);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v22);
}

void sub_100080490(uint64_t a1, __int128 *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100080500(a2, a3);
  }
}

uint64_t sub_100080500(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent;
  v12 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent);
  v13 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 8);
  v14 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 16);
  v15 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 24);
  v16 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 32);
  v17 = *(v3 + OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__pendingContent + 40);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  sub_100082400(v12, v13, v14, v15, v16, v17);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100353A98 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_10000F53C(v18, qword_100381E18);
      swift_errorRetain();
      sub_1000823C8(a1, &v46);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      sub_100082450(a1);

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v21 = 136446466;
        v22 = a1[3];
        v48 = a1[2];
        v49 = v22;
        v50 = *(a1 + 64);
        v23 = a1[1];
        v46 = *a1;
        v47 = v23;
        sub_1000823C8(a1, v44);
        v24 = String.init<A>(describing:)();
        v26 = sub_10017C9E8(v24, v25, &v45);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        *&v46 = a2;
        swift_errorRetain();
        sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
        v27 = String.init<A>(describing:)();
        v29 = sub_10017C9E8(v27, v28, &v45);

        *(v21 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to present notification: %{public}s, error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
      }

      v30 = *a1;
      v31 = *(a1 + 1);
      if (v30 == 0xD00000000000001ALL && 0x800000010029A6E0 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v32 = 0;
      }

      else if (v30 == 0xD000000000000017 && 0x800000010029A700 == v31)
      {
        v32 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      swift_beginAccess();
      sub_100187F24(v32 & 1, &v46);
      sub_100008FA0(&v46, &qword_100359B20, &unk_10027DCD0);
      swift_endAccess();

      goto LABEL_16;
    }

LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000F53C(v33, qword_100381E18);
  sub_1000823C8(a1, &v46);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  sub_100082450(a1);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136446210;
    v38 = a1[3];
    v48 = a1[2];
    v49 = v38;
    v50 = *(a1 + 64);
    v39 = a1[1];
    v46 = *a1;
    v47 = v39;
    sub_1000823C8(a1, v44);
    v40 = String.init<A>(describing:)();
    v42 = sub_10017C9E8(v40, v41, &v45);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Presented notification: %{public}s", v36, 0xCu);
    sub_100008964(v37);
  }

LABEL_16:
  LOBYTE(v46) = a2 == 0;

  PassthroughSubject.send(_:)();
}

void sub_100080A8C(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  v10 = *(v5 + 8);
  v9 = v5 + 8;
  v10(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy17NotificationAgent__currentNotifications;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (!*(v12 + 16) || (v13 = sub_10018699C(a1 & 1), (v14 & 1) == 0))
  {
    v16 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v39 = v2;
  v40 = a1;
  v15 = *(v12 + 56) + 72 * v13;
  v42 = *v15;
  v16 = *(v15 + 64);
  v18 = *(v15 + 32);
  v17 = *(v15 + 48);
  v43 = *(v15 + 16);
  v44 = v18;
  v45 = v17;
  v46 = v16;
  v19 = *(&v42 + 1);
  v4 = v42;
  v20 = *(&v43 + 1);
  v21 = v43;
  v22 = *(&v18 + 1);
  v23 = v18;
  v24 = *(&v17 + 1);
  v25 = v17;
  sub_1000823C8(&v42, v41);
  if (!v19)
  {
LABEL_10:
    v42 = v4;
    *&v43 = v21;
    *(&v43 + 1) = v20;
    *&v44 = v23;
    *(&v44 + 1) = v22;
    *&v45 = v25;
    *(&v45 + 1) = v24;
    v46 = v16;
    sub_100008FA0(&v42, &qword_100359B20, &unk_10027DCD0);
    return;
  }

  v42 = __PAIR128__(v19, v4);
  v43 = __PAIR128__(v20, v21);
  v44 = __PAIR128__(v22, v23);
  v45 = __PAIR128__(v24, v25);
  v46 = v16;

  sub_100008FA0(&v42, &qword_100359B20, &unk_10027DCD0);
  v9 = v19;
  if (qword_100353A98 != -1)
  {
LABEL_12:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000F53C(v26, qword_100381E18);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_10017C9E8(v4, v9, v41);
    _os_log_impl(&_mh_execute_header, v27, v28, "Dismissing notification: %{public}s", v29, 0xCu);
    sub_100008964(v30);
  }

  v31 = objc_opt_self();
  v32 = [v31 currentNotificationCenter];
  sub_1000040A8(&qword_100359B28, &qword_100287830);
  v33 = swift_allocObject();
  v38 = xmmword_100279160;
  *(v33 + 16) = xmmword_100279160;
  *(v33 + 32) = v4;
  *(v33 + 40) = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 removePendingNotificationRequestsWithIdentifiers:isa];

  v35 = [v31 currentNotificationCenter];
  v36 = swift_allocObject();
  *(v36 + 16) = v38;
  *(v36 + 32) = v4;
  *(v36 + 40) = v9;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v35 removeDeliveredNotificationsWithIdentifiers:v37];

  swift_beginAccess();
  sub_100187F24(v40 & 1, v41);
  sub_100008FA0(v41, &qword_100359B20, &unk_10027DCD0);
  swift_endAccess();
}

void sub_100080F4C(void *a1)
{
  v2 = [a1 authorizationStatus];
  if (v2 > 2)
  {
    if ((v2 - 3) >= 2)
    {
      goto LABEL_26;
    }

    if (qword_100353A98 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381E18);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_23;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Notifications are provisional";
LABEL_22:
    _os_log_impl(&_mh_execute_header, oslog, v4, v6, v5, 2u);

    goto LABEL_23;
  }

  switch(v2)
  {
    case 0:
      if (qword_100353A98 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000F53C(v8, qword_100381E18);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(oslog, v4))
      {
        goto LABEL_23;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "User hasn't been prompted for notification access";
      goto LABEL_22;
    case 1:
      if (qword_100353A98 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000F53C(v9, qword_100381E18);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(oslog, v4))
      {
        goto LABEL_23;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "User denied notification access";
      goto LABEL_22;
    case 2:
      if (qword_100353A98 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000F53C(v3, qword_100381E18);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v4))
      {
        goto LABEL_23;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Notifications are authorized";
      goto LABEL_22;
  }

LABEL_26:
  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381E18);
  v11 = a1;
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    [v11 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, oslog, v12, "Unknown notification authorization status %{public}s", v13, 0xCu);
    sub_100008964(v14);

    return;
  }

LABEL_23:
}

void sub_10008137C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

__n128 sub_100081518(uint64_t a1, uint64_t a2)
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

uint64_t sub_100081534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008157C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000815DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100081600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100081648(uint64_t result, int a2, int a3)
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
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100081714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359AF8;
  if (!qword_100359AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359AF8);
  }

  return result;
}

uint64_t sub_100081768(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v5)
  {
LABEL_19:
    v8 = 0;
    return v8 & 1;
  }

  v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v8 & 1;
}

void sub_100081824()
{
  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381E18);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "_confirmNotificationSettings", v3, 2u);
  }

  v4 = [objc_opt_self() currentNotificationCenter];
  v6[4] = sub_100080F4C;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10008137C;
  v6[3] = &unk_10032AA38;
  v5 = _Block_copy(v6);
  [v4 getNotificationSettingsWithCompletionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_1000819AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000819C4(void *a1, uint64_t a2)
{
  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E18);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136446210;
    v10 = [v5 request];
    v11 = [v10 identifier];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, v29);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "userNotificationCenter willPresent id = '%{public}s'", v8, 0xCu);
    sub_100008964(v9);
  }

  v16 = [v5 request];
  v17 = [v16 identifier];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v29[0] = v18;
  v29[1] = v20;
  v24 = sub_100082320(v21, v22, v23);
  sub_100082374(v24, v25, v26);
  LOBYTE(v18) = BidirectionalCollection<>.starts<A>(with:)();

  if (v18)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  return (*(a2 + 16))(a2, v27);
}

uint64_t sub_100081C34(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100353A98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381E18);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v38 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v10 = 138543618;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2082;
    v13 = [v6 notification];
    v14 = [v13 request];

    v15 = [v14 identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10017C9E8(v16, v18, &v39);

    *(v10 + 14) = v19;
    p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    _os_log_impl(&_mh_execute_header, v7, v8, "userNotificationCenter didReceive %{public}@ for %{public}s", v10, 0x16u);
    sub_100008FA0(v11, &qword_100359B00, &unk_100278D70);
    a3 = v38;

    sub_100008964(v12);
  }

  v20 = [v6 notification];
  v21 = [v20 request];

  v22 = [v21 *(p_ivar_base_size + 503)];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v6 actionIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v27 && v30 == v29)
  {

LABEL_9:

    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v32 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000013, 0x800000010029A6C0);
    LOBYTE(v39) = 0;
LABEL_10:
    v40 = v23;
    v41 = v25;
    v42 = v32;
    PassthroughSubject.send(_:)();

    return (*(a3 + 16))(a3);
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_9;
  }

  if (v27 == 0x747065636341 && v29 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v32 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000013, 0x800000010029A6C0);
    LOBYTE(v39) = 2;
    goto LABEL_10;
  }

  if (v27 == 0x656E696C636544 && v29 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v32 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000013, 0x800000010029A6C0);
    LOBYTE(v39) = 1;
    goto LABEL_10;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v27 && v34 == v29)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {

      return (*(a3 + 16))(a3);
    }
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();

  v36 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000013, 0x800000010029A6C0);
  LOBYTE(v39) = 1;
  v40 = v23;
  v41 = v25;
  v42 = v36;
  PassthroughSubject.send(_:)();

  if (v23 == 0xD00000000000001ALL && 0x800000010029A6E0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v37 = 0;
  }

  else if (v23 == 0xD000000000000017 && 0x800000010029A700 == v25)
  {
    v37 = 1;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100080A8C(v37 & 1);
  return (*(a3 + 16))(a3);
}

unint64_t sub_100082320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359B08;
  if (!qword_100359B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359B08);
  }

  return result;
}

unint64_t sub_100082374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359B10;
  if (!qword_100359B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359B10);
  }

  return result;
}

double sub_100082400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1000824E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100082520()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100082584()
{

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_100082608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359B40;
  if (!qword_100359B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359B40);
  }

  return result;
}

void ConnectionAssistantStars.makeStar()(uint64_t a1@<X8>)
{
  v4 = *(v1 + 108);
  v3 = *(v1 + 112);
  if (COERCE_INT(fabs(v3 - v4)) > 2139095039)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = sub_100082B04(0x1000001uLL);
  v7 = *(v1 + 100);
  v6 = *(v1 + 104);
  if (COERCE_INT(fabs(v6 - v7)) > 2139095039)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = sub_100082B04(0x1000001uLL);
  v10 = sub_100082B04(0x1000001uLL);
  if (*(v1 + 96))
  {
    v12 = vcvts_n_f32_u32(v10, 0x18uLL);
    *v11.i32 = ((v12 + v12) + -1.0) * 13.591;
    if (v10 == 0x1000000)
    {
      *v11.i32 = 13.591;
    }

    *v11.i32 = fminf(*v11.i32 - floorf(*v11.i32), 1.0);
    *_Q1.f32 = vadd_f32(vdup_lane_s32(v11, 0), 0x3F2AAAAB3F800000);
    _Q1.f32[2] = *v11.i32 + 0.33333;
    _Q1.i32[3] = 0;
    v14 = _Q1;
    v14.i32[3] = 0;
    v15 = vsubq_f32(_Q1, vrndmq_f32(v14));
    v15.i32[3] = 0;
    _Q1.i32[3] = 0;
    v16 = vminnmq_f32(v15, xmmword_10027DD90);
    __asm
    {
      FMOV            V1.2S, #6.0
      FMOV            V2.2S, #-3.0
    }

    *_Q1.f32 = vadd_f32(vmul_f32(*v16.f32, *_Q1.f32), _D2);
    _Q1.f32[2] = vmuls_lane_f32(6.0, v16, 2) + -3.0;
    v22 = vabsq_f32(_Q1);
    *&v23 = vadd_f32(vmul_f32(*v22.f32, vdup_n_s32(0x3ECCCCCDu)), vdup_n_s32(0x3F19999Au));
    *(&v23 + 2) = vmuls_lane_f32(0.4, v22, 2) + 0.6;
    HIDWORD(v23) = 0;
  }

  else
  {
    v23 = *(v1 + 80);
  }

  v24 = *(v1 + 72);
  if (v24)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *(v1 + 64);
  }

  if (v25 < 0.0)
  {
    goto LABEL_26;
  }

  if ((*(v1 + 72) & 1) == 0 && COERCE_UNSIGNED_INT(fabs(*(v1 + 64))) >= 0x7F800000)
  {
    goto LABEL_27;
  }

  v33 = *(v1 + 16);
  v34 = v23;
  v26 = sub_100082B04(0x1000001uLL);
  v27 = v33;
  v28 = v26;
  if (v24)
  {
    *&v27 = sub_100082B90();
  }

  v29 = (v25 * vcvts_n_f32_u32(v28, 0x18uLL)) + 0.0;
  if (v28 == 0x1000000)
  {
    v30 = v25;
  }

  else
  {
    v30 = v29;
  }

  v31 = v7 + ((v6 - v7) * vcvts_n_f32_u32(v9, 0x18uLL));
  if (v9 == 0x1000000)
  {
    v31 = v6;
  }

  *a1 = v31;
  *(a1 + 16) = v34;
  v32 = v4 + ((v3 - v4) * vcvts_n_f32_u32(v8, 0x18uLL));
  if (v8 == 0x1000000)
  {
    v32 = v3;
  }

  *(a1 + 32) = v32;
  *(a1 + 48) = v27;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v30;
  *(a1 + 84) = v25;
}

__n128 ConnectionAssistantStars.spawn.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

__n128 ConnectionAssistantStars.spawn.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 57) = result;
  return result;
}

uint64_t ConnectionAssistantStars.color.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

double ConnectionAssistantStars.init(count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  result = 2048.00049;
  *(a2 + 100) = xmmword_10027DDA0;
  return result;
}

unint64_t sub_100082B04(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100082B90()
{
  v0 = sub_100082B04(0x1000001uLL);
  v1 = (vcvts_n_f32_u32(v0, 0x18uLL) * 6.2832) + 0.0;
  if (v0 == 0x1000000)
  {
    v2 = 6.2832;
  }

  else
  {
    v2 = v1;
  }

  v3 = vcvts_n_f32_u32(sub_100082B04(0x1000001uLL), 0x18uLL);
  v4 = acosf(1.0 - ((v3 + 0.0) + (v3 + 0.0)));
  sinval = __sincosf_stret(v4).__sinval;
  v6 = __sincosf_stret(v2);
  *&v7 = sinval * v6.__cosval;
  *(&v7 + 1) = sinval * v6.__sinval;
  return v7;
}

__n128 sub_100082C40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100082C6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 116))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100082C8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = (a2 - 1);
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

  *(result + 116) = v3;
  return result;
}

__n128 sub_100082CE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100082D04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100082D24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_100082D6C()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for FindMyAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100082EE0()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for FindMyAgent();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] deinit", v3, 0xCu);
    sub_100008964(v4);
  }

  return swift_deallocClassInstance();
}

void sub_100083084(uint64_t a1, uint64_t a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136446466;

    sub_1000040A8(&qword_100359C00, &unk_1002884A0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    swift_errorRetain();
    sub_1000040A8(&qword_100355D88, &qword_100278D50);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Opening Find My result: %{public}s, %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000832B4(const char *a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_1000833A4()
{
  v0 = sub_1000040A8(&qword_100357468, &qword_100284930);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Opening Find My", v10, 2u);
  }

  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100083738(v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to form Find My URL", v13, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v14 = [objc_opt_self() defaultWorkspace];
    if (v14)
    {
      v16 = v14;
      URL._bridgeToObjectiveC()(v15);
      v18 = v17;
      v19 = [objc_allocWithZone(_LSOpenConfiguration) init];
      aBlock[4] = sub_100083084;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100145D6C;
      aBlock[3] = &unk_10032ACD8;
      v20 = _Block_copy(aBlock);
      [v16 openURL:v18 configuration:v19 completionHandler:v20];
      _Block_release(v20);

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100083738(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357468, &qword_100284930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000837A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000837B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 144);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 48))(v35, v5, v6);
    v7 = sub_1000088DC(v35, v35[3]);
    v8 = sub_100083AD0();
    v10 = *(*v7 + 24);
    if (v8 >> 62 != 2 || v8 != 0x8000000000000000 || (v11 = 1.0, v9))
    {
      sub_100084DCC(v8, v9);
      v11 = 0.5;
    }

    v12 = v10 * 0.8 * v11;
    sub_100008964(v35);
    v13 = swift_allocObject();
    v14 = *(v2 + 208);
    *(v13 + 208) = *(v2 + 192);
    *(v13 + 224) = v14;
    *(v13 + 240) = *(v2 + 224);
    v15 = *(v2 + 144);
    *(v13 + 144) = *(v2 + 128);
    *(v13 + 160) = v15;
    v16 = *(v2 + 176);
    *(v13 + 176) = *(v2 + 160);
    *(v13 + 192) = v16;
    v17 = *(v2 + 80);
    *(v13 + 80) = *(v2 + 64);
    *(v13 + 96) = v17;
    v18 = *(v2 + 112);
    *(v13 + 112) = *(v2 + 96);
    *(v13 + 128) = v18;
    v19 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v19;
    v20 = *(v2 + 48);
    *(v13 + 48) = *(v2 + 32);
    *(v13 + 64) = v20;
    v21 = swift_allocObject();
    v22 = *(v2 + 208);
    *(v21 + 208) = *(v2 + 192);
    *(v21 + 224) = v22;
    *(v21 + 240) = *(v2 + 224);
    v23 = *(v2 + 144);
    *(v21 + 144) = *(v2 + 128);
    *(v21 + 160) = v23;
    v24 = *(v2 + 176);
    *(v21 + 176) = *(v2 + 160);
    *(v21 + 192) = v24;
    v25 = *(v2 + 80);
    *(v21 + 80) = *(v2 + 64);
    *(v21 + 96) = v25;
    v26 = *(v2 + 112);
    *(v21 + 112) = *(v2 + 96);
    *(v21 + 128) = v26;
    v27 = *(v2 + 16);
    *(v21 + 16) = *v2;
    *(v21 + 32) = v27;
    v28 = *(v2 + 48);
    *(v21 + 48) = *(v2 + 32);
    *(v21 + 64) = v28;
    sub_100084DF8(v2, v34);
    sub_100084DF8(v2, v34);
    type metadata accessor for UIMetrics();
    sub_1000850B4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v29 = EnvironmentObject.init()();
    v31 = v30;
    static AnyTransition.opacity.getter();
    static Animation.easeIn(duration:)();
    AnyTransition.animation(_:)();

    static AnyTransition.identity.getter();
    v32 = static AnyTransition.asymmetric(insertion:removal:)();

    *a1 = v29;
    *(a1 + 8) = v31;
    *(a1 + 16) = v12;
    *(a1 + 24) = sub_100084DE4;
    *(a1 + 32) = v13;
    *(a1 + 40) = sub_100084DEC;
    *(a1 + 48) = v21;
    strcpy((a1 + 56), "scrollViewNS");
    *(a1 + 69) = 0;
    *(a1 + 70) = -5120;
    *(a1 + 72) = 0;
    *(a1 + 80) = v32;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000850B4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100083AD0()
{
  LOBYTE(result) = sub_100027730();
  if (v1)
  {
    v2 = *(v1 + 16);
    if (!v2)
    {
      return result;
    }

    v3 = (v1 + 32);
    v4 = *(v1 + 16);
    v5 = (v1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7)
      {
        v8 = v6 == 1;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return result | 0x4000000000000000;
      }

      --v4;
    }

    while (v4);
    while (1)
    {
      v10 = *v3++;
      v9 = v10;
      if (v10 == 2 || v9 == 3)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0x8000000000000000;
}

uint64_t sub_100083B80(uint64_t a1, double a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v22 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  v11 = *(a1 + 208);
  *(v10 + 208) = *(a1 + 192);
  *(v10 + 224) = v11;
  *(v10 + 240) = *(a1 + 224);
  v12 = *(a1 + 144);
  *(v10 + 144) = *(a1 + 128);
  *(v10 + 160) = v12;
  v13 = *(a1 + 176);
  *(v10 + 176) = *(a1 + 160);
  *(v10 + 192) = v13;
  v14 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v14;
  v15 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v15;
  v16 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v16;
  v17 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v17;
  *(v10 + 248) = a2;
  aBlock[4] = sub_100084F64;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032ADA0;
  v18 = _Block_copy(aBlock);
  sub_100084DF8(a1, &v25);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000850B4(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_100083EBC(uint64_t a1, double a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    v3 = v2[9];
    v4 = v2[10];
    sub_1000088DC(v2 + 6, v3);
    (*(v4 + 48))(v6, v3, v4);
    sub_1000088DC(v6, v6[3]);
    sub_1000040A8(&qword_100359C08, &qword_10027DE30);
    State.wrappedValue.setter();
    return sub_100008964(v6);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000850B4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100083FEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100083AD0();
  v10 = v9;
  v11 = swift_allocObject();
  v12 = *(a3 + 208);
  *(v11 + 208) = *(a3 + 192);
  *(v11 + 224) = v12;
  *(v11 + 240) = *(a3 + 224);
  v13 = *(a3 + 144);
  *(v11 + 144) = *(a3 + 128);
  *(v11 + 160) = v13;
  v14 = *(a3 + 176);
  *(v11 + 176) = *(a3 + 160);
  *(v11 + 192) = v14;
  v15 = *(a3 + 80);
  *(v11 + 80) = *(a3 + 64);
  *(v11 + 96) = v15;
  v16 = *(a3 + 112);
  *(v11 + 112) = *(a3 + 96);
  *(v11 + 128) = v16;
  v17 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v17;
  v18 = *(a3 + 48);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = v18;
  sub_100084DF8(a3, v25);
  type metadata accessor for AppEvents();
  sub_1000850B4(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v19 = EnvironmentObject.init()();
  v21 = v20;
  type metadata accessor for StewieModel(0);
  sub_1000850B4(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  result = EnvironmentObject.init()();
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = result;
  *(a4 + 24) = v23;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  *(a4 + 49) = v25[0];
  *(a4 + 52) = *(v25 + 3);
  *(a4 + 56) = a1;
  *(a4 + 64) = a2 & 1;
  v24 = *v26;
  *(a4 + 68) = *&v26[3];
  *(a4 + 65) = v24;
  *(a4 + 72) = sub_100084E54;
  *(a4 + 80) = v11;
  return result;
}

uint64_t sub_1000841AC()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    type metadata accessor for StewieModel(0);
    v4 = &qword_1003561B8;
    v5 = type metadata accessor for StewieModel;
    goto LABEL_14;
  }

  if (!*(v1 + 64))
  {
    return 1;
  }

  if (sub_100071A54())
  {
    return 0;
  }

  if (!*(v1 + 64) || !*(*(v1 + 88) + 16) || (sub_100071A54() & 1) != 0)
  {
    return 1;
  }

  v3 = *(v0 + 48);
  if (!v3)
  {
    while (1)
    {
      type metadata accessor for ConnectivityModel();
      v4 = &qword_100354F78;
      v5 = type metadata accessor for ConnectivityModel;
LABEL_14:
      sub_1000850B4(v4, v5, "\ts\n");
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  if (*(v3 + 57))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000842B8()
{
  if (sub_1000841AC() == 2)
  {
    return 0;
  }

  v2 = *(v0 + 96);
  if (v2)
  {
    if (*(v2 + 64) && *(*(v2 + 88) + 16))
    {
      if (sub_100071A54())
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    type metadata accessor for StewieModel(0);
    sub_1000850B4(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100084380@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = swift_allocObject();
  v5 = *(v2 + 48);
  *(v4 + 48) = *(v2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v2 + 64);
  *(v4 + 96) = *(v2 + 80);
  v6 = *(v2 + 16);
  *(v4 + 16) = *v2;
  *(v4 + 32) = v6;
  sub_100085074(v2, v12);
  type metadata accessor for UIMetrics();
  sub_1000850B4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  EnvironmentObject.init()();
  sub_1000040A8(&qword_100359C10, &qword_10027DF50);
  sub_1000040A8(&qword_100359C18, &qword_10027DF58);
  sub_100009274(&qword_100359C20, &qword_100359C10, &qword_10027DF50, &protocol conformance descriptor for IDView<A, B>);
  sub_100009274(&qword_100359C28, &qword_100359C18, &qword_10027DF58, &unk_100287220);
  _ConditionalContent<>.init(storage:)();
  result = *v12;
  v8 = v12[1];
  v9 = v13;
  v10 = v14;
  v11 = v15;
  *a1 = v12[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v11;
  return result;
}

uint64_t sub_10008459C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *(a1 + 32);
  if (v28 >> 62)
  {
    v3 = 1;
  }

  else
  {
    v3 = (v28 & 0xFFFFFFFFFFFFFFF0) == 0xFFFFFFFF0;
  }

  if (v3)
  {
    v18 = 0;
    v25 = 0;
    v26 = 0;
    v4 = 0;
    v15 = 0;
    if (*(a1 + 48))
    {
LABEL_9:
      v12 = 0;
      v22 = 0;
      v23 = 0;
      v10 = 0;
      v13 = 0;
      v21 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *(&v28 + 1);
    v15 = swift_allocObject();
    *(v15 + 16) = v28;
    *(v15 + 24) = v14;
    v16 = *(a1 + 48);
    *(v15 + 64) = *(a1 + 32);
    *(v15 + 80) = v16;
    *(v15 + 96) = *(a1 + 64);
    *(v15 + 112) = *(a1 + 80);
    v17 = *(a1 + 16);
    *(v15 + 32) = *a1;
    *(v15 + 48) = v17;
    sub_1000852B0(&v28, v27);
    sub_100085074(a1, v27);
    type metadata accessor for UIMetrics();
    sub_1000850B4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v18 = EnvironmentObject.init()();
    v26 = v19;

    v25 = ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter;
    v4 = sub_1000852A0;
    if (*(a1 + 48))
    {
      goto LABEL_9;
    }
  }

  v5 = swift_allocObject();
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  sub_100085074(a1, v27);
  type metadata accessor for PartnerModel();
  sub_1000850B4(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
  v8 = EnvironmentObject.init()();
  v23 = v9;
  type metadata accessor for StewieModel(0);
  sub_1000850B4(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v10 = EnvironmentObject.init()();
  v22 = v11;

  v21 = v5;

  v12 = v8;

  v13 = sub_1000850AC;
LABEL_10:
  sub_1000850FC(v18, v26, v4, v15, v25, 0);
  sub_100085148(v12, v23, v10, v22, v13, v21);
  sub_100085198(v18, v26, v4, v15, v25, 0);
  sub_1000851E8(v12, v23, v10, v22, v13, v21);
  *a2 = v18;
  a2[1] = v26;
  a2[2] = v4;
  a2[3] = v15;
  a2[4] = v25;
  a2[5] = 0;
  a2[6] = v12;
  a2[7] = v23;
  a2[8] = v10;
  a2[9] = v22;
  a2[10] = v13;
  a2[11] = v21;
  sub_1000851E8(v12, v23, v10, v22, v13, v21);
  return sub_100085198(v18, v26, v4, v15, v25, 0);
}

uint64_t sub_10008492C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v9 = *(a3 + 48);
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a3 + 64);
  *(v8 + 96) = *(a3 + 80);
  v10 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v10;

  sub_100085074(a3, v13);
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  AnyTransition.animation(_:)();

  static AnyTransition.identity.getter();
  v11 = static AnyTransition.asymmetric(insertion:removal:)();

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = sub_100085380;
  *(a4 + 24) = v8;
  *(a4 + 32) = v11;
  return result;
}

uint64_t sub_100084A3C(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (*a2)
      {
        goto LABEL_15;
      }
    }

    else if (a1 == 4)
    {
      if (*a2)
      {
        goto LABEL_15;
      }
    }

    else if (*a2)
    {
LABEL_15:

      PassthroughSubject.send(_:)();
    }

LABEL_16:
    type metadata accessor for AppEvents();
    sub_1000850B4(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (a1 >= 2u)
  {
    return (*(a2 + 72))();
  }

  if (!*a2)
  {
    goto LABEL_16;
  }

  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
}

uint64_t sub_100084BF4(unsigned __int8 a1, void *a2)
{
  if (a1 > 4u)
  {
    if (*a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = a2[2];
    if (!v3)
    {
      type metadata accessor for StewieModel(0);
      v5 = &qword_1003561B8;
      v6 = type metadata accessor for StewieModel;
      v7 = "\ts\n";
      goto LABEL_12;
    }

    if (*(v3 + 64) && (sub_100071A54() & 1) != 0)
    {
      if (*a2)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    if (*a2)
    {
LABEL_8:

      PassthroughSubject.send(_:)();
    }
  }

LABEL_10:
  type metadata accessor for AppEvents();
  v5 = &qword_100354D48;
  v6 = type metadata accessor for AppEvents;
  v7 = "ɼ\t";
LABEL_12:
  sub_1000850B4(v5, v6, v7);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double sub_100084DCC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_100084EB4(uint64_t a1)
{

  sub_10007758C(*(v1 + 176), *(v1 + 184));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100084F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100084F88(void *a1)
{
  if ((*a1 >> 4) > 0x80000000)
  {
    return -(*a1 >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100084FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100084FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000850B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000850FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return v6;
}

uint64_t sub_100085148(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return v6;
}

uint64_t sub_100085198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return v6;
}

uint64_t sub_1000851E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return v6;
}

uint64_t sub_100085238()
{

  v1 = *(v0 + 64);
  if (v1 >> 4 != 0xFFFFFFFF)
  {
    sub_100084DCC(v1, *(v0 + 72));
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000852B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100359C30, &unk_10027DF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085320()
{

  v1 = *(v0 + 48);
  if (v1 >> 4 != 0xFFFFFFFF)
  {
    sub_100084DCC(v1, *(v0 + 56));
  }

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10008538C()
{
  result = qword_100359C38;
  if (!qword_100359C38)
  {
    sub_100008CF0(&qword_100359C40, &qword_10027DF70);
    sub_100009274(&qword_100359C20, &qword_100359C10, &qword_10027DF50, &protocol conformance descriptor for IDView<A, B>);
    sub_100009274(&qword_100359C28, &qword_100359C18, &qword_10027DF58, &unk_100287220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359C38);
  }

  return result;
}

uint64_t sub_100085480()
{
  v1 = v0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for TimeZoneSource()) init];
  *(v0 + 40) = 0;
  v2 = OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone;
  v3 = type metadata accessor for TimeZone();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  sub_1000040A8(&unk_100365610, &unk_100279630);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  v4 = qword_100353A10;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    type metadata accessor for TimeZoneModel(0);

    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  return v1;
}

uint64_t sub_1000856F8()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for TimeZoneModel(0);

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_100008FA0(v1 + OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone, &qword_100359D90, &qword_100290580);
  return v1;
}

uint64_t sub_1000858B0()
{
  sub_1000856F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeZoneModel(uint64_t a1)
{
  result = qword_100359C78;
  if (!qword_100359C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008595C(uint64_t a1)
{
  sub_100085B60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100085A04()
{
  v1 = v0;
  sub_10000F574();
  v2 = static OS_dispatch_queue.main.getter();
  sub_1000040A8(&qword_100359D98, &qword_10027DFB0);
  v3 = swift_allocObject();
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {

    v4 = &_swiftEmptySetSingleton;
  }

  *(v3 + 32) = v4;
  swift_weakAssign();
  *(v3 + 24) = v2;

  v6 = sub_1001AD2AC(v5, sub_100085BB8, 0);

  *(v1 + 40) = v6;

  v7 = *(v1 + 32);
  sub_1000171B0();
}

void sub_100085B60(uint64_t a1)
{
  if (!qword_100359C88)
  {
    type metadata accessor for TimeZone();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100359C88);
    }
  }
}

uint64_t sub_100085BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100359D90, &qword_100290580);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone;
  swift_beginAccess();
  sub_1000865C4(a1 + v12, v6);
  sub_100085D68(v9);
  swift_beginAccess();
  sub_100086634(v9, a1 + v12);
  swift_endAccess();
  sub_10008607C(v6);
  sub_100008FA0(v6, &qword_100359D90, &qword_100290580);
  return sub_100008FA0(v9, &qword_100359D90, &qword_100290580);
}

uint64_t sub_100085D68(uint64_t a1)
{
  v3 = type metadata accessor for TimeZone();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100359D90, &qword_100290580);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1000040A8(&qword_100359DA0, &qword_10027DFB8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1000865C4(v1 + v14, v13);
  sub_1000865C4(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_100008FA0(v13, &qword_100359D90, &qword_100290580);
    }

    goto LABEL_6;
  }

  sub_1000865C4(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_100008FA0(v13, &qword_100359DA0, &qword_10027DFB8);
LABEL_7:
    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100018C74();
    return Subject<>.send()();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1000866A4();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_100008FA0(v13, &qword_100359D90, &qword_100290580);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10008607C(uint64_t a1)
{
  v3 = type metadata accessor for TimeZone();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000040A8(&qword_100359D90, &qword_100290580);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v37 - v9;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_1000040A8(&qword_100359DA0, &qword_10027DFB8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy13TimeZoneModel__timeZone;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v38 = v17;
  sub_1000865C4(v1 + v17, v16);
  v41 = a1;
  sub_1000865C4(a1, &v16[v18]);
  v19 = *(v4 + 48);
  if (v19(v16, 1, v3) == 1)
  {
    if (v19(&v16[v18], 1, v3) == 1)
    {
      return sub_100008FA0(v16, &qword_100359D90, &qword_100290580);
    }
  }

  else
  {
    sub_1000865C4(v16, v12);
    if (v19(&v16[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v16[v18], v3);
      sub_1000866A4();
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v4 + 8);
      v36(v6, v3);
      v36(v12, v3);
      result = sub_100008FA0(v16, &qword_100359D90, &qword_100290580);
      v21 = v1;
      if (v35)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v12, v3);
  }

  sub_100008FA0(v16, &qword_100359DA0, &qword_10027DFB8);
  v21 = v1;
LABEL_7:
  if (qword_100353AC8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381EA8);
  v23 = v42;
  sub_1000865C4(v41, v42);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = v39;
    sub_1000865C4(v23, v39);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_100008FA0(v23, &qword_100359D90, &qword_100290580);
    v31 = sub_10017C9E8(v28, v30, &v43);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_1000865C4(v21 + v38, v27);
    v32 = String.init<A>(describing:)();
    v34 = sub_10017C9E8(v32, v33, &v43);

    *(v26 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "timeZone changed from %s to %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008FA0(v23, &qword_100359D90, &qword_100290580);
  }

  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100018C74();
  return Subject<>.send()();
}

uint64_t sub_1000865C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100359D90, &qword_100290580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100359D90, &qword_100290580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000866A4()
{
  result = qword_100359DA8;
  if (!qword_100359DA8)
  {
    type metadata accessor for TimeZone();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359DA8);
  }

  return result;
}

Swift::Int sub_100086728()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000867E4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10008688C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100086944@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100086C54(*a1);
  *a2 = result;
  return result;
}

void sub_100086974(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819042147;
  v4 = 0xED00006E6F697463;
  v5 = 0x657465446C6C6166;
  if (*v1 != 2)
  {
    v5 = 0x617070616BLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1954047348;
    v2 = 0xE400000000000000;
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

unint64_t sub_1000869F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359DB0;
  if (!qword_100359DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359DB0);
  }

  return result;
}

BOOL sub_100086A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100086A90(v5, v7);
}

BOOL sub_100086A90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 1819042147;
  v4 = *a1;
  v5 = 0x657465446C6C6166;
  v6 = 0xED00006E6F697463;
  if (v4 != 2)
  {
    v5 = 0x617070616BLL;
    v6 = 0xE500000000000000;
  }

  v7 = 1954047348;
  if (!*a1)
  {
    v7 = 1819042147;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v4 <= 1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  v11 = 0x657465446C6C6166;
  v12 = 0xED00006E6F697463;
  if (*a2 != 2)
  {
    v11 = 0x617070616BLL;
    v12 = 0xE500000000000000;
  }

  if (*a2)
  {
    v3 = 1954047348;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1) != *(a2 + 1) || ((a1[16] ^ a2[16]) & 1) != 0)
  {
    return 0;
  }

  v17 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (a1[33])
  {
    return (a2[33] & 1) != 0;
  }

  return (a2[33] & 1) == 0;
}

unint64_t sub_100086C54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100321F08, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

__n128 sub_100086CA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100086CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100086D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100086D70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100086DB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100086E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359DB8;
  if (!qword_100359DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359DB8);
  }

  return result;
}

uint64_t sub_100086E68(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v4 && v3 == v5;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int sub_100086F04()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100086F84(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100087004(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100087080(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 8));
  if (*(v1 + 16) && (v2 = *(v1 + 32), Hasher._combine(_:)(1u), String.hash(into:)(), v2))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

BOOL sub_10008711C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100087240(v5, v7);
}

Swift::Int sub_100087168()
{
  Hasher.init(_seed:)();
  sub_100087080(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000871AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100087080(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000871EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359DC0[0];
  if (!qword_100359DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100359DC0);
  }

  return result;
}

BOOL sub_100087240(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = (v3 | v4) == 0;
  if (v3 && v4)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v9 = *(a2 + 24);
    v8 = *(a2 + 32);
    v10 = *(v3 + 16) == *(v4 + 16) && *(v3 + 24) == *(v4 + 24);
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v6)
      {
        if (v8 && (v7 == v9 && v6 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10008731C(uint64_t a1)
{
  result = type metadata accessor for Spring();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000873AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for Spring();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100087600(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Spring() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_100087908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100087950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000879B4()
{
  result = qword_100359E48;
  if (!qword_100359E48)
  {
    sub_100008CF0(&qword_100359E50, qword_10027E328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359E48);
  }

  return result;
}

unint64_t sub_100087A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359E58;
  if (!qword_100359E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359E58);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ExplorerGuidanceState.SettledLocation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExplorerGuidanceState.SettledLocation(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExplorerGuidanceState.SettledLocation(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100087B50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100087C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ExplorerGuidanceState(uint64_t a1)
{
  result = qword_100359EB8;
  if (!qword_100359EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100087E8C(319, a2, a3);
  if (v3 <= 0x3F)
  {
    sub_100087F94(319, &qword_100359ED8, &type metadata for ConnectivityModel.ConnectivityStatus);
    if (v4 <= 0x3F)
    {
      sub_100087F94(319, &qword_100359EE0, &type metadata for Bool);
      if (v5 <= 0x3F)
      {
        sub_100087F94(319, &qword_100359EE8, &type metadata for String);
        if (v6 <= 0x3F)
        {
          sub_100087F94(319, &qword_100359EF0, &type metadata for Angle);
          if (v7 <= 0x3F)
          {
            sub_100087F3C(319);
            if (v8 <= 0x3F)
            {
              sub_100087F94(319, &unk_100359F00, &type metadata for ExplorerGuidanceState.SettledLocation);
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100087E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_100359EC8)
  {
    sub_100087EE8(0, a2, a3);
    v3 = type metadata accessor for Set();
    if (!v4)
    {
      atomic_store(v3, &qword_100359EC8);
    }
  }
}

unint64_t sub_100087EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100359ED0;
  if (!qword_100359ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100359ED0);
  }

  return result;
}

void sub_100087F3C(uint64_t a1)
{
  if (!qword_100359EF8)
  {
    type metadata accessor for TransmissionProgress(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100359EF8);
    }
  }
}

void sub_100087F94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100087FE0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double sub_100088018()
{
  v0 = type metadata accessor for ExplorerGuidanceState(0);
  sub_1000885F4(v0, qword_100381C30);
  v1 = sub_10000F53C(v0, qword_100381C30);
  v2 = v0[15];
  v3 = type metadata accessor for TransmissionProgress(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *v1 = 0;
  *(v1 + 8) = &_swiftEmptySetSingleton;
  *(v1 + 16) = 9;
  *(v1 + 18) = 2;
  result = 0.0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 81) = 0;
  *(v1 + 83) = 0;
  *(v1 + v0[16]) = 0;
  v5 = v1 + v0[17];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 2;
  return result;
}

uint64_t sub_100088108(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1000040A8(&qword_100359F60, &unk_100284630);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  if ((sub_100204870() & 1) == 0)
  {
    return 0;
  }

  v16 = a1[16];
  v17 = a2[16];
  if (v16 == 9)
  {
    if (v17 != 9)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  if (a1[17] != a2[17])
  {
    return 0;
  }

  v19 = a1[18];
  v20 = a2[18];
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
    {
      return result;
    }
  }

  v21 = *(a1 + 4);
  v22 = *(a2 + 4);
  if (v21)
  {
    if (!v22 || (*(a1 + 3) != *(a2 + 3) || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 6);
  v24 = *(a2 + 6);
  if (v23)
  {
    if (!v24 || (*(a1 + 5) != *(a2 + 5) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 8);
  v26 = *(a2 + 8);
  if (v25)
  {
    if (!v26 || (*(a1 + 7) != *(a2 + 7) || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (a1[80])
  {
    if ((a2[80] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[80] & 1) != 0 || (static Angle.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[81] != a2[81])
  {
    return 0;
  }

  result = 0;
  if (a1[82] == a2[82] && ((a1[83] ^ a2[83]) & 1) == 0)
  {
    v27 = type metadata accessor for ExplorerGuidanceState(0);
    v28 = v27[15];
    v29 = *(v15 + 48);
    sub_1000716B8(&a1[v28], v14);
    sub_1000716B8(&a2[v28], &v14[v29]);
    v30 = *(v5 + 48);
    if (v30(v14, 1, v4) == 1)
    {
      if (v30(&v14[v29], 1, v4) == 1)
      {
        sub_100008FA0(v14, &qword_100354FD8, &qword_100277EF0);
LABEL_51:
        if (a1[v27[16]] == a2[v27[16]])
        {
          v32 = v27[17];
          v33 = &a1[v32];
          v34 = a1[v32 + 16];
          v35 = &a2[v32];
          v36 = a2[v32 + 16];
          if (v34 == 2)
          {
            if (v36 != 2)
            {
              return 0;
            }
          }

          else if (v36 == 2 || *v33 != *v35 || v33[1] != v35[1] || ((v36 ^ v34) & 1) != 0)
          {
            return 0;
          }

          return 1;
        }

        return 0;
      }
    }

    else
    {
      sub_1000716B8(v14, v10);
      if (v30(&v14[v29], 1, v4) != 1)
      {
        sub_10000C9A4(&v14[v29], v7);
        v31 = sub_1000ECF3C(v10, v7);
        sub_100088598(v7);
        sub_100088598(v10);
        sub_100008FA0(v14, &qword_100354FD8, &qword_100277EF0);
        if ((v31 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      sub_100088598(v10);
    }

    sub_100008FA0(v14, &qword_100359F60, &unk_100284630);
    return 0;
  }

  return result;
}