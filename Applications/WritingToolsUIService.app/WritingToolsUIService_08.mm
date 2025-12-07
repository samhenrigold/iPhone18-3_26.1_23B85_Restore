uint64_t sub_1000E960C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FeedbackView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20[-v11];
  sub_1000081F8(a1 + 160, &v21, &unk_10025D568, &unk_1001D23B0);
  if (v22)
  {
    sub_100008198(&v21, v23);
    if (*(a1 + 16))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001CF9E0;
        *(inited + 32) = String._bridgeToObjectiveC()();
        *(inited + 40) = String._bridgeToObjectiveC()();
        *(inited + 48) = String._bridgeToObjectiveC()();
        *(inited + 56) = String._bridgeToObjectiveC()();
        v13 = sub_100005794(inited);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
      }
    }

    else
    {
      v13 = 0;
    }

    sub_100027874(v23, v23[3]);
    sub_100151D20(*a2, v13);

    return sub_10000F4B4(v23);
  }

  else
  {
    sub_10000F500(&v21, &unk_10025D568, &unk_1001D23B0);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_1000F3AC4(a1, &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FeedbackView);
    type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_1000F3B2C(&v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for FeedbackView);
    sub_10015C9C8(0, 0, v12, a4, v18);
  }
}

uint64_t sub_1000E994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1000E9A40, v7, v6);
}

uint64_t sub_1000E9A40()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Thumbs Up button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.thumbsUp(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E9BC0;
  v9 = v0[5];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000E9BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1000F4AD0, v6, v5);
}

uint64_t sub_1000E9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1000E9E5C, v7, v6);
}

uint64_t sub_1000E9E5C()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Thumbs Down button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.thumbsDown(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E9BC0;
  v9 = v0[5];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000EA004@<X0>(unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v5 = type metadata accessor for IconOnlyLabelStyle();
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v19 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKSEvaluation.Action();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v20 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v18 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for FBKEvaluationController();
  (*(v9 + 104))(v11, *a3, v8);
  static FBKEvaluationController.systemImageName(for:hasResponse:)();
  (*(v9 + 8))(v11, v8);
  Label<>.init(_:systemImage:)();
  v14 = v19;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v15 = v18;
  v16 = v21;
  View.labelStyle<A>(_:)();
  (*(v22 + 8))(v14, v16);
  return (*(v20 + 8))(v13, v15);
}

uint64_t sub_1000EA330@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v20 = a1;
  v6 = sub_10000341C(&qword_100261FC0, &qword_1001D8610);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_10000341C(&qword_100261FC8, &qword_1001D8618);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  sub_1000E8700(a2, v4, v8);
  v15 = static Color.blue.getter();
  sub_1000E4100(v15, &qword_100261FC0, &qword_1001D8610, &qword_100261FC8, &qword_1001D8618, v14);

  sub_10000F500(v8, &qword_100261FC0, &qword_1001D8610);
  sub_1000081F8(v14, v12, &qword_100261FC8, &qword_1001D8618);
  *a3 = 0;
  *(a3 + 8) = 0;
  LOBYTE(v4) = (v20 & 1) == 0;
  *(a3 + 9) = v4;
  v16 = sub_10000341C(&qword_100261FD0, &qword_1001D8620);
  sub_1000081F8(v12, a3 + *(v16 + 48), &qword_100261FC8, &qword_1001D8618);
  v17 = a3 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 9) = v4;
  sub_10000F500(v14, &qword_100261FC8, &qword_1001D8618);
  return sub_10000F500(v12, &qword_100261FC8, &qword_1001D8618);
}

void sub_1000EA534()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSEvaluation.Subject();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FeedbackView(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000F34C(v12, qword_100276F80);
  sub_1000F3AC4(v0, v11, type metadata accessor for FeedbackView);
  sub_1000F3AC4(v0, v9, type metadata accessor for FeedbackView);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v29[1] = v13;
    v30 = v3;
    v31 = v2;
    v16 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v16 = 136643075;
    if (*(v11 + 6))
    {
      v17 = *(v11 + 5);
      v18 = *(v11 + 6);
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    sub_1000F3B94(v11, type metadata accessor for FeedbackView);
    v19 = sub_10002510C(v17, v18, v34);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2085;
    if (*(v9 + 10))
    {
      v20 = *(v9 + 9);
      v21 = *(v9 + 10);
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    sub_1000F3B94(v9, type metadata accessor for FeedbackView);
    v22 = sub_10002510C(v20, v21, v34);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Feedback View with input string: <%{sensitive}s>, output string: <%{sensitive}s>", v16, 0x16u);
    swift_arrayDestroy();

    v3 = v30;
    v2 = v31;
  }

  else
  {

    sub_1000F3B94(v9, type metadata accessor for FeedbackView);
    sub_1000F3B94(v11, type metadata accessor for FeedbackView);
  }

  sub_1000081F8(v1 + 160, &v32, &unk_10025D568, &unk_1001D23B0);
  if (v33)
  {
    sub_100008198(&v32, v34);
    sub_100027874(v34, v34[3]);
    v23 = String._bridgeToObjectiveC()();
    sub_100151D20(v23, 0);

    sub_10000F4B4(v34);
    return;
  }

  sub_10000F500(&v32, &unk_10025D568, &unk_1001D23B0);
  sub_1000E4F4C(v5);
  v24 = (*(v3 + 88))(v5, v2);
  if (v24 != enum case for FBKSEvaluation.Subject.id(_:))
  {
    if (v24 == enum case for FBKSEvaluation.Subject.interaction(_:))
    {
      (*(v3 + 96))(v5, v2);
      v25 = *v5;
      dispatch thunk of FBKSInteraction.presented(_:)();

      return;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to mark the interaction - unknown interaction case", v28, 2u);
    }
  }

  (*(v3 + 8))(v5, v2);
}

void sub_1000EAA38(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F34C(v1, qword_100276F80);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to mark the interaction as presented: %@", v3, 0xCu);
      sub_10000F500(v4, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }
  }
}

uint64_t sub_1000EABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for FeedbackView(0);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v31 = v4;
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000341C(&unk_1002637B0, &qword_1001D8498);
  __chkstk_darwin(v28);
  v7 = &v28 - v6;
  v8 = sub_10000341C(&qword_100261DE0, &qword_1001D84A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v30 = sub_10000341C(&qword_100261DE8, &qword_1001D84A8);
  v12 = __chkstk_darwin(v30);
  v14 = &v28 - v13;
  if (*(v1 + 155) != 1 || (!*(v1 + 156) ? (v15 = 0.0) : (v15 = 1.0), v12 = sub_1000EB188(), (v12 & 1) == 0))
  {
    v15 = 1.0;
  }

  __chkstk_darwin(v12);
  *(&v28 - 2) = v1;
  sub_10000341C(&qword_100261DF0, &qword_1001D84B0);
  sub_1000EF3AC();
  Section<>.init(content:)();
  v16 = enum case for DynamicTypeSize.accessibility2(_:);
  v17 = type metadata accessor for DynamicTypeSize();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  sub_1000F48D8(&qword_100261E90, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000EF7A4();
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v7, &unk_1002637B0, &qword_1001D8498);
    (*(v9 + 8))(v11, v8);
    sub_1000F3AC4(v2, v5, type metadata accessor for FeedbackView);
    v19 = *(v29 + 80);
    v20 = swift_allocObject();
    sub_1000F3B2C(v5, v20 + ((v19 + 16) & ~v19), type metadata accessor for FeedbackView);
    v21 = &v14[*(sub_10000341C(&qword_100261EA0, &qword_1001D8508) + 36)];
    *v21 = sub_1000EF838;
    v21[1] = v20;
    v21[2] = 0;
    v21[3] = 0;
    v22 = *(v2 + 153);
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    v25 = &v14[*(sub_10000341C(&qword_100261EA8, &qword_1001D8540) + 36)];
    *v25 = KeyPath;
    v25[1] = sub_10002AAC0;
    v25[2] = v24;
    v26 = *(v2 + 216);
    v34 = *(v2 + 208);
    v35 = v26;
    sub_10000341C(&qword_100261EB0, &unk_1001D8548);
    State.wrappedValue.getter();
    *&v14[*(v30 + 36)] = v33;
    v34 = v15;
    sub_1000F3AC4(v2, v5, type metadata accessor for FeedbackView);
    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    sub_1000F3B2C(v5, v27 + ((v19 + 24) & ~v19), type metadata accessor for FeedbackView);
    sub_1000F37E0();
    View.onChange<A>(of:initial:_:)();

    return sub_10000F500(v14, &qword_100261DE8, &qword_1001D84A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EB188()
{
  v0 = type metadata accessor for AccessibilityTechnologies();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v16 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = v16 - v9;
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  sub_1000EF198((v16 - v11));
  sub_10000341C(&qword_100261ED0, &qword_1001D8558);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001D0580;
  static AccessibilityTechnologies.voiceOver.getter();
  static AccessibilityTechnologies.voiceControl.getter();
  static AccessibilityTechnologies.switchControl.getter();
  static AccessibilityTechnologies.fullKeyboardAccess.getter();
  v16[1] = v13;
  sub_1000F48D8(&qword_100261ED8, &type metadata accessor for AccessibilityTechnologies, &protocol conformance descriptor for AccessibilityTechnologies);
  sub_10000341C(&qword_100261EE0, &qword_1001D8560);
  sub_100007120(&qword_100261EE8, &qword_100261EE0, &qword_1001D8560, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 16))(v4, v12, v0);
  dispatch thunk of SetAlgebra.intersection(_:)();
  LOBYTE(v13) = dispatch thunk of SetAlgebra.isEmpty.getter();
  v14 = *(v1 + 8);
  v14(v7, v0);
  v14(v10, v0);
  v14(v12, v0);
  return v13 & 1;
}

uint64_t sub_1000EB45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = sub_10000341C(&qword_100261E88, &unk_1001D84F8);
  __chkstk_darwin(v63);
  v4 = &v49 - v3;
  v51 = sub_10000341C(&qword_100261E78, &qword_1001D84F0);
  __chkstk_darwin(v51);
  v49 = (&v49 - v5);
  v50 = sub_10000341C(&qword_100261F20, &qword_1001D8598);
  __chkstk_darwin(v50);
  v7 = &v49 - v6;
  v57 = sub_10000341C(&qword_100261E68, &qword_1001D84E8);
  __chkstk_darwin(v57);
  v52 = &v49 - v8;
  v54 = sub_10000341C(&qword_100261E48, &qword_1001D84D8);
  __chkstk_darwin(v54);
  v10 = &v49 - v9;
  v59 = sub_10000341C(&qword_100261F28, &qword_1001D85A0);
  __chkstk_darwin(v59);
  v61 = &v49 - v11;
  v55 = sub_10000341C(&qword_100261F30, &qword_1001D85A8);
  __chkstk_darwin(v55);
  v53 = &v49 - v12;
  v13 = sub_10000341C(&qword_100261F38, &qword_1001D85B0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v56 = sub_10000341C(&qword_100261E18, &qword_1001D84C0);
  __chkstk_darwin(v56);
  v17 = &v49 - v16;
  v60 = sub_10000341C(&qword_100261E08, &qword_1001D84B8);
  __chkstk_darwin(v60);
  v58 = &v49 - v18;
  v19 = sub_10000341C(&qword_100261E28, &qword_1001D84C8);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = a1;
  v23 = *(a1 + 154);
  if (v23 <= 1)
  {
    if (*(a1 + 154))
    {
      *v10 = static VerticalAlignment.center.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v44 = sub_10000341C(&qword_100261F50, &qword_1001D85C8);
      sub_1000EC550(a1, &v10[*(v44 + 44)]);
      [objc_opt_self() feedbackViewHeight];
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)(&v64);
      v45 = &v10[*(v54 + 36)];
      v46 = v65;
      *v45 = v64;
      *(v45 + 1) = v46;
      *(v45 + 2) = v66;
      v34 = &qword_100261E48;
      v28 = &qword_1001D84D8;
      sub_1000081F8(v10, v15, &qword_100261E48, &qword_1001D84D8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF57C();
      sub_1000EF634();
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v17, v53, &qword_100261E18, &qword_1001D84C0);
      swift_storeEnumTagMultiPayload();
      sub_1000EF4F0();
      sub_1000EF6EC();
      v47 = v58;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v17, &qword_100261E18, &qword_1001D84C0);
      sub_1000081F8(v47, v61, &qword_100261E08, &qword_1001D84B8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF464();
      sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v47, &qword_100261E08, &qword_1001D84B8);
      v31 = v10;
    }

    else
    {
      *v21 = static HorizontalAlignment.center.getter();
      *(v21 + 1) = 0;
      v21[16] = 1;
      v32 = sub_10000341C(&qword_100261F58, &qword_1001D85D0);
      sub_1000EC0E8(a1, &v21[*(v32 + 44)]);
      v33 = &v21[*(v19 + 36)];
      *v33 = sub_1000EC468;
      v33[1] = 0;
      v33[2] = 0;
      v33[3] = 0;
      v34 = &qword_100261E28;
      v28 = &qword_1001D84C8;
      sub_1000081F8(v21, v15, &qword_100261E28, &qword_1001D84C8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF57C();
      sub_1000EF634();
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v17, v53, &qword_100261E18, &qword_1001D84C0);
      swift_storeEnumTagMultiPayload();
      sub_1000EF4F0();
      sub_1000EF6EC();
      v35 = v58;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v17, &qword_100261E18, &qword_1001D84C0);
      sub_1000081F8(v35, v61, &qword_100261E08, &qword_1001D84B8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF464();
      sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v35, &qword_100261E08, &qword_1001D84B8);
      v31 = v21;
    }

    v41 = v34;
    goto LABEL_12;
  }

  if (v23 == 2)
  {
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v36 = sub_10000341C(&qword_100261F50, &qword_1001D85C8);
    sub_1000EC550(a1, &v10[*(v36 + 44)]);
    [objc_opt_self() feedbackViewHeight];
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v64);
    v37 = &v10[*(v54 + 36)];
    v38 = v65;
    *v37 = v64;
    *(v37 + 1) = v38;
    *(v37 + 2) = v66;
    v27 = &qword_100261E48;
    v28 = &qword_1001D84D8;
    sub_1000081F8(v10, v7, &qword_100261E48, &qword_1001D84D8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0, &protocol conformance descriptor for HStack<A>);
    v39 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v39, v53, &qword_100261E68, &qword_1001D84E8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF4F0();
    sub_1000EF6EC();
    v40 = v58;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v39, &qword_100261E68, &qword_1001D84E8);
    sub_1000081F8(v40, v61, &qword_100261E08, &qword_1001D84B8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v40, &qword_100261E08, &qword_1001D84B8);
    v31 = v10;
    goto LABEL_8;
  }

  if (v23 == 3)
  {
    v24 = static VerticalAlignment.center.getter();
    v25 = v49;
    *v49 = v24;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = sub_10000341C(&qword_100261F48, &qword_1001D85C0);
    sub_1000ECA08(v22, v25 + *(v26 + 44));
    v27 = &qword_100261E78;
    v28 = &qword_1001D84F0;
    sub_1000081F8(v25, v7, &qword_100261E78, &qword_1001D84F0);
    swift_storeEnumTagMultiPayload();
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0, &protocol conformance descriptor for HStack<A>);
    v29 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v29, v53, &qword_100261E68, &qword_1001D84E8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF4F0();
    sub_1000EF6EC();
    v30 = v58;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v29, &qword_100261E68, &qword_1001D84E8);
    sub_1000081F8(v30, v61, &qword_100261E08, &qword_1001D84B8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v30, &qword_100261E08, &qword_1001D84B8);
    v31 = v25;
LABEL_8:
    v41 = v27;
LABEL_12:
    v43 = v28;
    return sub_10000F500(v31, v41, v43);
  }

  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v42 = sub_10000341C(&qword_100261F40, &qword_1001D85B8);
  sub_1000ECE80(a1, &v4[*(v42 + 44)]);
  sub_1000081F8(v4, v61, &qword_100261E88, &unk_1001D84F8);
  swift_storeEnumTagMultiPayload();
  sub_1000EF464();
  sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
  _ConditionalContent<>.init(storage:)();
  v31 = v4;
  v41 = &qword_100261E88;
  v43 = &unk_1001D84F8;
  return sub_10000F500(v31, v41, v43);
}

uint64_t sub_1000EC0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_10000341C(&qword_100261F68, &qword_1001D85E0);
  __chkstk_darwin(v5);
  v7 = (&v18 - v6);
  v8 = type metadata accessor for IconOnlyLabelStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_100261F70, &qword_1001D85E8);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v21[3] = &type metadata for WritingTools, v21[4] = sub_10002AC88(), LOBYTE(v21[0]) = 14, v15 = isFeatureEnabled(_:)(), sub_10000F4B4(v21), (v15 & 1) == 0))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v17 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(0, v19, &v4[*(v17 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8, &protocol conformance descriptor for HStack<A>);
    *v7 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    IconOnlyLabelStyle.init()();
    sub_1000E7628(v11, v14);
    (*(v9 + 8))(v11, v8);
    sub_1000081F8(v14, v7, &qword_100261F70, &qword_1001D85E8);
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v14, &qword_100261F70, &qword_1001D85E8);
  }
}

void sub_1000EC468()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Report a Concern button - horizontal", v2, 2u);
  }
}

uint64_t sub_1000EC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v24 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  __chkstk_darwin(v24);
  v3 = &v23 - v2;
  v4 = sub_10000341C(&qword_100262048, &qword_1001D86C0);
  __chkstk_darwin(v4);
  v6 = (&v23 - v5);
  v26 = sub_10000341C(&qword_100262050, &qword_1001D86C8);
  __chkstk_darwin(v26);
  v8 = &v23 - v7;
  v9 = type metadata accessor for TitleAndIconLabelStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_100262058, &qword_1001D86D0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v28[3] = &type metadata for WritingTools, v28[4] = sub_10002AC88(), LOBYTE(v28[0]) = 14, v19 = isFeatureEnabled(_:)(), sub_10000F4B4(v28), (v19 & 1) == 0))
  {
    *v3 = static VerticalAlignment.center.getter();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v22 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(1, v25, &v3[*(v22 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8, &protocol conformance descriptor for HStack<A>);
    *v6 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100262068, &qword_100262050, &qword_1001D86C8, &protocol conformance descriptor for TupleView<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    TitleAndIconLabelStyle.init()();
    sub_1000E7B24(v12, v18);
    (*(v10 + 8))(v12, v9);
    sub_1000081F8(v18, v16, &qword_100262058, &qword_1001D86D0);
    *v8 = 0;
    v8[8] = 1;
    v20 = sub_10000341C(&qword_100262060, &qword_1001D86D8);
    sub_1000081F8(v16, &v8[*(v20 + 48)], &qword_100262058, &qword_1001D86D0);
    sub_10000F500(v16, &qword_100262058, &qword_1001D86D0);
    sub_1000081F8(v8, v6, &qword_100262050, &qword_1001D86C8);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100262068, &qword_100262050, &qword_1001D86C8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v8, &qword_100262050, &qword_1001D86C8);
    return sub_10000F500(v18, &qword_100262058, &qword_1001D86D0);
  }
}

uint64_t sub_1000ECA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v24 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  __chkstk_darwin(v24);
  v4 = &v23 - v3;
  v27 = sub_10000341C(&qword_100261F68, &qword_1001D85E0);
  __chkstk_darwin(v27);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for IconOnlyLabelStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000341C(&qword_100261F70, &qword_1001D85E8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v13 = sub_10000341C(&qword_1002620A0, &qword_1001D8700);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v28[3] = &type metadata for WritingTools, v28[4] = sub_10002AC88(), LOBYTE(v28[0]) = 14, v19 = isFeatureEnabled(_:)(), sub_10000F4B4(v28), (v19 & 1) == 0))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v20 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(0, v26, &v4[*(v20 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8, &protocol conformance descriptor for HStack<A>);
    *v6 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    IconOnlyLabelStyle.init()();
    sub_1000E7628(v10, v12);
    (*(v8 + 8))(v10, v7);
    sub_1000081F8(v12, v6, &qword_100261F70, &qword_1001D85E8);
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v12, &qword_100261F70, &qword_1001D85E8);
  }

  sub_1000081F8(v18, v16, &qword_1002620A0, &qword_1001D8700);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v21 = sub_10000341C(&qword_1002620A8, &qword_1001D8708);
  sub_1000081F8(v16, a2 + *(v21 + 64), &qword_1002620A0, &qword_1001D8700);
  sub_10000F500(v18, &qword_1002620A0, &qword_1001D8700);
  return sub_10000F500(v16, &qword_1002620A0, &qword_1001D8700);
}

uint64_t sub_1000ECE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_10000341C(&qword_1002620B0, &unk_1001D8710);
  __chkstk_darwin(v5);
  v7 = (&v18 - v6);
  v8 = type metadata accessor for TitleAndIconLabelStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_100262058, &qword_1001D86D0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v21[3] = &type metadata for WritingTools, v21[4] = sub_10002AC88(), LOBYTE(v21[0]) = 14, v15 = isFeatureEnabled(_:)(), sub_10000F4B4(v21), (v15 & 1) == 0))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v17 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(1, v19, &v4[*(v17 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8, &protocol conformance descriptor for HStack<A>);
    *v7 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F4724();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    TitleAndIconLabelStyle.init()();
    sub_1000E7B24(v11, v14);
    (*(v9 + 8))(v11, v8);
    sub_1000081F8(v14, v7, &qword_100262058, &qword_1001D86D0);
    swift_storeEnumTagMultiPayload();
    sub_1000F4724();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v14, &qword_100262058, &qword_1001D86D0);
  }
}

uint64_t sub_1000ED200(uint64_t a1, double a2)
{
  static Animation.easeInOut(duration:)();
  Animation.delay(_:)();

  withAnimation<A>(_:_:)();
}

void sub_1000ED2BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X8>)
{
  if (a4 > 1u)
  {
    if (a4 != 255 && a3 | a2 | a1 && (a1 != 1 || a3 | a2))
    {
      v7 = 0xD000000000000011;
      v24 = objc_opt_self();
      v25 = [v24 mainBundle];
      v53._object = 0x80000001001E6920;
      v26._countAndFlagsBits = 0x64657463656C6553;
      v26._object = 0xED00007478655420;
      v53._countAndFlagsBits = 0xD0000000000000BELL;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v53);
      countAndFlagsBits = v28._countAndFlagsBits;
      object = v28._object;

      v15 = [v24 mainBundle];
      v54._object = 0x80000001001E6A00;
      v29._countAndFlagsBits = 0x6974736567677553;
      v29._object = 0xEB00000000736E6FLL;
      v54._countAndFlagsBits = 0xD00000000000006CLL;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v15, v30, v54);
      v19 = v31._countAndFlagsBits;
      v20 = v31._object;
      v22 = "that is sent to Writing tools.";
      v21 = 0xEF7478742E796C70;
      v23 = 0x65725F7472616D73;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    if (a2 == 1)
    {
      v32 = objc_opt_self();
      v33 = [v32 mainBundle];
      v55._object = 0xE000000000000000;
      v34._countAndFlagsBits = 0x64657463656C6553;
      v34._object = 0xED00007478655420;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v55);
      countAndFlagsBits = v36._countAndFlagsBits;
      object = v36._object;

      v50._countAndFlagsBits = sub_1000971C0();
      v50._object = v37;
      v38._countAndFlagsBits = 0x7478655420;
      v38._object = 0xE500000000000000;
      String.append(_:)(v38);
      v15 = [v32 mainBundle];
      v56._object = 0x80000001001E6A90;
      v56._countAndFlagsBits = 0xD00000000000006FLL;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v15, v39, v56);
      v19 = v40._countAndFlagsBits;
      v20 = v40._object;

      v7 = 0xD000000000000012;
      v22 = "ns generated by Smart Reply.";
      v41 = 0x74757074756FLL;
LABEL_18:
      v23 = v41 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      v21 = 0xEF7478742E747865;
      goto LABEL_19;
    }

LABEL_17:
    v7 = 0xD000000000000011;
    v42 = objc_opt_self();
    v43 = [v42 mainBundle];
    v57._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0x64657463656C6553;
    v44._object = 0xED00007478655420;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v57);
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;

    v15 = [v42 mainBundle];
    v58._object = 0x80000001001E68B0;
    v47._countAndFlagsBits = 0x5420646574696445;
    v47._object = 0xEB00000000747865;
    v58._countAndFlagsBits = 0xD00000000000006DLL;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v15, v48, v58);
    v19 = v49._countAndFlagsBits;
    v20 = v49._object;
    v22 = "s requests to Writing Tools.";
    v41 = 0x646574696465;
    goto LABEL_18;
  }

  v6 = (a1 & 0xFE) == 8 || (a1 & 0xFE) == 6;
  if (!v6 || a3)
  {
    goto LABEL_17;
  }

  v7 = 0xD000000000000011;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v51._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x64657463656C6553;
  v10._object = 0xED00007478655420;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v51);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  v15 = [v8 mainBundle];
  v52._object = 0x80000001001E6B00;
  v16._countAndFlagsBits = 0x7972616D6D7553;
  v52._countAndFlagsBits = 0xD000000000000085;
  v16._object = 0xE700000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v52);
  v19 = v18._countAndFlagsBits;
  v20 = v18._object;
  v21 = 0xEB00000000747874;
  v22 = "s requests to Writing Tools.";
  v23 = 0x2E7972616D6D7573;
LABEL_19:

  *a5 = countAndFlagsBits;
  a5[1] = object;
  a5[2] = v7;
  a5[3] = v22 | 0x8000000000000000;
  a5[4] = v19;
  a5[5] = v20;
  a5[6] = v23;
  a5[7] = v21;
}

void *sub_1000ED7E0()
{
  v1 = 0xD00000000000009BLL;
  v2 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v2 - 8);
  v145 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_100261EF0, &qword_1001D8568);
  v5 = __chkstk_darwin(v4 - 8);
  v147 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v146 = &v144 - v8;
  __chkstk_darwin(v7);
  v162 = &v144 - v9;
  v157 = type metadata accessor for Attachment(0);
  v159 = *(v157 - 8);
  v10 = __chkstk_darwin(v157);
  v171 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v144 - v12;
  v160 = sub_10000341C(&qword_100261F10, &qword_1001D8590);
  *&v181 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = (&v144 - v14);
  v15 = sub_10000341C(&qword_100261F18, &unk_1001DF340);
  v16 = __chkstk_darwin(v15 - 8);
  v178 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v177 = (&v144 - v18);
  v19 = sub_10000341C(&qword_100261EF8, &qword_1001D8570);
  __chkstk_darwin(v19 - 8);
  v21 = &v144 - v20;
  v22 = type metadata accessor for FBKSInteraction.Content();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v153 = (&v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v27 = (&v144 - v26);
  v28 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v169 = *(v28 - 8);
  v170 = v28;
  v29 = __chkstk_darwin(v28);
  v179 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v154 = &v144 - v32;
  __chkstk_darwin(v31);
  v35 = v0[8];
  p_name = &stru_100256FF8.name;
  v155 = v0;
  v167 = v23;
  v168 = v22;
  v166 = v21;
  v165 = v27;
  if (!v35)
  {
    v180 = _swiftEmptyArrayStorage;
    countAndFlagsBits = v169;
    v46 = v160;
    v47 = v178;
    goto LABEL_5;
  }

  v180 = v0[7];
  *v27 = v180;
  v27[1] = v35;
  v176 = (&v144 - v33);
  (*(v23 + 13))(v27, enum case for FBKSInteraction.Content.text(_:), v22);
  v37 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v38 = [v37 mainBundle];
  v184._object = 0x80000001001E67E0;
  v39._countAndFlagsBits = 0x74736575716552;
  v184._countAndFlagsBits = 0xD0000000000000ACLL;
  v39._object = 0xE700000000000000;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v184);

  v41 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
  v42 = v176;
  FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
  v43 = sub_10017E218(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = v43[2];
  v44 = v43[3];
  v180 = v43;
  countAndFlagsBits = v22 + 1;
  if (v22 >= v44 >> 1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v46 = v160;
    v47 = v178;
    v48 = v180;
    v180[2] = countAndFlagsBits;
    countAndFlagsBits = v169;
    (*(v169 + 32))(v48 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v22, v42, v170);
    v0 = v155;
    p_name = (&stru_100256FF8 + 8);
LABEL_5:
    v49 = 0;
    v42 = 0;
    v50 = v0[13];
    v51 = *(v50 + 16);
    v152 = v13 + 8;
    v176 = (v181 + 56);
    v175 = (v181 + 48);
    v173 = 0x80000001001E6730;
    v161 = enum case for FBKSInteraction.Content.image(_:);
    v163 = (v167 + 104);
    v164 = countAndFlagsBits + 32;
    *&v34 = 136642819;
    v156 = v34;
    v172 = v51;
    v174 = v50;
    if (!v51)
    {
LABEL_6:
      v52 = 1;
      *&v181 = v51;
      goto LABEL_9;
    }

    while (1)
    {
      v44 = *(v50 + 16);
      if (v49 >= v44)
      {
        goto LABEL_58;
      }

      v53 = v49 + 1;
      v54 = v50 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v49;
      v55 = *(v46 + 48);
      v56 = v158;
      *v158 = v49;
      sub_1000F3AC4(v54, v56 + v55, type metadata accessor for Attachment);
      sub_10002A894(v56, v47, &qword_100261F10, &qword_1001D8590);
      v52 = 0;
      *&v181 = v53;
LABEL_9:
      (*v176)(v47, v52, 1, v46);
      v57 = v177;
      sub_10002A894(v47, v177, &qword_100261F18, &unk_1001DF340);
      if ((*v175)(v57, 1, v46) == 1)
      {
        break;
      }

      v58 = *v57;
      sub_1000F3B2C(v57 + *(v46 + 48), v13, type metadata accessor for Attachment);
      v59 = [objc_opt_self() p_name[386]];
      v185._object = v173;
      v185._countAndFlagsBits = v1 + 15;
      v60._countAndFlagsBits = 0x656D686361747441;
      v60._object = 0xEA0000000000746ELL;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v185)._countAndFlagsBits;

      result = Data.init(contentsOf:options:)();
      v64 = result;
      v65 = v63;
      if (*(v174 + 16) == 1)
      {
        v151 = 0;
        v66 = 0xE000000000000000;
      }

      else
      {
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        v183[0] = v58 + 1;
        v151 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v67;
      }

      v68 = URL.pathExtension.getter();
      v70 = v69;

      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v72._countAndFlagsBits = URL.pathExtension.getter();
        v183[0] = 46;
        v183[1] = 0xE100000000000000;
        String.append(_:)(v72);

        v73 = v183[1];
        v148 = v183[0];
      }

      else
      {
        v148 = 0;
        v73 = 0xE000000000000000;
      }

      if (*&v152[*(v157 + 20)])
      {
        v150 = 0;
        v149 = 0xE000000000000000;
      }

      else
      {
        v150 = URL.lastPathComponent.getter();
        v149 = v74;
      }

      strcpy(v183, "attachment");
      BYTE3(v183[1]) = 0;
      HIDWORD(v183[1]) = -369098752;
      v75._countAndFlagsBits = v151;
      v75._object = v66;
      String.append(_:)(v75);

      v76._countAndFlagsBits = v148;
      v76._object = v73;
      String.append(_:)(v76);

      v151 = v183[1];
      v77 = v165;
      *v165 = v64;
      v77[1] = v65;
      (*v163)(v77, v161, v168);
      v78 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
      (*(*(v78 - 8) + 56))(v166, 1, 1, v78);
      sub_10004DC4C(v64, v65);
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_10017E218(0, v180[2] + 1, 1, v180);
      }

      p_name = (&stru_100256FF8 + 8);
      v1 = 0xD00000000000009BLL;
      v22 = v180[2];
      v79 = v180[3];
      if (v22 >= v79 >> 1)
      {
        v180 = sub_10017E218((v79 > 1), v22 + 1, 1, v180);
      }

      sub_10004DD08(v64, v65);
      v80 = v180;
      v180[2] = v22 + 1;
      (*(v169 + 32))(v80 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v22, v154, v170);
      sub_1000F3B94(v13, type metadata accessor for Attachment);
      v47 = v178;
      v50 = v174;
      v51 = v172;
      v49 = v181;
      if (v181 == v172)
      {
        goto LABEL_6;
      }
    }

    countAndFlagsBits = v155[15];
    v81 = *(countAndFlagsBits + 16);

    if (!v81)
    {
      break;
    }

    v22 = 0;
    v44 = 0x80000001001E65E0;
    v176 = 0x80000001001E65E0;
    v177 = (countAndFlagsBits + 32);
    v178 = countAndFlagsBits;
    while (v22 < v81)
    {
      v82 = *&v177[2 * v22++];
      v181 = v82;
      v83 = *(&v82 + 1);
      if (v81 == 1)
      {
        sub_10004DC4C(v181, *(&v82 + 1));
        v1 = 0;
        v84 = 0xE000000000000000;
      }

      else
      {
        v183[0] = v22;
        sub_10004DC4C(v181, *(&v82 + 1));
        v1 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v85;
      }

      v86 = v168;
      v87 = v165;
      *v165 = v181;
      (*v163)(v87, v161, v86);
      sub_10004DC4C(v181, v83);
      v183[0] = sub_1000971C0();
      v183[1] = v88;
      v89._countAndFlagsBits = 0x6567616D4920;
      v89._object = 0xE600000000000000;
      String.append(_:)(v89);
      v90 = v183[0];
      v91 = v183[1];
      v92 = [objc_opt_self() mainBundle];
      v186._object = v176;
      v93._countAndFlagsBits = v90;
      v93._object = v91;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v186._countAndFlagsBits = 0xD00000000000009BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v186);

      strcpy(v183, "output_image");
      BYTE5(v183[1]) = 0;
      HIWORD(v183[1]) = -5120;
      v95._countAndFlagsBits = v1;
      v95._object = v84;
      String.append(_:)(v95);

      v96._countAndFlagsBits = 1735290926;
      v96._object = 0xE400000000000000;
      String.append(_:)(v96);

      v97 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
      (*(*(v97 - 8) + 56))(v166, 1, 1, v97);
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_10017E218(0, v180[2] + 1, 1, v180);
      }

      v98 = v162;
      v13 = v167;
      v99 = v169;
      countAndFlagsBits = v178;
      v101 = v180[2];
      v100 = v180[3];
      if (v101 >= v100 >> 1)
      {
        v180 = sub_10017E218((v100 > 1), v101 + 1, 1, v180);
      }

      sub_10004DD08(v181, v83);
      v102 = v179;
      v103 = v180;
      v180[2] = v101 + 1;
      v104 = v103 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v101;
      v42 = v170;
      (*(v99 + 32))(v104, v102, v170);
      v81 = *(countAndFlagsBits + 16);
      if (v22 == v81)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v180 = sub_10017E218((v44 > 1), countAndFlagsBits, 1, v180);
  }

  v98 = v162;
  v13 = v167;
  v99 = v169;
  v42 = v170;
LABEL_43:

  v105 = *(v99 + 56);
  v105(v98, 1, 1, v42);
  v106 = v155[14];
  if (!*(v106 + 16))
  {
    v143 = v98;
LABEL_56:
    sub_10000F500(v143, &qword_100261EF0, &qword_1001D8568);
    return v180;
  }

  v183[0] = v155[14];

  v107 = sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  *&v181 = v105;
  v108 = v107;
  v109 = sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v110 = BidirectionalCollection<>.joined(separator:)();
  v112 = v111;

  v113 = v153;
  *v153 = v110;
  v113[1] = v112;
  v114 = v168;
  (*(v13 + 13))(v113, enum case for FBKSInteraction.Content.text(_:), v168);
  (*(v13 + 2))(v165, v113, v114);
  v183[0] = sub_1000971C0();
  v183[1] = v115;
  v116._countAndFlagsBits = 0x7473656767755320;
  v116._object = 0xEC000000736E6F69;
  String.append(_:)(v116);
  v117 = v183[0];
  v118 = v183[1];
  v119 = [objc_opt_self() mainBundle];
  v187._object = 0x80000001001E6680;
  v187._countAndFlagsBits = 0xD0000000000000AFLL;
  v120._countAndFlagsBits = v117;
  v120._object = v118;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v120, 0, v119, v121, v187);

  v122 = v162;
  v183[0] = v106;

  v178 = v109;
  v179 = v108;
  BidirectionalCollection<>.joined(separator:)();

  v123 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v123 - 8) + 56))(v166, 1, 1, v123);
  v124 = v146;
  FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
  sub_10000F500(v122, &qword_100261EF0, &qword_1001D8568);
  v125 = v170;
  (v181)(v124, 0, 1, v170);
  sub_10002A894(v124, v122, &qword_100261EF0, &qword_1001D8568);
  v126 = v147;
  sub_1000081F8(v122, v147, &qword_100261EF0, &qword_1001D8568);
  v127 = v169;
  result = (*(v169 + 48))(v126, 1, v125);
  if (result != 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v145;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v180 = sub_10017E218(0, v180[2] + 1, 1, v180);
    }

    v131 = v180[2];
    v130 = v180[3];
    if (v131 >= v130 >> 1)
    {
      v180 = sub_10017E218((v130 > 1), v131 + 1, 1, v180);
    }

    v132 = v180;
    v180[2] = v131 + 1;
    (*(v127 + 32))(v132 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v131, v126, v170);
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    sub_10000F34C(v133, qword_100276F80);
    sub_1000F3AC4(v155, v129, type metadata accessor for FeedbackView);
    v134 = Logger.logObject.getter();
    v135 = v129;
    v136 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v134, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v137 = v156;
      v182 = *(v135 + 112);
      v183[0] = v138;

      v139 = BidirectionalCollection<>.joined(separator:)();
      v141 = v140;

      sub_1000F3B94(v135, type metadata accessor for FeedbackView);
      v142 = sub_10002510C(v139, v141, v183);

      *(v137 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v134, v136, "Feedback Initiated - refinementsContent: %{sensitive}s", v137, 0xCu);
      sub_10000F4B4(v138);
    }

    else
    {

      sub_1000F3B94(v135, type metadata accessor for FeedbackView);
    }

    (*(v167 + 1))(v153, v168);
    v143 = v122;
    goto LABEL_56;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1000EEF90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      return 0x65736F706D6F43;
    }

    else
    {
      v8 = 0x6552207472616D53;
      if (a1 == 1 && (a3 | a2) == 0)
      {
        v8 = 0x616572666F6F7250;
      }

      if (a3 | a2 | a1)
      {
        return v8;
      }

      else
      {
        return 0x20676E6974697257;
      }
    }
  }

  else if (a1 > 4u)
  {
    v9 = 0x6E696F502079654BLL;
    v10 = 1953720652;
    if (a1 != 8)
    {
      v10 = 0x656C626154;
    }

    if (a1 != 7)
    {
      v9 = v10;
    }

    v11 = 0x646E45206E65704FLL;
    if (a1 != 5)
    {
      v11 = 0x7972616D6D7553;
    }

    if (a1 <= 6u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x65746972776552;
    v6 = 0x657369636E6F43;
    v7 = 0x796C646E65697246;
    if (a1 != 3)
    {
      v7 = 0x69737365666F7250;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x616572666F6F7250;
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
}

uint64_t sub_1000EF198@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FeedbackView(0);
  sub_1000081F8(v1 + *(v10 + 92), v9, &qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for AccessibilityTechnologies();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_1000EF3AC()
{
  result = qword_100261DF8;
  if (!qword_100261DF8)
  {
    sub_100003E34(&qword_100261DF0, &qword_1001D84B0);
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261DF8);
  }

  return result;
}

unint64_t sub_1000EF464()
{
  result = qword_100261E00;
  if (!qword_100261E00)
  {
    sub_100003E34(&qword_100261E08, &qword_1001D84B8);
    sub_1000EF4F0();
    sub_1000EF6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E00);
  }

  return result;
}

unint64_t sub_1000EF4F0()
{
  result = qword_100261E10;
  if (!qword_100261E10)
  {
    sub_100003E34(&qword_100261E18, &qword_1001D84C0);
    sub_1000EF57C();
    sub_1000EF634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E10);
  }

  return result;
}

unint64_t sub_1000EF57C()
{
  result = qword_100261E20;
  if (!qword_100261E20)
  {
    sub_100003E34(&qword_100261E28, &qword_1001D84C8);
    sub_100007120(&qword_100261E30, &qword_100261E38, &qword_1001D84D0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E20);
  }

  return result;
}

unint64_t sub_1000EF634()
{
  result = qword_100261E40;
  if (!qword_100261E40)
  {
    sub_100003E34(&qword_100261E48, &qword_1001D84D8);
    sub_100007120(&qword_100261E50, &qword_100261E58, &qword_1001D84E0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E40);
  }

  return result;
}

unint64_t sub_1000EF6EC()
{
  result = qword_100261E60;
  if (!qword_100261E60)
  {
    sub_100003E34(&qword_100261E68, &qword_1001D84E8);
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E60);
  }

  return result;
}

unint64_t sub_1000EF7A4()
{
  result = qword_100261E98;
  if (!qword_100261E98)
  {
    sub_100003E34(&qword_100261DE0, &qword_1001D84A0);
    sub_1000EF3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E98);
  }

  return result;
}

uint64_t sub_1000EF894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002620D0, &unk_1001D87D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000EF90C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000341C(&qword_10025AC60, &qword_1001CE930);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EFBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100008150(v24, v34);
      }

      else
      {
        sub_10002B0D0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100008150(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000EFEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10000341C(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

Swift::Int sub_1000F02A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100008198(v24, v34);
      }

      else
      {
        sub_100028458(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100008198(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000F0564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000341C(&qword_10025AD10, &unk_1001D8720);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_1000F0938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000F0BF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000341C(&qword_10025AC68, &qword_1001CE938);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      UnitPoint.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000F0E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000341C(&qword_10025AD30, &qword_1001D8740);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000F1260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000F1634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FBKSForm.Question();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000341C(&qword_10025AC48, &qword_1001CE928);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000F48D8(&qword_10025AC50, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000F1A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10000341C(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

unint64_t sub_1000F1E00(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1000F1E44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008150(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F1EB4(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008198(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F1F24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000F1FF4(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000F20AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

id sub_1000F2168()
{
  v1 = v0;
  sub_10000341C(&qword_10025AC60, &qword_1001CE930);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000F22C8()
{
  v1 = v0;
  sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10002B0D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008150(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000F24A8()
{
  v1 = v0;
  sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100028458(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008198(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1000F2650()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(&qword_10025AD10, &unk_1001D8720);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1000F28D4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_1000F2B4C()
{
  v1 = v0;
  sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000F2CC4()
{
  v1 = v0;
  sub_10000341C(&qword_10025AC68, &qword_1001CE938);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

char *sub_1000F2E3C()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1000F30C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_10000341C(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

id sub_1000F3350(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_1000F35DC()
{
  v1 = type metadata accessor for FeedbackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 152);
  if (v6 != 255)
  {
    sub_10000F428(v5[16], v5[17], v5[18], v6);
  }

  if (v5[23])
  {
    sub_10000F4B4(v5 + 20);
  }

  v7 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F377C()
{
  v1 = *(type metadata accessor for FeedbackView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000ED200(v3, v2);
}

unint64_t sub_1000F37E0()
{
  result = qword_100261EB8;
  if (!qword_100261EB8)
  {
    sub_100003E34(&qword_100261DE8, &qword_1001D84A8);
    sub_1000F386C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EB8);
  }

  return result;
}

unint64_t sub_1000F386C()
{
  result = qword_100261EC0;
  if (!qword_100261EC0)
  {
    sub_100003E34(&qword_100261EA8, &qword_1001D8540);
    sub_1000F3924();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EC0);
  }

  return result;
}

unint64_t sub_1000F3924()
{
  result = qword_100261EC8;
  if (!qword_100261EC8)
  {
    sub_100003E34(&qword_100261EA0, &qword_1001D8508);
    sub_100003E34(&qword_100261DE0, &qword_1001D84A0);
    sub_100003E34(&unk_1002637B0, &qword_1001D8498);
    sub_1000EF7A4();
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EC8);
  }

  return result;
}

uint64_t sub_1000F3AB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F3AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000F3BF4()
{
  result = qword_100261F78;
  if (!qword_100261F78)
  {
    sub_100003E34(&qword_100261F70, &qword_1001D85E8);
    sub_1000F3CAC();
    sub_100007120(&qword_100261FA0, &qword_100261FA8, &qword_1001D8600, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261F78);
  }

  return result;
}

unint64_t sub_1000F3CAC()
{
  result = qword_100261F80;
  if (!qword_100261F80)
  {
    sub_100003E34(&qword_100261F88, &unk_1001D85F0);
    sub_100003E34(&qword_100261F90, &unk_1001DE270);
    sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261F80);
  }

  return result;
}

uint64_t sub_1000F3DA8()
{
  v1 = type metadata accessor for FeedbackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 152);
  if (v6 != 255)
  {
    sub_10000F428(v5[16], v5[17], v5[18], v6);
  }

  if (v5[23])
  {
    sub_10000F4B4(v5 + 20);
  }

  v7 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000F3F70()
{
  result = qword_100261FF8;
  if (!qword_100261FF8)
  {
    sub_100003E34(&qword_100261FE0, &qword_1001D8630);
    sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270, &protocol conformance descriptor for Button<A>);
    sub_1000F4028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261FF8);
  }

  return result;
}

unint64_t sub_1000F4028()
{
  result = qword_100262000;
  if (!qword_100262000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262000);
  }

  return result;
}

unint64_t sub_1000F4088()
{
  result = qword_100262020;
  if (!qword_100262020)
  {
    sub_100003E34(&qword_100262010, &qword_1001D8658);
    sub_10002AF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262020);
  }

  return result;
}

uint64_t sub_1000F4148(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000E9D68(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000F4238()
{
  v1 = type metadata accessor for FeedbackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 152);
  if (v6 != 255)
  {
    sub_10000F428(v5[16], v5[17], v5[18], v6);
  }

  if (v5[23])
  {
    sub_10000F4B4(v5 + 20);
  }

  v7 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F43E0(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000E994C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000F4558(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_1000E8020(a1, v6, v7, v1 + v5);
}

unint64_t sub_1000F4724()
{
  result = qword_1002620B8;
  if (!qword_1002620B8)
  {
    sub_100003E34(&qword_100262058, &qword_1001D86D0);
    sub_1000F47DC();
    sub_100007120(&qword_100261FA0, &qword_100261FA8, &qword_1001D8600, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002620B8);
  }

  return result;
}

unint64_t sub_1000F47DC()
{
  result = qword_1002620C0;
  if (!qword_1002620C0)
  {
    sub_100003E34(&qword_100262080, &qword_1001D86F0);
    sub_100003E34(&qword_100262070, &qword_1001D86E0);
    sub_100007120(&qword_100262098, &qword_100262070, &qword_1001D86E0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002620C0);
  }

  return result;
}

uint64_t sub_1000F48D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F4940()
{
  sub_100003E34(&qword_100261DE8, &qword_1001D84A8);
  sub_1000F37E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F4AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1000F4BC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000F4CA0(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v3, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000F4DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView);
  return result;
}

uint64_t sub_1000F4E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_100262580, &qword_1001CFF70);
}

uint64_t sub_1000F4F58(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000081F8(a1, &v9[-v5], &unk_100262580, &qword_1001CFF70);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
}

uint64_t sub_1000F50F8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1000F51D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  return result;
}

uint64_t sub_1000F52FC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1000F5488()
{
  type metadata accessor for TextComposerClient();
  swift_allocObject();
  TextComposerClient.init()();
  dispatch thunk of TextComposerClient.requestPrewarming(for:)();
}

uint64_t sub_1000F54E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for UUID();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v7[22] = swift_task_alloc();
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for MainActor();
  v7[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[29] = v10;
  v7[30] = v9;

  return _swift_task_switch(sub_1000F56A4, v10, v9);
}

uint64_t sub_1000F56A4()
{
  v1 = v0[26];
  v2 = v0[14];
  swift_getKeyPath();
  v0[31] = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v0[8] = v2;
  v0[32] = sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);
  swift_getKeyPath();
  v0[9] = v3;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v3 + v4, v1, &unk_100262580, &qword_1001CFF70);

  v5 = type metadata accessor for CompositionModel.Session(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  sub_10000F500(v1, &unk_100262580, &qword_1001CFF70);
  if (v7 == 1)
  {
    goto LABEL_11;
  }

  v8 = v0[25];
  v9 = v0[14];
  swift_getKeyPath();
  v0[12] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = v2;
  v10 = *(v2 + 32);
  swift_getKeyPath();
  v0[13] = v10;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v10 + v11, v8, &unk_100262580, &qword_1001CFF70);

  v12 = v6(v8, 1, v5);
  v13 = v0[25];
  if (v12 == 1)
  {
    sub_10000F500(v0[25], &unk_100262580, &qword_1001CFF70);
    v14 = 1;
  }

  else
  {
    v15 = *v13;
    sub_100099074(v13);
    v16 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = 0;
  }

  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[22];
  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[15];
  (*(v21 + 56))(v17, v14, 1, v20);
  v23 = *(v18 + 48);
  sub_1000081F8(v17, v19, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(v22, v19 + v23, &unk_100262450, &qword_1001CFAA0);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v25 = v0[18];
    sub_10000F500(v0[24], &unk_100262450, &qword_1001CFAA0);
    if (v24(v19 + v23, 1, v25) == 1)
    {
      sub_10000F500(v0[22], &unk_100262450, &qword_1001CFAA0);
LABEL_19:
      v45 = v0[17];
      if (v45 && ((v45 & 0x2000000000000000) != 0 ? (v46 = HIBYTE(v45) & 0xF) : (v46 = v0[16] & 0xFFFFFFFFFFFFLL), v46))
      {
        v47 = v0[14];
        swift_getKeyPath();
        v0[11] = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v0[35] = *(v47 + 32);

        v0[36] = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v0[37] = v49;
        v0[38] = v48;

        return _swift_task_switch(sub_1000F61C8, v49, v48);
      }

      else
      {

        v50 = v0[1];

        return v50();
      }
    }

    goto LABEL_10;
  }

  v26 = v0[18];
  sub_1000081F8(v0[22], v0[23], &unk_100262450, &qword_1001CFAA0);
  v27 = v24(v19 + v23, 1, v26);
  v28 = v0[23];
  v29 = v0[24];
  if (v27 == 1)
  {
    v31 = v0[18];
    v30 = v0[19];
    sub_10000F500(v0[24], &unk_100262450, &qword_1001CFAA0);
    (*(v30 + 8))(v28, v31);
LABEL_10:
    sub_10000F500(v0[22], &qword_10025F358, &qword_1001D4140);
    goto LABEL_11;
  }

  v39 = v0[22];
  v41 = v0[19];
  v40 = v0[20];
  v42 = v0[18];
  (*(v41 + 32))(v40, v19 + v23, v42);
  sub_1001068A4(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v40, v42);
  sub_10000F500(v29, &unk_100262450, &qword_1001CFAA0);
  v44(v28, v42);
  v2 = v51;
  sub_10000F500(v39, &unk_100262450, &qword_1001CFAA0);
  if (v43)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000F34C(v32, qword_100276F08);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting session from handoff", v35, 2u);
  }

  v36 = v0[14];

  swift_getKeyPath();
  v0[10] = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[33] = *(v2 + 32);

  v37 = swift_task_alloc();
  v0[34] = v37;
  *v37 = v0;
  v37[1] = sub_1000F5F08;

  return sub_10007AB54();
}

uint64_t sub_1000F5F08()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1000F604C, v3, v2);
}

uint64_t sub_1000F604C(uint64_t a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 && ((v3 & 0x2000000000000000) != 0 ? (v4 = HIBYTE(v3) & 0xF) : (v4 = v2[16] & 0xFFFFFFFFFFFFLL), v4))
  {
    v5 = v2[14];
    swift_getKeyPath();
    v2[11] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2[35] = *(v5 + 32);

    v2[36] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v2[37] = v7;
    v2[38] = v6;

    return _swift_task_switch(sub_1000F61C8, v7, v6);
  }

  else
  {

    v8 = v2[1];

    return v8();
  }
}

uint64_t sub_1000F61C8()
{
  v1 = v0[17];
  sub_10006CF60("Composition", 11, 2);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000F627C;
  v3 = v0[16];

  return sub_10007DE34(v3, v1);
}

uint64_t sub_1000F627C()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_1000F639C, v3, v2);
}

uint64_t sub_1000F639C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_1000F6408, v3, v4);
}

uint64_t sub_1000F6408(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

void sub_1000F64B4(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000F9638(a2, a3);
  }
}

id sub_1000F65B4()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = static os_log_type_t.debug.getter();
  v3 = v0;
  v4 = Logger.logObject.getter();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, v2, "SceneDelegate deinit %@", v5, 0xCu);
    sub_10000F500(v6, &unk_10025D580, &qword_1001CFA60);
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SceneDelegate(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for SceneDelegate(uint64_t a1)
{
  result = qword_100262410;
  if (!qword_100262410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F687C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v12 = a1;
    if ([v5 _isWritingToolsHandlingKeyboardTracking])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_1000081B0(0, &qword_100262490, _UIHostedWindowScene_ptr);
        v8 = v12;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          v10 = [v4 keyboardSceneDelegate];
          if (v10)
          {
            v11 = v10;
            [v10 removeVisibilityObserver:v1];
          }
        }
      }
    }
  }
}

void sub_1000F6B08(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 keyboardOnScreen])
  {
    [SceneDelegate supressAssistantBarInUIService]_0();
  }

  [a1 keyboardPositionWithIAV];
  v7 = NSStringFromCGRect(v39);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a1 sourceBundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xEE00646569666963;
    v13 = 0x6570732D656E6F6ELL;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F08);
  v17 = static os_log_type_t.debug.getter();

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_10002510C(v8, v10, aBlock);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v21 = sub_10002510C(v13, v15, aBlock);

    *(v19 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v18, v17, "localKeyboardChanged pos=%s source=%s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation];
  *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = a1;
  v23 = a1;

  v24 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
  if ((v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    aBlock[4] = sub_100105C18;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001256BC;
    aBlock[3] = &unk_10024E678;
    v27 = _Block_copy(aBlock);
    v28 = v2;

    v29 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100058DD0();
    v30 = v34;
    v31 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v36 + 8))(v30, v31);
    (*(v33 + 8))(v29, v35);
    v2[v24] = 1;
  }
}

void sub_1000F7090(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 keyboardPositionWithIAV];
  v7 = NSStringFromCGRect(v39);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a1 sourceBundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xEE00646569666963;
    v13 = 0x6570732D656E6F6ELL;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F08);
  v17 = static os_log_type_t.debug.getter();

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_10002510C(v8, v10, aBlock);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v21 = sub_10002510C(v13, v15, aBlock);

    *(v19 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v18, v17, "remoteKeyboardChanged pos=%s source=%s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation];
  *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = a1;
  v23 = a1;

  v24 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
  if ((v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    aBlock[4] = sub_100106A24;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001256BC;
    aBlock[3] = &unk_10024E628;
    v27 = _Block_copy(aBlock);
    v28 = v2;

    v29 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100058DD0();
    v30 = v34;
    v31 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v36 + 8))(v30, v31);
    (*(v33 + 8))(v29, v35);
    v2[v24] = 1;
  }
}

void sub_1000F7600()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize;
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize + 16);
  v4 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation;
  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation);
  if (!v5)
  {
    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v6 = v5;
  sub_10010597C(v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 keyboardPositionWithIAV];
  v16 = v15;
  v18 = v17;
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F34C(v19, qword_100276FF8);
  v20 = static os_log_type_t.default.getter();
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v16;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v21, v20, "Send host updated keyboard size=(%f,%f)", v22, 0x16u);
  }

  v23 = [objc_opt_self() actionForUpdateKeyboardPosition:v3 ^ 1u preferredContentSizeChanged:{v8, v10, v12, v14}];
  sub_1000FA304(v23);

  v24 = *(v1 + v4);
  *(v1 + v4) = 0;

  if ((*(v2 + 16) & 1) == 0)
  {
LABEL_9:
    v25 = *(v2 + 8);
    if (qword_10025A730 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F34C(v26, qword_100276FF8);
    v27 = static os_log_type_t.default.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v28, v27, "Send host updated preferredContentSize (height=%f)", v29, 0xCu);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      nullsub_1();
      [v31 _setPreferredContentSize:{0.0, v32}];
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
  }

LABEL_16:
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled) = 0;
}

uint64_t sub_1000F7CB4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v2 + 24);

    if (v3)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = 0;
    }

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) != v5)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000F7ECC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v2 + 24);

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) != v3)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_1000F80DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F08);
  v17 = v4;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = a3;
    aBlock[0] = v22;
    v23 = a2;
    v24 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 2080;
    v25 = v17;
    v26 = sub_10002510C(v13, v15, aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "SceneDelegate %@: willBeginWritingToolsSession (sessionID=%s)", v20, 0x16u);
    sub_10000F500(v21, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v24);
    a2 = v23;
    a3 = v33;
  }

  else
  {
  }

  v27 = *&v17[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session];
  *&v17[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = a1;

  v28 = objc_opt_self();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F845C;
  aBlock[3] = &unk_10024E5D8;
  v29 = _Block_copy(aBlock);
  v30 = a1;

  v31 = [v28 actionForWillBeginWritingToolsSession:v30 requestContextsCompletion:v29];
  _Block_release(v29);
  sub_1000FA304(v31);
}

uint64_t sub_1000F845C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1000F8580(uint64_t a1, uint64_t a2)
{
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1000F8614(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v9 = objc_opt_self();
  v10 = a3;
  v12 = a1;
  v11 = [v9 *a5];
  sub_1000FA304(v11);
}

void sub_1000F86BC(void *a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F08);
  v10 = static os_log_type_t.debug.getter();
  v11 = v2;
  v12 = a1;
  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v10))
  {
    v14 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2080;
    v17 = v11;
    v18 = [v12 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v5;
    v21 = v10;
    v22 = a2;
    v24 = v23;
    (*(v14 + 8))(v8, v20);
    v25 = sub_10002510C(v19, v24, &v31);
    a2 = v22;

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v21, "SceneDelegate %@: didEndWritingToolsSession (sessionID=%s)", v15, 0x16u);
    sub_10000F500(v29, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v30);
  }

  v26 = [objc_opt_self() actionForDidEndWritingToolsSession:v12 accepted:a2 & 1];
  sub_1000FA304(v26);

  v27 = *&v11[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session];
  *&v11[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = 0;
}

void sub_1000F8AA4(uint64_t a1)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  v4 = static os_log_type_t.debug.getter();
  v5 = v1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2112;
    v9 = v5;
    if (a1)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 14) = v10;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v6, v4, "SceneDelegate %@: endWritingTools (error=%@)", v7, 0x16u);
    sub_10000341C(&unk_10025D580, &qword_1001CFA60);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_opt_self() actionForEndWritingToolsWithError:v12];

  sub_1000FA304(v13);
}

void sub_1000F8DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v16[4] = a7;
  v16[5] = a8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001256BC;
  v16[3] = &unk_10024E5B0;
  v14 = _Block_copy(v16);

  v15 = [v10 actionForShowAlertWithTitle:v11 message:v12 buttonTitle:v13 buttonAction:v14];
  _Block_release(v14);

  sub_1000FA304(v15);
}

void sub_1000F9520(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_opt_self();
  v9 = a1;
  v8 = [v7 *a4];
  sub_1000FA304(v8);
}

void sub_1000F9638(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F34C(v14, qword_100276FF8);
  v15 = static os_log_type_t.default.getter();
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v16, v15, "preferredContentSize changed (height=%f)", v17, 0xCu);
  }

  if ([objc_opt_self() _isWritingToolsHandlingKeyboardTracking])
  {
    v18 = &v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize];
    *v18 = a1;
    v18[1] = a2;
    *(v18 + 16) = 0;
    v19 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window];
    if (v19)
    {
      v20 = [v19 rootViewController];
      if (v20)
      {
        v21 = v20;
        type metadata accessor for FullscreenViewController();
        if (swift_dynamicCastClass())
        {
          sub_10018391C();
        }
      }
    }

    v31 = v11;
    v22 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
    if ((v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
    {
      sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
      v30 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      aBlock[4] = sub_100106A24;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001256BC;
      aBlock[3] = &unk_10024E588;
      v24 = _Block_copy(aBlock);
      v25 = v3;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
      sub_100058DD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v30;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v7 + 8))(v9, v6);
      (*(v31 + 8))(v13, v10);
      v3[v22] = 1;
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      nullsub_1();
      [v28 _setPreferredContentSize:{0.0, v29}];
    }
  }

  sub_100154048();
}

void sub_1000F9B18(double a1, double a2, double a3, double a4)
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F20);
  v10 = static os_log_type_t.debug.getter();
  v11 = v4;
  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138413314;
    *(v13 + 4) = v11;
    *v14 = v11;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a1;
    *(v13 + 22) = 2048;
    *(v13 + 24) = a2;
    *(v13 + 32) = 2048;
    *(v13 + 34) = a3;
    *(v13 + 42) = 2048;
    *(v13 + 44) = a4;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, v10, "SceneDelegate %@: show smart reply questionnaire (rect: %f, %f; %f, %f)", v13, 0x34u);
    sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);
  }

  v16 = [objc_opt_self() actionForShowSmartReplyQuestionnaireWithRect:{a1, a2, a3, a4}];
  sub_1000FA304(v16);
}

void sub_1000F9D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v4)
  {
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v4 + 32);

    swift_getKeyPath();
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F08);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "Initiating handoff to UCB... (enrolled: %{BOOL}d)", v13, 8u);
    }

    if (a3)
    {
      qword_100277028 = a2;
      qword_100277030 = a3;

      qword_10025E340 = a1;
      byte_10025E348 = 0;
    }

    v14 = Logger.logObject.getter();
    if (v9)
    {
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Proceeding with partner handoff", v16, 2u);
      }

      v17 = [objc_opt_self() actionForHandoffFromUCBFromTool:a1 withPrompt:0];
    }

    else
    {
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v14, v18, "Requesting enrollment prior to partner handoff...", v19, 2u);
      }

      v17 = [objc_opt_self() actionForEnrollmentBegan];
    }

    v20 = v17;
    sub_1000FA304(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FA170(double a1)
{
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276FF8);
  v3 = static os_log_type_t.default.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v4, v3, "updateKeyboardTrackingHeight, sending %f", v5, 0xCu);
  }

  v6 = [objc_opt_self() actionForUpdateKeyboardTrackingHeight:a1];
  sub_1000FA304(v6);
}

void sub_1000FA304(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window);
  if (v3 && (v4 = [v3 rootViewController]) != 0 && (v5 = v4, v12 = objc_msgSend(v4, "_hostedWindowScene"), v5, v12))
  {
    [v12 sendAction:a1];
  }

  else
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276F08);
    v7 = a1;
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v12, v8, "Could not send action: %@ to hostedWindowScene since it is nil.", v9, 0xCu);
      sub_10000F500(v10, &unk_10025D580, &qword_1001CFA60);
    }
  }
}

uint64_t sub_1000FA4B4(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
  if ((*(v4 + 24) & 1) != 0 || *(v4 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + 24) = 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if ((*(v6 + 24) & 1) != 0 || *(v6 + 16) != v3)
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000FA734(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if ((*(v2 + 40) & 1) != 0 || *(v2 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1000FA8C0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if (*(v2 + 57) == (result & 1))
  {
    *(v2 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FAA48(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v59 = a7;
  v60 = a8;
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v55 = a3;
  v13 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(a1, v18, &unk_100262450, &qword_1001CFAA0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000F500(v18, &unk_100262450, &qword_1001CFAA0);
LABEL_13:
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000F34C(v33, qword_100276F08);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No CompositionModel found. Creating a new Model and setting the delegate for CompositionModel", v36, 2u);
    }

    v54 = a9;

    type metadata accessor for CompositionModel(0);
    swift_allocObject();
    v26 = sub_1000947BC();

    v37 = a2;
    sub_100035E70(a2);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v53 - 2) = v26;
    *(&v53 - 1) = v10;
    v62[0] = v26;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v39 = v55 & 1;
    if (*(v26 + 64) == (v55 & 1))
    {
      *(v26 + 64) = v39;
    }

    else
    {
      v40 = swift_getKeyPath();
      __chkstk_darwin(v40);
      *(&v53 - 2) = v26;
      *(&v53 - 8) = v39;
      v62[0] = v26;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v41 = v56;
    sub_1000081F8(v56, v16, &unk_100262450, &qword_1001CFAA0);
    v42 = type metadata accessor for WritingToolsAnalytics(0);
    swift_allocObject();
    v43 = sub_100009B2C(v16);
    v63 = v42;
    v64 = &off_10024B270;
    v62[0] = v43;
    v44 = swift_getKeyPath();
    __chkstk_darwin(v44);
    *(&v53 - 2) = v26;
    *(&v53 - 1) = v62;
    v61 = v26;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000F500(v62, &unk_10025B1C0, &unk_1001CFA90);
    swift_getKeyPath();
    v62[0] = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);
    sub_1000081F8(v41, v16, &unk_100262450, &qword_1001CFAA0);
    swift_allocObject();

    v46 = sub_100009B2C(v16);
    v63 = v42;
    v64 = &off_10024B270;
    v62[0] = v46;
    v47 = swift_getKeyPath();
    __chkstk_darwin(v47);
    *(&v53 - 2) = v45;
    *(&v53 - 1) = v62;
    v61 = v45;
    sub_1001068A4(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000F500(v62, &unk_10025B1C0, &unk_1001CFA90);
    v48 = v58;

    sub_100036040(v57, v48);
    v49 = v60;

    sub_100036200(v59, v49);

    v50 = v54 & 1;
    if (*(v26 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) == (v54 & 1))
    {
      *(v26 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) = v50;
    }

    else
    {
      v51 = swift_getKeyPath();
      __chkstk_darwin(v51);
      *(&v53 - 2) = v26;
      *(&v53 - 8) = v50;
      v62[0] = v26;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return v26;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (qword_10025A760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_100277038;
  if (!*(qword_100277038 + 16) || (v24 = sub_100005044(v22), (v25 & 1) == 0))
  {
    swift_endAccess();
    (*(v20 + 8))(v22, v19);
    goto LABEL_13;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  v27 = qword_10025A6E0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000F34C(v28, qword_100276F08);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Setting the delegate for CompositionModel", v31, 2u);
  }

  v32 = swift_getKeyPath();
  __chkstk_darwin(v32);
  *(&v53 - 2) = v26;
  *(&v53 - 1) = v10;
  v62[0] = v26;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v20 + 8))(v22, v19);
  return v26;
}

void sub_1000FB490()
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did start refinement", v3, 2u);
  }

  v4 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 actionForMontaraDidStartRefinementForSessionWithUUID:isa];

  sub_1000FA304(v6);
}

void sub_1000FB6D4(char a1)
{
  v2 = v1;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received enrollment dismissed result: %{BOOL}d", v7, 8u);
  }

  v8 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel;
  v9 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel];
  if (!v9)
  {
    __break(1u);
    return;
  }

  swift_getKeyPath();
  aBlock[0] = v9;
  sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 32);

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v11 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v11 == *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v11;

    v13 = *&v2[v8];
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock[0] = v10;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v13 = *&v2[v8];
    if (!v13)
    {
LABEL_12:
      if (a1)
      {
LABEL_13:
        v17 = objc_opt_self();
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
        aBlock[4] = sub_1000FC7B4;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001256BC;
        aBlock[3] = &unk_10024E538;
        v19 = _Block_copy(aBlock);
        v2;

        v20 = [v17 actionForEnrollmentDismissedWithCompletion:v19];
        _Block_release(v19);
        sub_1000FA304(v20);

        return;
      }

      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  aBlock[0] = v13;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 32);

  v15 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v15 != *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    aBlock[0] = v14;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_12;
  }

  *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v15;

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_15:
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "User did not enroll, ending writing tools", v23, 2u);
  }

  sub_1000F8AA4(0);
}

void sub_1000FBC60()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && qword_100277030 != 0)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received enrollment dimissal completion, sending handoff", v6, 2u);
    }

    sub_1000F9D68(2, 0, 0);
  }
}

void sub_1000FBDA8(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = a3;
  v10 = a1;
  v9 = [v7 *a4];
  sub_1000FA304(v9);
}

void sub_1000FBE60(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v7 = a1;
  v6 = [v5 *a3];
  sub_1000FA304(v6);
}

void sub_1000FBEE4()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window] = 0;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsView;
  v3 = type metadata accessor for WritingToolsView(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel] = 0;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel;
  type metadata accessor for PresentationModel(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  ObservationRegistrar.init()();
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = 0;
  v6 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager;
  type metadata accessor for CommonUIManager(0);
  swift_allocObject();
  *&v1[v6] = sub_10015671C();
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = 0;
  v7 = &v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] = 0;
  type metadata accessor for SceneDelegateContainerViewController();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setModalInPresentation:0];
  v9 = [v8 view];

  if (v9)
  {
    v10 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    *&v1[v10] = v8;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for SceneDelegate(0);
    objc_msgSendSuper2(&v11, "init");
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FC118(uint64_t a1)
{
  sub_1000FC1F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000FC1F8(uint64_t a1)
{
  if (!qword_100262420)
  {
    type metadata accessor for WritingToolsView(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100262420);
    }
  }
}

void sub_1000FC250(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnablementUIDismissType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for EnablementUIDismissType.enableWithAccount(_:))
  {
    if (v13 == enum case for EnablementUIDismissType.enableWithoutAccount(_:))
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)();
      v20 = 1;
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v20 = 0;
    }

    goto LABEL_7;
  }

  (*(v3 + 104))(v5, enum case for GenerativeAssistantSettingsDestination.signIn(_:), v2);
  GenerativeAssistantSettingsDestination.fullURL.getter();
  (*(v3 + 8))(v5, v2);
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v16 = v14;
    URL._bridgeToObjectiveC()(v15);
    v18 = v17;
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 openSensitiveURL:v18 withOptions:isa];

    (*(v6 + 8))(v8, v22);
    v20 = 1;
LABEL_7:
    sub_1000FB6D4(v20);
    return;
  }

  __break(1u);
}

id sub_1000FC6F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneDelegateContainerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000FC77C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FC7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FCA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  LOBYTE(v5) = a5;
  v28 = a2;
  v9 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(a1, v11, &unk_100262450, &qword_1001CFAA0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000F500(v11, &unk_100262450, &qword_1001CFAA0);
    goto LABEL_21;
  }

  (*(v13 + 32))(v15, v11, v12);
  if (qword_10025A788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_1002770A8;
  if (*(qword_1002770A8 + 16))
  {
    v17 = sub_100005044(v15);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_endAccess();
      swift_getKeyPath();
      v29 = v19;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      swift_retain_n();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v19 + 72);
      a3 = *(v19 + 80);
      a4 = *(v19 + 88);
      v5 = *(v19 + 96);
      sub_10002879C(v20, a3, a4, *(v19 + 96));

      if (v5 != 255)
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  swift_endAccess();
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_100277358;
  if (!*(qword_100277358 + 16) || (v22 = sub_100005044(v15), (v23 & 1) == 0))
  {
    swift_endAccess();
    if (qword_10025A760 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(qword_100277038 + 16) || (sub_100005044(v15), (v27 & 1) == 0))
    {
      swift_endAccess();
      (*(v13 + 8))(v15, v12);
LABEL_21:
      v20 = v28;
      if (v5 == 0xFF)
      {
        return 0;
      }

      sub_10000F3F4(v28, a3, a4, v5);
      return v20;
    }

    swift_endAccess();
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  swift_getKeyPath();
  v29 = v24;
  sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v24 + 72);
  v25 = *(v24 + 96);
  sub_10002879C(v20, *(v24 + 80), *(v24 + 88), *(v24 + 96));

  if (v25 != 255)
  {
LABEL_14:
    (*(v13 + 8))(v15, v12);

    return v20;
  }

  __break(1u);
  return result;
}

void sub_1000FD0D0(void *a1, uint64_t a2)
{
  v929 = a2;
  v930 = a1;
  v860 = sub_10000341C(&qword_100262498, &qword_1001D8BF0);
  v858 = *(v860 - 8);
  __chkstk_darwin(v860);
  v855 = &v811 - v3;
  v861 = sub_10000341C(&qword_1002624A0, &qword_1001D8BF8);
  v859 = *(v861 - 8);
  __chkstk_darwin(v861);
  v857 = &v811 - v4;
  v866 = sub_10000341C(&qword_1002624A8, &qword_1001D8C00);
  v865 = *(v866 - 8);
  v5 = __chkstk_darwin(v866);
  v856 = &v811 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v864 = &v811 - v7;
  v851 = type metadata accessor for NavigationPath();
  v850 = *(v851 - 8);
  v8 = __chkstk_darwin(v851);
  v849 = &v811 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v848 = &v811 - v10;
  v854 = sub_10000341C(&qword_1002624B0, &qword_1001D8C08);
  v11 = __chkstk_darwin(v854);
  v853 = &v811 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v852 = (&v811 - v13);
  v830 = sub_10000341C(&qword_1002624B8, &qword_1001D8C10);
  v836 = *(v830 - 8);
  v14 = __chkstk_darwin(v830);
  v829 = &v811 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v835 = &v811 - v16;
  v833 = type metadata accessor for GenerativeAssistantSettingsOnboarding();
  v832 = *(v833 - 8);
  __chkstk_darwin(v833);
  v837 = &v811 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v834 = sub_10000341C(&qword_1002624C0, &qword_1001D8C18);
  v839 = *(v834 - 8);
  v18 = __chkstk_darwin(v834);
  v831 = &v811 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v838 = &v811 - v20;
  v879 = sub_10000341C(&qword_1002624C8, &qword_1001D8C20);
  v878 = *(v879 - 8);
  v21 = __chkstk_darwin(v879);
  v870 = &v811 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v877 = &v811 - v23;
  v881 = sub_10000341C(&unk_1002624D0, &unk_1001D8C28);
  v893 = *(v881 - 8);
  v24 = __chkstk_darwin(v881);
  v880 = &v811 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v892 = &v811 - v26;
  v27 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v27 - 8);
  v890 = &v811 - v28;
  v913 = type metadata accessor for UUID();
  v919 = *(v913 - 8);
  v29 = __chkstk_darwin(v913);
  v846 = &v811 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v840 = &v811 - v32;
  v33 = __chkstk_darwin(v31);
  v862 = &v811 - v34;
  v35 = __chkstk_darwin(v33);
  v887 = &v811 - v36;
  v37 = __chkstk_darwin(v35);
  v886 = &v811 - v38;
  v39 = __chkstk_darwin(v37);
  v885 = &v811 - v40;
  v41 = __chkstk_darwin(v39);
  v863 = &v811 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v811 - v44;
  v46 = __chkstk_darwin(v43);
  v882 = &v811 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v811 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v811 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = &v811 - v55;
  v57 = __chkstk_darwin(v54);
  v875 = &v811 - v58;
  __chkstk_darwin(v57);
  v867 = &v811 - v59;
  v918 = type metadata accessor for DispatchWorkItemFlags();
  v916 = *(v918 - 1);
  __chkstk_darwin(v918);
  v899 = &v811 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v900 = type metadata accessor for DispatchQoS();
  v898 = *(v900 - 8);
  __chkstk_darwin(v900);
  v897 = &v811 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v896 = type metadata accessor for DispatchQoS.QoSClass();
  v895 = *(v896 - 8);
  __chkstk_darwin(v896);
  v894 = &v811 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v883 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v891 = *(v883 - 8);
  v63 = *(v891 + 64);
  v64 = __chkstk_darwin(v883);
  v871 = &v811 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v64);
  v847 = &v811 - v66;
  v67 = __chkstk_darwin(v65);
  v842 = &v811 - v68;
  v69 = __chkstk_darwin(v67);
  v844 = &v811 - v70;
  v71 = __chkstk_darwin(v69);
  v843 = &v811 - v72;
  v73 = __chkstk_darwin(v71);
  v845 = &v811 - v74;
  v75 = __chkstk_darwin(v73);
  v901 = &v811 - v76;
  v77 = __chkstk_darwin(v75);
  v903 = &v811 - v78;
  v79 = __chkstk_darwin(v77);
  v902 = &v811 - v80;
  v81 = __chkstk_darwin(v79);
  v841 = &v811 - v82;
  v83 = __chkstk_darwin(v81);
  v869 = &v811 - v84;
  v85 = __chkstk_darwin(v83);
  v868 = &v811 - v86;
  v87 = __chkstk_darwin(v85);
  v874 = &v811 - v88;
  v89 = __chkstk_darwin(v87);
  v876 = &v811 - v90;
  v91 = __chkstk_darwin(v89);
  v889 = &v811 - v92;
  v93 = __chkstk_darwin(v91);
  v884 = &v811 - v94;
  v95 = __chkstk_darwin(v93);
  v888 = &v811 - v96;
  v97 = __chkstk_darwin(v95);
  v911 = (&v811 - v98);
  v99 = __chkstk_darwin(v97);
  v872 = &v811 - v100;
  v101 = __chkstk_darwin(v99);
  v928 = &v811 - v102;
  v103 = __chkstk_darwin(v101);
  v926 = &v811 - v104;
  v105 = __chkstk_darwin(v103);
  v927 = &v811 - v106;
  __chkstk_darwin(v105);
  v108 = &v811 - v107;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v931 = v108;
  v873 = type metadata accessor for Logger();
  v109 = sub_10000F34C(v873, qword_100276F08);
  v110 = static os_log_type_t.debug.getter();
  v111 = v2;
  v917 = v109;
  v112 = Logger.logObject.getter();
  v113 = v111;

  if (os_log_type_enabled(v112, v110))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v925 = v63;
    v116 = v50;
    v117 = v45;
    v118 = v56;
    v119 = v53;
    v120 = v115;
    *v114 = 138412290;
    *(v114 + 4) = v113;
    *v115 = v113;
    v121 = v113;
    _os_log_impl(&_mh_execute_header, v112, v110, "SceneDelegate %@: scene will connnect to session", v114, 0xCu);
    sub_10000F500(v120, &unk_10025D580, &qword_1001CFA60);
    v53 = v119;
    v56 = v118;
    v45 = v117;
    v50 = v116;
    v63 = v925;
  }

  objc_opt_self();
  v122 = swift_dynamicCastObjCClass();
  if (v122)
  {
    v123 = v122;
    v821 = v53;
    type metadata accessor for WTSceneConnectionOptionsDefinition();
    v124 = type metadata accessor for WTStartupOptions();
    sub_1001068A4(&unk_1002624E0, &type metadata accessor for WTSceneConnectionOptionsDefinition, &protocol conformance descriptor for WTSceneConnectionOptionsDefinition);
    v912 = v930;
    UISceneConnectionOptions.subscript.getter();
    if (aBlock)
    {
      v125 = aBlock;
    }

    else
    {
      v125 = [objc_allocWithZone(v124) init];
    }

    v126 = v931;
    dispatch thunk of WTStartupOptions.sessionUUID.getter();
    v127 = dispatch thunk of WTStartupOptions.requestedTool.getter();
    v909 = dispatch thunk of WTStartupOptions.prompt.getter();
    v920 = v128;
    if (v128)
    {
      if (dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter())
      {
LABEL_11:
        v129 = dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter();
        v905 = sub_100107A20(v129, 0, 0);
        v906 = v130;
        v907 = v131;
        v908 = v132;
        goto LABEL_14;
      }
    }

    else
    {
      v909 = qword_100277028;
      v920 = qword_100277030;

      if (dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter())
      {
        goto LABEL_11;
      }
    }

    v905 = 0;
    v906 = 0;
    v907 = 0;
    v908 = 255;
LABEL_14:
    v813 = v45;
    v922 = v113;
    dispatch thunk of WTStartupOptions.isFromHandoff.getter();
    v930 = v125;
    if (dispatch thunk of WTStartupOptions.isResumingFromModelEnrollment.getter())
    {
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 2;
    }

    else
    {
      v137 = sub_100107A20(v127, v909, v920);
      v139 = v138;
      v141 = v140;
      v142 = v126;
      v144 = v143;
      v133 = sub_1000FCA04(v142, v137, v138, v140, v143);
      v146 = v145;
      v135 = v147;
      v148 = v137;
      v149 = v139;
      v134 = v146;
      v136 = v150;
      sub_10000F428(v148, v149, v141, v144);
    }

    v925 = v133;
    v929 = v134;
    v924 = v135;
    v923 = v136;
    v151 = sub_10006CA84(v133, v134, v135, v136);
    if ((v153 & 0x100) == 0)
    {
      sub_10006CF60(v151, v152, v153);
    }

    v816 = v56;
    v823 = dispatch thunk of WTStartupOptions.editable.getter();
    v824 = dispatch thunk of WTStartupOptions.wantsInlineEditing.getter();
    v822 = dispatch thunk of WTStartupOptions.allowedResultOptions.getter();
    v910 = dispatch thunk of WTStartupOptions.smartReplyConfiguration.getter();
    v826 = dispatch thunk of WTStartupOptions.isForInputDashboard.getter();
    v819 = dispatch thunk of WTStartupOptions.isForAssistant.getter();
    v817 = dispatch thunk of WTStartupOptions.wantsFormSheetPresentation.getter();
    v815 = dispatch thunk of WTStartupOptions.formSheetUIType.getter();
    dispatch thunk of WTStartupOptions.suggestionUUID.getter();
    dispatch thunk of WTStartupOptions.contextUUID.getter();
    v820 = dispatch thunk of WTStartupOptions.isQuestionnairePopover.getter();
    v154 = dispatch thunk of WTStartupOptions.sourceResponderHorizontalSizeClass.getter();
    LODWORD(v155) = dispatch thunk of WTStartupOptions.isWindowingModeEnabled.getter();
    v814 = dispatch thunk of WTStartupOptions.isWebKitView.getter();
    v825 = dispatch thunk of WTStartupOptions.includesTextListMarkers.getter();
    dispatch thunk of WTStartupOptions.analyticsUUID.getter();
    v904 = dispatch thunk of WTStartupOptions.sourceUserInterfaceIdiom.getter();
    v827 = dispatch thunk of WTStartupOptions.bundleID.getter();
    v915 = v156;
    v828 = dispatch thunk of WTStartupOptions.sceneID.getter();
    v914 = v157;
    v158 = [objc_opt_self() _isWritingToolsHandlingKeyboardTracking];
    v159 = v922;
    if (v158)
    {
      v160 = [v123 keyboardSceneDelegate];
      if (v160)
      {
        v161 = v160;
        [v160 addVisibilityObserver:v159];
      }
    }

    v818 = type metadata accessor for WritingToolsModel(0);
    swift_allocObject();
    v162 = sub_1000AA9F8(1, 0);
    *&v159[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel] = v162;
    v921 = v162;

    if (v923 >= 2u && !(v924 | v929 | v925))
    {
      sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
      v163 = v895;
      v164 = v894;
      v165 = v896;
      v895[13](v894, enum case for DispatchQoS.QoSClass.default(_:), v896);
      v812 = static OS_dispatch_queue.global(qos:)();
      (v163[1])(v164, v165);
      *v939 = sub_1000F5488;
      *&v939[8] = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v938 = sub_1001256BC;
      *(&v938 + 1) = &unk_10024E790;
      v166 = _Block_copy(&aBlock);
      v167 = v897;
      static DispatchQoS.unspecified.getter();
      *&v933[0] = _swiftEmptyArrayStorage;
      sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
      sub_100058DD0();
      LODWORD(v896) = v155;
      v155 = v899;
      v895 = v154;
      v168 = v918;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v169 = v812;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v166);

      v170 = v155;
      LOBYTE(v155) = v896;
      v171 = v168;
      v154 = v895;
      v916[1](v170, v171);
      (v898)[1](v167, v900);
    }

    v172 = [objc_allocWithZone(UIWindow) initWithWindowScene:v123];
    [v172 _setDataOwnerForCopy:dispatch thunk of WTStartupOptions.sourceDataOwnerForCopy.getter()];
    [v172 _setDataOwnerForPaste:dispatch thunk of WTStartupOptions.sourceDataOwnerForPaste.getter()];
    [v172 _setDragDataOwner:dispatch thunk of WTStartupOptions.sourceDataOwnerForDrag.getter()];
    [v172 _setDropDataOwner:dispatch thunk of WTStartupOptions.sourceDataOwnerForDrop.getter()];
    v173 = *&v159[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window];
    *&v159[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window] = v172;
    v918 = v172;

    objc_opt_self();
    v174 = v912;
    v175 = swift_dynamicCastObjCClass();
    if (v175)
    {
      v176 = v174;
    }

    swift_unknownObjectWeakAssign();

    v177 = v174;
    v178 = [v174 _FBSScene];
    v179 = [v178 hostHandle];

    if (!v179)
    {
      __break(1u);
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v180 = v159;
    v900 = v50;
    v898 = v172;
    v916 = [v179 auditToken];

    [SceneDelegate supressAssistantBarInUIService]_0();
    v181 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel;

    sub_10016F778(7, 0);

    sub_10016F8F0(v154, 0);

    sub_10016FA78(v904, 0);

    v182 = *&v180[v181];
    if ((v155 & 1) == *(v182 + 57))
    {
      v904 = 0;
      *(v182 + 57) = v155 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&aBlock = v182;
      sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v904 = 0;
    }

    v184 = v923;
    v185 = v924;
    v186 = v921;
    v187 = v918;
    v188 = v919;
    v189 = v925;
    v190 = v929;
    sub_10000F3F4(v925, v929, v924, v923);
    sub_1000A79E4(v189, v190, v185, v184);
    if (dispatch thunk of WTStartupOptions.hostingMode.getter() == 1)
    {

      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&_mh_execute_header, v191, v192, "Handling full screen hosting request...", v193, 2u);
        v186 = v921;
      }

      v194 = v931;
      v899 = v181;
      if (v184)
      {
        if (v184 == 1)
        {
          v212 = sub_1000FAA48(v931, v916, v825 & 1, v928, v827, v915, v828, v914, 0);
          sub_1000A7578(v212, v213);
          v214 = v889;
          sub_1000081F8(v194, v889, &unk_100262450, &qword_1001CFAA0);
          v215 = v913;
          if ((*(v188 + 6))(v214, 1, v913) == 1)
          {
            sub_10000F500(v214, &unk_100262450, &qword_1001CFAA0);
            v216 = Logger.logObject.getter();
            v217 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v216, v217))
            {
              v218 = swift_slowAlloc();
              *v218 = 0;
              _os_log_impl(&_mh_execute_header, v216, v217, "Retrieve composition model for sessionUUID: nil)", v218, 2u);
            }
          }

          else
          {
            v245 = v821;
            (*(v188 + 4))(v821, v214, v215);
            v246 = v900;
            (*(v188 + 2))(v900, v245, v215);
            v247 = Logger.logObject.getter();
            v248 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v247, v248))
            {
              v249 = swift_slowAlloc();
              v904 = v249;
              v917 = swift_slowAlloc();
              *&aBlock = v917;
              *v249 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              LODWORD(v903) = v248;
              v250 = dispatch thunk of CustomStringConvertible.description.getter();
              v252 = v251;
              v253 = *(v919 + 8);
              v253(v246, v215);
              v254 = sub_10002510C(v250, v252, &aBlock);
              LOBYTE(v184) = v923;

              v255 = v904;
              *(v904 + 1) = v254;
              _os_log_impl(&_mh_execute_header, v247, v903, "Retrieve composition model for sessionUUID: %s", v255, 0xCu);
              sub_10000F4B4(v917);

              v253(v245, v215);
            }

            else
            {

              v345 = *(v188 + 1);
              v345(v246, v215);
              v345(v245, v215);
            }

            v186 = v921;
          }

          v346 = v891;
          v347 = type metadata accessor for TaskPriority();
          v348 = v890;
          (*(*(v347 - 8) + 56))(v890, 1, 1, v347);
          v349 = v911;
          sub_1000081F8(v194, v911, &unk_100262450, &qword_1001CFAA0);
          type metadata accessor for MainActor();
          v350 = v920;

          v351 = static MainActor.shared.getter();
          v352 = (*(v346 + 80) + 40) & ~*(v346 + 80);
          v211 = v186;
          v353 = swift_allocObject();
          v353[2] = v351;
          v353[3] = &protocol witness table for MainActor;
          v353[4] = v186;
          sub_1001066E4(v349, v353 + v352);
          v354 = (v353 + ((v63 + v352 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v354 = v909;
          v354[1] = v350;
          sub_10015C9C8(0, 0, v348, &unk_1001D8E58, v353);

          v195 = v925;
          v177 = v912;
          goto LABEL_149;
        }

        v195 = v925;
        if (v184 != 2 || v925 != 1 || v185 | v929)
        {
          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            *v210 = 0;
            _os_log_impl(&_mh_execute_header, v208, v209, "Requested full screen presentation without a mode specified!", v210, 2u);
          }

          v211 = v921;
          goto LABEL_149;
        }

        v196 = v872;
        sub_1000081F8(v931, v872, &unk_100262450, &qword_1001CFAA0);
        v197 = v913;
        if ((*(v188 + 6))(v196, 1, v913) == 1)
        {
          sub_10000F500(v196, &unk_100262450, &qword_1001CFAA0);
        }

        else
        {
          v367 = v867;
          (*(v188 + 4))(v867, v196, v197);
          if (qword_10025A890 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v368 = qword_100277358;
          if (*(qword_100277358 + 16))
          {
            v369 = sub_100005044(v367);
            if (v370)
            {
              v371 = *(*(v368 + 56) + 8 * v369);
              swift_endAccess();
              v372 = *(v188 + 1);

              v372(v367, v197);
              swift_unknownObjectWeakAssign();
LABEL_148:
              v211 = v921;
              sub_1000A71C8(v371, v373);
              goto LABEL_149;
            }
          }

          swift_endAccess();
          (*(v188 + 1))(v367, v197);
        }

        type metadata accessor for ProofreadingModel(0);
        swift_allocObject();
        v371 = sub_1001A8C78();

        v415 = v916;
        v416 = v916;
        sub_100035E70(v415);
        swift_unknownObjectWeakAssign();
        sub_100036534(1, 0, 0, 2);
        v417 = v911;
        sub_1000081F8(v928, v911, &unk_100262450, &qword_1001CFAA0);
        v418 = type metadata accessor for WritingToolsAnalytics(0);
        swift_allocObject();
        v419 = sub_100009B2C(v417);
        *(&v938 + 1) = v418;
        *v939 = &off_10024B270;
        *&aBlock = v419;
        v420 = swift_getKeyPath();
        __chkstk_darwin(v420);
        *&v933[0] = v371;
        sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
        v421 = v915;

        sub_100036040(v827, v421);
        v422 = v914;

        sub_100036200(v828, v422);

        LOBYTE(v184) = v923;
        goto LABEL_148;
      }

      v219 = v888;
      sub_1000081F8(v931, v888, &unk_100262450, &qword_1001CFAA0);
      v220 = v913;
      if ((*(v188 + 6))(v219, 1, v913) == 1)
      {

        sub_10000F500(v219, &unk_100262450, &qword_1001CFAA0);
      }

      else
      {
        v270 = v875;
        (*(v188 + 4))(v875, v219, v220);
        v271 = qword_10025A788;

        if (v271 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v272 = qword_1002770A8;
        if (*(qword_1002770A8 + 16))
        {
          v273 = sub_100005044(v270);
          if (v274)
          {
            v275 = *(*(v272 + 56) + 8 * v273);
            swift_endAccess();
            v276 = v816;
            (*(v188 + 2))(v816, v270, v913);

            v277 = v188;
            v278 = Logger.logObject.getter();
            v279 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v278, v279))
            {
              v280 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              *&aBlock = v184;
              *v280 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              LODWORD(v917) = v279;
              v281 = v913;
              v282 = dispatch thunk of CustomStringConvertible.description.getter();
              v284 = v283;
              v285 = v277[1];
              v285(v276, v281);
              v286 = sub_10002510C(v282, v284, &aBlock);

              *(v280 + 4) = v286;
              _os_log_impl(&_mh_execute_header, v278, v917, "Setting new delegate for RewritingModel for sessionUUID: %s", v280, 0xCu);
              sub_10000F4B4(v184);
              LOBYTE(v184) = v923;

              v186 = v921;

              v195 = v925;
              sub_10000F428(v925, v929, v924, 0);
              v285(v875, v281);
              v177 = v912;
            }

            else
            {

              v195 = v925;
              sub_10000F428(v925, v929, v924, 0);
              v506 = v277[1];
              v507 = v913;
              v506(v276, v913);
              v506(v875, v507);
            }

            swift_unknownObjectWeakAssign();
LABEL_99:
            sub_1000A73A0(v275, v312);
            v211 = v186;
LABEL_149:
            v423 = v922;
            v424 = *(v922 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
            v425 = *&v899[v922];
            v426 = type metadata accessor for FullscreenViewController();
            v427 = objc_allocWithZone(v426);
            v428 = OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate;
            *&v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate] = 0;
            *&v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_UCBTrackingHeight] = 0x4051800000000000;
            *&v427[v428] = v423;
            *&v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsModel] = v211;
            *&v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_commonUIManager] = v424;
            *&v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel] = v425;
            *&v933[0] = v425;
            type metadata accessor for PresentationModel(0);
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v429 = v423;
            State.init(wrappedValue:)();
            v430 = aBlock;
            v431 = &v427[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView];
            *v431 = v211;
            *(v431 + 1) = v424;
            *(v431 + 1) = v430;
            v932.receiver = v427;
            v932.super_class = v426;
            v432 = objc_msgSendSuper2(&v932, "initWithNibName:bundle:", 0, 0);

            v433 = v918;
            [v918 setRootViewController:v432];

            v185 = v924;
            v187 = v433;
            goto LABEL_269;
          }
        }

        swift_endAccess();
        (*(v188 + 1))(v270, v913);
      }

      v287 = v194;
      v288 = v884;
      sub_1000081F8(v287, v884, &unk_100262450, &qword_1001CFAA0);
      v289 = Logger.logObject.getter();
      v290 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        *&aBlock = v292;
        *v291 = 136315138;
        sub_1000081F8(v288, v911, &unk_100262450, &qword_1001CFAA0);
        v293 = String.init<A>(describing:)();
        v295 = v294;
        sub_10000F500(v288, &unk_100262450, &qword_1001CFAA0);
        v296 = v293;
        v177 = v912;
        v297 = sub_10002510C(v296, v295, &aBlock);

        *(v291 + 4) = v297;
        _os_log_impl(&_mh_execute_header, v289, v290, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v291, 0xCu);
        sub_10000F4B4(v292);
        v185 = v924;
      }

      else
      {

        sub_10000F500(v288, &unk_100262450, &qword_1001CFAA0);
      }

      v298 = v925;
      type metadata accessor for RewritingModel(0);
      swift_allocObject();
      v275 = sub_1000C32AC();

      sub_100036534(v298, v929, v185, 0);
      swift_unknownObjectWeakAssign();
      v299 = v916;
      v300 = v916;

      sub_100035E70(v299);
      v301 = v828;
      if ((v823 & 1) == *(v275 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
      {
        *(v275 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v823 & 1;
      }

      else
      {
        v302 = swift_getKeyPath();
        __chkstk_darwin(v302);
        *&aBlock = v275;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if ((v824 & 1) == *(v275 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
      {
        *(v275 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v824 & 1;
      }

      else
      {
        v303 = swift_getKeyPath();
        __chkstk_darwin(v303);
        *&aBlock = v275;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if (*(v275 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v822)
      {
        v304 = swift_getKeyPath();
        __chkstk_darwin(v304);
        *&aBlock = v275;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if ((v825 & 1) == *(v275 + 64))
      {
        *(v275 + 64) = v825 & 1;
      }

      else
      {
        v305 = swift_getKeyPath();
        __chkstk_darwin(v305);
        *&aBlock = v275;
        sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v306 = v911;
      sub_1000081F8(v928, v911, &unk_100262450, &qword_1001CFAA0);
      v307 = type metadata accessor for WritingToolsAnalytics(0);
      swift_allocObject();
      v308 = sub_100009B2C(v306);
      *(&v938 + 1) = v307;
      *v939 = &off_10024B270;
      *&aBlock = v308;
      v309 = swift_getKeyPath();
      __chkstk_darwin(v309);
      *&v933[0] = v275;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
      v310 = v915;

      sub_100036040(v827, v310);
      v311 = v914;

      sub_100036200(v301, v311);
      v195 = v298;
      sub_10000F428(v298, v929, v924, 0);

      LOBYTE(v184) = v923;
      v186 = v921;
      goto LABEL_99;
    }

    if (v826)
    {

      if (v184)
      {
        v195 = v925;
        if (v184 == 2)
        {
          v198 = v185 | v929;
          if (v925 == 1 && !v198)
          {
            v199 = v868;
            sub_1000081F8(v931, v868, &unk_100262450, &qword_1001CFAA0);
            v200 = v913;
            if ((*(v188 + 6))(v199, 1, v913) == 1)
            {
              sub_10000F500(v199, &unk_100262450, &qword_1001CFAA0);
              v201 = v915;
            }

            else
            {
              v434 = v863;
              (*(v188 + 4))(v863, v199, v200);
              v201 = v915;
              if (qword_10025A890 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v435 = qword_100277358;
              if (*(qword_100277358 + 16))
              {
                v436 = sub_100005044(v434);
                if (v437)
                {
                  v438 = *(*(v435 + 56) + 8 * v436);
                  swift_endAccess();
                  v439 = *(v188 + 1);

                  v439(v434, v200);
                  v440 = v922;
                  swift_unknownObjectWeakAssign();
LABEL_168:
                  v481 = v921;
                  sub_1000A71C8(v438, v441);
                  swift_getKeyPath();
                  *&aBlock = v481;
                  sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v482 = *(v481 + 16);
                  type metadata accessor for PresentationModel(0);
                  sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
                  v483 = v440;

                  v484 = Environment.init<A>(_:)();
                  v486 = v485;
                  *&v933[0] = v482;
                  type metadata accessor for ProofreadingModel(0);

                  State.init(wrappedValue:)();
                  v487 = aBlock;
                  LOBYTE(v933[0]) = v819 & 1;
                  State.init(wrappedValue:)();

                  v488 = aBlock;
                  v489 = *(&aBlock + 1);
                  v922 = v484;
                  *&aBlock = v484;
                  BYTE8(aBlock) = v486 & 1;
                  v938 = v487;
                  v939[0] = v488;
                  *&v939[8] = v489;
                  sub_1001064A8();

                  v490 = v877;
                  View.environment<A>(_:)();

                  (*(v878 + 16))(v870, v490, v879);
                  v491 = objc_allocWithZone(sub_10000341C(&qword_100262560, &qword_1001D8E40));
                  v492 = UIHostingController.init(rootView:)();
                  UIHostingController.safeAreaRegions.setter();
                  v493 = v492;
                  v494 = [v493 view];
                  if (!v494)
                  {
LABEL_310:
                    __break(1u);
                    goto LABEL_311;
                  }

                  v495 = v494;
                  [v494 setBackgroundColor:0];

                  v496 = [v493 view];
                  v187 = v918;
                  if (!v496)
                  {
LABEL_311:
                    __break(1u);
                    goto LABEL_312;
                  }

                  v497 = v496;
                  v498 = [v496 layer];

                  [v498 setHitTestsAsOpaque:1];
                  v499 = [v493 view];
                  if (!v499)
                  {
LABEL_312:
                    __break(1u);
LABEL_313:
                    swift_endAccess();
                    __break(1u);
LABEL_314:
                    __break(1u);
                    goto LABEL_315;
                  }

                  v500 = v499;
                  [v499 setTranslatesAutoresizingMaskIntoConstraints:0];

                  (*(v878 + 8))(v877, v879);
                  [v187 setRootViewController:v493];

                  j__swift_release(v922, v486 & 1);

                  goto LABEL_266;
                }
              }

              swift_endAccess();
              (*(v188 + 1))(v434, v200);
            }

            type metadata accessor for ProofreadingModel(0);
            swift_allocObject();
            v438 = sub_1001A8C78();
            v474 = v916;
            v475 = v916;

            sub_100035E70(v474);
            v440 = v922;
            swift_unknownObjectWeakAssign();
            sub_100036534(1, 0, 0, 2);
            v476 = v911;
            sub_1000081F8(v928, v911, &unk_100262450, &qword_1001CFAA0);
            v477 = type metadata accessor for WritingToolsAnalytics(0);
            swift_allocObject();
            v478 = sub_100009B2C(v476);
            *(&v938 + 1) = v477;
            *v939 = &off_10024B270;
            *&aBlock = v478;
            v479 = swift_getKeyPath();
            __chkstk_darwin(v479);
            *&v933[0] = v438;
            sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);

            sub_100036040(v827, v201);
            v480 = v914;

            sub_100036200(v828, v480);

            goto LABEL_168;
          }

          if (v925 != 2 || v198)
          {
            goto LABEL_269;
          }

          if (qword_10025A6E8 != -1)
          {
            swift_once();
          }

          sub_10000F34C(v873, qword_100276F20);
          v313 = static os_log_type_t.debug.getter();
          v314 = v922;
          v315 = Logger.logObject.getter();

          v316 = os_log_type_enabled(v315, v313);
          v317 = v910;
          v318 = v869;
          if (v316)
          {
            v319 = swift_slowAlloc();
            v320 = swift_slowAlloc();
            *v319 = 138412290;
            *(v319 + 4) = v314;
            *v320 = v314;
            v321 = v314;
            _os_log_impl(&_mh_execute_header, v315, v313, "SceneDelegate %@: creating SmartReplyInputDashboardView with delegate=self", v319, 0xCu);
            sub_10000F500(v320, &unk_10025D580, &qword_1001CFA60);
          }

          sub_1000081F8(v931, v318, &unk_100262450, &qword_1001CFAA0);
          if (!v317)
          {
            goto LABEL_314;
          }

          v322 = v317;
          v323 = v314;
          v324 = v916;

          v325 = Image.init(systemName:)();
          v326 = *(v919 + 48);
          if (v326(v318, 1, v913) == 1)
          {
          }

          else
          {
            v501 = qword_10025A740;

            if (v501 != -1)
            {
              swift_once();
            }

            v502 = v841;
            sub_1000081F8(v318, v841, &unk_100262450, &qword_1001CFAA0);
            if (v326(v502, 1, v913) == 1)
            {
              goto LABEL_335;
            }

            swift_beginAccess();
            if (*(qword_100277018 + 16))
            {
              sub_100005044(v502);
              if (v503)
              {
                swift_endAccess();
                v504 = *(v919 + 8);

                v504(v502, v913);

LABEL_199:
                *&v933[0] = v505;
                type metadata accessor for QuestionnaireModel(0);
                State.init(wrappedValue:)();
                v533 = aBlock;

                sub_10000341C(&qword_10025B648, &qword_1001D0050);
                State.wrappedValue.getter();
                sub_100036040(v827, v915);

                aBlock = v533;
                State.wrappedValue.getter();
                sub_100036200(v828, v914);

                sub_10000F500(v869, &unk_100262450, &qword_1001CFAA0);

                aBlock = v533;
                *&v938 = v325;
                v534 = objc_allocWithZone(sub_10000341C(&qword_100262550, &qword_1001D8E10));

                v535 = UIHostingController.init(rootView:)();
                UIHostingController.safeAreaRegions.setter();
                v536 = v535;
                v537 = [v536 view];
                if (!v537)
                {
LABEL_315:
                  __break(1u);
                  goto LABEL_316;
                }

                v538 = v537;
                [v537 setBackgroundColor:0];

                v539 = [v536 view];
                v177 = v912;
                if (!v539)
                {
LABEL_316:
                  __break(1u);
                  goto LABEL_317;
                }

                v540 = v539;
                v541 = [v539 layer];

                [v541 setHitTestsAsOpaque:1];
                v542 = [v536 view];
                if (!v542)
                {
LABEL_317:
                  __break(1u);
                  goto LABEL_318;
                }

                v543 = v542;
                [v542 setTranslatesAutoresizingMaskIntoConstraints:0];

                [v187 setRootViewController:v536];

                goto LABEL_267;
              }
            }

            swift_endAccess();
            (*(v919 + 8))(v502, v913);
          }

          type metadata accessor for QuestionnaireModel(0);
          swift_allocObject();
          v532 = v323;
          sub_10004F8B0(v322, v314, v324);
          goto LABEL_199;
        }

LABEL_269:
        if (qword_10025A800 != -1)
        {
          swift_once();
        }

        v751 = v930;
        if (byte_1002771B0 != 1 || (v752 = [v187 rootViewController]) == 0)
        {

          sub_1000278C0(v905, v906, v907, v908);

          sub_10000F428(v195, v929, v185, v184);
LABEL_278:
          v756 = v916;
          [v187 makeKeyAndVisible];

          sub_10000F500(v928, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v926, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v927, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v931, &unk_100262450, &qword_1001CFAA0);
          return;
        }

        v753 = v752;
        v754 = [v752 view];

        if (v754)
        {
          sub_1000278C0(v905, v906, v907, v908);

          sub_10000F428(v195, v929, v185, v184);
          sub_1000081B0(0, &qword_100262510, UIColor_ptr);
          if (qword_10025A7F8 != -1)
          {
            swift_once();
          }

          v755 = UIColor.init(_:)();
          [v754 setTintColor:v755];

          goto LABEL_278;
        }

        goto LABEL_303;
      }

      v242 = v876;
      sub_1000081F8(v931, v876, &unk_100262450, &qword_1001CFAA0);
      v243 = v913;
      v244 = (*(v188 + 6))(v242, 1, v913);
      v195 = v925;
      if (v244 == 1)
      {

        sub_10000F500(v242, &unk_100262450, &qword_1001CFAA0);
      }

      else
      {
        (*(v188 + 4))(v882, v242, v243);
        v327 = qword_10025A788;

        if (v327 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v328 = qword_1002770A8;
        v329 = v882;
        if (*(qword_1002770A8 + 16))
        {
          v330 = sub_100005044(v882);
          if (v331)
          {
            v332 = *(v328 + 56);
            v333 = v329;
            v334 = *(v332 + 8 * v330);
            swift_endAccess();
            v335 = v813;
            (*(v188 + 2))(v813, v333, v913);

            v336 = Logger.logObject.getter();
            LODWORD(v917) = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v336, v917))
            {
              v337 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              *&aBlock = v184;
              *v337 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v911 = v336;
              v338 = v913;
              v339 = dispatch thunk of CustomStringConvertible.description.getter();
              v341 = v340;
              v342 = *(v188 + 1);
              v342(v335, v338);
              v343 = sub_10002510C(v339, v341, &aBlock);
              v195 = v925;

              *(v337 + 4) = v343;
              v344 = v911;
              _os_log_impl(&_mh_execute_header, v911, v917, "Setting new delegate for RewritingModel for sessionUUID: %s", v337, 0xCu);
              sub_10000F4B4(v184);
              LOBYTE(v184) = v923;

              v186 = v921;

              sub_10000F428(v195, v929, v924, 0);
              v342(v882, v338);
              v177 = v912;
            }

            else
            {

              sub_10000F428(v195, v929, v924, 0);
              v544 = *(v188 + 1);
              v545 = v335;
              v546 = v913;
              v544(v545, v913);
              v544(v882, v546);
            }

            swift_unknownObjectWeakAssign();
LABEL_142:
            sub_1000A73A0(v334, v401);
            swift_getKeyPath();
            *&aBlock = v186;
            sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            sub_10019B2E4();
            v933[2] = *v939;
            v933[3] = *&v939[16];
            v934 = v940;
            v933[1] = v938;
            v933[0] = aBlock;
            type metadata accessor for PresentationModel(0);
            sub_1001064FC();
            sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);

            v402 = v892;
            View.environment<A>(_:)();

            v403 = v402;
            v404 = v881;
            (*(v893 + 16))(v880, v403, v881);
            v405 = objc_allocWithZone(sub_10000341C(&unk_100262570, &qword_1001D8E48));
            v406 = UIHostingController.init(rootView:)();
            UIHostingController.safeAreaRegions.setter();
            v407 = v406;
            v408 = [v407 view];
            if (!v408)
            {
LABEL_307:
              __break(1u);
              goto LABEL_308;
            }

            v409 = v408;
            [v408 setBackgroundColor:0];

            v410 = [v407 view];
            if (!v410)
            {
LABEL_308:
              __break(1u);
              goto LABEL_309;
            }

            v411 = v410;
            v412 = [v410 layer];

            [v412 setHitTestsAsOpaque:1];
            v413 = [v407 view];
            v185 = v924;
            if (!v413)
            {
LABEL_309:
              __break(1u);
              goto LABEL_310;
            }

            v414 = v413;
            [v413 setTranslatesAutoresizingMaskIntoConstraints:0];

            (*(v893 + 8))(v892, v404);
            [v187 setRootViewController:v407];

            sub_100106550(&aBlock);
            goto LABEL_269;
          }
        }

        swift_endAccess();
        (*(v188 + 1))(v329, v913);
      }

      v374 = v874;
      sub_1000081F8(v931, v874, &unk_100262450, &qword_1001CFAA0);
      v375 = Logger.logObject.getter();
      v376 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v375, v376))
      {
        v377 = swift_slowAlloc();
        v378 = swift_slowAlloc();
        *&aBlock = v378;
        *v377 = 136315138;
        sub_1000081F8(v374, v911, &unk_100262450, &qword_1001CFAA0);
        v379 = String.init<A>(describing:)();
        v381 = v380;
        v382 = v374;
        v383 = v925;
        sub_10000F500(v382, &unk_100262450, &qword_1001CFAA0);
        v384 = v379;
        v177 = v912;
        v385 = sub_10002510C(v384, v381, &aBlock);
        v195 = v383;

        *(v377 + 4) = v385;
        _os_log_impl(&_mh_execute_header, v375, v376, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v377, 0xCu);
        sub_10000F4B4(v378);
        v185 = v924;
      }

      else
      {

        sub_10000F500(v374, &unk_100262450, &qword_1001CFAA0);
      }

      type metadata accessor for RewritingModel(0);
      swift_allocObject();
      v334 = sub_1000C32AC();

      sub_100036534(v195, v929, v185, 0);
      swift_unknownObjectWeakAssign();
      v386 = v916;
      v387 = v916;

      sub_100035E70(v386);
      if ((v823 & 1) == *(v334 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
      {
        *(v334 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v823 & 1;
      }

      else
      {
        v388 = swift_getKeyPath();
        __chkstk_darwin(v388);
        *&aBlock = v334;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        v389 = v904;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v904 = v389;
      }

      if ((v824 & 1) == *(v334 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
      {
        *(v334 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v824 & 1;
      }

      else
      {
        v390 = swift_getKeyPath();
        __chkstk_darwin(v390);
        *&aBlock = v334;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        v391 = v904;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v904 = v391;
      }

      if (*(v334 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v822)
      {
        v392 = swift_getKeyPath();
        __chkstk_darwin(v392);
        *&aBlock = v334;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        v393 = v904;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v904 = v393;
      }

      if ((v825 & 1) == *(v334 + 64))
      {
        *(v334 + 64) = v825 & 1;
      }

      else
      {
        v394 = swift_getKeyPath();
        __chkstk_darwin(v394);
        *&aBlock = v334;
        sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v395 = v911;
      sub_1000081F8(v928, v911, &unk_100262450, &qword_1001CFAA0);
      v396 = type metadata accessor for WritingToolsAnalytics(0);
      swift_allocObject();
      v397 = sub_100009B2C(v395);
      *(&v938 + 1) = v396;
      *v939 = &off_10024B270;
      *&aBlock = v397;
      v398 = swift_getKeyPath();
      __chkstk_darwin(v398);
      *&v933[0] = v334;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
      v399 = v915;

      sub_100036040(v827, v399);
      v400 = v914;

      sub_100036200(v828, v400);
      sub_10000F428(v195, v929, v924, 0);

      LOBYTE(v184) = v923;
      v186 = v921;
      goto LABEL_142;
    }

    v184 = *(v188 + 6);
    v202 = v913;
    if ((v184)(v927, 1, v913) != 1)
    {

      v221 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v222 = v902;
      sub_1000081F8(v931, v902, &unk_100262450, &qword_1001CFAA0);
      if ((v184)(v222, 1, v202) == 1)
      {
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      v223 = v903;
      sub_1000081F8(v927, v903, &unk_100262450, &qword_1001CFAA0);
      v224 = (v184)(v223, 1, v202);
      v225 = v901;
      if (v224 == 1)
      {
LABEL_305:
        __break(1u);
        goto LABEL_306;
      }

      sub_1000081F8(v926, v901, &unk_100262450, &qword_1001CFAA0);
      if ((v184)(v225, 1, v202) == 1)
      {
LABEL_306:
        __break(1u);
        goto LABEL_307;
      }

      v226 = v202;
      v922 = type metadata accessor for SuggestionViewController();
      v227 = objc_allocWithZone(v922);
      v228 = &v227[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler];
      *v228 = sub_100106484;
      v228[1] = v221;
      v184 = v919;
      v229 = *(v919 + 16);
      v230 = v885;
      v229(v885, v902, v202);
      v231 = v886;
      v229(v886, v903, v202);
      v232 = v887;
      v233 = v901;
      v229(v887, v901, v202);
      v234 = v916;
      swift_retain_n();
      v235 = sub_10016E69C(v230, v234, v231, v232);
      v236 = &v227[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView];
      *v236 = v235;
      v236[1] = v237;
      v236[2] = v238;
      v236[3] = v239;
      v935.receiver = v227;
      v935.super_class = v922;
      v240 = objc_msgSendSuper2(&v935, "initWithNibName:bundle:", 0, 0);

      v241 = *(v184 + 8);
      v241(v233, v226);
      v241(v903, v226);
      v241(v902, v226);
      v187 = v918;
      [v918 setRootViewController:v240];

      LOBYTE(v184) = v923;
      v185 = v924;
      v195 = v925;
      v177 = v912;
      goto LABEL_269;
    }

    if (dispatch thunk of WTStartupOptions.requestPromptEntry.getter())
    {

      v203 = swift_allocObject();
      v184 = v922;
      swift_unknownObjectWeakInit();
      v204 = sub_1000FAA48(v931, v916, v825 & 1, v928, v827, v915, v828, v914, 0);
      v205 = objc_allocWithZone(type metadata accessor for PromptEntryViewController());
      v206 = v184;

      v207 = sub_1000AFD1C(sub_100106A38, v203, v184, v204);
      [v187 setRootViewController:v207];

      LOBYTE(v184) = v923;
      v195 = v925;
      goto LABEL_269;
    }

    if (v820)
    {

      if (qword_10025A6E8 != -1)
      {
        swift_once();
      }

      sub_10000F34C(v873, qword_100276F20);
      v256 = static os_log_type_t.debug.getter();
      v257 = v922;
      v258 = Logger.logObject.getter();

      v259 = os_log_type_enabled(v258, v256);
      v260 = v828;
      if (v259)
      {
        v261 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        *v261 = 138412290;
        *(v261 + 4) = v257;
        *v262 = v257;
        v263 = v257;
        _os_log_impl(&_mh_execute_header, v258, v256, "SceneDelegate %@: creating QuestionnaireOnlyViewController with delegate=self", v261, 0xCu);
        sub_10000F500(v262, &unk_10025D580, &qword_1001CFA60);
        v185 = v924;
      }

      v264 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v265 = v931;
      v266 = v913;
      if ((v184)(v931, 1, v913) == 1)
      {
        v267 = Logger.logObject.getter();
        v268 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          *v269 = 0;
          _os_log_impl(&_mh_execute_header, v267, v268, "We do not have a sessionUUID, bail.", v269, 2u);
        }

        LOBYTE(v184) = v923;
        goto LABEL_268;
      }

      v442 = v845;
      sub_1000081F8(v265, v845, &unk_100262450, &qword_1001CFAA0);
      if ((v184)(v442, 1, v266) == 1)
      {
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v443 = type metadata accessor for QuestionnaireOnlyViewController();
      v444 = objc_allocWithZone(v443);
      v445 = &v444[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_preferredContentSizeHandler];
      *v445 = sub_100106A38;
      v445[1] = v264;
      v446 = qword_10025A740;
      v922 = v916;
      swift_retain_n();
      v195 = v925;
      if (v446 != -1)
      {
        swift_once();
      }

      v447 = v260;
      swift_beginAccess();
      v448 = qword_100277018;
      if (!*(qword_100277018 + 16))
      {
        goto LABEL_313;
      }

      v449 = sub_100005044(v442);
      if ((v450 & 1) == 0)
      {
        goto LABEL_313;
      }

      v451 = *(*(v448 + 56) + 8 * v449);
      swift_endAccess();
      *&v444[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_questionnaireModel] = v451;
      v452 = v442;
      v453 = v915;

      swift_retain_n();
      sub_100036040(v827, v453);

      v184 = v914;

      sub_100036200(v447, v184);

      v936.receiver = v444;
      v936.super_class = v443;
      v454 = objc_msgSendSuper2(&v936, "initWithNibName:bundle:", 0, 0);

      (*(v919 + 8))(v452, v913);
      v187 = v918;
      [v918 setRootViewController:v454];

      LOBYTE(v184) = v923;
LABEL_161:
      v185 = v924;
      goto LABEL_269;
    }

    if (v817)
    {

      v355 = v922;
      v356 = Logger.logObject.getter();
      v357 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        *&aBlock = v360;
        *v358 = 138412546;
        *(v358 + 4) = v355;
        *v359 = v355;
        *(v358 + 12) = 2080;
        v361 = v815;
        *&v933[0] = v815;
        type metadata accessor for WTFormSheetUIType(0);
        v362 = v355;
        v363 = String.init<A>(describing:)();
        v365 = sub_10002510C(v363, v364, &aBlock);

        *(v358 + 14) = v365;
        v177 = v912;
        _os_log_impl(&_mh_execute_header, v356, v357, "SceneDelegate %@: creating form sheet presentation with view: %s", v358, 0x16u);
        sub_10000F500(v359, &unk_10025D580, &qword_1001CFA60);

        sub_10000F4B4(v360);
        v185 = v924;

        v184 = v923;
        v195 = v925;
        v366 = v828;
      }

      else
      {

        v184 = v923;
        v195 = v925;
        v366 = v828;
        v361 = v815;
      }

      if (v361 == 2)
      {
        v771 = dispatch thunk of WTStartupOptions.shareSheetPayload.getter();
        if (!v771)
        {
          v807 = Logger.logObject.getter();
          v808 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v807, v808))
          {
            v809 = swift_slowAlloc();
            *v809 = 0;
            _os_log_impl(&_mh_execute_header, v807, v808, "Share sheet payload not found.", v809, 2u);
          }

          goto LABEL_269;
        }

        v772 = v771;
        type metadata accessor for CompositionModel(0);
        sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
        v773 = v772;
        v774 = Environment.init<A>(_:)();
        LOBYTE(v772) = v775;
        LOBYTE(v933[0]) = 1;
        State.init(wrappedValue:)();
        v776 = aBlock;
        v777 = *(&aBlock + 1);
        *&aBlock = v773;
        *(&aBlock + 1) = v774;
        LOBYTE(v938) = v772 & 1;
        BYTE8(v938) = v776;
        *v939 = v777;
        *&v939[8] = xmmword_1001D8860;
        v778 = v366;
        v779 = v773;
        sub_1000FAA48(v931, v916, v825 & 1, v928, v827, v915, v778, v914, 0);
        sub_1001063F8();
        v780 = v835;
        View.environment<A>(_:)();

        v781 = v780;
        v782 = v830;
        (*(v836 + 16))(v829, v781, v830);
        v783 = objc_allocWithZone(sub_10000341C(&qword_100262528, &qword_1001D8DF8));
        v784 = UIHostingController.init(rootView:)();
        UIHostingController.safeAreaRegions.setter();
        v785 = v784;
        v786 = [v785 view];
        if (!v786)
        {
LABEL_344:
          __break(1u);
          goto LABEL_345;
        }

        v787 = v786;
        [v786 setBackgroundColor:0];

        v788 = [v785 view];
        LOBYTE(v184) = v923;
        v195 = v925;
        if (!v788)
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v789 = v788;
        v790 = [v788 layer];

        [v790 setHitTestsAsOpaque:1];
        v791 = [v785 view];
        if (!v791)
        {
LABEL_346:
          __break(1u);
          return;
        }

        v792 = v791;
        [v791 setTranslatesAutoresizingMaskIntoConstraints:0];

        (*(v836 + 8))(v835, v782);
        [v187 setRootViewController:v785];

        goto LABEL_161;
      }

      if (v361 == 1)
      {
        *(&v938 + 1) = type metadata accessor for SceneDelegate(0);
        *v939 = sub_1001068A4(&qword_100262530, type metadata accessor for SceneDelegate, "y\r\a");
        *&aBlock = v355;
        v757 = v355;
        GenerativeAssistantSettingsOnboarding.init(enablementDelegate:)();
        sub_1000FAA48(v931, v916, v825 & 1, v928, v827, v915, v366, v914, 0);
        type metadata accessor for CompositionModel(0);
        sub_1001068A4(&qword_100262538, &type metadata accessor for GenerativeAssistantSettingsOnboarding, &protocol conformance descriptor for GenerativeAssistantSettingsOnboarding);
        sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
        v758 = v838;
        v759 = v833;
        v760 = v837;
        View.environment<A>(_:)();

        (*(v832 + 8))(v760, v759);
        v761 = v834;
        (*(v839 + 16))(v831, v758, v834);
        v762 = objc_allocWithZone(sub_10000341C(&unk_100262540, &unk_1001D8E00));
        v763 = UIHostingController.init(rootView:)();
        UIHostingController.safeAreaRegions.setter();
        v460 = v763;
        v764 = [v460 view];
        if (!v764)
        {
LABEL_336:
          __break(1u);
          goto LABEL_337;
        }

        v765 = v764;
        [v764 setBackgroundColor:0];

        v766 = [v460 view];
        if (!v766)
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

        v767 = v766;
        v768 = [v766 layer];

        [v768 setHitTestsAsOpaque:1];
        v769 = [v460 view];
        if (!v769)
        {
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }

        v770 = v769;
        [v769 setTranslatesAutoresizingMaskIntoConstraints:0];

        (*(v839 + 8))(v838, v761);
      }

      else
      {
        if (v361)
        {
          v793 = Logger.logObject.getter();
          v794 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v793, v794))
          {
            v795 = swift_slowAlloc();
            v796 = swift_slowAlloc();
            *&aBlock = v796;
            *v795 = 136315138;
            *&v933[0] = v815;
            type metadata accessor for WTFormSheetUIType(0);
            v797 = String.init<A>(describing:)();
            v184 = sub_10002510C(v797, v798, &aBlock);
            v185 = v924;

            *(v795 + 4) = v184;
            LOBYTE(v184) = v923;
            _os_log_impl(&_mh_execute_header, v793, v794, "No valid view assignment for enum: %s found.", v795, 0xCu);
            sub_10000F4B4(v796);
          }

          v799 = objc_allocWithZone(sub_10000341C(&qword_100262518, &qword_1001D8DF0));
          v800 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v460 = v800;
          v801 = [v460 view];
          if (!v801)
          {
            goto LABEL_338;
          }

          v802 = v801;
          [v801 setBackgroundColor:0];

          v803 = [v460 view];
          if (!v803)
          {
LABEL_341:
            __break(1u);
            goto LABEL_342;
          }

          v804 = v803;
          v805 = [v803 layer];

          [v805 setHitTestsAsOpaque:1];
          v514 = [v460 view];
          if (!v514)
          {
LABEL_343:
            __break(1u);
            goto LABEL_344;
          }
        }

        else
        {
          v508 = objc_allocWithZone(sub_10000341C(&qword_100262518, &qword_1001D8DF0));
          v509 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v460 = v509;
          v510 = [v460 view];
          if (!v510)
          {
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          v511 = v510;
          [v510 setBackgroundColor:0];

          v512 = [v460 view];
          if (!v512)
          {
LABEL_340:
            __break(1u);
            goto LABEL_341;
          }

          v513 = v512;
          v188 = [v512 layer];

          [v188 setHitTestsAsOpaque:1];
          v514 = [v460 view];
          if (!v514)
          {
            __break(1u);
            goto LABEL_188;
          }
        }

        v806 = v514;
        [v514 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      [v187 setRootViewController:v460];

      goto LABEL_269;
    }

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v455 = sub_10000F34C(v873, qword_100276F20);
    v456 = static os_log_type_t.debug.getter();
    v177 = v931;
    v187 = v843;
    sub_1000081F8(v931, v843, &unk_100262450, &qword_1001CFAA0);
    v457 = v922;
    v901 = v455;
    v458 = Logger.logObject.getter();

    LODWORD(v903) = v456;
    v459 = v456;
    v460 = v458;
    v461 = os_log_type_enabled(v458, v459);
    v902 = v457;
    v899 = v181;
    if (v461)
    {
      v462 = swift_slowAlloc();
      v463 = swift_slowAlloc();
      v464 = swift_slowAlloc();
      *&aBlock = v464;
      *v462 = 138412546;
      *(v462 + 4) = v457;
      *v463 = v457;
      *(v462 + 12) = 2080;
      sub_1000081F8(v187, v911, &unk_100262450, &qword_1001CFAA0);
      v465 = v457;
      v188 = v919;
      v466 = String.init<A>(describing:)();
      v467 = v187;
      v468 = v466;
      v470 = v469;
      sub_10000F500(v467, &unk_100262450, &qword_1001CFAA0);
      v471 = v468;
      v472 = v931;
      v473 = sub_10002510C(v471, v470, &aBlock);

      *(v462 + 14) = v473;
      v177 = v472;
      _os_log_impl(&_mh_execute_header, v460, v903, "SceneDelegate %@: creating WritingToolsView with delegate=self for sessionUUID: %s", v462, 0x16u);
      sub_10000F500(v463, &unk_10025D580, &qword_1001CFA60);

      sub_10000F4B4(v464);
      v185 = v924;

      goto LABEL_189;
    }

LABEL_188:

    sub_10000F500(v187, &unk_100262450, &qword_1001CFAA0);
LABEL_189:
    v515 = v862;
    v516 = v846;
    v517 = v844;
    sub_1000081F8(v177, v844, &unk_100262450, &qword_1001CFAA0);
    v518 = v913;
    if ((v184)(v517, 1, v913) == 1)
    {
      sub_10000F3F4(v925, v929, v185, v923);
      sub_10000F500(v517, &unk_100262450, &qword_1001CFAA0);
    }

    else
    {
      (*(v188 + 4))(v515, v517, v518);
      sub_10000F3F4(v925, v929, v185, v923);
      if (qword_10025A788 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v519 = qword_1002770A8;
      if (*(qword_1002770A8 + 16))
      {
        v520 = sub_100005044(v515);
        if (v521)
        {
          v522 = *(*(v519 + 56) + 8 * v520);
          swift_endAccess();
          v523 = v913;
          (*(v188 + 2))(v516, v515, v913);
          v903 = v522;

          v524 = Logger.logObject.getter();
          v525 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v524, v525))
          {
            v526 = swift_slowAlloc();
            v917 = swift_slowAlloc();
            *&aBlock = v917;
            *v526 = 136315138;
            sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v527 = dispatch thunk of CustomStringConvertible.description.getter();
            v529 = v528;
            v530 = *(v188 + 1);
            v530(v516, v523);
            v531 = sub_10002510C(v527, v529, &aBlock);

            *(v526 + 4) = v531;
            _os_log_impl(&_mh_execute_header, v524, v525, "Setting new delegate for RewritingModel for sessionUUID: %s", v526, 0xCu);
            sub_10000F4B4(v917);

            v185 = v924;

            v530(v862, v523);
          }

          else
          {

            v810 = *(v188 + 1);
            v810(v516, v523);
            v810(v515, v523);
          }

          v583 = v827;
          v586 = v902;
          swift_unknownObjectWeakAssign();
          v585 = v847;
          goto LABEL_227;
        }
      }

      swift_endAccess();
      (*(v188 + 1))(v515, v913);
    }

    v547 = v842;
    sub_1000081F8(v177, v842, &unk_100262450, &qword_1001CFAA0);
    v548 = Logger.logObject.getter();
    v549 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v548, v549))
    {
      v550 = swift_slowAlloc();
      v551 = swift_slowAlloc();
      *&aBlock = v551;
      *v550 = 136315138;
      sub_1000081F8(v547, v911, &unk_100262450, &qword_1001CFAA0);
      v552 = String.init<A>(describing:)();
      v554 = v553;
      sub_10000F500(v547, &unk_100262450, &qword_1001CFAA0);
      v555 = sub_10002510C(v552, v554, &aBlock);

      *(v550 + 4) = v555;
      _os_log_impl(&_mh_execute_header, v548, v549, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v550, 0xCu);
      sub_10000F4B4(v551);
    }

    else
    {

      sub_10000F500(v547, &unk_100262450, &qword_1001CFAA0);
    }

    v556 = v923;
    type metadata accessor for RewritingModel(0);
    swift_allocObject();
    v557 = sub_1000C32AC();
    v558 = v924;
    v903 = v557;
    if (v556 >= 2 && v924 | v929 | v925 && v925 == 1 && !(v924 | v929))
    {
      v559 = v557;
      v560 = 1;
      v561 = 0;
      v562 = 0;
      v563 = 0;
    }

    else
    {
      v564 = v925;
      v565 = v929;
      v566 = v923;
      sub_10000F3F4(v925, v929, v924, v923);
      v560 = v564;
      v559 = v903;
      v561 = v565;
      v562 = v558;
      v563 = v566;
    }

    sub_100036534(v560, v561, v562, v563);
    swift_unknownObjectWeakAssign();
    v567 = v916;
    v568 = v916;

    sub_100035E70(v567);
    if ((v823 & 1) == *(v559 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
    {
      *(v559 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v823 & 1;
    }

    else
    {
      v569 = swift_getKeyPath();
      __chkstk_darwin(v569);
      *&aBlock = v559;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      v570 = v904;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v904 = v570;
    }

    if ((v824 & 1) == *(v559 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
    {
      *(v559 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v824 & 1;
    }

    else
    {
      v571 = swift_getKeyPath();
      __chkstk_darwin(v571);
      *&aBlock = v559;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      v572 = v904;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v904 = v572;
    }

    if (*(v559 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v822)
    {
      v573 = swift_getKeyPath();
      __chkstk_darwin(v573);
      *&aBlock = v559;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      v574 = v904;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v904 = v574;
    }

    if ((v825 & 1) == *(v559 + 64))
    {
      *(v559 + 64) = v825 & 1;
      v577 = v904;
    }

    else
    {
      v575 = swift_getKeyPath();
      __chkstk_darwin(v575);
      *&aBlock = v559;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      v576 = v904;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v577 = v576;
    }

    v578 = v911;
    sub_1000081F8(v928, v911, &unk_100262450, &qword_1001CFAA0);
    v579 = type metadata accessor for WritingToolsAnalytics(0);
    swift_allocObject();
    v580 = sub_100009B2C(v578);
    *(&v938 + 1) = v579;
    *v939 = &off_10024B270;
    *&aBlock = v580;
    v581 = swift_getKeyPath();
    __chkstk_darwin(v581);
    *&v933[0] = v559;
    sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v904 = v577;

    sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
    v582 = v915;

    v583 = v827;
    sub_100036040(v827, v582);
    v584 = v914;

    sub_100036200(v828, v584);

    v185 = v924;
    v585 = v847;
    v586 = v902;
LABEL_227:
    sub_10000F428(v925, v929, v185, v923);
    sub_1000081F8(v931, v585, &unk_100262450, &qword_1001CFAA0);
    v587 = v913;
    if ((v184)(v585, 1, v913) == 1)
    {
      sub_10000F500(v585, &unk_100262450, &qword_1001CFAA0);
      v588 = v916;
      v589 = v928;
    }

    else
    {
      v590 = v840;
      (*(v919 + 32))(v840, v585, v587);
      v588 = v916;
      if (qword_10025A890 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v591 = qword_100277358;
      v589 = v928;
      if (*(qword_100277358 + 16))
      {
        v592 = sub_100005044(v590);
        if (v593)
        {
          v594 = *(*(v591 + 56) + 8 * v592);
          swift_endAccess();
          v595 = *(v919 + 8);

          v595(v590, v587);
          swift_unknownObjectWeakAssign();
          v596 = v914;
          v597 = v828;
          v598 = v915;
LABEL_236:
          v605 = sub_1000FAA48(v931, v588, v825 & 1, v589, v583, v598, v597, v596, v814 & 1);
          v606 = v921;
          sub_1000A7578(v605, v607);
          swift_getKeyPath();
          *&aBlock = v606;
          v919 = sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v608 = v905;
          v609 = v906;
          v610 = v907;
          v611 = v908;
          sub_10002879C(v905, v906, v907, v908);
          sub_1000752D8(v608, v609, v610, v611);

          sub_1000081F8(v589, v871, &unk_100262450, &qword_1001CFAA0);
          v612 = type metadata accessor for CommonUIManager(0);
          v613 = sub_1001068A4(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
          v917 = v586;

          v895 = v916;

          v614 = v910;
          v615 = v910;

          v913 = v594;

          v902 = v612;
          v900 = v613;
          v616 = Environment.init<A>(_:)();
          v617 = v852;
          *v852 = v616;
          *(v617 + 8) = v618 & 1;
          v619 = type metadata accessor for PresentationModel(0);
          v620 = sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
          v897 = v619;
          v896 = v620;
          *(v617 + 16) = Environment.init<A>(_:)();
          *(v617 + 24) = v621 & 1;
          v622 = type metadata accessor for WritingToolsView(0);
          v623 = v622[6];
          *(v617 + v623) = swift_getKeyPath();
          sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
          swift_storeEnumTagMultiPayload();
          swift_unknownObjectWeakInit();
          v624 = v848;
          NavigationPath.init()();
          v625 = v850;
          v626 = v851;
          (*(v850 + 16))(v849, v624, v851);
          State.init(wrappedValue:)();
          (*(v625 + 8))(v624, v626);
          v627 = v617 + v622[18];
          *&v933[0] = 0;
          *(&v933[0] + 1) = 0xE000000000000000;
          State.init(wrappedValue:)();
          v628 = v938;
          *v627 = aBlock;
          *(v627 + 16) = v628;
          v629 = v622[19];
          *v939 = 0;
          aBlock = 0u;
          v938 = 0u;
          sub_1000081F8(&aBlock, v933, &unk_10025B1C0, &unk_1001CFA90);
          sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
          State.init(wrappedValue:)();
          sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
          v630 = v617 + v622[22];
          *&v933[0] = 0;
          BYTE8(v933[0]) = 1;
          sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
          State.init(wrappedValue:)();
          v631 = BYTE8(aBlock);
          v632 = v938;
          *v630 = aBlock;
          *(v630 + 8) = v631;
          *(v630 + 16) = v632;
          v633 = v617 + v622[23];
          LOBYTE(v933[0]) = 0;
          State.init(wrappedValue:)();
          v634 = *(&aBlock + 1);
          *v633 = aBlock;
          *(v633 + 8) = v634;
          v635 = v622[24];
          *(v617 + v635) = swift_getKeyPath();
          sub_10000341C(&qword_10025A920, &qword_1001CFB10);
          swift_storeEnumTagMultiPayload();
          v636 = v617 + v622[25];
          *v636 = FocusState.init<>()() & 1;
          *(v636 + 8) = v637;
          *(v636 + 16) = v638 & 1;
          v639 = static os_log_type_t.debug.getter();
          v640 = Logger.logObject.getter();
          if (os_log_type_enabled(v640, v639))
          {
            v641 = swift_slowAlloc();
            v642 = swift_slowAlloc();
            *&aBlock = v642;
            *v641 = 136315138;
            *(v641 + 4) = sub_10002510C(7562617, 0xE300000000000000, &aBlock);
            _os_log_impl(&_mh_execute_header, v640, v639, "Initializing WritingToolsView initializing QuestionnaireView with delegate: %s", v641, 0xCu);
            sub_10000F4B4(v642);

            v614 = v910;
          }

          swift_unknownObjectWeakAssign();

          Bindable<A>.init(wrappedValue:)();
          *(v617 + v622[8]) = v895;
          v643 = (v617 + v622[9]);
          v644 = v920;
          *v643 = v909;
          v643[1] = v644;
          *(v617 + v622[10]) = v614;
          v645 = v622[11];
          LODWORD(v909) = v823 & 1;
          *(v617 + v645) = v823 & 1;
          v646 = v622[12];
          LODWORD(v901) = v824 & 1;
          *(v617 + v646) = v824 & 1;
          v647 = v822;
          *(v617 + v622[13]) = v822;
          *(v617 + v622[14]) = v825 & 1;
          v648 = (v617 + v622[21]);
          *&v933[0] = v913;
          type metadata accessor for ProofreadingModel(0);

          State.init(wrappedValue:)();
          v649 = *(&aBlock + 1);
          *v648 = aBlock;
          v648[1] = v649;
          v650 = v911;
          sub_1000081F8(v871, v911, &unk_100262450, &qword_1001CFAA0);
          v651 = type metadata accessor for WritingToolsAnalytics(0);
          swift_allocObject();
          v652 = sub_100009B2C(v650);
          *(&v938 + 1) = v651;
          *v939 = &off_10024B270;
          *&aBlock = v652;
          sub_10000F500(v617 + v629, &unk_10025B200, &qword_1001CFB18);
          sub_1000081F8(&aBlock, v933, &unk_10025B1C0, &unk_1001CFA90);
          State.init(wrappedValue:)();
          sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
          v653 = (v617 + v622[15]);
          v654 = v915;
          *v653 = v827;
          v653[1] = v654;
          v655 = (v617 + v622[16]);
          v656 = v914;
          *v655 = v828;
          v655[1] = v656;
          sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
          Bindable.wrappedValue.getter();

          sub_1000A73A0(v657, v658);

          Bindable.wrappedValue.getter();
          v659 = aBlock;
          swift_getKeyPath();
          *&aBlock = v659;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v660 = *(v659 + 32);

          if (*(v660 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) != v647)
          {
            v661 = swift_getKeyPath();
            __chkstk_darwin(v661);
            *&aBlock = v660;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
            v662 = v904;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            v904 = v662;
          }

          Bindable.wrappedValue.getter();
          v663 = aBlock;
          swift_getKeyPath();
          *&aBlock = v663;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v664 = *(v663 + 32);

          if ((v824 & 1) == *(v664 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing))
          {
            *(v664 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = v901;
          }

          else
          {
            v665 = swift_getKeyPath();
            __chkstk_darwin(v665);
            *&aBlock = v664;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
            v666 = v904;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            v904 = v666;
          }

          Bindable.wrappedValue.getter();
          v667 = aBlock;
          swift_getKeyPath();
          *&aBlock = v667;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v668 = *(v667 + 32);

          v669 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
          if ((v823 & 1) == *(v668 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent))
          {
            sub_10000F500(v871, &unk_100262450, &qword_1001CFAA0);

            v671 = v917;

            *(v668 + v669) = v909;
          }

          else
          {
            v670 = swift_getKeyPath();
            v911 = &v811;
            __chkstk_darwin(v670);
            *&aBlock = v668;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v671 = v917;

            sub_10000F500(v871, &unk_100262450, &qword_1001CFAA0);
          }

          (*(*(v622 - 1) + 56))(v617, 0, 1, v622);
          v672 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsView;
          swift_beginAccess();
          sub_1001062D4(v617, v671 + v672);
          swift_endAccess();
          v673 = v853;
          sub_1000081F8(v671 + v672, v853, &qword_1002624B0, &qword_1001D8C08);
          v674 = *(v671 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
          v675 = sub_100106344();
          v676 = v855;
          v911 = v674;
          v677 = v854;
          v678 = v902;
          v679 = v900;
          View.environment<A>(_:)();
          sub_10000F500(v673, &qword_1002624B0, &qword_1001D8C08);

          *&aBlock = v677;
          *(&aBlock + 1) = v678;
          *&v938 = v675;
          *(&v938 + 1) = v679;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v681 = v857;
          v682 = v860;
          v683 = v818;
          v684 = v919;
          View.environment<A>(_:)();

          (*(v858 + 8))(v676, v682);

          *&aBlock = v682;
          *(&aBlock + 1) = v683;
          *&v938 = OpaqueTypeConformance2;
          *(&v938 + 1) = v684;
          swift_getOpaqueTypeConformance2();
          v685 = v864;
          v686 = v861;
          View.environment<A>(_:)();

          (*(v859 + 8))(v681, v686);
          (*(v865 + 16))(v856, v685, v866);
          v687 = objc_allocWithZone(sub_10000341C(&qword_100262508, &unk_1001D8DE0));
          v688 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v689 = v688;
          v690 = [v689 view];
          if (!v690)
          {
            goto LABEL_319;
          }

          v691 = v690;
          [v690 setBackgroundColor:0];

          v692 = [v689 view];
          v693 = v923;
          v694 = v925;
          if (!v692)
          {
LABEL_320:
            __break(1u);
            goto LABEL_321;
          }

          v695 = v692;
          v696 = [v692 layer];

          [v696 setHitTestsAsOpaque:1];
          v697 = [v689 view];
          v698 = v917;
          if (!v697)
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

          v699 = v697;
          [v697 setTranslatesAutoresizingMaskIntoConstraints:0];

          v700 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController;
          v701 = [*(v698 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController) view];
          if (!v701)
          {
LABEL_322:
            __break(1u);
            goto LABEL_323;
          }

          v702 = v701;
          v703 = [v689 view];
          if (!v703)
          {
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
            goto LABEL_325;
          }

          v704 = v703;
          [v702 addSubview:v703];

          [*(v698 + v700) addChildViewController:v689];
          v705 = v693 < 2u || v924 | v929 | v694;
          [*(v698 + v700) setModalInPresentation:v705];
          v706 = [*(v698 + v700) view];
          if (!v706)
          {
            goto LABEL_324;
          }

          v707 = v706;
          v708 = [objc_opt_self() currentDevice];
          v709 = [v708 userInterfaceIdiom];

          [v707 setTranslatesAutoresizingMaskIntoConstraints:v709 == 6];
          v710 = [*(v698 + v700) view];
          if (!v710)
          {
LABEL_325:
            __break(1u);
            goto LABEL_326;
          }

          v711 = v710;
          v712 = [v710 bottomAnchor];

          v713 = [v689 view];
          if (!v713)
          {
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v714 = v713;
          v715 = [v713 bottomAnchor];

          v716 = [v712 constraintEqualToAnchor:v715];
          v717 = *(v698 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint);
          *(v698 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint) = v716;

          v718 = [v689 view];
          if (!v718)
          {
LABEL_327:
            __break(1u);
            goto LABEL_328;
          }

          v719 = v718;
          v720 = [v718 heightAnchor];

          v721 = [v720 constraintEqualToConstant:2000.0];
          v722 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint;
          v723 = *(v698 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint);
          *(v698 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint) = v721;

          sub_10000341C(&qword_10025F470, &qword_1001D1020);
          v724 = swift_allocObject();
          *(v724 + 16) = xmmword_1001CE090;
          v725 = [*(v698 + v700) view];
          if (!v725)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

          v726 = v725;
          v727 = [v725 leadingAnchor];

          v728 = [v689 view];
          if (!v728)
          {
LABEL_329:
            __break(1u);
            goto LABEL_330;
          }

          v729 = v728;
          v730 = [v728 leadingAnchor];

          v731 = [v727 constraintEqualToAnchor:v730];
          *(v724 + 32) = v731;
          v732 = [*(v698 + v700) view];
          if (!v732)
          {
LABEL_330:
            __break(1u);
            goto LABEL_331;
          }

          v733 = v732;
          v734 = [v732 trailingAnchor];

          v735 = [v689 view];
          if (!v735)
          {
LABEL_331:
            __break(1u);
            goto LABEL_332;
          }

          v736 = v735;
          v737 = [v735 trailingAnchor];

          v738 = [v734 constraintEqualToAnchor:v737];
          *(v724 + 40) = v738;
          v739 = [*(v698 + v700) view];
          if (!v739)
          {
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          v740 = v739;
          v741 = [v739 topAnchor];

          v742 = [v689 view];
          if (!v742)
          {
LABEL_333:
            __break(1u);
            goto LABEL_334;
          }

          v743 = [v742 topAnchor];

          v744 = [v741 constraintEqualToAnchor:v743];
          *(v724 + 48) = v744;
          v745 = *(v698 + v722);
          v187 = v918;
          if (!v745)
          {
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
            goto LABEL_336;
          }

          v746 = objc_opt_self();
          *(v724 + 56) = v745;
          sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
          v747 = v745;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v746 activateConstraints:isa];

          [v187 setRootViewController:*(v698 + v700)];
          v749 = *(v698 + v700);
          v750 = v749;
          sub_1001530C4(v749);
          sub_10015295C(v898);
          sub_10015277C(2);
          sub_100152580(7, 0);

          (*(v865 + 8))(v864, v866);
LABEL_266:
          v177 = v912;
LABEL_267:
          LOBYTE(v184) = v923;
          v185 = v924;
LABEL_268:
          v195 = v925;
          goto LABEL_269;
        }
      }

      swift_endAccess();
      (*(v919 + 8))(v590, v587);
    }

    type metadata accessor for ProofreadingModel(0);
    swift_allocObject();
    v594 = sub_1001A8C78();
    v599 = v588;

    sub_100035E70(v588);
    swift_unknownObjectWeakAssign();
    sub_100036534(1, 0, 0, 2);
    v600 = v911;
    sub_1000081F8(v589, v911, &unk_100262450, &qword_1001CFAA0);
    v601 = type metadata accessor for WritingToolsAnalytics(0);
    swift_allocObject();
    v602 = sub_100009B2C(v600);
    *(&v938 + 1) = v601;
    *v939 = &off_10024B270;
    *&aBlock = v602;
    v603 = swift_getKeyPath();
    __chkstk_darwin(v603);
    *&v933[0] = v594;
    sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    v604 = v904;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v904 = v604;

    sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
    v598 = v915;

    v583 = v827;
    sub_100036040(v827, v598);
    v596 = v914;

    v597 = v828;
    sub_100036200(v828, v596);

    goto LABEL_236;
  }
}