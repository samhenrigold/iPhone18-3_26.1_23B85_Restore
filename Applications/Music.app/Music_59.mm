void sub_100691AB8(uint64_t a1)
{
  v1 = (a1 + qword_10119DAA0);
  *v1 = 0;
  v1[1] = 0;
  v2 = (a1 + qword_10119DAA8);
  *v2 = 0;
  v2[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100691B34(void *a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  v4 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a3);
  v5 = *&v4[qword_10119DAA8];
  if (v5)
  {
    v6 = *&v4[qword_10119DAA8 + 8];

    v5(v7);

    sub_100020438(v5, v6);
  }

  else
  {
  }
}

double sub_100691BD4()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v4 = &v26 - v3;
  v5 = &v0[qword_10119DA98];
  if (v0[qword_10119DA98 + 72] == 1)
  {
    v6 = qword_10119DA90;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v26);

    v8 = v26;
    v7 = v27;

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v26);

      v11 = v26;
      v10 = v27;
    }

    else
    {
      v15 = &v5[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48)];
      v10 = v15[1];
      if (v10)
      {
        v11 = *v15;
      }

      else
      {
        v11 = 0;
        v10 = 0xE000000000000000;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 1;

    static Published.subscript.setter();
    if (*(*&v1[v6] + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage))
    {
      v16 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v26);

      v16 = v26;
      if (!v26)
      {
        v16 = *&v5[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 44)];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v16 = 1;
        }
      }
    }

    if (qword_10117F6B0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218BD8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating user profile", v21, 2u);
    }

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    type metadata accessor for MainActor();

    sub_10069B3BC(v16);
    v23 = v1;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v11;
    *(v25 + 40) = v10;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = v16;
    *(v25 + 72) = 513;
    *(v25 + 80) = v23;
    sub_1001F4CB8(0, 0, v4, &unk_100EDCE30, v25);

    sub_10040DEF8(v16);
  }

  else
  {
    v12 = *&v0[qword_10119DAA0];
    if (v12)
    {
      v13 = *&v0[qword_10119DAA0 + 8];
      v14 = v5[*(type metadata accessor for SharePlayProxCard.ViewModel(0) + 56)];

      v12(v1, v14);

      sub_100020438(v12, v13);
    }
  }

  return result;
}

uint64_t sub_100692080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  type metadata accessor for Locale();
  v5[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[4] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1006921DC;

  return sub_10040CEDC(a4, 1);
}

uint64_t sub_1006921DC()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100692464;
  }

  else
  {
    v4 = sub_100692338;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100692338()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_1001F4F78(0, 0, v1, &unk_100EDCE48, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100692464()
{

  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218BD8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update user profile %{public}@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70, &unk_100EC6540);
  }

  v7 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  static Published.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v8 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() actionWithTitle:v10 style:0 handler:0];

  [v9 addAction:v11];
  [v7 presentViewController:v9 animated:1 completion:0];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1006927D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100692870, v6, v5);
}

uint64_t sub_100692870()
{
  v1 = *(v0 + 24);

  v2 = v1 + qword_10119DAA0;
  v3 = *(v1 + qword_10119DAA0);
  if (v3)
  {
    v4 = *(v0 + 24);
    v5 = *(v2 + 8);
    v6 = v4 + qword_10119DA98;
    v7 = *(v6 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 56));

    v3(v4, v7);
    sub_100020438(v3, v5);
  }

  **(v0 + 16) = v3 == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100692978()
{

  sub_10069B35C(v0 + qword_10119DA98, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_100020438(*(v0 + qword_10119DAA0), *(v0 + qword_10119DAA0 + 8));
  v1 = *(v0 + qword_10119DAA8);
  v2 = *(v0 + qword_10119DAA8 + 8);

  return sub_100020438(v1, v2);
}

id sub_1006929F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100692A2C(uint64_t a1)
{

  sub_10069B35C(a1 + qword_10119DA98, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_100020438(*(a1 + qword_10119DAA0), *(a1 + qword_10119DAA0 + 8));
  v2 = *(a1 + qword_10119DAA8);
  v3 = *(a1 + qword_10119DAA8 + 8);

  return sub_100020438(v2, v3);
}

uint64_t sub_100692AD4(uint64_t a1)
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(319);
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

uint64_t sub_100692BA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100692C1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100692C90(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v3 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  if (v4)
  {

    *(v1 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 0;
  }
}

uint64_t sub_100692D70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100692DE4()
{
  v1 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__name;
  v2 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__image;
  v4 = sub_10010FC20(&unk_101184260, &qword_100EDCE20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__isLoading;
  v6 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_100692F4C(uint64_t a1)
{
  sub_10000542C(319, &qword_101187AF8, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100052C90(319, &qword_101192F38, &qword_101184460, &qword_100EDACF0, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_10000542C(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1006930F4(uint64_t a1)
{
  sub_100693230(319, &qword_1011A4570, &type metadata accessor for Artwork);
  if (v1 <= 0x3F)
  {
    sub_100693230(319, qword_101186C38, sub_1005F049C);
    if (v2 <= 0x3F)
    {
      sub_10000542C(319, &qword_10118F6F0, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100693230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1006932E8(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100693430(319);
    if (v2 <= 0x3F)
    {
      sub_100052C90(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10000542C(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10000542C(319, &unk_10119DEE8, &type metadata for ImagePicker.SourceType, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100693430(uint64_t a1)
{
  if (!qword_10119DED8)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    sub_100693494();
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10119DED8);
    }
  }
}

unint64_t sub_100693494()
{
  result = qword_10119DEE0;
  if (!qword_10119DEE0)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DEE0);
  }

  return result;
}

uint64_t sub_100693508()
{
  v17 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v1 = *(v17 - 8);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = sub_10010FC20(&unk_101184260, &qword_100EDCE20);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__name;
  v18 = 0;
  v19 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__image;
  v18 = 0;
  sub_10010FC20(&qword_101184460, &qword_100EDACF0);
  Published.init(initialValue:)();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__isLoading;
  LOBYTE(v18) = 0;
  Published.init(initialValue:)();
  (*(v1 + 32))(v0 + v14, v3, v17);
  *(v0 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 0;
  return v0;
}

uint64_t sub_1006937A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayProxCard.CardState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1006937E4()
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v1 = String.trim()();
  countAndFlagsBits = v1._countAndFlagsBits;

  v3 = (v1._object >> 56) & 0xF;
  if ((v1._object & 0x2000000000000000) == 0)
  {
    v3 = v1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    countAndFlagsBits = *(v0 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48));
  }

  return countAndFlagsBits;
}

uint64_t sub_1006938C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v30 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v29 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = sub_10010FC20(&qword_10119DF30, &qword_100EDC938);
  __chkstk_darwin();
  v6 = v24 - v5;
  v27 = sub_10010FC20(&qword_10119DF38, &qword_100EDC940);
  __chkstk_darwin();
  v32 = v24 - v7;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v8 = sub_10010FC20(&qword_10119DF40, &unk_100EDC948);
  sub_100693D9C(v1, &v6[*(v8 + 44)]);
  v28 = type metadata accessor for SharePlayProxCard(0);
  v9 = v1 + *(v28 + 28);
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v37) = v10;
  v38 = v11;
  v26 = sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.projectedValue.getter();
  v34 = v1;
  sub_10010FC20(&qword_10119DF48, &unk_100EDC958);
  sub_100020674(&qword_10119DF50, &qword_10119DF30, &qword_100EDC938, &protocol conformance descriptor for VStack<A>);
  v25 = &protocol conformance descriptor for TupleView<A>;
  sub_100020674(&qword_10119DF58, &qword_10119DF48, &unk_100EDC958, &protocol conformance descriptor for TupleView<A>);
  v12 = v32;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  sub_1000095E8(v6, &qword_10119DF30, &qword_100EDC938);
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = &v12[*(v27 + 36)];
  sub_100699848(v16);
  v17 = (v16 + *(sub_10010FC20(&qword_101196590, &qword_100ED4EC0) + 36));
  *v17 = v13;
  v17[1] = v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v18;
  v19 = v2 + *(v28 + 36);
  v20 = *v19;
  v21 = *(v19 + 1);
  v35 = v20;
  v36 = v21;
  State.projectedValue.getter();
  v33 = v2;
  sub_10010FC20(&qword_10119DF60, &qword_100EDC968);
  sub_10069A2BC();
  sub_100009838();
  sub_100020674(&qword_10119DF78, &qword_10119DF60, &qword_100EDC968, v25);
  v22 = v32;
  View.alert<A, B>(_:isPresented:actions:)();

  return sub_1000095E8(v22, &qword_10119DF38, &qword_100EDC940);
}

uint64_t sub_100693D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v379 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v370 = v3;
  v371 = v4;
  __chkstk_darwin();
  v372 = v5;
  v373 = &v314 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_10010FC20(&qword_10119DF98, &qword_100EDCA38);
  __chkstk_darwin();
  v377 = &v314 - v6;
  v376 = sub_10010FC20(&qword_10119DFA0, &qword_100EDCA40);
  __chkstk_darwin();
  v378 = &v314 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v375 = &v314 - v8;
  __chkstk_darwin();
  v414 = &v314 - v9;
  v10 = sub_10010FC20(&qword_10119DFA8, &qword_100EDCA48);
  v368 = *(v10 - 8);
  v369 = v10;
  __chkstk_darwin();
  v357 = &v314 - v11;
  v12 = sub_10010FC20(&qword_10119DFB0, &qword_100EDCA50);
  v355 = *(v12 - 8);
  v356 = v12;
  __chkstk_darwin();
  v329 = &v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v330 = &v314 - v14;
  v15 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v324 = *(v15 - 8);
  v325 = v15;
  __chkstk_darwin();
  v323 = &v314 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v319 = *(v321 - 8);
  __chkstk_darwin();
  v320 = &v314 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin();
  v318 = &v314 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v317 = &v314 - v19;
  v20 = type metadata accessor for AttributedString();
  v326 = *(v20 - 8);
  v327 = v20;
  __chkstk_darwin();
  v328 = &v314 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v316 = &v314 - v22;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v322 = &v314 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v358 = &v314 - v24;
  sub_10010FC20(&qword_10119DFB8, &qword_100EDCA58);
  __chkstk_darwin();
  v354 = &v314 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v353 = &v314 - v26;
  v341 = sub_10010FC20(&qword_10119DFC0, &qword_100EDCA60);
  __chkstk_darwin();
  v343 = (&v314 - v27);
  v342 = sub_10010FC20(&qword_10119DFC8, &qword_100EDCA68);
  __chkstk_darwin();
  v346 = &v314 - v28;
  v345 = sub_10010FC20(&qword_10119DFD0, &qword_100EDCA70);
  __chkstk_darwin();
  v350 = &v314 - v29;
  v344 = sub_10010FC20(&qword_10119DFD8, &qword_100EDCA78);
  __chkstk_darwin();
  v349 = &v314 - v30;
  v348 = sub_10010FC20(&qword_10119DFE0, &qword_100EDCA80);
  __chkstk_darwin();
  v352 = &v314 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v347 = &v314 - v32;
  __chkstk_darwin();
  v359 = &v314 - v33;
  v331 = sub_10010FC20(&qword_10119DFE8, &qword_100EDCA88);
  __chkstk_darwin();
  v333 = &v314 - v34;
  v332 = sub_10010FC20(&qword_10119DFF0, &qword_100EDCA90);
  __chkstk_darwin();
  v335 = &v314 - v35;
  v334 = sub_10010FC20(&qword_10119DFF8, &qword_100EDCA98);
  __chkstk_darwin();
  v338 = &v314 - v36;
  v336 = sub_10010FC20(&qword_10119E000, &qword_100EDCAA0);
  __chkstk_darwin();
  v340 = &v314 - v37;
  v339 = sub_10010FC20(&qword_10119E008, &qword_100EDCAA8);
  __chkstk_darwin();
  v351 = &v314 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v337 = &v314 - v39;
  __chkstk_darwin();
  v384 = &v314 - v40;
  sub_10010FC20(&qword_10119E010, &unk_100EDCAB0);
  __chkstk_darwin();
  v411 = &v314 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v418 = &v314 - v42;
  v416 = type metadata accessor for Font.Leading();
  v417 = *(v416 - 8);
  __chkstk_darwin();
  v415 = &v314 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v45 = &v314 - v44;
  v46 = sub_10010FC20(&qword_10119E018, &qword_100EDCAC0) - 8;
  __chkstk_darwin();
  v412 = &v314 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v314 - v48;
  v50 = *a1;
  v51 = type metadata accessor for Font.Design();
  (*(*(v51 - 8) + 56))(v45, 1, 1, v51);

  v52 = static Font.system(size:weight:design:)();
  sub_1000095E8(v45, &qword_101188610, &qword_100EC4D60);
  KeyPath = swift_getKeyPath();
  v461 = v50;
  v462 = KeyPath;
  v463 = v52;
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.bold(_:)();

  v54 = static Color.accentColor.getter();
  v55 = swift_getKeyPath();
  v56 = *(v46 + 44);
  v410 = v49;
  v57 = &v49[v56];
  *v57 = v55;
  v57[1] = v54;
  v413 = a1;
  v58 = a1[2];
  v461 = a1[1];
  v462 = v58;
  v385 = sub_100009838();

  v59 = Text.init<A>(_:)();
  v61 = v60;
  LOBYTE(v52) = v62;
  static Font.title.getter();
  v382 = enum case for Font.Leading.tight(_:);
  v63 = v417;
  v64 = *(v417 + 104);
  v383 = v417 + 104;
  v381 = v64;
  v65 = v415;
  v66 = v416;
  v64(v415);
  Font.leading(_:)();

  v67 = *(v63 + 8);
  v417 = v63 + 8;
  v380 = v67;
  v67(v65, v66);
  v68 = Text.font(_:)();
  v70 = v69;
  LOBYTE(v65) = v71;

  sub_10011895C(v59, v61, v52 & 1);

  v408 = Text.bold()();
  v407 = v72;
  LOBYTE(v61) = v73;
  v409 = v74;
  v75 = v68;
  v76 = v413;
  sub_10011895C(v75, v70, v65 & 1);

  v405 = swift_getKeyPath();
  v406 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v404 = v77;
  v403 = v78;
  v402 = v79;
  v401 = v80;
  v394 = v61 & 1;
  LOBYTE(v426) = v61 & 1;
  LOBYTE(v516) = 0;
  v400 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v366 = v82;
  v367 = v81;
  v364 = v84;
  v365 = v83;
  LOBYTE(v461) = 0;
  v399 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v398 = v85;
  v397 = v86;
  v396 = v87;
  v395 = v88;
  v89 = *(v76 + 32);
  v461 = *(v76 + 24);
  v462 = v89;

  v90 = Text.init<A>(_:)();
  v92 = v91;
  LOBYTE(v70) = v93;
  static Font.body.getter();
  v94 = v415;
  v95 = v416;
  v381(v415, v382, v416);
  Font.leading(_:)();

  v380(v94, v95);
  v392 = Text.font(_:)();
  v391 = v96;
  LOBYTE(v65) = v97;
  v393 = v98;

  sub_10011895C(v90, v92, v70 & 1);

  v389 = swift_getKeyPath();
  v390 = static Color.secondary.getter();
  v388 = swift_getKeyPath();
  v386 = v65 & 1;
  LOBYTE(v461) = v65 & 1;
  v387 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v362 = v100;
  v363 = v99;
  v360 = v102;
  v361 = v101;
  if (*(v76 + 72) != 1)
  {
    (*(v368 + 56))(v418, 1, 1, v369);
    sub_1006937E4();
    if (!v210)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v315 = 1;
  v103 = *(v76 + 48);
  v461 = *(v76 + 40);
  v462 = v103;

  v104 = Text.init<A>(_:)();
  v106 = v105;
  v108 = v107;
  v314 = v109;
  v110 = sub_10010FC20(&qword_101184C58, &unk_100EDCC30);
  v111 = v333;
  v112 = &v333[*(v110 + 36)];
  v113 = *(sub_10010FC20(&qword_101184CD8, &qword_100EC0930) + 28);
  v114 = enum case for Text.Case.uppercase(_:);
  v115 = type metadata accessor for Text.Case();
  v116 = *(v115 - 8);
  (*(v116 + 104))(v112 + v113, v114, v115);
  (*(v116 + 56))(v112 + v113, 0, 1, v115);
  *v112 = swift_getKeyPath();
  *v111 = v104;
  *(v111 + 8) = v106;
  v117 = v413;
  *(v111 + 16) = v108 & 1;
  *(v111 + 24) = v314;
  v118 = static Font.footnote.getter();
  v119 = swift_getKeyPath();
  v120 = (v111 + *(sub_10010FC20(&qword_101184C60, &qword_100EC07F0) + 36));
  *v120 = v119;
  v120[1] = v118;
  v121 = static Color.secondary.getter();
  v122 = swift_getKeyPath();
  v123 = (v111 + *(v331 + 36));
  *v123 = v122;
  v123[1] = v121;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v124 = v335;
  sub_10003D17C(v111, v335, &qword_10119DFE8, &qword_100EDCA88);
  v125 = (v124 + *(v332 + 36));
  v126 = v507;
  v125[4] = v506;
  v125[5] = v126;
  v125[6] = v508;
  v127 = v503;
  *v125 = v502;
  v125[1] = v127;
  v128 = v505;
  v125[2] = v504;
  v125[3] = v128;
  LOBYTE(v121) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v137 = v124;
  v138 = v338;
  sub_10003D17C(v137, v338, &qword_10119DFF0, &qword_100EDCA90);
  v139 = v138 + *(v334 + 36);
  *v139 = v121;
  *(v139 + 8) = v130;
  *(v139 + 16) = v132;
  *(v139 + 24) = v134;
  *(v139 + 32) = v136;
  *(v139 + 40) = 0;
  LOBYTE(v121) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v148 = v138;
  v149 = v340;
  sub_10003D17C(v148, v340, &qword_10119DFF8, &qword_100EDCA98);
  v150 = v149 + *(v336 + 36);
  *v150 = v121;
  *(v150 + 8) = v141;
  *(v150 + 16) = v143;
  *(v150 + 24) = v145;
  *(v150 + 32) = v147;
  *(v150 + 40) = 0;
  LOBYTE(v121) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v152 = v151;
  v154 = v153;
  v156 = v155;
  v158 = v157;
  v159 = v149;
  v160 = v337;
  sub_10003D17C(v159, v337, &qword_10119E000, &qword_100EDCAA0);
  v161 = v160 + *(v339 + 36);
  *v161 = v121;
  *(v161 + 8) = v152;
  *(v161 + 16) = v154;
  *(v161 + 24) = v156;
  *(v161 + 32) = v158;
  *(v161 + 40) = 0;
  sub_10003D17C(v160, v384, &qword_10119E008, &qword_100EDCAA8);
  v162 = static VerticalAlignment.center.getter();
  v163 = v343;
  *v343 = v162;
  *(v163 + 8) = 0;
  *(v163 + 16) = 1;
  v164 = sub_10010FC20(&qword_10119E098, &unk_100EDCC78);
  sub_1006964C4(v117, v163 + *(v164 + 44));
  v165 = [objc_opt_self() quaternarySystemFillColor];
  v166 = Color.init(_:)();
  v167 = static Edge.Set.all.getter();
  v168 = v163 + *(v341 + 36);
  *v168 = v166;
  *(v168 + 8) = v167;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v169 = v346;
  sub_10003D17C(v163, v346, &qword_10119DFC0, &qword_100EDCA60);
  v170 = (v169 + *(v342 + 36));
  v171 = v514;
  v170[4] = v513;
  v170[5] = v171;
  v170[6] = v515;
  v172 = v510;
  *v170 = v509;
  v170[1] = v172;
  v173 = v512;
  v170[2] = v511;
  v170[3] = v173;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v174 = v350;
  sub_10003D17C(v169, v350, &qword_10119DFC8, &qword_100EDCA68);
  v175 = (v174 + *(v345 + 36));
  v176 = v521;
  v175[4] = v520;
  v175[5] = v176;
  v175[6] = v522;
  v177 = v517;
  *v175 = v516;
  v175[1] = v177;
  v178 = v519;
  v175[2] = v518;
  v175[3] = v178;
  v179 = v349;
  v180 = &v349[*(v344 + 36)];
  v181 = *(type metadata accessor for RoundedRectangle() + 20);
  v182 = enum case for RoundedCornerStyle.continuous(_:);
  v183 = type metadata accessor for RoundedCornerStyle();
  (*(*(v183 - 8) + 104))(&v180[v181], v182, v183);
  __asm { FMOV            V0.2D, #16.0 }

  *v180 = _Q0;
  *&v180[*(sub_10010FC20(&qword_101185680, &qword_100EC1010) + 36)] = 256;
  sub_10003D17C(v174, v179, &qword_10119DFD0, &qword_100EDCA70);
  LOBYTE(v182) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v190 = v189;
  v192 = v191;
  v194 = v193;
  v196 = v195;
  v197 = v347;
  sub_10003D17C(v179, v347, &qword_10119DFD8, &qword_100EDCA78);
  v198 = v197 + *(v348 + 36);
  *v198 = v182;
  *(v198 + 8) = v190;
  *(v198 + 16) = v192;
  *(v198 + 24) = v194;
  *(v198 + 32) = v196;
  *(v198 + 40) = 0;
  sub_10003D17C(v197, v359, &qword_10119DFE0, &qword_100EDCA80);
  v200 = v117[7];
  v199 = v117[8];
  v461 = v200;
  v462 = v199;
  strcpy(&v426, "{{userName}}");
  BYTE13(v426) = 0;
  HIWORD(v426) = -5120;
  v201 = StringProtocol.contains<A>(_:)();
  v202 = v384;
  if (v201)
  {
    sub_1006937E4();
    if (!v203)
    {
      v248 = v353;
      (*(v355 + 56))(v353, 1, 1, v356);
      goto LABEL_19;
    }
  }

  v461 = v200;
  v462 = v199;
  strcpy(&v426, "{{userName}}");
  BYTE13(v426) = 0;
  HIWORD(v426) = -5120;

  v204 = sub_1006937E4();
  if (v205)
  {
    v206 = v204;
  }

  else
  {
    v206 = 0;
  }

  if (v205)
  {
    v207 = v205;
  }

  else
  {
    v207 = 0xE000000000000000;
  }

  v443 = v206;
  v444 = v207;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v208 = type metadata accessor for URL();
  (*(*(v208 - 8) + 56))(v317, 1, 1, v208);
  (*(v319 + 104))(v320, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v321);
  (*(v324 + 104))(v323, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v325);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v209 = v316;
  AttributedString.init(markdown:options:baseURL:)();
  v212 = v326;
  v211 = v327;
  v213 = v358;
  (*(v326 + 32))(v358, v209, v327);
  v214 = v328;
  v215 = v322;
  (*(v212 + 56))(v213, 0, 1, v211);
  sub_1000089F8(v213, v215, &qword_101180C90, &unk_100EBC730);
  v216 = *(v212 + 48);
  v217 = v216(v215, 1, v211);
  if (v217 == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v216(v215, 1, v211) != 1)
    {
      sub_1000095E8(v215, &qword_101180C90, &unk_100EBC730);
    }
  }

  else
  {
    (*(v212 + 32))(v214, v215, v211);
  }

  v385 = Text.init(_:)();
  v349 = v219;
  v350 = v218;
  v221 = v220;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v222 = v221 & 1;
  LOBYTE(v426) = v221 & 1;
  static Font.footnote.getter();
  v223 = v415;
  v224 = v416;
  v381(v415, v382, v416);
  v383 = Font.leading(_:)();

  v380(v223, v224);
  v225 = swift_getKeyPath();
  v226 = static Color.secondary.getter();
  v227 = swift_getKeyPath();
  v228 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v230 = v229;
  v232 = v231;
  v234 = v233;
  v236 = v235;
  LOBYTE(v461) = 0;
  v237 = swift_getKeyPath();
  v238 = v356;
  v239 = v329;
  v240 = &v329[*(v356 + 36)];
  sub_10010FC20(&qword_10119E0A0, &qword_100EDCCB8);
  OpenURLAction.init(handler:)();
  sub_1000095E8(v358, &qword_101180C90, &unk_100EBC730);
  *v240 = v237;
  v241 = v349;
  v242 = v350;
  *v239 = v385;
  *(v239 + 8) = v242;
  *(v239 + 16) = v222;
  *(v239 + 24) = v241;
  v243 = v424;
  *(v239 + 96) = v423;
  *(v239 + 112) = v243;
  *(v239 + 128) = v425;
  v244 = v420;
  *(v239 + 32) = v419;
  *(v239 + 48) = v244;
  v245 = v422;
  *(v239 + 64) = v421;
  *(v239 + 80) = v245;
  v246 = v383;
  *(v239 + 144) = v225;
  *(v239 + 152) = v246;
  *(v239 + 160) = v227;
  *(v239 + 168) = v226;
  *(v239 + 176) = v228;
  *(v239 + 184) = v230;
  *(v239 + 192) = v232;
  *(v239 + 200) = v234;
  *(v239 + 208) = v236;
  *(v239 + 216) = 0;
  v247 = v330;
  sub_10003D17C(v239, v330, &qword_10119DFB0, &qword_100EDCA50);
  v248 = v353;
  sub_10003D17C(v247, v353, &qword_10119DFB0, &qword_100EDCA50);
  (*(v355 + 56))(v248, 0, 1, v238);
  v202 = v384;
LABEL_19:
  v249 = v351;
  sub_1000089F8(v202, v351, &qword_10119E008, &qword_100EDCAA8);
  v250 = v359;
  v251 = v352;
  sub_1000089F8(v359, v352, &qword_10119DFE0, &qword_100EDCA80);
  v252 = v248;
  v253 = v248;
  v254 = v354;
  sub_1000089F8(v252, v354, &qword_10119DFB8, &qword_100EDCA58);
  v255 = v357;
  sub_1000089F8(v249, v357, &qword_10119E008, &qword_100EDCAA8);
  v256 = sub_10010FC20(&qword_10119E0A8, &qword_100EDCCC0);
  sub_1000089F8(v251, v255 + *(v256 + 48), &qword_10119DFE0, &qword_100EDCA80);
  sub_1000089F8(v254, v255 + *(v256 + 64), &qword_10119DFB8, &qword_100EDCA58);
  sub_1000095E8(v253, &qword_10119DFB8, &qword_100EDCA58);
  sub_1000095E8(v250, &qword_10119DFE0, &qword_100EDCA80);
  sub_1000095E8(v384, &qword_10119E008, &qword_100EDCAA8);
  sub_1000095E8(v254, &qword_10119DFB8, &qword_100EDCA58);
  sub_1000095E8(v251, &qword_10119DFE0, &qword_100EDCA80);
  sub_1000095E8(v249, &qword_10119E008, &qword_100EDCAA8);
  v257 = v418;
  sub_10003D17C(v255, v418, &qword_10119DFA8, &qword_100EDCA48);
  (*(v368 + 56))(v257, 0, 1, v369);
  v76 = v413;
  sub_1006937E4();
  if (!v258)
  {
    v259 = 1;
    goto LABEL_22;
  }

LABEL_20:

LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v461);

  v259 = v461;
LABEL_22:
  LODWORD(v416) = v259;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v461);

  v260 = sub_1006985C0(v76);
  v261 = v373;
  sub_10069B540(v76, v373, type metadata accessor for SharePlayProxCard);
  v262 = (*(v371 + 80) + 16) & ~*(v371 + 80);
  v263 = swift_allocObject();
  sub_10069A548(v261, v263 + v262);
  __chkstk_darwin();
  sub_10010FC20(&qword_10119E020, &qword_100EDCBA0);
  sub_10069AAB4(&qword_10119E028, &qword_10119E020, &qword_100EDCBA0, sub_10069AA84);
  v264 = v377;
  Button.init(action:label:)();
  v265 = swift_getKeyPath();
  v266 = swift_allocObject();
  *(v266 + 16) = v416;
  v267 = &v264[*(sub_10010FC20(&qword_10119E070, &qword_100EDCC00) + 36)];
  *v267 = v265;
  v267[1] = sub_10069AD7C;
  v267[2] = v266;
  LOBYTE(v265) = static Edge.Set.all.getter();
  v268 = &v264[*(sub_10010FC20(&qword_10119E078, &qword_100EDCC08) + 36)];
  v417 = v260;
  *v268 = v260;
  v268[8] = v265;
  v269 = &v264[*(v374 + 36)];
  v270 = enum case for RoundedCornerStyle.continuous(_:);
  v271 = type metadata accessor for RoundedCornerStyle();
  (*(*(v271 - 8) + 104))(v269, v270, v271);
  *&v269[*(sub_10010FC20(&qword_101187980, &qword_100EDCC10) + 36)] = 256;

  LOBYTE(v269) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v273 = v272;
  v275 = v274;
  v277 = v276;
  v279 = v278;
  v280 = v264;
  v281 = v375;
  sub_10003D17C(v280, v375, &qword_10119DF98, &qword_100EDCA38);
  v282 = v281 + *(v376 + 36);
  *v282 = v269;
  *(v282 + 8) = v273;
  *(v282 + 16) = v275;
  *(v282 + 24) = v277;
  *(v282 + 32) = v279;
  *(v282 + 40) = 0;
  v283 = v414;
  sub_10003D17C(v281, v414, &qword_10119DFA0, &qword_100EDCA40);
  v284 = v412;
  sub_1000089F8(v410, v412, &qword_10119E018, &qword_100EDCAC0);
  sub_1000089F8(v418, v411, &qword_10119E010, &unk_100EDCAB0);
  v285 = v378;
  sub_1000089F8(v283, v378, &qword_10119DFA0, &qword_100EDCA40);
  v286 = v284;
  v287 = v379;
  sub_1000089F8(v286, v379, &qword_10119E018, &qword_100EDCAC0);
  v288 = sub_10010FC20(&qword_10119E080, &qword_100EDCC18);
  v289 = (v287 + v288[12]);
  *&v426 = v408;
  *(&v426 + 1) = v407;
  LOBYTE(v427) = v394;
  *(&v427 + 1) = *v497;
  DWORD1(v427) = *&v497[3];
  *(&v427 + 1) = v409;
  *&v428 = v405;
  BYTE8(v428) = 1;
  *(&v428 + 9) = *v496;
  HIDWORD(v428) = *&v496[3];
  LOBYTE(v429) = v406;
  *(&v429 + 1) = *v495;
  DWORD1(v429) = *&v495[3];
  *(&v429 + 1) = v404;
  *&v430 = v403;
  *(&v430 + 1) = v402;
  *&v431 = v401;
  BYTE8(v431) = 0;
  HIDWORD(v431) = *(v499 + 3);
  *(&v431 + 9) = v499[0];
  LOBYTE(v432) = v400;
  DWORD1(v432) = *&v498[3];
  *(&v432 + 1) = *v498;
  v291 = v366;
  v290 = v367;
  *(&v432 + 1) = v367;
  *&v433 = v366;
  v293 = v364;
  v292 = v365;
  *(&v433 + 1) = v365;
  *&v434 = v364;
  BYTE8(v434) = 0;
  *(&v434 + 9) = *v501;
  HIDWORD(v434) = *&v501[3];
  LOBYTE(v435) = v399;
  DWORD1(v435) = *&v500[3];
  *(&v435 + 1) = *v500;
  *(&v435 + 1) = v398;
  *&v436[0] = v397;
  *(&v436[0] + 1) = v396;
  *&v436[1] = v395;
  WORD4(v436[1]) = 0;
  BYTE10(v436[1]) = 1;
  v294 = v426;
  v295 = v427;
  v296 = v429;
  v297 = v430;
  v289[2] = v428;
  v289[3] = v296;
  *v289 = v294;
  v289[1] = v295;
  v298 = v431;
  v299 = v433;
  v300 = v434;
  v289[6] = v432;
  v289[7] = v299;
  v289[4] = v297;
  v289[5] = v298;
  v301 = v435;
  v302 = v436[0];
  *(v289 + 171) = *(v436 + 11);
  v289[9] = v301;
  v289[10] = v302;
  v289[8] = v300;
  v303 = (v287 + v288[16]);
  *&v437 = v392;
  *(&v437 + 1) = v391;
  LOBYTE(v438) = v386;
  *(&v438 + 1) = v493[0];
  DWORD1(v438) = *(v493 + 3);
  *(&v438 + 1) = v393;
  *&v439 = v389;
  BYTE8(v439) = 1;
  HIDWORD(v439) = *&v492[3];
  *(&v439 + 9) = *v492;
  *&v440 = v388;
  *(&v440 + 1) = v390;
  LOBYTE(v441) = v387;
  DWORD1(v441) = *(v494 + 3);
  *(&v441 + 1) = v494[0];
  v305 = v362;
  v304 = v363;
  *(&v441 + 1) = v363;
  *&v442[0] = v362;
  v307 = v360;
  v306 = v361;
  *(&v442[0] + 1) = v361;
  *&v442[1] = v360;
  WORD4(v442[1]) = 0;
  BYTE10(v442[1]) = 1;
  v308 = v438;
  *v303 = v437;
  v303[1] = v308;
  v309 = v439;
  v310 = v440;
  *(v303 + 91) = *(v442 + 11);
  v311 = v442[0];
  v303[4] = v441;
  v303[5] = v311;
  v303[2] = v309;
  v303[3] = v310;
  v312 = v411;
  sub_1000089F8(v411, v287 + v288[20], &qword_10119E010, &unk_100EDCAB0);
  sub_1000089F8(v285, v287 + v288[24], &qword_10119DFA0, &qword_100EDCA40);
  sub_1000089F8(&v426, &v461, &qword_10119E088, &qword_100EDCC20);
  sub_1000089F8(&v437, &v461, &qword_10119E090, &qword_100EDCC28);

  sub_1000095E8(v414, &qword_10119DFA0, &qword_100EDCA40);
  sub_1000095E8(v418, &qword_10119E010, &unk_100EDCAB0);
  sub_1000095E8(v410, &qword_10119E018, &qword_100EDCAC0);
  sub_1000095E8(v285, &qword_10119DFA0, &qword_100EDCA40);
  sub_1000095E8(v312, &qword_10119E010, &unk_100EDCAB0);
  v443 = v392;
  v444 = v391;
  v445 = v386;
  *v446 = v493[0];
  *&v446[3] = *(v493 + 3);
  v447 = v393;
  v448 = v389;
  v449 = 1;
  *v450 = *v492;
  *&v450[3] = *&v492[3];
  v451 = v388;
  v452 = v390;
  v453 = v387;
  *&v454[3] = *(v494 + 3);
  *v454 = v494[0];
  v455 = v304;
  v456 = v305;
  v457 = v306;
  v458 = v307;
  v459 = 0;
  v460 = 1;
  sub_1000095E8(&v443, &qword_10119E090, &qword_100EDCC28);
  v461 = v408;
  v462 = v407;
  LOBYTE(v463) = v394;
  *(&v463 + 1) = *v497;
  HIDWORD(v463) = *&v497[3];
  v464 = v409;
  v465 = v405;
  v466 = 1;
  *v467 = *v496;
  *&v467[3] = *&v496[3];
  v468 = v406;
  *v469 = *v495;
  *&v469[3] = *&v495[3];
  v470 = v404;
  v471 = v403;
  v472 = v402;
  v473 = v401;
  v474 = 0;
  *&v475[3] = *(v499 + 3);
  *v475 = v499[0];
  v476 = v400;
  *&v477[3] = *&v498[3];
  *v477 = *v498;
  v478 = v290;
  v479 = v291;
  v480 = v292;
  v481 = v293;
  v482 = 0;
  *&v483[3] = *&v501[3];
  *v483 = *v501;
  v484 = v399;
  *&v485[3] = *&v500[3];
  *v485 = *v500;
  v486 = v398;
  v487 = v397;
  v488 = v396;
  v489 = v395;
  v490 = 0;
  v491 = 1;
  sub_1000095E8(&v461, &qword_10119E088, &qword_100EDCC20);
  return sub_1000095E8(v412, &qword_10119E018, &qword_100EDCAC0);
}

uint64_t sub_1006964C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v152 = sub_10010FC20(&qword_10119E0B0, &qword_100EDCCC8);
  __chkstk_darwin();
  v154 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v153 = &v127 - v4;
  v145 = type metadata accessor for ArtworkImage.ReusePolicy();
  v143 = *(v145 - 8);
  __chkstk_darwin();
  v144 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v132 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v134 = &v127 - v7;
  v8 = type metadata accessor for Artwork();
  v130 = *(v8 - 8);
  v131 = v8;
  __chkstk_darwin();
  v135 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v147 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v127 - v11;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v133 = &v127 - v12;
  v13 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v141 = *(v13 - 8);
  v142 = v13;
  __chkstk_darwin();
  v140 = &v127 - v14;
  v137 = sub_10010FC20(&qword_10118D620, &qword_100EC93B0);
  __chkstk_darwin();
  v138 = &v127 - v15;
  v136 = sub_10010FC20(&qword_10119E0B8, &qword_100EDCCD0);
  __chkstk_darwin();
  v139 = &v127 - v16;
  v150 = sub_10010FC20(&qword_10119E0C0, &qword_100EDCCD8);
  __chkstk_darwin();
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v127 - v19;
  v148 = sub_10010FC20(&qword_10119E0C8, &qword_100EDCCE0);
  __chkstk_darwin();
  v22 = (&v127 - v21);
  v23 = type metadata accessor for Image.ResizingMode();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119E0D0, &unk_100EDCCE8);
  __chkstk_darwin();
  v151 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v127 - v28;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v29 = *(type metadata accessor for SharePlayProxCard(0) + 20);
  v156 = a1;
  v30 = *(a1 + v29 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v164);

  if (v164)
  {
    v147 = v164;
    Image.init(uiImage:)();
    (*(v24 + 104))(v26, enum case for Image.ResizingMode.stretch(_:), v23);
    v31 = Image.resizable(capInsets:resizingMode:)();

    (*(v24 + 8))(v26, v23);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v177;
    v33 = v178;
    v34 = v179;
    v35 = v180;
    v37 = v181;
    v36 = v182;
    LOBYTE(v164) = v178;
    LOBYTE(v157) = v180;
    v38 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    *&v170 = v31;
    *(&v170 + 1) = v32;
    LOBYTE(v171) = v33;
    *(&v171 + 1) = v34;
    LOBYTE(v172) = v35;
    *(&v172 + 1) = v37;
    *&v173 = v36;
    WORD4(v173) = 256;
    *(&v173 + 10) = v157;
    HIWORD(v173) = WORD2(v157);
    LOBYTE(v174) = v38;
    DWORD1(v174) = *(&v164 + 3);
    *(&v174 + 1) = v164;
    *(&v174 + 1) = v39;
    *&v175[0] = v40;
    *(&v175[0] + 1) = v41;
    *&v175[1] = v42;
    BYTE8(v175[1]) = 0;
    v161 = v174;
    *v162 = v175[0];
    *&v162[9] = *(v175 + 9);
    v157 = v170;
    v158 = v171;
    v159 = v172;
    v160 = v173;
    v176 = 0;
    v163 = 0;
    sub_1000089F8(&v170, &v164, &qword_10119E0F0, &qword_100EDCD00);
    sub_10010FC20(&qword_10119E0F0, &qword_100EDCD00);
    sub_10069AE18();
    _ConditionalContent<>.init(storage:)();
    v43 = v167;
    v44 = v169[0];
    v22[4] = v168;
    v22[5] = v44;
    *(v22 + 90) = *(v169 + 10);
    v45 = v165;
    v46 = v166;
    *v22 = v164;
    v22[1] = v45;
    v22[2] = v46;
    v22[3] = v43;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10119E0D8, &qword_100EDCCF8);
    sub_10069AD94();
    sub_10069B004();
    v47 = v149;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(&v170, &qword_10119E0F0, &qword_100EDCD00);
  }

  else
  {
    v48 = v146;
    v49 = v147;
    v128 = v18;
    v129 = v20;
    if (*(v30 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage))
    {
      v50 = v130;
      v51 = v131;
      (*(v130 + 56))(v146, 1, 1, v131);
    }

    else
    {
      v52 = type metadata accessor for SharePlayProxCard.ViewModel(0);
      v53 = *(v156 + *(v52 + 44));
      if (v53)
      {
        v147 = v53;
        Image.init(uiImage:)();
        (*(v24 + 104))(v26, enum case for Image.ResizingMode.stretch(_:), v23);
        v54 = Image.resizable(capInsets:resizingMode:)();

        (*(v24 + 8))(v26, v23);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v55 = v177;
        v56 = v178;
        v57 = v179;
        v58 = v180;
        v60 = v181;
        v59 = v182;
        LOBYTE(v164) = v178;
        LOBYTE(v157) = v180;
        v61 = static Edge.Set.all.getter();
        EdgeInsets.init(_all:)();
        *&v170 = v54;
        *(&v170 + 1) = v55;
        LOBYTE(v171) = v56;
        *(&v171 + 1) = v57;
        LOBYTE(v172) = v58;
        *(&v172 + 1) = v60;
        *&v173 = v59;
        WORD4(v173) = 256;
        *(&v173 + 10) = v157;
        HIWORD(v173) = WORD2(v157);
        LOBYTE(v174) = v61;
        DWORD1(v174) = *(&v164 + 3);
        *(&v174 + 1) = v164;
        *(&v174 + 1) = v62;
        *&v175[0] = v63;
        *(&v175[0] + 1) = v64;
        *&v175[1] = v65;
        BYTE8(v175[1]) = 0;
        v161 = v174;
        *v162 = v175[0];
        *&v162[9] = *(v175 + 9);
        v157 = v170;
        v158 = v171;
        v159 = v172;
        v160 = v173;
        v176 = 1;
        v163 = 1;
        sub_1000089F8(&v170, &v164, &qword_10119E0F0, &qword_100EDCD00);
        sub_10010FC20(&qword_10119E0F0, &qword_100EDCD00);
        sub_10069AE18();
        _ConditionalContent<>.init(storage:)();
        v66 = v167;
        v67 = v169[0];
        v22[4] = v168;
        v22[5] = v67;
        *(v22 + 90) = *(v169 + 10);
        v68 = v165;
        v69 = v166;
        *v22 = v164;
        v22[1] = v68;
        v22[2] = v69;
        v22[3] = v66;
        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_10119E0D8, &qword_100EDCCF8);
        sub_10069AD94();
        sub_10069B004();
        v47 = v149;
        _ConditionalContent<>.init(storage:)();

        sub_1000095E8(&v170, &qword_10119E0F0, &qword_100EDCD00);
        goto LABEL_11;
      }

      sub_1000089F8(v156 + *(v52 + 40), v48, &unk_101188920, &qword_100EBCC50);
      v50 = v130;
      v51 = v131;
    }

    sub_10003D17C(v48, v49, &unk_101188920, &qword_100EBCC50);
    v70 = v49;
    v71 = 1;
    v72 = (*(v50 + 48))(v49, 1, v51);
    v47 = v149;
    v156 = v22;
    v73 = v50;
    v75 = v133;
    v74 = v134;
    v76 = v135;
    if (v72 != 1)
    {
      (*(v73 + 32))(v135, v70, v51);
      v77 = type metadata accessor for Artwork.CropStyle();
      (*(*(v77 - 8) + 56))(v74, 1, 1, v77);
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v76, v74, v75);
      v71 = 0;
    }

    v78 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v78 - 8) + 56))(v75, v71, 1, v78);
    v79 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    v80 = v132;
    (*(*(v79 - 8) + 56))(v132, 8, 11, v79);
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v157);
    v82 = v143;
    v81 = v144;
    v83 = v145;
    (*(v143 + 104))(v144, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v145);
    v84 = v140;
    v85 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v75, v80, &v157, v81, v140);
    (*(v82 + 8))(v81, v83, v85);
    sub_10069B35C(v80, type metadata accessor for ArtworkImage.Placeholder);
    sub_1000095E8(v75, &unk_10118A5E0, &unk_100EBCD90);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v86 = v138;
    (*(v141 + 32))(v138, v84, v142);
    v87 = (v86 + *(v137 + 36));
    v88 = v165;
    v89 = v166;
    *v87 = v164;
    v87[1] = v88;
    v87[2] = v89;
    v90 = v139;
    sub_10003D17C(v86, v139, &qword_10118D620, &qword_100EC93B0);
    *(v90 + *(v136 + 36)) = 256;
    LOBYTE(v86) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = v128;
    sub_10003D17C(v90, v128, &qword_10119E0B8, &qword_100EDCCD0);
    v100 = v99 + *(v150 + 36);
    *v100 = v86;
    *(v100 + 8) = v92;
    *(v100 + 16) = v94;
    *(v100 + 24) = v96;
    *(v100 + 32) = v98;
    *(v100 + 40) = 0;
    v101 = v129;
    sub_10003D17C(v99, v129, &qword_10119E0C0, &qword_100EDCCD8);
    sub_1000089F8(v101, v156, &qword_10119E0C0, &qword_100EDCCD8);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10119E0D8, &qword_100EDCCF8);
    sub_10069AD94();
    sub_10069B004();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v101, &qword_10119E0C0, &qword_100EDCCD8);
  }

LABEL_11:
  v102 = static Axis.Set.horizontal.getter();
  v103 = v153;
  *v153 = v102;
  v104 = sub_10010FC20(&qword_10119E138, &qword_100EDCD20);
  sub_1006975B4(v103 + *(v104 + 44));
  v105 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v103 + *(sub_10010FC20(&qword_10119E140, &qword_100EDCD28) + 36);
  *v114 = v105;
  *(v114 + 8) = v107;
  *(v114 + 16) = v109;
  *(v114 + 24) = v111;
  *(v114 + 32) = v113;
  *(v114 + 40) = 0;
  v115 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v116 = v151;
  v117 = v103 + *(v152 + 36);
  *v117 = v115;
  *(v117 + 8) = v118;
  *(v117 + 16) = v119;
  *(v117 + 24) = v120;
  *(v117 + 32) = v121;
  *(v117 + 40) = 0;
  sub_1000089F8(v47, v116, &qword_10119E0D0, &unk_100EDCCE8);
  v122 = v47;
  v123 = v154;
  sub_1000089F8(v103, v154, &qword_10119E0B0, &qword_100EDCCC8);
  v124 = v155;
  sub_1000089F8(v116, v155, &qword_10119E0D0, &unk_100EDCCE8);
  v125 = sub_10010FC20(&qword_10119E148, &qword_100EDCD30);
  sub_1000089F8(v123, v124 + *(v125 + 48), &qword_10119E0B0, &qword_100EDCCC8);
  sub_1000095E8(v103, &qword_10119E0B0, &qword_100EDCCC8);
  sub_1000095E8(v122, &qword_10119E0D0, &unk_100EDCCE8);
  sub_1000095E8(v123, &qword_10119E0B0, &qword_100EDCCC8);
  return sub_1000095E8(v116, &qword_10119E0D0, &unk_100EDCCE8);
}

uint64_t sub_1006975B4@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  sub_10010FC20(&qword_10119E150, &qword_100EDCD38);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  sub_10010FC20(&qword_10119E158, &qword_100EDCD40);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  sub_10010FC20(&qword_10119E160, &qword_100EDCD48);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10010FC20(&qword_10119E168, &qword_100EDCD50);
  sub_100697920(&v13[*(v14 + 44)]);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = &v9[*(sub_10010FC20(&qword_10119E170, &qword_100EDCD58) + 44)];
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = sub_10010FC20(&qword_10119E178, &qword_100EDCD60);
  sub_1006982A0(&v5[*(v16 + 44)]);
  sub_1000089F8(v5, v3, &qword_10119E150, &qword_100EDCD38);
  sub_1000089F8(v3, v15, &qword_10119E150, &qword_100EDCD38);
  v17 = v15 + *(sub_10010FC20(&qword_10119E180, &qword_100EDCD68) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1000095E8(v5, &qword_10119E150, &qword_100EDCD38);
  sub_1000095E8(v3, &qword_10119E150, &qword_100EDCD38);
  sub_1000089F8(v13, v11, &qword_10119E160, &qword_100EDCD48);
  sub_1000089F8(v9, v7, &qword_10119E158, &qword_100EDCD40);
  v18 = v22;
  sub_1000089F8(v11, v22, &qword_10119E160, &qword_100EDCD48);
  v19 = sub_10010FC20(&qword_10119E188, &qword_100EDCD70);
  sub_1000089F8(v7, v18 + *(v19 + 48), &qword_10119E158, &qword_100EDCD40);
  sub_1000095E8(v9, &qword_10119E158, &qword_100EDCD40);
  sub_1000095E8(v13, &qword_10119E160, &qword_100EDCD48);
  sub_1000095E8(v7, &qword_10119E158, &qword_100EDCD40);
  return sub_1000095E8(v11, &qword_10119E160, &qword_100EDCD48);
}

uint64_t sub_100697920@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119E190, &qword_100EDCD78);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  sub_10010FC20(&qword_10119E198, &qword_100EDCD80);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_100697B24();
  sub_100697F34(v5);
  sub_1000089F8(v9, v7, &qword_10119E198, &qword_100EDCD80);
  sub_1000089F8(v5, v3, &qword_10119E190, &qword_100EDCD78);
  sub_1000089F8(v7, a1, &qword_10119E198, &qword_100EDCD80);
  v10 = sub_10010FC20(&qword_10119E1D0, &qword_100EDCDE0);
  v11 = a1 + *(v10 + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_1000089F8(v3, a1 + *(v10 + 64), &qword_10119E190, &qword_100EDCD78);
  sub_1000095E8(v5, &qword_10119E190, &qword_100EDCD78);
  sub_1000095E8(v9, &qword_10119E198, &qword_100EDCD80);
  sub_1000095E8(v3, &qword_10119E190, &qword_100EDCD78);
  return sub_1000095E8(v7, &qword_10119E198, &qword_100EDCD80);
}

uint64_t sub_100697B24()
{
  v28[0] = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v1 = *(v28[0] + 64);
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = sub_10010FC20(&qword_10119E1B8, &qword_100EDCDD0);
  __chkstk_darwin();
  v4 = v28 - v3;
  v28[1] = sub_10010FC20(&qword_10119E1C0, &qword_100EDCDD8);
  __chkstk_darwin();
  v6 = v28 - v5;
  v7 = sub_1006937E4();
  if (v8)
  {
    v29 = v7;
    v30 = v8;
    sub_100009838();
    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    v14 = Text.bold()();
    v16 = v15;
    v18 = v17;
    v28[0] = v2;
    v20 = v19;
    sub_10011895C(v9, v11, v13 & 1);

    *v6 = v14;
    *(v6 + 1) = v16;
    v6[16] = v18 & 1;
    *(v6 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_10069B200();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v29 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v22;
    sub_10069B540(v0, v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
    v23 = (*(v28[0] + 80) + 16) & ~*(v28[0] + 80);
    v24 = swift_allocObject();
    sub_10069A548(v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_100009838();
    Button<>.init<A>(_:action:)();
    v25 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v27 = &v4[*(v2 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_1000089F8(v4, v6, &qword_10119E1B8, &qword_100EDCDD0);
    swift_storeEnumTagMultiPayload();
    sub_10069B200();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v4, &qword_10119E1B8, &qword_100EDCDD0);
  }
}

uint64_t sub_100697F34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_10119E1A8, &qword_100EDCD90);
  v16[0] = *(v5 - 8);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_1006937E4();
  if (v8)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v16[1] = String.init(localized:table:bundle:locale:comment:)();
    v16[2] = v9;
    sub_10069B540(v1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_10069A548(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    sub_100009838();
    Button<>.init<A>(_:action:)();
    KeyPath = swift_getKeyPath();
    v13 = &v7[*(sub_10010FC20(&qword_10119E1B0, &qword_100EDCDC8) + 36)];
    *v13 = KeyPath;
    *(v13 + 1) = 1;
    v13[16] = 0;
    *&v7[*(v5 + 36)] = 0x3FF0000000000000;
    sub_10003D17C(v7, a1, &qword_10119E1A8, &qword_100EDCD90);
    return (*(v16[0] + 56))(a1, 0, 1, v5);
  }

  else
  {
    v15 = *(v16[0] + 56);

    return v15(a1, 1, 1, v5);
  }
}

uint64_t sub_1006982A0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119E190, &qword_100EDCD78);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  sub_10010FC20(&qword_10119E198, &qword_100EDCD80);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_100697B24();
  sub_100697F34(v5);
  sub_1000089F8(v9, v7, &qword_10119E198, &qword_100EDCD80);
  sub_1000089F8(v5, v3, &qword_10119E190, &qword_100EDCD78);
  sub_1000089F8(v7, a1, &qword_10119E198, &qword_100EDCD80);
  v10 = sub_10010FC20(&qword_10119E1A0, &qword_100EDCD88);
  sub_1000089F8(v3, a1 + *(v10 + 48), &qword_10119E190, &qword_100EDCD78);
  sub_1000095E8(v5, &qword_10119E190, &qword_100EDCD78);
  sub_1000095E8(v9, &qword_10119E198, &qword_100EDCD80);
  sub_1000095E8(v3, &qword_10119E190, &qword_100EDCD78);
  return sub_1000095E8(v7, &qword_10119E198, &qword_100EDCD80);
}

uint64_t sub_100698490(uint64_t a1)
{
  type metadata accessor for OpenURLAction();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.openURL.setter();
}

id sub_100698558()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    LSApplicationWorkspace.openMusicSettings()();

    return static OpenURLAction.Result.handled.getter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006985C0(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  if (v6 == 1)
  {
    if (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) != 1)
    {
      return static Color.clear.getter();
    }

    goto LABEL_7;
  }

  sub_1006937E4();
  if (!v2)
  {
LABEL_7:
    v5 = [objc_opt_self() systemFillColor];
    return Color.init(_:)();
  }

  v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  return Color.init(_:)();
}

__n128 sub_1006986DC@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_10010FC20(&qword_10119E050, &qword_100EDCBB8);
  __chkstk_darwin();
  v6 = &v34[-v5];
  v7 = sub_10010FC20(&qword_10119E1E0, &qword_100EDCDF0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v34[-v9];
  v11 = sub_10010FC20(&qword_10119E048, &qword_100EDCBB0);
  __chkstk_darwin();
  v13 = &v34[-v12];
  v14 = sub_10010FC20(&qword_10119E038, &qword_100EDCBA8);
  __chkstk_darwin();
  v16 = &v34[-v15];
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v17 = sub_10010FC20(&qword_10119E1E8, &unk_100EDCDF8);
  sub_100698AE8(a1, &v6[*(v17 + 44)]);
  v18 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_10069AC2C();
  View.bold(_:)();
  sub_1000095E8(v6, &qword_10119E050, &qword_100EDCBB8);
  if (v35)
  {
    v21 = static Color.primary.getter();
  }

  else
  {
    v21 = static Color.white.getter();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v7);
  v24 = &v13[*(v11 + 36)];
  *v24 = v23;
  v24[1] = v22;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v13, v16, &qword_10119E048, &qword_100EDCBB0);
  v25 = &v16[*(v14 + 36)];
  v26 = v42;
  v25[4] = v41;
  v25[5] = v26;
  v25[6] = v43;
  v27 = v38;
  *v25 = v37;
  v25[1] = v27;
  v28 = v40;
  v25[2] = v39;
  v25[3] = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v36;
  sub_10003D17C(v16, v36, &qword_10119E038, &qword_100EDCBA8);
  v30 = v29 + *(sub_10010FC20(&qword_10119E020, &qword_100EDCBA0) + 36);
  v31 = v49;
  *(v30 + 64) = v48;
  *(v30 + 80) = v31;
  *(v30 + 96) = v50;
  v32 = v45;
  *v30 = v44;
  *(v30 + 16) = v32;
  result = v47;
  *(v30 + 32) = v46;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_100698AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101199ED0, &qword_100ED89A0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v35 - v6;
  sub_10010FC20(&qword_10119E1F0, &qword_100EDCE08);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v12 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v42);

  if (LOBYTE(v42[0]) == 1 && (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) & 1) == 0)
  {
    ProgressView<>.init<>()();
    (*(v5 + 32))(v11, v7, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v5 + 56))(v11, v13, 1, v4);
  v14 = a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52);
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*(v14 + 16))
  {
    *&v42[0] = *v14;
    *(&v42[0] + 1) = v15;
    sub_100009838();

    v37 = Text.init<A>(_:)();
    v38 = v17;
    v39 = v18 & 1;
    v40 = v19;
    v41 = 1;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {

    *&v42[0] = v16(v12);
    *(&v42[0] + 1) = v20;
    sub_100009838();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    v37 = v21;
    v38 = v22;
    v25 = v24 & 1;
    v39 = v24 & 1;
    v40 = v26;
    v41 = 0;
    sub_10021D0C0(v21, v22, v24 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_10069A538(v16, v15, 0);
    sub_10011895C(v21, v23, v25);
  }

  v35 = v42[0];
  v36 = v42[1];
  v27 = v43;
  sub_1000089F8(v11, v9, &qword_10119E1F0, &qword_100EDCE08);
  sub_1000089F8(v9, a2, &qword_10119E1F0, &qword_100EDCE08);
  v28 = a2 + *(sub_10010FC20(&qword_10119E1F8, &unk_100EDCE10) + 48);
  v30 = v35;
  v29 = v36;
  *v28 = v35;
  *(v28 + 16) = v29;
  *(v28 + 32) = v27;
  v31 = v30;
  v32 = v29;
  v33 = *(&v29 + 1);
  sub_10069B2E4(v30, *(&v30 + 1), v29, *(&v29 + 1));
  sub_1000095E8(v11, &qword_10119E1F0, &qword_100EDCE08);
  sub_10069B320(v31, *(&v31 + 1), v32, v33);
  return sub_1000095E8(v9, &qword_10119E1F0, &qword_100EDCE08);
}

uint64_t sub_100698EE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v7 = sub_10010FC20(&qword_101180F78, &qword_100EBCA90);
  v54 = *(v7 - 8);
  __chkstk_darwin();
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v39 - v9;
  __chkstk_darwin();
  v47 = &v39 - v10;
  __chkstk_darwin();
  v46 = &v39 - v11;
  __chkstk_darwin();
  v45 = &v39 - v12;
  __chkstk_darwin();
  v52 = &v39 - v13;
  __chkstk_darwin();
  v55 = &v39 - v14;
  __chkstk_darwin();
  v53 = &v39 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v16;
  v51 = type metadata accessor for SharePlayProxCard;
  sub_10069B540(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
  v44 = *(v3 + 80);
  v17 = (v44 + 16) & ~v44;
  v18 = swift_allocObject();
  sub_10069A548(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v43 = sub_100009838();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v41 = v6;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v19;
  v42 = a1;
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v51;
  sub_10069B540(a1, v40, v51);
  v21 = swift_allocObject();
  sub_10069A548(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17);
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v22;
  v23 = v40;
  sub_10069B540(a1, v40, v20);
  v24 = swift_allocObject();
  sub_10069A548(v23, v24 + v17);
  v25 = v52;
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v26;
  sub_10069B540(v42, v23, v51);
  v27 = swift_allocObject();
  sub_10069A548(v23, v27 + v17);
  v28 = v45;
  Button<>.init<A>(_:action:)();
  v29 = *(v54 + 16);
  v30 = v46;
  v29(v46, v53, v7);
  v31 = v47;
  v29(v47, v55, v7);
  v32 = v48;
  v29(v48, v25, v7);
  v33 = v49;
  v34 = v28;
  v29(v49, v28, v7);
  v35 = v50;
  v29(v50, v30, v7);
  v36 = sub_10010FC20(&qword_10119DF90, &qword_100EDCA30);
  v29(&v35[v36[12]], v31, v7);
  v29(&v35[v36[16]], v32, v7);
  v29(&v35[v36[20]], v33, v7);
  v37 = *(v54 + 8);
  v37(v34, v7);
  v37(v52, v7);
  v37(v55, v7);
  v37(v53, v7);
  v37(v33, v7);
  v37(v32, v7);
  v37(v31, v7);
  return (v37)(v30, v7);
}

uint64_t sub_100699690(uint64_t a1, char a2)
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&qword_101196580, &unk_100EDCA00);
  State.wrappedValue.setter();
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

void sub_100699754(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  if (v2)
  {

    *(v1 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 0;
  }

  *(v1 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 1;
}

double sub_100699848@<D0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010FC20(&qword_101196580, &unk_100EDCA00);
  State.projectedValue.getter();
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.projectedValue.getter();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v9, *(&v9 + 1), v10, v6, v7, v8, v6, v7, a2, v8, 0, 0, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a2 + *(sub_10010FC20(&qword_101196588, &qword_100ED4EB8) + 36));
  *v4 = v9;
  v4[1] = v10;
  result = *&v11;
  v4[2] = v11;
  return result;
}

void sub_100699A20(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100699AA0@<X0>(char *a2@<X8>)
{
  v38 = a2;
  sub_10010FC20(&qword_10119DF80, &unk_100EDC970);
  __chkstk_darwin();
  v3 = &v31 - v2;
  v37 = sub_10010FC20(&qword_101180F78, &qword_100EBCA90);
  v41 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v31 - v5;
  __chkstk_darwin();
  v40 = &v31 - v6;
  __chkstk_darwin();
  v39 = &v31 - v7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = sub_10010FC20(&qword_101194578, &qword_100EDC980);
  v33 = *(v8 - 8);
  v9 = v33;
  v34 = v8;
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v31 - v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v42 = v14;
  v43 = v16;
  sub_100009838();
  v32 = v13;
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  LocalizedStringKey.init(stringLiteral:)();
  v17 = v39;
  Button<>.init(_:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v18 = type metadata accessor for ButtonRole();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  v19 = v40;
  Button<>.init(_:role:action:)();
  v20 = *(v9 + 16);
  v31 = v11;
  v21 = v34;
  v20(v11, v13, v34);
  v22 = *(v41 + 16);
  v23 = v35;
  v24 = v37;
  v22(v35, v17, v37);
  v25 = v36;
  v22(v36, v19, v24);
  v26 = v38;
  v20(v38, v11, v21);
  v27 = sub_10010FC20(&qword_10119DF88, &qword_100EDC9B0);
  v22(&v26[*(v27 + 48)], v23, v24);
  v22(&v26[*(v27 + 64)], v25, v24);
  v28 = *(v41 + 8);
  v28(v40, v24);
  v28(v39, v24);
  v29 = *(v33 + 8);
  v29(v32, v21);
  v28(v25, v24);
  v28(v23, v24);
  return (v29)(v31, v21);
}

void sub_10069A0BC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_10069A13C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10069A1C0(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_10069A234(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

unint64_t sub_10069A2BC()
{
  result = qword_10119DF68;
  if (!qword_10119DF68)
  {
    sub_1001109D0(&qword_10119DF38, &qword_100EDC940);
    sub_1001109D0(&qword_10119DF30, &qword_100EDC938);
    sub_1001109D0(&qword_10119DF48, &unk_100EDC958);
    sub_100020674(&qword_10119DF50, &qword_10119DF30, &qword_100EDC938, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_10119DF58, &qword_10119DF48, &unk_100EDC958, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10119DF70, &qword_101196590, &qword_100ED4EC0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DF68);
  }

  return result;
}

void sub_10069A444(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10069A4C4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10069A538(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_10069A548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069A5B0()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v4 = v3[10];
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  sub_10069A538(*(v2 + v3[13]), *(v2 + v3[13] + 8), *(v2 + v3[13] + 16));

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10069A834@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069A888@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069A904(uint64_t a1)
{
  sub_10010FC20(&qword_10119E1D8, &qword_100EDCDE8);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &qword_10119E1D8, &qword_100EDCDE8);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10069A9AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069AA04()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_10069AAB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10069AB38()
{
  result = qword_10119E040;
  if (!qword_10119E040)
  {
    sub_1001109D0(&qword_10119E048, &qword_100EDCBB0);
    sub_1001109D0(&qword_10119E050, &qword_100EDCBB8);
    sub_10069AC2C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E040);
  }

  return result;
}

unint64_t sub_10069AC2C()
{
  result = qword_10119E058;
  if (!qword_10119E058)
  {
    sub_1001109D0(&qword_10119E050, &qword_100EDCBB8);
    sub_100020674(&qword_10119E060, &qword_10119E068, &unk_100EDCBC0, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E058);
  }

  return result;
}

uint64_t sub_10069AD10@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10069AD94()
{
  result = qword_10119E0E0;
  if (!qword_10119E0E0)
  {
    sub_1001109D0(&qword_10119E0D8, &qword_100EDCCF8);
    sub_10069AE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E0E0);
  }

  return result;
}

unint64_t sub_10069AE18()
{
  result = qword_10119E0E8;
  if (!qword_10119E0E8)
  {
    sub_1001109D0(&qword_10119E0F0, &qword_100EDCD00);
    sub_10069AED0(&qword_10119E0F8, &qword_10119E100, &qword_100EDCD08, sub_10069AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E0E8);
  }

  return result;
}

uint64_t sub_10069AED0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_100020674(&qword_10119E118, &qword_10119E120, &qword_100EDCD18, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10069AF80()
{
  result = qword_10119E108;
  if (!qword_10119E108)
  {
    sub_1001109D0(&qword_10119E110, &qword_100EDCD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E108);
  }

  return result;
}

unint64_t sub_10069B004()
{
  result = qword_10119E128;
  if (!qword_10119E128)
  {
    sub_1001109D0(&qword_10119E0C0, &qword_100EDCCD8);
    sub_10069AED0(&qword_10119E130, &qword_10119E0B8, &qword_100EDCCD0, sub_1003C3A74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E128);
  }

  return result;
}

uint64_t sub_10069B0D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10069B148@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10069B200()
{
  result = qword_10119E1C8;
  if (!qword_10119E1C8)
  {
    sub_1001109D0(&qword_10119E1B8, &qword_100EDCDD0);
    sub_100020674(&qword_101180F70, &qword_101180F78, &qword_100EBCA90, &protocol conformance descriptor for Button<A>);
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E1C8);
  }

  return result;
}

double sub_10069B2E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10021D0C0(a1, a2, a3 & 1);

  return result;
}

double sub_10069B320(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10011895C(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_10069B35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10069B3BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10069B3CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100692080(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10069B48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006927D8(a1, v4, v5, v6);
}

uint64_t sub_10069B540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10069B5AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if ((a1 >> 62) > 1)
  {
    result = 0;
    if (a1 >> 62 == 2)
    {
      return result;
    }

    if (a1 == 0xC000000000000000 && !(a3 | a2))
    {
      static DeviceCapabilities.hasWAPICapability.getter();
    }
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void (*sub_10069B85C(unint64_t a1, uint64_t a2, uint64_t a3))()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  result = 0;
  if ((a1 >> 62) - 1 >= 2)
  {
    if (a1 >> 62)
    {
      result = 0;
      if (a1 == 0xC000000000000000 && !(a3 | a2))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        return sub_10069D768;
      }
    }

    else
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      return a2;
    }
  }

  return result;
}

uint64_t sub_10069BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContainerDetail.Source(0);
  v8 = __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v8);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == enum case for MusicPropertySource.catalog(_:))
  {
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
  }

  else if (v11 == enum case for MusicPropertySource.library(_:))
  {
    v12 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    v15 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    v10[v13] = 0;
    v10[v14] = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v7, v4);
  }

  sub_1006AA2C8(v10, a2, type metadata accessor for ContainerDetail.Source);
  return (*(v5 + 8))(a1, v4);
}

id sub_10069BCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

uint64_t sub_10069BD04()
{
  v1 = v0;
  v2 = type metadata accessor for Genre();
  v25 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Curator();
  v24 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artist();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContainerDetail.AttributionItem(0);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AA200(v1, v13, type metadata accessor for ContainerDetail.AttributionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_9;
    }

    v18 = v25;
    (*(v25 + 32))(v4, v13, v2);
    Genre.catalogID.getter();
    v20 = v19;
    (*(v18 + 8))(v4, v2);
    if (v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v15 = v24;
        (*(v24 + 32))(v7, v13, v5);
        Curator.catalogID.getter();
        v17 = v16;
        (*(v15 + 8))(v7, v5);
        if (!v17)
        {
          return 0;
        }

        goto LABEL_11;
      }

LABEL_9:
      sub_1006AA268(v13, type metadata accessor for ContainerDetail.AttributionItem);
      return 1;
    }

    (*(v9 + 32))(v11, v13, v8);
    Artist.catalogID.getter();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    if (v22)
    {
LABEL_11:

      return 1;
    }
  }

  return 0;
}

uint64_t sub_10069C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Genre();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for RadioShow();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for Curator();
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = type metadata accessor for SocialProfile();
  v5[19] = v11;
  v5[20] = *(v11 - 8);
  v5[21] = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  v5[22] = v12;
  v5[23] = *(v12 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for ContainerDetail.AttributionItem(0);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10069C390, 0, 0);
}

uint64_t sub_10069C390(__n128 a1)
{
  sub_1006AA200(v1[2], v1[26], type metadata accessor for ContainerDetail.AttributionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v1[26];
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = v1[17];
      v19 = v1[18];
      v21 = v1[16];
      v23 = v1[11];
      v22 = v1[12];
      v24 = v1[10];
      (*(v23 + 32))(v22, v3, v24);
      (*(v23 + 16))(v19, v22, v24);
      (*(v20 + 104))(v19, enum case for MusicPageProvider.Destination.radioShowDetail<A, B>(_:), v21);
      v8 = swift_task_alloc();
      v1[30] = v8;
      *v8 = v1;
      v9 = sub_10069CE74;
    }

    else
    {
      v11 = v1[17];
      v10 = v1[18];
      v12 = v1[16];
      if (EnumCaseMultiPayload == 4)
      {
        v14 = v1[8];
        v13 = v1[9];
        v15 = v1[7];
        (*(v14 + 32))(v13, v3, v15);
        (*(v14 + 16))(v10, v13, v15);
        (*(v11 + 104))(v10, enum case for MusicPageProvider.Destination.genreDetail<A, B>(_:), v12);
        v8 = swift_task_alloc();
        v1[31] = v8;
        *v8 = v1;
        v9 = sub_10069D0B0;
      }

      else
      {
        v32 = v1[5];
        v31 = v1[6];
        v33 = v1[4];
        (*(v32 + 32))(v31, v3, v33);
        (*(v32 + 16))(v10, v31, v33);
        (*(v11 + 104))(v10, enum case for MusicPageProvider.Destination.playlistCollaboratorsDetail<A, B>(_:), v12);
        v8 = swift_task_alloc();
        v1[32] = v8;
        *v8 = v1;
        v9 = sub_10069D2EC;
      }
    }

LABEL_14:
    v8[1] = v9;
    v34 = v1[3];

    return sub_100704654(v34, 0);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v1[18];
      v5 = v1[16];
      v6 = v1[17];
      (*(v1[20] + 32))(v1[21], v3, v1[19]);
      *v4 = SocialProfile.id.getter();
      v4[1] = v7;
      (*(v6 + 104))(v4, enum case for MusicPageProvider.Destination.socialProfileDetail<A, B>(_:), v5);
      v8 = swift_task_alloc();
      v1[28] = v8;
      *v8 = v1;
      v9 = sub_10069C9FC;
    }

    else
    {
      v26 = v1[17];
      v25 = v1[18];
      v28 = v1[15];
      v27 = v1[16];
      v29 = v1[13];
      v30 = v1[14];
      (*(v30 + 32))(v28, v3, v29);
      (*(v30 + 16))(v25, v28, v29);
      (*(v26 + 104))(v25, enum case for MusicPageProvider.Destination.curatorDetail<A, B>(_:), v27);
      v8 = swift_task_alloc();
      v1[29] = v8;
      *v8 = v1;
      v9 = sub_10069CC38;
    }

    goto LABEL_14;
  }

  (*(v1[23] + 32))(v1[24], v3, v1[22]);
  v16 = swift_task_alloc();
  v1[27] = v16;
  *v16 = v1;
  v16[1] = sub_10069C81C;
  v17 = v1[3];

  return sub_100136860(v17);
}

uint64_t sub_10069C81C()
{

  return _swift_task_switch(sub_10069C918, 0, 0);
}

uint64_t sub_10069C918()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069C9FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CB54, 0, 0);
}

uint64_t sub_10069CB54()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069CC38()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CD90, 0, 0);
}

uint64_t sub_10069CD90()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069CE74()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CFCC, 0, 0);
}

uint64_t sub_10069CFCC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D0B0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069D208, 0, 0);
}

uint64_t sub_10069D208()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D2EC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069D444, 0, 0);
}

uint64_t sub_10069D444()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D52C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if ((a1 >> 62) <= 1 || (result = 0, a1 >> 62 != 2))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

void sub_10069D768()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openSettings()();
  }

  else
  {
    __break(1u);
  }
}

void sub_10069D888()
{
  v1 = v0;
  swift_getObjectType();
  v74.receiver = v0;
  v74.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v74, "viewDidLoad");
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012193F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Called viewDidLoad", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = sub_1006AB9BC;
  v73 = v7;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_10027D328;
  v71 = &unk_1010BA8F8;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:3.0];
  _Block_release(v8);
  v10 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer];
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] = v9;

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  type metadata accessor for PlaylistDetailDataSource(0);
  if (swift_dynamicCastClass())
  {
    _s14SheetPresenterV10DataSourceCMa(0);
    swift_allocObject();
    *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource] = sub_10055D1A8();
    swift_retain_n();

    sub_1006AA330(&unk_10119E450, _s14SheetPresenterV10DataSourceCMa, &unk_100ED3044);
    v15 = ObservedObject.init(wrappedValue:)();
    v17 = v16;
    sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
    State.init(wrappedValue:)();
    v18 = aBlock;
    v19 = v69;
    aBlock = v15;
    v69 = v17;
    v70 = v18;
    v71 = v19;
    v20 = objc_allocWithZone(sub_10010FC20(&unk_10119E460, &qword_100EDD330));
    v21 = _UIHostingView.init(rootView:)();
    v22 = [v1 view];
    if (!v22)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v23 = v22;
    [v22 addSubview:v21];
  }

  v24 = sub_1006A6078();
  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = type metadata accessor for HIMetricsCollectionView();
  v67.receiver = v24;
  v67.super_class = v35;
  objc_msgSendSuper2(&v67, "frame");
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v66.receiver = v24;
  v66.super_class = v35;
  objc_msgSendSuper2(&v66, "setFrame:", v28, v30, v32, v34);
  sub_1001891B4(v37, v39, v41, v43);

  v44 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
  [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] setAutoresizingMask:18];
  v45 = [v1 view];
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = v45;
  [v45 addSubview:*&v1[v44]];

  v47 = *&v1[v44];
  v48 = v47;
  v75.value.super.super.super.isa = v47;
  UIViewController.setContentScrollView(_:)(v75);

  v49 = *v14;
  v50 = v14[1];
  ObjectType = swift_getObjectType();
  aBlock = v49;
  if ((v50[27])(ObjectType, v50))
  {
    [*&v1[v44] setAlpha:0.0];
  }

  if (!*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_storeItemMetadataDidChangeObserver])
  {
    v52 = *v14;
    v53 = v14[1];
    v54 = swift_getObjectType();
    aBlock = v52;
    (v53[42])(v54, v53);
  }

  v55 = [v1 traitCollection];
  v56 = sub_100217F14();
  UITraitCollection.subscript.getter();

  v57 = sub_10049CB78();

  swift_beginAccess();
  v58 = *v14;
  v59 = v14[1];
  v60 = swift_getObjectType();
  (v59[14])(v57 & 1, v60, v59);
  *v14 = v58;
  v14[1] = v59;
  swift_endAccess();
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100EBC6B0;
  *(v61 + 32) = &type metadata for LibraryFilterTrait;
  *(v61 + 40) = v56;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10069F67C();
  v62 = [v1 navigationItem];
  [v62 setLargeTitleDisplayMode:2];

  v63 = *v14;
  v64 = v14[1];
  v65 = swift_getObjectType();
  aBlock = v63;
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dragDropController] = (v64[12])(v65, v64);

  sub_10069FFC8(0);
}

void sub_10069DFC0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_1001F4CB8(0, 0, v3, &unk_100EDD340, v9);
  }
}

uint64_t sub_10069E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10069E1AC, v6, v5);
}

uint64_t sub_10069E1AC()
{
  v1 = v0[7];

  v2 = (v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v0[5] = v3;
  v0[6] = v3;
  v6 = *(v4 + 216);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  (*(v4 + 440))(v7 & 1 | 0x8000000000000000, 0, 0, ObjectType, v4);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

void sub_10069E30C(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1012193F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Called viewDidAppear", v7, 2u);
  }

  sub_1006A3EE4();
  v8 = v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion];
  v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion] = 1;
  if (v8 != 1)
  {
    v9 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 432))(ObjectType, v10);
  }

  sub_100503D5C();
  v12 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v13 = *(v12 + 1);
  v14 = swift_getObjectType();
  if ((*(v13 + 200))(v14, v13))
  {
    dispatch thunk of RelatedContentProvider.onAppear()();
  }

  sub_1006A4A18();
}

void sub_10069E54C(char a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v27, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_1003FC8BC(v1, v6);
    v9 = v8;

    if ((v9 & 1) == 0 && v7 >= 1)
    {
      v10 = [v4 viewControllers];
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_10004056C(v7 - 1, v11);
      }

      else
      {
        if (v7 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 8 * (v7 - 1) + 32);
      }

      v13 = v12;

      v14 = [v13 navigationItem];

      [v14 setBackButtonDisplayMode:2];
    }
  }

  v15 = sub_1006A44A0();
  *(v15 + 145) = 1;
  v16 = v15[4];
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    do
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_23:
        swift_once();
        if ((byte_101218F00 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:

        v24 = v1;
        goto LABEL_27;
      }

      v22 = *v19;
      v23 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v23 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_16:
          v20 = 0;
          goto LABEL_12;
        }
      }

      v20 = *(v15 + 145);
LABEL_12:
      ++v18;
      ObjectType = swift_getObjectType();
      (*(v22 + 16))(v20, ObjectType, v22);
      swift_unknownObjectRelease();
      v19 += 2;
    }

    while (v17 != v18);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_23;
  }

  if (byte_101218F00)
  {
    goto LABEL_21;
  }

LABEL_24:
  v24 = v1;
  if (*(v15 + 145))
  {
    sub_10039C918();
  }

LABEL_27:
  type metadata accessor for ApplicationMainMenu();
  v25 = sub_100314AEC();
  if (v25)
  {
    v26 = v25;
    sub_1007CA9D0(v24, v25);
  }
}

void sub_10069E8B4(char a1)
{
  v2 = v1;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v5 = (v28 - v4);
  v6 = type metadata accessor for PreviewPlaybackController.Context(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlacementID();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContainerDetail.ViewController(0);
  v29.receiver = v2;
  v29.super_class = v14;
  objc_msgSendSuper2(&v29, "viewWillDisappear:", a1 & 1);
  if (sub_1006A4900())
  {
    static PlacementID.BubbleTip.downloadButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();

    (*(v11 + 8))(v13, v10);
  }

  v15 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider;
  v16 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider];
  if (v16)
  {

    static PlacementID.BubbleTip.addToLibraryButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();
    v17 = sub_1000D9148(v16);
    (*(v11 + 8))(v13, v10, v17);
    v18 = *&v2[v15];
    if (v18)
    {

      dispatch thunk of PopoverProvider.dismissPopover(animated:)();
      sub_1000D9148(v18);
    }
  }

  if (qword_10117F1F8 != -1)
  {
LABEL_37:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  if (v7[6](v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_10119E440, &qword_100EDD2E0);
  }

  else
  {
    sub_1006AA2C8(v5, v9, type metadata accessor for PreviewPlaybackController.Context);
    v19 = v9[16];
    if (v19 != 2 && (v19 & 1) == 0)
    {
      sub_10012F360();
    }

    sub_1006AA268(v9, type metadata accessor for PreviewPlaybackController.Context);
  }

  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  GroupActivitiesManager.SuggestionProvider.removeSuggestedItem(from:)(v2);
  sub_10069EDC0();
  v28[1] = v2;
  v5 = sub_1006A44A0();
  *(v5 + 145) = 0;
  v9 = v5[4];
  v2 = *(v9 + 2);

  v7 = &unk_101218000;
  if (v2)
  {
    v6 = 0;
    v21 = (v9 + 40);
    do
    {
      if (v6 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_37;
      }

      v24 = *v21;
      v25 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v25 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_25;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_25:
          v22 = 0;
          goto LABEL_21;
        }
      }

      v22 = *(v5 + 145);
LABEL_21:
      ++v6;
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v22, ObjectType, v24);
      swift_unknownObjectRelease();
      v21 += 2;
    }

    while (v2 != v6);
  }

  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if (byte_101218F00 & 1) == 0 && (*(v5 + 145))
  {
    sub_10039C918();
  }

  type metadata accessor for ApplicationMainMenu();
  v26 = sub_100314AEC();
  if (v26)
  {
    v27 = v26;
    sub_1006F49A4();
  }
}

double sub_10069EDC0()
{
  sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  __chkstk_darwin();
  v1 = &v27 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v27 - v6;
  sub_1006A44A0();
  v8 = type metadata accessor for IndexPath();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  Date.init()();
  v10 = sub_10039F3F0(2u, v5, v7, v9);

  (*(v3 + 8))(v5, v2);
  sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v28 = _swiftEmptyArrayStorage;
      sub_10066CB8C(0, v11, 0);
      v12 = 32;
      v13 = v28;
      do
      {
        v14 = *(v10 + v12);
        v28 = v13;
        v16 = v13[2];
        v15 = v13[3];

        if (v16 >= v15 >> 1)
        {
          sub_10066CB8C((v15 > 1), v16 + 1, 1);
          v13 = v28;
        }

        v13[2] = v16 + 1;
        v13[v16 + 4] = v14;
        v12 += 8;
        --v11;
      }

      while (v11);
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }

    v17 = *MetricsReportingController.shared.unsafeMutableAddressor();
    sub_1006A4544(v1);
    v18 = sub_10053771C();
    v20 = v19;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v21 = qword_101218AD0;
    v22 = GroupActivitiesManager.hasJoined.getter();
    v23 = GroupActivitiesManager.participantsCount.getter();
    v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v17) + 0xA8))(v13, v1, v18, v20, v22 & 1, v23, *(v21 + v24));

    sub_1000095E8(v1, &unk_1011839D0, &qword_100EBF430);
  }

  sub_10039C114(v25);

  return result;
}

id sub_10069F2A8()
{
  sub_10010FC20(&qword_101197020, &qword_100ED5D38);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v11 = v4;
  (*(v5 + 144))(ObjectType, v5);
  v7 = type metadata accessor for UIContentUnavailableConfiguration();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &qword_101197020, &qword_100ED5D38);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  else
  {
    *(&v13 + 1) = v7;
    v14 = &protocol witness table for UIContentUnavailableConfiguration;
    v9 = sub_10001C8B8(&v12);
    (*(v8 + 32))(v9, v2, v7);
  }

  UIViewController.contentUnavailableConfiguration.setter();
  return sub_1006A26DC();
}

id sub_10069F520()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6C0;
    v5 = v0;
    *(v4 + 32) = sub_1006A6D30();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6C0;
    v7 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
    *(v6 + 32) = v7;
    v8 = v7;
    v9 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v6);

    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:isa representativeItem:v9];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_10069F67C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v3 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  if (((*(v3 + 216))(ObjectType, v3) & 1) == 0)
  {
    v5 = *(v2 + 1);
    v6 = swift_getObjectType();
    if (((*(v5 + 296))(v6, v5) & 1) == 0)
    {
      v7 = *(v2 + 1);
      v8 = swift_getObjectType();
      v23 = (*(v7 + 400))(v8, v7);
      sub_1006A6D30();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = sub_10069F520();
      v10 = [v9 barButtonItems];

      sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v10) = sub_10047C934(v23, v11);

      if (v10)
      {
      }

      else
      {
        v12 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v12 setBarButtonItems:isa];
      }

      v14 = [v1 navigationItem];
      v15 = [v14 trailingItemGroups];

      sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v17)
      {
        v18 = [v1 navigationItem];
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_100EBC6C0;
        v20 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup];
        *(v19 + 32) = v20;
        v21 = v20;
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v18 setTrailingItemGroups:v22];
      }
    }
  }
}

uint64_t sub_10069F9B8()
{
  v1 = type metadata accessor for MusicPropertySource();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator;
  if (*&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator])
  {
    v6 = *&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator];
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v26[5] = v8;
    v11 = v0;
    (*(v9 + 224))(v26, ObjectType, v9);
    v12 = *v7;
    v13 = *(v7 + 1);
    v14 = swift_getObjectType();
    v25[2] = v12;
    (*(v13 + 232))(v14, v13);
    v15 = *v7;
    v16 = *(v7 + 1);
    v17 = swift_getObjectType();
    v25[1] = v15;
    (*(v16 + 216))(v17, v16);
    type metadata accessor for HeaderCoordinator();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 72) = 512;
    swift_unknownObjectWeakAssign();
    v18 = v11;
    v19 = sub_10055C90C(v26, v4);
    v21 = v20;
    v23 = v22;
    (*(v2 + 8))(v4, v1);
    sub_1000095E8(v26, &unk_101192850, &qword_100EE4C90);
    *(v6 + 40) = v19;
    *(v6 + 48) = v21;
    *(v6 + 56) = v23;

    *&v11[v5] = v6;
  }

  return v6;
}

void sub_10069FC04(uint64_t a1)
{
  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&unk_101191420, &unk_100EC9120) - 8;
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_1000089F8(a1, v10, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v1 + v11, &v10[v12], &unk_101188920, &qword_100EBCC50);
  v13 = *(v4 + 48);
  if (v13(v10, 1, v3) == 1)
  {
    if (v13(&v10[v12], 1, v3) == 1)
    {
      sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v10, v7, &unk_101188920, &qword_100EBCC50);
  if (v13(&v10[v12], 1, v3) == 1)
  {
    (*(v4 + 8))(v7, v3);
LABEL_6:
    sub_1000095E8(v10, &unk_101191420, &unk_100EC9120);
LABEL_7:
    sub_10069FFC8(1);
    return;
  }

  v14 = v17;
  (*(v4 + 32))(v17, &v10[v12], v3);
  sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v14, v3);
  v16(v7, v3);
  sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }
}

id sub_10069FF54()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10069FFC8(int a1)
{
  LODWORD(v85) = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v80 = &v74 - v2;
  v3 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v82 = &v74 - v4;
  sub_10010FC20(&qword_10118D808, &qword_100EC9628);
  __chkstk_darwin();
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v74 - v6;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v74 - v9;
  __chkstk_darwin();
  v83 = &v74 - v11;
  __chkstk_darwin();
  v13 = &v74 - v12;
  v14 = type metadata accessor for Artwork();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin();
  v81 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v86 = &v74 - v18;
  v19 = [v1 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 != 6)
  {
    return;
  }

  v21 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  sub_1000089F8(&v1[v21], v13, &unk_101188920, &qword_100EBCC50);
  v22 = v15[6];
  if (v22(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_101188920, &qword_100EBCC50);
    return;
  }

  v78 = v15;
  v23 = v15 + 4;
  v24 = v15[4];
  v25 = v86;
  v77 = v23;
  v76 = v24;
  v24(v86, v13, v14);
  v26 = v14;
  if ((v85 & 1) == 0)
  {
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView])
    {
      goto LABEL_11;
    }

    v59 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
    swift_beginAccess();
    sub_1000089F8(&v1[v59], v7, &qword_10118D808, &qword_100EC9628);
    v60 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
    if ((*(*(v60 - 8) + 48))(v7, 1, v60))
    {
      sub_1000095E8(v7, &qword_10118D808, &qword_100EC9628);
      v61 = v78;
      v85 = v78[7];
      (v85)(v83, 1, 1, v26);
      v62 = v26;
      v63 = v61[2];
    }

    else
    {
      v74 = v78[2];
      v62 = v26;
      v64 = v83;
      v74(v83, v7, v26);
      sub_1000095E8(v7, &qword_10118D808, &qword_100EC9628);
      v85 = v78[7];
      (v85)(v64, 0, 1, v26);
      v63 = v74;
    }

    v25 = v86;
    v63(v10, v86, v62);
    (v85)(v10, 0, 1, v62);
    v65 = *(v3 + 48);
    v66 = v82;
    sub_1000089F8(v83, v82, &unk_101188920, &qword_100EBCC50);
    v85 = v65;
    sub_1000089F8(v10, &v65[v66], &unk_101188920, &qword_100EBCC50);
    v26 = v62;
    if (v22(v66, 1, v62) == 1)
    {
      sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
      v67 = v82;
      sub_1000095E8(v83, &unk_101188920, &qword_100EBCC50);
      if (v22(&v85[v67], 1, v62) == 1)
      {
        sub_1000095E8(v67, &unk_101188920, &qword_100EBCC50);
        goto LABEL_11;
      }
    }

    else
    {
      v68 = v79;
      sub_1000089F8(v66, v79, &unk_101188920, &qword_100EBCC50);
      v69 = v22(&v85[v66], 1, v62);
      v70 = v78;
      if (v69 != 1)
      {
        v71 = v81;
        v76(v81, &v85[v66], v26);
        sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        LODWORD(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
        v72 = v26;
        v73 = v70[1];
        v73(v71, v72);
        sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v83, &unk_101188920, &qword_100EBCC50);
        v73(v68, v72);
        v26 = v72;
        sub_1000095E8(v82, &unk_101188920, &qword_100EBCC50);
        if ((v85 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        (v78[1])(v25, v26);
        return;
      }

      sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
      v67 = v82;
      sub_1000095E8(v83, &unk_101188920, &qword_100EBCC50);
      (v70[1])(v68, v26);
    }

    sub_1000095E8(v67, &unk_101191420, &unk_100EC9120);
  }

LABEL_5:
  v27 = v1;
  v28 = sub_1006A6078();
  v29 = type metadata accessor for HIMetricsCollectionView();
  v88.receiver = v28;
  v88.super_class = v29;
  objc_msgSendSuper2(&v88, "frame");
  v31 = v30;
  v33 = v32;

  if (v31 == 0.0 && v33 == 0.0)
  {
    goto LABEL_11;
  }

  v87.receiver = *&v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView];
  v87.super_class = v29;
  objc_msgSendSuper2(&v87, "frame");
  v35 = v34;
  v37 = v36;
  v75 = v27;
  v38 = [v27 traitCollection];
  [v38 displayScale];
  v40 = v39;

  v41 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
  v85 = *(v41 + 48);
  v43 = v78 + 2;
  v42 = v78[2];
  v42(v84, v25, v26);
  v44 = type metadata accessor for TaskPriority();
  v45 = v80;
  (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v81;
  v42(v81, v25, v26);
  type metadata accessor for MainActor();

  v48 = static MainActor.shared.getter();
  v49 = v26;
  v50 = (*(v43 + 64) + 40) & ~*(v43 + 64);
  v51 = (v16 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 2) = v48;
  *(v52 + 3) = &protocol witness table for MainActor;
  *(v52 + 4) = v46;
  v76(&v52[v50], v47, v49);
  v53 = &v52[v51];
  *v53 = v35;
  *(v53 + 1) = v37;
  *&v52[(v51 + 23) & 0xFFFFFFFFFFFFFFF8] = v40;

  v54 = v52;
  v55 = v84;
  v56 = sub_1001F4CB8(0, 0, v45, &unk_100EDD2A8, v54);
  *&v85[v55] = v56;
  v57 = *(v41 - 8);
  (*(v57 + 56))(v55, 0, 1, v41);
  v58 = &v75[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask];
  swift_beginAccess();
  if (!(*(v57 + 48))(v58, 1, v41))
  {

    Task.cancel()();
  }

  (v78[1])(v86, v49);
  swift_beginAccess();
  sub_10006B010(v55, v58, &qword_10118D808, &qword_100EC9628);
  swift_endAccess();
}

uint64_t sub_1006A0C0C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 104) = a1;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v8 + 128) = swift_task_alloc();
  v9 = type metadata accessor for Artwork();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 + 64);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  *(v8 + 176) = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = type metadata accessor for MainActor();
  *(v8 + 208) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 216) = v12;
  *(v8 + 224) = v11;

  return _swift_task_switch(sub_1006A0DCC, v12, v11);
}

uint64_t sub_1006A0DCC(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 29) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v1 + 30) = v3;
      *v3 = v1;
      v3[1] = sub_1006A1098;
      v4 = v1[14];
      v5 = v1[15];
      v6 = v1[13];
      v7 = *(v1 + 12);

      return sub_1006AABE0(v7, v6, v4, v5);
    }

    v10 = *(v1 + 19);
    v9 = *(v1 + 20);
    v11 = *(v1 + 17);
    v12 = *(v1 + 18);
    v13 = *(v1 + 16);
    v14 = *(v1 + 12);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v12 + 16))(v9, v14, v11);

    v18 = static MainActor.shared.getter();
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = &protocol witness table for MainActor;
    (*(v12 + 32))(v20 + v19, v9, v11);
    *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;

    sub_1001F4CB8(0, 0, v13, &unk_100EDD2B8, v20);
  }

  v21 = *(v1 + 1);

  return v21();
}

uint64_t sub_1006A1098(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1006A11C0, v4, v3);
}

uint64_t sub_1006A11C0()
{
  v1 = v0[31];

  if (!v1)
  {
    v12 = v0[29];
LABEL_10:

    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[12];
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v22 + 16))(v19, v24, v21);

    v28 = static MainActor.shared.getter();
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = &protocol witness table for MainActor;
    (*(v22 + 32))(v30 + v29, v19, v21);
    *(v30 + ((v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

    sub_1001F4CB8(0, 0, v23, &unk_100EDD2B8, v30);

    goto LABEL_13;
  }

  v2 = v0[29];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v55 = v0[31];
  v54 = *(v7 + 16);
  v54(v3, v0[12], v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  v9 = *(v5 + 48);
  sub_1000089F8(v3, v4, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v2 + v8, v4 + v9, &unk_101188920, &qword_100EBCC50);
  v10 = *(v7 + 48);
  if (v10(v4, 1, v6) != 1)
  {
    v13 = v0[17];
    sub_1000089F8(v0[22], v0[23], &unk_101188920, &qword_100EBCC50);
    v14 = v10(v4 + v9, 1, v13);
    v15 = v0[23];
    v16 = v0[24];
    if (v14 != 1)
    {
      v31 = v0[22];
      v32 = v0[20];
      v33 = v0[17];
      v34 = v0[18];
      (*(v34 + 32))(v32, v4 + v9, v33);
      sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v34 + 8);
      v36(v32, v33);
      sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
      v36(v15, v33);
      sub_1000095E8(v31, &unk_101188920, &qword_100EBCC50);
      if (v35)
      {
        goto LABEL_12;
      }

      v12 = v0[29];
      goto LABEL_9;
    }

    v17 = v0[17];
    v18 = v0[18];
    sub_1000095E8(v0[24], &unk_101188920, &qword_100EBCC50);
    (*(v18 + 8))(v15, v17);
LABEL_8:
    v12 = v0[29];
    sub_1000095E8(v0[22], &unk_101191420, &unk_100EC9120);
LABEL_9:

    goto LABEL_10;
  }

  v11 = v0[17];
  sub_1000095E8(v0[24], &unk_101188920, &qword_100EBCC50);
  if (v10(v4 + v9, 1, v11) != 1)
  {
    goto LABEL_8;
  }

  sub_1000095E8(v0[22], &unk_101188920, &qword_100EBCC50);
LABEL_12:
  v38 = v0[19];
  v37 = v0[20];
  v40 = v0[17];
  v39 = v0[18];
  v41 = v0[16];
  v52 = v0[29];
  v53 = v41;
  v42 = v0[12];
  v43 = type metadata accessor for TaskPriority();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54(v37, v42, v40);

  v45 = v55;
  v46 = static MainActor.shared.getter();
  v47 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v48 = (v38 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = v46;
  *(v49 + 3) = &protocol witness table for MainActor;
  *(v49 + 4) = v44;
  (*(v39 + 32))(&v49[v47], v37, v40);
  *&v49[v48] = v45;

  sub_1001F4CB8(0, 0, v53, &unk_100EDD2D0, v49);

LABEL_13:

  v50 = v0[1];

  return v50();
}

uint64_t sub_1006A17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for Artwork();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  v5[20] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A1978, v8, v7);
}

uint64_t sub_1006A1978()
{

  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_16;
  }

  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[14], v2);
  v4 = *(v3 + 56);
  v4(v1, 0, 1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v0[22];
  if (Strong)
  {
    v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
    v8 = Strong;
    swift_beginAccess();
    sub_1000089F8(v8 + v7, v6, &unk_101188920, &qword_100EBCC50);
  }

  else
  {
    v4(v0[22], 1, 1, v0[16]);
  }

  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v13 = *(v0[19] + 48);
  sub_1000089F8(v0[23], v10, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v9, v10 + v13, &unk_101188920, &qword_100EBCC50);
  v14 = *(v12 + 48);
  if (v14(v10, 1, v11) != 1)
  {
    v17 = v0[16];
    sub_1000089F8(v0[20], v0[21], &unk_101188920, &qword_100EBCC50);
    v18 = v14(v10 + v13, 1, v17);
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];
    if (v18 != 1)
    {
      v37 = v0[20];
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[16];
      (*(v25 + 32))(v24, v10 + v13, v26);
      sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v25 + 8);
      v28(v24, v26);
      sub_1000095E8(v20, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v19, &unk_101188920, &qword_100EBCC50);
      v28(v21, v26);
      sub_1000095E8(v37, &unk_101188920, &qword_100EBCC50);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v22 = v0[16];
    v23 = v0[17];
    sub_1000095E8(v0[22], &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v19, &unk_101188920, &qword_100EBCC50);
    (*(v23 + 8))(v21, v22);
LABEL_10:
    sub_1000095E8(v0[20], &unk_101191420, &unk_100EC9120);
    goto LABEL_16;
  }

  v15 = v0[23];
  v16 = v0[16];
  sub_1000095E8(v0[22], &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v15, &unk_101188920, &qword_100EBCC50);
  if (v14(v10 + v13, 1, v16) != 1)
  {
    goto LABEL_10;
  }

  sub_1000095E8(v0[20], &unk_101188920, &qword_100EBCC50);
LABEL_12:
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView);
    v31 = v29;
    v32 = v30;

    if (v30)
    {
      [v32 removeFromSuperview];
      swift_beginAccess();
      v33 = swift_unknownObjectWeakLoadStrong();

      if (v33)
      {
        v34 = *&v33[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView];
        *&v33[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView] = 0;
      }
    }
  }

LABEL_16:

  v35 = v0[1];

  return v35();
}

uint64_t sub_1006A1DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for Artwork();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  v6[18] = swift_task_alloc();
  sub_10010FC20(&qword_10118D808, &qword_100EC9628);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A1FB4, v9, v8);
}

uint64_t sub_1006A1FB4()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = v0[20];
      v50 = Strong;
      v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
      swift_beginAccess();
      v49 = v3;
      sub_1000089F8(v3, v2, &qword_10118D808, &qword_100EC9628);
      v48 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
      v46 = *(v48 - 8);
      v47 = *(v46 + 48);
      v4 = v47(v2, 1);
      v5 = v0[23];
      v6 = v0[20];
      v7 = v0[14];
      v8 = v0[15];
      if (v4)
      {
        sub_1000095E8(v0[20], &qword_10118D808, &qword_100EC9628);
        v9 = *(v8 + 56);
        v9(v5, 1, 1, v7);
        v10 = *(v8 + 16);
      }

      else
      {
        v11 = *(v8 + 16);
        v11(v0[23], v0[20], v0[14]);
        sub_1000095E8(v6, &qword_10118D808, &qword_100EC9628);
        v9 = *(v8 + 56);
        v9(v5, 0, 1, v7);
        v10 = v11;
      }

      v13 = v0[22];
      v12 = v0[23];
      v15 = v0[17];
      v14 = v0[18];
      v17 = v0[14];
      v16 = v0[15];
      v10(v13, v0[12], v17);
      v9(v13, 0, 1, v17);
      v18 = *(v15 + 48);
      sub_1000089F8(v12, v14, &unk_101188920, &qword_100EBCC50);
      sub_1000089F8(v13, v14 + v18, &unk_101188920, &qword_100EBCC50);
      v19 = *(v16 + 48);
      if (v19(v14, 1, v17) == 1)
      {
        v20 = v0[23];
        v21 = v0[14];
        sub_1000095E8(v0[22], &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v20, &unk_101188920, &qword_100EBCC50);
        if (v19(v14 + v18, 1, v21) == 1)
        {
          sub_1000095E8(v0[18], &unk_101188920, &qword_100EBCC50);
          v22 = v50;
LABEL_13:
          (*(v46 + 56))(v0[19], 1, 1, v48);
          if (!(v47)(v49, 1, v48))
          {

            Task.cancel()();
          }

          v35 = v0[19];
          v36 = v0[13];
          swift_beginAccess();
          sub_10006B010(v35, v49, &qword_10118D808, &qword_100EC9628);
          swift_endAccess();
          v37 = [objc_allocWithZone(UIImageView) initWithImage:v36];
          [v37 setContentMode:0];
          [v37 setAlpha:0.0];
          [v37 setInsetsLayoutMarginsFromSafeArea:0];
          v38 = *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView];
          *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView] = v37;

          v39 = sub_10069FF54();
          UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v37, 0);

          sub_100009F78(0, &qword_101181620, UIView_ptr);
          v40 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
          v41 = swift_allocObject();
          *(v41 + 16) = v37;
          v42 = v37;
          static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v40, 0, sub_1006AB9A0, v41, 0, 0, 0.25, 0.0);

          goto LABEL_16;
        }
      }

      else
      {
        v23 = v0[14];
        sub_1000089F8(v0[18], v0[21], &unk_101188920, &qword_100EBCC50);
        v24 = v19(v14 + v18, 1, v23);
        v26 = v0[22];
        v25 = v0[23];
        v27 = v0[21];
        if (v24 != 1)
        {
          v30 = v0[18];
          v31 = v0[15];
          v32 = v0[16];
          v33 = v0[14];
          (*(v31 + 32))(v32, v14 + v18, v33);
          sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
          v45 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *(v31 + 8);
          v34(v32, v33);
          sub_1000095E8(v26, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
          v34(v27, v33);
          sub_1000095E8(v30, &unk_101188920, &qword_100EBCC50);
          v22 = v50;
          if (v45)
          {
            goto LABEL_13;
          }

LABEL_16:

          goto LABEL_17;
        }

        v29 = v0[14];
        v28 = v0[15];
        sub_1000095E8(v0[22], &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
        (*(v28 + 8))(v27, v29);
      }

      sub_1000095E8(v0[18], &unk_101191420, &unk_100EC9120);
      v22 = v50;
      goto LABEL_16;
    }
  }

LABEL_17:

  v43 = v0[1];

  return v43();
}

id sub_1006A26DC()
{
  v1 = v0;
  v118 = _s15FloatingArtworkVMa(0);
  __chkstk_darwin();
  v119 = (&v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v116 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v113 - v4;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v8 = &v113 - v7;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v117 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v113 - v10;
  __chkstk_darwin();
  v13 = &v113 - v12;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v15 = &v113 - v14;
  v16 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  ObjectType = swift_getObjectType();
  v122 = v17;
  v20 = (*(v18 + 304))(ObjectType, v18);
  swift_getKeyPath();
  v123[0] = v20;
  sub_1006AA330(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork);

  v22 = [v1 traitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != 6)
  {
    goto LABEL_7;
  }

  v24 = sub_1006A6078();
  v25 = *&v24[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  if (*&qword_1012193E8 < v25)
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v26 = v124;
    sub_1000095E8(v123, &unk_10119E410, &qword_100ED5D30);
    if ((v21 ^ (v26 != 0)))
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_7:
    if (!v21)
    {
      goto LABEL_16;
    }
  }

  v114 = v8;
  v115 = v6;
  v27 = v11;
  v28 = v13;
  v29 = *v16;
  v30 = *(v16 + 1);
  v31 = swift_getObjectType();
  v122 = v29;
  swift_unknownObjectRetain();
  v32 = [v1 traitCollection];
  v33 = [v32 userInterfaceIdiom];

  if (v33 != 6)
  {
    goto LABEL_13;
  }

  v34 = sub_1006A6078();
  v35 = *&v34[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  if (*&qword_1012193E8 < v35)
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v36 = v124 == 0;
    sub_1000095E8(v123, &unk_10119E410, &qword_100ED5D30);
  }

  else
  {
LABEL_13:
    v36 = 0;
  }

  (*(v30 + 408))(v36, v31, v30);
  swift_unknownObjectRelease();
  v37 = *v16;
  v38 = *(v16 + 1);
  v39 = swift_getObjectType();
  v123[0] = v37;
  v40 = (*(v38 + 376))(0, v39, v38);
  v13 = v28;
  v11 = v27;
  v8 = v114;
  v6 = v115;
  if ((v41 & 1) == 0)
  {
    v42 = v40;
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
    type metadata accessor for MainActor();
    v44 = v1;
    v45 = static MainActor.shared.getter();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = &protocol witness table for MainActor;
    v46[4] = v44;
    v46[5] = v42;
    sub_1001F4CB8(0, 0, v15, &unk_100EDD298, v46);
  }

LABEL_16:
  v47 = [v1 traitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 != 6)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  v50 = sub_1006A6078();
  v51 = *&v50[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  v49 = *&qword_1012193E8;
  if (*&qword_1012193E8 >= v51)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  UIViewController.contentUnavailableConfiguration.getter();
  v52 = v124;
  sub_1000095E8(v123, &unk_10119E410, &qword_100ED5D30);
  if (v52)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  v54 = *v16;
  v55 = *(v16 + 1);
  v56 = swift_getObjectType();
  v122 = v54;
  (*(v55 + 152))(v56, v55);
  v57 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v57 - 8) + 56))(v6, 1, 11, v57);
  if (qword_10117FC40 != -1)
  {
    swift_once();
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(qword_1012193F0, 0, qword_1012193F0, 0, 0, 1, 2, v123);
  *&v58 = ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v8, v6, 0x3FF0000000000000, 0, v123, 0x4034000000000000, -1, 0, v13).n128_u64[0];
  v59 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer];
  v60 = [v59 superview];
  v61 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
  if (v60 && (v62 = v60, v63 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView], sub_100009F78(0, &qword_101181620, UIView_ptr), v64 = v63, v65 = static NSObject.== infix(_:_:)(), v62, v64, (v65 & 1) != 0))
  {
    v66 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource;
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource] && (sub_1006AA200(v13, v11, type metadata accessor for ArtworkImage.Info), swift_getKeyPath(), swift_getKeyPath(), sub_1006AA200(v11, v117, type metadata accessor for ArtworkImage.Info), , static Published.subscript.setter(), sub_1006AA268(v11, type metadata accessor for ArtworkImage.Info), *&v1[v66]) && (v67 = *v16, v68 = *(v16 + 1), v119 = swift_getObjectType(), v122 = v67, v69 = *(v68 + 160), , v70 = v120, v69(v119, v68), swift_getKeyPath(), swift_getKeyPath(), sub_1000089F8(v70, v116, &unk_101192950, &unk_100EBDF40), static Published.subscript.setter(), sub_1000095E8(v70, &unk_101192950, &unk_100EBDF40), (v71 = *&v1[v66]) != 0))
    {
      v72 = *v16;
      v73 = *(v16 + 1);
      v74 = swift_getObjectType();
      v122 = v72;
      v75 = *(v73 + 184);

      swift_unknownObjectRetain();
      v76 = v75(v74, v73);
      v78 = v77;
      sub_1006AA268(v13, type metadata accessor for ArtworkImage.Info);
      swift_unknownObjectRelease();
      v79 = (v71 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
      v80 = *(v71 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
      v81 = *(v71 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction + 8);
      *v79 = v76;
      v79[1] = v78;
      sub_100030444(v76, v78);
      sub_100020438(v80, v81);

      return sub_100020438(v76, v78);
    }

    else
    {
      return sub_1006AA268(v13, type metadata accessor for ArtworkImage.Info);
    }
  }

  else
  {
    v82 = v13;
    v83 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource;
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource])
    {
      v84 = *&v1[v61];
      sub_1006A3684(v84);

      [*&v1[v61] _addContentSubview:v59 atBack:1];
      return sub_1006AA268(v82, type metadata accessor for ArtworkImage.Info);
    }

    else
    {
      v113 = v82;
      sub_1006AA200(v82, v11, type metadata accessor for ArtworkImage.Info);
      v85 = *v16;
      v86 = *(v16 + 1);
      v87 = swift_getObjectType();
      v122 = v85;
      v88 = *(v86 + 160);
      v116 = v11;
      v89 = v120;
      v88(v87, v86);
      v90 = *v16;
      v91 = *(v16 + 1);
      v92 = swift_getObjectType();
      v121 = v90;
      v93 = (*(v91 + 184))(v92, v91);
      v117 = v61;
      v94 = v93;
      v96 = v95;
      _s15FloatingArtworkV10DataSourceCMa(0);
      swift_allocObject();
      v97 = sub_10056F838(v116, v89, v94, v96);
      sub_100020438(v94, v96);
      v98 = *v16;
      v99 = *(v16 + 1);
      v100 = swift_getObjectType();
      v122 = v98;
      v101 = (*(v99 + 248))(v100, v99);
      v103 = v102;
      *&v1[v83] = v97;

      v104 = v117;
      v105 = *&v1[v117];
      sub_1006A3684(v105);

      [v59 frame];
      [v59 setFrame:?];
      sub_1006AA330(&unk_10119E420, _s15FloatingArtworkV10DataSourceCMa, &unk_100ED3698);

      v106 = ObservedObject.init(wrappedValue:)();
      v107 = v118;
      v108 = v119;
      *v119 = v106;
      v108[1] = v109;
      v108[2] = v101;
      v108[3] = v103;
      v110 = *(v107 + 24);
      *(v108 + v110) = swift_getKeyPath();
      sub_10010FC20(&qword_101194F38, &qword_100ED2DE0);
      swift_storeEnumTagMultiPayload();
      v111 = objc_allocWithZone(sub_10010FC20(&unk_10119E430, &qword_100EDD1F8));
      v112 = _UIHostingView.init(rootView:)();
      UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v112, 0);

      [*&v1[v104] _addContentSubview:v59 atBack:1];

      return sub_1006AA268(v113, type metadata accessor for ArtworkImage.Info);
    }
  }
}

uint64_t sub_1006A3468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A3500, v7, v6);
}

uint64_t sub_1006A3500()
{
  v1 = *(v0 + 16);

  v2 = sub_1006A6078();
  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(index:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 reconfigureItemsAtIndexPaths:isa];

  v4 = [*(v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView) collectionViewLayout];
  [v4 invalidateLayout];

  v5 = *(v0 + 8);

  return v5();
}

id sub_1006A3684(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 376))(10, ObjectType, v5);
  v9 = v8;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    v11 = v7;
    v12 = sub_1006A4D04();
    [v12 _contentFrameForSection:v11];
    v14 = v13;

    if (qword_10117FC40 != -1)
    {
      swift_once();
    }

    if (v14 >= *&qword_1012193F0)
    {
      v10 = v14;
    }

    else
    {
      v10 = *&qword_1012193F0;
    }
  }

  [a1 contentOffset];
  v16 = v15;
  [a1 safeAreaInsets];
  v18 = v16 + v17;
  if ((v9 & 1) == 0)
  {
    if (qword_10117FC40 != -1)
    {
      swift_once();
    }

    if (v10 < v18 + *&qword_1012193F0)
    {
      v18 = v10 - *&qword_1012193F0;
    }
  }

  if (v18 <= 0.0)
  {
    v18 = 0.0;
  }

  v19 = *(v2 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer);
  v20 = sub_1006A6078();
  v21 = *&v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];

  [v19 frame];
  return [v19 setFrame:{v21, v18}];
}

uint64_t sub_1006A3864()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData;
  if (*(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData);
  }

  else
  {
    type metadata accessor for RelatedContentSpacing.Data(0);
    v2 = swift_allocObject();
    Published.init(initialValue:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1006A3900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  swift_beginAccess();
  v4 = type metadata accessor for RelatedContentProvider.State();
  v5 = *(v4 - 8);
  (*(v5 + 24))(&v1[v3], a1, v4);
  swift_endAccess();
  v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
  if ([v1 isViewLoaded])
  {
    v6 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 360);
    swift_unknownObjectRetain();
    v9(ObjectType, v7);
    (*(v5 + 8))(a1, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v5 + 8))(a1, v4);
  }
}

uint64_t sub_1006A3A7C()
{
  v1 = type metadata accessor for RelatedContentProvider.State();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v30[-v5];
  v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  swift_beginAccess();
  v8 = *(v2 + 16);
  v8(v6, &v0[v7], v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for RelatedContentProvider.State.loaded(_:))
  {
    (*(v2 + 96))(v6, v1);
    return *v6;
  }

  else
  {
    if (v9 == enum case for RelatedContentProvider.State.error(_:))
    {
      (*(v2 + 96))(v6, v1);
      v11 = *v6;
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000060E4(v12, qword_1012193F8);
      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v11;
        v34 = v16;
        *v15 = 136446210;
        swift_errorRetain();
        sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
        v17 = String.init<A>(describing:)();
        v19 = sub_1000105AC(v17, v18, &v34);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "Related content token failed to load with error=%{public}s", v15, 0xCu);
        sub_10000959C(v16);
      }

      else
      {
      }
    }

    else if (v9 != enum case for RelatedContentProvider.State.loading(_:))
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_1012193F8);
      v32 = v0;
      v21 = v0;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31 = v23;
        v26 = v25;
        v34 = v25;
        *v24 = 136446210;
        v8(v4, &v32[v7], v1);
        v27 = String.init<A>(describing:)();
        v29 = sub_1000105AC(v27, v28, &v34);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v31, "Unhandled state=%{public}s", v24, 0xCu);
        sub_10000959C(v26);
      }

      (*(v2 + 8))(v6, v1);
    }

    return 0;
  }
}

uint64_t sub_1006A3EE4()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v27 - v2;
  v4 = sub_10010FC20(&qword_10119E3E8, &qword_100EDD188);
  v30 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = sub_10010FC20(&qword_10119E3F0, &qword_100EDD190);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - v9;
  v11 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  ObjectType = swift_getObjectType();
  v32[0] = v12;
  result = (*(v13 + 200))(ObjectType, v13);
  if (result)
  {
    v28 = v8;
    v29 = v7;

    v16 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentStateSubscription;
    swift_beginAccess();
    sub_1000089F8(v1 + v16, v32, &qword_10118D380, &qword_100EBDE20);
    v17 = v33;
    result = sub_1000095E8(v32, &qword_10118D380, &qword_100EBDE20);
    if (!v17)
    {
      v18 = *v11;
      v19 = v11[1];
      v20 = swift_getObjectType();
      v32[0] = v18;
      v21 = (*(v19 + 200))(v20, v19);
      if (v21)
      {
        dispatch thunk of RelatedContentProvider.$state.getter();

        sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
        v22 = static OS_dispatch_queue.main.getter();
        v31 = v22;
        v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
        sub_100020674(&unk_10119E3F8, &qword_10119E3E8, &qword_100EDD188, &protocol conformance descriptor for Published<A>.Publisher);
        sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
        Publisher.receive<A>(on:options:)();
        sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

        (*(v30 + 8))(v6, v4);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100020674(&qword_10119E408, &qword_10119E3F0, &qword_100EDD190, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v24 = v29;
        v25 = Publisher<>.sink(receiveValue:)();

        (*(v28 + 8))(v10, v24);
        v21 = type metadata accessor for AnyCancellable();
        v32[0] = v25;
        v26 = &protocol witness table for AnyCancellable;
      }

      else
      {
        v26 = 0;
        memset(v32, 0, sizeof(v32));
      }

      v33 = v21;
      v34 = v26;
      swift_beginAccess();
      sub_10006B010(v32, v1 + v16, &qword_10118D380, &qword_100EBDE20);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1006A439C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RelatedContentProvider.State();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    sub_1006A3900(v6);
  }
}

void *sub_1006A44A0()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = sub_1006A6078();
    sub_10010FC20(&qword_10119E340, &qword_100EDD098);
    swift_allocObject();
    v2 = sub_10039B1E8(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006A4544@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&qword_10118CEE0, &qword_100EC8AF8);
  __chkstk_darwin();
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___pageProperties;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118CEE0, &qword_100EC8AF8);
  v8 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_1006AA3E0(v6, a1);
  }

  sub_1000095E8(v6, &qword_10118CEE0, &qword_100EC8AF8);
  sub_1006A4784(v1, a1);
  v10 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  sub_1000089F8(a1, v4, &unk_1011839D0, &qword_100EBF430);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118CEE0, &qword_100EC8AF8);
  return swift_endAccess();
}

uint64_t sub_1006A4784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = (a1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  ObjectType = swift_getObjectType();
  v16 = v7;
  v10 = (*(v8 + 48))(ObjectType, v8);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x497972617262696CLL;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xEB000000006D6574;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  return MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v12, v13, 0x656E6961746E6F43, 0xEF6C696174654472, v5, 0, 0, 0, a2);
}

uint64_t sub_1006A4900()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider;
  v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = sub_100729BFC();

    if (*(v6 + 16))
    {

      sub_10010BC60(_swiftEmptyArrayStorage);
      v4 = MusicPageProvider.popoverProvider(context:)();
    }

    else
    {

      v4 = 0;
    }

    v7 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1000D9148(v7);
  }

  sub_10000CD8C(v3);
  return v4;
}

void sub_1006A4A18()
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v3 = type metadata accessor for MetricsEvent.Page(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  v7 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  ObjectType = swift_getObjectType();
  v22[0] = v8;
  v11 = *(v9 + 256);
  swift_unknownObjectRetain();
  v11(ObjectType, v9);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_1011838F0, &qword_100EC1070);
    swift_unknownObjectRelease();
    *(v21 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent) = 1;
  }

  else
  {
    sub_1006AA2C8(v2, v6, type metadata accessor for MetricsEvent.Page);
    swift_unknownObjectRelease();
    v12 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v13 = sub_10053771C();
    v15 = v14;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v16 = qword_101218AD0;
    v17 = GroupActivitiesManager.hasJoined.getter();
    v18 = GroupActivitiesManager.participantsCount.getter();
    v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v12) + 0xA0))(v6, v13, v15, v17 & 1, v18, *(v16 + v19));

    sub_1006AA268(v6, type metadata accessor for MetricsEvent.Page);
  }
}

char *sub_1006A4D24(void *a1)
{
  v2 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for ContainerDetailCompositionalLayout());
  v14[4] = sub_1006AA3C0;
  v14[5] = v3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1005A63A8;
  v14[3] = &unk_1010BA808;
  v5 = _Block_copy(v14);

  v6 = [v4 initWithSectionProvider:v5 configuration:v2];
  _Block_release(v5);

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = &v6[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
    v11 = *&v6[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
    v12 = *&v6[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes + 8];
    *v10 = sub_1006AA3C8;
    v10[1] = v9;

    sub_100020438(v11, v12);
  }

  return v6;
}

uint64_t sub_1006A4EF0(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v107 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v106 = *(v107 - 8);
  __chkstk_darwin();
  v108 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v111 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v103 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v104 = v11;
    v17 = Strong;
    [objc_msgSend(a2 "container")];
    swift_unknownObjectRelease();
    v18 = HI.SizeClass.init(_:)();
    v19 = HI.SizeClass.margin.getter(v18);
    v105 = [a2 traitCollection];
    v110 = v17;
    v20 = &v17[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v103 = v20;
    v21 = *v20;
    v22 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    v113[0] = v21;
    v109 = (*(v22 + 368))(a1, ObjectType, v22);
    v24 = v109;
    (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v25 = objc_opt_self();
    v26 = [v25 clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    if (v24 == 2)
    {
      swift_allocObject();
      v27 = v110;
      swift_unknownObjectWeakInit();
      v28 = v27;
      UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    }

    v29 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
    v29(v113, 0);
    v30 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.topSeparatorInsets.setter();
    v30(v113, 0);
    v31 = v24 == 11;
    v32 = a2;
    v33 = v105;
    if (!v31)
    {
      if (v109 <= 5u)
      {
        if (v109 > 1u)
        {
          if (v109 - 2 < 2)
          {
            goto LABEL_28;
          }

          if (v109 != 4)
          {
            v42 = *v103;
            v43 = *(v103 + 1);
            v44 = swift_getObjectType();
            v113[0] = v42;
            if (((*(v43 + 136))(v44, v43) & 1) == 0)
            {
LABEL_28:
              v61 = [v33 userInterfaceIdiom];
              sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
              v41 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
              v62 = [v32 traitCollection];
              v63 = [v62 userInterfaceIdiom];

              v64 = 0.0;
              if (v63 == 6)
              {
                [objc_msgSend(v32 "container")];
                v66 = v65;
                swift_unknownObjectRelease();
                if (qword_10117FC38 != -1)
                {
                  swift_once();
                }

                if (*&qword_1012193E8 < v66)
                {
                  if (qword_10117FC40 != -1)
                  {
                    swift_once();
                  }

                  v64 = v19 + *&qword_1012193F0;
                }
              }

              if (v109 != 11)
              {
                if (v109 <= 4u)
                {
                  if (v109 <= 1u)
                  {
                    if (!v109)
                    {
LABEL_60:
                      [objc_msgSend(v32 "container")];
                      v83 = v82;
                      swift_unknownObjectRelease();
                      v67 = v64 + v83;
                      v80 = 0.0;
                      goto LABEL_67;
                    }
                  }

                  else if (v109 == 2 || v109 == 3)
                  {
LABEL_43:
                    if (v61 == 6)
                    {
                      v67 = v19 + v64;
LABEL_62:
                      v80 = 0.0;
                      v81 = 0.0;
                      v79 = v41;
LABEL_63:
                      v86 = v19;
LABEL_64:
                      [v79 setContentInsets:{v80, v67, v81, v86}];

                      v11 = v104;
                      goto LABEL_65;
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                  if (v109 > 8u)
                  {
                    if (v109 == 9)
                    {
                      v68 = [v33 horizontalSizeClass];
                      v69 = *v103;
                      v70 = *(v103 + 1);
                      v71 = swift_getObjectType();
                      v113[0] = v69;
                      v72 = (*(v70 + 136))(v71, v70);
                      v73 = 8.0;
                      if (v72)
                      {
                        v73 = 20.0;
                      }

                      v74 = 0.0;
                      if (v72)
                      {
                        v74 = 44.0;
                      }

                      if (v68 != 1)
                      {
                        v73 = 24.0;
                      }

                      if (v61 == 6)
                      {
                        v75 = 44.0;
                      }

                      else
                      {
                        v75 = 28.0;
                      }

                      if (v61 == 6)
                      {
                        v76 = v74;
                      }

                      else
                      {
                        v76 = v73;
                      }

                      [objc_msgSend(v32 container];
                      v78 = v77;
                      swift_unknownObjectRelease();
                      v67 = v19 + v64 + v78;
                      v79 = v41;
                      v80 = v76;
                      v81 = v75;
                      goto LABEL_63;
                    }

                    v80 = 0.0;
                    v67 = 0.0;
LABEL_67:
                    v81 = 0.0;
                    v86 = 0.0;
                    v79 = v41;
                    goto LABEL_64;
                  }

                  if (v109 - 6 >= 3)
                  {
                    goto LABEL_43;
                  }
                }
              }

              [objc_msgSend(v32 "container")];
              v85 = v84;
              swift_unknownObjectRelease();
              v67 = v19 + v64 + v85;
              goto LABEL_62;
            }

LABEL_27:
            (*(v106 + 104))(v108, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v107);
            v60 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
            UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
            v60(v113, 0);
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        if (v109)
        {
          goto LABEL_27;
        }

        v46 = sub_10069F9B8();
        v48 = v46[5];
        v47 = v46[6];
        v49 = v46[7];
        sub_1004E5DB4(v48, v47, v49);

        if ((v47 - 1) >= 2)
        {

          v33 = v105;
        }

        else
        {
          sub_1004E5DFC(v48, v47, v49);
          v50 = *v103;
          v51 = *(v103 + 1);
          v52 = swift_getObjectType();
          v113[0] = v50;
          v53 = (*(v51 + 288))(v52, v51);
          if (v53 == 2)
          {
            v33 = v105;
LABEL_73:
            (*(v106 + 104))(v108, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v107);
            v102 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
            UIListSeparatorConfiguration.topSeparatorVisibility.setter();
            v102(v113, 0);
            goto LABEL_28;
          }

          v33 = v105;
          if ((v53 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        v97 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
        v98 = *(v106 + 104);
        v99 = v108;
        v100 = v107;
        v98(v108, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v107);
        v101 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        UIListSeparatorConfiguration.topSeparatorVisibility.setter();
        v101(v113, 0);
        v98(v99, v97, v100);
LABEL_7:
        v40 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
        v40(v113, 0);
        goto LABEL_28;
      }

      if (v109 <= 7u)
      {
        if (v109 == 6)
        {
          v54 = *v103;
          v55 = *(v103 + 1);
          v56 = swift_getObjectType();
          v113[0] = v54;
          if (((*(v55 + 272))(v56, v55) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v88 = *v103;
          v89 = *(v103 + 1);
          v90 = swift_getObjectType();
          v113[0] = v88;
          if (((*(v89 + 280))(v90, v89) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v91 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v92 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
        *(v93 + 8) = 0;
        v92(v112, 0);
        v91(v113, 0);
        v94 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v95 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
        *(v96 + 8) = 0;
        v95(v112, 0);
        v94(v113, 0);
        goto LABEL_28;
      }

      if (v109 == 8)
      {
LABEL_26:
        v57 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v58 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
        *(v59 + 8) = 0;
        v58(v112, 0);
        v57(v113, 0);
        goto LABEL_27;
      }

      if (v109 != 9 && *(v110 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) == 1)
      {
        v45 = [v25 secondarySystemBackgroundColor];
        UICollectionLayoutListConfiguration.backgroundColor.setter();
      }
    }

    v34 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v35 = a2;
    v36 = *(v106 + 104);
    v37 = v108;
    v38 = v107;
    v36(v108, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v107);
    v39 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
    v39(v113, 0);
    v36(v37, v34, v38);
    v32 = v35;
    goto LABEL_7;
  }

  sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
  (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v41 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v13 = v15;
LABEL_65:
  (*(v111 + 8))(v13, v11);
  return v41;
}

uint64_t sub_1006A5C78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  v5 = Strong;
  swift_beginAccess();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 384))(a1, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1006A5D50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  v5 = Strong;
  swift_beginAccess();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 392))(a1, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

void sub_1006A5E28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    swift_beginAccess();
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 376))(10, ObjectType, v7);
    if ((v10 & 1) == 0 && v9 == IndexPath.section.getter() && !IndexPath.item.getter() && a1)
    {
      v11 = a1;
      v12 = sub_1006A6078();
      sub_1006A3684(v12);

      v13 = *(*&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics);
      if (qword_10117FC38 != -1)
      {
        v20 = *(*&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics);
        swift_once();
        v13 = v20;
      }

      if (*&qword_1012193E8 >= v13)
      {
        goto LABEL_16;
      }

      if (qword_10117FC40 != -1)
      {
        swift_once();
      }

      v14 = *&qword_1012193F0;
      [v11 frame];
      if (v15 >= v14)
      {
LABEL_16:
        v19 = *&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding];
        *&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding] = 0;
        if (v19 != 0.0)
        {
LABEL_17:
          sub_1006A3864();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.setter();
        }
      }

      else
      {
        [v11 frame];
        v17 = v14 - v16;
        v18 = *&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding];
        *&v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding] = v17;
        if (v18 != v17)
        {
          goto LABEL_17;
        }
      }

      return;
    }
  }
}

id sub_1006A6098(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_1006A60FC(uint64_t a1)
{
  v2 = sub_1006A4D04();
  v3 = objc_allocWithZone(type metadata accessor for HIMetricsCollectionView());
  v4 = sub_100188F30(v2, 0, 0);
  v5 = (a1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v6 = v5[1];
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 240))(ObjectType, v6);
  v12 = UIView.withAccessibilityIdentifier(_:)(v8, v9, v10, v11);

  v13 = *v5;
  v14 = v12;
  [v14 setDataSource:v13];
  [v14 setDelegate:*v5];
  [v14 setPrefetchDataSource:*v5];
  v15 = v14;
  [v15 setAlwaysBounceVertical:1];
  [v15 setKeyboardDismissMode:1];

  [v15 setAllowsFocus:1];
  [v15 setRemembersLastFocusedIndexPath:1];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v18 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v19 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v17 = sub_1006AA3B8;
  v17[1] = v16;

  sub_100020438(v18, v19);

  return v15;
}

void sub_1006A62E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 6)
    {
      sub_1006A26DC();
      sub_10069FFC8(0);
    }

    v8 = &v5[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 352);
    swift_unknownObjectRetain();
    v11(a2, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

void sub_1006A6400(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  ObjectType = swift_getObjectType();
  v70 = v9;
  v12 = (*(v10 + 376))(0, ObjectType, v10);
  if (v13)
  {
    goto LABEL_2;
  }

  v17 = v12;
  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = v18;
  v20 = [v18 window];

  v21 = v20;
  if (v20)
  {
    goto LABEL_17;
  }

  *&v68 = v17;
  *&v69 = 0;
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v24);
  v26 = v25;

  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v69;
  if (!v27)
  {

    goto LABEL_15;
  }

  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v26 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v28 = sub_1007E90D4(0, v26);
LABEL_11:
  v29 = v28;

  v30 = [v29 keyWindow];

  v20 = v69;
  if (v30)
  {
    v31 = [v2 view];
    if (!v31)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v32 = v31;
    [v30 addSubview:v31];
  }

LABEL_15:
  v33 = [v2 view];
  if (!v33)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v21 = v33;
  [v33 layoutIfNeeded];
LABEL_17:

  v34 = sub_1006A6078();
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v37 = *(v5 + 8);
  v36 = v5 + 8;
  v37(v7, v4);
  v38 = [v34 cellForItemAtIndexPath:isa];

  if (!v38)
  {
    if (v20)
    {
      goto LABEL_2;
    }

    v42 = [v2 view];
    if (v42)
    {
      goto LABEL_23;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v39 = *(sub_10069F9B8() + 16);

  if (v39)
  {

    v40 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator];
    v41 = v40[6];
    if ((v41 - 1) < 2)
    {

      goto LABEL_35;
    }

    v36 = v40[5];
    v39 = v40[7];
    if (v41)
    {

      sub_1004E5DB4(v36, v41, v39);
      v60 = v41;
      [v60 frame];
      v68 = v62;
      v69 = v61;
      v66 = v64;
      v67 = v63;

      *&v16 = v68;
      *&v14 = v69;
      v15 = 0;
      *(&v16 + 1) = v66;
      *(&v14 + 1) = v67;
      if (v20)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_34:
    sub_1004E5DB4(v36, 0, v39);

LABEL_35:
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
    if (v20)
    {
      goto LABEL_42;
    }

LABEL_36:
    v68 = v16;
    v69 = v14;
    v65 = [v2 view];
    if (v65)
    {
LABEL_40:
      v43 = v65;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_38;
  }

  v70 = 0x6B726F77747241;
  v71 = 0xE700000000000000;
  v39 = v38;
  v44 = UIView.findPresentationSourceView<A>(id:)();
  if (!v44)
  {

    if (!v20)
    {
      v42 = [v2 view];
      if (!v42)
      {
        __break(1u);
        goto LABEL_34;
      }

LABEL_23:
      v43 = v42;
      v68 = 0u;
      v69 = 0u;
      v15 = 1;
LABEL_41:
      [v43 removeFromSuperview];

      v16 = v68;
      v14 = v69;
      goto LABEL_42;
    }

LABEL_2:
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
LABEL_42:
    *a1 = v14;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    return;
  }

  v39 = v44;
  v45 = [v44 superview];
  v15 = v45 == 0;
  if (!v45)
  {
LABEL_38:

    v14 = 0uLL;
    v16 = 0uLL;
    if (v20)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v46 = v45;
  [v39 frame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v2 view];
  [v46 convertRect:v55 toView:{v48, v50, v52, v54}];
  v68 = v57;
  v69 = v56;
  v66 = v59;
  v67 = v58;

  *&v16 = v68;
  *&v14 = v69;
  *(&v16 + 1) = v66;
  *(&v14 + 1) = v67;
  if (v20)
  {
    goto LABEL_42;
  }

LABEL_39:
  v68 = v16;
  v69 = v14;
  v65 = [v2 view];
  if (v65)
  {
    goto LABEL_40;
  }

LABEL_50:
  __break(1u);
}

double sub_1006A6A74@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = v22 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v7, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = sub_1006A6078();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v12 cellForItemAtIndexPath:isa];

    if (v14)
    {
      v15 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView];
      v16 = v15;
      [v14 bounds];
      [v16 convertRect:v14 fromCoordinateSpace:?];
      v26[0] = v15;
      v26[1] = v17;
      v26[2] = v18;
      v26[3] = v19;
      v26[4] = v20;
      v27 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v26, 15, v22);
      v28 = v22[0];
      v29 = v22[1];
      v30 = v23;
      *&v31 = v24;
      *(&v31 + 1) = v25;
      PresentationSource.init(viewController:position:)(v3, &v28, a2);

      (*(v9 + 8))(v11, v8);
      return result;
    }

    (*(v9 + 8))(v11, v8);
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v31 = xmmword_100EBCEF0;
  *&result = PresentationSource.init(viewController:position:)(v3, &v28, a2).n128_u64[0];
  return result;
}

id sub_1006A6D30()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
  }

  else
  {
    v4 = v0;
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, variable initialization expression of Library.Context.playlistVariants, 0, v5);
    v7 = AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, v9, v10, v11);
    v12 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_1006A70A8(uint64_t a1)
{
  sub_10053DD40(319);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_10119E2E0, &qword_101181A00, &qword_100EC94D0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RelatedContentProvider.State();
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_10119E2F0, &unk_1011839D0, &qword_100EBF430);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1006A72AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 456))(a1, ObjectType, v4);
}

uint64_t sub_1006A7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A744C, v12, v11);
}

uint64_t sub_1006A744C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    v15 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    (*(*(v9 - 8) + 16))(v2, v8, v9);
    type metadata accessor for PlaylistPicker.Mode(0);
    swift_storeEnumTagMultiPayload();
    v10 = (v2 + *(type metadata accessor for PlaylistPicker.Context(0) + 20));
    *v10 = v7;
    v10[1] = v6;
    v10[2] = v5;
    swift_storeEnumTagMultiPayload();
    sub_1006AA200(v2, v3, type metadata accessor for AppInterfaceContext.Activity);
    sub_1006AA200(v3, v4, type metadata accessor for AppInterfaceContext.Activity);
    v11 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    sub_1006AA2C8(v4, v12 + v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_10047ABA0(v7, v6, v5);
    sub_100706900(v3, sub_100115C18, v12);

    sub_1006AA268(v3, type metadata accessor for AppInterfaceContext.Activity);
    sub_1006AA268(v2, type metadata accessor for AppInterfaceContext.Activity);
  }

  **(v0 + 16) = v1 == 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1006A7694()
{
  v1 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 328))(ObjectType, v2);
}

void sub_1006A7704(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 zoomedViewController];
  type metadata accessor for ContainerDetail.ViewController(0);
  if (swift_dynamicCastClass())
  {
    sub_1006A6400(v10);
    if (v11)
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      v8 = *&v10[3];
      width = *&v10[2];
      v9 = *&v10[1];
      x = *v10;

      if (v9 >= 0.0)
      {
        height = v8;
      }

      else
      {
        height = v8 - v9;
      }

      if (v9 >= 0.0)
      {
        y = v9;
      }

      else
      {
        y = 0.0;
      }
    }
  }

  else
  {

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = width;
  *(a2 + 24) = height;
  *(a2 + 32) = 0;
}

uint64_t sub_1006A7804()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012193F8);
  sub_1000060E4(v0, qword_1012193F8);
  return static Logger.music(_:)(0x656E6961746E6F43, 0xEF6C696174654472);
}

unint64_t sub_1006A79E8(double a1, double a2, double a3, double a4)
{
  v29 = type metadata accessor for IndexPath();
  v9 = *(v29 - 8);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContainerDetailCompositionalLayout();
  v32.receiver = v4;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sub_100009F78(0, &qword_10119E3E0, UICollectionViewLayoutAttributes_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes;

    if (!i)
    {
      break;
    }

    v17 = 0;
    v18 = &v4[v16];
    v30 = v14 & 0xFFFFFFFFFFFFFF8;
    v31 = v14 & 0xC000000000000001;
    v27 = v9 + 1;
    while (1)
    {
      if (v31)
      {
        v19 = sub_1007E9C00(v17, v14);
      }

      else
      {
        if (v17 >= *(v30 + 16))
        {
          goto LABEL_19;
        }

        v19 = *(v14 + 8 * v17 + 32);
      }

      v9 = v19;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = *v18;
      if (*v18)
      {
        v4 = *(v18 + 1);

        v22 = v14;
        v23 = [v9 indexPath];
        v24 = v28;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = v22;
        v21(v9, v24);
        sub_100020438(v21, v4);

        (*v27)(v24, v29);
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_15:

  return v14;
}

id sub_1006A80C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (a2)
  {
    v14[4] = a2;
    v14[5] = a3;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1005A63A8;
    v14[3] = &unk_1010BA718;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for ContainerDetailCompositionalLayout();
  v15.receiver = v4;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithSection:sectionProvider:configuration:", a1, v10, a4);

  sub_100020438(a2, a3);
  _Block_release(v10);
  return v12;
}

id sub_1006A828C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1006A844C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1006A84A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1006A84F0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x101 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 3) >> 2;
    result[2] = 0;
    *result = ((a2 - 3) << 7) & 0x100 | (a2 - 3) & 1 | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1006A8554()
{
  result = qword_10119E330;
  if (!qword_10119E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E330);
  }

  return result;
}

uint64_t sub_1006A85AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 448))(a1, ObjectType, v4);
}

unint64_t sub_1006A86F0()
{
  if (sub_10069BD04())
  {
    return 0;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1006A8738(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1006A8834, 0, 0);
}

uint64_t sub_1006A8834()
{
  v1 = v0[3];
  if ((sub_10069BD04() & 1) != 0 && v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_1006AA200(v7, v3, type metadata accessor for ContainerDetail.AttributionItem);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_1006AA2C8(v3, v10 + v9, type metadata accessor for ContainerDetail.AttributionItem);
    *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

    sub_1001F4CB8(0, 0, v2, &unk_100EE4D10, v10);
  }

  v11 = v0[1];

  return v11();
}

double sub_1006A89B8@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_1006A8A34(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_10119E440, &qword_100EDD2E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_10119E440, &qword_100EDD2E0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_10119E440, &qword_100EDD2E0);
}

BOOL sub_1006A8B68(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a4 >> 62 == 2)
      {
        return (a4 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if (a1 != 0xC000000000000000 || a3 | a2)
    {
      if (a4 >> 62 != 3 || a4 != 0xC000000000000001 || a6 | a5)
      {
        return 0;
      }
    }

    else if (a4 >> 62 != 3 || a4 != 0xC000000000000000 || a6 | a5)
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {
    if (!(a4 >> 62))
    {
      return 0;
    }

    return 0;
  }

  if (a4 >> 62 != 1)
  {
    return 0;
  }

  return ((a4 ^ a1) & 1) == 0 && ((a4 ^ a1) & 0x100) == 0;
}

char *sub_1006A8C44(char *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v60 = a2;
  v49 = type metadata accessor for Track();
  v52 = *(v49 - 8);
  __chkstk_darwin();
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v57 = &v45 - v5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v45 - v7;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v45 - v11;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v45 - v14;
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v50 = v17;
  v23 = *(v17 + 16);
  v58 = a1;
  v23(&v45 - v21, a1, v16, v20);
  sub_1006AA200(v60, v15, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v59, v12, &qword_10118A530, &qword_100EC64E0);
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v55 = v8;
  v26 = v8;
  v27 = v49;
  v25(v26, 1, 1, v24);
  v48 = v19;
  v51 = v16;
  (v23)(v19, v22, v16);
  v53 = v15;
  v28 = v15;
  v29 = v47;
  v30 = v52;
  sub_1006AA200(v28, v47, type metadata accessor for ContainerDetail.Source);
  v54 = v12;
  sub_1000089F8(v12, v10, &qword_10118A530, &qword_100EC64E0);
  if ((*(v30 + 48))(v10, 1, v27) == 1)
  {
    sub_1000095E8(v10, &qword_10118A530, &qword_100EC64E0);
    v31 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v32 = v57;
    (*(*(v31 - 8) + 56))(v57, 1, 1, v31);
  }

  else
  {
    v33 = *(v30 + 32);
    v34 = v46;
    v33(v46, v10, v27);
    v32 = v57;
    v33(v57, v34, v27);
    v35 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
  }

  v37 = v55;
  v36 = v56;
  sub_1000089F8(v55, v56, &qword_101183A20, &unk_100EBCF80);
  v38 = sub_1004E34D0(v48, v29, v32, v36);
  sub_1000095E8(v37, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v54, &qword_10118A530, &qword_100EC64E0);
  sub_1006AA268(v53, type metadata accessor for ContainerDetail.Source);
  v39 = *(v50 + 8);
  v40 = v22;
  v41 = v51;
  v39(v40, v51);
  v42 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v43 = sub_100137F64(v38, v42);
  sub_1000095E8(v59, &qword_10118A530, &qword_100EC64E0);
  sub_1006AA268(v60, type metadata accessor for ContainerDetail.Source);
  v39(v58, v41);
  return v43;
}

char *sub_1006A9254(void *a1, uint64_t a2, void *a3)
{
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v62 = (&v55 - v6);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v55 - v9;
  __chkstk_darwin();
  v68 = &v55 - v10;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v65 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v55 - v12;
  __chkstk_darwin();
  v67 = &v55 - v13;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v15 = &v55 - v14;
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v59 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v55 - v19;
  __chkstk_darwin();
  v64 = &v55 - v21;
  __chkstk_darwin();
  v23 = &v55 - v22;
  v24 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &unk_101184730, &unk_100ECB920);
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000060E4(v25, qword_1012193F8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to convert album to MusicKit Item", v28, 2u);
    }

    else
    {
    }

    sub_1006AA268(a2, type metadata accessor for ContainerDetail.Source);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    v63 = a2;
    v57 = v24;
    v58 = a3;
    v56 = v8;
    v60 = v23;
    if (a3 && (v29 = a3, v30 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v30, 0), v32 = v31, v29, v32))
    {
      v55 = MusicItemID.init(_:)();
      v34 = v33;
    }

    else
    {
      v55 = 0;
      v34 = 0;
    }

    v35 = *(v17 + 16);
    v36 = v64;
    v35(v64, v60, v16);
    v37 = v67;
    sub_1006AA200(v63, v67, type metadata accessor for ContainerDetail.Source);
    v38 = type metadata accessor for URL();
    v39 = v68;
    (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    v35(v20, v36, v16);
    v40 = v37;
    v41 = v66;
    sub_1006AA200(v40, v66, type metadata accessor for ContainerDetail.Source);
    v42 = v39;
    v43 = v61;
    sub_1000089F8(v42, v61, &qword_101183A20, &unk_100EBCF80);
    v44 = v59;
    v35(v59, v20, v16);
    sub_1006AA200(v41, v65, type metadata accessor for ContainerDetail.Source);
    if (v34)
    {
      v45 = v62;
      *v62 = v55;
      *(v45 + 8) = v34;
      v46 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    }

    else
    {
      v48 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      v45 = v62;
      (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
    }

    v49 = v58;
    v50 = v56;
    sub_1000089F8(v43, v56, &qword_101183A20, &unk_100EBCF80);
    v51 = sub_1004E34D0(v44, v65, v45, v50);
    sub_1000095E8(v43, &qword_101183A20, &unk_100EBCF80);
    sub_1006AA268(v66, type metadata accessor for ContainerDetail.Source);
    v52 = *(v17 + 8);
    v52(v20, v16);
    v53 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v54 = sub_100137F64(v51, v53);

    sub_1006AA268(v63, type metadata accessor for ContainerDetail.Source);
    sub_1000095E8(v68, &qword_101183A20, &unk_100EBCF80);
    sub_1006AA268(v67, type metadata accessor for ContainerDetail.Source);
    v52(v64, v16);
    v52(v60, v16);
    return v54;
  }
}

char *sub_1006A99C4(void *a1, uint64_t a2, void *a3, int a4)
{
  v53 = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v45 - v8;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v45 - v10;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v45 - v18;
  __chkstk_darwin();
  v21 = &v45 - v20;
  v54 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000060E4(v22, qword_1012193F8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to convert playlist to MusicKit Item", v25, 2u);
    }

    else
    {
    }

    sub_1006AA268(a2, type metadata accessor for ContainerDetail.Source);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    v49 = a3;
    if (a3 && (v26 = a3, v27 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v27, 0), v29 = v28, v26, v29))
    {
      v30 = a2;
      v31 = MusicItemID.init(_:)();
      v46 = v32;
      v47 = v31;
    }

    else
    {
      v30 = a2;
      v46 = 0;
      v47 = 0;
    }

    v33 = *(v15 + 16);
    v33(v19, v21, v14);
    v34 = v30;
    v48 = v30;
    v35 = v11;
    sub_1006AA200(v34, v11, type metadata accessor for ContainerDetail.Source);
    v36 = type metadata accessor for URL();
    v37 = v52;
    (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
    v33(v17, v19, v14);
    v38 = v50;
    sub_1006AA200(v35, v50, type metadata accessor for ContainerDetail.Source);
    v39 = v51;
    sub_1000089F8(v37, v51, &qword_101183A20, &unk_100EBCF80);
    v40 = sub_100866288(v17, v38, v47, v46, v39, v53 & 1);
    v41 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v42 = sub_100137F48(v40, v41);

    sub_1006AA268(v48, type metadata accessor for ContainerDetail.Source);
    sub_1000095E8(v37, &qword_101183A20, &unk_100EBCF80);
    sub_1006AA268(v35, type metadata accessor for ContainerDetail.Source);
    v43 = *(v15 + 8);
    v43(v19, v14);
    v43(v21, v14);
    return v42;
  }
}

char *sub_1006A9F64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v23 = a3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23 - v11;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  *(&v23 - v15) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(a5, v12, &qword_101183A20, &unk_100EBCF80);
  sub_1006AA200(v16, v14, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v12, v10, &qword_101183A20, &unk_100EBCF80);

  v17 = sub_1004E5248(a1, a2, v14, v10);
  v18 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v19 = sub_100137F64(v17, v18);
  sub_1000095E8(a5, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
  sub_1006AA268(v16, type metadata accessor for ContainerDetail.Source);
  swift_beginAccess();
  type metadata accessor for AlbumDetailDataSource(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = v23;
    *(v21 + 24) = a4 & 1;
  }

  return v19;
}

uint64_t sub_1006AA200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006AA268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006AA2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006AA330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1006AA378()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1006AA3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006AA458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006A3468(a1, v4, v5, v7, v6);
}

uint64_t sub_1006AA518(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artwork() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100008F30;

  return sub_1006A0C0C(v13, v14, v15, a1, v9, v10, v11, v1 + v6);
}

uint64_t sub_1006AA66C(uint64_t a1)
{
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006A17F8(a1, v6, v7, v1 + v5, v8);
}

void sub_1006AA78C()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_durationCalculator;
  type metadata accessor for DurationCalculator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator) = 0;
  v3 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView) = 0;
  v5 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
  v6 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork) = 0;
  v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer;
  *(v0 + v7) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding) = 0;
  v8 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  v9 = enum case for RelatedContentProvider.State.loading(_:);
  v10 = type metadata accessor for RelatedContentProvider.State();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  v11 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentStateSubscription;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker) = 0;
  v12 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___pageProperties;
  v13 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider) = 1;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_storeItemMetadataDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView) = 0;
  v14 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference;
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000001FLL;
  *(v15 + 24) = 0x8000000100E3D5F0;
  *(v15 + 32) = 0;
  *(v0 + v14) = v15;
  *(v15 + 40) = 1;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dragDropController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006AAAEC(char *a1)
{
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = &a1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  (*(v6 + 112))(v3 & 1, ObjectType, v6);
  *v4 = v5;
  *(v4 + 1) = v6;
  swift_endAccess();
  sub_10069F67C();
}

uint64_t sub_1006AABE0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for Backdrop.SnapshotConfiguration();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.ImageFormat();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  v7 = type metadata accessor for Artwork.CropStyle();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 136) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 144) = v9;
  *(v4 + 152) = v8;

  return _swift_task_switch(sub_1006AAD94, v9, v8);
}

uint64_t sub_1006AAD94()
{
  v2 = *(v0 + 15);
  v1 = *(v0 + 16);
  v4 = *(v0 + 13);
  v3 = *(v0 + 14);
  v5 = *(v0 + 11);
  v6 = *(v0 + 12);
  v7 = Artwork.CropStyle.fallback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v7, v3);
  v8 = Artwork.ImageFormat.fallback.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v8, v5);
  v9 = swift_task_alloc();
  *(v0 + 20) = v9;
  *v9 = v0;
  v9[1] = sub_1006AAE94;
  v10 = *(v0 + 16);
  v11 = *(v0 + 13);
  v12 = v0[5];
  v13 = v0[6];

  return Artwork.image(for:cropStyle:format:)(v10, v11, v12, v13);
}

uint64_t sub_1006AAE94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 104);
  v9 = *(*v2 + 96);
  v10 = *(*v2 + 88);
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v11 = *(v3 + 152);
  v12 = *(v3 + 144);
  if (v1)
  {
    v13 = sub_1006AB434;
  }

  else
  {
    v13 = sub_1006AB098;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1006AB098()
{
  [*(v0 + 168) size];
  v1 = *(v0 + 168);
  if (v2 <= 0.0 || ([v1 size], v1 = *(v0 + 168), v3 <= 0.0))
  {

    v10 = *(v0 + 8);

    return v10(0);
  }

  else
  {
    v4 = *(v0 + 168);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 traitCollectionWithUserInterfaceStyle:2];
    Backdrop.SnapshotConfiguration.init(image:size:scale:offset:traitCollection:)();
    type metadata accessor for Backdrop.CompositeRenderer();
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_1006AB24C;
    v9 = *(v0 + 80);

    return static Backdrop.CompositeRenderer.snapshot(configuration:)(v9);
  }
}

uint64_t sub_1006AB24C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_1006AB630;
  }

  else
  {
    v4[25] = a1;
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_1006AB374;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006AB374()
{
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1006AB434()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve artwork image for backdrop with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1006AB630()
{
  v20 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  if (v4)
  {
    v18 = v0[10];
    v10 = swift_slowAlloc();
    v17 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create backdrop with error=%{public}s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v7 + 8))(v18, v17);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1006AB870(uint64_t a1)
{
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1006A1DEC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1006AB9C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10069E114(a1, v4, v5, v6);
}

uint64_t sub_1006ABA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006ABAE8(uint64_t a1)
{
  result = type metadata accessor for Artist();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SocialProfile();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Curator();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for RadioShow();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Genre();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Playlist();
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1006ABBAC(uint64_t a1)
{
  sub_1006ABC20(319);
  if (v1 <= 0x3F)
  {
    sub_1006ABC9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1006ABC20(uint64_t a1)
{
  if (!qword_10119E598)
  {
    sub_1001109D0(&unk_1011926F0, &qword_100ECF890);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10119E598);
    }
  }
}

void *sub_1006ABC9C()
{
  result = qword_10119E5A8;
  if (!qword_10119E5A8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10119E5A8);
  }

  return result;
}

unint64_t sub_1006ABCE0()
{
  result = qword_10119E5D8;
  if (!qword_10119E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E5D8);
  }

  return result;
}

id sub_1006ABD58(uint64_t a1)
{
  v1 = *(a1 + 16);

  if (v1)
  {
    v3 = v2 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100008FE4(v3, &v13);
      sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          v15 = v20;
          v16 = v21;
          v17 = v22;
          v13 = v18;
          v14 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10049B330(0, *(v4 + 2) + 1, 1, v4);
          }

          v6 = *(v4 + 2);
          v5 = *(v4 + 3);
          if (v6 >= v5 >> 1)
          {
            v4 = sub_10049B330((v5 > 1), v6 + 1, 1, v4);
          }

          *(v4 + 2) = v6 + 1;
          v7 = &v4[72 * v6];
          *(v7 + 2) = v13;
          v8 = v14;
          v9 = v15;
          v10 = v16;
          v7[96] = v17;
          *(v7 + 4) = v9;
          *(v7 + 5) = v10;
          *(v7 + 3) = v8;
          goto LABEL_5;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
      }

      sub_1000095E8(&v18, &qword_10119E608, &qword_100EDD430);
LABEL_5:
      v3 += 40;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  if (*(v4 + 2))
  {
    v11 = sub_1007799D8();

    return v11;
  }

  else
  {

    return [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  }
}

uint64_t sub_1006ABF4C(uint64_t a1)
{
  v1 = *(a1 + 16);

  if (v1)
  {
    v3 = v2 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100008FE4(v3, &v14);
      sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
      if (swift_dynamicCast())
      {
        if (*(&v20 + 1))
        {
          v16 = v21;
          v17 = v22;
          v18 = v23;
          v14 = v19;
          v15 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10049B330(0, *(v4 + 2) + 1, 1, v4);
          }

          v6 = *(v4 + 2);
          v5 = *(v4 + 3);
          if (v6 >= v5 >> 1)
          {
            v4 = sub_10049B330((v5 > 1), v6 + 1, 1, v4);
          }

          *(v4 + 2) = v6 + 1;
          v7 = &v4[72 * v6];
          *(v7 + 2) = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v7[96] = v18;
          *(v7 + 4) = v9;
          *(v7 + 5) = v10;
          *(v7 + 3) = v8;
          goto LABEL_5;
        }
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
      }

      sub_1000095E8(&v19, &qword_10119E608, &qword_100EDD430);
LABEL_5:
      v3 += 40;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  if (*(v4 + 2))
  {
    v12 = sub_10077572C(v4, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1006AC124(uint64_t a1)
{
  v76 = type metadata accessor for MusicPin.Action();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v75 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v73 - v2;
  v78 = type metadata accessor for MusicPin.Item();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v82 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MusicPin();
  v81 = *(v83 - 8);
  __chkstk_darwin();
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Folder();
  v79 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v73 - v8;
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  __chkstk_darwin();
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19PlaylistTabsRequestVMa(0);
  __chkstk_darwin();
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v85 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v90 = &v73 - v18;
  v19 = type metadata accessor for Playlist();
  v84 = *(v19 - 8);
  __chkstk_darwin();
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v73 - v22;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {

    v83 = v23;
    UnfairLock.locked<A>(_:)(sub_1006B0F40);

    UnfairLock.locked<A>(_:)(sub_1006B0F40);

    sub_1003DDCB8();
    v24 = RequestResponse.Controller.revision.getter();

    sub_1006B0E60(v24 + *(*v24 + 96), v14, _s19PlaylistTabsRequestVMa);

    v25 = v85;
    sub_1006B0E60(v14, v85, _s9PlaylistsVMa);
    sub_1006B0EC8(v14, _s19PlaylistTabsRequestVMa);
    v26 = v84;
    v27 = v86;
    v87 = *(v84 + 16);
    v87(v86, v21, v19);
    v29 = v88;
    v28 = v89;
    (*(v89 + 104))(v27, enum case for Playlist.Folder.Item.playlist(_:), v88);
    v30 = v90;
    sub_1001917EC(v27, v90);
    (*(v28 + 8))(v27, v29);
    sub_1006B0EC8(v25, _s9PlaylistsVMa);
    v31 = *(v26 + 8);
    v31(v21, v19);
    v32 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      sub_1000095E8(v90, &unk_10118CDB0, &unk_100EC0360);
      v34 = 0;
    }

    else
    {
      v50 = v90;
      v34 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v33 + 8))(v50, v32);
    }

    v51 = v83;
    v52 = sub_10079AA48(v34);
    v53 = sub_100797240(&off_10109C140, v52);

    v87(v21, v51, v19);
    v49 = sub_10079C9B4(v53, v21);

    v31(v51, v19);
  }

  else
  {
    v87 = v17;
    v35 = v9;
    v90 = v7;
    v36 = v79;
    v37 = v5;
    v38 = v82;
    v39 = v89;
    v40 = v80;
    v41 = v83;
    v42 = v81;
    _s17PlaylistFolderTabCMa();
    if (swift_dynamicCastClass())
    {

      UnfairLock.locked<A>(_:)(sub_1006B0F28);

      sub_10010FC20(&qword_101185210, &unk_100EC0C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      v44 = type metadata accessor for DragDropToFolder(0);
      *(inited + 56) = v44;
      *(inited + 64) = sub_1006B0E18(&qword_10118D3B0, type metadata accessor for DragDropToFolder, &unk_100ED254C);
      v45 = sub_10001C8B8((inited + 32));
      v46 = *(v36 + 16);
      v46(v45, v35, v37);
      (*(v39 + 104))(v45, enum case for Playlist.Folder.Item.folder(_:), v88);
      *(v45 + *(v44 + 20)) = 0;
      v47 = sub_100797240(_swiftEmptyArrayStorage, inited);
      swift_setDeallocating();
      sub_10000959C((inited + 32));
      v48 = v90;
      v46(v90, v35, v37);
      v49 = sub_10079D160(v47, v48);
      (*(v36 + 8))(v35, v37);
    }

    else
    {
      _s6PinTabCMa(0);
      v55 = swift_dynamicCastClass();
      if (v55)
      {
        v56 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
        v57 = v55;
        swift_beginAccess();
        v58 = v42;
        v59 = v40;
        v60 = v40;
        v61 = v41;
        (*(v42 + 16))(v60, &v57[v56], v41);
        v62 = 0;
        if ([v57 isEnabled])
        {
          if (qword_10117F6D8 != -1)
          {
            swift_once();
          }

          v63 = v38;
          MusicPin.item.getter();
          v64 = v73;
          MusicPin.action.getter();
          v65 = v74;
          v66 = v75;
          v67 = v76;
          (*(v74 + 104))(v75, enum case for MusicPin.Action.shuffle(_:), v76);
          v68 = static MusicPin.Action.== infix(_:_:)();
          v69 = *(v65 + 8);
          v69(v66, v67);
          v69(v64, v67);
          v70 = v87;
          sub_10042BAAC(v63, v68 & 1, v87);
          (*(v77 + 8))(v63, v78);
          v71 = type metadata accessor for MusicPlaybackIntentDescriptor();
          v72 = *(v71 - 8);
          if ((*(v72 + 48))(v70, 1, v71) == 1)
          {
            sub_1000095E8(v70, &unk_10118CDB0, &unk_100EC0360);
            v62 = 0;
          }

          else
          {
            v62 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
            (*(v72 + 8))(v70, v71);
          }

          v61 = v83;
        }

        v49 = sub_100798374(v62, &off_10109C168);

        (*(v58 + 8))(v59, v61);
      }

      else
      {
        return 0;
      }
    }
  }

  return v49;
}

double sub_1006ACE10@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MusicPin.Item();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin();
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MusicPin();
  v75 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Playlist();
  v73 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = a1;
  v102 = 0u;
  v103 = 0u;
  v104 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v101, 15, v81);
  v97[0] = v81[0];
  v97[1] = v81[1];
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v14 = a1;
  v15 = a2;
  PresentationSource.init(viewController:position:)(v15, v97, v80);
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {
    v16 = *(v78 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v17 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v18 = v79;
    v79[3] = v17;
    v18[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE17E0);
    v19 = sub_10001C8B8(v18);
    v20 = v19 + *(v17 + 20);

    UnfairLock.locked<A>(_:)(sub_1003E14F4);

    v21 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    v22 = *(v21 + 20);
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(&v20[v22], 1, 1, v23);
    v24 = &v20[*(v21 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
LABEL_5:
    sub_10012B828(v80, v19 + *(v17 + 24));
    *v19 = v16;
    return result;
  }

  v70 = v10;
  v71 = v7;
  v72 = v8;
  v26 = v77;
  v25 = v78;
  v27 = v79;
  _s17PlaylistFolderTabCMa();
  if (swift_dynamicCastClass())
  {
    v16 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v17 = type metadata accessor for DragDropToFolder.Destination(0);
    v27[3] = v17;
    v27[4] = sub_1006B0E18(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination, &unk_100ED2530);
    v19 = sub_10001C8B8(v27);
    v28 = *(v17 + 20);
    v29 = type metadata accessor for Playlist.Folder();

    UnfairLock.locked<A>(_:)(sub_1006B0DB0);

    (*(*(v29 - 8) + 56))(v19 + v28, 0, 1, v29);
    goto LABEL_5;
  }

  _s8FacetTabCMa();
  v69 = v14;
  v31 = swift_dynamicCastClass();
  v68 = v13;
  v32 = a1;
  v33 = v27;
  v34 = v25;
  v35 = v72;
  if (v31)
  {
    if (Library.Menu.Identifier.rawValue.getter(*(v31 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier)) == 0xD000000000000025 && 0x8000000100E3C0B0 == v36)
    {

LABEL_12:
      v37 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
      v38 = type metadata accessor for DragDropToFolder.Destination(0);
      v33[3] = v38;
      v33[4] = sub_1006B0E18(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination, &unk_100ED2530);
      v39 = sub_10001C8B8(v33);
      v40 = *(v38 + 20);
      v41 = type metadata accessor for Playlist.Folder();
      (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
      sub_10012B828(v80, v39 + *(v38 + 24));
      *v39 = v37;
      goto LABEL_19;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_12;
    }
  }

  _s6PinTabCMa(0);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    if (!swift_dynamicCastClass() && !swift_dynamicCastClass())
    {
      sub_10012BA6C(v80);
      result = 0.0;
      *v33 = 0u;
      *(v33 + 1) = 0u;
      v33[4] = 0;
      return result;
    }

    v64 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v33[3] = &type metadata for DragDropToLibrary.Destination;
    v33[4] = sub_1005C31E4();
    v65 = swift_allocObject();
    *v33 = v65;
    sub_10012B828(v80, v65 + 24);
    *(v65 + 16) = v64;
LABEL_19:

    return result;
  }

  ObjectType = v32;
  v43 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v44 = v42;
  swift_beginAccess();
  v45 = v75;
  v46 = v44 + v43;
  v47 = v70;
  (*(v75 + 16))(v70, v46, v35);
  v48 = v71;
  MusicPin.item.getter();
  (*(v45 + 8))(v47, v35);
  v49 = v76;
  if ((*(v76 + 88))(v48, v26) == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v49 + 96))(v48, v26);
    v50 = v73;
    v51 = v68;
    (*(v73 + 32))(v68, v48, v11);
    v78 = *(v34 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v52 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v33[3] = v52;
    v33[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE17E0);
    v53 = sub_10001C8B8(v33);
    v54 = v53 + *(v52 + 20);
    (*(v50 + 16))(v54, v51, v11);
    v55 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    v56 = *(v55 + 20);
    v57 = type metadata accessor for IndexPath();
    (*(*(v57 - 8) + 56))(&v54[v56], 1, 1, v57);
    v58 = &v54[*(v55 + 24)];
    *v58 = 0;
    *(v58 + 1) = 0;
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v93 = ObjectType;
    v94 = 0u;
    v95 = 0u;
    v96 = 2;
    PresentationSource.Position.init(source:permittedArrowDirections:)(&v93, 15, v85);
    v89[0] = v85[0];
    v89[1] = v85[1];
    v90 = v86;
    v91 = v87;
    v92 = v88;
    v59 = *(v52 + 24);
    v60 = v69;
    v61 = v15;
    v62 = v78;

    v63 = PresentationSource.init(viewController:position:)(v61, v89, v53 + v59);
    (*(v50 + 8))(v68, v11, v63);
    sub_10012BA6C(v80);
    *v53 = v62;
  }

  else
  {
    sub_10012BA6C(v80);
    (*(v49 + 8))(v48, v26);
    v33[4] = 0;
    result = 0.0;
    *v33 = 0u;
    *(v33 + 1) = 0u;
  }

  return result;
}

void sub_1006AD904(void *a1, void *a2, uint64_t a3)
{
  sub_1006ACE10(a2, a1, &v21);
  if (v22)
  {
    sub_100059A8C(&v21, v23);
    v6 = v24;
    v7 = v25;
    v8 = sub_10000954C(v23, v24);
    sub_1006AF250(v8, a2, a3, v3, v6, v7);
    sub_10000959C(v23);
  }

  else
  {
    sub_1000095E8(&v21, &unk_10119E610, &unk_100EC71A0);
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_1012186C8);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446210;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000105AC(v17, v19, v23);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported Drop Session for tab=%{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }
  }
}

uint64_t sub_1006ADCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1006ADD04, 0, 0);
}

uint64_t sub_1006ADD04()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1006ADDF4;
  v4 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_100EDD408, v1, &type metadata for () + 1);
}

uint64_t sub_1006ADDF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006ADF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1006ADFA8, 0, 0);
}

uint64_t sub_1006ADFA8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_100008FE4(v5, v0 + 16);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  sub_100059A8C((v0 + 16), (v7 + 4));
  v7[9] = v3;
  v7[10] = v4;
  v7[11] = v2;

  v8 = v4;
  swift_unknownObjectRetain();
  sub_1006AEC90(v1, &unk_100EDD418, v7);
  sub_1000095E8(v1, &unk_101181520, &qword_100EBCC60);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006AE0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for Notice(0);
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1006AE1F4, 0, 0);
}

uint64_t sub_1006AE1F4()
{
  v1 = v0[14];
  v3 = v1[3];
  v2 = v1[4];
  sub_10000954C(v1, v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1006AE2B4;
  v5 = v0[22];
  v6 = v0[15];

  return sub_10017BE34(v5, v6, v3, v2);
}

uint64_t sub_1006AE2B4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1006AE9B4;
  }

  else
  {
    v2 = sub_1006AE3C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006AE3C8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_1000089F8(v0[22], v1, &unk_10118B980, &qword_100ECA530);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    sub_1000095E8(v0[22], &unk_10118B980, &qword_100ECA530);
    sub_1000095E8(v4, &unk_10118B980, &qword_100ECA530);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_10035AEF0(v0[21], v0[20]);
    v0[25] = type metadata accessor for MainActor();
    v0[26] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE534, v8, v7);
  }
}

uint64_t sub_1006AE534()
{
  v1 = *(v0 + 128);

  *(v0 + 216) = [v1 tabBarController];

  return _swift_task_switch(sub_1006AE5BC, 0, 0);
}

uint64_t sub_1006AE5BC(uint64_t a1)
{
  if (v1[27])
  {
    v1[28] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE6D4, v3, v2);
  }

  else
  {
    v4 = v1[22];
    sub_1006B0EC8(v1[20], type metadata accessor for Notice);
    sub_1000095E8(v4, &unk_10118B980, &qword_100ECA530);

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_1006AE6D4()
{
  v1 = *(v0 + 216);

  *(v0 + 232) = UIViewController.noticePresenter.getter();

  return _swift_task_switch(sub_1006AE748, 0, 0);
}

uint64_t sub_1006AE748(uint64_t a1)
{
  v2 = v1[29];
  if (v2)
  {
    v3 = *v2 + 200;
    v1[30] = *v3;
    v1[31] = v3 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v1[32] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE87C, v5, v4);
  }

  else
  {
    v6 = v1[22];
    sub_1006B0EC8(v1[20], type metadata accessor for Notice);
    sub_1000095E8(v6, &unk_10118B980, &qword_100ECA530);

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_1006AE87C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);

  v1(v2, 0);

  return _swift_task_switch(sub_1006AE908, 0, 0);
}

uint64_t sub_1006AE908()
{
  v1 = v0[22];
  sub_1006B0EC8(v0[20], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980, &qword_100ECA530);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1006AE9B4()
{
  v22 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 2));
  swift_unknownObjectRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136446722;
    sub_100008FE4((v0 + 2), (v0 + 7));
    sub_10010FC20(&unk_10119E5F0, &unk_100EC7200);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_10000959C(v0 + 2);
    v12 = sub_1000105AC(v9, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[12] = v7;
    swift_unknownObjectRetain();
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v21);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2082;
    v0[13] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v21);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s for model=%{public}s. Error=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v0 + 2);
  }

  v19 = v0[1];

  return v19();
}

double sub_1006AEC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = v19 - v8;
  sub_1000089F8(a1, v19 - v8, &unk_101181520, &qword_100EBCC60);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_101181520, &qword_100EBCC60);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_1006AEEA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v28 - v8;
  v31[3] = type metadata accessor for DragDropToPlaylist.Destination(0);
  v31[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE17E0);
  v10 = sub_10001C8B8(v31);
  sub_1006B0E60(a1, v10, type metadata accessor for DragDropToPlaylist.Destination);
  ObjectType = swift_getObjectType();
  v12 = sub_1003207B8(ObjectType);
  if (*(v12 + 16))
  {
    static TaskPriority.userInitiated.getter();
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    sub_100008FE4(v31, v30);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    sub_100059A8C(v30, (v14 + 4));
    v14[9] = v12;
    v14[10] = a4;
    v14[11] = a2;
    swift_unknownObjectRetain();
    v15 = a4;
    sub_10035EB10(0, 0, v9, &unk_100EDD3F0, v14);

    sub_1000095E8(v9, &unk_101181520, &qword_100EBCC60);
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = a3;
      *&v30[0] = v20;
      *v19 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0, &qword_100EDD3F8);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000105AC(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v29 = a2;
      swift_unknownObjectRetain();
      v24 = String.init<A>(describing:)();
      v26 = sub_1000105AC(v24, v25, v30);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "No intents found for drop session=%{public}s for model=%{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }
  }

  return sub_10000959C(v31);
}

uint64_t sub_1006AF250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v35[3] = a5;
  v35[4] = a6;
  v14 = sub_10001C8B8(v35);
  (*(*(a5 - 8) + 16))(v14, a1, a5);
  ObjectType = swift_getObjectType();
  v16 = sub_1003207B8(ObjectType);
  if (*(v16 + 16))
  {
    static TaskPriority.userInitiated.getter();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    sub_100008FE4(v35, v34);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    sub_100059A8C(v34, (v18 + 4));
    v18[9] = v16;
    v18[10] = a4;
    v18[11] = a2;
    swift_unknownObjectRetain();
    v19 = a4;
    sub_10035EB10(0, 0, v13, &unk_100EDD438, v18);

    sub_1000095E8(v13, &unk_101181520, &qword_100EBCC60);
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = a3;
      *&v34[0] = v24;
      *v23 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0, &qword_100EDD3F8);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000105AC(v25, v26, v34);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v33 = a2;
      swift_unknownObjectRetain();
      v28 = String.init<A>(describing:)();
      v30 = sub_1000105AC(v28, v29, v34);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "No intents found for drop session=%{public}s for model=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }
  }

  return sub_10000959C(v35);
}

double sub_1006AF5D0(uint64_t a1, void *a2)
{
  v3 = sub_1006AC124(a1);
  if (v3)
  {
    v5 = v3;
    sub_10032626C(v10);
    if (*&v10[0])
    {
      sub_1000089F8(v10 + 8, &v11, &qword_10118B990, &unk_100EBE7B0);
      sub_1000095E8(v10, &unk_10118B930, &unk_100EC71B0);
    }

    else
    {
      sub_1000095E8(v10, &unk_10118B930, &unk_100EC71B0);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    v6 = sub_1007A411C(&v11);
    if ([a2 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v6 == 4 || v9 != v6)
        {

          return result;
        }

LABEL_19:
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v8 = swift_allocObject();
        *&result = 1;
        *(v8 + 16) = xmmword_100EBC6C0;
        *(v8 + 32) = v5;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v10, &unk_101183F30, qword_100EBF960);
    }

    if (v6 == 4)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v10[0]) = v6;
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a2 setLocalContext:v7];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1006AF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  ObjectType = swift_getObjectType();
  v14 = sub_1003207B8(ObjectType);
  v15 = v14;
  if (*(v14 + 16))
  {
    if (sub_10017BC1C(v14, v6, a5))
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000060E4(v16, qword_1012186C8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = a3;
        v54 = v52;
        *v19 = 136446466;
        swift_unknownObjectRetain();
        sub_10010FC20(&unk_10119E5E0, &qword_100EDD3F8);
        v20 = String.init<A>(describing:)();
        v22 = sub_1000105AC(v20, v21, &v54);
        HIDWORD(v51) = v18;
        v23 = v6;
        v24 = v22;

        *(v19 + 4) = v24;
        v6 = v23;
        *(v19 + 12) = 2082;
        v53 = a2;
        swift_unknownObjectRetain();
        v25 = String.init<A>(describing:)();
        v27 = sub_1000105AC(v25, v26, &v54);

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, BYTE4(v51), "Received drop session=%{public}s on=%{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      v28 = sub_10017BAC0(v15, v6, a5);

      v29 = [v28 operation];
    }

    else
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000060E4(v41, qword_1012186C8);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        sub_10010FC20(&qword_10119E600, &qword_100ECF0E0);
        v46 = Array.description.getter();
        v48 = v47;

        v49 = sub_1000105AC(v46, v48, &v54);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Destination doesn't accept intents=%{public}s", v44, 0xCu);
        sub_10000959C(v45);
      }

      else
      {
      }

      v29 = 1;
    }
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = a3;
      v54 = v34;
      *v33 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0, &qword_100EDD3F8);
      v35 = String.init<A>(describing:)();
      v37 = sub_1000105AC(v35, v36, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v53 = a2;
      swift_unknownObjectRetain();
      v38 = String.init<A>(describing:)();
      v40 = sub_1000105AC(v38, v39, &v54);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "No intents found for drop session=%{public}s on=%{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v29 = 0;
  }

  (*(v9 + 8))(v12, v6);
  return v29;
}