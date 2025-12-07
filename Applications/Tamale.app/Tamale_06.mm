uint64_t sub_1000A7BE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1000A7CEC, v5, v4);
}

uint64_t sub_1000A7CEC()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for SalientActionButton(0);
  NewSaliencyModel.heroPillChanged(topAction:)();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  *(swift_task_alloc() + 16) = v2;
  withAnimation<A>(_:_:)();

  if (v1)
  {
    v3 = static Duration.seconds(_:)();
    v5 = v4;
    static Clock<>.continuous.getter();
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1000A7F0C;
  }

  else
  {
    v3 = static Duration.seconds(_:)();
    v5 = v7;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_1000A87DC;
  }

  return sub_1000A9BE0(v3, v5, 0, 0, 1);
}

uint64_t sub_1000A7F0C()
{
  v2 = *v1;
  v2[13] = v0;

  v3 = v2[8];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[15] = v6;
    v6(v3, v5);
    v7 = v2[10];
    v8 = v2[11];
    v9 = sub_1000A8268;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[14] = v10;
    v10(v3, v5);
    v7 = v2[10];
    v8 = v2[11];
    v9 = sub_1000A80AC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000A80AC(uint64_t a1)
{
  v1[16] = v1[14];
  if (static Task<>.isCancelled.getter())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[2];
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v4;
    withAnimation<A>(_:_:)();

    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    v1[17] = v8;
    *v8 = v1;
    v8[1] = sub_1000A8428;

    return sub_1000A9BE0(v5, v7, 0, 0, 1);
  }
}

uint64_t sub_1000A8268(uint64_t a1)
{
  v1[16] = v1[15];
  if (static Task<>.isCancelled.getter())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[2];
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v4;
    withAnimation<A>(_:_:)();

    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    v1[17] = v8;
    *v8 = v1;
    v8[1] = sub_1000A8428;

    return sub_1000A9BE0(v5, v7, 0, 0, 1);
  }
}

uint64_t sub_1000A8428()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[16];
  v4 = v2[7];
  v5 = v2[4];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1000A86E0;
  }

  else
  {
    v3(v4, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1000A85DC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000A85DC()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 16);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v1;
    withAnimation<A>(_:_:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A86E0()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 16);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v1;
    withAnimation<A>(_:_:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A87DC()
{
  v2 = *v1;
  v2[20] = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1000A8A70;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = sub_1000A8974;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000A8974()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 16);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v1;
    withAnimation<A>(_:_:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A8A70()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 16);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v1;
    withAnimation<A>(_:_:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A8B64(uint64_t a1)
{
  type metadata accessor for SalientActionButton(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A8BE0(uint64_t a1)
{
  type metadata accessor for SalientActionButton(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A8C5C()
{
  type metadata accessor for SalientActionButton(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_1000A8D18(uint64_t a1, char a2)
{
  type metadata accessor for SalientActionButton(0);
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A8DA0()
{
  v1 = type metadata accessor for SalientActionButton(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  sub_1000033A8(&qword_1001D6228, qword_100179080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ContentSizeCategory();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

double sub_1000A8F30()
{
  v1 = *(type metadata accessor for SalientActionButton(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A6320(v3, v0 + v2, v4);
}

unint64_t sub_1000A8FC8()
{
  result = qword_1001D8F58;
  if (!qword_1001D8F58)
  {
    sub_10001276C(&qword_1001D8F50, &qword_100178250);
    sub_10001276C(&qword_1001D8F60, &qword_100178258);
    sub_10001276C(&qword_1001D8F68, &qword_100178260);
    sub_10001276C(&qword_1001D8F70, &qword_100178268);
    sub_1000A9128();
    sub_1000A9284();
    sub_1000A9340();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D8FB0, &qword_1001D8FB8, &unk_100178288, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8F58);
  }

  return result;
}

unint64_t sub_1000A9128()
{
  result = qword_1001D8F78;
  if (!qword_1001D8F78)
  {
    sub_10001276C(&qword_1001D8F60, &qword_100178258);
    sub_10001276C(&qword_1001D8F80, &qword_100178270);
    sub_10001276C(&qword_1001D8F88, &qword_100178278);
    sub_100013608(&qword_1001D8F90, &qword_1001D8F80, &qword_100178270, &protocol conformance descriptor for ZStack<A>);
    sub_100013608(&qword_1001D8F98, &qword_1001D8F88, &qword_100178278, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8F78);
  }

  return result;
}

unint64_t sub_1000A9284()
{
  result = qword_1001D8FA0;
  if (!qword_1001D8FA0)
  {
    sub_10001276C(&qword_1001D8F68, &qword_100178260);
    sub_1000A9128();
    sub_1000AA8E0(&qword_1001D6F00, type metadata accessor for MitosisCellModifier, &unk_100176550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FA0);
  }

  return result;
}

unint64_t sub_1000A9340()
{
  result = qword_1001D8FA8;
  if (!qword_1001D8FA8)
  {
    sub_10001276C(&qword_1001D8F70, &qword_100178268);
    sub_1000A9128();
    sub_100013608(&qword_1001D3CB8, &qword_1001D3C98, &qword_100178280, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FA8);
  }

  return result;
}

unint64_t sub_1000A93F8()
{
  result = qword_1001D8FC0;
  if (!qword_1001D8FC0)
  {
    sub_10001276C(&qword_1001D8F28, &qword_100178220);
    sub_1000A9484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FC0);
  }

  return result;
}

unint64_t sub_1000A9484()
{
  result = qword_1001D8FC8;
  if (!qword_1001D8FC8)
  {
    sub_10001276C(&qword_1001D8F20, &qword_100178218);
    sub_100013608(&qword_1001D8FD0, &qword_1001D8F18, &qword_100178210, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FC8);
  }

  return result;
}

unint64_t sub_1000A953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8FD8;
  if (!qword_1001D8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FD8);
  }

  return result;
}

unint64_t sub_1000A9598()
{
  result = qword_1001D8FE8;
  if (!qword_1001D8FE8)
  {
    sub_10001276C(&qword_1001D8F38, &qword_100178230);
    sub_10001276C(&qword_1001D8F28, &qword_100178220);
    v3 = sub_1000A93F8();
    sub_1000A953C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D8D30, &qword_1001D8D38, &unk_100177FE0, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8FE8);
  }

  return result;
}

uint64_t sub_1000A96A8()
{
  v1 = type metadata accessor for SalientActionButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1000033A8(&qword_1001D6228, qword_100179080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ContentSizeCategory();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A9830()
{
  v2 = *(type metadata accessor for SalientActionButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100019340;

  return sub_1000A7BE0(v0 + v3, v4);
}

uint64_t sub_1000A9950@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D8E28, &unk_100178460);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_1000033A8(&qword_1001D8E30, &unk_100178170);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v12 = 0.88;
  }

  else
  {
    v12 = 1.0;
  }

  static UnitPoint.center.getter();
  v14 = v13;
  v16 = v15;
  (*(v2 + 32))(v8, v4, v1);
  v17 = &v8[*(v6 + 44)];
  *v17 = v12;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  *(v17 + 3) = v16;
  v18 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v19 = ButtonStyleConfiguration.isPressed.getter();
  sub_10002091C(v8, v11, &qword_1001D8E28, &unk_100178460);
  v20 = &v11[*(v9 + 36)];
  *v20 = v18;
  v20[8] = v19 & 1;
  v23 = ButtonStyleConfiguration.isPressed.getter() & 1;
  sub_1000A4F0C();
  View.onChange<A>(of:initial:_:)();
  return sub_10001370C(v11, &qword_1001D8E30, &unk_100178170);
}

uint64_t sub_1000A9BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1000A9CE0, 0, 0);
}

uint64_t sub_1000A9CE0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000AA8E0(&qword_1001D9000, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000AA8E0(&qword_1001D9008, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000A9E70;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000A9E70()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000AA02C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000AA02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AA110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AA178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AA1E0(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000AA23C()
{
  result = qword_1001D9058;
  if (!qword_1001D9058)
  {
    sub_10001276C(&qword_1001D9048, &qword_100178300);
    sub_1000AA2F4();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9058);
  }

  return result;
}

unint64_t sub_1000AA2F4()
{
  result = qword_1001D9060;
  if (!qword_1001D9060)
  {
    sub_10001276C(&qword_1001D9068, &qword_100178310);
    sub_1000AA3AC();
    sub_100013608(&qword_1001D51A0, &qword_1001D51A8, &qword_1001795F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9060);
  }

  return result;
}

unint64_t sub_1000AA3AC()
{
  result = qword_1001D9070;
  if (!qword_1001D9070)
  {
    sub_10001276C(&qword_1001D9078, &qword_100178318);
    sub_1000AA438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9070);
  }

  return result;
}

unint64_t sub_1000AA438()
{
  result = qword_1001D9080;
  if (!qword_1001D9080)
  {
    sub_10001276C(&qword_1001D9088, &qword_100178320);
    sub_1000AA4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9080);
  }

  return result;
}

unint64_t sub_1000AA4C4()
{
  result = qword_1001D9090;
  if (!qword_1001D9090)
  {
    sub_10001276C(&qword_1001D9098, &qword_100178328);
    sub_1000AA550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9090);
  }

  return result;
}

unint64_t sub_1000AA550()
{
  result = qword_1001D90A0;
  if (!qword_1001D90A0)
  {
    sub_10001276C(&qword_1001D90A8, &qword_100178330);
    sub_1000AA608();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70, &qword_100177A70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D90A0);
  }

  return result;
}

unint64_t sub_1000AA608()
{
  result = qword_1001D90B0;
  if (!qword_1001D90B0)
  {
    sub_10001276C(&qword_1001D90B8, &qword_100178338);
    sub_100013608(&qword_1001D90C0, &qword_1001D90C8, &qword_100178340, &protocol conformance descriptor for HStack<A>);
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8, &unk_1001716E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D90B0);
  }

  return result;
}

unint64_t sub_1000AA6EC()
{
  result = qword_1001D90D0;
  if (!qword_1001D90D0)
  {
    sub_10001276C(&qword_1001D9050, &qword_100178308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D90D0);
  }

  return result;
}

uint64_t sub_1000AA7A4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_1000AA8E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AA928()
{
  sub_10001276C(&qword_1001D8E30, &unk_100178170);
  sub_1000A4F0C();
  return swift_getOpaqueTypeConformance2();
}

void *sub_1000AA9A0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AADC0()
{
  v1 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v84 = *(v1 - 8);
  v85 = v1;
  __chkstk_darwin(v1);
  v83 = &v64 - v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v3 - 8);
  *&v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchTimeInterval();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v68 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    sub_1000AE5B8(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL, v13);
    v24 = v14;
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10001370C(v13, &qword_1001D8020, &qword_1001728D0);
      v25 = v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
      v26 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
      v27 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
      v82 = xmmword_100178480;
      *v25 = xmmword_100178480;
      v28 = *(v25 + 16);
      *(v25 + 16) = 2;
      sub_1000616E4(v26, v27, v28);
      aBlock = v82;
      LOBYTE(v87) = 2;
      sub_1000033A8(&qword_1001D6B78, &unk_100177100);
      v29 = v83;
      AsyncStream.Continuation.yield(_:)();
      return (*(v84 + 8))(v29, v85);
    }

    else
    {
      v30 = v17;
      (*(v15 + 32))(v17, v13, v24);
      v31 = sub_1000B510C(v17, 0x4096800000000000, 0x409E000000000000, 0);
      v32 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming;
      v33 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
      *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = v31;

      if (*(v0 + v32))
      {
        sub_10005BBC4(0, &qword_1001D94F0, OS_dispatch_source_ptr);
        *&aBlock = _swiftEmptyArrayStorage;
        sub_1000AE544(&qword_1001D94F8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
        v67 = v24;
        v66 = v15;
        sub_1000033A8(&qword_1001D9500, &qword_1001785F0);
        v65 = v0;
        sub_1000618FC(&qword_1001D9508, &qword_1001D9500, &qword_1001785F0);
        v34 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v35 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
        (*(v69 + 8))(v10, v34);
        ObjectType = swift_getObjectType();
        v37 = v71;
        static DispatchTime.now()();
        v38 = v73;
        *v73 = 1;
        v39 = v75;
        v40 = v76;
        (v75[13])(v38, enum case for DispatchTimeInterval.milliseconds(_:), v76);
        OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
        (v39[1])(v38, v40);
        (*(v72 + 8))(v37, v74);
        v41 = swift_allocObject();
        v76 = v30;
        v42 = v41;
        swift_weakInit();
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        v44[2] = v42;
        v44[3] = v43;
        v44[4] = 0x4024000000000000;
        v89 = sub_1000B533C;
        v90 = v44;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v75 = &v87;
        v87 = sub_1000B5F04;
        v88 = &unk_1001C3298;
        v45 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        v46 = v77;
        static DispatchQoS.unspecified.getter();
        v47 = v80;
        v70 = ObjectType;
        sub_1000AC4A0();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v45);
        v81 = *(v81 + 8);
        (v81)(v47, v82);
        v48 = v79;
        v78 = *(v78 + 8);
        (v78)(v46, v79);

        v49 = swift_allocObject();
        v50 = v65;
        swift_weakInit();
        v89 = sub_1000B5348;
        v90 = v49;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v87 = sub_1000B5F04;
        v88 = &unk_1001C32C0;
        v51 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        sub_1000AC4A0();
        OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
        _Block_release(v51);
        (v81)(v47, v82);
        (v78)(v46, v48);

        v52 = v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
        v53 = *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v54 = *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        *v52 = 0;
        *(v52 + 8) = 0;
        v55 = *(v52 + 16);
        *(v52 + 16) = 1;
        sub_1000616E4(v53, v54, v55);
        aBlock = 0uLL;
        LOBYTE(v87) = 1;
        sub_1000033A8(&qword_1001D6B78, &unk_100177100);
        v56 = v83;
        AsyncStream.Continuation.yield(_:)();
        (*(v84 + 8))(v56, v85);
        *(v50 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer) = v35;
        swift_unknownObjectRelease();
        OS_dispatch_source.resume()();
        swift_unknownObjectRelease();
        return (*(v66 + 8))(v76, v67);
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        *&aBlock = 0xD000000000000022;
        *(&aBlock + 1) = 0x800000010016DBE0;
        sub_1000AE544(&qword_1001D57A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v57);

        v58 = aBlock;
        v59 = v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
        v60 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v61 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        *v59 = aBlock;
        v62 = *(v59 + 16);
        *(v59 + 16) = 2;
        sub_1000616E4(v60, v61, v62);
        aBlock = v58;
        LOBYTE(v87) = 2;

        sub_1000033A8(&qword_1001D6B78, &unk_100177100);
        v63 = v83;
        AsyncStream.Continuation.yield(_:)();
        (*(v84 + 8))(v63, v85);
        return (*(v15 + 8))(v17, v24);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000ABA4C(uint64_t a1, uint64_t a2, double a3)
{
  v44 = a2;
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v42 = v8;
    v20 = v7;
    v21 = *(Strong + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
    *v17 = v21;
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v17, v14);
    if (v21)
    {
      v23 = v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
      if (*(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16) > 1u)
      {
        v29 = *v23;
        v28 = *(v23 + 8);
        if (*(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16) == 2)
        {
          *&v45 = *v23;
          *(&v45 + 1) = v28;
          v46 = 2;

          sub_1000033A8(&qword_1001D6B78, &unk_100177100);
          AsyncStream.Continuation.yield(_:)();

          (*(v11 + 8))(v13, v10);
          return;
        }

        v30 = v43;
        if (v29 | v28)
        {
          v31 = v11;
          v32 = v10;
          if (v29 ^ 1 | v28)
          {
            *v23 = xmmword_100176B30;
            *(v23 + 16) = 3;
            v45 = xmmword_100176B30;
            v46 = 3;
            sub_1000033A8(&qword_1001D6B78, &unk_100177100);
            AsyncStream.Continuation.yield(_:)();

            (*(v31 + 8))(v13, v10);
            return;
          }

          v33 = v20;
          sub_1000AE5B8(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL, v6);
          v34 = v42;
          if ((*(v42 + 48))(v6, 1, v33) != 1)
          {
            (*(v34 + 32))(v30, v6, v33);
            v35 = sub_1000B5350(0.75);
            if (v35)
            {
              v36 = *(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality);
              *(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = v35;
              v37 = v35;

              sub_1000AC010(v37, 1, *(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_timestamp));
              v38 = *v23;
              v39 = *(v23 + 8);
              *v23 = 0;
              *(v23 + 8) = 0;
              v40 = *(v23 + 16);
              *(v23 + 16) = 3;
              sub_1000616E4(v38, v39, v40);
              v45 = 0uLL;
              v46 = 3;
              sub_1000033A8(&qword_1001D6B78, &unk_100177100);
              AsyncStream.Continuation.yield(_:)();

              (*(v31 + 8))(v13, v32);
              (*(v34 + 8))(v30, v33);
              return;
            }

            goto LABEL_22;
          }

LABEL_21:
          sub_10001370C(v6, &qword_1001D8020, &qword_1001728D0);
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }
      }

      else if (*(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16))
      {
        v24 = *(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
        if (v24)
        {
          v25 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_timestamp;
          v26 = *(v19 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_timestamp);
          v27 = v24;
          sub_1000AC010(v27, 0, v26);

          *(v19 + v25) = 1.0 / a3 + *(v19 + v25);
LABEL_16:

          return;
        }

        goto LABEL_20;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        OS_dispatch_source.cancel()();

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_1000AC010(uint64_t a1, char a2, double a3)
{
  ObjectType = a1;
  v4 = sub_1000033A8(&unk_1001D9540, &unk_100178628);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for InProcessMediaFrame();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_synchronizer;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = *(v18 + 8);
      static InProcessMediaFrame.fromPbuf(_:timestamp:highResStill:)();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        swift_unknownObjectRelease();
        return sub_10001370C(v6, &unk_1001D9540, &unk_100178628);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        ObjectType = swift_getObjectType();
        v26[0] = 0;
        v20 = *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
        v21 = *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
        v26[1] = 0;
        v27 = 0;
        v28 = v20;
        v29 = v21;
        v22 = *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16);
        v30 = v22;
        v24 = *(v19 + 8);
        sub_100060424(v20, v21, v22);
        v23 = sub_1000AE544(&unk_1001D9440, &type metadata accessor for InProcessMediaFrame, &protocol conformance descriptor for InProcessMediaFrame);
        v24(v10, v26, v7, v23, ObjectType, v19);
        sub_1000616E4(v20, v21, v22);
        swift_unknownObjectRelease();
        return (*(v8 + 8))(v10, v7);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000AC388(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000AC3CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
    *(Strong + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = 0;
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality);
    *(v3 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AC4A0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000AE544(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000AC5B8(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v6 = a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v7 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
  v8 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
  v11[0] = xmmword_100176B30;
  *v6 = xmmword_100176B30;
  v9 = *(v6 + 16);
  *(v6 + 16) = 3;
  sub_1000616E4(v7, v8, v9);
  v11[1] = v11[0];
  v12 = 3;
  sub_1000033A8(&qword_1001D6B78, &unk_100177100);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000AC708()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamInternal;
  v3 = sub_1000033A8(&qword_1001D6AF0, &qword_100175BA0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamContinuation;
  v5 = sub_1000033A8(&qword_1001D6B78, &unk_100177100);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  sub_1000616E4(*(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState), *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8), *(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 16));

  sub_10001370C(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL, &qword_1001D8020, &qword_1001728D0);
  swift_unknownObjectRelease();
  sub_100061BBC(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_synchronizer);
  sub_1000B5E3C(*(v1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting));
  return v1;
}

uint64_t sub_1000AC890()
{
  sub_1000AC708();

  return swift_deallocClassInstance();
}

void sub_1000AC910(uint64_t a1)
{
  sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_1000AE398(319, &qword_1001D5398, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

double sub_1000ACAD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000AE544(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);

  return result;
}

void sub_1000ACD70(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B70, &unk_100175C50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v7 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState);
  v8 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState + 8);
  *v6 = 0;
  *(v6 + 8) = 0;
  v9 = *(v6 + 16);
  *(v6 + 16) = 0;
  sub_1000616E4(v7, v8, v9);
  v12[1] = 0;
  v12[2] = 0;
  v13 = 0;
  sub_1000033A8(&qword_1001D6B78, &unk_100177100);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  v10 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming);
  *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = 0;

  v11 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality);
  *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = 0;
}

uint64_t sub_1000ACEC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting;
  v3 = *(v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for SimulatorCameraSource.Tracker(0);
    swift_allocObject();

    sub_1000B4C44(v5);
    v4 = v6;

    v7 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1000B5E3C(v7);
  }

  sub_1000B5E4C(v3);
  return v4;
}

uint64_t sub_1000ACF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006043C(a1, a2, a3);
  swift_allocError();
  *v4 = 0xD000000000000032;
  v4[1] = 0x800000010016DC10;
  swift_willThrow();
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000AD01C()
{
  v1 = *v0 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  v2 = *v1;
  sub_100060424(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_1000AD074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0, &qword_100175BA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_1000AD1BC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for CVTrackSnapshot();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_registeredTrackIds;
  swift_beginAccess();
  v30 = v9;
  v10 = *(v1 + v9);
  v11 = *(a1 + 16);
  if (v11)
  {
    v29 = v1;
    v37 = _swiftEmptyArrayStorage;
    v28 = v10;

    sub_1000596D8(0, v11, 0);
    v12 = v37;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v32 = *(v13 + 56);
    v33 = v14;
    v16 = (v13 - 8);
    v31 = v6 + 32;
    do
    {
      v17 = v34;
      v18 = v36;
      v19 = v13;
      v33(v34, v15, v36);
      CVTrackSnapshot.id.getter();
      (*v16)(v17, v18);
      v37 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000596D8((v20 > 1), v21 + 1, 1);
        v12 = v37;
      }

      v12[2] = v21 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v8, v35);
      v15 += v32;
      --v11;
      v13 = v19;
    }

    while (v11);
    v10 = v28;
    v2 = v29;
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  v22 = sub_1000B3030(v12, v10);

  v23 = v30;
  v24 = *(v2 + v30);
  if (*(v22 + 16) <= v24[2] >> 3)
  {
    v37 = *(v2 + v30);

    sub_1000B31D0(v22);

    v25 = v37;
  }

  else
  {

    v25 = sub_1000B33EC(v22, v24);
  }

  *(v2 + v23) = v25;

  return result;
}

uint64_t sub_1000AD4E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPredictionStreamContinuation;
  swift_beginAccess();
  v8 = sub_100095B4C(a1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + v7);
    v20 = *(v2 + v7);
    *(v2 + v7) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000C22D4();
      v12 = v20;
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v15 = *(v12 + 56);
    v16 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    v17 = *(v16 - 8);
    (*(v17 + 32))(v6, v15 + *(v17 + 72) * v10, v16);
    sub_1000C0560(v10, v12);
    *(v2 + v7) = v12;

    (*(v17 + 56))(v6, 0, 1, v16);
  }

  else
  {
    v18 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  sub_10001370C(v6, &unk_1001D9590, &qword_1001771F8);
  return swift_endAccess();
}

uint64_t sub_1000AD73C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v1 - 8);
  v36 = &v27 - v2;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  v33 = *(v3 + 64);
  v4 = __chkstk_darwin(v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_1000033A8(&unk_1001D9570, &qword_1001771D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v30 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v30);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_1000033A8(&unk_1001D9580, &qword_1001771E8);
  (*(v9 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  v27 = v16;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v9 + 8))(v11, v8);
  v28 = v7;
  UUID.init()();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v36, 1, 1, v17);
  v18 = v31;
  v19 = v34;
  (*(v3 + 16))(v31, v7, v34);
  v20 = v29;
  v21 = v16;
  v22 = v30;
  (*(v12 + 16))(v29, v21, v30);
  v23 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v24 = (v33 + *(v12 + 80) + v23) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v35;
  (*(v3 + 32))(&v25[v23], v18, v19);
  (*(v12 + 32))(&v25[v24], v20, v22);

  sub_1000154EC(0, 0, v36, &unk_100178648, v25);

  (*(v3 + 8))(v28, v19);
  return (*(v12 + 8))(v27, v22);
}

uint64_t sub_1000ADB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1000033A8(&unk_1001D81A0, &qword_1001771F0);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADD08, 0, 0);
}

uint64_t sub_1000ADD08()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v5 = v0[8];
  v15 = v0[7];
  v6 = v0[6];
  v14 = *(v2 + 16);
  v14(v1);
  v7 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v5, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  swift_beginAccess();
  sub_1000B7B68(v4, v1);
  swift_endAccess();
  v9 = swift_allocObject();
  swift_weakInit();
  (v14)(v1, v15, v3);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v2 + 32))(v11 + v10, v1, v3);
  AsyncStream.Continuation.onTermination.setter();
  v0[5] = *(v6 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPrediction);

  AsyncStream.Continuation.yield(_:)();
  (*(v17 + 8))(v16, v18);

  v12 = v0[1];

  return v12();
}

double sub_1000ADF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v12;
    (*(v5 + 32))(&v15[v14], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_1000154EC(0, 0, v9, &unk_100178658, v15);
  }

  return result;
}

uint64_t sub_1000AE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000AE19C, 0, 0);
}

uint64_t sub_1000AE19C()
{
  sub_1000AD4E8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AE1FC()
{
  sub_100005640(*(v0 + 16), *(v0 + 24));
  sub_10001370C(v0 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame, &unk_1001D9540, &unk_100178628);

  return swift_deallocClassInstance();
}

void sub_1000AE2D0(uint64_t a1)
{
  sub_1000AE398(319, &unk_1001D92E0, &type metadata accessor for InProcessMediaFrame);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000AE398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_1000AE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CVTrackSnapshot();
  v8 = sub_1000AE544(&qword_1001D7FA0, &type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);

  return sub_1000B56A4(a1, v7, a3, v8, a4);
}

uint64_t sub_1000AE4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100005640(v3, v4);
}

uint64_t sub_1000AE544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000AE594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000AE5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CVPixelBufferRef sub_1000AE628(uint64_t a1, uint64_t a2, char a3)
{
  v53 = [objc_allocWithZone(CIContext) init];
  pixelBufferOut = 0;
  sub_1000033A8(&qword_1001D9518, &qword_100178608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100178490;
  v8 = kCVPixelBufferCGImageCompatibilityKey;
  *(inited + 32) = kCVPixelBufferCGImageCompatibilityKey;
  v9 = sub_1000033A8(&qword_1001D9520, &qword_100178610);
  *(inited + 40) = kCFBooleanTrue;
  v10 = kCVPixelBufferCGBitmapContextCompatibilityKey;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = kCFBooleanTrue;
  v11 = kCVPixelBufferIOSurfacePropertiesKey;
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  v12 = kCFBooleanTrue;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = sub_100097980(_swiftEmptyArrayStorage);
  *(inited + 144) = sub_1000033A8(&qword_1001D9528, &unk_100178618);
  *(inited + 120) = v16;
  sub_100097ABC(inited);
  swift_setDeallocating();
  sub_1000033A8(&unk_1001D9530, &qword_1001774D0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1000AE544(&qword_1001D3518, type metadata accessor for CFString, &unk_100170184);
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a3)
  {
    [v3 extent];
    Width = CGRectGetWidth(v58);
    [v3 extent];
    Height = CGRectGetHeight(v59);
  }

  else
  {
    Width = *&a1;
    Height = *&a2;
  }

  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_24;
  }

  v20 = 0;
  if (!CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, 0x42475241u, v17.super.isa, &pixelBufferOut))
  {
    v21 = pixelBufferOut;
    if (pixelBufferOut)
    {
      v22 = pixelBufferOut;
      [v3 extent];
      v23 = CGRectGetWidth(v60);
      [v3 extent];
      v24 = CGRectGetHeight(v61);
      if (a3)
      {
        v25 = *&CGAffineTransformIdentity.a;
        v26 = *&CGAffineTransformIdentity.c;
        v27 = *&CGAffineTransformIdentity.tx;
      }

      else
      {
        v28 = v23 / v24;
        [v3 extent];
        if (v28 >= *&a1 / *&a2)
        {
          v33 = *&a2 / CGRectGetHeight(*&v29);
        }

        else
        {
          v33 = *&a1 / CGRectGetWidth(*&v29);
        }

        [v3 extent];
        v34 = CGRectGetWidth(v62) * -0.5;
        [v3 extent];
        v35 = CGRectGetHeight(v63);
        CGAffineTransformMakeTranslation(&t1, v34, v35 * -0.5);
        tx = t1.tx;
        ty = t1.ty;
        v47 = *&t1.c;
        v48 = *&t1.a;
        CGAffineTransformMakeScale(&t1, v33, v33);
        v38 = t1.tx;
        v39 = t1.ty;
        v49 = *&t1.c;
        v50 = *&t1.a;
        CGAffineTransformMakeTranslation(&t1, *&a1 * 0.5, *&a2 * 0.5);
        v40 = t1.tx;
        v41 = t1.ty;
        v51 = *&t1.c;
        v52 = *&t1.a;
        v42 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v42;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        *&t2.a = v48;
        *&t2.c = v47;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v54, &t1, &t2);
        t1 = v54;
        *&t2.a = v50;
        *&t2.c = v49;
        t2.tx = v38;
        t2.ty = v39;
        CGAffineTransformConcat(&v54, &t1, &t2);
        t1 = v54;
        *&t2.a = v52;
        *&t2.c = v51;
        t2.tx = v40;
        t2.ty = v41;
        CGAffineTransformConcat(&v54, &t1, &t2);
        v25 = *&v54.a;
        v26 = *&v54.c;
        v27 = *&v54.tx;
      }

      *&t1.a = v25;
      *&t1.c = v26;
      *&t1.tx = v27;
      v43 = [v3 imageByApplyingTransform:{&t1, v47, v48}];
      v44 = [v43 imageByCroppingToRect:{0.0, 0.0, Width, Height}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [v53 render:v44 toCVPixelBuffer:v22 bounds:DeviceRGB colorSpace:{0.0, 0.0, Width, Height}];

      v20 = v21;
    }
  }

  return v20;
}

uint64_t sub_1000AEB98(double *a1, double a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1000B0968(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000AEC8C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000B0A94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000AEDDC(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000AF5E4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000AFC9C(v20 + 1, &qword_1001D95A8, &qword_100178668);
    }

    v18 = v8;
    sub_1000B08E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000B0C14(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1000AF024(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000B0D94(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000AF304(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DetectionRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000AE544(&qword_1001D95D0, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000B105C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_1000AF5E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000033A8(&qword_1001D95A8, &qword_100178668);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000AFC9C(v9 + 1, &qword_1001D95A8, &qword_100178668);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1000AF7F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&unk_1001D95C0, &qword_100178680);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000AFA28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&qword_1001D95B8, &qword_100178678);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000AFC9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000033A8(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1000AFEBC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000033A8(&unk_1001D9560, &qword_100178638);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1000B0218(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for DetectionRequest();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000033A8(&qword_1001D95D8, &qword_100178688);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1000B0574(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&unk_1001D95E0, &unk_100178690);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v39 = v3;
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
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_66;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v38 = 1 << *(v3 + 32);
        if (v38 >= 64)
        {
          bzero(v7, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v38;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_64;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 24);
      v40 = *(v18 + 16);
      v41 = *(v18 + 8);
      v21 = *(v18 + 32);
      Hasher.init(_seed:)();
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v22 = 9;
LABEL_21:
        Hasher._combine(_:)(v22);
        String.hash(into:)();
        String.hash(into:)();
        goto LABEL_51;
      }

      if (v40 | v41 | v19 | v20)
      {
        v23 = v40 | v41 | v20;
        if (v19 == 1 && v23 == 0)
        {
          v29 = 1;
        }

        else if (v19 == 2 && v23 == 0)
        {
          v29 = 2;
        }

        else if (v19 == 3 && v23 == 0)
        {
          v29 = 5;
        }

        else if (v19 == 4 && v23 == 0)
        {
          v29 = 6;
        }

        else if (v19 == 5 && v23 == 0)
        {
          v29 = 7;
        }

        else
        {
          v29 = 8;
        }
      }

      else
      {
        v29 = 0;
      }

      Hasher._combine(_:)(v29);
LABEL_51:
      v30 = Hasher._finalize()();
      v31 = -1 << *(v5 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v12 + 8 * v33);
          if (v37 != -1)
          {
            v13 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_66:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v41;
      *(v14 + 16) = v40;
      *(v14 + 24) = v20;
      *(v14 + 32) = v21;
      ++*(v5 + 16);
      v3 = v39;
    }

    if (v21)
    {
      v22 = 4;
    }

    else
    {
      v22 = 3;
    }

    goto LABEL_21;
  }

LABEL_64:

  *v2 = v5;
}

unint64_t sub_1000B08E4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1000B0968(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1000AF7F4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1000B1324();
      result = v7;
      goto LABEL_12;
    }

    sub_1000B1AB8(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000B0A94(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000AFA28(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000B1464();
      goto LABEL_16;
    }

    sub_1000B1CB8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000B0C14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000AFC9C(v6 + 1, &qword_1001D95A8, &qword_100178668);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000B15C0();
      goto LABEL_12;
    }

    sub_1000B1EF0(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000B0D94(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000AFEBC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000B1710(&type metadata accessor for UUID, &unk_1001D9560, &qword_100178638);
      goto LABEL_12;
    }

    sub_1000B2104(v10 + 1);
  }

  v12 = *v3;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B105C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for DetectionRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000B0218(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000B1710(&type metadata accessor for DetectionRequest, &qword_1001D95D8, &qword_100178688);
      goto LABEL_12;
    }

    sub_1000B2420(v10 + 1);
  }

  v12 = *v3;
  sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000AE544(&qword_1001D95D0, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000B1324()
{
  v1 = v0;
  sub_1000033A8(&unk_1001D95C0, &qword_100178680);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1000B1464()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D95B8, &qword_100178678);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_1000B15C0()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D95A8, &qword_100178668);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_1000B1710(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1000033A8(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1000B1948()
{
  v1 = v0;
  sub_1000033A8(&unk_1001D95E0, &unk_100178690);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        sub_100007F40(v19, v20, v21, v22, v24);
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
}

void sub_1000B1AB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&unk_1001D95C0, &qword_100178680);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1000B1CB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&qword_1001D95B8, &qword_100178678);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1000B1EF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&qword_1001D95A8, &qword_100178668);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1000B2104(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000033A8(&unk_1001D9560, &qword_100178638);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1000B2420(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for DetectionRequest();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000033A8(&qword_1001D95D8, &qword_100178688);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000AE544(&qword_1001D8240, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1000B273C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000033A8(&unk_1001D95E0, &unk_100178690);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v43 = v1;
    v44 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 24);
      v46 = *(v18 + 16);
      v22 = *(v18 + 32);
      Hasher.init(_seed:)();
      v23 = v22;
      v45 = v22;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          Hasher._combine(_:)(9uLL);

          v24 = v19;
          v26 = v20;
          String.hash(into:)();
          v27 = v46;
          String.hash(into:)();
        }

        else
        {
          if (v46 | v20 | v19 | v21)
          {
            v28 = v46 | v20 | v21;
            if (v19 == 1 && v28 == 0)
            {
              v24 = v19;
              v34 = 1;
            }

            else if (v19 == 2 && v28 == 0)
            {
              v24 = v19;
              v34 = 2;
            }

            else if (v19 == 3 && v28 == 0)
            {
              v24 = v19;
              v34 = 5;
            }

            else if (v19 == 4 && v28 == 0)
            {
              v24 = v19;
              v34 = 6;
            }

            else
            {
              v24 = v19;
              if (v19 == 5 && v28 == 0)
              {
                v34 = 7;
              }

              else
              {
                v34 = 8;
              }
            }
          }

          else
          {
            v24 = v19;
            v34 = 0;
          }

          Hasher._combine(_:)(v34);
          v26 = v20;
          v27 = v46;
        }
      }

      else
      {
        v24 = v19;
        if (v23)
        {
          v25 = 4;
        }

        else
        {
          v25 = 3;
        }

        Hasher._combine(_:)(v25);
        v26 = v20;

        String.hash(into:)();
        v27 = v46;
        String.hash(into:)();
      }

      v35 = Hasher._finalize()();
      v36 = -1 << *(v5 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v12 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v12 + 8 * v38);
          if (v42 != -1)
          {
            v13 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_64;
      }

      v13 = __clz(__rbit64((-1 << v37) & ~*(v12 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v24;
      *(v14 + 8) = v26;
      *(v14 + 16) = v27;
      *(v14 + 24) = v21;
      *(v14 + 32) = v45;
      ++*(v5 + 16);
      v3 = v44;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v43;
        goto LABEL_62;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {

LABEL_62:
    *v2 = v5;
  }
}

Swift::Int sub_1000B2B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000033A8(&qword_1001D95B0, &qword_100178670);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B2D08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000033A8(&unk_1001D9560, &qword_100178638);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000B3030(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000B48F8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000B5E08(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

void sub_1000B31D0(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1000B3E50(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_10001370C(v5, &qword_1001D44B0, &qword_100178660);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1000B33EC(uint64_t a1, void *a2)
{
  v5 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_10001370C(v30, &qword_1001D44B0, &qword_100178660);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_10001370C(v24, &qword_1001D44B0, &qword_100178660);
        a2 = sub_1000B2D08(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_1000B411C(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_100037980(v59);
  return a2;
}

uint64_t sub_1000B3E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000B1710(&type metadata accessor for UUID, &unk_1001D9560, &qword_100178638);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1000B45F0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_1000B411C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1000033A8(&qword_1001D44B0, &qword_100178660);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10001370C(v11, &qword_1001D44B0, &qword_100178660);
          v45 = v61;

          return sub_1000B2D08(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void sub_1000B45F0(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1000B48F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_1000AE544(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_1000AE544(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_1000B2D08(v29, v27, v28, a4);
}

void sub_1000B4C44(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame;
  v4 = type metadata accessor for InProcessMediaFrame();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_registeredTrackIds) = &_swiftEmptySetSingleton;
  v5 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPrediction;
  *(v1 + v5) = sub_100096F20(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_trackIdToPredictionStreamContinuation) = &_swiftEmptyDictionarySingleton;
  v6 = *(a1 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v1;
  v7[4] = &off_1001C3180;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000B5EC4;
  *(v8 + 24) = v7;
  v10[4] = sub_10006180C;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100071D78;
  v10[3] = &unk_1001C33D8;
  v9 = _Block_copy(v10);
  swift_retain_n();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_1000B4E58(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000033A8(&unk_1001D9540, &unk_100178628);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InProcessMediaFrame();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, a2);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v15);
    v21 = *(v16 + 32);
    v21(v18, v11, v15);
    v21(v8, v18, v15);
    v20(v8, 0, 1, v15);
    v22 = OBJC_IVAR____TtCC6Tamale21SimulatorCameraSource7Tracker_latestFrame;
    swift_beginAccess();
    sub_1000B57CC(v8, v2 + v22);
    return swift_endAccess();
  }

  else
  {
    v20(v11, 1, 1, v15);
    return sub_10001370C(v11, &unk_1001D9540, &unk_100178628);
  }
}

CVPixelBufferRef sub_1000B510C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000033A8(&qword_1001D9510, &unk_1001785F8);
  inited = swift_initStackObject();
  *(inited + 32) = kCIImageApplyOrientationProperty;
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  v8 = kCIImageApplyOrientationProperty;
  sub_100096DF8(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8320, &unk_1001774F0);
  v9 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  type metadata accessor for CIImageOption(0);
  sub_1000AE544(&qword_1001D3550, type metadata accessor for CIImageOption, &unk_1001701C8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v9 initWithContentsOfURL:v12 options:isa];

  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_1000AE628(a2, a3, a4 & 1);

  return v16;
}

uint64_t sub_1000B52B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000B52EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

CVPixelBufferRef sub_1000B5350(double a1)
{
  sub_1000033A8(&qword_1001D9510, &unk_1001785F8);
  inited = swift_initStackObject();
  *(inited + 32) = kCIImageApplyOrientationProperty;
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  v3 = kCIImageApplyOrientationProperty;
  sub_100096DF8(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8320, &unk_1001774F0);
  v4 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  type metadata accessor for CIImageOption(0);
  sub_1000AE544(&qword_1001D3550, type metadata accessor for CIImageOption, &unk_1001701C8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v4 initWithContentsOfURL:v7 options:isa];

  if (!v9)
  {
    return 0;
  }

  [v9 extent];
  Width = CGRectGetWidth(v20);
  [v9 extent];
  v11 = Width / CGRectGetHeight(v21);
  [v9 extent];
  if (v11 >= a1)
  {
    v16 = CGRectGetHeight(*&v12) * a1;
    [v9 extent];
    Height = CGRectGetHeight(v23);
  }

  else
  {
    v16 = CGRectGetWidth(*&v12);
    [v9 extent];
    Height = CGRectGetWidth(v22) / a1;
  }

  v18 = sub_1000AE628(*&v16, *&Height, 0);

  return v18;
}

uint64_t sub_1000B555C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000AF024(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

double sub_1000B56A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[5] = a5;
  v11[6] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for UUID();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1000AA9A0(sub_1000B5790, v11, v5, v6, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
  swift_beginAccess();
  sub_1000B555C(v9);
  swift_endAccess();

  return result;
}

uint64_t sub_1000B57CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D9540, &unk_100178628);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B583C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000B59A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000033A8(&unk_1001D8190, &qword_1001771E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100019340;

  return sub_1000ADB9C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000B5B0C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1000B5BD0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000ADF7C(a1, v4, v5);
}

uint64_t sub_1000B5C44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B5D10(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_1000AE17C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000B5E08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000B48F8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

double sub_1000B5E3C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1000B5E4C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1000B5E74(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

id sub_1000B5F20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          v7 = [objc_opt_self() sharedShimmeringLight];
LABEL_25:
          v8 = v7;
          v9 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v8];

          [v9 setActivationTransitionDirection:0];
LABEL_29:
          [v9 setDeactivationTransitionDirection:0];
          return v9;
        }

        v2 = [objc_opt_self() sharedShimmeringLight];
        v3 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:v2 radius:1 region:8.0];
LABEL_28:
        v9 = v3;

        [v9 setActivationTransitionDirection:2];
        goto LABEL_29;
      }

      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
      v5 = 2.0;
LABEL_27:
      v3 = [v4 initWithLightSource:v2 radius:0 region:v5];
      goto LABEL_28;
    }

    if (a1)
    {
      v2 = [objc_opt_self() sharedShimmeringLight];
      v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
      v5 = 5.0;
      goto LABEL_27;
    }

    v6 = objc_allocWithZone(_UIIntelligenceLatencyEffect);

    return [v6 initWithMode:0];
  }

  else
  {
    if (a1 <= 7u)
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {

          return sub_1000B73E4();
        }

        else
        {
          sub_10005BBC4(0, &qword_1001D96B8, _UIDirectionalLightConfiguration_ptr);
          v10 = [objc_opt_self() textAssistantReplacementBuildInPalette];
          v11 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
          [v11 setDuration:4.0];
          [v11 setDirection:2];
          v12 = [objc_opt_self() directionalLightWithConfiguration:v11];
          v13 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v12];

          return v13;
        }
      }

      v7 = [objc_opt_self() sharedLight];
      goto LABEL_25;
    }

    if (a1 == 8)
    {

      return sub_1000B74FC();
    }

    else
    {
      if (a1 == 9)
      {
        v2 = [objc_opt_self() sharedShimmeringLight];
        v4 = objc_allocWithZone(_UIIntelligenceEdgeLightEffect);
        v5 = 3.0;
        goto LABEL_27;
      }

      return sub_1000B7620();
    }
  }
}

uint64_t sub_1000B62B8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TamaleVisualEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TamaleVisualEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B6468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D9698;
  if (!qword_1001D9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9698);
  }

  return result;
}

void sub_1000B64CC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - v8;
  if ([objc_opt_self() isMainThread])
  {

    sub_1000B679C(a3, a1, a2);
  }

  else
  {
    v18 = 0;
    sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    (*(v7 + 16))(v9, a1, v6);
    v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = &v18;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    (*(v7 + 32))(v12 + v11, v9, v6);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000B77F0;
    *(v13 + 24) = v12;
    aBlock[4] = sub_10006180C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100071D78;
    aBlock[3] = &unk_1001C3650;
    v14 = _Block_copy(aBlock);

    dispatch_sync(v10, v14);

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {

      return;
    }

    __break(1u);
  }
}

id sub_1000B679C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(UIVisualEffectView) init];
  [v5 _setContinuousCornerRadius:a1];
  v6 = *(a3 + 16);
  if (v6)
  {
    v11 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      sub_1000B5F20(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  sub_10005BBC4(0, &qword_1001D96B0, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setBackgroundEffects:isa];

  sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  UIViewRepresentableContext.coordinator.getter();
  v11[2] = a3;

  return v5;
}

void sub_1000B6928(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = a3;
  v28 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = v19 + v18;
  v21 = v28;
  *v20 = v27;
  *(v20 + 8) = a4;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1000B72A8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C3538;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100015060();
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_1000150B8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);
}

void sub_1000B6CC4(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v20[2];

  v8 = sub_100059444(v7, a3);

  if (v8)
  {
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v20 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = (a3 + 32);
      do
      {
        v12 = *v11++;
        sub_1000B5F20(v12);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v9;
      }

      while (v9);
      v10 = v20;
    }

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = v10;
    v24 = sub_1000B7374;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000B5F04;
    v23 = &unk_1001C3588;
    v15 = _Block_copy(&v20);
    v16 = a4;

    [v13 animateWithDuration:v15 animations:0.9];
    _Block_release(v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a3;
    *(v17 + 32) = a1;
    v24 = sub_1000B73D0;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000B5F04;
    v23 = &unk_1001C35D8;
    v18 = _Block_copy(&v20);

    v19 = v16;

    [v13 animateWithDuration:v18 animations:0.05];
    _Block_release(v18);
    UIViewRepresentableContext.coordinator.getter();
    v20[2] = a3;

    UIViewRepresentableContext.coordinator.getter();
    *(v20 + 3) = a1;
  }
}

void sub_1000B6FAC(void *a1)
{
  sub_10005BBC4(0, &qword_1001D96B0, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setBackgroundEffects:isa];
}

uint64_t sub_1000B7040@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for VisualEffectView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = v5;
}

uint64_t sub_1000B70A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7888(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7888(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B7170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B7888(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000B719C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D96A0;
  if (!qword_1001D96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D96A0);
  }

  return result;
}

uint64_t sub_1000B71F0()
{
  v1 = sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1000B72A8()
{
  v1 = *(sub_1000033A8(&qword_1001D96A8, &qword_100178870) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v0 + v4);

  sub_1000B6CC4(v7, v0 + v2, v6, v8);
}

double sub_1000B7354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000B7384(uint64_t a1)
{

  return swift_deallocObject();
}

id sub_1000B73E4()
{
  v0 = [objc_opt_self() sharedLight];
  v1 = [objc_opt_self() mainBundle];
  v2 = objc_allocWithZone(_UIIntelligenceContentLightEffect);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithLightSource:v0 lightMaterial:v3 darkMaterial:v4 bundle:v1];

  [v5 setActivationTransitionDirection:0];
  [v5 setDeactivationTransitionDirection:0];
  return v5;
}

id sub_1000B74FC()
{
  sub_10005BBC4(0, &qword_1001D96B8, _UIDirectionalLightConfiguration_ptr);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
  [v1 setDirection:1];
  [v1 setReverse:1];
  [v1 setDuration:4.0];
  v2 = [objc_opt_self() directionalLightWithConfiguration:v1];
  v3 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v2];
  [v3 setActivationTransitionDirection:2];
  [v3 setDeactivationTransitionDirection:0];

  return v3;
}

id sub_1000B7620()
{
  sub_10005BBC4(0, &qword_1001D96B8, _UIDirectionalLightConfiguration_ptr);
  v0 = [objc_opt_self() textAssistantPonderingFillPalette];
  v1 = _UIDirectionalLightConfiguration.init(colorPalette:direction:reverse:duration:)();
  [v1 setDuration:2.5];
  [v1 setDirection:1];
  [v1 setReverse:1];
  v2 = [objc_opt_self() directionalLightWithConfiguration:v1];
  v3 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v2];

  return v3;
}

uint64_t sub_1000B7720()
{
  v1 = sub_1000033A8(&qword_1001D96A8, &qword_100178870);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000B77F0()
{
  v1 = *(sub_1000033A8(&qword_1001D96A8, &qword_100178870) - 8);
  v2 = *(v0 + 16);
  *v2 = sub_1000B679C(*(v0 + 32), v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)), *(v0 + 24));

  return _objc_release_x1();
}

unint64_t sub_1000B7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D96C0;
  if (!qword_1001D96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D96C0);
  }

  return result;
}

void *sub_1000B78F4(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (!__OFSUB__(v2, v1))
  {
    v29 = result[4] >> 1;
    v27 = result[3];
    v28 = result[1];
    v30 = *result;
    v25 = *(*result + 16);
    v26 = result[2];
    if (v3 >= v25)
    {
      v4 = *(*result + 16);
    }

    else
    {
      v4 = v2 - v1;
    }

    result = sub_10005971C(0, v4 & ~(v4 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v5 = v29;
      v6 = v27;
      if (v27 > v29)
      {
        v5 = v27;
      }

      v7 = v5 - v27;

      result = swift_unknownObjectRetain();
      v8 = 0;
      v10 = v25;
      v9 = v26;
      do
      {
        if (v10 == v8)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (!(v27 - v29 + v8))
        {
          goto LABEL_30;
        }

        if (v7 == v8)
        {
          goto LABEL_31;
        }

        v11 = *(v30 + 32 + 8 * v8);
        v12 = *(v26 + 8 * v27 + 8 * v8);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10005971C((v13 > 1), v14 + 1, 1);
          v10 = v25;
          v9 = v26;
          v6 = v27;
          result = v28;
        }

        ++v8;
        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        v15[4] = v12;
        v15[5] = v12 - v11;
      }

      while (v4 != v8);
      v16 = v6 + v8;
      if (v10 > v3)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

    result = swift_unknownObjectRetain();
    v9 = v26;
    v6 = v27;
    v16 = v27;
    v10 = v25;
    if (v25 <= v3)
    {
LABEL_28:
      swift_unknownObjectRelease();

      return _swiftEmptyArrayStorage;
    }

LABEL_19:
    v17 = v29;
    v18 = v16;
    while (v4 < v10)
    {
      v19 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_33;
      }

      if (v17 != v18)
      {
        if (v16 < v6 || v18 >= v17)
        {
          goto LABEL_34;
        }

        v20 = *(v30 + 32 + 8 * v4);
        v21 = *(v9 + 8 * v18);
        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (v23 >= v22 >> 1)
        {
          sub_10005971C((v22 > 1), v23 + 1, 1);
          v10 = v25;
          v9 = v26;
          result = v28;
          v17 = v29;
          v6 = v27;
        }

        _swiftEmptyArrayStorage[2] = v23 + 1;
        v24 = &_swiftEmptyArrayStorage[2 * v23];
        v24[4] = v21;
        v24[5] = v21 - v20;
        ++v4;
        ++v18;
        if (v19 != v10)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000B7B68(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1000C532C(a1);
    sub_1000BD6E0(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000C532C(v7);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000C0D64(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1000B7D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1000C15D8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    result = sub_100096048(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1000C3404();
        v11 = v14;
      }

      swift_unknownObjectRelease();
      result = sub_1000C0BF4(v9, v11, v12);
      *v3 = v11;
    }
  }

  return result;
}

NSString sub_1000B7EA0()
{
  result = String._bridgeToObjectiveC()();
  qword_1001EB5D0 = result;
  return result;
}

NSString sub_1000B7ED8()
{
  result = String._bridgeToObjectiveC()();
  qword_1001EB5D8 = result;
  return result;
}

void sub_1000B7F10(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal;
  if (*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal) != v3)
  {
    v19 = v10;
    v20 = v9;
    v21 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal;
    sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
    v18 = v5;
    v17 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = a1;
    aBlock[4] = sub_1000C4F94;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C3978;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000C55A8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_1000618FC(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v18 + 8))(v7, v4);
    (*(v19 + 8))(v12, v20);

    v13 = v21;
  }

  *(a1 + v13) = v3;
}

uint64_t sub_1000B821C(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1001D3140 != -1)
    {
      swift_once();
    }

    sub_1000149C8();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      LODWORD(v3) = 1.0;
      v4 = Strong;
      [Strong setOpacity:v3];
    }

    static LoggingSignposter.previewLayerBecameSafe.getter();
  }

  else
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [v5 setOpacity:0.0];
    }

    static LoggingSignposter.previewLayerBecameUnsafe.getter();
  }

  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  return LoggingSignposter.emitEvent(_:shouldLog:)();
}

uint64_t sub_1000B8328(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Logger();
  __chkstk_darwin(v8 - 8);
  static Log.cameraPreview.getter();
  static Log.cameraPreview.getter();
  LoggingSignposter.init(logger:)();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers) = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC6Tamale12PreviewLayer_candidateDisplayIntervals;
  v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v10 + 16) = 5;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) = _swiftEmptyArrayStorage;
  v11 = v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning;
  sub_1000033A8(&unk_1001D9C90, &unk_100178A20);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  v14 = OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue;
  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000C55A8(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50, &unk_100175C40);
  sub_1000618FC(&unk_1001D8050, &unk_1001D6B50, &unk_100175C40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v15 = v30;
  *(v1 + v14) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerNeedsUpdateInternal) = 0;
  *(v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerIsSafeInternal) = 0;
  v16 = (v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback);
  v18 = type metadata accessor for CameraControllerConfiguration(0);
  *v17 = 0;
  v17[1] = 0;
  v19 = 0.0333333333;
  if (*(v15 + *(v18 + 64)))
  {
    v19 = 0.0166666667;
  }

  *(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval) = v19;
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  v22 = qword_1001D31A8;

  if (v22 != -1)
  {
    swift_once();
  }

  [v21 addObserver:v2 selector:"invalidate" name:qword_1001EB5D0 object:0];

  v23 = [v20 defaultCenter];
  v24 = qword_1001D31B0;

  if (v24 != -1)
  {
    swift_once();
  }

  [v23 addObserver:v2 selector:"sendAccessibilityNotifications" name:qword_1001EB5D8 object:0];

  sub_10002005C(v15);
  return v2;
}

void sub_1000B88E0()
{
  v2 = sub_1000B7E3C(aBlock);
  if (v3 || v1)
  {
    v4 = (v2)(aBlock, 0);
    v23 = *(**(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning) + 136);
    atomic_fetch_add(v23(v4), 1uLL);
    CAImageQueueFlush();
    v5 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
    swift_beginAccess();
    v6 = *(v0 + v5);
    v9 = *(v6 + 64);
    v8 = v6 + 64;
    v7 = v9;
    v10 = 1 << *(*(v0 + v5) + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v7;
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    if (v12)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v8 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_12:
          v12 &= v12 - 1;
          CAImageQueueUnregisterBuffer();
        }

        while (v12);
        continue;
      }
    }

    CAImageQueueInvalidate();
    *(v0 + v5) = &_swiftEmptyDictionarySingleton;

    *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) = _swiftEmptyArrayStorage;

    v16 = v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
    swift_beginAccess();
    if (*v16)
    {
      sub_1000C4EE0(*v16);
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    swift_endAccess();
    v17 = *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1000C563C;
    *(v19 + 24) = v18;
    aBlock[4] = sub_1000C5638;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100071D78;
    aBlock[3] = &unk_1001C3A68;
    v20 = _Block_copy(aBlock);

    dispatch_sync(v17, v20);
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      atomic_fetch_add(v23(v22), 0xFFFFFFFFFFFFFFFFLL);
      return;
    }

LABEL_19:
    __break(1u);
  }

  else
  {
    (v2)(aBlock, 0);
  }
}

uint64_t sub_1000B8C2C()
{
  v0 = type metadata accessor for AccessibilityNotification.Announcement();
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v11 + 16))(v14, v16, v10);
  String.init(localized:)();
  AccessibilityNotification.Announcement.init(_:)();
  v17 = v20;
  _AccessibilityNotifications.post()();
  (*(v21 + 8))(v3, v17);
  return (*(v11 + 8))(v16, v10);
}

void sub_1000B8F84(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = Strong;
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12 || (v12, !a1))
    {
      swift_unknownObjectWeakAssign();
      sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
      *v7 = static OS_dispatch_queue.main.getter();
      (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
      v13 = _dispatchPreconditionTest(_:)();
      (*(v5 + 8))(v7, v4);
      if (v13)
      {
        v14 = *(a2 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        *(v15 + 24) = 1;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_1000BCCF8;
        *(v16 + 24) = v15;
        aBlock[4] = sub_10006180C;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100071D78;
        aBlock[3] = &unk_1001C3748;
        v17 = _Block_copy(aBlock);

        dispatch_sync(v14, v17);
        _Block_release(v17);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if ((v14 & 1) == 0)
        {
          static LoggingSignposter.previewLayerCALayerUpdated.getter();
          default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
          LoggingSignposter.emitEvent(_:shouldLog:)();
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  sub_10005BBC4(0, &qword_1001D9BE0, CALayer_ptr);
  v10 = a1;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1000B92F8()
{
  v1 = v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
  swift_beginAccess();
  if (*v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 8) == 0;
  }

  if (v2)
  {
LABEL_16:
    v12 = OBJC_IVAR____TtC6Tamale12PreviewLayer_logger;
    v13 = type metadata accessor for Logger();
    (*(*(v13 - 8) + 8))(v0 + v12, v13);
    v14 = OBJC_IVAR____TtC6Tamale12PreviewLayer_signposter;
    v15 = type metadata accessor for LoggingSignposter();
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    swift_unknownObjectWeakDestroy();

    if (*v1)
    {
      sub_1000C4EE0(*v1);
    }

    sub_100005640(*(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback), *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback + 8));
    sub_100005640(*(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback), *(v0 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback + 8));
    return v0;
  }

  else
  {
    v3 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        goto LABEL_16;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        do
        {
LABEL_13:
          v7 &= v7 - 1;
          result = CAImageQueueUnregisterBuffer();
        }

        while (v7);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B9594(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

char *sub_1000B96C4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000033A8(&qword_1001D9978, &qword_100178908);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_1000B96F4(double a1)
{
  v2 = v1;
  v5 = sub_1000B7E3C(v29);
  if (v6 || v4)
  {
    (v5)(v29, 0);
    v7 = OBJC_IVAR____TtC6Tamale12PreviewLayer_candidateDisplayIntervals;
    swift_beginAccess();
    v8 = *(v1 + v7);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_31:
      v8 = sub_1000C36E4(v8);
      *(v2 + v7) = v8;
    }

    Times = CAImageQueueGetTimes();
    *(v2 + v7) = v8;
    swift_endAccess();
    if ((Times & 0x8000000000000000) != 0)
    {
      __break(1u);

      __break(1u);
    }

    else
    {
      v11 = *(v8 + 2);
      if (v11 >= Times)
      {
        v11 = Times;
      }

      if (Times)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && *(*(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) + 16) >= 2uLL)
      {
        if (*&v8[8 * v11 + 24] <= a1)
        {
          sub_1000033A8(&qword_1001D7FE0, &qword_100175388);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_100171DA0;
          *(v26 + 56) = &type metadata for String;
          *(v26 + 32) = 0xD000000000000030;
          *(v26 + 40) = 0x800000010016DF40;

          print(_:separator:terminator:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v29[0] = *(v2 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes);
          swift_bridgeObjectRetain_n();

          sub_1000BCDBC(v29);

          v13 = *(v29[0] + 2);
          v29[1] = v29[0];
          v29[2] = v29[0] + 32;
          v29[3] = (v13 != 0);
          v29[4] = ((2 * v13) | 1);

          v14 = sub_1000B78F4(v29);

          v15 = 0;
          v16 = v14[2];
          v7 = OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval;
LABEL_15:
          v17 = 16 * v15 + 40;
          while (v16 != v15)
          {
            if (v15 >= v14[2])
            {
              __break(1u);
              goto LABEL_31;
            }

            ++v15;
            v18 = *(v14 + v17);
            v19 = v17 + 16;
            v20 = *(v2 + v7);
            v17 += 16;
            if (v20 + -0.001 < v18)
            {
              v17 = v19;
              if (v18 < v20 + 0.001)
              {
                v21 = *(v14 + v19 - 24);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_10005971C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                }

                v22 = _swiftEmptyArrayStorage[2];
                v23 = _swiftEmptyArrayStorage[3];
                v24 = v22 + 1;
                if (v22 >= v23 >> 1)
                {
                  v27 = _swiftEmptyArrayStorage[2];
                  v28 = v22 + 1;
                  sub_10005971C((v23 > 1), v22 + 1, 1);
                  v22 = v27;
                  v24 = v28;
                }

                _swiftEmptyArrayStorage[2] = v24;
                v25 = &_swiftEmptyArrayStorage[2 * v22];
                *(v25 + 4) = v21;
                v25[5] = v18;
                goto LABEL_15;
              }
            }
          }

          if (_swiftEmptyArrayStorage[2])
          {

            swift_unknownObjectRelease();
            sub_1000B9B3C(v2);
            return;
          }

          swift_unknownObjectRelease();
        }
      }

      sub_1000B9B3C(v2);
    }
  }

  else
  {
    (v5)(v29, 0);
  }
}

void sub_1000B9B3C(uint64_t a1)
{
  v2 = *(*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes) + 16);
  v3 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
  swift_beginAccess();
  v4 = v2 - *(*(a1 + v3) + 16);
  if (v4 >= 1)
  {
    sub_1000C41B0(0, v4);
  }
}

id sub_1000B9BB8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions:1];
  [a1 setContents:a2];

  return [v4 commit];
}

uint64_t sub_1000B9C44()
{
  v0 = type metadata accessor for Angle();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  CameraSourceFrameMetadata.rotationAngle.getter();
  static Angle.degrees(_:)();
  sub_1000C55A8(&qword_1001D9BF8, &type metadata accessor for Angle, &protocol conformance descriptor for Angle);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  if (v7)
  {
    v9 = 0;
LABEL_9:
    v8(v6, v0);
    return v9;
  }

  static Angle.degrees(_:)();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8(v4, v0);
  if (v10)
  {
    v9 = 4;
    goto LABEL_9;
  }

  static Angle.degrees(_:)();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8(v4, v0);
  if (v11)
  {
    v9 = 3;
    goto LABEL_9;
  }

  static Angle.degrees(_:)();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v8)(v4, v0);
  if (v12)
  {
    v9 = 7;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000B9EB0()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    result = [result newCommandQueue];
    if (result)
    {
      v1 = result;
      result = swift_unknownObjectRelease();
      qword_1001D96D0 = v1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000B9F04(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v68 = a2;
  v86 = a1;
  v69 = *v4;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v7 = __chkstk_darwin(v73);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a3;
  v67 = *(a3 - 8);
  __chkstk_darwin(v7);
  v65 = v9;
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for CameraImage();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000033A8(&unk_1001D9BE8, &unk_1001789B8);
  v79 = *(v80 - 8);
  v11 = __chkstk_darwin(v80);
  v76 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v12;
  __chkstk_darwin(v11);
  v78 = &v63 - v13;
  v85 = type metadata accessor for CameraSourceFrameMetadata();
  v14 = *(v85 - 8);
  __chkstk_darwin(v85);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v84 = static LoggingSignposter.previewLayerConsumeFrameInternal.getter();
  v25 = v24;
  static OSSignpostID.exclusive.getter();
  v66 = v4;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_10;
  }

  v63 = v16;
  if (v25)
  {
LABEL_5:
    if (HIDWORD(v84))
    {
      __break(1u);
    }

    else
    {
      if ((v84 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return;
      }

      if (v84 >> 16 <= 0x10)
      {
        v28 = &v89;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v28 = v84;
  if (!v84)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v30, v28, "", v29, 2u);

  v16 = v63;
LABEL_10:

  (*(v18 + 16))(v21, v23, v17);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v18 + 8))(v23, v17);
  v32 = v86;
  v33 = v87;
  dispatch thunk of CameraSourceFrame.metadata.getter();
  v34 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
  (*(v14 + 8))(v16, v85);
  if (v34)
  {
LABEL_11:

    return;
  }

  v35 = v32;
  v36 = v81;
  dispatch thunk of CameraSourceFrame.cameraImage.getter();
  v37 = v82;
  v38 = v83;
  if ((*(v82 + 88))(v36, v83) == enum case for CameraImage.pixelBuffer(_:))
  {
    v85 = v31;
    v39 = v35;
    (*(v37 + 96))(v36, v38);
    v40 = v79;
    v41 = *(v79 + 32);
    v42 = v78;
    v43 = v36;
    v44 = v80;
    v41(v78, v43, v80);
    SendableTransfer.wrappedValue.getter();
    v45 = aBlock[0];
    IOSurface = CVPixelBufferGetIOSurface(aBlock[0]);

    if (!IOSurface)
    {
      (*(v40 + 8))(v42, v44);
      goto LABEL_11;
    }

    v84 = IOSurface;
    if (!IOSurfaceLock(v84, 0, 0))
    {
      v82 = *(v66 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapesMutex);
      v83 = swift_allocObject();
      swift_weakInit();
      v47 = v68;
      v94 = *v68;
      v92 = *(v68 + 24);
      v93 = *(v68 + 40);
      (*(v40 + 16))(v76, v42, v44);
      v48 = v67;
      (*(v67 + 16))(v77, v39, v33);
      v49 = (*(v40 + 80) + 97) & ~*(v40 + 80);
      v50 = (v64 + *(v48 + 80) + v49) & ~*(v48 + 80);
      v51 = v33;
      v52 = (v65 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      v54 = v88;
      *(v53 + 16) = v51;
      *(v53 + 24) = v54;
      v55 = v84;
      v56 = v83;
      *(v53 + 32) = v84;
      *(v53 + 40) = v56;
      *(v53 + 48) = v85;
      v57 = v47[1];
      *(v53 + 56) = *v47;
      *(v53 + 72) = v57;
      *(v53 + 81) = *(v47 + 25);
      v41((v53 + v49), v76, v80);
      (*(v48 + 32))(v53 + v50, v77, v51);
      *(v53 + v52) = v69;
      aBlock[4] = sub_1000C5164;
      aBlock[5] = v53;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B5F04;
      aBlock[3] = &unk_1001C39F0;
      v58 = _Block_copy(aBlock);
      v59 = v55;

      sub_1000C5274(&v94, v90);
      sub_1000C52D0(&v92, v90);
      v60 = v70;
      static DispatchQoS.unspecified.getter();
      v90[0] = _swiftEmptyArrayStorage;
      sub_1000C55A8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
      sub_1000618FC(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0);
      v61 = v72;
      v62 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      (*(v74 + 8))(v61, v62);
      (*(v71 + 8))(v60, v73);
      (*(v79 + 8))(v78, v80);

      goto LABEL_11;
    }

    (*(v40 + 8))(v42, v44);
  }

  else
  {

    (*(v37 + 8))(v36, v38);
  }
}

uint64_t sub_1000BAA24(__IOSurface *a1, uint64_t a2, uint64_t a3, __n128 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a8;
  v54 = a6;
  v52.n128_u64[0] = a5;
  v12 = type metadata accessor for Angle();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Corners();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CameraSourceFrameMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (qword_1001D31B8 != -1)
    {
      swift_once();
    }

    v22 = [qword_1001D96D0 commandBuffer];
    if (v22)
    {
      v23 = v22;
      v45 = v17;
      v44 = v12;
      v46 = a3;
      v43 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer;
      *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer) = v22;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel) = a4[1].n128_u8[0];
      v57[0] = *a4;
      v24 = *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState);
      v25 = *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8);
      *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState) = v57[0];
      sub_1000C5274(v57, v56);
      sub_100092274(v24, v25);
      v47 = a1;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v27 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_textures;
      swift_beginAccess();
      v28 = *(v21 + v27);
      if (*(v28 + 16) && (v29 = sub_100096048(BaseAddress), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);
        swift_unknownObjectRetain();
      }

      else
      {
        v32 = *(v21 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
        sub_1000033A8(&unk_1001D9BE8, &unk_1001789B8);
        SendableTransfer.wrappedValue.getter();
        v33 = v55;
        v31 = [v32 bindPixelBufferAsTexture:v55];
      }

      swift_beginAccess();
      v34 = swift_unknownObjectRetain();
      sub_1000B7D7C(v34, BaseAddress);
      swift_endAccess();
      dispatch thunk of CameraSourceFrame.metadata.getter();
      CameraSourceFrameMetadata.safeArea.getter();
      v36 = v35;
      (*(v45 + 8))(v19, v16);
      if (v31)
      {
        CGRect.corners.getter();
        v37 = static Color.purple.getter();
        v52 = sub_1000BC768(v37);

        v38 = Corners.clockwiseLoop.getter();
        sub_1000BB7B8(v38, v31);

        (*(v48 + 8))(v15, v49);
        v39 = v50;
        CameraSourceFrame.rotationAngle.getter();
        sub_1000BB230(v31, v39);
        v40 = (*(v51 + 8))(v39, v44);
        sub_1000BB9C0(v31, v40, v36);
        [v23 commit];
        swift_unknownObjectRelease();
        *(v21 + v43) = 0;
        swift_unknownObjectRelease();
      }

      sub_1000BAF88(v21, v46);

      swift_unknownObjectRelease();
      a1 = v47;
    }

    else
    {
    }
  }

  return IOSurfaceUnlock(a1, 0, 0);
}

uint64_t sub_1000BAF88(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for OSSignpostError();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = static LoggingSignposter.previewLayerConsumeFrameInternal.getter();
  v11 = v10;
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v11 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v14 = v20;
      if ((*(v20 + 88))(v4, v2) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v4, v2);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v19, v17, v9, v15, v16, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (HIDWORD(v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v21;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_1000BB230(void *a1, unint64_t a2)
{
  v62.n128_u64[0] = a2;
  v59 = a1;
  v3 = type metadata accessor for Corners();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Angle();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleSelector.Configuration.RankingAlgorithmPreset();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BundleSelector.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BundleRankerConfiguration();
  v54 = *(v16 - 8);
  v55 = v16;
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
  BundleSelector.Configuration.streamingRankingAlgorithm.getter();
  v19 = v12;
  v20 = v59;
  (*(v13 + 8))(v15, v19);
  v21 = v58;
  BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter();
  (*(v9 + 8))(v11, v8);
  [v20 width];
  [v20 height];
  BundleRankerConfiguration.regionOfInterestSize.getter();
  BundleRankerConfiguration.regionOfInterestCenter.getter();
  CGRect.init(centeredAt:size:)();
  static Angle.degrees(_:)();
  CGRect.normalizedRotateToOrientation(_:sourceOrientation:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v60 + 8))(v7, v61);
  CGRect.corners.getter();
  v30 = *(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
  LODWORD(v31) = 2.0;
  [v30 setStrokeWidth:v31];
  LODWORD(v32) = 0.75;
  [v30 setAlpha:v32];
  Corners.topLeft.getter();
  v34 = v33;
  v36 = v35;
  Corners.bottomRight.getter();
  v38 = v37;
  v40 = v39;
  v41 = static Color.green.getter();
  v62 = sub_1000BC768(v41);

  [v30 addLineFrom:v34 to:v36 color:{v38, v40, v62.n128_f64[0]}];
  Corners.topRight.getter();
  v43 = v42;
  v45 = v44;
  Corners.bottomLeft.getter();
  v47 = v46;
  v49 = v48;
  v50 = static Color.green.getter();
  v62 = sub_1000BC768(v50);

  result = [v30 addLineFrom:v43 to:v45 color:{v47, v49, v62.n128_f64[0]}];
  v52 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer;
  if (*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
    [v30 drawLinesOnTexture:v20 commandBuffer:?];
    v53 = static Color.green.getter();
    v62 = sub_1000BC768(v53);

    result = [v30 addRectangle:v23 color:{v25, v27, v29, v62.n128_f64[0]}];
    if (*(v2 + v52))
    {
      [v30 drawRectanglesOnTexture:v20 commandBuffer:?];
      (*(v56 + 8))(v21, v57);
      return (*(v54 + 8))(v18, v55);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

float64x2_t *sub_1000BB7B8(float64x2_t *result, uint64_t a2)
{
  v3 = result[1].f64[0];
  if (v3 == 0.0)
  {
    return result;
  }

  v4 = result;
  v5 = result[2].f64[0];
  v6 = result[2].f64[1];
  if (v5 >= 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = result[2].f64[0];
  }

  v8 = v5 < 1.0;
  v9 = fmin(v6, 1.0);
  v10 = 0.0;
  if (v9 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9;
  }

  v12 = (*&result[2].f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL && v8;
  if (v7 < 0.0)
  {
    v12 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v10 <= -1.0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= 4294967300.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v13 = v9 >= 0.0;
  if (v6 >= 1.0 || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  if (v12 || v13)
  {
    goto LABEL_35;
  }

  if (v11 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >= 4294967300.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes;
  v17 = v10;
  v18 = v11;
  v19 = v11;
  LODWORD(v20) = v10;
  HIDWORD(v20) = v19;
  result = [*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes) setInitialPosition:v20];
  v21 = *&v3 - 1;
  if (*&v3 == 1)
  {
    return result;
  }

  v22 = v4 + 3;
  __asm { FMOV            V0.2D, #1.0 }

  v33 = _Q0;
  v28 = v18;
  v29 = v17;
  do
  {
    v30 = *v22++;
    v31 = vminnmq_f64(v30, v33);
    v34 = vandq_s8(v31, vcgezq_f64(v31));
    result = [*(v2 + v16) addLineFrom:v29 to:v28 color:*&v33];
    v28 = *&v34.i64[1];
    v29 = *v34.i64;
    --v21;
  }

  while (v21);
  if (!*(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v32 = *(v2 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);

  return [v32 drawLinesOnTexture:a2 commandBuffer:*&v34];
}

void sub_1000BB9C0(void *a1, double a2, double a3)
{
  v4 = v3;
  v103 = type metadata accessor for SPRTTrigger.State();
  v7 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Corners();
  v118.n128_u64[0] = *(v9 - 8);
  __chkstk_darwin(v9);
  v112 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for CVDetection();
  v116 = *(v111 - 8);
  __chkstk_darwin(v111);
  v114 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CVTrackSnapshot();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v113 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes);
  LODWORD(v16) = 4.0;
  [v15 setStrokeWidth:v16];
  LODWORD(v17) = 1.0;
  [v15 setAlpha:v17];
  v18 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock;
  v19 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock);

  os_unfair_lock_lock(v19 + 4);

  v20 = *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksInternal);
  v21 = *(v4 + v18);

  os_unfair_lock_unlock(v21 + 4);

  if (*(v20 + 16))
  {
    v117 = *(v20 + 16);
    v98 = a3;
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v97 = v20;
    v23 = v20 + v22;
    v115 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_colors;
    swift_beginAccess();
    v24 = v23;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v110 = v26;
    v106 = *(v25 + 56);
    v109 = (v118.n128_u64[0] + 8);
    v100 = (v7 + 8);
    v105 = (v116 + 8);
    v104 = (v25 - 8);
    v99 = xmmword_100171DA0;
    v107 = v25;
    v27 = v113;
    v101 = v9;
    v108 = v12;
    while (1)
    {
      v116 = v24;
      v110(v27);
      CVTrackSnapshot.latestEstimate.getter();
      v28 = CVDetection.backgroundColor(isEnabled:)();
      v29 = *(v4 + v115);
      if (*(v29 + 16))
      {

        v30 = sub_10009608C(v28);
        if (v31)
        {
          v118 = *(*(v29 + 56) + 16 * v30);

          goto LABEL_9;
        }
      }

      v32.n128_f64[0] = sub_1000BC858(v28);
      v118 = v32;
      v33 = v115;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = *(v4 + v33);
      *(v4 + v33) = 0x8000000000000000;
      sub_1000C1484(v28, isUniquelyReferenced_nonNull_native, v118);
      *(v4 + v33) = v119;
      swift_endAccess();

LABEL_9:
      v35 = v112;
      CVDetection.corners.getter();
      Corners.bounds.getter();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = *v109;
      (*v109)(v35, v9);
      CVDetection.corners.getter();
      v45 = Corners.clockwiseLoop.getter();
      v44(v35, v9);
      sub_1000BB7B8(v45, a1);

      v46 = v39 + v43;
      if (v37 <= 0.9)
      {
        v47 = v37;
      }

      else
      {
        v47 = 0.9;
      }

      if (v37 > 0.0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0.0;
      }

      v49 = v48 * [a1 width] + 15.0;
      v50 = 1.0;
      if (v46 <= 1.0)
      {
        v50 = v46;
      }

      if (v46 > 0.1)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0.1;
      }

      v52 = [a1 height];
      if (v49 <= -1.0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v49 >= 4294967300.0)
      {
        goto LABEL_64;
      }

      v53 = v51 * v52 + -75.0 + -15.0;
      v54 = COERCE__INT64(fabs(v53)) > 0x7FEFFFFFFFFFFFFFLL;
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v54)
      {
        goto LABEL_65;
      }

      if (v53 <= -1.0)
      {
        goto LABEL_66;
      }

      if (v53 >= 4294967300.0)
      {
        goto LABEL_67;
      }

      v55 = v53;
      LODWORD(v56) = v49;
      HIDWORD(v56) = v55;
      [v15 setInitialPosition:v56];
      if (v41 > 0.1 && v43 > 0.1)
      {
        v121[0] = 40;
        v121[1] = 0xE100000000000000;
        sub_1000033A8(&qword_1001D58A0, &qword_1001771C0);
        v57 = swift_allocObject();
        *(v57 + 16) = v99;
        CVTrackSnapshot.score.getter();
        *(v57 + 56) = &type metadata for Float;
        *(v57 + 64) = &protocol witness table for Float;
        *(v57 + 32) = v58;
        v59._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v59);

        v60._countAndFlagsBits = 32;
        v60._object = 0xE100000000000000;
        String.append(_:)(v60);
        v61 = v102;
        CVTrackSnapshot.lifeCycleState.getter();
        sub_1000C55A8(&qword_1001D9C20, &type metadata accessor for SPRTTrigger.State, &protocol conformance descriptor for SPRTTrigger.State);
        v62 = v103;
        v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v63);

        (*v100)(v61, v62);
        v64._countAndFlagsBits = 32;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        v65 = CVDetection.label.getter();
        sub_1000C3828(10, v65, v66);

        v67 = static String._fromSubstring(_:)();
        v69 = v68;
        v9 = v101;

        v70._countAndFlagsBits = v67;
        v70._object = v69;
        String.append(_:)(v70);

        v71 = String._bridgeToObjectiveC()();

        LODWORD(v72) = 1.0;
        [v15 addTextLine:v71 color:v118.n128_f64[0] scale:v72];

        [v15 drawEnqueuedTextOnTexture:a1];
      }

      (*v105)(v114, v111);
      v27 = v113;
      (*v104)(v113, v108);
      v24 = v116 + v106;
      if (!--v117)
      {

        a3 = v98;
        goto LABEL_31;
      }
    }
  }

LABEL_31:
  if (!*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer))
  {
    goto LABEL_75;
  }

  [v15 drawRectanglesOnTexture:a1 commandBuffer:?];
  v73 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel;
  if (*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel))
  {
    v74 = 0xD000000000000010;
    v121[0] = 0;
    v121[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v121[0] = 0xD000000000000028;
    v121[1] = 0x800000010016DF80;
    if (*(v4 + v73) > 1u)
    {
      if (*(v4 + v73) == 2)
      {
        v75 = 0x800000010016DFD0;
      }

      else
      {
        v75 = 0x800000010016DFB0;
        v74 = 0xD000000000000013;
      }
    }

    else if (*(v4 + v73))
    {
      v75 = 0xED00002972696166;
      v74 = 0x2820797473616F74;
    }

    else
    {
      v75 = 0xEF296C616E696D6FLL;
      v74 = 0x6E2820796D6C6162;
    }

    v76._countAndFlagsBits = v74;
    v76._object = v75;
    String.append(_:)(v76);

    v77 = [a1 height] * a3;
    if (COERCE__INT64(fabs(v77)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_68;
    }

    if (v77 <= -1.0)
    {
LABEL_69:
      __break(1u);
    }

    else if (v77 < 4294967300.0)
    {
      v78 = v77;
      LODWORD(v79) = 250;
      HIDWORD(v79) = v78;
      [v15 setInitialPosition:v79];
      v80 = String._bridgeToObjectiveC()();

      v81 = static Color.red.getter();
      v118 = sub_1000BC768(v81);

      LODWORD(v82) = 0.75;
      [v15 addTextLine:v80 color:v118.n128_f64[0] scale:v82];

      [v15 drawEnqueuedTextOnTexture:a1];
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_44:
  v83 = (v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState);
  if ((*(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8) - 1) < 2)
  {
    return;
  }

  v121[0] = 0;
  v121[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v121, "Motion State: ");
  HIBYTE(v121[1]) = -18;
  v84 = v83[1];
  if (v84 <= 1)
  {
    if (!v84)
    {
      v85 = 0xEC000000676E697ALL;
      v86 = 0x696C616974696E69;
      goto LABEL_57;
    }

    if (v84 == 1)
    {
      v85 = 0xE500000000000000;
      v86 = 0x6465786966;
      goto LABEL_57;
    }
  }

  else
  {
    switch(v84)
    {
      case 2:
        v85 = 0xE600000000000000;
        v86 = 0x796461657473;
        goto LABEL_57;
      case 3:
        v85 = 0xEA00000000006E6FLL;
        v86 = 0x69746F6D20776F6CLL;
        goto LABEL_57;
      case 4:
        v85 = 0xEB000000006E6F69;
        v86 = 0x746F6D2068676968;
        goto LABEL_57;
    }
  }

  v87 = *v83;
  v119 = 0x206E776F6E6B6E75;
  v120 = 0xE900000000000028;
  sub_100092260(v87, v84);
  v88._countAndFlagsBits = v87;
  v88._object = v84;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 41;
  v89._object = 0xE100000000000000;
  String.append(_:)(v89);
  sub_100092274(v87, v84);
  v86 = v119;
  v85 = v120;
LABEL_57:
  v90 = v85;
  String.append(_:)(*&v86);

  v91 = [a1 height] * a3;
  if (COERCE__INT64(fabs(v91)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v91 <= -1.0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v91 >= 4294967300.0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v92 = v91 + 150;
  if (v91 >= 0xFFFFFF6A)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  LODWORD(v93) = 250;
  HIDWORD(v93) = v92;
  [v15 setInitialPosition:v93];
  v94 = String._bridgeToObjectiveC()();

  v95 = static Color.yellow.getter();
  v118 = sub_1000BC768(v95);

  LODWORD(v96) = 0.75;
  [v15 addTextLine:v94 color:v118.n128_f64[0] scale:v96];

  [v15 drawEnqueuedTextOnTexture:a1];
}

__n128 sub_1000BC768(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_colors;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_10009608C(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v8.n128_f64[0] = sub_1000BC858(a1);
    v11 = v8;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    sub_1000C1484(a1, isUniquelyReferenced_nonNull_native, v11);
    *(v2 + v4) = v12;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v5 + 56) + 16 * v6);

  return v11;
}

double sub_1000BC858(uint64_t a1)
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0;
  sub_10005BBC4(0, &unk_1001D9C10, UIColor_ptr);

  v1 = UIColor.init(_:)();
  v2 = [v1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];

  result = 0.0;
  if (v2)
  {
    *&v4 = v9;
    *&v5 = v8;
    return COERCE_DOUBLE(__PAIR64__(v5, v4));
  }

  return result;
}

uint64_t sub_1000BC930()
{
  sub_10002005C(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_configuration);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_signposter;
  v2 = type metadata accessor for OSSignposter();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100092274(*(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState), *(v0 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState + 8));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000BCA3C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BCAC0(uint64_t a1)
{
  result = type metadata accessor for CameraControllerConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000BCC04(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1000BCC18(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1000BCC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 12))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1000BCC70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1000BCCC0()
{

  return swift_deallocObject();
}

double sub_1000BCD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000BCD28@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000BCDBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C3734(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_1000BCEF0(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1000BCEF0(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1000BD6CC(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1000BD44C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100094DE4(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_100094DE4((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1000BD44C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1000BD44C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}