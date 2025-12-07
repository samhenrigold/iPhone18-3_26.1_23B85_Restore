uint64_t sub_10015D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000081F8(a3, v25 - v10, &unk_10025B5D0, &qword_1001D05A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F500(v11, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000341C(&qword_10025F848, &qword_1001D50C0);
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

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

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

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10015D5E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10015D6AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_10015D770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_10015D840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
}

uint64_t sub_10015D914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);
  return result;
}

uint64_t sub_10015D9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_10015DABC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id sub_10015DB58@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_10015DC48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
}

uint64_t sub_10015DD1C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10015DDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x4024000000000000;
  *(a3 + 16) = 5;
  *(a3 + 24) = xmmword_1001CFA80;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 40) = _Q0;
  v11 = type metadata accessor for QuestionnaireView(0);
  v12 = v11[8];
  *(a3 + v12) = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v13 = a3 + v11[9];
  type metadata accessor for CommonUIManager(0);
  sub_1001659B0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  *v13 = Environment.init<A>(_:)();
  *(v13 + 8) = v14 & 1;
  v15 = a3 + v11[12];
  State.init(wrappedValue:)();
  *v15 = v24;
  *(v15 + 8) = v25;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F20);
  v17 = static os_log_type_t.debug.getter();
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v18, v17, "Initialize QuestionnaireOnlyView", v19, 2u);
  }

  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  *(a3 + 8) = v20;
  v21 = (a3 + v11[11]);
  type metadata accessor for QuestionnaireModel(0);
  v22 = v20;
  State.init(wrappedValue:)();
  *v21 = a1;
  v21[1] = v25;
  return sub_10002A894(a2, a3 + v11[10], &qword_1002632E0, &qword_1001D11A0);
}

uint64_t sub_10015E0C0(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityTechnologies();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.accessibilityEnabledTechnologies.setter();
}

uint64_t sub_10015E188()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277200 = result;
  *algn_100277208 = v1;
  byte_100277210 = v2 & 1;
  qword_100277218 = v3;
  return result;
}

uint64_t sub_10015E1D4()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277220 = result;
  *algn_100277228 = v1;
  byte_100277230 = v2 & 1;
  qword_100277238 = v3;
  return result;
}

uint64_t sub_10015E220()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277240 = result;
  *algn_100277248 = v1;
  byte_100277250 = v2 & 1;
  qword_100277258 = v3;
  return result;
}

uint64_t sub_10015E25C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277260 = result;
  *algn_100277268 = v1;
  byte_100277270 = v2 & 1;
  qword_100277278 = v3;
  return result;
}

uint64_t sub_10015E29C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277280 = result;
  *algn_100277288 = v1;
  byte_100277290 = v2 & 1;
  qword_100277298 = v3;
  return result;
}

uint64_t sub_10015E2DC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = type metadata accessor for CustomRow(0);
  __chkstk_darwin(v27);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PickerRow(0);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000341C(&qword_1002655A8, &qword_1001DE060);
  __chkstk_darwin(v23);
  v25 = &v19 - v4;
  v5 = sub_10000341C(&qword_1002655B0, &qword_1001DE068);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v24 = sub_10000341C(&qword_1002655B8, &unk_1001DE070);
  __chkstk_darwin(v24);
  v9 = &v19 - v8;
  v21 = type metadata accessor for MultichoiceRow(0);
  __chkstk_darwin(v21);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QuestionRow(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v12 = sub_10019C870();

  if (v12)
  {
    Bindable.wrappedValue.getter();
    type metadata accessor for QuestionnaireEntry(0);
    sub_1001659B0(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    if (v12 == 1)
    {
      v13 = v20;
      Bindable<A>.init(wrappedValue:)();
      sub_100164294(v13, v7, type metadata accessor for PickerRow);
      swift_storeEnumTagMultiPayload();
      sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow, &unk_1001E1DC0);
      sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow, &unk_1001E1D70);
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v9, v25, &qword_1002655B8, &unk_1001DE070);
      swift_storeEnumTagMultiPayload();
      sub_1001658C4();
      sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow, &unk_1001E1D20);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v9, &qword_1002655B8, &unk_1001DE070);
      v14 = type metadata accessor for PickerRow;
      v15 = v13;
    }

    else
    {
      Bindable<A>.init(wrappedValue:)();
      v16 = &v2[*(v27 + 20)];
      v28 = 0;
      State.init(wrappedValue:)();
      v17 = v30;
      *v16 = v29;
      *(v16 + 1) = v17;
      sub_100164294(v2, v25, type metadata accessor for CustomRow);
      swift_storeEnumTagMultiPayload();
      sub_1001658C4();
      sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow, &unk_1001E1D20);
      _ConditionalContent<>.init(storage:)();
      v14 = type metadata accessor for CustomRow;
      v15 = v2;
    }
  }

  else
  {
    Bindable.wrappedValue.getter();
    sub_1001AE5CC(v29, v11);
    sub_100164294(v11, v7, type metadata accessor for MultichoiceRow);
    swift_storeEnumTagMultiPayload();
    sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow, &unk_1001E1DC0);
    sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow, &unk_1001E1D70);
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v9, v25, &qword_1002655B8, &unk_1001DE070);
    swift_storeEnumTagMultiPayload();
    sub_1001658C4();
    sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow, &unk_1001E1D20);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v9, &qword_1002655B8, &unk_1001DE070);
    v14 = type metadata accessor for MultichoiceRow;
    v15 = v11;
  }

  return sub_1001659F8(v15, v14);
}

uint64_t sub_10015EA08@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_10000341C(&qword_1002655A0, &qword_1001DE058);
  return sub_10015E2DC(a2 + *(v3 + 44));
}

uint64_t sub_10015EA5C@<X0>(char *a2@<X8>)
{
  result = sub_10015EC20();
  if (result & 1) != 0 || (type metadata accessor for QuestionnaireView(0), sub_10000341C(&qword_10025B648, &qword_1001D0050), State.wrappedValue.getter(), swift_getKeyPath(), sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v4 = *(v7 + 112), result = , (v4) || (State.wrappedValue.getter(), swift_getKeyPath(), sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v5 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries), , result = , !v5))
  {
    v6 = 0;
  }

  else
  {

    v6 = 1;
  }

  *a2 = v6;
  return result;
}

BOOL sub_10015EC20()
{
  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);

  if (!v0)
  {
    return 0;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v3 + 136);

  return v1 == 1;
}

uint64_t sub_10015EDC8()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Questionnaire done", v3, 2u);
  }

  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100051DE8(1, 0, 0, 0);
}

uint64_t sub_10015EF04()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Questionnaire cancelled, requesting revert and dismissal...", v3, 2u);
  }

  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100051C4C();

  State.wrappedValue.getter();
  sub_100051DE8(0, 0, 0, 0);
}

void sub_10015F068()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 1)
  {
    v3 = [v0 currentTraitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 6)
    {
      goto LABEL_36;
    }
  }

  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (!v5)
  {
    goto LABEL_36;
  }

  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_35:

LABEL_36:
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F34C(v29, qword_100276F20);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping height for entry pickers due to no entries or not a pad idiom", v32, 2u);
    }

    return;
  }

  while (1)
  {
    sub_100163C40(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = [*(v9 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) answerOptions];
      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = v10;
      v12 = [v10 count];

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100163C40((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
      ++v7;
      if (v8 == v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_35;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
LABEL_17:

      v15 = _swiftEmptyArrayStorage[2];
      if (v15)
      {
        v16 = _swiftEmptyArrayStorage[4];
        v17 = v15 - 1;
        if (v15 != 1)
        {
          if (v15 >= 5)
          {
            v18 = v17 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v19 = vdupq_n_s64(v16);
            v20 = &_swiftEmptyArrayStorage[7];
            v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            v22 = v19;
            do
            {
              v19 = vbslq_s8(vcgtq_s64(v19, v20[-1]), v19, v20[-1]);
              v22 = vbslq_s8(vcgtq_s64(v22, *v20), v22, *v20);
              v20 += 2;
              v21 -= 4;
            }

            while (v21);
            v23 = vbslq_s8(vcgtq_s64(v19, v22), v19, v22);
            v24 = vextq_s8(v23, v23, 8uLL).u64[0];
            v16 = vbsl_s8(vcgtd_s64(v23.i64[0], v24), *v23.i8, v24);
            if (v17 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_25;
            }
          }

          else
          {
            v18 = 1;
LABEL_25:
            v25 = v15 - v18;
            v26 = &_swiftEmptyArrayStorage[v18 + 4];
            do
            {
              v28 = *v26++;
              v27 = v28;
              if (v16 <= v28)
              {
                v16 = v27;
              }

              --v25;
            }

            while (v25);
          }
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_10015F504()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = *(v0 + 8);
  if (v3 && (v4 = [v3 entryPoint]) != 0)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10015F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = sub_10000341C(&qword_100265578, &qword_1001DE018);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10000341C(&qword_100265580, &qword_1001DE020);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_10002AAC0;
  v10[2] = v7;
  return result;
}

uint64_t sub_10015F724@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v52 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for QuestionnaireView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v55 = v9;
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_1002652A8, &qword_1001DDAB8);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  *v13 = static Alignment.center.getter();
  *(v13 + 8) = v14;
  v15 = sub_10000341C(&qword_1002652B0, &unk_1001DDAC0);
  sub_10015FD34(v2, v13 + *(v15 + 44));
  v53 = type metadata accessor for QuestionnaireView;
  sub_100164294(v2, v10, type metadata accessor for QuestionnaireView);
  v16 = *(v8 + 80);
  v17 = swift_allocObject();
  v54 = type metadata accessor for QuestionnaireView;
  sub_10016397C(v10, v17 + ((v16 + 16) & ~v16), type metadata accessor for QuestionnaireView);
  v18 = (v13 + *(v11 + 36));
  *v18 = sub_100162E3C;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = v52;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v52);
  sub_100162E54();
  v20 = v56;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v19);
  sub_10000F500(v13, &qword_1002652A8, &qword_1001DDAB8);
  v21 = (v2 + *(v7 + 52));
  v23 = *v21;
  v22 = v21[1];
  *&v59 = v23;
  *(&v59 + 1) = v22;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v24 = v20 + *(sub_10000341C(&qword_1002652D0, &unk_1001DDAE0) + 36);
  v25 = type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  sub_100164294(v2, v10, v53);
  type metadata accessor for MainActor();
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = &protocol witness table for MainActor;
  sub_10016397C(v10, v27 + ((v16 + 32) & ~v16), v54);
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v30 = v59;
  LOBYTE(v10) = v60;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v24 + 8) = 1;
  v31 = v24 + v25[8];
  *v31 = v30;
  *(v31 + 16) = v10;
  v32 = (v24 + v25[9]);
  *v32 = 0xD000000000000010;
  v32[1] = 0x80000001001E7F30;
  v33 = v24 + v25[10];
  type metadata accessor for CGSize(0);
  v57 = 0;
  v58 = 0;
  State.init(wrappedValue:)();
  v34 = v60;
  *v33 = v59;
  *(v33 + 16) = v34;
  v35 = v24 + v25[11];
  LOBYTE(v57) = 0;
  State.init(wrappedValue:)();
  v36 = *(&v59 + 1);
  *v35 = v59;
  *(v35 + 8) = v36;
  v37 = v24 + v25[12];
  v57 = 0;
  LOBYTE(v58) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v38 = BYTE8(v59);
  v39 = v60;
  *v37 = v59;
  *(v37 + 8) = v38;
  *(v37 + 16) = v39;
  v40 = v24 + v25[13];
  LOBYTE(v57) = 0;
  State.init(wrappedValue:)();
  v41 = *(&v59 + 1);
  *v40 = v59;
  *(v40 + 8) = v41;
  v42 = v24 + v25[14];
  type metadata accessor for PresentationModel(0);
  sub_1001659B0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v42 = Environment.init<A>(_:)();
  *(v42 + 8) = v43 & 1;
  v44 = Environment.init<A>(_:)();
  LOBYTE(v13) = v45;
  v46 = static Alignment.center.getter();
  v48 = v47;
  result = sub_10000341C(&qword_1002652D8, &qword_1001DDAF0);
  v50 = v56 + *(result + 36);
  *v50 = v44;
  *(v50 + 8) = v13 & 1;
  *(v50 + 9) = 1;
  *(v50 + 16) = v46;
  *(v50 + 24) = v48;
  return result;
}

uint64_t sub_10015FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = sub_10000341C(&qword_1002652E0, &qword_1001DDBC8);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = v37 - v3;
  v42 = sub_10000341C(&qword_1002652E8, &qword_1001DDBD0);
  __chkstk_darwin(v42);
  v6 = (v37 - v5);
  v7 = sub_10000341C(&qword_1002652F0, &qword_1001DDBD8);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_10000341C(&qword_1002652F8, &qword_1001DDBE0);
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = v37 - v11;
  v12 = sub_10000341C(&qword_100265300, &qword_1001DDBE8);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_10000341C(&qword_100265308, &qword_1001DDBF0);
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  v46 = a1;
  if (sub_10015EC20())
  {
    *v17 = static HorizontalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v18 = sub_10000341C(&qword_100265388, &qword_1001DDC30);
    sub_1001604D8(v46, &v17[*(v18 + 44)]);
    sub_1000081F8(v17, v14, &qword_100265308, &qword_1001DDBF0);
    swift_storeEnumTagMultiPayload();
    sub_10016365C();
    v19 = sub_100003E34(&qword_100265358, &qword_1001DDC20);
    v20 = sub_100163560();
    v21 = sub_100007120(&qword_100265368, &qword_100265358, &qword_1001DDC20, &protocol conformance descriptor for TupleToolbarContent<A>);
    *&v51 = v7;
    *(&v51 + 1) = v19;
    *&v52 = v20;
    *(&v52 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v17, &qword_100265308, &qword_1001DDBF0);
  }

  else
  {
    v37[0] = v12;
    v37[1] = v15;
    v38 = v14;
    v39 = v10;
    v23 = static Alignment.center.getter();
    *v6 = v23;
    v6[1] = v24;
    __chkstk_darwin(v23);
    static Axis.Set.vertical.getter();
    sub_10000341C(&qword_100265310, &qword_1001DDBF8);
    sub_100163414();
    ScrollView.init(_:showsIndicators:content:)();
    static Alignment.center.getter();
    v25 = v6 + *(sub_10000341C(&qword_100265340, &qword_1001DDC10) + 44);
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v40 + 32))(v25, v4, v41);
    v26 = &v25[*(sub_10000341C(&qword_100265348, &qword_1001DDC18) + 36)];
    v27 = v56;
    *(v26 + 4) = v55;
    *(v26 + 5) = v27;
    *(v26 + 6) = v57;
    v28 = v52;
    *v26 = v51;
    *(v26 + 1) = v28;
    v29 = v54;
    *(v26 + 2) = v53;
    *(v26 + 3) = v29;
    if (qword_10025A838 != -1)
    {
      swift_once();
    }

    sub_100007120(&qword_100265350, &qword_1002652E8, &qword_1001DDBD0, &protocol conformance descriptor for ZStack<A>);
    View.navigationTitle(_:)();
    v30 = sub_10000F500(v6, &qword_1002652E8, &qword_1001DDBD0);
    __chkstk_darwin(v30);
    v31 = sub_10000341C(&qword_100265358, &qword_1001DDC20);
    v32 = sub_100163560();
    v33 = sub_100007120(&qword_100265368, &qword_100265358, &qword_1001DDC20, &protocol conformance descriptor for TupleToolbarContent<A>);
    v34 = v43;
    View.toolbar<A>(content:)();
    sub_10000F500(v9, &qword_1002652F0, &qword_1001DDBD8);
    v35 = v44;
    v36 = v39;
    (*(v44 + 16))(v38, v34, v39);
    swift_storeEnumTagMultiPayload();
    sub_10016365C();
    v47 = v7;
    v48 = v31;
    v49 = v32;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v35 + 8))(v34, v36);
  }
}

uint64_t sub_1001604D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for QuestionnaireView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v38 = type metadata accessor for QuestionnaireSafetyUI(0);
  __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000341C(&qword_100265390, &qword_1001DDC38);
  v11 = __chkstk_darwin(v40);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v41 = &v37 - v16;
  if (qword_10025A8C8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for LocalizedStringResource();
  v18 = sub_10000F34C(v17, qword_1002773D8);
  (*(*(v17 - 8) + 16))(v10, v18, v17);
  sub_100164294(a1, v8, type metadata accessor for QuestionnaireView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_10016397C(v8, v20 + v19, type metadata accessor for QuestionnaireView);
  v21 = a1;
  v22 = v39;
  sub_100164294(v21, v39, type metadata accessor for QuestionnaireView);
  v23 = swift_allocObject();
  sub_10016397C(v22, v23 + v19, type metadata accessor for QuestionnaireView);
  v24 = v38;
  v25 = &v10[*(v38 + 20)];
  *v25 = sub_1001638D8;
  v25[1] = v20;
  v26 = &v10[*(v24 + 24)];
  *v26 = sub_100163964;
  v26[1] = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10016397C(v10, v15, type metadata accessor for QuestionnaireSafetyUI);
  v27 = &v15[*(v40 + 36)];
  v28 = v49;
  *(v27 + 4) = v48;
  *(v27 + 5) = v28;
  *(v27 + 6) = v50;
  v29 = v45;
  *v27 = v44;
  *(v27 + 1) = v29;
  v30 = v47;
  *(v27 + 2) = v46;
  *(v27 + 3) = v30;
  v31 = v15;
  v32 = v41;
  sub_10002A894(v31, v41, &qword_100265390, &qword_1001DDC38);
  v33 = v42;
  sub_1000081F8(v32, v42, &qword_100265390, &qword_1001DDC38);
  v34 = v43;
  sub_1000081F8(v33, v43, &qword_100265390, &qword_1001DDC38);
  v35 = v34 + *(sub_10000341C(&qword_100265398, &qword_1001DDC40) + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_10000F500(v32, &qword_100265390, &qword_1001DDC38);
  return sub_10000F500(v33, &qword_100265390, &qword_1001DDC38);
}

uint64_t sub_100160944(uint64_t a1)
{
  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100037A50(0);
}

uint64_t sub_1001609B8(uint64_t a1)
{
  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100057790();
}

__n128 sub_100160A28@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265328, &qword_1001DDC00);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_10000341C(&qword_1002653E0, &qword_1001DDC78);
  sub_100160BE4(a1, &v6[*(v7 + 44)]);
  sub_10015F068();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v6, a2, &qword_100265328, &qword_1001DDC00);
  v8 = a2 + *(sub_10000341C(&qword_100265310, &qword_1001DDBF8) + 36);
  v9 = v18;
  *(v8 + 64) = v17;
  *(v8 + 80) = v9;
  *(v8 + 96) = v19;
  v10 = v14;
  *v8 = v13;
  *(v8 + 16) = v10;
  result = v16;
  *(v8 + 32) = v15;
  *(v8 + 48) = result;
  return result;
}

void sub_100160BE4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v112 = sub_10000341C(&qword_1002653F0, &qword_1001DDC88);
  __chkstk_darwin(v112);
  v107 = &v87 - v3;
  v4 = sub_10000341C(&qword_1002653F8, &qword_1001DDC90);
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v100 = (&v87 - v5);
  v96 = type metadata accessor for FeedbackView(0);
  v6 = __chkstk_darwin(v96);
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v97 = &v87 - v9;
  __chkstk_darwin(v8);
  v98 = &v87 - v10;
  v11 = sub_10000341C(&qword_100265400, &qword_1001DDC98);
  v12 = __chkstk_darwin(v11 - 8);
  v102 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v109 = &v87 - v14;
  v15 = sub_10000341C(&qword_100265408, &qword_1001DDCA0);
  v105 = *(v15 - 8);
  v106 = v15;
  v16 = __chkstk_darwin(v15);
  v101 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v113 = &v87 - v18;
  v115 = sub_10000341C(&qword_100265410, &qword_1001DDCA8);
  __chkstk_darwin(v115);
  v116 = &v87 - v19;
  v110 = sub_10000341C(&qword_100265418, &qword_1001DDCB0);
  __chkstk_darwin(v110);
  v21 = &v87 - v20;
  v114 = sub_10000341C(&qword_100265420, &qword_1001DDCB8);
  __chkstk_darwin(v114);
  v111 = &v87 - v22;
  v23 = *(type metadata accessor for QuestionnaireView(0) + 44);
  v108 = a1;
  v24 = &a1[v23];
  v25 = v24[1];
  v26 = *v24;
  *&v143 = *v24;
  *(&v143 + 1) = v25;
  v27 = sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v28 = v132;
  swift_getKeyPath();
  *&v143 = v28;
  v29 = sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v28 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  if ((a1 & 1) == 0)
  {
    v43 = static HorizontalAlignment.center.getter();
    v131 = 1;
    sub_100161C94(&v119);
    v140 = v127;
    v141 = v128;
    v136 = v123;
    v137 = v124;
    v138 = v125;
    v139 = v126;
    v132 = v119;
    v133 = v120;
    v134 = v121;
    v135 = v122;
    v151 = v127;
    v152 = v128;
    v147 = v123;
    v148 = v124;
    v149 = v125;
    v150 = v126;
    v143 = v119;
    v144 = v120;
    v142 = v129;
    v153 = v129;
    v145 = v121;
    v146 = v122;
    sub_1000081F8(&v132, &v118, &qword_100265428, &qword_1001DDCE8);
    sub_10000F500(&v143, &qword_100265428, &qword_1001DDCE8);
    *(&v130[7] + 7) = v139;
    *(&v130[8] + 7) = v140;
    *(&v130[9] + 7) = v141;
    *(&v130[10] + 7) = v142;
    *(&v130[3] + 7) = v135;
    *(&v130[4] + 7) = v136;
    *(&v130[5] + 7) = v137;
    *(&v130[6] + 7) = v138;
    *(v130 + 7) = v132;
    *(&v130[1] + 7) = v133;
    *(&v130[2] + 7) = v134;
    v44 = v130[6];
    *(v21 + 129) = v130[7];
    v45 = v130[9];
    *(v21 + 145) = v130[8];
    *(v21 + 161) = v45;
    *(v21 + 11) = *(&v130[9] + 15);
    v46 = v130[2];
    *(v21 + 65) = v130[3];
    v47 = v130[5];
    *(v21 + 81) = v130[4];
    *(v21 + 97) = v47;
    *(v21 + 113) = v44;
    v48 = v130[1];
    *(v21 + 17) = v130[0];
    *(v21 + 33) = v48;
    v49 = v131;
    *v21 = v43;
    *(v21 + 1) = 0;
    v21[16] = v49;
    *(v21 + 49) = v46;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0, &protocol conformance descriptor for VStack<A>);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88, &protocol conformance descriptor for TupleView<A>);
    v50 = v111;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v50, v116, &qword_100265420, &qword_1001DDCB8);
    swift_storeEnumTagMultiPayload();
    sub_100163FE8();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v50, &qword_100265420, &qword_1001DDCB8);
    return;
  }

  v108 = v21;
  v30 = v26;
  *&v143 = v26;
  *(&v143 + 1) = v25;
  State.wrappedValue.getter();
  v31 = v132;
  swift_getKeyPath();
  *&v143 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (!v32)
  {
    v29 = v116;
    if (qword_10025A840 == -1)
    {
LABEL_11:

      *v29 = Text.init(_:tableName:bundle:comment:)();
      *(v29 + 8) = v51;
      *(v29 + 16) = v52 & 1;
      *(v29 + 24) = v53;
      swift_storeEnumTagMultiPayload();
      sub_100163FE8();
      _ConditionalContent<>.init(storage:)();
      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v92 = v30;
  v93 = v29;
  v94 = v27;
  v95 = v25;
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  *&v143 = 0;
  *(&v143 + 1) = v33;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v32;

  sub_10000341C(&qword_10025E290, &qword_1001D3B28);
  sub_10000341C(&qword_100265450, &qword_1001DDD20);
  sub_10006FFA8();
  sub_10016410C();
  ForEach<>.init(_:id:content:)();
  v34 = type metadata accessor for FeedbackFeatureFlags();
  *(&v144 + 1) = v34;
  *&v145 = sub_1001659B0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v35 = sub_10002DB6C(&v143);
  (*(*(v34 - 8) + 104))(v35, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v34);
  LOBYTE(v34) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v143);
  if ((v34 & 1) == 0)
  {

    v54 = 1;
    v55 = v109;
LABEL_15:
    (*(v103 + 56))(v55, v54, 1, v104);
    v80 = v105;
    v79 = v106;
    v81 = *(v105 + 16);
    v82 = v101;
    v81(v101, v113, v106);
    v83 = v102;
    sub_1000081F8(v55, v102, &qword_100265400, &qword_1001DDC98);
    v84 = v107;
    v81(v107, v82, v79);
    v85 = sub_10000341C(&qword_100265470, &qword_1001DDD30);
    sub_1000081F8(v83, v84 + *(v85 + 48), &qword_100265400, &qword_1001DDC98);
    sub_10000F500(v83, &qword_100265400, &qword_1001DDC98);
    v105 = *(v80 + 8);
    (v105)(v82, v79);
    sub_1000081F8(v84, v108, &qword_1002653F0, &qword_1001DDC88);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0, &protocol conformance descriptor for VStack<A>);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88, &protocol conformance descriptor for TupleView<A>);
    v86 = v111;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v86, v116, &qword_100265420, &qword_1001DDCB8);
    swift_storeEnumTagMultiPayload();
    sub_100163FE8();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v86, &qword_100265420, &qword_1001DDCB8);
    sub_10000F500(v84, &qword_1002653F0, &qword_1001DDC88);
    sub_10000F500(v109, &qword_100265400, &qword_1001DDC98);
    (v105)(v113, v79);
    return;
  }

  v36 = v92;
  *&v143 = v92;
  *(&v143 + 1) = v95;
  State.wrappedValue.getter();
  v37 = v132;
  swift_getKeyPath();
  *&v143 = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v37 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);

  v39 = [v38 tiInputContextHistory];

  if (v39)
  {

    v40 = [v39 threadIdentifier];

    if (v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v42;
      v91 = v41;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v56 = v95;
    *&v143 = v36;
    *(&v143 + 1) = v95;
    State.wrappedValue.getter();
    v57 = v132;
    swift_getKeyPath();
    *&v143 = v57;
    sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v88 = *(v57 + 40);
    *&v58 = *(v57 + 32);
    v89 = v58;

    *&v143 = v36;
    *(&v143 + 1) = v56;
    State.wrappedValue.getter();
    v59 = v132;
    swift_getKeyPath();
    *&v143 = v59;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v59 + 56);
    *&v61 = *(v59 + 48);
    v87 = v61;

    *&v143 = v36;
    *(&v143 + 1) = v56;
    State.wrappedValue.getter();
    v62 = v132;
    swift_getKeyPath();
    *&v143 = v62;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v64 = *(v62 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
    v63 = *(v62 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

    v65 = v96;
    v66 = v97;
    *(v97 + 25) = 0;
    v67 = *(v65 + 92);
    *&v66[v67] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v66 + 16) = 0;
    *(v66 + 17) = 0;
    *(v66 + 18) = 0;
    v66[152] = -1;
    *&v68 = v89;
    *(&v68 + 1) = v88;
    *&v69 = v87;
    *(&v69 + 1) = v60;
    *(v66 + 24) = v69;
    *(v66 + 8) = v68;
    *v66 = 0;
    *(v66 + 40) = 0u;
    *(v66 + 56) = 0u;
    *(v66 + 72) = 0u;
    *(v66 + 88) = 0u;
    *(v66 + 153) = 256;
    *&v132 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v70 = *(&v143 + 1);
    *(v66 + 26) = v143;
    *(v66 + 27) = v70;
    v71 = type metadata accessor for SmartReplyAnalytics(0);
    swift_allocObject();
    v72 = sub_10014F2CC(v91, v90);
    *(v66 + 23) = v71;
    *(v66 + 24) = &off_100250760;
    *(v66 + 20) = v72;
    *(v66 + 13) = _swiftEmptyArrayStorage;
    *(v66 + 14) = _swiftEmptyArrayStorage;
    *(v66 + 15) = _swiftEmptyArrayStorage;
    *(v66 + 28) = v64;
    *(v66 + 29) = v63;
    v73 = v66;
    v74 = v98;
    sub_10016397C(v73, v98, type metadata accessor for FeedbackView);
    v75 = v99;
    sub_100164294(v74, v99, type metadata accessor for FeedbackView);
    v76 = v100;
    *v100 = 0;
    *(v76 + 8) = 1;
    v77 = sub_10000341C(&qword_100265478, &qword_1001DDE10);
    sub_100164294(v75, v76 + *(v77 + 48), type metadata accessor for FeedbackView);
    sub_1001659F8(v74, type metadata accessor for FeedbackView);
    sub_1001659F8(v75, type metadata accessor for FeedbackView);
    v78 = v76;
    v55 = v109;
    sub_10002A894(v78, v109, &qword_1002653F8, &qword_1001DDC90);
    v54 = 0;
    goto LABEL_15;
  }

  __break(1u);
}

double sub_100161C94@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v18);
  v3 = v18;
  v4 = v20;
  v5 = v22;
  v6 = v23;
  v31 = 1;
  v30 = v19;
  v29 = v21;
  v7 = sub_10015F504();
  v9 = v8;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v24);
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v31;
  v15 = v30;
  v16 = v29;
  *a2 = 0;
  *(a2 + 8) = v14;
  *(a2 + 16) = v3;
  *(a2 + 24) = v15;
  *(a2 + 32) = v4;
  *(a2 + 40) = v16;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = xmmword_1001DDA30;
  *(a2 + 80) = 0x4024000000000000;
  *(a2 + 88) = v7;
  *(a2 + 96) = v9;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v12;
  *(a2 + 144) = v13;
  result = *&v28;
  *(a2 + 152) = v28;
  return result;
}

uint64_t sub_100161DD4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = static HorizontalAlignment.center.getter();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    v7 = a3 + *(sub_10000341C(&qword_100265480, &qword_1001DDE18) + 44);
    *v7 = xmmword_1001DDA40;
    *(v7 + 16) = 0x403E000000000000;
    type metadata accessor for QuestionRow(0);
    type metadata accessor for QuestionnaireEntry(0);
    sub_1001659B0(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    Bindable<A>.init(wrappedValue:)();
    v8 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    result = sub_10000341C(&qword_100265450, &qword_1001DDD20);
    v17 = a3 + *(result + 36);
    *v17 = v8;
    *(v17 + 8) = v10;
    *(v17 + 16) = v12;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100161F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = sub_10000341C(&qword_1002653A0, &qword_1001DDC48);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = sub_10000341C(&qword_1002653A8, &qword_1001DDC50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000341C(&qword_1002653B0, &qword_1001DDC58);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  static ToolbarItemPlacement.confirmationAction.getter();
  v16[8] = a1;
  sub_10000341C(&qword_1002653B8, &qword_1001DDC60);
  sub_1001639EC();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.cancellationAction.getter();
  v16[4] = a1;
  sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  sub_100163A70();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  TupleToolbarContent.init(_:)();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100162264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for QuestionnaireView(0);
  v4 = v3 - 8;
  v25 = *(v3 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = (a1 + *(v4 + 52));
  v11 = *v10;
  v12 = v10[1];
  v30 = *v10;
  v31 = v12;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v13 = v29;
  swift_getKeyPath();
  v30 = v13;
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (v14)
  {

    sub_100164294(a1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireView);
    v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v16 = swift_allocObject();
    sub_10016397C(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for QuestionnaireView);
    Button.init(action:label:)();
    v30 = v11;
    v31 = v12;
    State.wrappedValue.getter();
    v17 = v29;
    swift_getKeyPath();
    v30 = v17;
    sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v15) = *(v17 + 112);

    v18 = v26;
    v9[*(v26 + 36)] = v15;
    v19 = v28;
    sub_10002A894(v9, v28, &qword_1002653D0, &unk_1001DDC68);
    v20 = 0;
    v21 = v19;
    v22 = v18;
  }

  else
  {
    v20 = 1;
    v21 = v28;
    v22 = v26;
  }

  return (*(v27 + 56))(v21, v20, 1, v22);
}

uint64_t sub_10016260C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A848 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001626D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QuestionnaireView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100164294(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for QuestionnaireView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10016397C(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for QuestionnaireView);
  v11 = a1;
  Button.init(action:label:)();
  result = sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100162850@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for QuestionnaireView(0);
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (v3)
  {

    if (qword_10025A850 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_10025A858 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

double sub_100162A2C(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100164294(a1, v5, type metadata accessor for QuestionnaireView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10016397C(v5, v12 + v11, type metadata accessor for QuestionnaireView);
  sub_10015C9C8(0, 0, v8, &unk_1001DDBA8, v12);

  return result;
}

uint64_t sub_100162C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100162CA4, v6, v5);
}

uint64_t sub_100162CA4()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Questionnaire presented!", v4, 2u);
  }

  v5 = v0[5];

  v6 = (v5 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v8 = *v6;
  v7 = v6[1];
  v0[2] = v8;
  v0[3] = v7;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100011F4C;

  return sub_1000501F4();
}

unint64_t sub_100162E54()
{
  result = qword_1002652B8;
  if (!qword_1002652B8)
  {
    sub_100003E34(&qword_1002652A8, &qword_1001DDAB8);
    sub_100007120(&qword_1002652C0, &qword_1002652C8, &unk_1001DDAD0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002652B8);
  }

  return result;
}

uint64_t sub_100162F0C@<X0>(char *a1@<X8>)
{
  type metadata accessor for QuestionnaireView(0);

  return sub_10015EA5C(a1);
}

uint64_t sub_100162F80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100163098()
{
  v1 = type metadata accessor for QuestionnaireView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 40);

  v9 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v10 = type metadata accessor for NavigationPath();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100163264(uint64_t a1)
{
  v4 = *(type metadata accessor for QuestionnaireView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100162C0C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100163354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B2A0;

  return sub_10011F29C(a1, v4);
}

unint64_t sub_100163414()
{
  result = qword_100265318;
  if (!qword_100265318)
  {
    sub_100003E34(&qword_100265310, &qword_1001DDBF8);
    sub_1001634A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265318);
  }

  return result;
}

unint64_t sub_1001634A0()
{
  result = qword_100265320;
  if (!qword_100265320)
  {
    sub_100003E34(&qword_100265328, &qword_1001DDC00);
    sub_100007120(&qword_100265330, &qword_100265338, &qword_1001DDC08, &protocol conformance descriptor for VStack<A>);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265320);
  }

  return result;
}

unint64_t sub_100163560()
{
  result = qword_100265360;
  if (!qword_100265360)
  {
    sub_100003E34(&qword_1002652F0, &qword_1001DDBD8);
    sub_100003E34(&qword_1002652E8, &qword_1001DDBD0);
    sub_100007120(&qword_100265350, &qword_1002652E8, &qword_1001DDBD0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265360);
  }

  return result;
}

unint64_t sub_10016365C()
{
  result = qword_100265370;
  if (!qword_100265370)
  {
    sub_100003E34(&qword_100265308, &qword_1001DDBF0);
    sub_100007120(&qword_100265378, &qword_100265380, &qword_1001DDC28, &protocol conformance descriptor for VStack<A>);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265370);
  }

  return result;
}

uint64_t sub_100163714()
{
  v1 = type metadata accessor for QuestionnaireView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 40);

  v9 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v10 = type metadata accessor for NavigationPath();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001638F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuestionnaireView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10016397C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001639EC()
{
  result = qword_1002653C0;
  if (!qword_1002653C0)
  {
    sub_100003E34(&qword_1002653B8, &qword_1001DDC60);
    sub_100163A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653C0);
  }

  return result;
}

unint64_t sub_100163A70()
{
  result = qword_1002653C8;
  if (!qword_1002653C8)
  {
    sub_100003E34(&qword_1002653D0, &unk_1001DDC68);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_100163B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653C8);
  }

  return result;
}

unint64_t sub_100163B28()
{
  result = qword_1002653D8;
  if (!qword_1002653D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653D8);
  }

  return result;
}

char *sub_100163C20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100163DAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100163EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10016431C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100163CA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163CC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100163CE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
  *v3 = result;
  return result;
}

void *sub_100163D24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_100265598, &qword_1001DE050, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_100163D68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_100265590, &qword_1001DE028, &type metadata accessor for PhotosPickerItem);
  *v3 = result;
  return result;
}

char *sub_100163DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100163EB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002653E8, &qword_1001DDC80);
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

unint64_t sub_100163FE8()
{
  result = qword_100265448;
  if (!qword_100265448)
  {
    sub_100003E34(&qword_100265420, &qword_1001DDCB8);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0, &protocol conformance descriptor for VStack<A>);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265448);
  }

  return result;
}

uint64_t sub_1001640CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10016410C()
{
  result = qword_100265458;
  if (!qword_100265458)
  {
    sub_100003E34(&qword_100265450, &qword_1001DDD20);
    sub_100007120(&qword_100265460, &qword_100265468, &qword_1001DDD28, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265458);
  }

  return result;
}

uint64_t sub_100164294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_10016431C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265488, &unk_1001DDEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100164428(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002654B8, &qword_1001DDEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100164534(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000341C(&qword_1002654A0, &qword_1001DDEC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&qword_1002654A8, &qword_1001DDEC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100164668(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265490, &qword_1001DF230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100164774(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000341C(&qword_100265498, &unk_1001DDEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100164904(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(a5, a6);
  v16 = *(sub_10000341C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000341C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100164AEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100164CC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100164DBC;

  return v5(v2 + 32);
}

uint64_t sub_100164DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100164ED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B2A0;

  return sub_100164CC8(a1, v4);
}

uint64_t sub_100164FE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B2A0;

  return sub_100164CC8(a1, v4);
}

uint64_t sub_100165098(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1001650F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10016518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100165214(uint64_t a1)
{
  sub_1001652C8(319, &qword_100265530, type metadata accessor for QuestionnaireEntry, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001652C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100165330()
{
  result = qword_100265568;
  if (!qword_100265568)
  {
    sub_100003E34(&qword_1002652D8, &qword_1001DDAF0);
    sub_1001653E8();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265568);
  }

  return result;
}

unint64_t sub_1001653E8()
{
  result = qword_100265570;
  if (!qword_100265570)
  {
    sub_100003E34(&qword_1002652D0, &unk_1001DDAE0);
    sub_100003E34(&qword_1002652A8, &qword_1001DDAB8);
    sub_100162E54();
    swift_getOpaqueTypeConformance2();
    sub_1001659B0(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265570);
  }

  return result;
}

uint64_t sub_100165530(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100165624;

  return v5(v2 + 16);
}

uint64_t sub_100165624()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100165754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B2A0;

  return sub_100165530(a1, v4);
}

uint64_t sub_10016580C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100028688;

  return sub_100165530(a1, v4);
}

unint64_t sub_1001658C4()
{
  result = qword_1002655C0;
  if (!qword_1002655C0)
  {
    sub_100003E34(&qword_1002655B8, &unk_1001DE070);
    sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow, &unk_1001E1DC0);
    sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow, &unk_1001E1D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002655C0);
  }

  return result;
}

uint64_t sub_1001659B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001659F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100165A5C()
{
  result = qword_1002655E0;
  if (!qword_1002655E0)
  {
    sub_100003E34(&qword_100265580, &qword_1001DE020);
    sub_100007120(&qword_1002655E8, &qword_100265578, &qword_1001DE018, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002655E0);
  }

  return result;
}

__n128 sub_100165BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100165BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100165C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100165CBC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100165E18@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265608, &qword_1001DE1C0);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = &v57 - v5;
  v6 = sub_10000341C(&qword_100265610, &qword_1001DE1C8);
  v7 = __chkstk_darwin(v6 - 8);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = (&v57 - v9);
  v63 = type metadata accessor for Divider();
  v62 = *(v63 - 8);
  v10 = __chkstk_darwin(v63);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v57 - v13;
  v14 = type metadata accessor for Attachment(0);
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000341C(&qword_100265618, &qword_1001DE1D0);
  v18 = __chkstk_darwin(v17 - 8);
  v69 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v57 - v20;
  v21 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  v22 = __chkstk_darwin(v21 - 8);
  v67 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v57 - v24;
  *v25 = static VerticalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = *(sub_10000341C(&qword_100265628, &qword_1001DE1E0) + 44);
  v66 = v25;
  sub_10016671C(a1, &v25[v26]);
  v27 = sub_100165CBC();
  swift_getKeyPath();
  *&v77 = v27;
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v77 = v28;
  sub_100167AB0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v29 = *(v28 + 16);

  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_12:

LABEL_14:
    v38 = v69;
    v39 = v67;
    v40 = v68;
    (*(v70 + 56))(v68, 1, 1, v4);
    goto LABEL_16;
  }

  v57 = v12;
  v58 = v4;
  v59 = a2;
  v4 = 0;
  v31 = &v16[*(v14 + 44)];
  v32 = v29 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v71 = *(v72 + 72);
  v72 = v30 - 1;
  while (1)
  {
    sub_1000A6690(v32, v16);
    a2 = *v31;
    v33 = v31[1];
    v34 = a1[4];
    v79 = a1[3];
    v80 = v34;
    v81 = a1[5];
    v35 = a1[2];
    v77 = a1[1];
    v78 = v35;
    sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
    Binding.wrappedValue.getter();
    v82[0] = v73;
    v82[1] = v74;
    v82[2] = v75;
    v82[3] = v76;
    v36 = v73;

    sub_10004C65C(v82);
    if (!v33)
    {
      sub_10003D7E8(v16);

      goto LABEL_9;
    }

    if (__PAIR128__(v33, a2) == v36)
    {
      break;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10003D7E8(v16);
    if (v37)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v72 == v4)
    {

      a2 = v59;
      v4 = v58;
      goto LABEL_14;
    }

    ++v4;
    v32 += v71;
    if (v4 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10003D7E8(v16);
LABEL_15:

  v41 = v60;
  Divider.init()();
  v42 = static HorizontalAlignment.center.getter();
  v43 = v61;
  *v61 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = sub_10000341C(&qword_100265638, &qword_1001DE248);
  sub_1001670D0(a1, v43 + *(v44 + 44));
  v45 = v62;
  v46 = *(v62 + 16);
  v47 = v57;
  v48 = v63;
  v46(v57, v41, v63);
  v49 = v64;
  sub_1000081F8(v43, v64, &qword_100265610, &qword_1001DE1C8);
  v50 = v65;
  v46(v65, v47, v48);
  v51 = sub_10000341C(&qword_100265640, &unk_1001DE250);
  sub_1000081F8(v49, &v50[*(v51 + 48)], &qword_100265610, &qword_1001DE1C8);
  sub_10000F500(v43, &qword_100265610, &qword_1001DE1C8);
  v52 = *(v45 + 8);
  v52(v41, v48);
  sub_10000F500(v49, &qword_100265610, &qword_1001DE1C8);
  v52(v47, v48);
  v53 = v50;
  v40 = v68;
  sub_100167864(v53, v68);
  (*(v70 + 56))(v40, 0, 1, v58);
  a2 = v59;
  v38 = v69;
  v39 = v67;
LABEL_16:
  v54 = v66;
  sub_10016778C(v66, v39);
  sub_1000081F8(v40, v38, &qword_100265618, &qword_1001DE1D0);
  sub_10016778C(v39, a2);
  v55 = sub_10000341C(&qword_100265630, &qword_1001DE240);
  sub_1000081F8(v38, a2 + *(v55 + 48), &qword_100265618, &qword_1001DE1D0);
  sub_10000F500(v40, &qword_100265618, &qword_1001DE1D0);
  sub_1001677FC(v54);
  sub_10000F500(v38, &qword_100265618, &qword_1001DE1D0);
  return sub_1001677FC(v39);
}

uint64_t sub_10016671C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v55 = sub_10000341C(&qword_100261F90, &unk_1001DE270);
  v60 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v49 - v5;
  v6 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v10 = sub_10000341C(&qword_100265670, &qword_1001DE280);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v53 = sub_10000341C(&qword_100265678, &qword_1001DE288);
  v58 = *(v53 - 8);
  v14 = __chkstk_darwin(v53);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v49 - v16;
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v72 = *(a1 + 48);
  v73 = v18;
  v19 = *(a1 + 64);
  v74 = *(a1 + 80);
  v20 = *(a1 + 32);
  v70 = *(a1 + 16);
  v71 = v20;
  v62 = v72;
  v63 = v19;
  v64 = *(a1 + 80);
  v61[0] = v70;
  v61[1] = v17;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v22 = v75[0];
  v21 = v75[1];

  sub_10004C65C(v75);
  v68 = v22;
  v69 = v21;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v61[0] = v70;
  v61[1] = v71;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v62 = v76[2];
  v63 = v76[3];
  v64 = v76[4];
  v61[0] = v76[0];
  v61[1] = v76[1];
  Binding.subscript.getter();

  sub_10000F500(v76, &qword_10025CB40, &qword_1001D1E60);
  sub_10002AC34();
  TextField<>.init<A>(_:text:axis:)();
  v23 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
  View.lineLimit(_:)();
  (*(v7 + 8))(v9, v6);
  v61[0] = *(a1 + 120);
  *(v61 + 9) = *(a1 + 129);
  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  FocusState.Binding.projectedValue.getter();
  v61[0] = v65;
  *&v61[1] = v66;
  BYTE8(v61[1]) = v67;
  v68 = *(a1 + 152);
  LOBYTE(v69) = 0;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  *&v65 = v6;
  *(&v65 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_10004C6B0();
  v24 = v57;
  v25 = v50;
  View.focused<A>(_:equals:)();

  (*(v51 + 8))(v13, v25);
  v26 = swift_allocObject();
  v27 = *(a1 + 112);
  v26[7] = *(a1 + 96);
  v26[8] = v27;
  v28 = *(a1 + 144);
  v26[9] = *(a1 + 128);
  v26[10] = v28;
  v29 = *(a1 + 48);
  v26[3] = *(a1 + 32);
  v26[4] = v29;
  v30 = *(a1 + 80);
  v26[5] = *(a1 + 64);
  v26[6] = v30;
  v31 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v31;
  sub_100167A78(a1, v61);
  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v32 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v33 = type metadata accessor for IconOnlyLabelStyle();
  v34 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v35 = sub_100167AB0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  *&v61[0] = v32;
  *(&v61[0] + 1) = v33;
  *&v61[1] = v34;
  *(&v61[1] + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  Button.init(action:label:)();
  v37 = *(v58 + 16);
  v38 = v52;
  v39 = v53;
  v37(v52, v24, v53);
  v40 = *(v60 + 16);
  v41 = v54;
  v42 = v36;
  v43 = v55;
  v40(v54, v42, v55);
  v44 = v56;
  v37(v56, v38, v39);
  v45 = sub_10000341C(&qword_100265680, &unk_1001DE2D0);
  v40(&v44[*(v45 + 48)], v41, v43);
  v46 = *(v60 + 8);
  v46(v59, v43);
  v47 = *(v58 + 8);
  v47(v57, v39);
  v46(v41, v43);
  return (v47)(v38, v39);
}

uint64_t sub_100166E94()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_100167AB0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1001670D0(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for Attachment(0);
  v28 = *(v29 - 8);
  v3 = __chkstk_darwin(v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v25 - v5;
  v6 = sub_100165CBC();
  swift_getKeyPath();
  *&v35 = v6;
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v35 = v7;
  sub_100167AB0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v7 + 16);

  v27 = *(v8 + 16);
  if (v27)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v11 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v12 = *(v28 + 72);
      v13 = v8;
      v14 = v30;
      sub_1000A6690(v8 + v11 + v12 * v9, v30);
      v15 = (v14 + *(v29 + 44));
      v16 = *v15;
      v17 = v15[1];
      v18 = a1[4];
      v37 = a1[3];
      v38 = v18;
      v39 = a1[5];
      v19 = a1[1];
      v36 = a1[2];
      v35 = v19;
      sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
      Binding.wrappedValue.getter();
      v40[0] = v31;
      v40[1] = v32;
      v40[2] = v33;
      v40[3] = v34;
      v20 = v31;

      sub_10004C65C(v40);
      if (v17)
      {
        if (__PAIR128__(v17, v16) == v20)
        {

          v8 = v13;
LABEL_11:
          sub_10003D784(v30, v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163CE0(0, v10[2] + 1, 1);
            v10 = v41;
          }

          v24 = v10[2];
          v23 = v10[3];
          if (v24 >= v23 >> 1)
          {
            sub_100163CE0((v23 > 1), v24 + 1, 1);
            v10 = v41;
          }

          v10[2] = v24 + 1;
          sub_10003D784(v26, v10 + v11 + v24 * v12);
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v13;
        if (v21)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v8 = v13;
      }

      sub_10003D7E8(v30);
LABEL_5:
      if (v27 == ++v9)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:

  *&v35 = v10;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  type metadata accessor for URL();
  sub_10000341C(&qword_100265648, &unk_1001DE260);
  sub_100007120(&qword_100265650, &qword_10025F848, &qword_1001D50C0, &protocol conformance descriptor for [A]);
  sub_1001678D4();
  sub_100167AB0(&qword_100265668, type metadata accessor for Attachment, &unk_1001DF044);
  ForEach<>.init(_:content:)();
}

double sub_100167604@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileView(0);
  sub_1000A6690(a1, a2 + *(v4 + 20));
  type metadata accessor for CompositionModel(0);
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v5 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v9);
  v6 = (a2 + *(sub_10000341C(&qword_100265648, &unk_1001DE260) + 36));
  v7 = v9[1];
  *v6 = v9[0];
  v6[1] = v7;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_1001676F8@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[7];
  v11[6] = v2[6];
  v11[7] = v4;
  v5 = v2[9];
  v11[8] = v2[8];
  v11[9] = v5;
  v6 = v2[3];
  v11[2] = v2[2];
  v11[3] = v6;
  v7 = v2[5];
  v11[4] = v2[4];
  v11[5] = v7;
  v8 = v2[1];
  v11[0] = *v2;
  v11[1] = v8;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = sub_10000341C(&qword_100265600, &qword_1001DE1B8);
  return sub_100165E18(v11, a2 + *(v9 + 44));
}

uint64_t sub_10016778C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001677FC(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100167864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265608, &qword_1001DE1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001678D4()
{
  result = qword_100265658;
  if (!qword_100265658)
  {
    sub_100003E34(&qword_100265648, &unk_1001DE260);
    sub_100167AB0(&qword_100265660, type metadata accessor for FileView, &unk_1001DE32C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265658);
  }

  return result;
}

uint64_t sub_100167990(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 176, 7);
}

uint64_t sub_100167AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100167B3C()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_100265768, &unk_1001DE410);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-v3];
  v5 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v17[-v9];
  type metadata accessor for SlotAttachmentView(0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = type metadata accessor for FileView(0);
  sub_100169478(v1 + *(v12 + 20), v10, type metadata accessor for Attachment);
  v13 = type metadata accessor for Attachment(0);
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  sub_1000081F8(v11 + v14, v8, &qword_100263020, &qword_1001DA210);
  swift_beginAccess();
  sub_1000A66F4(v10, v11 + v14);
  swift_endAccess();
  sub_100168164(v8);
  sub_10000F500(v8, &qword_100263020, &qword_1001DA210);
  sub_10000F500(v10, &qword_100263020, &qword_1001DA210);
  sub_100169478(v1, v4, type metadata accessor for FileView);
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  v15 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  swift_beginAccess();
  sub_1001694E0(v4, v11 + v15);
  swift_endAccess();
  return v11;
}

uint64_t sub_100167E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100169550(&qword_100265770, type metadata accessor for FileView, &unk_1001DE37C);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100167EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100169550(&qword_100265770, type metadata accessor for FileView, &unk_1001DE37C);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100167F44(uint64_t a1)
{
  sub_100169550(&qword_100265770, type metadata accessor for FileView, &unk_1001DE37C);
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_100167F9C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  v11 = type metadata accessor for FileView(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView] = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton] = result;
    v13 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
    v14 = type metadata accessor for Attachment(0);
    (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
    v16.receiver = v4;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
    [*&v15[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton] addTarget:v15 action:"didTapCloseButton" forControlEvents:64];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100168164(uint64_t a1)
{
  v51 = a1;
  v2 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v2 - 8);
  v48 = &v48 - v3;
  v4 = type metadata accessor for Attachment(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v11 = __chkstk_darwin(v10 - 8);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = sub_10000341C(&qword_10025C440, &unk_1001D1120);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  v19 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v52 = v1;
  sub_1000081F8(&v1[v19], v18, &qword_100263020, &qword_1001DA210);
  sub_1000081F8(v51, &v18[v20], &qword_100263020, &qword_1001DA210);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v18;
LABEL_14:
      sub_10000F500(v22, &qword_100263020, &qword_1001DA210);
      return;
    }
  }

  else
  {
    sub_1000081F8(v18, v14, &qword_100263020, &qword_1001DA210);
    if (v21(&v18[v20], 1, v4) != 1)
    {
      sub_10003D784(&v18[v20], v9);
      v26 = sub_10017EA28(v14, v9);
      sub_100169598(v9, type metadata accessor for Attachment);
      sub_100169598(v14, type metadata accessor for Attachment);
      sub_10000F500(v18, &qword_100263020, &qword_1001DA210);
      if (v26)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100169598(v14, type metadata accessor for Attachment);
  }

  sub_10000F500(v18, &qword_10025C440, &unk_1001D1120);
LABEL_7:
  v23 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView;
  v24 = *&v52[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView];
  if (v24)
  {
    [v24 removeFromSuperview];
    v25 = *&v52[v23];
  }

  else
  {
    v25 = 0;
  }

  v27 = v52;
  *&v52[v23] = 0;

  v28 = v50;
  sub_1000081F8(&v27[v19], v50, &qword_100263020, &qword_1001DA210);
  if (v21(v28, 1, v4) == 1)
  {
    v22 = v28;
    goto LABEL_14;
  }

  v29 = v49;
  sub_10003D784(v28, v49);
  v30 = [objc_allocWithZone(LPLinkMetadata) init];
  v31 = [objc_allocWithZone(LPFileMetadata) init];
  v32 = String._bridgeToObjectiveC()();
  [v31 setName:v32];

  v33 = v48;
  sub_1000081F8(v29 + v4[6], v48, &qword_10025F4E0, &unk_1001D1110);
  v34 = type metadata accessor for UTType();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_10000F500(v33, &qword_10025F4E0, &unk_1001D1110);
    v36 = 0;
  }

  else
  {
    UTType.identifier.getter();
    (*(v35 + 8))(v33, v34);
    v36 = String._bridgeToObjectiveC()();
    v29 = v49;
  }

  [v31 setType:v36];

  v37 = v29 + v4[7];
  if ((*(v37 + 8) & 1) == 0)
  {
    if ((*v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    [v31 setSize:?];
  }

  v38 = *(v29 + v4[9]);
  if (v38)
  {
    v39 = objc_allocWithZone(UIImage);
    v40 = v38;
    v41 = [v39 initWithCGImage:v40];
    v42 = [objc_allocWithZone(LPImage) initWithPlatformImage:v41];

    [v31 setThumbnail:v42];
  }

  v43 = [objc_allocWithZone(LPSharedObjectMetadata) init];
  [v43 setSpecialization:v31];
  [v30 setSpecialization:v43];
  v44 = [objc_allocWithZone(LPLinkView) initWithMetadata:v30];
  [v44 _setBytesLoaded:{objc_msgSend(v31, "size")}];
  [v44 _setDisableTapGesture:1];
  [v44 _setDisableHighlightGesture:1];
  v45 = [objc_opt_self() clearColor];
  [v44 _setOverrideBackgroundColor:v45];

  v46 = v44;
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = v52;
  [v52 addSubview:v46];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton]];
  [v47 bounds];
  [v46 setBounds:?];

  sub_100169598(v29, type metadata accessor for Attachment);
}

void sub_100168904()
{
  v1 = type metadata accessor for EnvironmentValues();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FileView(0);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Attachment(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v33 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  if ((*(v8 + 48))(v0 + v17, 1, v7))
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000F34C(v18, qword_100276EF0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Deleting attachment failed as attachment is nil", v21, 2u);
    }
  }

  else
  {
    v22 = v6;
    v30 = v3;
    sub_100169478(v0 + v17, v10, type metadata accessor for Attachment);
    v23 = v33;
    (*(v33 + 16))(v14, v10, v11);
    sub_100169598(v10, type metadata accessor for Attachment);
    (*(v23 + 32))(v16, v14, v11);
    v24 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
    swift_beginAccess();
    v25 = v11;
    if ((*(v34 + 48))(v0 + v24, 1, v35))
    {
      (*(v23 + 8))(v16, v11);
      swift_endAccess();
    }

    else
    {
      sub_100169478(v0 + v24, v22, type metadata accessor for FileView);
      swift_endAccess();
      v26 = *v22;
      v27 = *(v22 + 8);

      if ((v27 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v28 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v29 = v30;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v31 + 8))(v29, v32);
        v26 = v36;
      }

      sub_100169598(v22, type metadata accessor for FileView);
      swift_getKeyPath();
      v36 = v26;
      sub_100169550(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_100175970(v16);

      (*(v23 + 8))(v16, v25);
    }
  }
}

void sub_10016904C(uint64_t a1)
{
  sub_1001691AC(319, &qword_1002656D0, type metadata accessor for FileView, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001691AC(319, &qword_10025C438, type metadata accessor for Attachment, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001691AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100169224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Attachment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001692DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Attachment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10016937C(uint64_t a1)
{
  sub_1001691AC(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Attachment(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100169478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001694E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265768, &unk_1001DE410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100169598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100169600()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  v2 = type metadata accessor for FileView(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView) = 0;
  v3 = [objc_opt_self() roundButtonWithStyle:0];
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton) = v3;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  v5 = type metadata accessor for Attachment(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_100169734(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100169748(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100169790(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001697FC@<X0>(uint64_t (*a1)()@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v74 = a3;
  v72 = a1;
  v79 = a4;
  v7 = sub_10000341C(&qword_100262108, &qword_1001D8820);
  __chkstk_darwin(v7 - 8);
  v76 = (&v71 - v8);
  v77 = sub_10000341C(&qword_100265788, &qword_1001DE510) - 8;
  v9 = __chkstk_darwin(v77);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v71 - v11;
  v12 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_10000341C(&qword_100262118, &qword_1001D8830);
  __chkstk_darwin(v15 - 8);
  v17 = &v71 - v16;
  v18 = sub_10000341C(&qword_100265790, &qword_1001DE518);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v80 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v24 = sub_10000341C(&qword_100265798, &qword_1001DE520);
  sub_100169F30(a1, a2, a3, &v17[*(v24 + 44)]);
  v25 = static Color.blue.getter();
  sub_1000E46CC(v25, v23);

  sub_10000F500(v17, &qword_100262118, &qword_1001D8830);
  *(v23 + *(v19 + 44)) = 0x3FF0000000000000;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(v23) = v29;
  v30 = Text.bold()();
  v32 = v31;
  LOBYTE(v19) = v33;
  sub_10002A984(v26, v28, v23 & 1);

  v34 = type metadata accessor for Font.Design();
  (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  static Font.system(size:weight:design:)();
  sub_10000F500(v14, &qword_10025C5D0, &qword_1001D15A0);
  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;

  sub_10002A984(v30, v32, v19 & 1);

  v41 = static Color.blue.getter();
  sub_1000E44F4(v41, v35, v37, v28 & 1, v40, &v82);

  sub_10002A984(v35, v37, v28 & 1);

  LOBYTE(v28) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v102[0]) = 0;
  v50 = static VerticalAlignment.center.getter();
  v51 = v76;
  *v76 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  v52 = sub_10000341C(&qword_1002657A0, &qword_1001DE528);
  sub_10016AC6C(v72, v73, v74, (v51 + *(v52 + 44)));
  v53 = static Color.blue.getter();
  v54 = v81;
  sub_1000E46F0(v53, v81);

  sub_10000F500(v51, &qword_100262108, &qword_1001D8820);
  *(v54 + *(v77 + 44)) = 0x3FF0000000000000;
  v55 = v75;
  v56 = v80;
  sub_1000081F8(v75, v80, &qword_100265790, &qword_1001DE518);
  v57 = v78;
  sub_1000081F8(v54, v78, &qword_100265788, &qword_1001DE510);
  v58 = v56;
  v59 = v79;
  sub_1000081F8(v58, v79, &qword_100265790, &qword_1001DE518);
  v60 = sub_10000341C(&qword_1002657A8, &qword_1001DE530);
  v61 = v59 + *(v60 + 48);
  v94 = v85;
  v95 = v86;
  v96 = v87;
  v97 = v88;
  v91 = v82;
  v92 = v83;
  v93 = v84;
  LOBYTE(v98) = v28;
  *(&v98 + 1) = *v89;
  DWORD1(v98) = *&v89[3];
  *(&v98 + 1) = v43;
  *&v99 = v45;
  *(&v99 + 1) = v47;
  *&v100 = v49;
  BYTE8(v100) = 0;
  *(&v100 + 9) = *v90;
  HIDWORD(v100) = *&v90[3];
  v101 = 0x3FE0000000000000;
  *(v61 + 160) = 0x3FE0000000000000;
  v62 = v97;
  v63 = v94;
  v64 = v95;
  *(v61 + 32) = v93;
  *(v61 + 48) = v63;
  v65 = v92;
  *v61 = v91;
  *(v61 + 16) = v65;
  v66 = v96;
  *(v61 + 64) = v64;
  *(v61 + 80) = v66;
  v67 = v99;
  v68 = v98;
  *(v61 + 96) = v62;
  *(v61 + 112) = v68;
  v69 = v100;
  *(v61 + 128) = v67;
  *(v61 + 144) = v69;
  sub_1000081F8(v57, v59 + *(v60 + 64), &qword_100265788, &qword_1001DE510);
  sub_1000081F8(&v91, v102, &qword_1002657B0, &qword_1001DE538);
  sub_10000F500(v81, &qword_100265788, &qword_1001DE510);
  sub_10000F500(v55, &qword_100265790, &qword_1001DE518);
  sub_10000F500(v57, &qword_100265788, &qword_1001DE510);
  v102[3] = v85;
  v102[4] = v86;
  v102[5] = v87;
  v102[6] = v88;
  v102[0] = v82;
  v102[1] = v83;
  v102[2] = v84;
  v103 = v28;
  *&v104[3] = *&v89[3];
  *v104 = *v89;
  v105 = v43;
  v106 = v45;
  v107 = v47;
  v108 = v49;
  v109 = 0;
  *&v110[3] = *&v90[3];
  *v110 = *v90;
  v111 = 0x3FE0000000000000;
  sub_10000F500(v102, &qword_1002657B0, &qword_1001DE538);
  return sub_10000F500(v80, &qword_100265790, &qword_1001DE518);
}

void sub_100169F30(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v95 = a2;
  v90 = a4;
  v84 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v84);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92 - 8);
  v83 = &v76 - v6;
  v7 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v8 = __chkstk_darwin(v7 - 8);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v76 - v10;
  v11 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v88 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = sub_10000341C(&qword_1002657B8, &qword_1001DE540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v76 - v19;
  v21 = sub_10000341C(&qword_100265830, &qword_1001DE690);
  v22 = v21 - 8;
  v23 = __chkstk_darwin(v21);
  v87 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v76 - v25;
  v27 = swift_allocObject();
  v27[2] = a1;
  v28 = v91;
  v27[3] = v95;
  v27[4] = v28;

  v85 = a1;

  sub_10000341C(&qword_10025C890, &qword_1001DEC00);
  sub_100048DE0();
  Button.init(action:label:)();
  LODWORD(v102[0]) = 16777472;
  v29 = v94;
  sub_100007120(&qword_1002657C8, &qword_1002657B8, &qword_1001DE540, &protocol conformance descriptor for Button<A>);
  v30 = sub_100035980();
  View.buttonStyle<A>(_:)();
  (*(v18 + 8))(v20, v17);
  static Alignment.leading.getter();
  v31 = 1;
  _FrameLayout.init(width:height:alignment:)(v101);
  v32 = *(v22 + 44);
  v86 = v26;
  v33 = &v26[v32];
  v34 = v101[1];
  *v33 = v101[0];
  *(v33 + 1) = v34;
  *(v33 + 2) = v101[2];
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v102);
  v35 = *(v12 + 44);
  v91 = v16;
  v36 = &v16[v35];
  v37 = v93;
  v38 = v102[1];
  *v36 = v102[0];
  *(v36 + 1) = v38;
  *(v36 + 2) = v102[2];
  v39 = type metadata accessor for FeedbackFeatureFlags();
  v99 = v39;
  v100 = sub_10016CB94(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v40 = sub_10002DB6C(&v97);
  (*(*(v39 - 8) + 104))(v40, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v39);
  LOBYTE(v39) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v97);
  if ((v39 & 1) == 0)
  {
LABEL_9:
    v68 = v29;
    (*(v37 + 56))(v29, v31, 1, v92);
    v69 = v86;
    v70 = v87;
    sub_1000081F8(v86, v87, &qword_100265830, &qword_1001DE690);
    v71 = v91;
    v72 = v88;
    sub_1000081F8(v91, v88, &qword_10025D700, &unk_1001DE550);
    v73 = v89;
    sub_1000081F8(v29, v89, &qword_10025BD18, &unk_1001D0C90);
    v74 = v90;
    sub_1000081F8(v70, v90, &qword_100265830, &qword_1001DE690);
    v75 = sub_10000341C(&qword_100265838, &qword_1001DE698);
    sub_1000081F8(v72, v74 + *(v75 + 48), &qword_10025D700, &unk_1001DE550);
    sub_1000081F8(v73, v74 + *(v75 + 64), &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v68, &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v71, &qword_10025D700, &unk_1001DE550);
    sub_10000F500(v69, &qword_100265830, &qword_1001DE690);
    sub_10000F500(v73, &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v72, &qword_10025D700, &unk_1001DE550);
    sub_10000F500(v70, &qword_100265830, &qword_1001DE690);
    return;
  }

  v80 = v30;
  v41 = v85;
  v42 = v95;
  v97 = v85;
  v98 = v95;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v43 = v96;
  swift_getKeyPath();
  v97 = v43;
  v81 = sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);

  v45 = [v44 baseResponse];

  if (v45)
  {
  }

  v97 = v41;
  v98 = v42;
  State.wrappedValue.getter();
  v46 = v96;
  swift_getKeyPath();
  v97 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v46 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);

  v48 = [v47 tiInputContextHistory];

  if (v48)
  {
    v49 = [v48 threadIdentifier];

    if (v49)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v50;
    }

    else
    {
      v79 = 0;
      v78 = 0;
    }

    v51 = v45 == 0;
    v97 = v41;
    v98 = v42;
    State.wrappedValue.getter();
    v52 = v96;
    swift_getKeyPath();
    v97 = v52;
    sub_10016CB94(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + 40);
    *&v54 = *(v52 + 32);
    v77 = v54;

    v97 = v41;
    v98 = v42;
    State.wrappedValue.getter();
    v55 = v96;
    swift_getKeyPath();
    v97 = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = *(v55 + 56);
    *&v57 = *(v55 + 48);
    v76 = v57;

    v97 = v41;
    v98 = v42;
    State.wrappedValue.getter();
    v58 = v96;
    swift_getKeyPath();
    v97 = v58;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
    v59 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

    v61 = v82;
    *(v82 + 25) = 0;
    v62 = *(v84 + 92);
    *(v61 + v62) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v61 + 128) = 0;
    *(v61 + 136) = 0;
    *(v61 + 144) = 0;
    *(v61 + 152) = -1;
    *&v63 = v77;
    *(&v63 + 1) = v53;
    *&v64 = v76;
    *(&v64 + 1) = v56;
    *(v61 + 24) = v64;
    *(v61 + 8) = v63;
    *v61 = 0;
    *(v61 + 40) = 0u;
    *(v61 + 56) = 0u;
    *(v61 + 72) = 0u;
    *(v61 + 88) = 0u;
    *(v61 + 153) = v51;
    *(v61 + 154) = 0;
    *(v61 + 156) = 0;
    v96 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v65 = v98;
    *(v61 + 208) = v97;
    *(v61 + 216) = v65;
    v66 = type metadata accessor for SmartReplyAnalytics(0);
    swift_allocObject();
    v67 = sub_10014F2CC(v79, v78);
    *(v61 + 184) = v66;
    *(v61 + 192) = &off_100250760;
    *(v61 + 160) = v67;
    *(v61 + 104) = _swiftEmptyArrayStorage;
    *(v61 + 112) = _swiftEmptyArrayStorage;
    *(v61 + 120) = _swiftEmptyArrayStorage;
    *(v61 + 224) = v60;
    *(v61 + 232) = v59;
    LODWORD(v97) = 0x1000000;
    sub_10016CB94(&qword_10025BBA0, type metadata accessor for FeedbackView, &unk_1001D8444);
    View.buttonStyle<A>(_:)();
    sub_10016C91C(v61, type metadata accessor for FeedbackView);
    v37 = v93;
    v29 = v94;
    (*(v93 + 32))();
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_10016ABB4(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
}

uint64_t sub_10016AC6C@<X0>(uint64_t (*a1)()@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_10000341C(&qword_1002657B8, &qword_1001DE540);
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  v59 = sub_10000341C(&qword_1002657C0, &qword_1001DE548);
  v70 = *(v59 - 8);
  v11 = __chkstk_darwin(v59);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v55 - v19;
  v21 = swift_allocObject();
  v69 = v21;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = 0x4042000000000000;

  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)(&v71);
  v67 = v73;
  v68 = v71;
  v65 = v76;
  v66 = v75;
  v79 = v72;
  v78 = v74;
  v64 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v61 = v79;
  v62 = v78;
  LOBYTE(v89) = 0;
  v63 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v77);
  v38 = &v20[*(v16 + 44)];
  v56 = v20;
  v39 = v77[1];
  *v38 = v77[0];
  *(v38 + 1) = v39;
  *(v38 + 2) = v77[2];
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v40[4] = a3;

  sub_10000341C(&qword_10025C890, &qword_1001DEC00);
  sub_100048DE0();
  Button.init(action:label:)();
  v89 = a1;
  v90 = a2;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v41 = v80;
  swift_getKeyPath();
  v89 = v41;
  sub_10016CB94(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a2) = *(v41 + 112);

  LOBYTE(v89) = a2;
  *(&v89 + 1) = 1;
  BYTE3(v89) = 1;
  sub_100007120(&qword_1002657C8, &qword_1002657B8, &qword_1001DE540, &protocol conformance descriptor for Button<A>);
  sub_100035980();
  v55 = v14;
  View.buttonStyle<A>(_:)();
  (*(v60 + 1))(v10, v8);
  v42 = v57;
  sub_1000081F8(v20, v57, &qword_10025D700, &unk_1001DE550);
  v43 = *(v70 + 16);
  v44 = v58;
  v45 = v14;
  v46 = v59;
  v43(v58, v45, v59);
  v60 = sub_10016C4AC;
  *&v80 = sub_10016C4AC;
  *(&v80 + 1) = v69;
  *&v81 = v68;
  BYTE8(v81) = v61;
  *&v82 = v67;
  BYTE8(v82) = v62;
  *&v83 = v66;
  *(&v83 + 1) = v65;
  LOBYTE(v84) = v64;
  *(&v84 + 1) = v23;
  *&v85 = v25;
  *(&v85 + 1) = v27;
  *&v86 = v29;
  BYTE8(v86) = 0;
  LOBYTE(v87) = v63;
  *(&v87 + 1) = v31;
  *&v88[0] = v33;
  *(&v88[0] + 1) = v35;
  *&v88[1] = v37;
  BYTE8(v88[1]) = 0;
  v47 = v88[0];
  a4[7] = v87;
  a4[8] = v47;
  v48 = v86;
  a4[5] = v85;
  a4[6] = v48;
  v49 = v81;
  v50 = v82;
  *a4 = v80;
  a4[1] = v49;
  v51 = v84;
  a4[3] = v83;
  a4[4] = v51;
  a4[2] = v50;
  *(a4 + 137) = *(v88 + 9);
  v52 = sub_10000341C(&qword_1002657D0, &qword_1001DE588);
  sub_1000081F8(v42, a4 + *(v52 + 48), &qword_10025D700, &unk_1001DE550);
  v43(a4 + *(v52 + 64), v44, v46);
  sub_1000081F8(&v80, &v89, &qword_1002657D8, &qword_1001DE590);
  v53 = *(v70 + 8);
  v53(v55, v46);
  sub_10000F500(v56, &qword_10025D700, &unk_1001DE550);
  v53(v44, v46);
  sub_10000F500(v42, &qword_10025D700, &unk_1001DE550);
  v89 = v60;
  v90 = v69;
  v91 = v68;
  v92 = v61;
  v93 = v67;
  v94 = v62;
  v95 = v66;
  v96 = v65;
  v97 = v64;
  v98 = v23;
  v99 = v25;
  v100 = v27;
  v101 = v29;
  v102 = 0;
  v103 = v63;
  v104 = v31;
  v105 = v33;
  v106 = v35;
  v107 = v37;
  v108 = 0;
  return sub_10000F500(&v89, &qword_1002657D8, &qword_1001DE590);
}

uint64_t sub_10016B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v41 = a4;
  v46 = a1;
  v48 = a5;
  v44 = type metadata accessor for GeometryProxy();
  v39 = *(v44 - 8);
  v43 = *(v39 + 64);
  __chkstk_darwin(v44);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for InputDashboardQuestionnaireButtonStyle(0);
  __chkstk_darwin(v40);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000341C(&qword_1002657E0, &qword_1001DE598);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v45 = sub_10000341C(&qword_1002657E8, &qword_1001DE5A0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v34 - v15;
  v50 = a2;
  v51 = a3;
  v38 = a3;
  v52 = v6;
  sub_10000341C(&qword_1002657F0, &qword_1001DE5A8);
  sub_10016C510();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v58);
  v16 = &v14[*(v12 + 36)];
  v17 = v58[1];
  *v16 = v58[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v58[2];
  v53 = a2;
  v54 = a3;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v18 = v57;
  swift_getKeyPath();
  v53 = v18;
  sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v18 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  *v11 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v20 = v40;
  *(v11 + *(v40 + 20)) = (v19 & 1) == 0;
  v36 = sub_10016C664();
  v35 = sub_10016CB94(&qword_100265828, type metadata accessor for InputDashboardQuestionnaireButtonStyle, &unk_1001DB7B8);
  v21 = v37;
  View.buttonStyle<A>(_:)();
  sub_10016C91C(v11, type metadata accessor for InputDashboardQuestionnaireButtonStyle);
  sub_10000F500(v14, &qword_1002657E0, &qword_1001DE598);
  v22 = v38;
  v53 = a2;
  v54 = v38;
  State.wrappedValue.getter();
  v23 = v57;
  swift_getKeyPath();
  v53 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v6) = *(v23 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  LOBYTE(v57) = v6;
  v24 = v39;
  v25 = v42;
  v26 = v44;
  (*(v39 + 16))(v42, v46, v44);
  v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v24 + 32))(v29 + v27, v25, v26);
  v30 = (v29 + v28);
  *v30 = a2;
  v30[1] = v22;
  v30[2] = v41;

  v53 = v21;
  v54 = v20;
  v55 = v36;
  v56 = v35;
  swift_getOpaqueTypeConformance2();
  v31 = v49;
  v32 = v45;
  View.onChange<A>(of:initial:_:)();

  return (*(v47 + 8))(v31, v32);
}

double sub_10016B9F4@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = static Font.system(size:weight:design:)();
  sub_10000F500(v6, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v12);
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v8;
  v10 = v12[1];
  *(a2 + 24) = v12[0];
  *(a2 + 40) = v10;
  result = *&v13;
  *(a2 + 56) = v13;
  return result;
}

void sub_10016BB44(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for GlobalCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*a1 & 1) == 0 && *a2)
  {
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    *&v28 = a4;
    *(&v28 + 1) = a5;
    sub_10000341C(&qword_10025B648, &qword_1001D0050);
    State.wrappedValue.getter();
    v21 = v27;
    *&v28 = v14;
    *(&v28 + 1) = v16;
    *&v29 = v18;
    *(&v29 + 1) = v20;
    v30 = 0;
    v22 = v27 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
    if ((*(v27 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32) & 1) != 0 || (v31.origin.x = v14, v31.origin.y = v16, v31.size.width = v18, v31.size.height = v20, !CGRectEqualToRect(*v22, v31)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v26[-16] = v21;
      *&v26[-8] = &v28;
      v27 = v21;
      sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v23 = v28;
      v24 = v29;
      *(v22 + 32) = v30;
      *v22 = v23;
      *(v22 + 16) = v24;
      sub_10004EA6C();
    }
  }
}

double sub_10016BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void))
{
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;

  sub_100051DE8(a5, 0, a6, v11);

  return result;
}

void sub_10016BEA0(uint64_t a1, uint64_t a2)
{
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    swift_unknownObjectRelease();
  }
}

void sub_10016BF1C(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10002A984(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
}

uint64_t sub_10016C010(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_10016C0A8, v4, v3);
}

uint64_t sub_10016C0A8()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10016C168;

  return sub_1000501F4();
}

uint64_t sub_10016C168()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10016C2AC, v3, v2);
}

uint64_t sub_10016C2AC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10016C30C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = 0x4010000000000000;
  v6 = sub_10000341C(&qword_100265778, &qword_1001DE4F0);
  sub_1001697FC(v3, v4, v5, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v8 = (a1 + *(sub_10000341C(&qword_100265780, &qword_1001DE508) + 36));
  type metadata accessor for _TaskModifier();

  result = static TaskPriority.userInitiated.getter();
  *v8 = &unk_1001DE500;
  v8[1] = v7;
  return result;
}

uint64_t sub_10016C3FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100028688;

  return sub_10016C010(v2, v3);
}

unint64_t sub_10016C510()
{
  result = qword_1002657F8;
  if (!qword_1002657F8)
  {
    sub_100003E34(&qword_1002657F0, &qword_1001DE5A8);
    sub_10016C59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002657F8);
  }

  return result;
}

unint64_t sub_10016C59C()
{
  result = qword_100265800;
  if (!qword_100265800)
  {
    sub_100003E34(&qword_100265808, &unk_1001DE5B0);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265800);
  }

  return result;
}

unint64_t sub_10016C664()
{
  result = qword_100265810;
  if (!qword_100265810)
  {
    sub_100003E34(&qword_1002657E0, &qword_1001DE598);
    sub_100007120(&qword_100265818, &qword_100265820, &qword_1001DE620, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265810);
  }

  return result;
}

uint64_t sub_10016C71C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

void sub_10016C7CC(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_10016BB44(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_10016C91C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016C97C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, a1, 7);
}

unint64_t sub_10016C9F4()
{
  result = qword_100265840;
  if (!qword_100265840)
  {
    sub_100003E34(&qword_100265780, &qword_1001DE508);
    sub_10016CAB0();
    sub_10016CB94(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265840);
  }

  return result;
}

unint64_t sub_10016CAB0()
{
  result = qword_100265848;
  if (!qword_100265848)
  {
    sub_100003E34(&qword_100265778, &qword_1001DE4F0);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100007120(&qword_100265850, &qword_100265858, &qword_1001DE798, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265848);
  }

  return result;
}

uint64_t sub_10016CB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10016CC1C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10016CD30(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_10016CE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v9 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = sub_10000341C(&qword_100265870, &qword_1001DE860);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = sub_10000341C(&qword_100265878, &qword_1001DE868);
  sub_10016D1A8(a1, a2, a3, a4, &v21[*(v22 + 44)]);
  v23 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v24 = &v21[*(v16 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  Divider.init()();
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v29 = v14;
  v30 = &v14[*(v10 + 44)];
  *v30 = v16;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = [a3 suggestionCategory];
  if (v35)
  {
    v36 = v35;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v53 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = [a3 suggestionDescription];
  if (v39)
  {
    v40 = v39;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v52 = 0;
    v42 = 0xE000000000000000;
  }

  sub_1000081F8(v21, v19, &qword_100265870, &qword_1001DE860);
  v43 = v54;
  sub_1000081F8(v14, v54, &qword_10025B888, &qword_1001D0300);
  v44 = v19;
  v51 = v19;
  v45 = v55;
  sub_1000081F8(v44, v55, &qword_100265870, &qword_1001DE860);
  v46 = sub_10000341C(&qword_100265880, &qword_1001DE870);
  sub_1000081F8(v43, v45 + *(v46 + 48), &qword_10025B888, &qword_1001D0300);
  v47 = (v45 + *(v46 + 64));
  v48 = v52;
  *v47 = v53;
  v47[1] = v38;
  v47[2] = v48;
  v47[3] = v42;

  sub_10000F500(v29, &qword_10025B888, &qword_1001D0300);
  sub_10000F500(v21, &qword_100265870, &qword_1001DE860);

  sub_10000F500(v43, &qword_10025B888, &qword_1001D0300);
  return sub_10000F500(v51, &qword_100265870, &qword_1001DE860);
}

uint64_t sub_10016D1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a2;
  v9 = sub_10000341C(&qword_100265888, &qword_1001DE878);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v38 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v35[-v13];
  v15 = [a4 attributedText];
  v16 = [a3 originalRange];
  v18 = [v15 attributedSubstringFromRange:{v16, v17}];

  v19 = [v18 string];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v39 = v20;
  v40 = v22;
  sub_10002AC34();
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v36 = v26;
  v28 = v27;
  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = v37;
  v29[4] = a3;
  v29[5] = a4;

  v30 = a3;
  v31 = a4;

  sub_10000341C(&qword_10025C940, &qword_1001DE880);
  sub_100007120(&qword_10025C948, &qword_10025C940, &qword_1001DE880, &protocol conformance descriptor for TupleView<A>);
  Button.init(action:label:)();
  *&v14[*(v10 + 44)] = 0x3FE3333333333333;
  v32 = v38;
  sub_1000081F8(v14, v38, &qword_100265888, &qword_1001DE878);
  *a5 = v23;
  *(a5 + 8) = v25;
  LOBYTE(a1) = v36 & 1;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v28;
  *(a5 + 32) = 0x3FE0000000000000;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  v33 = sub_10000341C(&qword_100265890, &unk_1001DE888);
  sub_1000081F8(v32, a5 + *(v33 + 64), &qword_100265888, &qword_1001DE878);
  sub_100007D98(v23, v25, a1);

  sub_10000F500(v14, &qword_100265888, &qword_1001DE878);
  sub_10000F500(v32, &qword_100265888, &qword_1001DE878);
  sub_10002A984(v23, v25, a1);
}

uint64_t sub_10016D4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  v12[3] = a2;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v10 = [a3 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A7170(3, v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10016D5FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  sub_100125454(2);
  v18 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static Font.system(size:weight:design:)();
  sub_10000F500(v4, &qword_10025C5D0, &qword_1001D15A0);
  v11 = Text.font(_:)();
  v13 = v12;
  LOBYTE(v4) = v14;
  v16 = v15;

  sub_10002A984(v5, v7, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v16;

  sub_100007D98(v11, v13, v4);

  sub_10002A984(v11, v13, v4);
}

void sub_10016D80C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = a2;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v10 = sub_1001A6F98(a3);

  if (v10 == 1)
  {
    v13 = a1;
    v14 = a2;
    State.wrappedValue.getter();
    v11 = [a3 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v9);

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10016D988@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v8 = sub_10000341C(&qword_100265860, &qword_1001DE850);
  sub_10016CE3C(v4, v5, v7, v6, a2 + *(v8 + 44));
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v7;
  v9[5] = v6;
  v10 = (a2 + *(sub_10000341C(&qword_100265868, &qword_1001DE858) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_10016DA7C;
  v10[3] = v9;

  v11 = v7;
  v12 = v6;
}

uint64_t sub_10016DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a3;
  v67 = a4;
  v8 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v59 - v9;
  v109 = a1;
  v110 = a2;
  v64 = sub_10002AC34();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(a1) = v14;
  v65 = Text.bold()();
  v16 = v15;
  v18 = v17;
  v59 = v19;
  sub_10002A984(v11, v13, a1 & 1);

  v60 = type metadata accessor for Font.Design();
  v20 = *(v60 - 8);
  v21 = *(v20 + 56);
  v61 = v20 + 56;
  v62 = v21;
  v21(v10, 1, 1, v60);
  static Font.system(size:weight:design:)();
  sub_10000F500(v10, &qword_10025C5D0, &qword_1001D15A0);
  LOBYTE(v11) = v18;
  v22 = v65;
  v23 = Text.font(_:)();
  v68 = v24;
  v69 = v23;
  LOBYTE(v13) = v25;
  v63 = v26;

  sub_10002A984(v22, v16, v11 & 1);

  LOBYTE(v16) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LODWORD(v13) = v13 & 1;
  LODWORD(v65) = v13;
  LOBYTE(v102) = 0;
  v109 = v66;
  v110 = v67;

  v35 = Text.init<A>(_:)();
  v66 = v36;
  v67 = v37;
  LOBYTE(v22) = v38;
  v62(v10, 1, 1, v60);
  v39 = static Font.system(size:weight:design:)();
  sub_10000F500(v10, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v22) = v22 & 1;
  LOBYTE(v109) = v22;
  LOBYTE(v11) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *&v98 = v69;
  *(&v98 + 1) = v68;
  LOBYTE(v99) = v13;
  *(&v99 + 1) = *v97;
  DWORD1(v99) = *&v97[3];
  v41 = v63;
  *(&v99 + 1) = v63;
  LOBYTE(v100) = v16;
  DWORD1(v100) = *&v96[3];
  *(&v100 + 1) = *v96;
  *(&v100 + 1) = v28;
  *&v101[0] = v30;
  *(&v101[0] + 1) = v32;
  *&v101[1] = v34;
  BYTE8(v101[1]) = 0;
  *(v84 + 9) = *(v101 + 9);
  v83 = v100;
  v84[0] = v101[0];
  v81 = v98;
  v82 = v99;
  v42 = v35;
  v43 = v66;
  *&v102 = v35;
  *(&v102 + 1) = v66;
  LOBYTE(v103) = v22;
  DWORD1(v103) = *(v94 + 3);
  *(&v103 + 1) = v94[0];
  v44 = v67;
  *(&v103 + 1) = v67;
  LOWORD(v104) = 256;
  WORD3(v104) = v93;
  *(&v104 + 2) = v92;
  *(&v104 + 1) = KeyPath;
  *&v105 = v39;
  BYTE8(v105) = v11;
  HIDWORD(v105) = *(v95 + 3);
  *(&v105 + 9) = v95[0];
  *&v106 = v45;
  *(&v106 + 1) = v46;
  *&v107 = v47;
  *(&v107 + 1) = v48;
  v108 = 0;
  v91 = 0;
  v89 = v106;
  v90 = v107;
  v87 = v104;
  v88 = v105;
  v85 = v102;
  v86 = v103;
  v49 = v98;
  v50 = v99;
  v51 = v101[0];
  *(a5 + 32) = v100;
  *(a5 + 48) = v51;
  *a5 = v49;
  *(a5 + 16) = v50;
  v52 = v84[1];
  v53 = v85;
  v54 = v87;
  *(a5 + 96) = v86;
  *(a5 + 112) = v54;
  *(a5 + 64) = v52;
  *(a5 + 80) = v53;
  v55 = v88;
  v56 = v89;
  v57 = v90;
  *(a5 + 176) = v91;
  *(a5 + 144) = v56;
  *(a5 + 160) = v57;
  *(a5 + 128) = v55;
  v109 = v42;
  v110 = v43;
  v111 = v22;
  *v112 = v94[0];
  *&v112[3] = *(v94 + 3);
  v113 = v44;
  v114 = 256;
  v115 = v92;
  v116 = v93;
  v117 = KeyPath;
  v118 = v39;
  v119 = v11;
  *&v120[3] = *(v95 + 3);
  *v120 = v95[0];
  v121 = v45;
  v122 = v46;
  v123 = v47;
  v124 = v48;
  v125 = 0;
  sub_1000081F8(&v98, v70, &qword_10025C890, &qword_1001DEC00);
  sub_1000081F8(&v102, v70, &qword_100265908, &qword_1001DEC08);
  sub_10000F500(&v109, &qword_100265908, &qword_1001DEC08);
  v70[0] = v69;
  v70[1] = v68;
  v71 = v65;
  *v72 = *v97;
  *&v72[3] = *&v97[3];
  v73 = v41;
  v74 = v16;
  *v75 = *v96;
  *&v75[3] = *&v96[3];
  v76 = v28;
  v77 = v30;
  v78 = v32;
  v79 = v34;
  v80 = 0;
  return sub_10000F500(v70, &qword_10025C890, &qword_1001DEC00);
}

void sub_10016DF70(uint64_t a1@<X8>)
{
  sub_10016DA88(*v1, v1[1], v1[2], v1[3], v13);
  v3 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v4 = v13[9];
  *(a1 + 128) = v13[8];
  *(a1 + 144) = v4;
  *(a1 + 160) = v13[10];
  *(a1 + 176) = v14;
  v5 = v13[5];
  *(a1 + 64) = v13[4];
  *(a1 + 80) = v5;
  v6 = v13[7];
  *(a1 + 96) = v13[6];
  *(a1 + 112) = v6;
  v7 = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = v7;
  v8 = v13[3];
  *(a1 + 32) = v13[2];
  *(a1 + 48) = v8;
  *(a1 + 184) = v3;
  *(a1 + 192) = v9;
  *(a1 + 200) = v10;
  *(a1 + 208) = v11;
  *(a1 + 216) = v12;
  *(a1 + 224) = 0;
}

uint64_t sub_10016E020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = static Font.system(size:weight:design:)();
  sub_10000F500(v6, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v10 = sub_10000341C(&qword_100265940, &qword_1001DEC70);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_100265948, &qword_1001DEC78) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  result = sub_10000341C(&qword_100265950, &qword_1001DEC80);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10016E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_100265910, &qword_1001DEC10);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_100265918, &qword_1001DEC18) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_100265920, &qword_1001DEC20) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = (a2 + *(sub_10000341C(&qword_100265928, &qword_1001DEC28) + 36));
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #14.0 }

  *v24 = _Q0;
  if (qword_10025A7E0 != -1)
  {
    swift_once();
  }

  v33 = qword_100277190;
  v34 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v24[*(v34 + 52)] = v33;
  *&v24[*(v34 + 56)] = 256;

  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v24[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v41 = (a2 + *(sub_10000341C(&qword_100265930, &qword_1001DEC60) + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  LOBYTE(v39) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  result = sub_10000341C(&qword_100265938, &qword_1001DEC68);
  v51 = a2 + *(result + 36);
  *v51 = v39;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_10016E460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265900, &qword_1001DEBC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10016E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_1002658E0, &qword_1001DEBA8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_1002658E8, &qword_1001DEBB0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_1002658F0, &qword_1001DEBB8) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = sub_10000341C(&qword_1002658F8, &qword_1001DEBC0);
  v33 = a2 + *(result + 36);
  *v33 = a1;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_10016E640(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_10016E69C(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v29 = a2;
  v30 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_100277358;
  if (!*(qword_100277358 + 16) || (v11 = sub_100005044(a1), (v12 & 1) == 0))
  {
LABEL_11:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_12;
  }

  v27 = a1;
  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  swift_getKeyPath();
  v34 = v13;
  sub_10016EA28();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  v15 = swift_beginAccess();
  v16 = *(v13 + v14);
  __chkstk_darwin(v15);
  v28 = a3;
  *(&v27 - 2) = a3;

  v17 = sub_10016CC1C(sub_10016EA80, (&v27 - 4), v16);

  if (v17)
  {
    v19 = [v17 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getKeyPath();
    v33 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
    swift_beginAccess();
    v21 = *(v13 + v20);
    if (*(v21 + 16))
    {

      v22 = sub_100005044(v9);
      v24 = v23;

      if (v24)
      {
        *(*(v21 + 56) + 8 * v22);

        v25 = *(v7 + 8);
        v25(v9, v6);
        v31 = v13;
        type metadata accessor for ProofreadingModel(0);

        State.init(wrappedValue:)();

        v25(v30, v6);
        v25(v27, v6);
        v26 = v32;
        v25(v28, v6);
        return v26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_10016EA28()
{
  result = qword_10025BAB0;
  if (!qword_10025BAB0)
  {
    type metadata accessor for ProofreadingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAB0);
  }

  return result;
}

unint64_t sub_10016EAFC()
{
  result = qword_100265898;
  if (!qword_100265898)
  {
    sub_100003E34(&qword_100265868, &qword_1001DE858);
    sub_10016EB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265898);
  }

  return result;
}

unint64_t sub_10016EB88()
{
  result = qword_1002658A0;
  if (!qword_1002658A0)
  {
    sub_100003E34(&qword_1002658A8, &qword_1001DEA00);
    sub_10016EC14();
    sub_10016ED20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658A0);
  }

  return result;
}

unint64_t sub_10016EC14()
{
  result = qword_1002658B0;
  if (!qword_1002658B0)
  {
    sub_100003E34(&qword_1002658B8, &qword_1001DEA08);
    sub_100007120(&qword_1002658C0, &qword_1002658C8, qword_1001DEA10, &protocol conformance descriptor for VStack<A>);
    sub_10016ECCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658B0);
  }

  return result;
}

unint64_t sub_10016ECCC()
{
  result = qword_1002658D0;
  if (!qword_1002658D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658D0);
  }

  return result;
}

unint64_t sub_10016ED20()
{
  result = qword_1002658D8;
  if (!qword_1002658D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658D8);
  }

  return result;
}

unint64_t sub_10016EE14()
{
  result = qword_100265958;
  if (!qword_100265958)
  {
    sub_100003E34(&qword_1002658F8, &qword_1001DEBC0);
    sub_10016EEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265958);
  }

  return result;
}

unint64_t sub_10016EEA0()
{
  result = qword_100265960;
  if (!qword_100265960)
  {
    sub_100003E34(&qword_1002658F0, &qword_1001DEBB8);
    sub_10016EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265960);
  }

  return result;
}

unint64_t sub_10016EF2C()
{
  result = qword_100265968;
  if (!qword_100265968)
  {
    sub_100003E34(&qword_1002658E8, &qword_1001DEBB0);
    sub_100007120(&qword_100265970, &qword_1002658E0, &qword_1001DEBA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265968);
  }

  return result;
}

unint64_t sub_10016F02C()
{
  result = qword_100265980;
  if (!qword_100265980)
  {
    sub_100003E34(&qword_100265988, &qword_1001DEC88);
    sub_10016F0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265980);
  }

  return result;
}

unint64_t sub_10016F0B8()
{
  result = qword_100265990;
  if (!qword_100265990)
  {
    sub_100003E34(&qword_100265998, &qword_1001DEC90);
    sub_100007120(&qword_1002659A0, &qword_1002659A8, &qword_1001DEC98, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265990);
  }

  return result;
}

unint64_t sub_10016F16C()
{
  result = qword_1002659B0;
  if (!qword_1002659B0)
  {
    sub_100003E34(&qword_100265938, &qword_1001DEC68);
    sub_10016F1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659B0);
  }

  return result;
}

unint64_t sub_10016F1F8()
{
  result = qword_1002659B8;
  if (!qword_1002659B8)
  {
    sub_100003E34(&qword_100265930, &qword_1001DEC60);
    sub_10016F2B0();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659B8);
  }

  return result;
}

unint64_t sub_10016F2B0()
{
  result = qword_1002659C0;
  if (!qword_1002659C0)
  {
    sub_100003E34(&qword_100265928, &qword_1001DEC28);
    sub_10016F368();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659C0);
  }

  return result;
}

unint64_t sub_10016F368()
{
  result = qword_1002659C8;
  if (!qword_1002659C8)
  {
    sub_100003E34(&qword_100265920, &qword_1001DEC20);
    sub_10016F3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659C8);
  }

  return result;
}

unint64_t sub_10016F3F4()
{
  result = qword_1002659D0;
  if (!qword_1002659D0)
  {
    sub_100003E34(&qword_100265918, &qword_1001DEC18);
    sub_100007120(&qword_1002659D8, &qword_100265910, &qword_1001DEC10, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659D0);
  }

  return result;
}

unint64_t sub_10016F4B0()
{
  result = qword_1002659E0;
  if (!qword_1002659E0)
  {
    sub_100003E34(&qword_100265950, &qword_1001DEC80);
    sub_10016F568();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659E0);
  }

  return result;
}

unint64_t sub_10016F568()
{
  result = qword_1002659E8;
  if (!qword_1002659E8)
  {
    sub_100003E34(&qword_100265948, &qword_1001DEC78);
    sub_100007120(&qword_1002659F0, &qword_100265940, &qword_1001DEC70, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659E8);
  }

  return result;
}

uint64_t sub_10016F650()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10016F6C4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
}

double sub_10016F778(uint64_t a1, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10016F87C()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

double sub_10016F8F0(uint64_t a1, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10016F9F4(uint64_t result, uint64_t a2, char a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3 & 1;
  return result;
}

uint64_t sub_10016FA04()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

double sub_10016FA78(uint64_t a1, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10016FB7C()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 57);
}

void sub_10016FBEC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 57);
}

void sub_10016FC8C(char a1)
{
  if (*(v1 + 57) == (a1 & 1))
  {
    *(v1 + 57) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001701F8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10016FD74()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

void sub_10016FDE4(double a1, double a2)
{
  if (*(v2 + 64) == a1 && *(v2 + 72) == a2)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001701F8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10016FED4(uint64_t result, double a2, double a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

BOOL sub_10016FEDC()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + 24) & 1) == 0 && *(v0 + 16) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return (*(v0 + 24) & 1) == 0 && *(v0 + 16) == 1;
}

uint64_t PresentationModel.deinit()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17PresentationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PresentationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17PresentationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentationModel(uint64_t a1)
{
  result = qword_100265A28;
  if (!qword_100265A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017010C(uint64_t a1)
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

unint64_t sub_1001701F8()
{
  result = qword_10025A910;
  if (!qword_10025A910)
  {
    type metadata accessor for PresentationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A910);
  }

  return result;
}

__n128 sub_100170258()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

void sub_1001702AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_1001702C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_100170300()
{
  v60 = type metadata accessor for URL();
  v1 = *(v60 - 8);
  v2 = __chkstk_darwin(v60);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v52 - v5;
  swift_getKeyPath();
  v67 = v0;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v0[2] + 16);
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      sub_100173BA0(v8--);
    }

    while (v8 != -1);
  }

  swift_getKeyPath();
  v66 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v0[8] = _swiftEmptyArrayStorage;

  v65 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v63 = objc_opt_self();
  v9 = [v63 defaultManager];
  if (qword_10025A860 != -1)
  {
    swift_once();
  }

  v10 = v60;
  sub_10000F34C(v60, qword_1002772C0);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v65 = 0;
  v14 = [v9 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:&v65];

  v15 = v65;
  if (v14)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v15;

    v19 = *(v16 + 16);
    if (v19)
    {
      v20 = v1 + 16;
      v64 = *(v1 + 16);
      v21 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v52[1] = v16;
      v22 = v16 + v21;
      v23 = *(v20 + 56);
      v61 = (v20 - 8);
      v62 = v23;
      *&v18 = 136643075;
      v55 = v18;
      v56 = v20;
      v54 = v6;
      v53 = v4;
      v64(v6, v16 + v21, v10);
      while (1)
      {
        v26 = [v63 defaultManager];
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v65 = 0;
        v30 = [v26 removeItemAtURL:v28 error:&v65];

        if (v30)
        {
          v24 = *v61;
          v25 = v65;
          v24(v6, v10);
        }

        else
        {
          v31 = v65;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_10025A6D8 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_10000F34C(v32, qword_100276EF0);
          v64(v4, v6, v10);
          swift_errorRetain();
          swift_errorRetain();
          v33 = Logger.logObject.getter();
          v34 = v4;
          v35 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v33, v35))
          {
            v36 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v58 = v33;
            v59 = v37;
            v65 = v37;
            *v36 = v55;
            v38 = URL.path(percentEncoded:)(1);
            v39 = *v61;
            (*v61)(v34, v60);
            v40 = sub_10002510C(v38._countAndFlagsBits, v38._object, &v65);

            *(v36 + 4) = v40;
            *(v36 + 12) = 2112;
            swift_errorRetain();
            v41 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v41;
            v42 = v57;
            *v57 = v41;

            v43 = v58;
            _os_log_impl(&_mh_execute_header, v58, v35, "failed to remove file at %{sensitive}s: %@", v36, 0x16u);
            sub_10000F500(v42, &unk_10025D580, &qword_1001CFA60);
            v10 = v60;

            sub_10000F4B4(v59);

            v6 = v54;
            v39(v54, v10);
            v4 = v53;
          }

          else
          {

            v4 = v34;
            v44 = *v61;
            (*v61)(v4, v10);
            v44(v6, v10);
          }
        }

        v22 += v62;
        if (!--v19)
        {
          break;
        }

        v64(v6, v22, v10);
      }
    }
  }

  else
  {
    v45 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000F34C(v46, qword_100276EF0);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v51;
      *v50 = v51;

      _os_log_impl(&_mh_execute_header, v47, v48, "failed to enumerate attachments tmp directory: %@", v49, 0xCu);
      sub_10000F500(v50, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }
  }
}

uint64_t sub_100170B3C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for DocumentRegistration.Progress();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = type metadata accessor for DocumentRegistration.Status();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v5 = type metadata accessor for DocumentRegistration();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  sub_10000341C(&qword_100265F58, &qword_1001DF1C0);
  v2[43] = swift_task_alloc();
  v6 = sub_10000341C(&qword_100265F60, &qword_1001DF1C8);
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[47] = v7;
  v2[48] = *(v7 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v8 = sub_10000341C(&qword_100265F68, &qword_1001DF1D0);
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_10000341C(&qword_100265F70, &qword_1001DF1D8);
  v2[56] = swift_task_alloc();
  v9 = type metadata accessor for DocumentResource();
  v2[57] = v9;
  v2[58] = *(v9 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_10000341C(&qword_100265F78, &qword_1001DF1E0);
  v2[61] = swift_task_alloc();
  v2[62] = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  v2[63] = swift_task_alloc();
  type metadata accessor for Attachment.UploadState(0);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  sub_10000341C(&qword_100265F80, &qword_1001DF1E8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v10 = type metadata accessor for DocumentResourceIdentifier();
  v2[71] = v10;
  v2[72] = *(v10 - 8);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v11 = type metadata accessor for Attachment(0);
  v2[76] = v11;
  v2[77] = *(v11 - 8);
  v2[78] = swift_task_alloc();
  v2[79] = type metadata accessor for MainActor();
  v2[80] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[81] = v13;
  v2[82] = v12;

  return _swift_task_switch(sub_100171108, v13, v12);
}

uint64_t sub_100171108()
{
  v135 = v0;
  if (qword_10025A6D8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 664) = sub_10000F34C(v1, qword_100276EF0);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 256);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v134[0] = v6;
      *v5 = 136315138;
      swift_getKeyPath();
      *(v0 + 240) = v4;
      sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();

      v7 = Array.description.getter();
      v9 = v8;

      v10 = sub_10002510C(v7, v9, v134);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "unregistering attachments: %s", v5, 0xCu);
      sub_10000F4B4(v6);
    }

    v11 = *(v0 + 256);
    swift_getKeyPath();
    *(v0 + 672) = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
    *(v0 + 152) = v11;
    *(v0 + 680) = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v116 = v11;
    v12 = *(v11 + 64);
    v13 = *(v12 + 16);
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v15 = *(v0 + 616);
      v16 = *(v0 + 576);
      v125 = *(*(v0 + 608) + 40);
      v128 = *(v0 + 624);
      v17 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v123 = *(v15 + 72);
      v131 = (v16 + 32);
      v117 = v16;
      v119 = (v16 + 48);
      v121 = (v16 + 56);

      v18 = _swiftEmptyArrayStorage;
      v19 = &qword_100265F80;
      do
      {
        v20 = v19;
        v21 = *(v0 + 624);
        v22 = *(v0 + 544);
        sub_10017F384(v17, v21, type metadata accessor for Attachment);
        sub_10017F384(v128 + v125, v22, type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v21, type metadata accessor for Attachment);
        v23 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
        if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
        {
          sub_10017F3EC(*(v0 + 544), type metadata accessor for Attachment.UploadState);
          v24 = 1;
        }

        else
        {
          (*v131)(*(v0 + 552), *(v0 + 544), *(v0 + 568));
          v24 = 0;
        }

        v25 = *(v0 + 568);
        v26 = *(v0 + 560);
        v27 = *(v0 + 552);
        (*v121)(v27, v24, 1, v25);
        v28 = v27;
        v19 = v20;
        sub_10002A894(v28, v26, v20, &qword_1001DF1E8);
        if ((*v119)(v26, 1, v25) == 1)
        {
          sub_10000F500(*(v0 + 560), v20, &qword_1001DF1E8);
        }

        else
        {
          v29 = *v131;
          (*v131)(*(v0 + 600), *(v0 + 560), *(v0 + 568));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_10017D948(0, *(v18 + 2) + 1, 1, v18, &qword_100265F98, &qword_1001DF1F8, &type metadata accessor for DocumentResourceIdentifier);
          }

          v31 = *(v18 + 2);
          v30 = *(v18 + 3);
          if (v31 >= v30 >> 1)
          {
            v18 = sub_10017D948((v30 > 1), v31 + 1, 1, v18, &qword_100265F98, &qword_1001DF1F8, &type metadata accessor for DocumentResourceIdentifier);
          }

          v32 = *(v0 + 600);
          v33 = *(v0 + 568);
          *(v18 + 2) = v31 + 1;
          v29(&v18[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v31], v32, v33);
          v19 = v20;
        }

        v17 += v123;
        --v13;
      }

      while (v13);

      v14 = _swiftEmptyArrayStorage;
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    GenerativeExperiencesSession.unregister(documents:)(v18);
    if (v34)
    {

      v35 = *(v0 + 8);
      goto LABEL_55;
    }

    v36 = *(v0 + 256);

    swift_getKeyPath();
    *(v0 + 160) = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 168) = v36;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    *(v116 + 64) = _swiftEmptyArrayStorage;

    *(v0 + 176) = v36;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 184) = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v129 = *(*(v36 + 16) + 16);
    v132 = v36;
    if (!v129)
    {
      break;
    }

    v37 = 0;
    v126 = *(v0 + 616);
    v38 = *(v0 + 576);
    v114 = (v38 + 32);
    v120 = (v38 + 8);
    v122 = *(v0 + 496);
    v124 = *(v0 + 608);
    while (1)
    {
      v42 = *(v0 + 256);
      swift_getKeyPath();
      *(v0 + 192) = v42;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v43 = *(v132 + 16);
      if (v37 >= *(v43 + 16))
      {
        break;
      }

      v44 = *(v0 + 536);
      v45 = *(v0 + 528);
      v46 = *(v0 + 504);
      sub_10017F384(v43 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v37 + *(v124 + 40), v44, type metadata accessor for Attachment.UploadState);
      v47 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
      v48 = *(v47 - 8);
      (*(v48 + 56))(v45, 1, 1, v47);
      v49 = *(v122 + 48);
      sub_10017F384(v44, v46, type metadata accessor for Attachment.UploadState);
      sub_10017F384(v45, v46 + v49, type metadata accessor for Attachment.UploadState);
      v50 = *(v48 + 48);
      if (v50(v46, 1, v47) == 1)
      {
        v51 = *(v0 + 536);
        sub_10017F3EC(*(v0 + 528), type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v51, type metadata accessor for Attachment.UploadState);
        if (v50(v46 + v49, 1, v47) == 1)
        {
          sub_10017F3EC(*(v0 + 504), type metadata accessor for Attachment.UploadState);
LABEL_32:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134[0] = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163C40(0, v14[2] + 1, 1);
            v14 = v134[0];
          }

          v62 = v14[2];
          v61 = v14[3];
          if (v62 >= v61 >> 1)
          {
            sub_100163C40((v61 > 1), v62 + 1, 1);
            v14 = v134[0];
          }

          v14[2] = v62 + 1;
          v14[v62 + 4] = v37;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      sub_10017F384(*(v0 + 504), *(v0 + 520), type metadata accessor for Attachment.UploadState);
      if (v50(v46 + v49, 1, v47) == 1)
      {
        v39 = *(v0 + 568);
        v40 = *(v0 + 536);
        v41 = *(v0 + 520);
        sub_10017F3EC(*(v0 + 528), type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v40, type metadata accessor for Attachment.UploadState);
        (*v120)(v41, v39);
LABEL_24:
        sub_10000F500(*(v0 + 504), &qword_100265F30, &qword_1001DF118);
        goto LABEL_25;
      }

      v52 = *(v0 + 592);
      v53 = *(v0 + 568);
      v54 = *(v0 + 536);
      v55 = *(v0 + 528);
      v118 = v14;
      v56 = *(v0 + 520);
      v115 = *(v0 + 504);
      (*v114)(v52, v46 + v49, v53);
      v57 = static DocumentResourceIdentifier.== infix(_:_:)();
      v58 = *v120;
      (*v120)(v52, v53);
      sub_10017F3EC(v55, type metadata accessor for Attachment.UploadState);
      sub_10017F3EC(v54, type metadata accessor for Attachment.UploadState);
      v59 = v56;
      v14 = v118;
      v58(v59, v53);
      sub_10017F3EC(v115, type metadata accessor for Attachment.UploadState);
      if (v57)
      {
        goto LABEL_32;
      }

LABEL_25:
      if (v129 == ++v37)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_37:
  v63 = v14[2];
  if (v63)
  {

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v14[2];

      _os_log_impl(&_mh_execute_header, v64, v65, "Attaching %ld attachment(s)", v66, 0xCu);
    }

    else
    {
    }

    v67 = 0;
    v68 = *(v0 + 464);
    v69 = (v68 + 48);
    v130 = v68;
    v70 = (v68 + 32);
    v71 = _swiftEmptyArrayStorage;
    v133 = v63;
    v127 = (v68 + 48);
    do
    {
      if (v67 >= v14[2])
      {
        goto LABEL_64;
      }

      v73 = *(v0 + 448);
      v72 = *(v0 + 456);
      v74 = *(v0 + 256);
      v134[0] = v14[v67 + 4];
      sub_100179DAC(v134, v74, v73);
      if ((*v69)(v73, 1, v72) == 1)
      {
        sub_10000F500(*(v0 + 448), &qword_100265F70, &qword_1001DF1D8);
      }

      else
      {
        v75 = v14;
        v77 = *(v0 + 472);
        v76 = *(v0 + 480);
        v78 = *(v0 + 456);
        v79 = *v70;
        (*v70)(v76, *(v0 + 448), v78);
        v79(v77, v76, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_10017D948(0, v71[2] + 1, 1, v71, &qword_100265FA0, &unk_1001DF200, &type metadata accessor for DocumentResource);
        }

        v81 = v71[2];
        v80 = v71[3];
        v14 = v75;
        if (v81 >= v80 >> 1)
        {
          v71 = sub_10017D948((v80 > 1), v81 + 1, 1, v71, &qword_100265FA0, &unk_1001DF200, &type metadata accessor for DocumentResource);
        }

        v63 = v133;
        v82 = *(v0 + 472);
        v83 = *(v0 + 456);
        v71[2] = v81 + 1;
        v79(v71 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v81, v82, v83);
        v69 = v127;
      }

      ++v67;
    }

    while (v63 != v67);
    v84 = GenerativeExperiencesSession.register(documents:)();

    *(v0 + 16) = v84;
    *(v0 + 24) = 0;
    *(v0 + 32) = v14;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 52) = enum case for DocumentRegistration.Status.registering(_:);
    *(v0 + 744) = enum case for DocumentRegistration.Status.finished(_:);
    v85 = *(v0 + 488);
    sub_1001746A8(v85);
    v86 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
    if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
    {

      goto LABEL_54;
    }

    v88 = *(v0 + 440);
    v89 = *(v0 + 424);
    v90 = *(v0 + 256);
    v91 = *(*(v0 + 488) + *(v86 + 48));
    *(v0 + 688) = v91;
    (*(v89 + 32))(v88);
    swift_getKeyPath();
    *(v0 + 200) = v90;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v91 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v98 = *(v90 + 16);
      if (v91 < *(v98 + 16))
      {
        v99 = *(v0 + 616);
        v100 = *(v0 + 432);
        v101 = *(v0 + 440);
        v102 = *(v0 + 416);
        v103 = *(v0 + 424);
        v104 = *(v0 + 408);
        v105 = *(v0 + 376);
        v106 = *(v0 + 384);
        v107 = *(v99 + 80);
        *(v0 + 748) = v107;
        v108 = *(v99 + 72);
        *(v0 + 696) = v108;
        v109 = v98 + ((v107 + 32) & ~v107) + v108 * v91;
        v110 = *(v106 + 16);
        *(v0 + 704) = v110;
        *(v0 + 712) = (v106 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v110(v104, v109, v105);
        (*(v103 + 16))(v100, v101, v102);
        *(v0 + 720) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        v111 = static MainActor.shared.getter();
        *(v0 + 728) = v111;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v113 = swift_task_alloc();
        *(v0 + 736) = v113;
        *v113 = v0;
        v113[1] = sub_1001723F8;
        v92 = *(v0 + 344);
        v96 = *(v0 + 352);
        v94 = &protocol witness table for MainActor;
        v95 = v0 + 208;
        v93 = v111;
        v97 = AssociatedConformanceWitness;

        return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v92, v93, v94, v95, v96, v97);
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v92, v93, v94, v95, v96, v97);
  }

LABEL_54:

  v35 = *(v0 + 8);
LABEL_55:

  return v35();
}

uint64_t sub_1001723F8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_100173120;
  }

  else
  {

    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_10017254C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017254C()
{
  v118 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v14 = *(v0 + 52);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 296);
    (*(v3 + 32))(*(v0 + 336), v1, v2);
    DocumentRegistration.status.getter();
    v18 = (*(v16 + 88))(v15, v17);
    if (v18 == v14)
    {
      v19 = *(v0 + 704);
      v21 = *(v0 + 400);
      v20 = *(v0 + 408);
      v22 = *(v0 + 376);
      v23 = *(v0 + 312);
      v24 = *(v0 + 288);
      v25 = *(v0 + 272);
      v26 = *(v0 + 280);
      v27 = *(v0 + 264);
      (*(*(v0 + 304) + 96))(v23, *(v0 + 296));
      (*(v25 + 32))(v24, v23, v27);
      v19(v21, v20, v22);
      (*(v25 + 16))(v26, v24, v27);
      v28 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v28, v112);
      v30 = *(v0 + 400);
      v31 = *(v0 + 376);
      v32 = *(v0 + 384);
      v33 = *(v0 + 328);
      v34 = *(v0 + 336);
      v35 = *(v0 + 320);
      v36 = *(v0 + 280);
      v37 = *(v0 + 272);
      v113 = *(v0 + 264);
      v115 = *(v0 + 288);
      if (v29)
      {
        v111 = *(v0 + 320);
        v38 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v117 = v109;
        *v38 = 136643075;
        sub_10017B970(&qword_100265F90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        log = v28;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v34;
        v41 = v40;
        (*(v32 + 8))(v30, v31);
        v42 = sub_10002510C(v39, v41, &v117);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2048;
        DocumentRegistration.Progress.progress.getter();
        v44 = v43;
        v45 = *(v37 + 8);
        v45(v36, v113);
        *(v38 + 14) = v44;
        _os_log_impl(&_mh_execute_header, log, v112, "Attachment uploading %{sensitive}s - Progress: %f %%", v38, 0x16u);
        sub_10000F4B4(v109);

        v45(v115, v113);
        (*(v33 + 8))(v110, v111);
      }

      else
      {

        v85 = *(v37 + 8);
        v85(v36, v113);
        (*(v32 + 8))(v30, v31);
        v85(v115, v113);
        (*(v33 + 8))(v34, v35);
      }

      goto LABEL_21;
    }

    if (v18 != *(v0 + 744))
    {
      v86 = *(v0 + 312);
      v87 = *(v0 + 296);
      v88 = *(v0 + 304);
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      (*(v88 + 8))(v86, v87);
      goto LABEL_21;
    }

    v65 = *(v0 + 704);
    v66 = *(v0 + 584);
    v67 = *(v0 + 576);
    v68 = *(v0 + 568);
    v69 = *(v0 + 408);
    v70 = *(v0 + 392);
    v71 = *(v0 + 376);
    v72 = *(v0 + 312);
    (*(*(v0 + 304) + 96))(v72, *(v0 + 296));
    (*(v67 + 32))(v66, v72, v68);
    v65(v70, v69, v71);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    v75 = os_log_type_enabled(v73, v74);
    v77 = *(v0 + 384);
    v76 = *(v0 + 392);
    v78 = *(v0 + 376);
    if (v75)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v117 = v80;
      *v79 = 136642819;
      sub_10017B970(&qword_100265F90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v77 + 8))(v76, v78);
      v84 = sub_10002510C(v81, v83, &v117);

      *(v79 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v73, v74, "Attachment upload complete %{sensitive}s", v79, 0xCu);
      sub_10000F4B4(v80);
    }

    else
    {

      (*(v77 + 8))(v76, v78);
    }

    v89 = *(v0 + 512);
    v90 = *(v0 + 256);
    (*(*(v0 + 576) + 16))(v89, *(v0 + 584), *(v0 + 568));
    v91 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
    (*(*(v91 - 8) + 56))(v89, 0, 1, v91);
    swift_getKeyPath();
    *(v0 + 216) = v90;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 224) = v90;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v51 = *(v90 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v90 + 16) = v51;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_19:
      v98 = *(v0 + 688);
      if (v98 >= v51[2])
      {
        __break(1u);
        return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(isUniquelyReferenced_nonNull_native, v93, v94, v95, v96, v97);
      }

      v99 = *(v0 + 584);
      v100 = *(v0 + 576);
      v101 = *(v0 + 568);
      v102 = *(v0 + 328);
      v114 = *(v0 + 320);
      v116 = *(v0 + 336);
      v103 = *(v0 + 256);
      sub_10017F50C(*(v0 + 512), v51 + ((*(v0 + 748) + 32) & ~*(v0 + 748)) + *(v0 + 696) * v98 + *(*(v0 + 608) + 40));
      *(v103 + 16) = v51;
      swift_endAccess();
      *(v0 + 232) = v103;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      (*(v100 + 8))(v99, v101);
      (*(v102 + 8))(v116, v114);
LABEL_21:
      v104 = static MainActor.shared.getter();
      *(v0 + 728) = v104;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v106 = swift_task_alloc();
      *(v0 + 736) = v106;
      *v106 = v0;
      v106[1] = sub_1001723F8;
      isUniquelyReferenced_nonNull_native = *(v0 + 344);
      v96 = *(v0 + 352);
      v94 = &protocol witness table for MainActor;
      v95 = v0 + 208;
      v93 = v104;
      v97 = AssociatedConformanceWitness;

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(isUniquelyReferenced_nonNull_native, v93, v94, v95, v96, v97);
    }

LABEL_26:
    v107 = *(v0 + 256);
    isUniquelyReferenced_nonNull_native = sub_10017E430(v51);
    v51 = isUniquelyReferenced_nonNull_native;
    *(v107 + 16) = isUniquelyReferenced_nonNull_native;
    goto LABEL_19;
  }

  v4 = *(v0 + 440);
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 488);
  sub_1001746A8(v10);
  v11 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v46 = *(v0 + 672);
    v47 = *(v0 + 440);
    v48 = *(v0 + 424);
    v49 = *(v0 + 256);
    v50 = *(*(v0 + 488) + *(v11 + 48));
    *(v0 + 688) = v50;
    (*(v48 + 32))(v47);
    swift_getKeyPath();
    *(v0 + 200) = v49;
    v51 = (v49 + v46);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v52 = *(v49 + 16);
      if (v50 < *(v52 + 16))
      {
        v53 = *(v0 + 616);
        v54 = *(v0 + 432);
        v55 = *(v0 + 440);
        v56 = *(v0 + 416);
        v57 = *(v0 + 424);
        v58 = *(v0 + 408);
        v59 = *(v0 + 376);
        v60 = *(v0 + 384);
        v61 = *(v53 + 80);
        *(v0 + 748) = v61;
        v62 = *(v53 + 72);
        *(v0 + 696) = v62;
        v63 = v52 + ((v61 + 32) & ~v61) + v62 * v50;
        v64 = *(v60 + 16);
        *(v0 + 704) = v64;
        *(v0 + 712) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v64(v58, v63, v59);
        (*(v57 + 16))(v54, v55, v56);
        *(v0 + 720) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100173120(uint64_t a1, uint64_t a2)
{
  v3 = v2[55];
  v4 = v2[52];
  v5 = v2[53];
  v6 = v2[51];
  v7 = v2[47];
  v8 = v2[48];
  v10 = v2[45];
  v9 = v2[46];
  v11 = v2[44];

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);

  v12 = v2[1];

  return v12();
}

uint64_t sub_100173358()
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100173410(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Attachment(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1001734FC()
{
  v1 = v0;
  v34 = type metadata accessor for DocumentResourceIdentifier();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  __chkstk_darwin(v35);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Attachment.UploadState(0);
  v7 = __chkstk_darwin(v6 - 8);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v39 = v1;
  v36 = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  v37 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(*(v1 + 16) + 16);
  if (v15)
  {
    v29 = (v2 + 32);
    v32 = (v2 + 8);
    while (1)
    {
      swift_getKeyPath();
      v38 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v1 + 16);
      if (v15 > *(v16 + 16))
      {
        __break(1u);
        return;
      }

      --v15;
      v17 = type metadata accessor for Attachment(0);
      sub_10017F384(v16 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v15 + *(v17 + 40), v13, type metadata accessor for Attachment.UploadState);
      v18 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
      v19 = *(v18 - 8);
      (*(v19 + 56))(v11, 1, 1, v18);
      v20 = *(v35 + 48);
      sub_10017F384(v13, v5, type metadata accessor for Attachment.UploadState);
      sub_10017F384(v11, &v5[v20], type metadata accessor for Attachment.UploadState);
      v21 = *(v19 + 48);
      if (v21(v5, 1, v18) == 1)
      {
        break;
      }

      v22 = v33;
      sub_10017F384(v5, v33, type metadata accessor for Attachment.UploadState);
      if (v21(&v5[v20], 1, v18) == 1)
      {
        sub_10017F3EC(v11, type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v13, type metadata accessor for Attachment.UploadState);
        (*v32)(v22, v34);
LABEL_4:
        sub_10000F500(v5, &qword_100265F30, &qword_1001DF118);
        goto LABEL_5;
      }

      v23 = &v5[v20];
      v24 = v22;
      v25 = v30;
      v26 = v34;
      (*v29)(v30, v23, v34);
      v31 = static DocumentResourceIdentifier.== infix(_:_:)();
      v27 = *v32;
      (*v32)(v25, v26);
      sub_10017F3EC(v11, type metadata accessor for Attachment.UploadState);
      sub_10017F3EC(v13, type metadata accessor for Attachment.UploadState);
      v27(v24, v26);
      sub_10017F3EC(v5, type metadata accessor for Attachment.UploadState);
      if (v31)
      {
        goto LABEL_12;
      }

LABEL_5:
      if (!v15)
      {
        return;
      }
    }

    sub_10017F3EC(v11, type metadata accessor for Attachment.UploadState);
    sub_10017F3EC(v13, type metadata accessor for Attachment.UploadState);
    if (v21(&v5[v20], 1, v18) == 1)
    {
      sub_10017F3EC(v5, type metadata accessor for Attachment.UploadState);
LABEL_12:
      sub_100173BA0(v15);
      goto LABEL_5;
    }

    goto LABEL_4;
  }
}

BOOL sub_100173A94(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UTType();
    ++v2;
    sub_10017B970(&qword_100265F28, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void sub_100173BA0(int64_t a1)
{
  v2 = v1;
  v66 = type metadata accessor for Attachment(0);
  v4 = *(v66 - 8);
  v5 = __chkstk_darwin(v66);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v59 - v8;
  v10 = __chkstk_darwin(v7);
  v67 = &v59 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v70[0] = v1;
  v18 = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v1[2] + 16) <= a1)
  {
    return;
  }

  swift_getKeyPath();
  v70[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = v1[2];
    if (*(v19 + 16) > a1)
    {
      v64 = v18;
      v63 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v20 = *(v4 + 72);
      v61 = a1;
      v62 = v20;
      sub_10017F384(v19 + v63 + v20 * a1, v16, type metadata accessor for Attachment);
      if (qword_10025A6D8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_5:
  v21 = type metadata accessor for Logger();
  v22 = sub_10000F34C(v21, qword_100276EF0);
  sub_10017F384(v16, v14, type metadata accessor for Attachment);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v60 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59 = v17;
    v28 = v9;
    v29 = v16;
    v30 = v27;
    v70[0] = v27;
    *v26 = 136642819;
    v31 = sub_100178CB8();
    v33 = v32;
    sub_10017F3EC(v14, type metadata accessor for Attachment);
    v34 = sub_10002510C(v31, v33, v70);

    *(v26 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "removing attachment: %{sensitive}s", v26, 0xCu);
    sub_10000F4B4(v30);
    v16 = v29;
    v9 = v28;
  }

  else
  {

    sub_10017F3EC(v14, type metadata accessor for Attachment);
  }

  v35 = v66;
  v36 = &v16[*(v66 + 20)];
  v37 = v36[1];
  if (!v37)
  {
    URL.stopAccessingSecurityScopedResource()();
    swift_getKeyPath();
    v68[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000081F8((v2 + 3), v70, &unk_10025B1C0, &unk_1001CFA90);
    if (v71)
    {
      sub_100028458(v70, v68);
      sub_10000F500(v70, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v68, v69);
      sub_10000A9C0(0, 1, 0, 1, 0, 1, 1, 0, *&v16[*(v35 + 44)], *&v16[*(v35 + 44) + 8]);
      goto LABEL_14;
    }

LABEL_17:
    sub_10000F500(v70, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_19;
  }

  v66 = *v36;
  v38 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  v70[0] = 0;
  v42 = [v38 removeItemAtURL:v40 error:v70];

  v43 = v70[0];
  if ((v42 & 1) == 0)
  {
    v45 = v70[0];
    v46 = _convertNSErrorToError(_:)();

    v59 = v46;
    swift_willThrow();
    v47 = v65;
    sub_10017F384(v16, v65, type metadata accessor for Attachment);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70[0] = v60;
      *v50 = 136315395;
      *(v50 + 4) = sub_10002510C(v66, v37, v70);
      *(v50 + 12) = 2085;
      v51 = URL.path(percentEncoded:)(1);
      sub_10017F3EC(v47, type metadata accessor for Attachment);
      v52 = sub_10002510C(v51._countAndFlagsBits, v51._object, v70);

      *(v50 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "failed to remove photo %s at %{sensitive}s", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10017F3EC(v47, type metadata accessor for Attachment);
    }

    goto LABEL_19;
  }

  swift_getKeyPath();
  v68[0] = v2;
  v44 = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8((v2 + 3), v70, &unk_10025B1C0, &unk_1001CFA90);
  if (!v71)
  {
    goto LABEL_17;
  }

  sub_100028458(v70, v68);
  sub_10000F500(v70, &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874(v68, v69);
  sub_10000A9C0(0, 1, 0, 1, 1, 0, 0, 1, *&v16[*(v35 + 44)], *&v16[*(v35 + 44) + 8]);
LABEL_14:
  sub_10000F4B4(v68);
LABEL_19:
  v53 = v63;
  swift_getKeyPath();
  v70[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v54 = v67;
  sub_100179C8C(v61, v67);
  sub_10017F3EC(v54, type metadata accessor for Attachment);
  swift_endAccess();
  v70[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_10017F384(v16, v9, type metadata accessor for Attachment);
  swift_getKeyPath();
  v70[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v55 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[8] = v55;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = sub_10017D948(0, v55[2] + 1, 1, v55, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
    v2[8] = v55;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    v55 = sub_10017D948((v57 > 1), v58 + 1, 1, v55, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
  }

  v55[2] = v58 + 1;
  sub_10003D784(v9, v55 + v53 + v58 * v62);
  v2[8] = v55;
  swift_endAccess();
  v70[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_10017F3EC(v16, type metadata accessor for Attachment);
}

uint64_t sub_1001746A8@<X0>(char *a1@<X8>)
{
  v3 = sub_10000341C(&qword_100265F68, &qword_1001DF1D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  if (*(v1 + 32) != 1)
  {
    v13 = *v1;
    v14 = sub_10017CF90(*v1, &qword_100265F68, &qword_1001DF1D0);
    v15 = *(v1 + 8);
    if (v15 == v14)
    {
LABEL_15:
      *(v1 + 32) = 1;
      v20 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
      return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      sub_10017CF1C(v15, (v13 & 0xC000000000000001) == 0, v13, &qword_100265F68, &qword_1001DF1D0);
      if ((v13 & 0xC000000000000001) != 0)
      {
        result = sub_10017D018(v15, v13);
        if (v5 != 8)
        {
          goto LABEL_21;
        }

        v25 = result;
        (*(v4 + 16))(v7, &v25, v3);
        result = swift_unknownObjectRelease();
LABEL_12:
        if (__OFADD__(v15, 1))
        {
          __break(1u);
        }

        else
        {
          *(v1 + 8) = v15 + 1;
          v16 = *(v4 + 32);
          result = v16(v9, v7, v3);
          v17 = *(v1 + 16);
          v18 = *(v1 + 24);
          v19 = *(v17 + 16);
          if (v18 == v19)
          {
            (*(v4 + 8))(v9, v3);
            goto LABEL_15;
          }

          if (v18 < v19)
          {
            v21 = *(v17 + 8 * v18 + 32);
            *(v1 + 24) = v18 + 1;
            v22 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
            v23 = *(v22 + 48);
            v16(a1, v9, v3);
            *&a1[v23] = v21;
            return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_10017CF1C(v15, 1, v13, &qword_100265F68, &qword_1001DF1D0);
    }

    result = (*(v4 + 16))(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v3);
    goto LABEL_12;
  }

  v10 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 1, 1, v10);
}

uint64_t sub_100174A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for Attachment(0);
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v8;
  v4[48] = v7;

  return _swift_task_switch(sub_100174BD8, v8, v7);
}

uint64_t sub_100174BD8()
{
  v79 = v0;
  if (qword_10025A6D8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_10000F34C(v1, qword_100276EF0);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v78 = v5;
      *v4 = 136642819;
      v6 = Array.description.getter();
      v8 = sub_10002510C(v6, v7, &v78);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "adding files: %{sensitive}s", v4, 0xCu);
      sub_10000F4B4(v5);
    }

    v9 = *(v0 + 264);
    v10 = *(*(v0 + 240) + 16);
    *(v0 + 392) = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
    swift_beginAccess();
    v73 = v10;
    if (v10)
    {
      v11 = 0;
      v12 = *(v0 + 312);
      v13 = *(v0 + 280);
      v68 = *(v12 + 16);
      v64 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v66 = *(v0 + 240) + v64;
      v76 = *(v12 + 72);
      v63 = (v12 + 8);
      v71 = (v12 + 32);
      v72 = _swiftEmptyArrayStorage;
LABEL_10:
      v18 = *(v0 + 264);
      v68(*(v0 + 352), v66 + v11 * v76, *(v0 + 304));
      ++v11;
      swift_getKeyPath();
      *(v0 + 200) = v18;
      sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = *(v9 + 16);
      v20 = *(v19 + 16);

      v21 = 0;
      while (1)
      {
        if (v20 == v21)
        {
          v25 = *(v0 + 344);
          v24 = *(v0 + 352);
          v26 = *(v0 + 304);

          v27 = *v71;
          (*v71)(v25, v24, v26);
          v29 = v72;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163D24(0, v72[2] + 1, 1);
            v29 = v78;
          }

          v15 = v29[2];
          v14 = v29[3];
          if (v15 >= v14 >> 1)
          {
            sub_100163D24((v14 > 1), v15 + 1, 1);
            v29 = v78;
          }

          v16 = *(v0 + 344);
          v17 = *(v0 + 304);
          v29[2] = v15 + 1;
          v72 = v29;
          v27(v29 + v64 + v15 * v76, v16, v17);
LABEL_9:
          if (v11 == v73)
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        }

        if (v21 >= *(v19 + 16))
        {
          break;
        }

        v22 = *(v0 + 296);
        sub_10017F384(v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21++, v22, type metadata accessor for Attachment);
        v23 = static URL.== infix(_:_:)();
        sub_10017F3EC(v22, type metadata accessor for Attachment);
        if (v23)
        {
          (*v63)(*(v0 + 352), *(v0 + 304));

          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v72 = _swiftEmptyArrayStorage;
LABEL_18:
    v30 = v72[2];
    if (v30)
    {
      v31 = *(v0 + 312);
      v70 = *(v0 + 280);
      v78 = _swiftEmptyArrayStorage;
      sub_100163CE0(0, v30, 0);
      v32 = v78;
      v33 = *(v31 + 16);
      v31 += 16;
      v34 = v72 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v67 = *(v31 + 56);
      v69 = v33;
      v65 = (v31 - 8);
      do
      {
        v75 = v30;
        v77 = v32;
        v36 = *(v0 + 328);
        v35 = *(v0 + 336);
        v37 = *(v0 + 320);
        v38 = *(v0 + 304);
        v74 = *(v0 + 288);
        v69(v35, v34, v38);
        v69(v36, v35, v38);
        URL.deletingPathExtension()();
        v39 = URL.lastPathComponent.getter();
        v41 = v40;
        v42 = *v65;
        (*v65)(v37, v38);
        v43 = v36;
        v32 = v77;
        sub_1001762AC(v43, 0, 0, v39, v41, v74);
        sub_100177108();
        v42(v35, v38);
        v78 = v77;
        v45 = v77[2];
        v44 = v77[3];
        if (v45 >= v44 >> 1)
        {
          sub_100163CE0((v44 > 1), v45 + 1, 1);
          v32 = v78;
        }

        v46 = *(v0 + 288);
        v32[2] = v45 + 1;
        sub_10003D784(v46, v32 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v45);
        v34 += v67;
        --v30;
      }

      while (v75 != 1);
    }

    else
    {

      v32 = _swiftEmptyArrayStorage;
    }

    v47 = *(v0 + 256);
    *(v0 + 192) = v32;
    if (!v47)
    {
      break;
    }

    v48 = v32[2];
    if (!v48)
    {
      break;
    }

    v49 = 0;
    v51 = *(v0 + 272);
    v50 = *(v0 + 280);
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10017E430(v32);
      }

      if (v49 >= v32[2])
      {
        break;
      }

      *(v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49 + *(v51 + 44)) = *(v0 + 248);

      if (v48 == ++v49)
      {
        *(v0 + 192) = v32;
        goto LABEL_33;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_33:
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v78 = v55;
    *v54 = 136642819;

    v56 = Array.description.getter();
    v58 = v57;

    v59 = sub_10002510C(v56, v58, &v78);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "deduped files: %{sensitive}s", v54, 0xCu);
    sub_10000F4B4(v55);
  }

  swift_beginAccess();
  *(v0 + 400) = static MainActor.shared.getter();
  v61 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 408) = v61;
  *(v0 + 416) = v60;

  return _swift_task_switch(sub_1001753BC, v61, v60);
}

uint64_t sub_1001753BC()
{
  v1 = sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  v2 = static MainActor.shared.getter();
  v0[53] = v2;
  v3 = swift_task_alloc();
  v0[54] = v3;
  *(v3 + 16) = v0 + 24;
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_1001754D4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v1, &type metadata for () + 8, v2, &protocol witness table for MainActor, &unk_1001DA188, v3, v1);
}

uint64_t sub_1001754D4()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100175634, v3, v2);
}

uint64_t sub_100175634(uint64_t a1, uint64_t a2)
{

  swift_endAccess();
  v3 = *(v2 + 376);
  v4 = *(v2 + 384);

  return _swift_task_switch(sub_1001756A0, v3, v4);
}

uint64_t sub_1001756A0(uint64_t a1, uint64_t a2)
{
  v3 = v2[33];

  v4 = v2[24];
  swift_getKeyPath();
  v2[26] = v3;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[27] = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019E53C(v4);
  swift_endAccess();
  v2[28] = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v2[29] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8(v3 + 24, (v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v2[5])
  {
    v6 = v2[31];
    v5 = v2[32];
    sub_100028458((v2 + 2), (v2 + 7));
    sub_10000F500((v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v2 + 7, v2[10]);
    sub_10000A9C0(0, 1, *(v4 + 16), 0, 0, 1, 0, 1, v6, v5);
    sub_10000F4B4(v2 + 7);
  }

  else
  {
    sub_10000F500((v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v7 = v2[1];

  return v7(v4);
}

void sub_100175970(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v21 = v1;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v1 + 16);
  v19 = a1;

  v8 = sub_100173410(sub_10017F4DC, v18, v7);
  v10 = v9;

  if (v10)
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276EF0);
    (*(v4 + 16))(v6, a1, v3);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136642819;
      v16 = URL.path(percentEncoded:)(1);
      (*(v4 + 8))(v6, v3);
      v17 = sub_10002510C(v16._countAndFlagsBits, v16._object, &v20);

      *(v14 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "no attachment with ID %{sensitive}s to remove", v14, 0xCu);
      sub_10000F4B4(v15);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_100173BA0(v8);
  }
}

Swift::Int sub_100175C80()
{
  v1 = v0;
  v2 = type metadata accessor for DocumentResourceIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10017F384(v1, v8, type metadata accessor for Attachment.UploadState);
  v9 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_100175E9C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentResourceIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017F384(v1, v8, type metadata accessor for Attachment.UploadState);
  v9 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }
}

Swift::Int sub_100176090(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DocumentResourceIdentifier();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10017F384(v2, v9, type metadata accessor for Attachment.UploadState);
  v10 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001762AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v49 = a3;
  v53 = type metadata accessor for URL();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v11 - 8);
  v43 = &v40 - v12;
  v42 = type metadata accessor for URLResourceValues();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Attachment(0);
  v16 = v15[6];
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v50 = v16;
  v47 = v19;
  v48 = v17;
  v46 = v18 + 56;
  v19(a6 + v16, 1, 1);
  *(a6 + v15[9]) = 0;
  v20 = v15[10];
  v21 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  (*(*(v21 - 8) + 56))(a6 + v20, 1, 1, v21);
  v54 = v15;
  v22 = (a6 + v15[11]);
  v22->super.isa = 0;
  v22->_urlString = 0;
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = _CFURLCopySecurityScopeFromFileURL();

  if (v25)
  {

    URL.startAccessingSecurityScopedResource()();
  }

  v26 = v53;
  v27 = v54;
  v28 = a6 + v54[7];
  v29 = a1;
  v44 = *(v9 + 16);
  v44(a6, a1, v53);
  v30 = (a6 + v27[5]);
  v31 = v49;
  *v30 = a2;
  v30[1] = v31;
  sub_10000341C(&qword_100265F10, &unk_1001DF100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLContentTypeKey;
  v33 = NSURLFileSizeKey;
  v34 = NSURLContentTypeKey;
  sub_100007BA4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  URL.resourceValues(forKeys:)();

  *v28 = URLResourceValues.fileSize.getter();
  *(v28 + 8) = v35 & 1;
  v36 = v43;
  URLResourceValues.contentType.getter();
  (*(v9 + 8))(v29, v26);
  (*(v41 + 8))(v14, v42);
  result = sub_10017F2F8(v36, a6 + v50);
  v38 = (a6 + v54[8]);
  v39 = v52;
  *v38 = v51;
  v38[1] = v39;
  return result;
}

size_t sub_100176914()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.path.getter();
  String.utf8CString.getter();

  v4 = sandbox_extension_issue_file();

  if (v4)
  {
    result = strlen(v4);
    v6 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v1 + 104))(v3, enum case for Data.Deallocator.free(_:), v0);
      v7 = sub_10017F0C0(v4, v6, v3);
      v9 = v8;
      URL._bridgeToObjectiveC()(v10);
      v12 = v11;
      isa = Data._bridgeToObjectiveC()().super.isa;
      _CFURLAttachSecurityScopeToFileURL();

      return sub_10004DD08(v7, v9);
    }
  }

  else
  {
    sub_100124620();
    swift_allocError();
    *v14 = 0xD000000000000019;
    v14[1] = 0x80000001001E82C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100176B14()
{
  v1 = objc_allocWithZone(QLThumbnailGenerationRequest);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 initWithFileAtURL:v3 size:-1 scale:100.0 representationTypes:{100.0, 2.0}];
  v0[20] = v5;

  [v5 setIconMode:1];
  v6 = [objc_opt_self() sharedGenerator];
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100176CC4;
  v7 = swift_continuation_init();
  v0[17] = sub_10000341C(&qword_100265FF0, &qword_1001DF378);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100177030;
  v0[13] = &unk_100251748;
  v0[14] = v7;
  [v6 generateBestRepresentationForRequest:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100176CC4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100176E68;
  }

  else
  {
    v2 = sub_100176DD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100176DD4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = [v3 CGImage];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100176E68(uint64_t a1)
{
  v2 = v1[21];
  swift_willThrow();

  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276EF0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to generate thumbnail: %@", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  v11 = v1[1];

  return v11(0);
}

uint64_t sub_100177030(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100027874((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_100177108()
{
  v107 = type metadata accessor for URL.DirectoryHint();
  isa = v107[-1].isa;
  __chkstk_darwin(v107);
  v106 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UUID();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin(v2);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v105 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v91 - v10;
  __chkstk_darwin(v9);
  v13 = &v91 - v12;
  v14 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v14 - 8);
  v16 = &v91 - v15;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Attachment(0);
  if (*(v0 + *(v21 + 20) + 8))
  {
    v25 = Data.init(contentsOf:options:)();
    v27 = v26;
    v28 = objc_allocWithZone(UIImage);
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v28 initWithData:v29];

    sub_10004DD08(v25, v27);
    if (v30)
    {
      v107 = v30;
      v31 = sub_100070390(0, 1, 0, 1);

      v32 = UIImageJPEGRepresentation(v31, 0.75);
      if (v32)
      {
        v33 = v32;
        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        Data.write(to:options:)();

        sub_10004DD08(v34, v36);
        return;
      }
    }

    else
    {
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_10000F34C(v74, qword_100276EF0);
      v107 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v107, v75, "Failed to resize image.", v76, 2u);
      }
    }

    v22 = v107;
  }

  else
  {
    v98 = v8;
    v99 = v4;
    v100 = v13;
    v101 = v11;
    v23 = v106;
    v24 = v107;
    v97 = v21;
    sub_1000081F8(v0 + *(v21 + 24), v16, &qword_10025F4E0, &unk_1001D1110);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_10000F500(v16, &qword_10025F4E0, &unk_1001D1110);
      return;
    }

    v96 = v18;
    v37 = *(v18 + 32);
    v38 = v20;
    v37(v20, v16, v17);
    v39 = v17;
    if (qword_10025A780 != -1)
    {
      swift_once();
    }

    v40 = sub_100173A94(v20, qword_1002770A0);
    v41 = v24;
    v43 = isa;
    v42 = v105;
    v44 = v23;
    v45 = v103;
    v46 = v101;
    if (v40)
    {
      v47 = sub_1000ABBD4();
      if (v47)
      {
        v93 = v38;
        v94 = v39;
        v95 = v47;
        v91 = v0;
        v92 = objc_opt_self();
        v48 = [v92 defaultManager];
        v49 = [v48 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v99;
        UUID.init()();
        v51 = UUID.uuidString.getter();
        v53 = v52;
        (*(v102 + 8))(v50, v45);
        v108 = v51;
        v109 = v53;
        (*(v43 + 13))(v44, enum case for URL.DirectoryHint.inferFromPath(_:), v41);
        sub_10002AC34();
        v54 = v46;
        v55 = v100;
        URL.appending<A>(component:directoryHint:)();
        (*(v43 + 1))(v44, v41);

        v56 = *(v42 + 8);
        v56(v54, v5);
        v57 = [v92 defaultManager];
        URL._bridgeToObjectiveC()(v58);
        v60 = v59;
        v108 = 0;
        v61 = [v57 createDirectoryAtURL:v59 withIntermediateDirectories:1 attributes:0 error:&v108];

        v62 = v108;
        if (v61)
        {
          v63 = v91 + *(v97 + 32);
          v64 = *(v63 + 8);
          v108 = *v63;
          v109 = v64;
          v65 = v62;

          v66._countAndFlagsBits = 1717858350;
          v66._object = 0xE400000000000000;
          String.append(_:)(v66);
          v67 = v98;
          URL.appendingPathComponent(_:)();

          URL._bridgeToObjectiveC()(v68);
          v70 = v69;
          v108 = 0;
          v71 = v95;
          LODWORD(v64) = [v95 writeToURL:v69 options:0 error:&v108];

          v72 = v93;
          if (v64)
          {
            v73 = v108;

            v56(v55, v5);
            (*(v96 + 8))(v72, v94);
            (*(v105 + 40))(v91, v67, v5);
            return;
          }

          v84 = v108;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v56(v67, v5);
        }

        else
        {
          v83 = v108;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v72 = v93;
        }

        v56(v55, v5);
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_10000F34C(v85, qword_100276EF0);
        swift_errorRetain();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v88 = 138412290;
          swift_errorRetain();
          v90 = _swift_stdlib_bridgeErrorToNSError();
          *(v88 + 4) = v90;
          *v89 = v90;
          _os_log_impl(&_mh_execute_header, v86, v87, "Failed to write PDF to disk: %@", v88, 0xCu);
          sub_10000F500(v89, &unk_10025D580, &qword_1001CFA60);
        }

        else
        {
        }

        (*(v96 + 8))(v72, v94);
      }

      else
      {
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_10000F34C(v77, qword_100276EF0);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();
        v80 = os_log_type_enabled(v78, v79);
        v81 = v96;
        if (v80)
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Failed to convert to PDF.", v82, 2u);
        }

        (*(v81 + 8))(v38, v39);
      }
    }

    else
    {
      (*(v96 + 8))(v38, v39);
    }
  }
}

void sub_100177E0C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DocumentResourceIdentifier();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v5 - 8);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  type metadata accessor for URL();
  sub_10017B970(&qword_100265F08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v14 = type metadata accessor for Attachment(0);
  if (*(v1 + v14[5] + 8))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000081F8(v1 + v14[6], v13, &qword_10025F4E0, &unk_1001D1110);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    Hasher._combine(_:)(1u);
    sub_10017B970(&qword_100265F38, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
    dispatch thunk of Hashable.hash(into:)();
    (*(v8 + 8))(v10, v7);
  }

  v15 = v1 + v14[7];
  if (*(v15 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v15;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16);
  }

  String.hash(into:)();
  if (*(v1 + v14[9]))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGImage(0);
    sub_10017B970(&qword_100265F20, type metadata accessor for CGImage, &unk_1001CE6C4);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v17 = v25;
  sub_10017F384(v2 + v14[10], v25, type metadata accessor for Attachment.UploadState);
  v18 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v22;
    v19 = v23;
    v21 = v24;
    (*(v23 + 32))(v22, v17, v24);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v20, v21);
  }

  if (*(v2 + v14[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100178384@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_1001783F0()
{
  Hasher.init(_seed:)();
  sub_100177E0C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100178434(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100177E0C(v2);
  return Hasher._finalize()();
}

uint64_t sub_100178470(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int sub_1001784B4()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100178524(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10017859C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100178608(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001787C4, 0, 0);
}

uint64_t sub_1001787C4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  ReceivedTransferredFile.file.getter();
  URL.deletingPathExtension()();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v34 = URL.lastPathComponent.getter();
  v36 = v6;
  v5(v2, v3);
  ReceivedTransferredFile.file.getter();
  URL.pathExtension.getter();
  v37 = v5;
  v5(v2, v3);
  if (qword_10025A860 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v8 = v0[12];
  v35 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  sub_10000F34C(v35, qword_1002772C0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v8, v9);
  v0[2] = v14;
  v0[3] = v16;
  (*(v12 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
  sub_10002AC34();
  URL.appending<A>(path:directoryHint:)();
  (*(v12 + 8))(v11, v13);

  URL.appendingPathExtension(_:)();

  v37(v7, v35);
  v17 = [objc_opt_self() defaultManager];
  ReceivedTransferredFile.file.getter();
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v37(v7, v35);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v0[4] = 0;
  LODWORD(v16) = [v17 moveItemAtURL:v20 toURL:v22 error:v0 + 4];

  v24 = v0[4];
  v25 = v0[17];
  v26 = v0[15];
  if (v16)
  {
    v27 = v0[13];
    v28 = v0[5];
    (*(v0[14] + 16))(v0[17], v0[15], v27);
    v29 = v24;
    sub_1001762AC(v25, 0, 0xE000000000000000, v34, v36, v28);
    v37(v26, v27);
  }

  else
  {
    v31 = v0[13];
    v32 = v24;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v37(v26, v31);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_100178C08(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  static UTType.data.getter();
  return FileRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importing:)();
}

uint64_t sub_100178CB8()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v5._object = 0x80000001001E81A0;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  v6 = type metadata accessor for Attachment(0);
  v22 = *(v0 + v6[5]);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x657079547475202CLL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  sub_1000081F8(v0 + v6[6], v4, &qword_10025F4E0, &unk_1001D1110);
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_10000F500(v4, &qword_10025F4E0, &unk_1001D1110);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = UTType.identifier.getter();
    v10 = v13;
    (*(v9 + 8))(v4, v8);
    v11 = v12;
  }

  v14 = v10;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 0x203A657A6973202CLL;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16 = (v1 + v6[7]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *&v22 = v17;
  BYTE8(v22) = v16;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6F6C70557369202CLL;
  v19._object = 0xEE00203A64656461;
  String.append(_:)(v19);
  type metadata accessor for Attachment.UploadState(0);
  _print_unlocked<A, B>(_:_:)();
  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return v23;
}

id sub_100178F80()
{
  v0 = type metadata accessor for URL();
  sub_10002B2EC(v0, qword_1002772C0);
  v1 = sub_10000F34C(v0, qword_1002772C0);
  return sub_100178FCC(v1);
}

id sub_100178FCC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = [v13 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = 0xD000000000000016;
  v30 = 0x80000001001E2FC0;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_10002AC34();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v4, v1);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v16 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v29 = 0;
  LODWORD(v4) = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v29];

  v26 = v29;
  if (v4)
  {
    (*(v6 + 32))(v27, v11, v5);
    v20 = v26;

    return v20;
  }

  else
  {
    v22 = v26;
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v15(v11, v5);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v24._countAndFlagsBits = 0xD00000000000001DLL;
    v24._object = 0x80000001001E8180;
    String.append(_:)(v24);
    v28 = v23;
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001793BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1001794A8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_10017C1D8(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001795F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_100179658@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000081F8(v1 + 24, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_100179728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000081F8(v3 + 24, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001797F8(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v3, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_100179900(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000C38DC(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_100179964()
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100179A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_100179ADC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_10017C1D8(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100179C24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_100179C8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10017E430(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Attachment(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10003D784(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100179DAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for URL();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attachment(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *a1;
  swift_getKeyPath();
  v35 = a2;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(a2 + 16);
  if (v15 >= *(v16 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  sub_10017F384(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v14, type metadata accessor for Attachment);
  v17 = v33;
  sub_100176914();
  if (!v17)
  {
    (*(v32 + 16))(v7, v14, v5);
    v28 = v34;
    DocumentResource.init(url:)();
    sub_10017F3EC(v14, type metadata accessor for Attachment);
    v29 = 0;
    goto LABEL_10;
  }

  if (qword_10025A6D8 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_10000F34C(v18, qword_100276EF0);
  sub_10017F384(v14, v12, type metadata accessor for Attachment);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v21 = 136643075;
    v23 = sub_100178CB8();
    v25 = v24;
    sub_10017F3EC(v12, type metadata accessor for Attachment);
    v26 = sub_10002510C(v23, v25, &v36);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v27;
    *v22 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "failed to extend sandbox extension to %{sensitive}s: %@", v21, 0x16u);
    sub_10000F500(v22, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v33);
  }

  else
  {

    sub_10017F3EC(v12, type metadata accessor for Attachment);
  }

  sub_10017F3EC(v14, type metadata accessor for Attachment);
  v29 = 1;
  v28 = v34;
LABEL_10:
  v30 = type metadata accessor for DocumentResource();
  return (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
}