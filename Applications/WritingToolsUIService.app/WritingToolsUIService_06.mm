uint64_t sub_1000B044C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v2;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;
  sub_10015C9C8(0, 0, v7, &unk_1001D57C0, v11);

  v13 = *&v9[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate];
  if (v13)
  {
    result = [*&v9[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate] respondsToSelector:"updatePromptEntryState:"];
    if (result)
    {
      return [v13 updatePromptEntryState:2];
    }
  }

  return result;
}

uint64_t sub_1000B05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_1000B06A0, v8, v7);
}

uint64_t sub_1000B06A0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel;
  v0[14] = OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_compositionModel;
  v4 = *(v2 + v3);
  swift_getKeyPath();
  v0[5] = v4;
  sub_1000637F0();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000B11B4(v4 + v5, v1);

  v6 = type metadata accessor for CompositionModel.Session(0);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v1, 1, v6);
  sub_1000B1224(v1);
  v0[15] = *(v2 + v3);
  if (v4 == 1)
  {

    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1000B08D0;

    return sub_10007AB54();
  }

  else
  {

    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1000B0D58;
    v11 = v0[7];
    v10 = v0[8];

    return sub_10007C390(v11, v10);
  }
}

uint64_t sub_1000B08D0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000B0A14, v3, v2);
}

uint64_t sub_1000B0A14()
{
  v0[17] = *(v0[6] + v0[14]);

  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_1000B0AB4, v2, v1);
}

uint64_t sub_1000B0AB4()
{
  sub_10006CF60("Composition", 11, 2);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1000B0B60;
  v3 = v0[7];
  v2 = v0[8];

  return sub_10007DE34(v3, v2);
}

uint64_t sub_1000B0B60()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1000B0C80, v3, v2);
}

uint64_t sub_1000B0C80(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_1000B0CEC, v3, v4);
}

uint64_t sub_1000B0CEC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000B0D58()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000B132C, v3, v2);
}

id sub_1000B0ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptEntryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B0F94()
{
  v1 = *(*v0 + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate);
  if (v1 && ([v1 respondsToSelector:"updatePromptEntryState:"] & 1) != 0)
  {

    [v1 updatePromptEntryState:3];
  }
}

uint64_t sub_1000B102C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002600A8, &unk_1001D56D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B109C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B10E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_1000B05C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000B11B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1224(uint64_t a1)
{
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B128C()
{
  result = qword_10025AD00;
  if (!qword_10025AD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025AD00);
  }

  return result;
}

unint64_t sub_1000B1330()
{
  result = sub_1000058D8(_swiftEmptyArrayStorage);
  qword_1002770A8 = result;
  return result;
}

uint64_t sub_1000B13B8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000B1480(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B1594()
{
  swift_getKeyPath();
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  swift_getKeyPath();
  sub_10000F3F4(v2, v3, v4, v1);
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5 != 1)
  {
    sub_1000278C0(v2, v3, v4, v1);
    return 0;
  }

  if (v1)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  sub_1000278C0(v2, v3, v4, 0);
  if (v2 > 5u)
  {
    if (v2 - 6 >= 2)
    {
      if (v2 == 8)
      {
        if (v8)
        {
          return (v6 >> 2) & 1;
        }
      }

      else if (v8)
      {
        return (v6 >> 3) & 1;
      }
    }

    return 0;
  }

  if (v2 - 2 < 4)
  {
    return v8;
  }

  result = v8;
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000B18A4()
{
  swift_getKeyPath();
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 96) || *(v0 + 72) != 9)
  {
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent);
  }

  else
  {
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) == 1)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      return (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B1AB0()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000B1B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions);
}

uint64_t sub_1000B1C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions;
  if (sub_10017CD98(*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000B1D58(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31 = v1;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  v8 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    v31 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v2 + v7))
    {
      if (!a1)
      {
        return;
      }

      if (qword_10025A788 != -1)
      {
        swift_once();
      }

      v13 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_10019D084(0, v6);
      goto LABEL_29;
    }

    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v27 = &v27;
      __chkstk_darwin(KeyPath);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString))
    {
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v15 = v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16))
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
    }

    else
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      *(&v27 - 3) = 0;
      *(&v27 - 2) = 0;
      *(&v27 - 4) = v2;
      *(&v27 - 8) = 1;
      v31 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_100036BF0(0);
    v17 = *(v2 + 136);
    v28 = v4;
    if (v17)
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (*(v2 + 144))
      {
LABEL_20:
        v19 = swift_getKeyPath();
        __chkstk_darwin(v19);
        *(&v27 - 2) = v2;
        *(&v27 - 8) = 0;
        v31 = v2;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_25:
        v20 = v28;
        v21 = sub_100005B00(_swiftEmptyArrayStorage);
        sub_1000B3A6C(v21);
        v22 = sub_100005CE8(_swiftEmptyArrayStorage);
        sub_1000B3C40(v22);
        v23 = sub_100005D0C(_swiftEmptyArrayStorage);
        sub_1000B3E44(v23);
        if (qword_10025A788 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        v31 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = *(v2 + v7);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = [v24 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = qword_1002770A8;
        qword_1002770A8 = 0x8000000000000000;
        sub_1001A9BE8(v2, v6, isUniquelyReferenced_nonNull_native);
        (*(v29 + 8))(v6, v20);
        qword_1002770A8 = v30;
LABEL_29:
        swift_endAccess();
        return;
      }
    }

    else
    {
      if (sub_1000B1594())
      {
        sub_100037954();
      }

      *(v2 + 136) = 0;
      if (*(v2 + 144))
      {
        goto LABEL_20;
      }
    }

    *(v2 + 144) = 0;
    sub_1000374BC(0);
    goto LABEL_25;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v9 = v8;
  v10 = a1;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1000B24F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B2528(v1);
}

void sub_1000B2528(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_1000B1D58(v10);
}

uint64_t sub_1000B26F4()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000B27A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);
}

uint64_t sub_1000B2880(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task;
  if (!*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

void *sub_1000B2A24(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_1000B2ACC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1000B2C64()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
}

__n128 sub_1000B2D14@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000B2DD0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1000B2FA0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1000B3068@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_1000B313C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000B31AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000B3314()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);

  return v1;
}

uint64_t sub_1000B33D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_1000B3488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B34C8(v1, v2);
}

uint64_t sub_1000B34C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_1000B3658@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1000B3780(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
  v9 = v8;
  v10 = a1;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

uint64_t sub_1000B3914@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000B39EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000C38DC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000B3ABC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000B3B74@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_1000B3C7C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*sub_1000B3E80(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000B3DCC(v4);
  return sub_1000B3FB8;
}

void sub_1000B3FB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void *sub_1000B404C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1000B41E4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_1000B404C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_1000B4320(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000B4484(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000B454C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B46A0()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
}

uint64_t sub_1000B4748(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B4874(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v19[0] = v1;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 112) & 1) != 0 || (a1 & 1) == 0)
  {
    return result;
  }

  swift_getKeyPath();
  v19[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + 120);
  if (v5)
  {
    swift_getErrorValue();
    swift_errorRetain();
    v6._countAndFlagsBits = Error.localizedDescription.getter();
    v19[0] = 0xD000000000000011;
    v19[1] = 0x80000001001E5A30;
    String.append(_:)(v6);

    v8 = 0xD000000000000011;
    v7 = 0x80000001001E5A30;
    swift_getKeyPath();
    v18[0] = v1;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v2 + v9, v19, &unk_10025B1C0, &unk_1001CFA90);
    if (v19[3])
    {
      sub_100028458(v19, v18);
      sub_10000F500(v19, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v18, v18[3]);
      swift_getKeyPath();
      swift_errorRetain();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v2 + 96);
      if (v10 == 255)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v12 = *(v2 + 80);
      v11 = *(v2 + 88);
      v13 = *(v2 + 72);
      sub_10000F3F4(v13, v12, v11, *(v2 + 96));
      sub_10000DB64(v5, v13, v12, v11, v10);

      sub_1000278C0(v13, v12, v11, v10);

      sub_10000F4B4(v18);
      v8 = 0xD000000000000011;
    }

    else
    {

      sub_10000F500(v19, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  else
  {
    v7 = 0xEF73736563637553;
    v8 = 0x203A746C75736552;
  }

  swift_getKeyPath();
  v19[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v2 + 96);
  if (v14 == 255)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = sub_10006CA84(*(v2 + 72), *(v2 + 80), *(v2 + 88), v14);
  if ((v17 & 0x100) == 0)
  {
    sub_10006CC20(v15, v16, v17, v8, v7);
  }
}

uint64_t sub_1000B4C18()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_10015C9C8(0, 0, v4, &unk_1001D5968, v7);
}

uint64_t sub_1000B4D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for UUID();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1000B4E30, v7, v6);
}

uint64_t sub_1000B4E30()
{
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  v0[15] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[16] = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 104);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_29;
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v3;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_28:
  v38 = _CocoaArrayWrapper.endIndex.getter();
  v0[18] = v38;
  if (!v38)
  {
    goto LABEL_29;
  }

LABEL_4:
  v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID;
  v0[19] = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v0[20] = v4;

  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    v9 = v0[17];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v9 + 8 * v5 + 32);
    }

    v11 = v10;
    v0[21] = v10;
    v0[22] = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = v0[8];
    swift_getKeyPath();
    v0[6] = v12;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 104);
    v14 = v0[17];
    if (!v13)
    {
      break;
    }

    v15 = sub_10017BCDC(v14, v13);

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

    v16 = v0[20];
    v17 = v0[8];
    v18 = [v11 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v0[7] = v17;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v17 + v16);
    if (*(v19 + 16))
    {
      v20 = v0[11];

      v21 = sub_100005044(v20);
      if (v22)
      {
        v28 = v0[10];
        v27 = v0[11];
        v29 = v0[9];
        v30 = *(*(v19 + 56) + 8 * v21);
        v0[23] = v30;
        v31 = *(v28 + 8);
        v32 = v30;
        v31(v27, v29);

        v33 = [v11 range];
        v35 = v34;
        v36 = swift_task_alloc();
        v0[24] = v36;
        *v36 = v0;
        v36[1] = sub_1000B5348;

        return sub_1000C1DC0(v32, v33, v35, v11, 1);
      }
    }

    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];

    (*(v7 + 8))(v6, v8);
    v5 = v0[22];
    if (v5 == v0[18])
    {

      goto LABEL_30;
    }
  }

LABEL_17:

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000F34C(v23, qword_100276FE0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "contexts changed while sending to results to client - stopping", v26, 2u);
  }

LABEL_30:

  v39 = v0[1];

  return v39();
}

uint64_t sub_1000B5348()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1000B5468, v3, v2);
}

uint64_t sub_1000B5468()
{
  v2 = *(v1 + 184);

  v3 = *(v1 + 176);
  if (v3 == *(v1 + 144))
  {
LABEL_2:
  }

  else
  {
    while (1)
    {
      v7 = *(v1 + 136);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v7 + 8 * v3 + 32);
      }

      v0 = v8;
      *(v1 + 168) = v8;
      *(v1 + 176) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(v1 + 64);
      swift_getKeyPath();
      *(v1 + 48) = v9;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v9 + 104);
      v11 = *(v1 + 136);
      if (!v10)
      {
        break;
      }

      v12 = sub_10017BCDC(v11, v10);

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v13 = *(v1 + 160);
      v14 = *(v1 + 64);
      v15 = [v0 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v1 + 56) = v14;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v14 + v13);
      if (*(v16 + 16))
      {
        v17 = *(v1 + 88);

        v18 = sub_100005044(v17);
        if (v19)
        {
          v27 = *(v1 + 80);
          v26 = *(v1 + 88);
          v28 = *(v1 + 72);
          v29 = *(*(v16 + 56) + 8 * v18);
          *(v1 + 184) = v29;
          v30 = *(v27 + 8);
          v31 = v29;
          v30(v26, v28);

          v32 = [v0 range];
          v34 = v33;
          v35 = swift_task_alloc();
          *(v1 + 192) = v35;
          *v35 = v1;
          v35[1] = sub_1000B5348;

          return sub_1000C1DC0(v31, v32, v34, v0, 1);
        }
      }

      v5 = *(v1 + 80);
      v4 = *(v1 + 88);
      v6 = *(v1 + 72);

      (*(v5 + 8))(v4, v6);
      v3 = *(v1 + 176);
      if (v3 == *(v1 + 144))
      {
        goto LABEL_2;
      }
    }

LABEL_16:

    if (qword_10025A728 == -1)
    {
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
LABEL_17:
    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276FE0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "contexts changed while sending to results to client - stopping", v23, 2u);
    }
  }

  v24 = *(v1 + 8);

  return v24();
}

uint64_t sub_1000B58D0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_1000B59E4(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_10000341C(&qword_100260BD0, &qword_1001D5DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v29 = v2;
  v11 = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  v28 = v10;
  v27 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 96))
  {
    goto LABEL_11;
  }

  v12 = *(v2 + 72);
  v25 = v6;
  if (v12 == 6)
  {
    static RewriteType.takeaways()();
  }

  else
  {
    sub_100106D54(v12);
  }

  v13 = type metadata accessor for RewriteType();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  type metadata accessor for TextComposerClient();
  swift_allocObject();
  TextComposerClient.init()();
  v14 = [a1 attributedText];
  v26 = a1;
  [a1 range];
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  swift_getKeyPath();
  v29 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v2 + 24);
  if (!v17)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = [v17 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v18;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  v19 = dispatch thunk of TextComposerClient.actualRangeForRewritingOrReview(of:range:rewriteType:options:)();
  v21 = v20;

  if (sub_1000B1594())
  {
    [v26 setRange:{v19, v21}];
  }

  else
  {
    v22 = v26;
    v30.location = [v26 range];
    v31.location = v19;
    v31.length = v21;
    v23 = NSUnionRange(v30, v31);
    [v22 setRange:{v23.location, v23.length}];
  }

  sub_10000F500(v9, &qword_100260BD0, &qword_1001D5DA0);
  return 1;
}

uint64_t sub_1000B6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_1000B646C, v8, v7);
}

uint64_t sub_1000B646C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6538;

  return sub_1000C394C(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000B6538()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1000C5374;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1000B66CC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000B66CC(uint64_t a1, uint64_t a2)
{

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276FE0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Assigning error after 0.5s delay: %@", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  v9 = *(v2 + 16);

  swift_errorRetain();
  sub_100036BF0(v9);

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_1000B6880(char a1)
{
  *(v2 + 592) = v1;
  *(v2 + 720) = a1;
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = type metadata accessor for MainActor();
  *(v2 + 616) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 624) = v4;
  *(v2 + 632) = v3;

  return _swift_task_switch(sub_1000B695C, v4, v3);
}

uint64_t sub_1000B695C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (!Strong)
  {

LABEL_20:

    v34 = *(v0 + 8);

    return v34();
  }

  v2 = Strong;
  v3 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 648) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v0 + 432) = v3;
  *(v0 + 656) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *(v0 + 664) = v4;
  v5 = *(v3 + 80);
  *(v0 + 672) = v5;
  v6 = *(v3 + 88);
  *(v0 + 680) = v6;
  v7 = *(v3 + 96);
  *(v0 + 721) = v7;
  if (v7 == 255)
  {

    goto LABEL_19;
  }

  v44 = v6;
  if (*(v0 + 720) != 1)
  {
    v43 = v2;
    v10 = *(v0 + 592);
    swift_getKeyPath();
    *(v0 + 568) = v10;
    sub_10000F3F4(v4, v5, v6, v7);
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = sub_100138178(4uLL, *(v10 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions));

    sub_1000278C0(v4, v5, v6, v7);
    swift_getKeyPath();
    *(v0 + 560) = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
    if (*(v10 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
    {
      v12 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 544) = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v10 + v11);
      if (v13)
      {
        v14 = v13;
        if (sub_1000B1594())
        {
          if (v41)
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }

          [v43 writingToolsSession:v14 didReceiveAction:v15];
          v16 = sub_100005B00(_swiftEmptyArrayStorage);
          sub_1000B3A6C(v16);
          v17 = sub_100005CE8(_swiftEmptyArrayStorage);
          sub_1000B3C40(v17);
        }
      }

      v18 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 536) = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = *(v18 + 104);
      v20 = *(v0 + 600);
      v21 = *(v0 + 592);
      v22 = *(v0 + 720);
      v23 = UIAccessibilityAnnouncementNotification;

      v24 = [objc_opt_self() mainBundle];
      v46._object = 0x80000001001E5B00;
      v25._countAndFlagsBits = 0x6E69746972776552;
      v25._object = 0xE900000000000067;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v46._countAndFlagsBits = 0xD000000000000049;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v46);

      v27 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v23, v27);

      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v20, 1, 1, v28);

      v29 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = &protocol witness table for MainActor;
      *(v30 + 32) = v19;
      *(v30 + 40) = v21;
      *(v30 + 48) = v22;
      *(v30 + 49) = v41;
      v31 = sub_10015C9C8(0, 0, v20, &unk_1001D5D68, v30);
      sub_1000B2880(v31, v32);
    }

    goto LABEL_19;
  }

  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 688) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v0 + 504) = v8;
  sub_10000F3F4(v4, v5, v6, v7);
  *(v0 + 696) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  *(v0 + 704) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  if (*(v8 + v9))
  {

    sub_1000278C0(v4, v5, v6, v7);
LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v42 = v9;
  if (sub_1000B1594())
  {
    v33 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
  }

  else
  {
    v33 = 0;
  }

  v36 = *(v0 + 592);
  sub_1000B2528(v33);
  swift_getKeyPath();
  *(v0 + 496) = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v8 + v42);
  if (v37)
  {
    [v37 setCompositionSessionType:{sub_100106E88(v4, v5, v44, v7)}];
  }

  v38 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 440) = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v8 + v42);
  *(v0 + 712) = v39;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 480;
  *(v0 + 24) = sub_1000B7100;
  v40 = swift_continuation_init();
  *(v0 + 216) = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_10019D8B8;
  *(v0 + 184) = &unk_10024D970;
  *(v0 + 192) = v40;
  [v2 willBeginWritingToolsSession:v39 requestContexts:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000B7100()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return _swift_task_switch(sub_1000B7208, v2, v1);
}

uint64_t sub_1000B7208()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 592);
  sub_100036728(*(v0 + 480));

  swift_getKeyPath();
  *(v0 + 448) = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v102 = v2;
  v4 = *(v2 + 104);
  if (!v4)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v4 >> 62)
  {
LABEL_28:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      v5 = *(v0 + 592);
      swift_getKeyPath();
      *(v0 + 456) = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = *(v102 + 104);
      if (v6)
      {
        if (v6 >> 62)
        {
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (v7)
          {
LABEL_7:
            swift_bridgeObjectRetain_n();
            v8 = 0;
            while (1)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_27;
                }

                v9 = *(v6 + 8 * v8 + 32);
              }

              v10 = v9;
              v11 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

              v12 = *(v0 + 592);
              swift_getKeyPath();
              *(v0 + 464) = v12;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v13 = *(v102 + 104);
              if (!v13)
              {
                v16 = *(v0 + 680);
                v17 = *(v0 + 672);
                v18 = *(v0 + 664);
                v19 = *(v0 + 721);

                sub_1000278C0(v18, v17, v16, v19);

                goto LABEL_20;
              }

              v14 = sub_10017BCDC(v6, v13);

              if ((v14 & 1) == 0)
              {
                break;
              }

              v15 = sub_1000B59E4(v10);

              if ((v15 & 1) == 0)
              {
                v28 = *(v0 + 680);
                v29 = *(v0 + 672);
                v30 = *(v0 + 664);
                v31 = *(v0 + 721);

                sub_1000278C0(v30, v29, v28, v31);
                swift_unknownObjectRelease();

                goto LABEL_51;
              }

              ++v8;
              if (v11 == v7)
              {

                goto LABEL_39;
              }
            }

            v20 = *(v0 + 680);
            v21 = *(v0 + 672);
            v22 = *(v0 + 664);
            v23 = *(v0 + 721);

            sub_1000278C0(v22, v21, v20, v23);
LABEL_20:
            swift_bridgeObjectRelease_n();
            if (qword_10025A728 != -1)
            {
              swift_once();
            }

            v24 = type metadata accessor for Logger();
            sub_10000F34C(v24, qword_100276FE0);
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&_mh_execute_header, v25, v26, "contexts changed while getting actual context range for rewrite - stopping", v27, 2u);
            }

            goto LABEL_50;
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7)
          {
            goto LABEL_7;
          }
        }

LABEL_39:
        v59 = *(v0 + 704);
        v60 = *(v0 + 592);
        swift_getKeyPath();
        *(v0 + 472) = v60;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v61 = *(v60 + v59);
        if (v61)
        {
          v62 = *(v0 + 592);
          swift_getKeyPath();
          *(v0 + 528) = v62;
          v63 = v61;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v64 = *(v102 + 104);
          if (v64)
          {

            v65 = sub_10017BCDC(v6, v64);

            if (v65 & 1) != 0 && (sub_1000B1594())
            {
              v66 = *(v0 + 680);
              v67 = *(v0 + 672);
              v68 = *(v0 + 664);
              v69 = *(v0 + 640);
              v70 = *(v0 + 721);

              sub_1000278C0(v68, v67, v66, v70);
              sub_1000081B0(0, &unk_100262480, WTContext_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v69 didBeginWritingToolsSession:v63 contexts:isa];

              [v69 writingToolsSession:v63 didReceiveAction:3];
LABEL_49:
              v87 = *(v0 + 600);
              v88 = *(v0 + 592);
              v89 = *(v0 + 720);
              v90 = UIAccessibilityAnnouncementNotification;
              v91 = [objc_opt_self() mainBundle];
              v105._object = 0x80000001001E5B00;
              v92._countAndFlagsBits = 0x6E69746972776552;
              v105._countAndFlagsBits = 0xD000000000000049;
              v92._object = 0xE900000000000067;
              v93._countAndFlagsBits = 0;
              v93._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v105);

              v94 = String._bridgeToObjectiveC()();

              UIAccessibilityPostNotification(v90, v94);

              v95 = type metadata accessor for TaskPriority();
              (*(*(v95 - 8) + 56))(v87, 1, 1, v95);

              v96 = static MainActor.shared.getter();
              v97 = swift_allocObject();
              *(v97 + 16) = v96;
              *(v97 + 24) = &protocol witness table for MainActor;
              *(v97 + 32) = v6;
              *(v97 + 40) = v88;
              *(v97 + 48) = v89;
              *(v97 + 49) = 0;
              v98 = sub_10015C9C8(0, 0, v87, &unk_1001D5D68, v97);
              sub_1000B2880(v98, v99);
LABEL_50:
              swift_unknownObjectRelease();
              goto LABEL_51;
            }
          }
        }

        v72 = *(v0 + 592);
        swift_getKeyPath();
        *(v0 + 488) = v72;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v73 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
        swift_beginAccess();
        sub_1000081F8(v72 + v73, v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
        if (!*(v0 + 368))
        {
          v83 = *(v0 + 680);
          v84 = *(v0 + 672);
          v85 = *(v0 + 664);
          v86 = *(v0 + 721);

          sub_1000278C0(v85, v84, v83, v86);
          sub_10000F500(v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
          goto LABEL_49;
        }

        v74 = *(v0 + 592);
        sub_100028458(v0 + 344, v0 + 304);
        sub_10000F500(v0 + 344, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874((v0 + 304), *(v0 + 328));
        swift_getKeyPath();
        *(v0 + 512) = v74;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v75 = *(v74 + 96);
        if (v75 != 255)
        {
          v101 = *(v0 + 680);
          v76 = *(v0 + 672);
          v77 = *(v0 + 664);
          v78 = *(v0 + 592);
          v79 = v78[10];
          v80 = v78[11];
          v81 = v78[9];
          v82 = *(v0 + 721);
          sub_10000F3F4(v81, v79, v80, v75);

          sub_1000278C0(v77, v76, v101, v82);
          swift_getKeyPath();
          *(v0 + 520) = v78;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          sub_10000C830(v81, v79, v80, v75, v6, *(v78 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent));
          sub_1000278C0(v81, v79, v80, v75);
          sub_10000F4B4((v0 + 304));
          goto LABEL_49;
        }

LABEL_57:
        __break(1u);
        return result;
      }

      goto LABEL_55;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (qword_10025A728 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000F34C(v32, qword_100276FE0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error in rewriting: Unable to retrieve text from selection", v35, 2u);
  }

  v36 = *(v0 + 592);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v38;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x80000001001E5B50;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  v39 = objc_allocWithZone(NSError);
  v40 = String._bridgeToObjectiveC()();
  v41 = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = [v39 initWithDomain:v40 code:1 userInfo:v41];

  sub_100036BF0(v42);
  swift_getKeyPath();
  *(v0 + 552) = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v36 + v43, v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
  if (*(v0 + 288))
  {
    v44 = *(v0 + 592);
    sub_100028458(v0 + 264, v0 + 224);
    sub_10000F500(v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874((v0 + 224), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 576) = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = *(v44 + 120);
    swift_getKeyPath();
    *(v0 + 584) = v44;
    v103 = v45;
    swift_errorRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = *(v44 + 96);
    if (v46 == 255)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v47 = *(v0 + 680);
    v48 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 592);
    v51 = v50[10];
    v52 = v50[11];
    v53 = v50[9];
    v54 = *(v0 + 721);
    sub_10000F3F4(v53, v51, v52, v46);

    sub_1000278C0(v49, v48, v47, v54);
    sub_10000DB64(v103, v53, v51, v52, v46);
    swift_unknownObjectRelease();
    sub_1000278C0(v53, v51, v52, v46);

    sub_10000F4B4((v0 + 224));
  }

  else
  {
    v55 = *(v0 + 680);
    v56 = *(v0 + 672);
    v57 = *(v0 + 664);
    v58 = *(v0 + 721);

    sub_1000278C0(v57, v56, v55, v58);
    swift_unknownObjectRelease();
    sub_10000F500(v0 + 264, &unk_10025B1C0, &unk_1001CFA90);
  }

LABEL_51:

  v100 = *(v0 + 8);

  return v100();
}

uint64_t sub_1000B7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 345) = a7;
  *(v7 + 344) = a6;
  *(v7 + 200) = a4;
  *(v7 + 208) = a5;
  v8 = type metadata accessor for UUID();
  *(v7 + 216) = v8;
  *(v7 + 224) = *(v8 - 8);
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 248) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 256) = v10;
  *(v7 + 264) = v9;

  return _swift_task_switch(sub_1000B8058, v10, v9);
}

uint64_t sub_1000B8058()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 104) = v1;
  v3 = v0 + 104;
  *(v0 + 272) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v0 + 280) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 104);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_9:

    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F34C(v8, qword_100276FE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "contexts changed while attemping to run rewrite in contexts - stopping", v11, 2u);
    }

    goto LABEL_85;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + 200);

  LOBYTE(v5) = sub_10017BCDC(v5, v4);

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = *(v0 + 208);
  if (*(v6 + 112) == 1)
  {
    sub_10003689C(1u);
    v7 = 0;
    if (*(v0 + 344))
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v6;
    *(v12 + 24) = 1;
    *(v0 + 112) = v6;
    v7 = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = v0 + 104;

    if (*(v0 + 344))
    {
LABEL_6:
      *(v0 + 288) = 0;
      if (!v2)
      {
        goto LABEL_81;
      }

      goto LABEL_72;
    }
  }

  v13 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 120) = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v1 + 104);
  if (!v15)
  {
LABEL_106:
    __break(1u);
    return result;
  }

  if (v15 >> 62)
  {
    goto LABEL_101;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_17:
    v78 = v7;
    v79 = v2;
    if (v16 < 1)
    {
      goto LABEL_104;
    }

    v83 = (v3 - 56);
    v84 = (v3 - 88);
    v17 = *(v0 + 224);
    v18 = *(v0 + 208);
    v19 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
    v88 = v15 & 0xC000000000000001;
    v85 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount;
    v20 = v15;

    swift_beginAccess();
    v21 = v20;
    v2 = 0;
    v90 = (v17 + 8);
    v86 = v16;
    v87 = v20;
    v80 = v18;
    while (1)
    {
      if (v88)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v21 + 8 * v2 + 32);
      }

      v26 = *(v0 + 208);
      v91 = v25;
      v27 = [v25 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 128) = v26;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = *(v18 + v19);
      if (!*(v28 + 16))
      {
        goto LABEL_33;
      }

      v29 = *(v0 + 240);

      v30 = sub_100005044(v29);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = *(v0 + 240);
      v33 = *(v0 + 216);
      v34 = *(*(v28 + 56) + 8 * v30);
      v35 = *v90;

      v89 = v35;
      v35(v32, v33);

      if (v34 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v0 + 104;
      v18 = v80;
LABEL_34:
      v37 = *(v0 + 208);
      swift_getKeyPath();
      *(v0 + 136) = v37;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((v36 & 0x8000000000000000) != 0 || v36 < *(v18 + v85))
      {
        goto LABEL_23;
      }

      v38 = [v91 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = sub_1000B3E80(v84);
      v81 = sub_1000B9198(v83);
      if (*v39)
      {
        v7 = v39;
        v40 = *(v0 + 208);
        swift_getKeyPath();
        *(v0 + 144) = v40;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v41 = *(v18 + v85);
        if (v41 < 0)
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        if (v41)
        {
          if (*v7 >> 62)
          {
            v15 = _CocoaArrayWrapper.endIndex.getter();
            v42 = -v15;
            if (__OFSUB__(0, v15))
            {
              goto LABEL_92;
            }
          }

          else
          {
            v15 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v42 = -v15;
            if (__OFSUB__(0, v15))
            {
              goto LABEL_92;
            }
          }

          v43 = -v41;
          if (v42 <= 0 && v42 > v43)
          {
            __break(1u);
LABEL_101:
            v76 = v15;
            result = _CocoaArrayWrapper.endIndex.getter();
            v15 = v76;
            v16 = result;
            if (!result)
            {
              goto LABEL_68;
            }

            goto LABEL_17;
          }

          v44 = v15 - v41;
          if (__OFADD__(v15, v43))
          {
            goto LABEL_93;
          }

          v3 = v41;
          if (v15 < v44)
          {
            goto LABEL_94;
          }

          if (v44 < 0)
          {
            goto LABEL_95;
          }

          v45 = *v7;
          v46 = *v7 >> 62;
          if (v46)
          {
            v77 = v15;
            v52 = _CocoaArrayWrapper.endIndex.getter();
            v15 = v77;
            if (v52 < v77)
            {
LABEL_66:
              __break(1u);
LABEL_67:

              v7 = v78;
              v2 = v79;
              goto LABEL_68;
            }
          }

          else if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
          {
            goto LABEL_66;
          }

          v47 = __OFSUB__(0, v3);
          v3 = -v3;
          if (v47)
          {
            goto LABEL_96;
          }

          if (v46)
          {
            v48 = v15;
            v49 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v48 = v15;
            v49 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v47 = __OFADD__(v49, v3);
          v3 += v49;
          if (v47)
          {
            goto LABEL_97;
          }

          v50 = *v7;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v7 = v50;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if ((v50 & 0x8000000000000000) == 0 && (v50 & 0x4000000000000000) == 0)
            {
              v22 = v48;
              if (v3 > *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_20;
              }

LABEL_21:
              sub_1001AE48C(v44, v22, 0);
              v3 = v0 + 104;
              goto LABEL_22;
            }
          }

          else if ((v50 & 0x8000000000000000) == 0 && (v50 & 0x4000000000000000) == 0)
          {
LABEL_20:
            *v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v22 = v48;
            goto LABEL_21;
          }

          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_20;
        }
      }

LABEL_22:
      v23 = *(v0 + 232);
      v24 = *(v0 + 216);
      v81();
      v89(v23, v24);
      v82();
LABEL_23:
      ++v2;

      v21 = v87;
      if (v86 == v2)
      {
        goto LABEL_67;
      }
    }

LABEL_33:
    v89 = *v90;
    (*v90)(*(v0 + 240), *(v0 + 216));
    v36 = 0;
    goto LABEL_34;
  }

LABEL_68:
  v53 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 152) = v53;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 160) = v53;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v54 = *(v53 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);
  v55 = __CFADD__(v54, 1);
  v56 = v54 + 1;
  if (v55)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v57 = *(v0 + 208);
  *(v53 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = v56;
  *(v0 + 168) = v57;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (*(v57 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount))
  {
    v58 = *(v0 + 208);
    swift_getKeyPath();
    v59 = swift_task_alloc();
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v0 + 176) = v58;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 288) = v7;
  if (!v2)
  {
    goto LABEL_81;
  }

LABEL_72:
  v60 = *(v0 + 200);
  if (v60 >> 62)
  {
LABEL_98:
    result = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 296) = result;
    if (!result)
    {
      goto LABEL_81;
    }
  }

  else
  {
    result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 296) = result;
    if (!result)
    {
LABEL_81:
      v65 = *(v0 + 208);

      if (*(v65 + 112))
      {
        v66 = *(v0 + 208);
        swift_getKeyPath();
        v67 = swift_task_alloc();
        *(v67 + 16) = v66;
        *(v67 + 24) = 0;
        *(v0 + 184) = v66;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        sub_10003689C(0);
      }

      v68 = UIAccessibilityAnnouncementNotification;
      v69 = [objc_opt_self() mainBundle];
      v93._object = 0x80000001001E5BA0;
      v70._object = 0x80000001001E5B80;
      v93._countAndFlagsBits = 0xD000000000000043;
      v70._countAndFlagsBits = 0xD000000000000012;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v93);

      v9 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v68, v9);
LABEL_85:

      v72 = *(v0 + 8);

      return v72();
    }
  }

  v61 = *(v0 + 200);
  v62 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
  *(v0 + 304) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v0 + 312) = v62;
  if ((v61 & 0xC000000000000001) == 0)
  {
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v61 + 32);
      goto LABEL_78;
    }

    goto LABEL_105;
  }

  v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v62 = *(v0 + 312);
LABEL_78:
  *(v0 + 320) = v63;
  *(v0 + 328) = 1;
  v64 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 192) = v64;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v64 + v62) && (sub_1000B1594() & 1) != 0)
  {

    goto LABEL_81;
  }

  v73 = swift_task_alloc();
  *(v0 + 336) = v73;
  *v73 = v0;
  v73[1] = sub_1000B8D1C;
  v74 = *(v3 + 241);
  v75 = *(v3 + 240);

  return sub_1000B9328(v63, v75, v74, 0);
}

uint64_t sub_1000B8D1C()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_1000B8E3C, v3, v2);
}

void sub_1000B8E3C()
{
  v1 = *(v0 + 320);
  v2 = static Task<>.isCancelled.getter();

  if (v2)
  {

LABEL_10:

    v14 = *(v0 + 8);

    v14();
    return;
  }

  v3 = *(v0 + 328);
  if (v3 == *(v0 + 296))
  {
LABEL_4:
    v4 = *(v0 + 208);

    if (*(v4 + 112))
    {
      v5 = *(v0 + 208);
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      *(v0 + 184) = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10003689C(0);
    }

    v9 = UIAccessibilityAnnouncementNotification;
    v10 = [objc_opt_self() mainBundle];
    v22._object = 0x80000001001E5BA0;
    v11._object = 0x80000001001E5B80;
    v22._countAndFlagsBits = 0xD000000000000043;
    v11._countAndFlagsBits = 0xD000000000000012;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v22);

    v13 = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v9, v13);

    goto LABEL_10;
  }

  v7 = *(v0 + 200);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v8 = *(v7 + 8 * v3 + 32);
  }

  v15 = v8;
  *(v0 + 320) = v8;
  *(v0 + 328) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 192) = v17;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v17 + v16) && (sub_1000B1594() & 1) != 0)
  {

    goto LABEL_4;
  }

  v18 = swift_task_alloc();
  *(v0 + 336) = v18;
  *v18 = v0;
  v18[1] = sub_1000B8D1C;
  v19 = *(v0 + 345);
  v20 = *(v0 + 344);

  sub_1000B9328(v15, v20, v19, 0);
}

uint64_t (*sub_1000B9198(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000C3E04(v3, v8);
  return sub_1000B92B0;
}

void sub_1000B92B0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1000B9328(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 1912) = v4;
  *(v5 + 1904) = a4;
  *(v5 + 2737) = a3;
  *(v5 + 2736) = a2;
  *(v5 + 1896) = a1;
  sub_10000341C(&qword_100260B70, &qword_1001D5B00);
  *(v5 + 1920) = swift_task_alloc();
  sub_10000341C(&qword_100260B78, &qword_1001D5B08);
  *(v5 + 1928) = swift_task_alloc();
  sub_10000341C(&qword_10025F550, &qword_1001D5B10);
  *(v5 + 1936) = swift_task_alloc();
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  sub_10000341C(&qword_100260B80, &qword_1001D5B18);
  *(v5 + 1968) = swift_task_alloc();
  v6 = sub_10000341C(&qword_100260B88, &qword_1001D5B20);
  *(v5 + 1976) = v6;
  *(v5 + 1984) = *(v6 - 8);
  *(v5 + 1992) = swift_task_alloc();
  sub_10000341C(&qword_100260B90, &qword_1001D5B28);
  *(v5 + 2000) = swift_task_alloc();
  sub_10000341C(&qword_100260B98, &qword_1001D5B30);
  *(v5 + 2008) = swift_task_alloc();
  v7 = type metadata accessor for SummarizationClient.TextAssistantSummarizationOptions.Source();
  *(v5 + 2016) = v7;
  *(v5 + 2024) = *(v7 - 8);
  *(v5 + 2032) = swift_task_alloc();
  v8 = type metadata accessor for SummarizationClient.TextAssistantSummarizationOptions();
  *(v5 + 2040) = v8;
  *(v5 + 2048) = *(v8 - 8);
  *(v5 + 2056) = swift_task_alloc();
  v9 = sub_10000341C(&qword_100260BA0, &qword_1001D5B38);
  *(v5 + 2064) = v9;
  *(v5 + 2072) = *(v9 - 8);
  *(v5 + 2080) = swift_task_alloc();
  v10 = sub_10000341C(&qword_100260BA8, &unk_1001D5B40);
  *(v5 + 2088) = v10;
  *(v5 + 2096) = *(v10 - 8);
  *(v5 + 2104) = swift_task_alloc();
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  *(v5 + 2112) = swift_task_alloc();
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  v11 = sub_10000341C(&qword_100260BB0, &unk_1001D5B50);
  *(v5 + 2136) = v11;
  *(v5 + 2144) = *(v11 - 8);
  *(v5 + 2152) = swift_task_alloc();
  v12 = type metadata accessor for RewriteType();
  *(v5 + 2160) = v12;
  *(v5 + 2168) = *(v12 - 8);
  *(v5 + 2176) = swift_task_alloc();
  v13 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  *(v5 + 2184) = v13;
  *(v5 + 2192) = *(v13 - 8);
  *(v5 + 2200) = swift_task_alloc();
  v14 = sub_10000341C(&qword_100260BB8, &qword_1001D5B60);
  *(v5 + 2208) = v14;
  *(v5 + 2216) = *(v14 - 8);
  *(v5 + 2224) = swift_task_alloc();
  v15 = sub_10000341C(&qword_100260BC0, &unk_1001D5B68);
  *(v5 + 2232) = v15;
  *(v5 + 2240) = *(v15 - 8);
  *(v5 + 2248) = swift_task_alloc();
  *(v5 + 2256) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v5 + 2264) = v16;
  *(v5 + 2272) = *(v16 - 8);
  *(v5 + 2280) = swift_task_alloc();
  *(v5 + 2288) = swift_task_alloc();
  *(v5 + 2296) = type metadata accessor for MainActor();
  *(v5 + 2304) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 2312) = v18;
  *(v5 + 2320) = v17;

  return _swift_task_switch(sub_1000B99FC, v18, v17);
}

uint64_t sub_1000B99FC()
{
  v1 = v0;
  sub_100038160();
  v19 = *(v0 + 1912);
  swift_getKeyPath();
  *(v1 + 2328) = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  *(v1 + 1464) = v19;
  *(v1 + 2336) = sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 72);
  *(v1 + 2344) = v20;
  v21 = *(v19 + 80);
  *(v1 + 2352) = v21;
  v22 = *(v19 + 88);
  *(v1 + 2360) = v22;
  if (*(v19 + 96) > 1u || *(v19 + 96))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (((1 << v20) & 0x33F) == 0)
  {
    if (v20 == 6)
    {
      v67 = *(v1 + 1912);
      v68 = *(v1 + 1896);
      sub_10000F3F4(v20, v21, v22, 0);
      v69 = [v68 attributedText];
      v70 = [v68 range];
      v72 = [v69 attributedSubstringFromRange:{v70, v71}];

      v73 = [v72 string];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      *(v1 + 2632) = v76;

      sub_1000B3184(v74, v76);
      *(v1 + 1320) = 0;
      *(v1 + 1328) = 0xE000000000000000;
      swift_getKeyPath();
      *(v1 + 2640) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
      *(v1 + 1400) = v67;
      *(v1 + 2648) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v77 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      *(v1 + 2656) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v67 + v77, v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v1 + 624))
      {
        v78 = *(v1 + 1912);
        sub_100028458(v1 + 600, v1 + 720);
        sub_10000F500(v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874((v1 + 720), *(v1 + 744));
        swift_getKeyPath();
        *(v1 + 1888) = v78;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v79 = *(v19 + 96);
        if (v79 == 255)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v80 = v1;
        v82 = *(v19 + 80);
        v81 = *(v19 + 88);
        v83 = *(v19 + 72);
        sub_10000F3F4(v83, v82, v81, *(v19 + 96));
        sub_10000C1CC(v83, v82, v81, v79, 0, 0, 0, 0, 2);
        sub_1000278C0(v83, v82, v81, v79);
        sub_10000F4B4((v80 + 720));
        v1 = v80;
      }

      else
      {
        sub_10000F500(v1 + 600, &unk_10025B1C0, &unk_1001CFA90);
      }

      v150 = *(v1 + 2032);
      v151 = *(v1 + 2024);
      v152 = *(v1 + 2016);
      v153 = *(v1 + 1912);
      type metadata accessor for SummarizationClient();
      swift_allocObject();
      SummarizationClient.init()();
      (*(v151 + 104))(v150, enum case for SummarizationClient.TextAssistantSummarizationOptions.Source.textAssistant(_:), v152);
      swift_getKeyPath();
      *(v1 + 1360) = v153;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v153 + 24);
      if (!v9)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      [v9 pid];
      ClientProcessInfo.init(processIdentifier:)();
      v161 = *(v1 + 2280);
      v162 = *(v1 + 2272);
      v163 = *(v1 + 2080);
      v164 = *(v1 + 2072);
      v185 = *(v1 + 2064);
      v165 = *(v1 + 2056);
      v166 = *(v1 + 2048);
      v180 = *(v1 + 2264);
      v182 = *(v1 + 2040);
      v167 = *(v1 + 2008);
      v168 = type metadata accessor for ClientProcessInfo();
      (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
      SummarizationClient.TextAssistantSummarizationOptions.init(source:useExternalIntelligence:originatingProcess:)();
      UUID.init()();
      UUID.uuidString.getter();
      v169 = *(v162 + 8);
      *(v1 + 2664) = v169;
      *(v1 + 2672) = (v162 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v169(v161, v180);
      SummarizationClient.partialSummaries(for:options:requestIdentifier:)();

      (*(v166 + 8))(v165, v182);
      AsyncThrowingStream.makeAsyncIterator()();
      (*(v164 + 8))(v163, v185);
      *(v1 + 2680) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString;
      *(v1 + 2688) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
      *(v1 + 2704) = 0;
      *(v1 + 2696) = 0xE000000000000000;
      v125 = static MainActor.shared.getter();
      *(v1 + 2712) = v125;
      v170 = swift_task_alloc();
      *(v1 + 2720) = v170;
      *v170 = v1;
      v170[1] = sub_1000BED34;
      v12 = *(v1 + 2088);
      v9 = *(v1 + 2000);
      v11 = &protocol witness table for MainActor;
      v13 = v1 + 1376;
    }

    else
    {
      v137 = *(v1 + 1912);
      sub_10000F3F4(v20, v21, v22, 0);
      sub_1000057A8(_swiftEmptyArrayStorage);

      sub_10000341C(&qword_10025D598, &qword_1001E1780);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_1001CF9D0;
      *(v138 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v138 + 40) = v139;
      swift_getKeyPath();
      *(v1 + 1352) = v137;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v137 + 24);
      if (!v9)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v140 = *(v1 + 1912);
      v141 = *(v1 + 1896);
      v142 = [v9 pid];
      *(v138 + 72) = &type metadata for Int32;
      *(v138 + 48) = v142;
      *(v1 + 2528) = sub_1000057A8(v138);
      swift_setDeallocating();
      sub_10000F500(v138 + 32, &qword_10025D5A0, &qword_1001D45E0);
      swift_deallocClassInstance();
      swift_getKeyPath();
      *(v1 + 2536) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
      *(v1 + 1368) = v140;
      *(v1 + 2544) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      v143 = v141;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v144 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      *(v1 + 2552) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v140 + v144, v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v1 + 704))
      {
        v145 = *(v1 + 1912);
        sub_100028458(v1 + 680, v1 + 480);
        sub_10000F500(v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874((v1 + 480), *(v1 + 504));
        swift_getKeyPath();
        *(v1 + 1576) = v145;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v146 = *(v19 + 96);
        if (v146 == 255)
        {
LABEL_98:
          __break(1u);
          return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
        }

        v148 = *(v19 + 80);
        v147 = *(v19 + 88);
        v149 = *(v19 + 72);
        sub_10000F3F4(v149, v148, v147, *(v19 + 96));
        sub_10000C1CC(v149, v148, v147, v146, 0, 0, 0, 0, 2);
        sub_1000278C0(v149, v148, v147, v146);
        sub_10000F4B4((v1 + 480));
      }

      else
      {
        sub_10000F500(v1 + 680, &unk_10025B1C0, &unk_1001CFA90);
      }

      v179 = *(v1 + 2224);
      v189 = *(v1 + 2216);
      v154 = *(v1 + 2200);
      v181 = *(v1 + 2192);
      v184 = *(v1 + 2184);
      v187 = *(v1 + 2208);
      v155 = *(v1 + 2176);
      v156 = *(v1 + 2168);
      v174 = *(v1 + 2152);
      v172 = *(v1 + 2160);
      v173 = *(v1 + 2144);
      v176 = *(v1 + 2136);
      v157 = *(v1 + 1896);
      type metadata accessor for TextComposerClient();
      swift_allocObject();
      TextComposerClient.init()();
      v158 = [v157 attributedText];
      [v157 range];
      sub_100106D54(7);

      dispatch thunk of TextComposerClient.streamForRewriting(of:range:rewriteType:options:)();

      (*(v156 + 8))(v155, v172);
      v159 = swift_task_alloc();
      *(v159 + 16) = v157;
      *(v159 + 24) = v154;
      sub_10000341C(&qword_100260BC8, &qword_1001D5CB8);
      (*(v173 + 104))(v174, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v176);
      AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

      (*(v181 + 8))(v154, v184);
      AsyncThrowingStream.makeAsyncIterator()();
      (*(v189 + 8))(v179, v187);
      *(v1 + 2560) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
      *(v1 + 2568) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString;
      *(v1 + 2576) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback;
      *(v1 + 2584) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
      *(v1 + 2592) = TCTextCompositionAssistantOptionKeyModelPromptLocale;
      *(v1 + 2600) = TCTextCompositionAssistantOptionKeyModelPromptTokenCount;
      v125 = static MainActor.shared.getter();
      *(v1 + 2608) = v125;
      v160 = swift_task_alloc();
      *(v1 + 2616) = v160;
      *v160 = v1;
      v160[1] = sub_1000BD554;
      v12 = *(v1 + 2232);
      v11 = &protocol witness table for MainActor;
      v9 = v1 + 88;
      v13 = v1 + 1392;
    }

LABEL_65:
    v10 = v125;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
  }

  v23 = *(v1 + 1912);
  v186 = v20;
  sub_10000F3F4(v20, v21, v22, 0);
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001CF9D0;
  *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v24 + 40) = v25;
  swift_getKeyPath();
  *(v1 + 1584) = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v23 + 24);
  if (!v9)
  {
    goto LABEL_93;
  }

  v26 = *(v1 + 1912);
  v27 = [v9 pid];
  *(v24 + 72) = &type metadata for Int32;
  *(v24 + 48) = v27;
  v28 = sub_1000057A8(v24);
  swift_setDeallocating();
  sub_10000F500(v24 + 32, &qword_10025D5A0, &qword_1001D45E0);
  swift_deallocClassInstance();
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  swift_getKeyPath();
  *(v1 + 2368) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *(v1 + 1600) = v26;
  *(v1 + 2376) = sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v177 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions;
  v32 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  v33 = 3;
  if ((v32 & 0xC) != 0)
  {
    v34 = 3;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34 | v32;
  if (v32)
  {
    v33 = v35;
  }

  *(v1 + 1048) = &type metadata for UInt;
  *(v1 + 1024) = v33;
  sub_100008150((v1 + 1024), (v1 + 992));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58((v1 + 992), v29, v31, isUniquelyReferenced_nonNull_native);

  if (v22)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    *(v1 + 856) = &type metadata for String;
    *(v1 + 832) = v21;
    *(v1 + 840) = v22;
    sub_100008150((v1 + 832), (v1 + 800));
    v40 = v186;
    sub_10000F3F4(v186, v21, v22, 0);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v28;
    v42 = v1;
    sub_1001A9A58((v1 + 800), v37, v39, v41);

    v43 = v191;
  }

  else
  {
    v43 = v28;
    v42 = v1;
    v40 = v186;
  }

  if (v40 - 2 >= 4 && v40)
  {
    v61 = v42;
    v62 = v43;
  }

  else
  {
    v61 = v42;
    v62 = v43;
    if ((*(v42 + 2736) & 1) == 0)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
      *(v42 + 920) = &type metadata for Int;
      *(v42 + 896) = sub_1000C42BC(0x7FFFFFFFFFFFFFFFuLL);
      sub_100008150((v42 + 896), (v42 + 864));
      v66 = swift_isUniquelyReferenced_nonNull_native();
      sub_1001A9A58((v42 + 864), v63, v65, v66);
    }
  }

  if (sub_1000B1594())
  {
    v84 = *(v61 + 1912);
    swift_getKeyPath();
    *(v61 + 1832) = v84;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v26 + v177) & 0x10) != 0)
    {
      v86 = 1;
    }

    else
    {
      v85 = *(v61 + 1912);
      swift_getKeyPath();
      *(v61 + 1840) = v85;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v86 = *(v85 + 64) ^ 1;
    }

    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
    *(v61 + 984) = &type metadata for Bool;
    *(v61 + 960) = v86 & 1;
    sub_100008150((v61 + 960), (v61 + 928));
    v90 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58((v61 + 928), v87, v89, v90);
  }

  *(v61 + 2384) = v62;
  v91 = *(v61 + 1912);
  swift_getKeyPath();
  *(v61 + 1624) = v91;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v92 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *(v61 + 2392) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v91 + v92, v61 + 400, &unk_10025B1C0, &unk_1001CFA90);
  if (*(v61 + 424))
  {
    v93 = *(v61 + 1912);
    sub_100028458(v61 + 400, v61 + 200);
    sub_10000F500(v61 + 400, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874((v61 + 200), *(v61 + 224));
    swift_getKeyPath();
    *(v61 + 1824) = v93;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v94 = *(v19 + 96);
    if (v94 == 255)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v95 = v61;
    v97 = *(v19 + 80);
    v96 = *(v19 + 88);
    v98 = *(v19 + 72);
    sub_10000F3F4(v98, v97, v96, *(v19 + 96));
    sub_10000C1CC(v98, v97, v96, v94, v21, v22, 0, 0, 2);
    sub_1000278C0(v98, v97, v96, v94);
    sub_10000F4B4((v95 + 200));
    v61 = v95;
  }

  else
  {
    sub_10000F500(v61 + 400, &unk_10025B1C0, &unk_1001CFA90);
  }

  if (*(v61 + 2737) != 1)
  {
    v115 = *(v61 + 1896);
    v114 = [v115 attributedText];
    [v115 range];
    v116 = v115;
    v113 = *(v61 + 1896);
    goto LABEL_64;
  }

  v99 = *(v61 + 1912);
  v100 = [*(v61 + 1896) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v61 + 1800) = v99;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v101 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v102 = *(v99 + v101);
  if (!*(v102 + 16))
  {
    goto LABEL_69;
  }

  v103 = *(v61 + 2288);

  v104 = sub_100005044(v103);
  if ((v105 & 1) == 0)
  {

LABEL_69:
    (*(*(v61 + 2272) + 8))(*(v61 + 2288), *(v61 + 2264));
    goto LABEL_70;
  }

  v106 = *(v61 + 2288);
  v107 = *(v61 + 2264);
  v108 = *(*(v102 + 56) + 8 * v104);
  v109 = *(*(v61 + 2272) + 8);

  v109(v106, v107);

  if (!(v108 >> 62))
  {
    v110 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v110)
    {
      goto LABEL_56;
    }

    goto LABEL_86;
  }

  v110 = _CocoaArrayWrapper.endIndex.getter();
  if (!v110)
  {
LABEL_86:

LABEL_70:
    sub_1000278C0(v186, v21, v22, 0);

    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_10000F34C(v127, qword_100276FE0);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "Error in follow-up rewriting: Asked to refine text, but current rewritten context is not specified", v130, 2u);
    }

    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1001CF9D0;
    *(v131 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v131 + 72) = &type metadata for String;
    *(v131 + 40) = v132;
    *(v131 + 48) = 0xD00000000000002BLL;
    *(v131 + 56) = 0x80000001001E5AD0;
    sub_1000057A8(v131);
    swift_setDeallocating();
    sub_10000F500(v131 + 32, &qword_10025D5A0, &qword_1001D45E0);
    swift_deallocClassInstance();
    v133 = objc_allocWithZone(NSError);
    v134 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v136 = [v133 initWithDomain:v134 code:1 userInfo:isa];

    swift_willThrow();
    v2 = sub_10019D93C(v136);
    v3 = *(v61 + 1912);
    if (v2)
    {
      swift_getKeyPath();
      *(v61 + 1640) = v3;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v3 + v4, v61 + 360, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v61 + 384))
      {
        v5 = *(v61 + 1912);
        sub_100028458(v61 + 360, v61 + 440);
        sub_10000F500(v61 + 360, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874((v61 + 440), *(v61 + 464));
        v6 = sub_1000971C0();
        v8 = v7;
        swift_getKeyPath();
        *(v61 + 1568) = v5;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = *(v5 + 96);
        if (v14 != 255)
        {
          v15 = *(v61 + 1912);
          v17 = v15[10];
          v16 = v15[11];
          v18 = v15[9];
          sub_10000F3F4(v18, v17, v16, v14);

          sub_10000E808(v6, v8, v18, v17, v16, v14);

          sub_1000278C0(v18, v17, v16, v14);

          sub_10000F4B4((v61 + 440));
          goto LABEL_28;
        }

        goto LABEL_91;
      }

      v59 = v61 + 360;
    }

    else
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100036BF0(v136);
      if (qword_10025A728 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000F34C(v44, qword_100276FE0);
      swift_errorRetain();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&_mh_execute_header, v45, v46, "Error occurred in rewriting: %@", v47, 0xCu);
        sub_10000F500(v48, &unk_10025D580, &qword_1001CFA60);
      }

      v50 = *(v61 + 1912);

      swift_getKeyPath();
      *(v61 + 1816) = v50;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v51 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v50 + v51, v61 + 520, &unk_10025B1C0, &unk_1001CFA90);
      if (*(v61 + 544))
      {
        v52 = *(v61 + 1912);
        sub_100028458(v61 + 520, v61 + 280);
        sub_10000F500(v61 + 520, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874((v61 + 280), *(v61 + 304));
        swift_getKeyPath();
        *(v61 + 1672) = v52;
        sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v53 = *(v52 + 96);
        if (v53 != 255)
        {
          v54 = *(v61 + 1912);
          v56 = v54[10];
          v55 = v54[11];
          v57 = v54[9];
          sub_10000F3F4(v57, v56, v55, v53);

          sub_10000DB64(v136, v57, v56, v55, v53);

          sub_1000278C0(v57, v56, v55, v53);

          sub_10000F4B4((v61 + 280));
          goto LABEL_28;
        }

        goto LABEL_92;
      }

      v59 = v61 + 520;
    }

    sub_10000F500(v59, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_28;
  }

LABEL_56:
  v111 = __OFSUB__(v110, 1);
  v9 = v110 - 1;
  if (v111)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v108 & 0xC000000000000001) != 0)
  {
LABEL_88:
    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_61;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v9 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v112 = *(v108 + 8 * v9 + 32);
LABEL_61:
  v113 = v112;

  if (sub_1000B59E4(v113))
  {
    v114 = [v113 attributedText];
    [v113 range];
LABEL_64:
    *(v61 + 2408) = v113;
    *(v61 + 2400) = v114;
    v117 = *(v61 + 2224);
    v190 = *(v61 + 2216);
    v188 = *(v61 + 2208);
    v118 = *(v61 + 2200);
    v119 = *(v61 + 2192);
    v183 = *(v61 + 2184);
    v120 = *(v61 + 2176);
    v121 = *(v61 + 2168);
    v171 = *(v61 + 2160);
    v122 = *(v61 + 2144);
    v175 = *(v61 + 2152);
    v178 = *(v61 + 2136);
    type metadata accessor for TextComposerClient();
    swift_allocObject();
    v123 = v113;
    TextComposerClient.init()();
    sub_100106D54(v186);
    dispatch thunk of TextComposerClient.streamForRewriting(of:range:rewriteType:options:)();

    (*(v121 + 8))(v120, v171);
    v124 = swift_task_alloc();
    *(v124 + 16) = v123;
    *(v124 + 24) = v118;
    sub_10000341C(&qword_100260BC8, &qword_1001D5CB8);
    (*(v122 + 104))(v175, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v178);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    (*(v119 + 8))(v118, v183);
    AsyncThrowingStream.makeAsyncIterator()();
    (*(v190 + 8))(v117, v188);
    *(v61 + 2416) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions;
    *(v61 + 2424) = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
    v125 = static MainActor.shared.getter();
    *(v61 + 2432) = v125;
    v126 = swift_task_alloc();
    *(v61 + 2440) = v126;
    *v126 = v61;
    v126[1] = sub_1000BB99C;
    v12 = *(v61 + 2232);
    v11 = &protocol witness table for MainActor;
    v9 = v61 + 16;
    v13 = v61 + 1648;
    goto LABEL_65;
  }

  sub_1000278C0(v186, v21, v22, 0);

LABEL_28:

  v60 = *(v61 + 8);

  return v60();
}

uint64_t sub_1000BB99C()
{
  v2 = *v1;
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_1000278C0(v5, v4, v3, 0);
    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000C1654;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000BBAFC;
  }

  return _swift_task_switch(v8, v7, v6);
}

void *sub_1000BBAFC()
{
  v144 = v0;
  v1 = *(v0 + 16);
  *(v0 + 2456) = v1;
  v3 = *(v0 + 24);
  length = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 2464) = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 2472) = *(v0 + 56);
  *(v0 + 2480) = v5;
  v6 = *(v0 + 80);
  *(v0 + 2488) = *(v0 + 72);
  *(v0 + 2496) = v6;
  if (!v1)
  {
    v13 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1656) = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString;
    v15 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    v16 = v15;
    if (!v15)
    {
      v17 = *(v0 + 1896);
      v18 = [v17 attributedText];
      v19 = [v17 range];
      v16 = [v18 attributedSubstringFromRange:{v19, v20}];
    }

    v21 = *(v0 + 1912);
    v22 = v15;
    sub_1000B2ACC(v16);
    swift_getKeyPath();
    *(v0 + 1664) = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v140 = v14;
    v141 = v13;
    result = *(v13 + v14);
    if (!result)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v23 = *(v0 + 2392);
    v24 = *(v0 + 1912);
    v25 = [result string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = _NSRange.init(_:)();
    v28 = v27;
    v30 = v29;

    sub_1000B2DD0(v26, v28, v30 & 1);
    swift_getKeyPath();
    *(v0 + 1680) = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v24 + v23, v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
    if (!*(v0 + 344))
    {
      sub_10000F500(v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
      v70 = v140;
      goto LABEL_54;
    }

    v31 = *(v0 + 1912);
    sub_100028458(v0 + 320, v0 + 240);
    sub_10000F500(v0 + 320, &unk_10025B1C0, &unk_1001CFA90);
    v132 = sub_100027874((v0 + 240), *(v0 + 264));
    swift_getKeyPath();
    *(v0 + 1704) = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v31 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v131 = *(v31 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1712) = v31;
    v138 = v32;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *(v31 + 96);
    if (v33 == 255)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v34 = *(v31 + 72);
    v35 = *(v31 + 80);
    v36 = *(v31 + 88);
    v37 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1720) = v37;
    v137 = v34;
    v136 = v36;
    sub_10000F3F4(v34, v35, v36, v33);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = *(v37 + 136);
    swift_getKeyPath();
    *(v0 + 1728) = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v141 + v140);
    if (!result)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v39 = v33;
    v126 = v38;
    v40 = *(v0 + 1912);
    v41 = [result string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    *(v0 + 1736) = v40;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
    swift_getKeyPath();
    *(v0 + 1744) = v40;
    v135 = v42;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1752) = v40;
    v128 = v43;
    v134 = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = *v132;
    v45 = qword_10025A6F8;
    v129 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
    v133 = v129;
    if (v45 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000F34C(v46, qword_100276F50);

    sub_10002879C(v34, v35, v136, v39);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    sub_1000278C0(v137, v35, v136, v39);
    v125 = v48;
    v130 = v44;
    v127 = v39;
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v49 = 136643075;
      *(v49 + 4) = sub_10002510C(v131, v138, &v143);
      *(v49 + 12) = 2081;
      sub_100106A3C(v137, v35, v136, v39);
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 key];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_10002510C(v52, v54, &v143);

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v47, v125, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    if (v126)
    {
      if (qword_10025A5D0 != -1)
      {
        swift_once();
      }

      v71 = qword_100276DE0;
      v56 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
      v73 = v56[2];
      v72 = v56[3];
      if (v73 >= v72 >> 1)
      {
        v56 = sub_10017D6C4((v72 > 1), v73 + 1, 1, v56);
      }

      v56[2] = v73 + 1;
      v56[v73 + 4] = v71;
      if ((v126 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v56 = _swiftEmptyArrayStorage;
      if ((v126 & 2) == 0)
      {
LABEL_36:
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1001CF9F0;
        if (qword_10025A528 != -1)
        {
          swift_once();
        }

        v78 = qword_100276D38;
        *(v77 + 32) = qword_100276D38;
        v79 = v78;
        v80 = String._bridgeToObjectiveC()();

        v81 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v77 + 40) = v80;
        *(v77 + 48) = v81;
        v82 = v81;
        v83 = sub_10000F174(v137, v35, v136, v127);
        sub_1000278C0(v137, v35, v136, v127);
        *(v77 + 56) = v83;
        if (qword_10025A530 != -1)
        {
          swift_once();
        }

        v84 = qword_100276D40;
        *(v77 + 64) = qword_100276D40;
        type metadata accessor for IAPayloadValue(0);
        v85 = v84;
        isa = Array._bridgeToObjectiveC()().super.isa;

        *(v77 + 72) = isa;
        v87 = sub_100005794(v77);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v88 = IAPayloadKeyWritingToolsResultText;
        v89 = String._bridgeToObjectiveC()();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v87;
        sub_1001A9924(v89, v88, isUniquelyReferenced_nonNull_native);

        v91 = v143;
        if (v135)
        {
          v92 = IAPayloadKeyWritingToolsInputLanguage;
          v93 = String._bridgeToObjectiveC()();
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_1001A9924(v93, v92, v94);

          v91 = v143;
        }

        if (v128)
        {
          v95 = qword_10025A5B8;
          v96 = v134;
          if (v95 != -1)
          {
            swift_once();
          }

          v97 = qword_100276DC8;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_1001A9924(v96, v97, v98);

          v91 = v143;
        }

        if (v129)
        {
          v99 = qword_10025A5C0;
          v100 = v133;
          if (v99 != -1)
          {
            swift_once();
          }

          v101 = qword_100276DD0;
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_1001A9924(v100, v101, v102);
        }

        v103 = *(v0 + 2272);
        v104 = *(v0 + 2264);
        v105 = *(v0 + 2128);
        v106 = IASignalWritingToolsResultsGenerated;
        v107 = IAChannelWritingTools;
        sub_1000081F8(v130 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v105, &unk_100262450, &qword_1001CFAA0);
        if ((*(v103 + 48))(v105, 1, v104) == 1)
        {
          sub_10000F500(*(v0 + 2128), &unk_100262450, &qword_1001CFAA0);
          v108 = 0;
        }

        else
        {
          v109 = *(v0 + 2272);
          v110 = *(v0 + 2264);
          v111 = *(v0 + 2128);
          UUID.uuidString.getter();
          (*(v109 + 8))(v111, v110);
          v108 = String._bridgeToObjectiveC()();
        }

        v70 = v140;
        v112 = objc_opt_self();
        type metadata accessor for IAPayloadKey(0);
        sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
        sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
        v113 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v112 sendSignal:v106 toChannel:v107 withNullableUniqueStringID:v108 withPayload:v113];

        sub_10000F4B4((v0 + 240));
LABEL_54:
        v114 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1688) = v114;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v115 = *(v141 + v70);
        *(v0 + 2512) = v115;
        if (v115)
        {
          v116 = *(v0 + 2360);
          v117 = *(v0 + 2352);
          v118 = *(v0 + 2344);
          v119 = *(v0 + 1896);
          v120 = v115;
          sub_1000278C0(v118, v117, v116, 0);

          v121 = [v119 range];
          v123 = v122;
          v124 = swift_task_alloc();
          *(v0 + 2520) = v124;
          *v124 = v0;
          v124[1] = sub_1000BD0C8;
          v65 = *(v0 + 1896);
          v66 = v120;
          v67 = v121;
          v68 = v123;
          v69 = 1;
          goto LABEL_56;
        }

        goto LABEL_60;
      }
    }

    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v74 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_10017D6C4(0, v56[2] + 1, 1, v56);
    }

    v76 = v56[2];
    v75 = v56[3];
    if (v76 >= v75 >> 1)
    {
      v56 = sub_10017D6C4((v75 > 1), v76 + 1, 1, v56);
    }

    v56[2] = v76 + 1;
    v56[v76 + 4] = v74;
    goto LABEL_36;
  }

  if (static Task<>.isCancelled.getter())
  {
    v7 = *(v0 + 2400);
    v139 = *(v0 + 2408);
    v8 = *(v0 + 2360);
    v9 = *(v0 + 2352);
    v10 = *(v0 + 2344);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));

    sub_1000278C0(v10, v9, v8, 0);

    v11 = *(v0 + 8);

    return v11();
  }

  location = v3;
  if (*(v0 + 2737) == 1)
  {
    v57 = *(v0 + 2416);
    v58 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1792) = v58;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!sub_100138178(4uLL, *(v58 + v57)))
    {
      v147.location = [*(v0 + 1896) range];
      v147.length = v59;
      v146.location = location;
      v146.length = length;
      v60 = NSIntersectionRange(v146, v147);
      location = v60.location;
      length = v60.length;
    }
  }

  v61 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1760) = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1768) = v61;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v62 = *(v61 + 136);
  v63 = v62 | v4;
  sub_100037118(v62 | v4);
  *(v61 + 136) = v63;
  *(v0 + 1776) = v61;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v64 = swift_task_alloc();
  *(v0 + 2504) = v64;
  *v64 = v0;
  v64[1] = sub_1000BCD30;
  v65 = *(v0 + 1896);
  v66 = v1;
  v67 = location;
  v68 = length;
  v69 = 0;
LABEL_56:

  return sub_1000C1DC0(v66, v67, v68, v65, v69);
}

uint64_t sub_1000BCD30()
{
  v1 = *v0;

  v2 = *(v1 + 2320);
  v3 = *(v1 + 2312);

  return _swift_task_switch(sub_1000BCE50, v3, v2);
}

uint64_t sub_1000BCE50()
{
  v1 = *(v0 + 1912);
  v2 = *(v1 + *(v0 + 2424));
  v3 = *(v0 + 2456);
  if (v2)
  {
    sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
    v4 = v3;
    v5 = v2;
    v6 = static NSObject.== infix(_:_:)();

    v3 = *(v0 + 2456);
    v1 = *(v0 + 1912);
    if (v6)
    {
      v7 = *(v0 + 2424);
      v8 = *(v1 + v7);
      *(v1 + v7) = v3;

      goto LABEL_7;
    }

    v9 = *(v0 + 2456);
  }

  else
  {
    v9 = v3;
  }

  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v3;
  *(v0 + 1784) = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  v11 = *(v0 + 2488);
  v12 = *(v0 + 2480);
  v13 = *(v0 + 1904);
  sub_1000B2F64(*(v0 + 2464), *(v0 + 2472));
  sub_1000B3184(v12, v11);
  if (v13)
  {
    v14 = [*(v0 + 1904) completedUnitCount];
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v15, v18, v16, v17);
    }

    [*(v0 + 1904) setCompletedUnitCount:v18];
  }

  v19 = *(v0 + 2496);
  v20 = *(v0 + 2456);
  v21 = sub_10009D508(v19);
  sub_1000B34C8(v21, v22);
  v23 = sub_10009D5C4(v19);
  sub_1000B371C(v23);
  v24 = sub_10009D5D0(v19);

  sub_1000B3758(v24);

  v25 = static MainActor.shared.getter();
  *(v0 + 2432) = v25;
  v26 = swift_task_alloc();
  *(v0 + 2440) = v26;
  *v26 = v0;
  v26[1] = sub_1000BB99C;
  v16 = *(v0 + 2232);
  v18 = &protocol witness table for MainActor;
  v14 = (v0 + 16);
  v17 = v0 + 1648;
  v15 = v25;

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v15, v18, v16, v17);
}

uint64_t sub_1000BD0C8()
{
  v1 = *v0;
  v2 = *(*v0 + 2512);

  v3 = *(v1 + 2320);
  v4 = *(v1 + 2312);

  return _swift_task_switch(sub_1000BD208, v4, v3);
}

uint64_t sub_1000BD208()
{
  v1 = *(v0 + 2400);

  v2 = *(v0 + 2280);
  v3 = *(v0 + 1912);
  v4 = [*(v0 + 1896) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 1336) = v3;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  swift_getKeyPath();
  *(v0 + 1880) = v3;
  v6 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1872) = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019D3DC(v5, v2);
  swift_endAccess();
  *(v0 + 1864) = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000BD554()
{
  v2 = *v1;
  *(*v1 + 2624) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_1000278C0(v5, v4, v3, 0);

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000C07B4;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000BD6C8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000BD6C8()
{
  v171 = v0;
  if (!*(v0 + 88))
  {
    v11 = *(v0 + 2552);
    v12 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1408) = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v12 + v11, v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
    if (!*(v0 + 664))
    {
      v44 = *(v0 + 2360);
      v45 = *(v0 + 2352);
      v46 = *(v0 + 2344);

      sub_1000278C0(v46, v45, v44, 0);

      sub_10000F500(v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
LABEL_63:
      v115 = *(v0 + 2280);
      v116 = *(v0 + 1912);
      v117 = [*(v0 + 1896) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 1336) = v116;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v118 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
      swift_getKeyPath();
      *(v0 + 1880) = v116;
      v119 = v118;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 1872) = v116;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_10019D3DC(v118, v115);
      swift_endAccess();
      *(v0 + 1864) = v116;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_64;
    }

    v13 = *(v0 + 1912);
    v14 = (v13 + *(v0 + 2568));
    sub_100028458(v0 + 640, v0 + 560);
    sub_10000F500(v0 + 640, &unk_10025B1C0, &unk_1001CFA90);
    v156 = sub_100027874((v0 + 560), *(v0 + 584));
    swift_getKeyPath();
    *(v0 + 1424) = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v14[1];
    v153 = *v14;
    swift_getKeyPath();
    *(v0 + 1432) = v13;
    v154 = v15;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v13 + 96);
    if (v20 == 255)
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v17, v18, v20, v19);
    }

    v21 = *(v13 + 72);
    v22 = *(v13 + 80);
    v23 = *(v13 + 88);
    v166 = *(v0 + 2584);
    v24 = *(v0 + 2360);
    v25 = *(v0 + 2352);
    v26 = *(v0 + 2344);
    v27 = *(v0 + 1912);
    v169 = v21;
    v159 = v23;
    v161 = v22;
    v164 = v20;
    sub_10000F3F4(v21, v22, v23, v20);

    sub_1000278C0(v26, v25, v24, 0);

    swift_getKeyPath();
    *(v0 + 1440) = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v149 = *(v27 + 136);
    swift_getKeyPath();
    *(v0 + 1448) = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v27 + v166);
    if (v28)
    {
      v29 = [v28 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v30;
    }

    else
    {
      v167 = 0;
    }

    v58 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1456) = v58;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
    swift_getKeyPath();
    *(v0 + 1344) = v58;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1472) = v58;
    v150 = v60;
    v158 = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v151 = *v156;
    v152 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
    v61 = qword_10025A6F8;
    v157 = v152;
    if (v61 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_10000F34C(v62, qword_100276F50);

    v63 = v169;
    sub_10002879C(v169, v161, v159, v164);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    sub_1000278C0(v169, v161, v159, v164);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v170[0] = swift_slowAlloc();
      *v66 = 136643075;
      *(v66 + 4) = sub_10002510C(v153, v154, v170);
      *(v66 + 12) = 2081;
      sub_100106A3C(v169, v161, v159, v164);
      v67 = String._bridgeToObjectiveC()();

      v68 = [v67 key];

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_10002510C(v69, v71, v170);

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v66, 0x16u);
      swift_arrayDestroy();

      v63 = v169;
    }

    if (v149)
    {
      if (qword_10025A5D0 != -1)
      {
        swift_once();
      }

      v74 = qword_100276DE0;
      v73 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
      v76 = v73[2];
      v75 = v73[3];
      if (v76 >= v75 >> 1)
      {
        v73 = sub_10017D6C4((v75 > 1), v76 + 1, 1, v73);
      }

      v73[2] = v76 + 1;
      v73[v76 + 4] = v74;
      v63 = v169;
      if ((v149 & 2) == 0)
      {
LABEL_44:
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_1001CF9F0;
        if (qword_10025A528 != -1)
        {
          swift_once();
        }

        v81 = qword_100276D38;
        *(v80 + 32) = qword_100276D38;
        v82 = v81;
        v83 = String._bridgeToObjectiveC()();

        v84 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v80 + 40) = v83;
        *(v80 + 48) = v84;
        v85 = v84;
        v86 = sub_10000F174(v63, v161, v159, v164);
        sub_1000278C0(v63, v161, v159, v164);
        *(v80 + 56) = v86;
        if (qword_10025A530 != -1)
        {
          swift_once();
        }

        v87 = qword_100276D40;
        *(v80 + 64) = qword_100276D40;
        type metadata accessor for IAPayloadValue(0);
        v88 = v87;
        isa = Array._bridgeToObjectiveC()().super.isa;

        *(v80 + 72) = isa;
        v43 = sub_100005794(v80);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v167)
        {
          v90 = IAPayloadKeyWritingToolsResultText;
          v91 = String._bridgeToObjectiveC()();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_1001A9924(v91, v90, isUniquelyReferenced_nonNull_native);

          v43 = v170[0];
        }

        if (v59)
        {
          v93 = IAPayloadKeyWritingToolsInputLanguage;
          v94 = String._bridgeToObjectiveC()();
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_1001A9924(v94, v93, v95);

          v43 = v170[0];
        }

        if (!v150)
        {
          goto LABEL_55;
        }

        v96 = qword_10025A5B8;
        v53 = v158;
        if (v96 == -1)
        {
LABEL_54:
          v97 = qword_100276DC8;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_1001A9924(v53, v97, v98);

          v43 = v170[0];
LABEL_55:
          if (v152)
          {
            v99 = qword_10025A5C0;
            v100 = v157;
            if (v99 != -1)
            {
              swift_once();
            }

            v101 = qword_100276DD0;
            v102 = swift_isUniquelyReferenced_nonNull_native();
            v170[0] = v43;
            sub_1001A9924(v100, v101, v102);
          }

          v103 = *(v0 + 2272);
          v104 = *(v0 + 2264);
          v105 = *(v0 + 2120);
          v106 = IASignalWritingToolsResultsGenerated;
          v107 = IAChannelWritingTools;
          sub_1000081F8(v151 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v105, &unk_100262450, &qword_1001CFAA0);
          if ((*(v103 + 48))(v105, 1, v104) == 1)
          {
            sub_10000F500(*(v0 + 2120), &unk_100262450, &qword_1001CFAA0);
            v108 = 0;
          }

          else
          {
            v109 = *(v0 + 2272);
            v110 = *(v0 + 2264);
            v111 = *(v0 + 2120);
            UUID.uuidString.getter();
            (*(v109 + 8))(v111, v110);
            v108 = String._bridgeToObjectiveC()();
          }

          v112 = *(v0 + 1896);
          v113 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
          sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
          v114 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v113 sendSignal:v106 toChannel:v107 withNullableUniqueStringID:v108 withPayload:v114];

          sub_10000F4B4((v0 + 560));
          goto LABEL_63;
        }

LABEL_98:
        swift_once();
        goto LABEL_54;
      }
    }

    else
    {
      v73 = _swiftEmptyArrayStorage;
      if ((v149 & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v77 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_10017D6C4(0, v73[2] + 1, 1, v73);
    }

    v79 = v73[2];
    v78 = v73[3];
    if (v79 >= v78 >> 1)
    {
      v73 = sub_10017D6C4((v78 > 1), v79 + 1, 1, v73);
    }

    v73[2] = v79 + 1;
    v73[v79 + 4] = v77;
    v63 = v169;
    goto LABEL_44;
  }

  v168 = *(v0 + 88);
  v165 = *(v0 + 96);
  v163 = *(v0 + 104);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v155 = v1;
    v157 = v4;
    v158 = v6;
    v160 = v3;
    v162 = v5;
    v31 = *(v0 + 2584);
    v32 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1480) = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 1488) = v32;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v33 = *(v32 + 136);
    v34 = v33 | v2;
    sub_100037118(v33 | v2);
    *(v32 + 136) = v34;
    *(v0 + 1496) = v32;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v35 = *(v32 + v31);
    if (v35)
    {
      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v36 = v168;
      v37 = v35;
      v38 = static NSObject.== infix(_:_:)();

      v39 = v6;
      if (v38)
      {
        v40 = *(v0 + 2584);
        v41 = *(v0 + 1912);
        v42 = *(v41 + v40);
        *(v41 + v40) = v168;

        v43 = *(v0 + 2624);
LABEL_14:
        v50 = *(v0 + 1912);
        v51 = v50 + *(v0 + 2560);
        if ((*(v51 + 16) & 1) == 0 && *v51 == v165 && *(v51 + 8) == v163)
        {
          *v51 = v165;
          *(v51 + 8) = v163;
          *(v51 + 16) = 0;
        }

        else
        {
          swift_getKeyPath();
          v52 = swift_task_alloc();
          *(v52 + 16) = v50;
          *(v52 + 24) = v165;
          *(v52 + 32) = v163;
          *(v52 + 40) = 0;
          *(v0 + 1512) = v50;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v53 = v160;
        v54 = v162;
        v55 = *(v0 + 2568);
        v56 = *(v0 + 1912);
        if (*(v56 + v55) != v155 || *(v56 + v55 + 8) != v157)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v122 = *(v0 + 1912);
            swift_getKeyPath();
            v123 = swift_task_alloc();
            v123[2] = v122;
            v123[3] = v155;
            v123[4] = v157;
            *(v0 + 1520) = v122;
            v53 = v160;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v54 = v162;

            goto LABEL_68;
          }

          v55 = *(v0 + 2568);
          v56 = *(v0 + 1912);
        }

        v57 = (v56 + v55);
        *v57 = v155;
        v57[1] = v157;

LABEL_68:
        v124 = *(v0 + 2576);
        v125 = *(v0 + 1912);
        if (*(v125 + v124) != v53 || *(v125 + v124 + 8) != v39)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v128 = v53;
            v53 = *(v0 + 1912);
            swift_getKeyPath();
            v129 = swift_task_alloc();
            v129[2] = v53;
            v129[3] = v128;
            v129[4] = v39;
            *(v0 + 1528) = v53;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v127 = *(v0 + 1904);
            if (!v127)
            {
              goto LABEL_77;
            }

LABEL_75:
            v130 = [v127 completedUnitCount];
            if (!__OFADD__(v130, 1))
            {
              [*(v0 + 1904) setCompletedUnitCount:v130 + 1];
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_98;
          }

          v124 = *(v0 + 2576);
          v125 = *(v0 + 1912);
        }

        v126 = (v125 + v124);
        *v126 = v53;
        v126[1] = v39;

        v127 = *(v0 + 1904);
        if (!v127)
        {
LABEL_77:
          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v54 + 16))
          {
            v133 = sub_10000511C(v131, v132);
            v135 = v134;

            if (v135)
            {
              sub_10002B0D0(*(v54 + 56) + 32 * v133, v0 + 1088);
              v136 = swift_dynamicCast();
              v137 = v136 == 0;
              if (v136)
              {
                v138 = *(v0 + 1304);
              }

              else
              {
                v138 = 0;
              }

              if (v137)
              {
                v139 = 0;
              }

              else
              {
                v139 = *(v0 + 1312);
              }

LABEL_87:
              sub_1000B34C8(v138, v139);
              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (*(v54 + 16))
              {
                v142 = sub_10000511C(v140, v141);
                v144 = v143;

                if (v144)
                {
                  sub_10002B0D0(*(v54 + 56) + 32 * v142, v0 + 1056);
                  sub_1000081B0(0, &qword_10025F4B8, NSNumber_ptr);
                  if (swift_dynamicCast())
                  {
                    v145 = *(v0 + 1552);
                  }

                  else
                  {
                    v145 = 0;
                  }

LABEL_94:
                  sub_1000B371C(v145);
                  v146 = sub_10009D5D0(v54);

                  sub_1000B3758(v146);

                  v147 = static MainActor.shared.getter();
                  *(v0 + 2608) = v147;
                  v148 = swift_task_alloc();
                  *(v0 + 2616) = v148;
                  *v148 = v0;
                  v148[1] = sub_1000BD554;
                  v20 = *(v0 + 2232);
                  v18 = &protocol witness table for MainActor;
                  v19 = v0 + 1392;
                  v16 = v0 + 88;
                  v17 = v147;

                  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v17, v18, v20, v19);
                }
              }

              else
              {
              }

              v145 = 0;
              goto LABEL_94;
            }
          }

          else
          {
          }

          v138 = 0;
          v139 = 0;
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v47 = v168;
      v39 = v6;
    }

    v43 = *(v0 + 2624);
    v48 = *(v0 + 1912);
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v48;
    *(v49 + 24) = v168;
    *(v0 + 1504) = v48;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_14;
  }

  v7 = *(v0 + 2360);
  v8 = *(v0 + 2352);
  v9 = *(v0 + 2344);
  v10 = *(v0 + 1896);
  (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));

  sub_1000278C0(v9, v8, v7, 0);

LABEL_64:

  v120 = *(v0 + 8);

  return v120();
}

uint64_t sub_1000BED34()
{
  v2 = *v1;
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_1000278C0(v5, v4, v3, 0);

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000C0F0C;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000BEEA8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000BEEA8()
{
  v201 = v0;
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1976);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 2704);
    v6 = *(v0 + 2696);
    (*(*(v0 + 2096) + 8))(*(v0 + 2104), *(v0 + 2088));
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = objc_allocWithZone(NSAttributedString);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 initWithString:v9];

      sub_1000B2ACC(v10);
      v11 = _NSRange.init(_:)();
      sub_1000B2DD0(v11, v13, v12 & 1);
    }

    v14 = *(v0 + 2656);
    v15 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1856) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v15 + v14, v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
    v16 = &qword_100260000;
    if (!*(v0 + 784))
    {
      v47 = *(v0 + 2360);
      v48 = *(v0 + 2352);
      v49 = *(v0 + 2344);

      sub_1000278C0(v49, v48, v47, 0);

      sub_10000F500(v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
LABEL_60:
      v120 = *(v0 + 2280);
      v121 = *(v0 + 1912);
      v122 = [*(v0 + 1896) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      *(v0 + 1336) = v121;
      sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v123 = *(v121 + v16[45]);
      swift_getKeyPath();
      *(v0 + 1880) = v121;
      v124 = v123;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 1872) = v121;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_10019D3DC(v123, v120);
      swift_endAccess();
      *(v0 + 1864) = v121;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_61;
    }

    v17 = *(v0 + 1912);
    sub_100028458(v0 + 760, v0 + 160);
    sub_10000F500(v0 + 760, &unk_10025B1C0, &unk_1001CFA90);
    v192 = sub_100027874((v0 + 160), *(v0 + 184));
    swift_getKeyPath();
    *(v0 + 1848) = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
    v189 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1808) = v17;
    v190 = v18;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v17 + 96);
    if (v23 != 255)
    {
      v24 = *(v17 + 72);
      v25 = *(v17 + 80);
      v26 = *(v17 + 88);
      v27 = *(v0 + 2360);
      v28 = *(v0 + 2352);
      v29 = *(v0 + 2344);
      v30 = *(v0 + 1912);
      v199 = v24;
      v194 = v26;
      v195 = v25;
      v196 = v23;
      sub_10000F3F4(v24, v25, v26, v23);

      sub_1000278C0(v29, v28, v27, 0);

      swift_getKeyPath();
      *(v0 + 1696) = v30;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v186 = *(v30 + 136);
      swift_getKeyPath();
      *(v0 + 1632) = v30;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
      if (v31)
      {
        v32 = [v31 string];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v197 = v33;
      }

      else
      {
        v197 = 0;
      }

      v60 = *(v0 + 1912);
      swift_getKeyPath();
      *(v0 + 1616) = v60;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      KeyPath = *(v60 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
      swift_getKeyPath();
      *(v0 + 1608) = v60;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v61 = *(v60 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
      swift_getKeyPath();
      *(v0 + 1592) = v60;
      v187 = v61;
      v193 = v61;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v62 = *(v60 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
      v188 = *v192;
      v63 = qword_10025A6F8;
      v191 = v62;
      if (v63 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_10000F34C(v64, qword_100276F50);

      v65 = v199;
      sub_10002879C(v199, v195, v194, v196);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();

      sub_1000278C0(v199, v195, v194, v196);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v200[0] = swift_slowAlloc();
        *v68 = 136643075;
        *(v68 + 4) = sub_10002510C(v189, v190, v200);
        *(v68 + 12) = 2081;
        sub_100106A3C(v199, v195, v194, v196);
        v185 = v62;
        v69 = String._bridgeToObjectiveC()();

        v70 = [v69 key];

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = KeyPath;
        v74 = v73;

        v75 = sub_10002510C(v71, v74, v200);
        KeyPath = v72;

        *(v68 + 14) = v75;
        v62 = v185;
        _os_log_impl(&_mh_execute_header, v66, v67, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v68, 0x16u);
        swift_arrayDestroy();

        v65 = v199;
      }

      LOBYTE(v76) = v186;
      if ((v186 & 1) == 0)
      {
        v77 = _swiftEmptyArrayStorage;
        if ((v186 & 2) == 0)
        {
LABEL_40:
          sub_10000341C(&unk_10025F490, &unk_1001CFA50);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1001CF9F0;
          if (qword_10025A528 != -1)
          {
            swift_once();
          }

          v85 = qword_100276D38;
          *(v84 + 32) = qword_100276D38;
          v86 = v85;
          v87 = String._bridgeToObjectiveC()();

          v88 = IAPayloadKeyWritingToolsFeatureDetails;
          *(v84 + 40) = v87;
          *(v84 + 48) = v88;
          v89 = v88;
          v90 = sub_10000F174(v65, v195, v194, v196);
          sub_1000278C0(v65, v195, v194, v196);
          *(v84 + 56) = v90;
          if (qword_10025A530 != -1)
          {
            swift_once();
          }

          v91 = qword_100276D40;
          *(v84 + 64) = qword_100276D40;
          type metadata accessor for IAPayloadValue(0);
          v92 = v91;
          isa = Array._bridgeToObjectiveC()().super.isa;

          *(v84 + 72) = isa;
          v94 = sub_100005794(v84);
          swift_setDeallocating();
          sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v197)
          {
            v95 = IAPayloadKeyWritingToolsResultText;
            v96 = String._bridgeToObjectiveC()();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_1001A9924(v96, v95, isUniquelyReferenced_nonNull_native);

            v94 = v200[0];
          }

          if (KeyPath)
          {
            v98 = IAPayloadKeyWritingToolsInputLanguage;
            v99 = String._bridgeToObjectiveC()();
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_1001A9924(v99, v98, v100);

            v94 = v200[0];
          }

          if (v187)
          {
            v101 = qword_10025A5B8;
            v102 = v193;
            if (v101 != -1)
            {
              swift_once();
            }

            v103 = qword_100276DC8;
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_1001A9924(v102, v103, v104);

            v94 = v200[0];
          }

          if (v62)
          {
            v105 = qword_10025A5C0;
            v106 = v191;
            if (v105 != -1)
            {
              swift_once();
            }

            v107 = qword_100276DD0;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_1001A9924(v106, v107, v108);
          }

          v109 = *(v0 + 2272);
          v110 = *(v0 + 2264);
          v111 = *(v0 + 2112);
          v112 = IASignalWritingToolsResultsGenerated;
          v113 = IAChannelWritingTools;
          sub_1000081F8(v188 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v111, &unk_100262450, &qword_1001CFAA0);
          if ((*(v109 + 48))(v111, 1, v110) == 1)
          {
            sub_10000F500(*(v0 + 2112), &unk_100262450, &qword_1001CFAA0);
            v114 = 0;
          }

          else
          {
            v115 = *(v0 + 2664);
            v116 = *(v0 + 2264);
            v117 = *(v0 + 2112);
            UUID.uuidString.getter();
            v115(v117, v116);
            v114 = String._bridgeToObjectiveC()();
          }

          v118 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
          sub_1000C4F1C(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
          v119 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v118 sendSignal:v112 toChannel:v113 withNullableUniqueStringID:v114 withPayload:v119];

          sub_10000F4B4((v0 + 160));
          v16 = &qword_100260000;
          goto LABEL_60;
        }

LABEL_33:
        if (qword_10025A5D8 != -1)
        {
          swift_once();
        }

        v81 = qword_100276DE8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_10017D6C4(0, v77[2] + 1, 1, v77);
        }

        v83 = v77[2];
        v82 = v77[3];
        if (v83 >= v82 >> 1)
        {
          v77 = sub_10017D6C4((v82 > 1), v83 + 1, 1, v77);
        }

        v77[2] = v83 + 1;
        v77[v83 + 4] = v81;
        v65 = v199;
        goto LABEL_40;
      }

      if (qword_10025A5D0 == -1)
      {
LABEL_30:
        v78 = qword_100276DE0;
        v77 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v77 = sub_10017D6C4((v79 > 1), v80 + 1, 1, v77);
        }

        v77[2] = v80 + 1;
        v77[v80 + 4] = v78;
        v65 = v199;
        if ((v76 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

LABEL_100:
      swift_once();
      goto LABEL_30;
    }

    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v23, v22);
  }

  (*(v3 + 32))(*(v0 + 1992), v2, v4);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v42 = *(v0 + 1968);
    SummarizationClient.TextAssistantPartialSummary.safetyClassification.getter();
    v43 = type metadata accessor for SummarySafetyClassification();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 1968);
    if (v45 == 1)
    {
      sub_10000F500(*(v0 + 1968), &qword_100260B80, &qword_1001D5B18);
    }

    else
    {
      v50 = SummarySafetyClassification.isSafe.getter();
      (*(v44 + 8))(v46, v43);
      if ((v50 & 1) == 0)
      {
        v51 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1536) = v51;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 1416) = v51;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v52 = *(v51 + 136);
        v53 = v52 | 1;
        sub_100037118(v52 | 1);
        *(v51 + 136) = v53;
        *(v0 + 1384) = v51;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }
    }

    v54 = *(v0 + 1960);
    v55 = (*(v0 + 1912) + *(v0 + 2680));
    SummarizationClient.TextAssistantPartialSummary.content.getter();
    String.append(_:)(*(v0 + 1288));

    SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
    v56 = sub_10009D78C(v54);
    v58 = v57;
    sub_10000F500(v54, &qword_10025F550, &qword_1001D5B10);
    if (*v55 == v56 && v55[1] == v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v59 = (*(v0 + 1912) + *(v0 + 2680));
      *v59 = v56;
      v59[1] = v58;
    }

    else
    {
      KeyPath = *(v0 + 1912);
      swift_getKeyPath();
      v127 = swift_task_alloc();
      v127[2] = KeyPath;
      v127[3] = v56;
      v127[4] = v58;
      *(v0 + 1560) = KeyPath;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v128 = *(v0 + 1912) + *(v0 + 2688);
    v129 = *(v0 + 1320);
    v130 = *(v0 + 1328);
    v131 = objc_allocWithZone(NSAttributedString);
    v132 = String._bridgeToObjectiveC()();
    v133 = [v131 initWithString:v132];

    sub_1000B2ACC(v133);
    v134 = _NSRange.init(_:)();
    v76 = v134;
    v62 = v135;
    v137 = v136;
    v197 = v130;
    v199 = v129;
    if (*(v128 + 16))
    {
      if (v136)
      {
        v138 = *(v0 + 2688);
        v139 = *(v0 + 1912);
        goto LABEL_71;
      }

      v139 = *(v0 + 1912);
    }

    else
    {
      v139 = *(v0 + 1912);
      if ((v136 & 1) == 0)
      {
        v138 = *(v0 + 2688);
        if (*(v139 + v138) == v134 && *(v139 + v138 + 8) == v135)
        {
LABEL_71:
          v140 = v139 + v138;
          *v140 = v134;
          *(v140 + 8) = v135;
          *(v140 + 16) = v136 & 1;
          v141 = *(v0 + 1904);
          if (!v141)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }
      }
    }

    KeyPath = swift_getKeyPath();
    v142 = swift_task_alloc();
    *(v142 + 16) = v139;
    *(v142 + 24) = v76;
    *(v142 + 32) = v62;
    *(v142 + 40) = v137 & 1;
    *(v0 + 1544) = v139;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v141 = *(v0 + 1904);
    if (!v141)
    {
      goto LABEL_77;
    }

LABEL_75:
    v143 = [v141 completedUnitCount];
    if (__OFADD__(v143, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    [*(v0 + 1904) setCompletedUnitCount:v143 + 1];
LABEL_77:
    v144 = *(v0 + 1952);
    SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
    v145 = type metadata accessor for InferenceEnvironmentInfo();
    v146 = *(v145 - 8);
    v147 = *(v146 + 48);
    v148 = v147(v144, 1, v145);
    v149 = *(v0 + 1952);
    if (v148 == 1)
    {
      v150 = &qword_10025F550;
      v151 = &qword_1001D5B10;
    }

    else
    {
      v153 = *(v0 + 1920);
      InferenceEnvironmentInfo.detectedLanguage.getter();
      (*(v146 + 8))(v149, v145);
      v154 = type metadata accessor for Locale.Language();
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v153, 1, v154) == 1)
      {
        v152 = *(v0 + 1920);
        v150 = &qword_100260B70;
        v151 = &qword_1001D5B00;
        goto LABEL_82;
      }

      v164 = *(v0 + 1928);
      v165 = *(v0 + 1920);
      Locale.Language.languageCode.getter();
      (*(v155 + 8))(v165, v154);
      v166 = type metadata accessor for Locale.LanguageCode();
      v167 = *(v166 - 8);
      v168 = (*(v167 + 48))(v164, 1, v166);
      v149 = *(v0 + 1928);
      if (v168 != 1)
      {
        v182 = Locale.LanguageCode.identifier.getter();
        v184 = v183;
        (*(v167 + 8))(v149, v166);
        v157 = v184;
        v156 = v182;
LABEL_83:
        v158 = *(v0 + 1944);
        sub_1000B34C8(v156, v157);
        SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
        v159 = v147(v158, 1, v145);
        v160 = *(v0 + 1944);
        if (v159 == 1)
        {
          sub_10000F500(*(v0 + 1944), &qword_10025F550, &qword_1001D5B10);
          v161 = 0;
        }

        else
        {
          InferenceEnvironmentInfo.estimatedInputTokenCount.getter();
          v163 = v162;
          (*(v146 + 8))(v160, v145);
          if (v163)
          {
            v161 = 0;
          }

          else
          {
            v161 = Int._bridgeToObjectiveC()().super.super.isa;
          }
        }

        v169 = *(v0 + 1936);
        sub_1000B371C(v161);
        SummarizationClient.TextAssistantPartialSummary.inferenceEnvironmentInfo.getter();
        v170 = v147(v169, 1, v145);
        v171 = *(v0 + 1936);
        if (v170 == 1)
        {
          sub_10000F500(*(v0 + 1936), &qword_10025F550, &qword_1001D5B10);
          v172 = 0;
          v174 = v197;
          v173 = v199;
        }

        else
        {
          InferenceEnvironmentInfo.estimatedOutputTokenCount.getter();
          v176 = v175;
          (*(v146 + 8))(v171, v145);
          v174 = v197;
          v173 = v199;
          if (v176)
          {
            v172 = 0;
          }

          else
          {
            v172 = Int._bridgeToObjectiveC()().super.super.isa;
          }
        }

        v177 = *(v0 + 1992);
        v178 = *(v0 + 1984);
        v179 = *(v0 + 1976);
        sub_1000B3758(v172);
        (*(v178 + 8))(v177, v179);
        *(v0 + 2704) = v173;
        *(v0 + 2696) = v174;
        v180 = static MainActor.shared.getter();
        *(v0 + 2712) = v180;
        v181 = swift_task_alloc();
        *(v0 + 2720) = v181;
        *v181 = v0;
        v181[1] = sub_1000BED34;
        v23 = *(v0 + 2088);
        v19 = *(v0 + 2000);
        v21 = &protocol witness table for MainActor;
        v22 = v0 + 1376;
        v20 = v180;

        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v23, v22);
      }

      v150 = &qword_100260B78;
      v151 = &qword_1001D5B08;
    }

    v152 = v149;
LABEL_82:
    sub_10000F500(v152, v150, v151);
    v156 = 0;
    v157 = 0;
    goto LABEL_83;
  }

  v34 = *(v0 + 2360);
  v35 = *(v0 + 2352);
  v36 = *(v0 + 2344);
  v198 = *(v0 + 2104);
  v37 = *(v0 + 2096);
  v38 = *(v0 + 2088);
  v39 = *(v0 + 1992);
  v40 = *(v0 + 1984);
  v41 = *(v0 + 1976);

  sub_1000278C0(v36, v35, v34, 0);

  (*(v40 + 8))(v39, v41);
  (*(v37 + 8))(v198, v38);

LABEL_61:

  v125 = *(v0 + 8);

  return v125();
}

uint64_t sub_1000C07B4()
{
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1392);
  if ((sub_10019D93C(v4) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v4);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000F34C(v18, qword_100276FE0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error occurred in rewriting: %@", v21, 0xCu);
      sub_10000F500(v22, &unk_10025D580, &qword_1001CFA60);
    }

    v24 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v24;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v24 + v25, v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
    if (*(v0 + 544))
    {
      v26 = *(v0 + 1912);
      sub_100028458(v0 + 520, v0 + 280);
      sub_10000F500(v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v26;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = *(v26 + 96);
      if (v27 != 255)
      {
        v28 = *(v0 + 1912);
        v30 = v28[10];
        v29 = v28[11];
        v31 = v28[9];
        sub_10000F3F4(v31, v30, v29, v27);

        sub_10000DB64(v4, v31, v30, v29, v27);

        sub_1000278C0(v31, v30, v29, v27);

        v17 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v32 = v0 + 520;
LABEL_15:
    sub_10000F500(v32, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v5 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v5;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v5 + v6, v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  if (!*(v0 + 384))
  {

    v32 = v0 + 360;
    goto LABEL_15;
  }

  v7 = *(v0 + 1912);
  sub_100028458(v0 + 360, v0 + 440);
  sub_10000F500(v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874((v0 + 440), *(v0 + 464));
  v8 = sub_1000971C0();
  v10 = v9;
  swift_getKeyPath();
  *(v0 + 1568) = v7;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v7 + 96);
  if (v12 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v0 + 1912);
  v15 = v13[10];
  v14 = v13[11];
  v16 = v13[9];
  sub_10000F3F4(v16, v15, v14, v12);

  sub_10000E808(v8, v10, v16, v15, v14, v12);

  sub_1000278C0(v16, v15, v14, v12);

  v17 = (v0 + 440);
LABEL_12:
  sub_10000F4B4(v17);
LABEL_16:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000C0F0C()
{
  (*(v0[262] + 8))(v0[263], v0[261]);
  v1 = v0[172];
  if ((sub_10019D93C(v1) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v1);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F34C(v15, qword_100276FE0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error occurred in rewriting: %@", v18, 0xCu);
      sub_10000F500(v19, &unk_10025D580, &qword_1001CFA60);
    }

    v21 = v0[239];

    swift_getKeyPath();
    v0[227] = v21;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v21 + v22, (v0 + 65), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[68])
    {
      v23 = v0[239];
      sub_100028458((v0 + 65), (v0 + 35));
      sub_10000F500((v0 + 65), &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v0 + 35, v0[38]);
      swift_getKeyPath();
      v0[209] = v23;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = *(v23 + 96);
      if (v24 != 255)
      {
        v25 = v0[239];
        v27 = v25[10];
        v26 = v25[11];
        v28 = v25[9];
        sub_10000F3F4(v28, v27, v26, v24);

        sub_10000DB64(v1, v28, v27, v26, v24);

        sub_1000278C0(v28, v27, v26, v24);

        v14 = v0 + 35;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v29 = (v0 + 65);
LABEL_15:
    sub_10000F500(v29, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v2 = v0[239];
  swift_getKeyPath();
  v0[205] = v2;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, (v0 + 45), &unk_10025B1C0, &unk_1001CFA90);
  if (!v0[48])
  {

    v29 = (v0 + 45);
    goto LABEL_15;
  }

  v4 = v0[239];
  sub_100028458((v0 + 45), (v0 + 55));
  sub_10000F500((v0 + 45), &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874(v0 + 55, v0[58]);
  v5 = sub_1000971C0();
  v7 = v6;
  swift_getKeyPath();
  v0[196] = v4;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v4 + 96);
  if (v9 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v0[239];
  v12 = v10[10];
  v11 = v10[11];
  v13 = v10[9];
  sub_10000F3F4(v13, v12, v11, v9);

  sub_10000E808(v5, v7, v13, v12, v11, v9);

  sub_1000278C0(v13, v12, v11, v9);

  v14 = v0 + 55;
LABEL_12:
  sub_10000F4B4(v14);
LABEL_16:

  v30 = v0[1];

  return v30();
}

uint64_t sub_1000C1654()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2240);
  v4 = *(v0 + 2232);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 1648);
  if ((sub_10019D93C(v5) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v5);
    if (qword_10025A728 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F34C(v19, qword_100276FE0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error occurred in rewriting: %@", v22, 0xCu);
      sub_10000F500(v23, &unk_10025D580, &qword_1001CFA60);
    }

    v25 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v25;
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v25 + v26, v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
    if (*(v0 + 544))
    {
      v27 = *(v0 + 1912);
      sub_100028458(v0 + 520, v0 + 280);
      sub_10000F500(v0 + 520, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v27;
      sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = *(v27 + 96);
      if (v28 != 255)
      {
        v29 = *(v0 + 1912);
        v31 = v29[10];
        v30 = v29[11];
        v32 = v29[9];
        sub_10000F3F4(v32, v31, v30, v28);

        sub_10000DB64(v5, v32, v31, v30, v28);

        sub_1000278C0(v32, v31, v30, v28);

        v18 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v33 = v0 + 520;
LABEL_15:
    sub_10000F500(v33, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v6 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v6;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v6 + v7, v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  if (!*(v0 + 384))
  {

    v33 = v0 + 360;
    goto LABEL_15;
  }

  v8 = *(v0 + 1912);
  sub_100028458(v0 + 360, v0 + 440);
  sub_10000F500(v0 + 360, &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874((v0 + 440), *(v0 + 464));
  v9 = sub_1000971C0();
  v11 = v10;
  swift_getKeyPath();
  *(v0 + 1568) = v8;
  sub_1000C4F1C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v8 + 96);
  if (v13 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(v0 + 1912);
  v16 = v14[10];
  v15 = v14[11];
  v17 = v14[9];
  sub_10000F3F4(v17, v16, v15, v13);

  sub_10000E808(v9, v11, v17, v16, v15, v13);

  sub_1000278C0(v17, v16, v15, v13);

  v18 = (v0 + 440);
LABEL_12:
  sub_10000F4B4(v18);
LABEL_16:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000C1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 312) = a4;
  *(v6 + 320) = v5;
  *(v6 + 400) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 328) = v7;
  *(v6 + 336) = *(v7 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 392) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C1EFC, v9, v8);
}

uint64_t sub_1000C1EFC()
{
  v1 = *(v0 + 320);
  v2 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 160) = v1;
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 384);

  v6 = sub_100005044(v5);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = *(*(v0 + 336) + 8);
    (v9)(*(v0 + 384), *(v0 + 328));
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(*(v4 + 56) + v6);
  v9 = *(*(v0 + 336) + 8);
  (v9)(*(v0 + 384), *(v0 + 328));

LABEL_6:
  v10 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 168) = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  if (!v11 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = Strong;
  v14 = v11;
  if (sub_1000B1594() & 1) == 0 || (sub_100037954() & 1) != 0 || (v8)
  {

LABEL_12:
    swift_unknownObjectRelease();
LABEL_14:

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = v14;
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v84 = v17;
  v78 = *(v0 + 296);
  v81 = *(v0 + 304);
  [v13 compositionSession:? didReceiveText:? replacementRange:? inContext:? finished:?];
  v20 = [v19 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 176) = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v0 + 376);
  v22 = *(v0 + 328);
  if (*(*(v1 + v3) + 16))
  {

    sub_100005044(v21);
    v24 = v23;
    (v9)(v21, v22);

    if (v24)
    {
      if (*(v0 + 400) == 1)
      {
        v72 = *(v0 + 368);
        v25 = *(v0 + 320);
        v74 = *(v0 + 328);
        v26 = [*(v0 + 312) uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        *(v0 + 264) = v25;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 272) = v25;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v1 + v3);
        *(v1 + v3) = 0x8000000000000000;
        sub_1001AA314(1, v72, isUniquelyReferenced_nonNull_native);
        (v9)(v72, v74);
        *(v1 + v3) = v85;
        swift_endAccess();
        *(v0 + 280) = v25;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        goto LABEL_23;
      }

LABEL_26:

      goto LABEL_12;
    }
  }

  else
  {
    (v9)(v21, v22);
  }

  v69 = *(v0 + 368);
  v28 = *(v0 + 320);
  v75 = *(v0 + 328);
  v73 = *(v0 + 400);
  v29 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 184) = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 192) = v28;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v1 + v3);
  *(v1 + v3) = 0x8000000000000000;
  sub_1001AA314(v73, v69, v30);
  (v9)(v69, v75);
  *(v1 + v3) = v85;
  swift_endAccess();
  *(v0 + 200) = v28;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (v73 != 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  v31 = *(v0 + 320);
  v32 = [*(v0 + 312) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 208) = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v83 = v31;
  v71 = v33;
  if (*(*(v31 + v33) + 16))
  {
    v34 = *(v0 + 360);

    sub_100005044(v34);
    if (v35)
    {
      v36 = *(v0 + 360);
      v37 = *(v0 + 328);

      (v9)(v36, v37);

      v38 = v33;
      goto LABEL_29;
    }
  }

  v66 = *(v0 + 368);
  v76 = *(v0 + 328);
  v39 = *(v0 + 312);
  v40 = *(v0 + 320);
  v64 = v40;
  v9(*(v0 + 360));
  v41 = [v39 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *(v0 + 216) = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 224) = v40;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v38 = v71;
  swift_beginAccess();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v31 + v71);
  *(v31 + v71) = 0x8000000000000000;
  sub_1001AA148(_swiftEmptyArrayStorage, v66, v42);
  (v9)(v66, v76);
  *(v31 + v71) = v85;
  swift_endAccess();
  *(v0 + 232) = v64;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_29:
  v77 = *(v0 + 352);
  v67 = *(v0 + 336);
  v68 = *(v0 + 344);
  v70 = *(v0 + 328);
  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v45 = *(v0 + 288);
  v46 = [v43 attributedText];
  v47 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];

  [v47 replaceCharactersInRange:v78 withAttributedString:{v81, v45}];
  v82 = v47;
  v79 = [objc_allocWithZone(WTContext) initWithAttributedText:v47 range:{objc_msgSend(v43, "range"), objc_msgSend(v45, "length")}];
  v65 = [v43 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  *(v0 + 240) = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 248) = v44;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v68;
  (*(v67 + 16))(v68, v77, v70);
  v50 = *(v83 + v38);
  *(v83 + v38) = 0x8000000000000000;
  v52 = sub_100005044(v68);
  v53 = v50[2];
  v54 = (v51 & 1) == 0;
  v55 = v53 + v54;
  if (__OFADD__(v53, v54))
  {
    __break(1u);
    goto LABEL_45;
  }

  v49 = v51;
  if (v50[3] >= v55)
  {
    if ((v48 & 1) == 0)
    {
      sub_1000F2E14();
    }

LABEL_38:
    if (v49)
    {
      v48 = v50;
      v77 = v52;
      v59 = *(v50[7] + 8 * v52);

      v85 = v59;
      v49 = v79;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_40:
        v80 = v49;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v61 = *(v0 + 344);
        v60 = *(v0 + 352);
        v62 = *(v0 + 328);
        if (v85)
        {
          *(*(v48 + 56) + 8 * v77) = v85;

          (v9)(v61, v62);
          (v9)(v60, v62);
        }

        else
        {
          (v9)(*(v48 + 48) + *(*(v0 + 336) + 72) * v77, *(v0 + 328));
          sub_1001A9604(v77, v48);
          (v9)(v61, v62);
          (v9)(v60, v62);
        }

        v63 = *(v0 + 320);
        *(v83 + v71) = v48;
        swift_endAccess();
        *(v0 + 256) = v63;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

LABEL_46:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v56 = *(v0 + 344);
  sub_1000F0E84(v55, v48);
  v57 = sub_100005044(v56);
  if ((v49 & 1) == (v58 & 1))
  {
    v52 = v57;
    goto LABEL_38;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void *sub_1000C2BCC(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
    {

      Task.cancel()();
    }

    if (a2)
    {
      swift_errorRetain();
      v9 = _convertErrorToNSError(_:)();
      [v8 endWritingToolsWithError:v9];
    }

    else
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
      if (v10)
      {
        v11 = v10;
        if (sub_1000B1594())
        {
          if (a1 == 2)
          {
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            a1 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) ^ 1;
          }

          [v8 didEndWritingToolsSession:v11 accepted:a1 & 1];
        }
      }
    }

    sub_1000B2528(0);
    if (a3)
    {
      a3();
    }

    return swift_unknownObjectRelease();
  }

  else if (a3)
  {
    return a3();
  }

  return result;
}

void *sub_1000C2E14()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = *(v0 + v2);
    v4 = v3 != 0;
    v5 = v3 - 1;
    if (!v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    *(v0 + v2) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);
    v4 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v4)
    {
      goto LABEL_10;
    }

    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = v7;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      if ([result respondsToSelector:"undo"])
      {
        [v8 undo];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1000C3060()
{
  swift_getKeyPath();
  sub_1000C4F1C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount;
  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = *(v0 + v2);
    v4 = v3 != 0;
    v5 = v3 - 1;
    if (!v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    *(v0 + v2) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v6 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);
    v4 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v4)
    {
      goto LABEL_10;
    }

    *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = v7;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      if ([result respondsToSelector:"redo"])
      {
        [v8 redo];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000C32AC()
{
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = sub_100006A74(&off_100249F90);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = 0;
  v1 = v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = 0;
  v5 = v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100005B00(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID) = sub_100005CE8(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID) = sub_100005D0C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000C348C()
{

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);

  v1 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t RewritingModel.deinit()
{
  v0 = ToolModel.deinit();

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);

  v1 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RewritingModel.__deallocating_deinit()
{
  RewritingModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RewritingModel(uint64_t a1)
{
  result = qword_100260230;
  if (!qword_100260230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C37DC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C38DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1000C3A4C, 0, 0);
}

uint64_t sub_1000C3A4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000C4F1C(&qword_100260BD8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000C4F1C(&qword_100260BE0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000C3BDC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000C3BDC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000C3D98, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000C3D98()
{

  v1 = *(v0 + 8);

  return v1();
}

void (*sub_1000C3E04(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_1000C4288(v5);
  v5[12] = sub_1000C3FD8(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_1000C3F40;
}

void sub_1000C3F40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1000C3FD8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100005044(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1000F2E14();
      v14 = v22;
      goto LABEL_14;
    }

    sub_1000F0E84(v19, a3 & 1);
    v14 = sub_100005044(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_1000C4188;
}

void sub_1000C4188(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_1000F1FDC(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_1001A9604(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_1000C4288(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000C42B0;
}

unint64_t sub_1000C42BC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C43A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B2528(v1);
}

uint64_t sub_1000C4420()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C4460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1000B4D3C(a1, v4, v5, v6);
}

uint64_t sub_1000C4668(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B34C8(v1, v2);
}

void sub_1000C46D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B371C(v1);
}

void sub_1000C4728(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B3758(v1);
}

uint64_t sub_1000C4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = 1;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = 1;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = sub_100006A74(&off_10024A8E8);
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = 0;
  v10 = v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = (v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  *v13 = 0;
  v13[1] = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = 0;
  v14 = v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100005B00(_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__finishedResultForContextUUID) = sub_100005CE8(_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__rewrittenContextsForContextUUID) = sub_100005D0C(_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) = 0;
  *(v5 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v5 + 49) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = -1;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  ObservationRegistrar.init()();
  sub_100036534(a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_1000C4984(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    goto LABEL_16;
  }

  if (a1 > 7u)
  {
    if (a1 == 8)
    {
      result = 0x6C2E61742E6D675FLL;
      strcpy(v7, "_gm.ta.list");
      HIDWORD(v7[1]) = -352321536;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    if (a1 == 9)
    {
      result = 0x742E61742E6D675FLL;
      strcpy(v7, "_gm.ta.table");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      result = 0xD000000000000010;
      v7[0] = 0xD000000000000010;
      v7[1] = 0x80000001001E5CA0;
      if ((a5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  result = 0x732E61742E6D675FLL;
  strcpy(v7, "_gm.ta.summary");
  HIBYTE(v7[1]) = -18;
  if ((a5 & 1) == 0)
  {
    return result;
  }

LABEL_14:
  v6._countAndFlagsBits = 7889198;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  return v7[0];
}

__n128 sub_1000C4B74()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_1000C4BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_1000C4CBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002B2A0;

  return sub_1000B7F50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C4DF8(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1000C4E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000B6378(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C4F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000C508C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelOutputTokenCount) = v2;
  v4 = v2;
}

void sub_1000C50CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelPromptTokenCount) = v2;
  v4 = v2;
}

uint64_t sub_1000C510C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000C5158(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1000C51A4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task) = *(v0 + 24);
}

void sub_1000C51E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) = v1;
  v4 = v1;
  sub_1000B1D58(v3);
}

uint64_t sub_1000C529C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__supportedActions) = *(v0 + 24);
}

uint64_t getEnumTagSinglePayload for InputDashboardSolariumButtonStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000C54A0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

uint64_t sub_1000C5670(uint64_t a1)
{
  v22 = sub_100003E34(&qword_100260D00, &qword_1001D6188);
  v23 = sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  v3 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  v20 = *(a1 + 24);
  v4 = v20;
  v21 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v24 = type metadata accessor for ModifiedContent();
  v25 = v23;
  v26 = sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v19 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v5 = type metadata accessor for _GlassEffectContainer();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v14[-v10];
  v15 = v3;
  v16 = v4;
  v17 = v1;
  _GlassEffectContainer.init(smoothness:content:)();
  swift_getWitnessTable();
  sub_10014DE78();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_10014DE78();
  return (v12)(v11, v5);
}

uint64_t sub_1000C598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v21 = a1;
  v23 = a4;
  v31 = sub_100003E34(&qword_100260D00, &qword_1001D6188);
  v32 = sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  type metadata accessor for ModifiedContent();
  v29 = a3;
  v30 = &protocol witness table for _FlexFrameLayout;
  v22 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v33 = type metadata accessor for ModifiedContent();
  v34 = v32;
  v35 = sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v24 = a2;
  v25 = v20;
  v26 = v21;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, v6);
  v27 = WitnessTable;
  v28 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_10014DE78();
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_10014DE78();
  return (v18)(v16, v10);
}

uint64_t sub_1000C5D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a1;
  v106 = a4;
  v102 = type metadata accessor for GlassProminentButtonStyle();
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10000341C(&qword_100260D08, &qword_1001D6198);
  v7 = __chkstk_darwin(v103);
  v105 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v69 - v9;
  v93 = type metadata accessor for ModifiedContent();
  v152[9] = a3;
  v107 = a3;
  v152[10] = &protocol witness table for _FlexFrameLayout;
  v98 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v90 = type metadata accessor for HStack();
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v69 - v10;
  v91 = type metadata accessor for ModifiedContent();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v69 - v11;
  v95 = type metadata accessor for ModifiedContent();
  v109 = *(v95 - 8);
  v12 = __chkstk_darwin(v95);
  v116 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v113 = &v69 - v14;
  v108 = type metadata accessor for GlassButtonStyle();
  v15 = *(v108 - 8);
  __chkstk_darwin(v108);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  v19 = type metadata accessor for InputDashboardBar(0, a2, a3, v18);
  v20 = *(v19 - 8);
  v85 = *(v20 + 64);
  __chkstk_darwin(v19);
  v22 = &v69 - v21;
  v73 = &v69 - v21;
  v115 = sub_10000341C(&qword_100260D10, &qword_1001D61A0);
  __chkstk_darwin(v115);
  v69 = &v69 - v23;
  v99 = sub_10000341C(&qword_100260D00, &qword_1001D6188);
  v114 = *(v99 - 8);
  v24 = __chkstk_darwin(v99);
  v111 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v112 = &v69 - v26;
  v86 = *(v20 + 16);
  v87 = v20 + 16;
  v74 = v19;
  v86(v22, v110, v19);
  v84 = *(v20 + 80);
  v27 = (v84 + 32) & ~v84;
  v78 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  v29 = v107;
  *(v28 + 24) = v107;
  v30 = *(v20 + 32);
  v82 = v20 + 32;
  v83 = v30;
  v30(v28 + v27, v22, v19);
  v77 = sub_10000341C(&qword_100260D18, &qword_1001D61A8);
  v76 = sub_1000C8D80();
  v31 = v69;
  Button.init(action:label:)();
  v32 = (v31 + *(v115 + 36));
  v72 = sub_10000341C(&qword_100260D80, &qword_1001D61D8);
  static ButtonBorderShape.circle.getter();
  *v32 = swift_getKeyPath();
  GlassButtonStyle.init()();
  v71 = sub_1000C9348();
  v96 = sub_1000C9C54(&qword_100260DB8, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
  v33 = v108;
  View.buttonStyle<A>(_:)();
  (*(v15 + 8))(v17, v33);
  sub_10000F500(v31, &qword_100260D10, &qword_1001D61A0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v153);
  v75 = v153;
  v81 = v157;
  v79 = v155;
  v80 = v158;
  v170 = 1;
  v168 = v154;
  v166 = v156;
  v34 = v70;
  v117 = v70;
  v118 = v29;
  v35 = v110;
  v119 = v110;
  static VerticalAlignment.center.getter();
  v36 = v89;
  HStack.init(alignment:spacing:content:)();
  v141 = 0;
  v37 = v90;
  v38 = swift_getWitnessTable();
  v39 = v88;
  View.modifier<A>(_:)();
  (*(v94 + 8))(v36, v37);
  static Alignment.center.getter();
  v40 = sub_1000C94C4();
  v152[7] = v38;
  v152[8] = v40;
  v67 = v91;
  v68 = swift_getWitnessTable();
  v41 = v116;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v97 + 8))(v39, v67);
  v152[5] = v68;
  v152[6] = &protocol witness table for _FlexFrameLayout;
  v42 = v95;
  v97 = swift_getWitnessTable();
  sub_10014DE78();
  v98 = *(v109 + 8);
  v98(v41, v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v159);
  v91 = v159;
  WitnessTable = v161;
  v93 = v164;
  v94 = v163;
  v176 = 1;
  v174 = v160;
  v172 = v162;
  v43 = v73;
  v44 = v35;
  v45 = v74;
  v86(v73, v44, v74);
  v46 = v78;
  v47 = swift_allocObject();
  v48 = v107;
  *(v47 + 16) = v34;
  *(v47 + 24) = v48;
  v83(v47 + v46, v43, v45);
  Button.init(action:label:)();
  v49 = (v31 + *(v115 + 36));
  static ButtonBorderShape.circle.getter();
  *v49 = swift_getKeyPath();
  v50 = v101;
  GlassProminentButtonStyle.init()();
  sub_1000C9C54(&qword_100260DC8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v51 = v100;
  v52 = v102;
  v53 = v71;
  View.buttonStyle<A>(_:)();
  (*(v104 + 8))(v50, v52);
  sub_10000F500(v31, &qword_100260D10, &qword_1001D61A0);
  v54 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v56 = v103;
  v57 = (v51 + *(v103 + 36));
  *v57 = KeyPath;
  v57[1] = v54;
  v58 = v111;
  v59 = v99;
  (*(v114 + 16))(v111, v112, v99);
  v141 = 0;
  v142 = v170;
  *v143 = *v169;
  *&v143[3] = *&v169[3];
  v144 = v75;
  v145 = v168;
  *v146 = *v167;
  *&v146[3] = *&v167[3];
  v147 = v79;
  v148 = v166;
  *v149 = *v165;
  *&v149[3] = *&v165[3];
  v150 = v81;
  v151 = v80;
  v152[0] = v58;
  v152[1] = &v141;
  v60 = v116;
  v61 = v113;
  (*(v109 + 16))(v116, v113, v42);
  v130 = 0;
  v131 = v176;
  *v132 = *v175;
  *&v132[3] = *&v175[3];
  v133 = v91;
  v134 = v174;
  *v135 = *v173;
  *&v135[3] = *&v173[3];
  v136 = WitnessTable;
  v137 = v172;
  *v138 = *v171;
  *&v138[3] = *&v171[3];
  v139 = v94;
  v140 = v93;
  v152[2] = v60;
  v152[3] = &v130;
  v62 = v105;
  sub_1000C9678(v51, v105);
  v152[4] = v62;
  v125 = v59;
  v126 = sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
  v127 = v42;
  v128 = v126;
  v129 = v56;
  OpaqueTypeConformance2 = v115;
  v121 = v108;
  v122 = v53;
  v123 = v96;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = sub_10002AF84();
  v122 = v97;
  v123 = v121;
  v124 = sub_1000C96E8();
  sub_1000C54A0(v152, 5uLL, &v125);
  sub_10000F500(v51, &qword_100260D08, &qword_1001D6198);
  v63 = v61;
  v64 = v98;
  v98(v63, v42);
  v65 = *(v114 + 8);
  v65(v112, v59);
  sub_10000F500(v62, &qword_100260D08, &qword_1001D6198);
  v64(v116, v42);
  return (v65)(v111, v59);
}

uint64_t sub_1000C6AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  type metadata accessor for InputDashboardBar(0, a2, a3, v12);
  static Alignment.center.getter();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15[0] = a3;
  v15[1] = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  sub_10014DE78();
  v13 = *(v6 + 8);
  v13(v9, v5);
  sub_10014DE78();
  return (v13)(v11, v5);
}

uint64_t sub_1000C6CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v68 = a1;
  v69 = a2;
  v65 = a4;
  v64 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  v4 = __chkstk_darwin(v64);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v59 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v71 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v59 - v10;
  v61 = sub_10000341C(&qword_100260D40, &qword_1001D61C0);
  __chkstk_darwin(v61);
  v60 = &v59 - v11;
  v12 = type metadata accessor for IconOnlyLabelStyle();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - v17;
  v66 = sub_10000341C(&qword_100260D50, &qword_1001D61C8);
  __chkstk_darwin(v66);
  v20 = &v59 - v19;
  v21 = sub_10000341C(&qword_100260D38, &qword_1001D61B8);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_1000C9C54(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v24 = v71;
  View.labelStyle<A>(_:)();
  (*(v67 + 8))(v14, v12);
  (*(v16 + 8))(v18, v15);
  v25 = v70;
  LODWORD(v18) = static HierarchicalShapeStyle.primary.getter();
  *&v20[*(sub_10000341C(&qword_100260D68, &qword_1001D61D0) + 36)] = v18;
  v26 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v20[*(v66 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  static Font.Weight.medium.getter();
  sub_1000C9028();
  View.fontWeight(_:)();
  sub_10000F500(v20, &qword_100260D50, &qword_1001D61C8);
  v69 = v21;
  v29 = *(v21 + 36);
  v72 = v23;
  v30 = &v23[v29];
  v31 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v32 = enum case for Image.Scale.large(_:);
  v33 = type metadata accessor for Image.Scale();
  v34 = v30 + v31;
  v35 = v73;
  (*(*(v33 - 8) + 104))(v34, v32, v33);
  *v30 = swift_getKeyPath();
  v36 = v24[13];
  v36(v25, enum case for DynamicTypeSize.medium(_:), v7);
  v36(v35, enum case for DynamicTypeSize.accessibility1(_:), v7);
  sub_1000C9C54(&qword_100260DE0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v38 = v24[4];
    v39 = v62;
    v38(v62, v25, v7);
    v40 = v64;
    v38((v39 + *(v64 + 48)), v35, v7);
    v41 = v63;
    sub_1000C983C(v39, v63);
    v42 = *(v40 + 48);
    v43 = v60;
    v38(v60, v41, v7);
    v44 = v24[1];
    v44(v41 + v42, v7);
    sub_1000C98AC(v39, v41);
    v38((v43 + *(v61 + 36)), (v41 + *(v40 + 48)), v7);
    v44(v41, v7);
    sub_1000C8F34();
    sub_100007120(&qword_100260D78, &qword_100260D40, &qword_1001D61C0, &protocol conformance descriptor for ClosedRange<A>);
    v45 = v65;
    v46 = v72;
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v43, &qword_100260D40, &qword_1001D61C0);
    sub_10000F500(v46, &qword_100260D38, &qword_1001D61B8);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(v74);
    v47 = (v45 + *(sub_10000341C(&qword_100260D30, &qword_1001D61B0) + 36));
    v48 = v74[1];
    *v47 = v74[0];
    v47[1] = v48;
    v47[2] = v74[2];
    v49 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    result = sub_10000341C(&qword_100260D18, &qword_1001D61A8);
    v58 = v45 + *(result + 36);
    *v58 = v49;
    *(v58 + 8) = v51;
    *(v58 + 16) = v53;
    *(v58 + 24) = v55;
    *(v58 + 32) = v57;
    *(v58 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v41 = a3;
  v38 = sub_10000341C(&qword_100260E08, &qword_1001D6330);
  __chkstk_darwin(v38);
  v36 = v34 - v4;
  v40 = type metadata accessor for Capsule();
  __chkstk_darwin(v40);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _Glass();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v34 - v12;
  v14 = sub_10000341C(&qword_100260E10, &qword_1001D6338);
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v42 = v34 - v15;
  if (a2)
  {

    static _Glass.regular.getter();

    _Glass.tintColor(_:)();

    v16 = *(v8 + 8);
    v34[1] = v8 + 8;
    v16(v11, v7);
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = type metadata accessor for RoundedCornerStyle();
    (*(*(v18 - 8) + 104))(v6, v17, v18);
    v19 = sub_10000341C(&qword_100260E18, &qword_1001D6340);
    v34[0] = v7;
    v20 = v19;
    v21 = sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v22 = sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    v35 = a2;
    v23 = v22;
    v24 = v42;
    v25 = v40;
    View._glassEffect<A>(_:in:)();
    sub_1000C9C9C(v6);
    v16(v13, v34[0]);
    v26 = v39;
    (*(v39 + 16))(v36, v24, v14);
    swift_storeEnumTagMultiPayload();
    v43 = v20;
    v44 = v25;
    v45 = v21;
    v46 = v23;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static _Glass.regular.getter();
    v27 = enum case for RoundedCornerStyle.continuous(_:);
    v28 = type metadata accessor for RoundedCornerStyle();
    (*(*(v28 - 8) + 104))(v6, v27, v28);
    v35 = sub_10000341C(&qword_100260E18, &qword_1001D6340);
    v29 = sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v30 = sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    v31 = v42;
    v32 = v40;
    View._glassEffect<A>(_:in:)();
    sub_1000C9C9C(v6);
    (*(v8 + 8))(v13, v7);
    v26 = v39;
    (*(v39 + 16))(v36, v31, v14);
    swift_storeEnumTagMultiPayload();
    v43 = v35;
    v44 = v32;
    v45 = v29;
    v46 = v30;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  return (*(v26 + 8))(v42, v14);
}

uint64_t sub_1000C7AE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BorderlessButtonStyle.init()();
  sub_10000341C(&qword_100260BE8, &qword_1001D5F50);
  sub_100007120(&qword_100260BF0, &qword_100260BE8, &qword_1001D5F50, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  v6 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10000341C(&qword_100260C00, &qword_1001D5F88);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_1000C7C8C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BorderlessButtonStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100260C08, &qword_1001D5F90);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  ButtonStyleConfiguration.label.getter();
  v11 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = &v10[*(v8 + 36)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  BorderlessButtonStyle.init()();
  sub_1000C8184();
  sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  sub_10000F500(v10, &qword_100260C08, &qword_1001D5F90);
  v17 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v19 = (a2 + *(sub_10000341C(&qword_100260C10, &qword_1001D5F98) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  result = sub_10000341C(&qword_100260C18, &unk_1001D5FD0);
  v23 = (a2 + *(result + 36));
  *v23 = v20;
  v23[1] = sub_10002AAC0;
  v23[2] = v21;
  return result;
}

double sub_1000C7F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v8);
  v4 = sub_10000341C(&qword_100260C60, &qword_1001D6080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(qword_100260C68, &qword_1001D6088) + 36));
  v6 = v8[1];
  *v5 = v8[0];
  v5[1] = v6;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1000C7FE8@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_100260DE8, &qword_1001D6288);
  sub_100007120(&qword_100260DF0, &qword_100260DE8, &qword_1001D6288, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.bold(_:)();
  v2 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_10000341C(&qword_100260DF8, &qword_1001D6290);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1000C80D4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C8100@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000C8184()
{
  result = qword_100263AA0;
  if (!qword_100263AA0)
  {
    sub_100003E34(&qword_100260C08, &qword_1001D5F90);
    sub_1000C9C54(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AA0);
  }

  return result;
}

unint64_t sub_1000C82AC()
{
  result = qword_100260C30;
  if (!qword_100260C30)
  {
    sub_100003E34(&qword_100260C00, &qword_1001D5F88);
    sub_100003E34(&qword_100260BE8, &qword_1001D5F50);
    type metadata accessor for BorderlessButtonStyle();
    sub_100007120(&qword_100260BF0, &qword_100260BE8, &qword_1001D5F50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C30);
  }

  return result;
}

unint64_t sub_1000C8424()
{
  result = qword_100260C38;
  if (!qword_100260C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C38);
  }

  return result;
}

unint64_t sub_1000C847C()
{
  result = qword_100260C40;
  if (!qword_100260C40)
  {
    sub_100003E34(&qword_100260C18, &unk_1001D5FD0);
    sub_1000C8560(&qword_100260C48, &qword_100260C50, &unk_1001D6020, sub_1000C85E4);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C40);
  }

  return result;
}

uint64_t sub_1000C8560(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1000C8424();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C85E4()
{
  result = qword_100260C58;
  if (!qword_100260C58)
  {
    sub_100003E34(&qword_100260C10, &qword_1001D5F98);
    sub_100003E34(&qword_100260C08, &qword_1001D5F90);
    type metadata accessor for BorderlessButtonStyle();
    sub_1000C8184();
    sub_1000C9C54(&qword_100260BF8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260C58);
  }

  return result;
}

unint64_t sub_1000C875C(uint64_t a1)
{
  result = sub_1000596F4();
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

uint64_t sub_1000C87E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000C8970(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_1000C8BE4()
{
  result = qword_100260CF0;
  if (!qword_100260CF0)
  {
    sub_100003E34(qword_100260C68, &qword_1001D6088);
    sub_100007120(&qword_100260CF8, &qword_100260C60, &qword_1001D6080, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260CF0);
  }

  return result;
}

unint64_t sub_1000C8D80()
{
  result = qword_100260D20;
  if (!qword_100260D20)
  {
    sub_100003E34(&qword_100260D18, &qword_1001D61A8);
    sub_1000C8E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D20);
  }

  return result;
}

unint64_t sub_1000C8E0C()
{
  result = qword_100260D28;
  if (!qword_100260D28)
  {
    sub_100003E34(&qword_100260D30, &qword_1001D61B0);
    sub_100003E34(&qword_100260D38, &qword_1001D61B8);
    sub_100003E34(&qword_100260D40, &qword_1001D61C0);
    sub_1000C8F34();
    sub_100007120(&qword_100260D78, &qword_100260D40, &qword_1001D61C0, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D28);
  }

  return result;
}

unint64_t sub_1000C8F34()
{
  result = qword_100260D48;
  if (!qword_100260D48)
  {
    sub_100003E34(&qword_100260D38, &qword_1001D61B8);
    sub_100003E34(&qword_100260D50, &qword_1001D61C8);
    sub_1000C9028();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_100260D70, &qword_100263550, &qword_1001D1F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D48);
  }

  return result;
}

unint64_t sub_1000C9028()
{
  result = qword_100260D58;
  if (!qword_100260D58)
  {
    sub_100003E34(&qword_100260D50, &qword_1001D61C8);
    sub_1000C90E0();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D58);
  }

  return result;
}

unint64_t sub_1000C90E0()
{
  result = qword_100260D60;
  if (!qword_100260D60)
  {
    sub_100003E34(&qword_100260D68, &qword_1001D61D0);
    sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    sub_1000C9C54(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D60);
  }

  return result;
}

uint64_t sub_1000C927C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t sub_1000C9348()
{
  result = qword_100260D88;
  if (!qword_100260D88)
  {
    sub_100003E34(&qword_100260D10, &qword_1001D61A0);
    sub_1000C9400();
    sub_100007120(&qword_100260DB0, &qword_100260D80, &qword_1001D61D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D88);
  }

  return result;
}

unint64_t sub_1000C9400()
{
  result = qword_100260D90;
  if (!qword_100260D90)
  {
    sub_100003E34(&qword_100260D98, &qword_1001D6210);
    sub_100007120(&qword_100260DA0, &qword_100260DA8, &qword_1001D6218, &protocol conformance descriptor for Button<A>);
    sub_1000C8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260D90);
  }

  return result;
}

unint64_t sub_1000C94C4()
{
  result = qword_100260DC0;
  if (!qword_100260DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DC0);
  }

  return result;
}

uint64_t sub_1000C9518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for InputDashboardBar(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_1000C9678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260D08, &qword_1001D6198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C96E8()
{
  result = qword_100260DD0;
  if (!qword_100260DD0)
  {
    sub_100003E34(&qword_100260D08, &qword_1001D6198);
    sub_100003E34(&qword_100260D10, &qword_1001D61A0);
    type metadata accessor for GlassProminentButtonStyle();
    sub_1000C9348();
    sub_1000C9C54(&qword_100260DC8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DD0);
  }

  return result;
}

uint64_t sub_1000C983C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C98AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100260DD8, &qword_1001D6220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C995C(uint64_t *a1)
{
  sub_100003E34(&qword_100260D00, &qword_1001D6188);
  sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100003E34(&qword_100260D08, &qword_1001D6198);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _GlassEffectContainer();
  return swift_getWitnessTable();
}

unint64_t sub_1000C9B3C()
{
  result = qword_100260E00;
  if (!qword_100260E00)
  {
    sub_100003E34(&qword_100260DF8, &qword_1001D6290);
    sub_100003E34(&qword_100260DE8, &qword_1001D6288);
    sub_100007120(&qword_100260DF0, &qword_100260DE8, &qword_1001D6288, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260E00);
  }

  return result;
}

uint64_t sub_1000C9C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C9C9C(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C9CFC()
{
  result = qword_100260E30;
  if (!qword_100260E30)
  {
    sub_100003E34(&qword_100260E38, &qword_1001D6348);
    sub_100003E34(&qword_100260E18, &qword_1001D6340);
    type metadata accessor for Capsule();
    sub_100007120(&qword_100260E20, &qword_100260E18, &qword_1001D6340, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000C9C54(&qword_100260E28, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260E30);
  }

  return result;
}

uint64_t sub_1000C9E44(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  v4 = sub_10000341C(&qword_100260EE0, &qword_1001D6380);
  v3[66] = v4;
  v3[67] = *(v4 - 8);
  v3[68] = swift_task_alloc();
  v5 = type metadata accessor for AppIntentPerformOptions();
  v3[69] = v5;
  v3[70] = *(v5 - 8);
  v3[71] = swift_task_alloc();
  v6 = sub_10000341C(&qword_100260EE8, &unk_1001D6388);
  v3[72] = v6;
  v3[73] = *(v6 - 8);
  v3[74] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9FD8, 0, 0);
}

uint64_t sub_1000C9FD8()
{
  v33 = v0;
  *(v0 + 296) = &type metadata for WritingTools;
  *(v0 + 304) = sub_10002AC88();
  *(v0 + 272) = 5;
  v1 = isFeatureEnabled(_:)();
  sub_10000F4B4((v0 + 272));
  if (v1)
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 600) = sub_10000F34C(v2, qword_100276F98);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 504);
      v5 = *(v0 + 512);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10002510C(v6, v5, &v32);
      _os_log_impl(&_mh_execute_header, v3, v4, "searching for user info using query: %s", v7, 0xCu);
      sub_10000F4B4(v8);
    }

    v9 = *(v0 + 520);
    v11 = *(v0 + 504);
    v10 = *(v0 + 512);
    type metadata accessor for StructuredQueryEntity(0);
    sub_1000CCB18(&qword_100260EF0, type metadata accessor for StructuredQueryEntity, &unk_1001D73AC);
    v12 = _TransientAppEntityRepresentation<>.init()();
    *(v0 + 608) = v12;
    *(v0 + 676) = 1;

    EntityProperty.wrappedValue.setter();

    *(v0 + 675) = 1;

    EntityProperty.wrappedValue.setter();

    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001CF9D0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    *(v0 + 456) = v13;

    EntityProperty.wrappedValue.setter();

    v14 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 344) = v11;
    *(v0 + 352) = v10;
    sub_10000341C(&qword_100260EF8, &qword_1001D6398);
    swift_allocObject();

    v16 = IntentParameter.init(wrappedValue:)();
    *(v0 + 616) = v16;
    *(v0 + 440) = v12;
    sub_10000341C(&qword_100260F00, &qword_1001D63A0);
    swift_allocObject();
    v17 = IntentParameter.init(wrappedValue:)();
    *(v0 + 624) = v17;
    *(v0 + 672) = 1;
    sub_10000341C(&qword_100260F08, &qword_1001D63A8);
    swift_allocObject();
    v18 = IntentParameter.init(wrappedValue:)();
    *(v0 + 632) = v18;
    *(v0 + 673) = 1;
    swift_allocObject();
    v19 = IntentParameter.init(wrappedValue:)();
    *(v0 + 640) = v19;
    *(v0 + 312) = v16;
    *(v0 + 320) = v17;
    *(v0 + 328) = v18;
    *(v0 + 336) = v19;
    v20 = sub_1000CCA10();
    v21 = sub_1000CCA64();
    sub_1000CBADC();
    type metadata accessor for DefaultPerformAppIntentDelegate();
    swift_allocObject();
    v22 = DefaultPerformAppIntentDelegate.init()();
    *(v0 + 648) = v22;
    v23 = swift_task_alloc();
    *(v0 + 656) = v23;
    *v23 = v0;
    v23[1] = sub_1000CA584;
    v24 = *(v0 + 592);
    v25 = *(v0 + 568);
    v35 = v20;
    v36 = v21;

    return AppIntentDispatching.perform<A>(_:options:delegate:)(v24, v0 + 312, v25, v22, &protocol witness table for DefaultPerformAppIntentDelegate, ObjectType, &type metadata for SearchTool, v14);
  }

  else
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F34C(v26, qword_100276F98);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "personal info search is disabled", v29, 2u);
    }

    v30 = *(v0 + 8);

    return v30(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000CA584()
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 552);
  *(*v1 + 664) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000CB480;
  }

  else
  {
    v5 = sub_1000CA798;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CA798()
{
  v80 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  AppIntentSuccessResult.output.getter();
  (*(v2 + 8))(v1, v3);
  IntentOutput.value.getter();
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 448);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
LABEL_83:
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v10 = 0;
      v78 = v7 & 0xC000000000000001;
      v76 = v8;
      v11 = _swiftEmptyArrayStorage;
      v77 = v9;
      while (1)
      {
        if (v78)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v10 >= *(v76 + 16))
          {
            goto LABEL_82;
          }

          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v79[0] = v16;
          *v15 = 136642819;

          v17 = sub_1000CDAF0();
          v19 = v18;

          v20 = sub_10002510C(v17, v19, v79);

          *(v15 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v13, v14, "processing %{sensitive}s", v15, 0xCu);
          sub_10000F4B4(v16);
          v9 = v77;
        }

        EntityProperty.wrappedValue.getter();

        if (*(v0 + 674) <= 3u)
        {
          if (*(v0 + 674) <= 1u && *(v0 + 674))
          {

            goto LABEL_25;
          }
        }

        else if (*(v0 + 674) >= 8u)
        {
          goto LABEL_22;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
LABEL_22:
          v7 = *(v0 + 600);

          v22 = Logger.logObject.getter();
          v8 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v22, v8))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v79[0] = v24;
            *v23 = 136315138;

            EntityProperty.wrappedValue.getter();

            *(v0 + 678) = *(v0 + 677);
            sub_10000341C(&qword_100260F30, &unk_1001D63B8);
            v25 = String.init<A>(describing:)();
            v7 = v26;
            v27 = sub_10002510C(v25, v26, v79);

            *(v23 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v22, v8, "unhandled result type: %s", v23, 0xCu);
            sub_10000F4B4(v24);
            v9 = v77;
          }

          else
          {
          }

          goto LABEL_7;
        }

LABEL_25:

        EntityProperty.wrappedValue.getter();

        if (!*(v0 + 464))
        {
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v7, v8, "no answer", v35, 2u);
          }

          goto LABEL_50;
        }

        EntityProperty.wrappedValue.getter();

        v28 = *(v0 + 368);
        if (v28)
        {
          v29 = *(v0 + 360);

          EntityProperty.wrappedValue.getter();

          if (*(v0 + 472))
          {
            v74 = *(v0 + 472);

            EntityProperty.wrappedValue.getter();

            v31 = *(v0 + 480);
            if (v31)
            {
              v72 = v29;
              v75 = v11;
              v73 = v28;
              if (v31 >> 62)
              {
                result = _CocoaArrayWrapper.endIndex.getter();
                v32 = result;
                if (result)
                {
LABEL_31:
                  if (v32 < 1)
                  {
                    __break(1u);
                    return result;
                  }

                  if ((v31 & 0xC000000000000001) != 0)
                  {
                    for (i = 0; i != v32; ++i)
                    {
                      specialized _ArrayBuffer._getElementSlowPath(_:)();

                      EntityProperty.wrappedValue.getter();

                      if (*(v0 + 488) && (, EntityProperty.wrappedValue.getter(), , , (v34 = *(v0 + 384)) != 0))
                      {
                        sub_1000CBF08(v79, *(v0 + 376), v34);
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        swift_unknownObjectRelease();
                      }
                    }
                  }

                  else
                  {
                    v40 = v31 + 32;
                    do
                    {

                      EntityProperty.wrappedValue.getter();

                      if (*(v0 + 496) && (, EntityProperty.wrappedValue.getter(), , , (v41 = *(v0 + 432)) != 0))
                      {
                        sub_1000CBF08(v79, *(v0 + 424), v41);
                      }

                      else
                      {
                      }

                      v40 += 8;
                      --v32;
                    }

                    while (v32);
                  }
                }
              }

              else
              {
                v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v32)
                {
                  goto LABEL_31;
                }
              }

              EntityProperty.wrappedValue.getter();

              v43 = *(v0 + 392);
              v42 = *(v0 + 400);

              EntityProperty.wrappedValue.getter();

              v44 = *(v0 + 408);
              v71 = *(v0 + 416);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v75 = sub_10017E10C(0, *(v75 + 2) + 1, 1, v75);
              }

              v8 = *(v75 + 2);
              v45 = *(v75 + 3);
              v7 = v8 + 1;
              if (v8 >= v45 >> 1)
              {
                v75 = sub_10017E10C((v45 > 1), v8 + 1, 1, v75);
              }

              *(v75 + 2) = v7;
              v46 = &v75[64 * v8];
              *(v46 + 4) = v72;
              *(v46 + 5) = v73;
              *&v47 = v43;
              *(&v47 + 1) = v42;
              *(v46 + 6) = v74;
              *(v46 + 7) = &_swiftEmptySetSingleton;
              *&v48 = v44;
              v11 = v75;
              *(&v48 + 1) = v71;
              *(v46 + 4) = v47;
              *(v46 + 5) = v48;
              v9 = v77;
              goto LABEL_7;
            }

            v7 = Logger.logObject.getter();
            v8 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v7, v8))
            {
              goto LABEL_49;
            }

            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = v8;
            v38 = v7;
            v39 = "sources property for answerEntity is nil, this shouldn't happen and is unexpected";
            goto LABEL_48;
          }

          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = v8;
            v38 = v7;
            v39 = "documentSource property for answerEntity is nil, this shouldn't happen and is unexpected";
            goto LABEL_48;
          }
        }

        else
        {
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = v8;
            v38 = v7;
            v39 = "Answer property for answerEntity is nil, this shouldn't happen and is unexpected";
LABEL_48:
            _os_log_impl(&_mh_execute_header, v38, v37, v39, v36, 2u);
          }
        }

LABEL_49:

LABEL_50:

LABEL_7:
        if (v10 == v9)
        {
          goto LABEL_67;
        }
      }
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_67:

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = *(v11 + 2);

      _os_log_impl(&_mh_execute_header, v52, v53, "found %ld results:", v54, 0xCu);
    }

    else
    {
    }

    v55 = *(v11 + 2);
    if (v55)
    {
      v56 = v55 - 1;
      for (j = 32; ; j += 64)
      {
        v58 = *&v11[j + 48];
        v60 = *&v11[j];
        v59 = *&v11[j + 16];
        *(v0 + 48) = *&v11[j + 32];
        *(v0 + 64) = v58;
        *(v0 + 16) = v60;
        *(v0 + 32) = v59;
        sub_10004CBCC(v0 + 16, v0 + 208);
        sub_10004CBCC(v0 + 16, v0 + 144);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        sub_1000CCB60(v0 + 16);
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v79[0] = v64;
          *v63 = 136642819;
          v65 = *(v0 + 32);
          *(v0 + 80) = *(v0 + 16);
          *(v0 + 96) = v65;
          v66 = *(v0 + 64);
          *(v0 + 112) = *(v0 + 48);
          *(v0 + 128) = v66;
          v67 = String.init<A>(describing:)();
          v69 = sub_10002510C(v67, v68, v79);

          *(v63 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v61, v62, "%{sensitive}s", v63, 0xCu);
          sub_10000F4B4(v64);

          if (!v56)
          {
            break;
          }
        }

        else
        {

          sub_1000CCB60(v0 + 16);
          if (!v56)
          {
            break;
          }
        }

        --v56;
      }
    }
  }

  else
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "user info search returned no results", v51, 2u);
    }

    v11 = _swiftEmptyArrayStorage;
  }

  v70 = *(v0 + 8);

  return v70(v11);
}